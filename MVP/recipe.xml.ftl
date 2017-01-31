<?xml version="1.0"?>
<recipe>
    <instantiate from="root/src/app_package/BasicPresenter.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/presenters/${className}Presenter.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/presenters/${className}Presenter.kt" />

    <instantiate from="root/src/app_package/BasicPresenterImpl.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/presenters/${className}PresenterImpl.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/presenters/${className}PresenterImpl.kt" />

    <instantiate from="root/src/app_package/BasicView.kt.ftl"
                to="${escapeXmlAttribute(srcOut)}/views/${className}View.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/views/${className}View.kt" />

    <#if includeInteractor>
        <instantiate from="root/src/app_package/BasicInteractor.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/interactors/${className}Interactor.kt" />

        <open file="${escapeXmlAttribute(srcOut)}/interactors/${className}Interactor.kt" />

        <instantiate from="root/src/app_package/BasicInteractorImpl.kt.ftl"
                  to="${escapeXmlAttribute(srcOut)}/interactors/${className}InteractorImpl.kt" />

        <open file="${escapeXmlAttribute(srcOut)}/interactors/${className}InteractorImpl.kt" />
    </#if>
</recipe>
