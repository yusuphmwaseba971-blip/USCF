.class final Lcom/anythink/network/facebook/FacebookATInitManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/facebook/FacebookATInitManager;->a(Landroid/content/Context;Ljava/util/Map;ZLcom/anythink/core/api/ATBidRequestInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Z

.field final synthetic d:Lcom/anythink/core/api/ATBidRequestInfoListener;

.field final synthetic e:Lcom/anythink/network/facebook/FacebookATInitManager;


# direct methods
.method constructor <init>(Lcom/anythink/network/facebook/FacebookATInitManager;Landroid/content/Context;Ljava/util/Map;ZLcom/anythink/core/api/ATBidRequestInfoListener;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATInitManager$2;->e:Lcom/anythink/network/facebook/FacebookATInitManager;

    iput-object p2, p0, Lcom/anythink/network/facebook/FacebookATInitManager$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/network/facebook/FacebookATInitManager$2;->b:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/anythink/network/facebook/FacebookATInitManager$2;->c:Z

    iput-object p5, p0, Lcom/anythink/network/facebook/FacebookATInitManager$2;->d:Lcom/anythink/core/api/ATBidRequestInfoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 176
    new-instance v0, Lcom/anythink/network/facebook/FacebookBidRequestInfo;

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATInitManager$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookATInitManager$2;->b:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/anythink/network/facebook/FacebookBidRequestInfo;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    .line 177
    iget-boolean v1, p0, Lcom/anythink/network/facebook/FacebookATInitManager$2;->c:Z

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATInitManager$2;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/anythink/network/facebook/FacebookBidRequestInfo;->fillBannerData(Ljava/util/Map;)V

    .line 181
    :cond_0
    invoke-virtual {v0}, Lcom/anythink/network/facebook/FacebookBidRequestInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 182
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATInitManager$2;->d:Lcom/anythink/core/api/ATBidRequestInfoListener;

    if-eqz v0, :cond_1

    const-string v1, "Network BidToken or Custom bid info is Empty."

    .line 183
    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATBidRequestInfoListener;->onFailed(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATInitManager$2;->d:Lcom/anythink/core/api/ATBidRequestInfoListener;

    if-eqz v1, :cond_3

    .line 189
    invoke-interface {v1, v0}, Lcom/anythink/core/api/ATBidRequestInfoListener;->onSuccess(Lcom/anythink/core/api/ATBidRequestInfo;)V

    :cond_3
    return-void
.end method
