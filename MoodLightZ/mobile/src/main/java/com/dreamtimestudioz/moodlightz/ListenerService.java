package com.dreamtimestudioz.moodlightz;

import android.widget.Toast;

import com.google.android.gms.wearable.MessageEvent;
import com.google.android.gms.wearable.WearableListenerService;
import com.philips.lighting.hue.sdk.PHHueSDK;
import com.philips.lighting.hue.sdk.utilities.PHUtilities;
import com.philips.lighting.model.PHBridge;
import com.philips.lighting.model.PHBridgeResourcesCache;
import com.philips.lighting.model.PHLight;
import com.philips.lighting.model.PHLightState;

import java.util.ArrayList;
import java.util.List;

public class ListenerService extends WearableListenerService
{
    private PHHueSDK phHueSDK;
    private List<PHLight> allLights;
    private PHBridge bridge;

    public ListenerService()
    {
        phHueSDK = PHHueSDK.getInstance();
        bridge = phHueSDK.getSelectedBridge();
        if (bridge != null)
        {
            PHBridgeResourcesCache cache = bridge.getResourceCache();
            allLights = cache.getAllLights();
        }
    }

    @Override
    public void onMessageReceived(MessageEvent messageEvent)
    {
        showToast("Lights to: " + messageEvent.getPath());
        String state = messageEvent.getPath();

        if (bridge == null)
            return;

        //
        // We assume there's only one light (for now)
        //
        PHLight light = allLights.get(0);


        if (state.compareTo("Reading") == 0)
        {
            float xy[] = PHUtilities.calculateXYFromRGB(255, 255, 64, light.getModelNumber());
            PHLightState lightState = new PHLightState();
            lightState.setX(xy[0]);
            lightState.setY(xy[1]);
            bridge.updateLightState(light, lightState);
        }
        else if (state.compareTo("Romance") == 0)
        {
            float xy[] = PHUtilities.calculateXYFromRGB(128, 0, 64, light.getModelNumber());
            PHLightState lightState = new PHLightState();
            lightState.setX(xy[0]);
            lightState.setY(xy[1]);
            bridge.updateLightState(light, lightState);
        }
        else
        {
            float xy[] = PHUtilities.calculateXYFromRGB(32, 0, 32, light.getModelNumber());
            PHLightState lightState = new PHLightState();
            lightState.setX(xy[0]);
            lightState.setY(xy[1]);
            bridge.updateLightState(light, lightState);
        }
    }

    private void showToast(String message)
    {
        Toast.makeText(this, message, Toast.LENGTH_LONG).show();
    }
}
