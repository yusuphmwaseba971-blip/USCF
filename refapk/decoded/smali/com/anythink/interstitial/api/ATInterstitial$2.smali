.class Lcom/anythink/interstitial/api/ATInterstitial$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/interstitial/api/ATInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/interstitial/api/ATInterstitial;


# direct methods
.method constructor <init>(Lcom/anythink/interstitial/api/ATInterstitial;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/anythink/interstitial/api/ATInterstitial$2;->this$0:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .locals 2

    .line 174
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$2$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$2$2;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$2;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 162
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$2$1;

    invoke-direct {v1, p0}, Lcom/anythink/interstitial/api/ATInterstitial$2$1;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$2;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method
