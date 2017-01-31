package ${packageName}.activity.base;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;

public class BaseActivity extends ${superClass} {

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.v(getClass().getSimpleName(), String.format("[Lifecycle] onCreate:%s", getClass().getSimpleName()));
    }

    @Override
    protected void onStart() {
        super.onStart();
        Log.v(getClass().getSimpleName(), String.format("[Lifecycle] onStart:%s", getClass().getSimpleName()));
    }

    @Override
    protected void onPause() {
        super.onPause();
        Log.v(getClass().getSimpleName(), String.format("[Lifecycle] onPause:%s", getClass().getSimpleName()));
    }

    @Override
    protected void onResume() {
        super.onResume();
        Log.v(getClass().getSimpleName(), String.format("[Lifecycle] onResume:%s", getClass().getSimpleName()));
    }

    @Override
    protected void onStop() {
        super.onStop();
        Log.v(getClass().getSimpleName(), String.format("[Lifecycle] onStop:%s", getClass().getSimpleName()));
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Log.v(getClass().getSimpleName(), String.format("[Lifecycle] onDestroy:%s", getClass().getSimpleName()));
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        Log.v(getClass().getSimpleName(), String.format("[Lifecycle] onSaveInstanceState:%s", getClass().getSimpleName()));
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        Log.v(getClass().getSimpleName(), String.format("[Lifecycle] onActivityResult:%s", getClass().getSimpleName()));
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Log.v(getClass().getSimpleName(), String.format("[Lifecycle] onNewIntent:%s", getClass().getSimpleName()));
    }

}
