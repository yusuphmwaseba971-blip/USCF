.class final Lcom/anythink/network/facebook/FacebookATAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/facebook/FacebookATBaseNativeAd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/facebook/FacebookATAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/facebook/FacebookATBaseNativeAd;

.field final synthetic b:Lcom/anythink/network/facebook/FacebookATAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/facebook/FacebookATAdapter;Lcom/anythink/network/facebook/FacebookATBaseNativeAd;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATAdapter$1;->b:Lcom/anythink/network/facebook/FacebookATAdapter;

    iput-object p2, p0, Lcom/anythink/network/facebook/FacebookATAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATBaseNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATAdapter$1;->b:Lcom/anythink/network/facebook/FacebookATAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATAdapter;->d(Lcom/anythink/network/facebook/FacebookATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATAdapter$1;->b:Lcom/anythink/network/facebook/FacebookATAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATAdapter;->e(Lcom/anythink/network/facebook/FacebookATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onLoadSuccess()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATAdapter$1;->b:Lcom/anythink/network/facebook/FacebookATAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATAdapter;->a(Lcom/anythink/network/facebook/FacebookATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATAdapter$1;->b:Lcom/anythink/network/facebook/FacebookATAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATAdapter;->b(Lcom/anythink/network/facebook/FacebookATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATAdapter$1;->b:Lcom/anythink/network/facebook/FacebookATAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATAdapter;->c(Lcom/anythink/network/facebook/FacebookATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/anythink/network/facebook/FacebookATAdapter$1;->a:Lcom/anythink/network/facebook/FacebookATBaseNativeAd;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    :cond_0
    return-void
.end method
