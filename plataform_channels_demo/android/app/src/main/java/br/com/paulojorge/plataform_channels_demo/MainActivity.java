package br.com.paulojorge.plataform_channels_demo;

import android.os.Build;

import androidx.annotation.NonNull;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;


public class MainActivity extends FlutterActivity {

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        BinaryMessenger binaryMessenger =flutterEngine.getDartExecutor().getBinaryMessenger();
        MethodChannel methodChannel = new MethodChannel(binaryMessenger,"br.com.paulojorge.plataform_channels_demo");
        methodChannel.setMethodCallHandler((call, result) -> {
            if(call.method.equals("porraaaaa")){

                String version = getVersion();
                result.success(version );

            }else{
                result.notImplemented();
            }

        });
    }

    String getVersion(){
        int sdkVersion = Build.VERSION.SDK_INT;
        String release= Build.VERSION.RELEASE;
        return "Android version: "+ sdkVersion +" release: "+release;
    }
}
