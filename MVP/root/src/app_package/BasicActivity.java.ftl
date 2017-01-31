package ${packageName}.activity;

import android.os.Bundle;
<#if includeCppSupport!false>
import android.widget.TextView;
</#if>
<#if hasAppBar>
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;
<#else>
import ${superClassFqcn};
</#if>
<#if isNewProject>
import android.view.Menu;
import android.view.MenuItem;
</#if>
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>
import ${packageName}.view.${activityClass}View;
import ${packageName}.presenter.${activityClass}Presenter;
import butterknife.BindView;
import butterknife.ButterKnife;
import ${packageName}.activity.base.BaseActivity;


public class ${activityClass}Activity extends BaseActivity implements ${activityClass}View{

<#if hasAppBar>
    @BindView(R.id.toolbar)
    Toolbar toolbar;
    @BindView(R.id.fab)
    FloatingActionButton fab;
</#if>

    private ${activityClass}Presenter presenter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
        ButterKnife.bind(this);

<#if hasAppBar>
       toolbar.setNavigationOnClickListener(v -> onBackPressed());
       fab.setOnClickListener(view -> Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
                .setAction("Action", null).show());
</#if>
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
