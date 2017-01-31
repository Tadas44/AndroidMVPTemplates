package ${packageName}.presenter;

<#if includeInteractor>
import ${packageName}.interactor.${activityClass}Interactor;
</#if>
import ${packageName}.view.${activityClass}View;
import ${packageName}.presenter.base.AbsBasePresenter;

public class ${activityClass}PresenterImpl extends AbsBasePresenter implements ${activityClass}Presenter {
<#if includeInteractor>
    private final ${activityClass}Interactor interactor;
</#if>
    private final ${activityClass}View view;

    public ${activityClass}PresenterImpl(
<#if includeInteractor>
            ${activityClass}Interactor interactor,
</#if>
            ${activityClass}View view
            ){
<#if includeInteractor>
        this.interactor = interactor;
</#if>
        this.view = view;
    }
}
