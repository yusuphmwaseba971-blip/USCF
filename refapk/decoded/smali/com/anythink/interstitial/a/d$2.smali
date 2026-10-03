.class final Lcom/anythink/interstitial/a/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/interstitial/a/d;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/core/api/ATAdInfo;

.field final synthetic c:Lcom/anythink/core/api/ATNetworkConfirmInfo;

.field final synthetic d:Lcom/anythink/interstitial/a/d;


# direct methods
.method constructor <init>(Lcom/anythink/interstitial/a/d;Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/anythink/interstitial/a/d$2;->d:Lcom/anythink/interstitial/a/d;

    iput-object p2, p0, Lcom/anythink/interstitial/a/d$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/interstitial/a/d$2;->b:Lcom/anythink/core/api/ATAdInfo;

    iput-object p4, p0, Lcom/anythink/interstitial/a/d$2;->c:Lcom/anythink/core/api/ATNetworkConfirmInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/anythink/interstitial/a/d$2;->d:Lcom/anythink/interstitial/a/d;

    iget-object v0, v0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialAutoEventListener;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/anythink/interstitial/a/d$2;->d:Lcom/anythink/interstitial/a/d;

    iget-object v0, v0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialAutoEventListener;

    iget-object v1, p0, Lcom/anythink/interstitial/a/d$2;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->E()Landroid/content/Context;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/anythink/interstitial/a/d$2;->b:Lcom/anythink/core/api/ATAdInfo;

    iget-object v3, p0, Lcom/anythink/interstitial/a/d$2;->c:Lcom/anythink/core/api/ATNetworkConfirmInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/interstitial/api/ATInterstitialAutoEventListener;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    :cond_1
    return-void
.end method
