.class final Lcom/anythink/interstitial/api/ATInterstitial$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/interstitial/api/ATInterstitial$1;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/interstitial/api/ATInterstitial$1;

.field final synthetic val$adInfo:Lcom/anythink/core/api/ATAdInfo;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$networkConfirmInfo:Lcom/anythink/core/api/ATNetworkConfirmInfo;


# direct methods
.method constructor <init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$2;->this$1:Lcom/anythink/interstitial/api/ATInterstitial$1;

    iput-object p2, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$2;->val$adInfo:Lcom/anythink/core/api/ATAdInfo;

    iput-object p4, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$2;->val$networkConfirmInfo:Lcom/anythink/core/api/ATNetworkConfirmInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$2;->this$1:Lcom/anythink/interstitial/api/ATInterstitial$1;

    iget-object v0, v0, Lcom/anythink/interstitial/api/ATInterstitial$1;->this$0:Lcom/anythink/interstitial/api/ATInterstitial;

    iget-object v0, v0, Lcom/anythink/interstitial/api/ATInterstitial;->mInterstitialListener:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$2;->this$1:Lcom/anythink/interstitial/api/ATInterstitial$1;

    iget-object v0, v0, Lcom/anythink/interstitial/api/ATInterstitial$1;->this$0:Lcom/anythink/interstitial/api/ATInterstitial;

    iget-object v0, v0, Lcom/anythink/interstitial/api/ATInterstitial;->mInterstitialListener:Lcom/anythink/interstitial/api/ATInterstitialListener;

    instance-of v0, v0, Lcom/anythink/interstitial/api/ATInterstitialExListener;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$2;->this$1:Lcom/anythink/interstitial/api/ATInterstitial$1;

    iget-object v0, v0, Lcom/anythink/interstitial/api/ATInterstitial$1;->this$0:Lcom/anythink/interstitial/api/ATInterstitial;

    iget-object v0, v0, Lcom/anythink/interstitial/api/ATInterstitial;->mInterstitialListener:Lcom/anythink/interstitial/api/ATInterstitialListener;

    check-cast v0, Lcom/anythink/interstitial/api/ATInterstitialExListener;

    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$2;->val$context:Landroid/content/Context;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$2;->this$1:Lcom/anythink/interstitial/api/ATInterstitial$1;

    iget-object v1, v1, Lcom/anythink/interstitial/api/ATInterstitial$1;->this$0:Lcom/anythink/interstitial/api/ATInterstitial;

    iget-object v1, v1, Lcom/anythink/interstitial/api/ATInterstitial;->mContext:Landroid/content/Context;

    :cond_0
    iget-object v2, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$2;->val$adInfo:Lcom/anythink/core/api/ATAdInfo;

    iget-object v3, p0, Lcom/anythink/interstitial/api/ATInterstitial$1$2;->val$networkConfirmInfo:Lcom/anythink/core/api/ATNetworkConfirmInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/anythink/interstitial/api/ATInterstitialExListener;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    :cond_1
    return-void
.end method
