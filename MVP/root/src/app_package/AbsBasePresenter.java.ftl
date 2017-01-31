package ${packageName}.presenter.base;

import rx.Subscription;
import rx.subscriptions.CompositeSubscription;

public abstract class AbsBasePresenter implements BasePresenter {
    private CompositeSubscription compositeSubscription = new CompositeSubscription();

    @Override
    public void onAttach() {

    }

    @Override
    public void onDetach() {
        compositeSubscription.clear();
    }

    protected final void add(Subscription subscription) {
        compositeSubscription.add(subscription);
    }
}
