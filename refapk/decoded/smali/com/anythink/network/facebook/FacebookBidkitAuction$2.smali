.class final Lcom/anythink/network/facebook/FacebookBidkitAuction$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/b/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/facebook/FacebookBidkitAuction;->startBidding(Ljava/lang/String;Lcom/anythink/core/api/MediationBidManager$BidListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/MediationBidManager$BidListener;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/anythink/network/facebook/FacebookBidkitAuction;


# direct methods
.method constructor <init>(Lcom/anythink/network/facebook/FacebookBidkitAuction;Lcom/anythink/core/api/MediationBidManager$BidListener;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->d:Lcom/anythink/network/facebook/FacebookBidkitAuction;

    iput-object p2, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->a:Lcom/anythink/core/api/MediationBidManager$BidListener;

    iput-object p3, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/au;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/au;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f/au;",
            ">;)V"
        }
    .end annotation

    .line 143
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->d:Lcom/anythink/network/facebook/FacebookBidkitAuction;

    iget-object p1, p1, Lcom/anythink/network/facebook/FacebookBidkitAuction;->l:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->d:Lcom/anythink/network/facebook/FacebookBidkitAuction;

    iget-object p1, p1, Lcom/anythink/network/facebook/FacebookBidkitAuction;->l:Landroid/os/Handler;

    iget-object p2, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->d:Lcom/anythink/network/facebook/FacebookBidkitAuction;

    iget-object p2, p2, Lcom/anythink/network/facebook/FacebookBidkitAuction;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onBidTokenObtainFail(Ljava/lang/String;Lcom/anythink/core/common/f/au;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->b:Ljava/util/Map;

    invoke-direct {p0, p2, v0}, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->a(Lcom/anythink/core/common/f/au;Ljava/util/Map;)V

    .line 134
    invoke-virtual {p2, p1}, Lcom/anythink/core/common/f/au;->h(Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->d:Lcom/anythink/network/facebook/FacebookBidkitAuction;

    iget-object p2, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->a:Lcom/anythink/core/api/MediationBidManager$BidListener;

    invoke-static {p1, p2, v0}, Lcom/anythink/network/facebook/FacebookBidkitAuction;->a(Lcom/anythink/network/facebook/FacebookBidkitAuction;Ljava/lang/String;Lcom/anythink/core/api/MediationBidManager$BidListener;)V

    :cond_0
    return-void
.end method

.method public final onBidTokenObtainStart(Lcom/anythink/core/common/f/au;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->a:Lcom/anythink/core/api/MediationBidManager$BidListener;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/MediationBidManager$BidListener;->onBidStart(Lcom/anythink/core/common/f/au;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    :cond_0
    return-void
.end method

.method public final onBidTokenObtainSuccess(Lcom/anythink/core/common/f/au;Lorg/json/JSONObject;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->b:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->a(Lcom/anythink/core/common/f/au;Ljava/util/Map;)V

    .line 123
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->d:Lcom/anythink/network/facebook/FacebookBidkitAuction;

    invoke-static {v0, p1, p2}, Lcom/anythink/network/facebook/FacebookBidkitAuction;->a(Lcom/anythink/network/facebook/FacebookBidkitAuction;Lcom/anythink/core/common/f/au;Lorg/json/JSONObject;)V

    .line 125
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->d:Lcom/anythink/network/facebook/FacebookBidkitAuction;

    iget-object p2, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;->a:Lcom/anythink/core/api/MediationBidManager$BidListener;

    invoke-static {p1, p2, v0}, Lcom/anythink/network/facebook/FacebookBidkitAuction;->a(Lcom/anythink/network/facebook/FacebookBidkitAuction;Ljava/lang/String;Lcom/anythink/core/api/MediationBidManager$BidListener;)V

    :cond_0
    return-void
.end method
