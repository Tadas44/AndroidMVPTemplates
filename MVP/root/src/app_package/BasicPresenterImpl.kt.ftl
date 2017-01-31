package ${packageName}.presenters

<#if includeInteractor>
import ${packageName}.interactors.${className}Interactor
</#if>
import ${packageName}.views.${className}View
import rx.Scheduler
import rx.Subscription

class ${className}PresenterImpl(
<#if includeInteractor>
    private val interactor : ${className}Interactor,
</#if>
    private val uiScheduler: Scheduler,
    private val view: ${className}View
) : ${className}Presenter {

    private val subscriptions: MutableList<Subscription> = mutableListOf()

    override fun onAttached() {
       throw UnsupportedOperationException("not implemented")
    }

    override fun onDetached() {
         subscriptions.forEach { it.unsubscribe() }
    }
}
