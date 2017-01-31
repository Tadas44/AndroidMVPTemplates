<?xml version="1.0"?>
<recipe>
    <#include "common/recipe_manifest.xml.ftl" />
    <#include "common/recipe_simple.xml.ftl" />
    <#include "common/recipe_app_bar.xml.ftl" />

    <#if createBaseClasses>
        <instantiate from="root/src/app_package/AbsBasePresenter.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/presenter/base/AbsBasePresenter.java" />

        <open file="${escapeXmlAttribute(srcOut)}/presenter/base/AbsBasePresenter.java" />

        <instantiate from="root/src/app_package/BasePresenter.java.ftl"
                        to="${escapeXmlAttribute(srcOut)}/presenter/base/BasePresenter.java" />

        <open file="${escapeXmlAttribute(srcOut)}/presenter/base/BasePresenter.java" />

        <instantiate from="root/src/app_package/ProgressView.java.ftl"
                        to="${escapeXmlAttribute(srcOut)}/view/base/ProgressView.java" />

        <open file="${escapeXmlAttribute(srcOut)}/view/base/ProgressView.java" />

        <instantiate from="root/src/app_package/BaseActivity.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/activity/base/BaseActivity.java" />

        <open file="${escapeXmlAttribute(srcOut)}/activity/base/BaseActivity.java" />
    </#if>

    <instantiate from="root/src/app_package/BasicPresenter.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/presenter/${activityClass}Presenter.java" />

    <open file="${escapeXmlAttribute(srcOut)}/presenter/${activityClass}Presenter.java" />

    <instantiate from="root/src/app_package/BasicPresenterImpl.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/presenter/${activityClass}PresenterImpl.java" />

    <open file="${escapeXmlAttribute(srcOut)}/presenter/${activityClass}PresenterImpl.java" />

    <instantiate from="root/src/app_package/BasicView.java.ftl"
                to="${escapeXmlAttribute(srcOut)}/view/${activityClass}View.java" />

    <open file="${escapeXmlAttribute(srcOut)}/view/${activityClass}View.java" />

    <instantiate from="root/src/app_package/BasicActivity.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/activity/${activityClass}Activity.java" />

    <open file="${escapeXmlAttribute(srcOut)}/activity/${activityClass}Activity.java" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${simpleLayoutName}.xml" />

    <#if includeInteractor>
        <instantiate from="root/src/app_package/BasicInteractor.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/interactor/${activityClass}Interactor.java" />

        <open file="${escapeXmlAttribute(srcOut)}/interactor/${activityClass}Interactor.java" />

        <instantiate from="root/src/app_package/BasicInteractorImpl.java.ftl"
                  to="${escapeXmlAttribute(srcOut)}/interactor/${activityClass}InteractorImpl.java" />

        <open file="${escapeXmlAttribute(srcOut)}/interactor/${activityClass}InteractorImpl.java" />
    </#if>
</recipe>
