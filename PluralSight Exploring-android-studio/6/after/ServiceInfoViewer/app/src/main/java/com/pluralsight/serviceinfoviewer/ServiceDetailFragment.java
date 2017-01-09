package com.pluralsight.serviceinfoviewer;



import android.app.ActivityManager;
import android.os.Bundle;
import android.app.Fragment;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.pluralsight.pkgutils.PkgFinder;

/**
 * A simple {@link android.app.Fragment} subclass.
 * Use the {@link ServiceDetailFragment#newInstance} factory method to
 * create an instance of this fragment.
 *
 */
public class ServiceDetailFragment extends Fragment {
    private static final String ARG_SRV_INFO = "srv_info";

    private ActivityManager.RunningServiceInfo mSrvInfo;

    public static ServiceDetailFragment newInstance(ActivityManager.RunningServiceInfo info) {
        ServiceDetailFragment fragment = new ServiceDetailFragment();
        Bundle args = new Bundle();
        args.putParcelable(ARG_SRV_INFO, info);
        fragment.setArguments(args);
        return fragment;
    }

    public ServiceDetailFragment() {
        // Required empty public constructor
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            mSrvInfo =
                    getArguments().getParcelable(ARG_SRV_INFO);
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.frag_srv_detail, container, false);

        View cnRow;
        TextView title;
        TextView data;

        //  Component name
        cnRow = rootView.findViewById(R.id.component_name);
        title = (TextView)cnRow.findViewById(R.id.title);
        data = (TextView)cnRow.findViewById(R.id.data);
        title.setText(R.string.component_name_title);
        data.setText(mSrvInfo.service.flattenToShortString());

        //  Process name
        cnRow = rootView.findViewById(R.id.process_name);
        title = (TextView)cnRow.findViewById(R.id.title);
        data = (TextView)cnRow.findViewById(R.id.data);
        title.setText(R.string.process_name_title);
        data.setText(mSrvInfo.process);

        //  PID
        cnRow = rootView.findViewById(R.id.pid);
        title = (TextView)cnRow.findViewById(R.id.title);
        data = (TextView)cnRow.findViewById(R.id.data);
        title.setText(R.string.pid_title);
        data.setText(Integer.toString(mSrvInfo.pid));

        //  UID
        cnRow = rootView.findViewById(R.id.uid);
        title = (TextView)cnRow.findViewById(R.id.title);
        data = (TextView)cnRow.findViewById(R.id.data);
        title.setText(R.string.uid_title);
        data.setText(Integer.toString(mSrvInfo.uid));

        //  Connected clients
        cnRow = rootView.findViewById(R.id.connected_clients);
        title = (TextView)cnRow.findViewById(R.id.title);
        data = (TextView)cnRow.findViewById(R.id.data);
        title.setText(R.string.conn_client_title);
        data.setText(Integer.toString(mSrvInfo.clientCount));

        //  Active time
        cnRow = rootView.findViewById(R.id.active_time);
        title = (TextView)cnRow.findViewById(R.id.title);
        data = (TextView)cnRow.findViewById(R.id.data);
        title.setText(R.string.active_time_title);
        data.setText(Long.toString(SystemClock.elapsedRealtime() -
                mSrvInfo.lastActivityTime));

        return rootView;
    }


}
