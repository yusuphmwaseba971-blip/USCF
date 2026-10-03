.class final Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/e/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick(Lcom/anythink/basead/e/i;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-virtual {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget v1, p1, Lcom/anythink/basead/e/i;->a:I

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->B(I)V

    .line 162
    iget p1, p1, Lcom/anythink/basead/e/i;->b:I

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/h;->C(I)V

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->p(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 165
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->q(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked()V

    :cond_1
    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->n(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->o(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public final onAdShow(Lcom/anythink/basead/e/i;)V
    .locals 0

    .line 145
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->l(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->m(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    :cond_0
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 0

    return-void
.end method

.method public final onRewarded()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->j(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->k(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    :cond_0
    return-void
.end method

.method public final onShowFailed(Lcom/anythink/basead/c/e;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->h(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->i(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onVideoAdPlayEnd()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->f(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;->g(Lcom/anythink/network/myoffer/MyOfferATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd()V

    :cond_0
    return-void
.end method

.method public final onVideoAdPlayStart()V
    .locals 0

    return-void
.end method
