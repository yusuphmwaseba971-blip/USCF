.class final Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/api/MediationInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;Landroid/content/Context;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$1;->b:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    iput-object p2, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSuccess()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$1;->b:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->a(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$1;->b:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->a(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->destroy()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$1;->b:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    new-instance v1, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;-><init>(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;B)V

    invoke-static {v0, v1}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->a(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;)Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    .line 92
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$1;->b:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->a(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->loadAd(Landroid/content/Context;)V

    return-void
.end method
