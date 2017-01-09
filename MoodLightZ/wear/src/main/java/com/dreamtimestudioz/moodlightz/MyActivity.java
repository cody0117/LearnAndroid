package com.dreamtimestudioz.moodlightz;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.wearable.view.WatchViewStub;
import android.view.View;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.wearable.Node;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.Wearable;

import java.util.List;
import java.util.concurrent.TimeUnit;

public class MyActivity extends Activity
{

    private static final long CONNECTION_TIME_OUT_MS = 100;
    private static final String MESSAGE = "Reading";
    private static final String MESSAGE2 = "Romance";
    private static final String MESSAGE3 = "Relax";

    private GoogleApiClient client;
    private String nodeId;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_my);

        initApi();

        final WatchViewStub stub = (WatchViewStub) findViewById(R.id.watch_view_stub);
        stub.setOnLayoutInflatedListener(new WatchViewStub.OnLayoutInflatedListener()
        {
            @Override
            public void onLayoutInflated(WatchViewStub stub)
            {
                setupWidgets();
            }
        });
    }

    /**
     * Initializes the GoogleApiClient and gets the Node ID of the connected device.
     */
    private void initApi()
    {
        client = getGoogleApiClient(this);
        retrieveDeviceNode();
    }

    /**
     * Sets up the button for handling click events.
     */
    private void setupWidgets()
    {
        findViewById(R.id.btn_light).setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View view)
            {
                sendToast(1);
            }
        });

        findViewById(R.id.btn_light2).setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View view)
            {
                sendToast(2);
            }
        });

        findViewById(R.id.btn_light3).setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View view)
            {
                sendToast(3);
            }
        });

    }

    /**
     * Returns a GoogleApiClient that can access the Wear API.
     *
     * @param context
     * @return A GoogleApiClient that can make calls to the Wear API
     */
    private GoogleApiClient getGoogleApiClient(Context context)
    {
        return new GoogleApiClient.Builder(context)
                .addApi(Wearable.API)
                .build();
    }

    /**
     * Connects to the GoogleApiClient and retrieves the connected device's Node ID. If there are
     * multiple connected devices, the first Node ID is returned.
     */
    private void retrieveDeviceNode()
    {
        new Thread(new Runnable()
        {
            @Override
            public void run()
            {
                client.blockingConnect(CONNECTION_TIME_OUT_MS, TimeUnit.MILLISECONDS);
                NodeApi.GetConnectedNodesResult result =
                        Wearable.NodeApi.getConnectedNodes(client).await();
                List<Node> nodes = result.getNodes();
                if (nodes.size() > 0)
                {
                    nodeId = nodes.get(0).getId();
                }
                client.disconnect();
            }
        }).start();
    }

    /**
     * Sends a message to the connected mobile device, telling it to show a Toast.
     */
    private void sendToast(int whichMsg)
    {
        final String msg;

        if (whichMsg == 1)
            msg = MESSAGE;
        else if (whichMsg == 2)
            msg = MESSAGE2;
        else
            msg = MESSAGE3;

        if (nodeId != null)
        {
            new Thread(new Runnable()
            {
                @Override
                public void run()
                {
                    client.blockingConnect(CONNECTION_TIME_OUT_MS, TimeUnit.MILLISECONDS);
                    Wearable.MessageApi.sendMessage(client, nodeId, msg, null);
                    client.disconnect();
                }
            }).start();
        }
    }
}
