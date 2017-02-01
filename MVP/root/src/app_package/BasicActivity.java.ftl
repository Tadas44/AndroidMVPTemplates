package ${packageName}.activity;

import android.os.Bundle;

import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v7.widget.Toolbar;
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>
import ${packageName}.presenter.${activityClass}Presenter;
import butterknife.BindView;
import butterknife.ButterKnife;
import ${packageName}.activity.base.BaseActivity;


public class ${activityClass}Activity extends BaseActivity implements ${activityClass}View{

    @BindView(R.id.toolbar)
    Toolbar toolbar;
    @BindView(R.id.fab)
    FloatingActionButton fab;

    private ${activityClass}Presenter presenter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
        ButterKnife.bind(this);

       toolbar.setNavigationOnClickListener(v -> onBackPressed());
       toolbar.setTitle(R.string.${activityTitle});
       fab.setOnClickListener(view -> Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
                .setAction("Action", null).show());
       //TODO initialize presenter here
    }

    @Override
    protected void onStart() {
        super.onStart();
        presenter.onAttach();
    }

    @Override
    protected void onStop() {
        super.onStop();
        presenter.onDetach();
    }

    @Override
    public void showProgress(boolean inProgress) {
        //TODO implement me!
    }

}
