.class Lcom/bnminfo/bibliatakatifu/SearchingActivity$3;
.super Ljava/lang/Object;
.source "SearchingActivity.java"

# interfaces
.implements Lcom/anythink/banner/api/ATBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bnminfo/bibliatakatifu/SearchingActivity;->loadTopOnBannerAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bnminfo/bibliatakatifu/SearchingActivity;

.field final synthetic val$mBannerView:Lcom/anythink/banner/api/ATBannerView;


# direct methods
.method constructor <init>(Lcom/bnminfo/bibliatakatifu/SearchingActivity;Lcom/anythink/banner/api/ATBannerView;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity$3;->this$0:Lcom/bnminfo/bibliatakatifu/SearchingActivity;

    iput-object p2, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity$3;->val$mBannerView:Lcom/anythink/banner/api/ATBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerAutoRefreshFail(Lcom/anythink/core/api/AdError;)V
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBannerAutoRefreshFail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getFullErrorInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SearchingActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBannerAutoRefreshed(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    return-void
.end method

.method public onBannerClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    return-void
.end method

.method public onBannerClose(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 1

    .line 213
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity$3;->val$mBannerView:Lcom/anythink/banner/api/ATBannerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/banner/api/ATBannerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity$3;->val$mBannerView:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {p1}, Lcom/anythink/banner/api/ATBannerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity$3;->val$mBannerView:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onBannerFailed(Lcom/anythink/core/api/AdError;)V
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBannerFailed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getFullErrorInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SearchingActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBannerLoaded()V
    .locals 0

    return-void
.end method

.method public onBannerShow(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    return-void
.end method
