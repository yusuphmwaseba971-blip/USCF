.class final Lcom/anythink/network/facebook/FacebookBidkitManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/api/MediationBidManager$BidListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/facebook/FacebookBidkitManager;->a(Lcom/anythink/core/common/f/a;Lcom/anythink/core/api/MediationBidManager$BidListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/MediationBidManager$BidListener;

.field final synthetic b:Lcom/anythink/network/facebook/FacebookBidkitAuction;

.field final synthetic c:Lcom/anythink/core/common/f/a;

.field final synthetic d:Lcom/anythink/network/facebook/FacebookBidkitManager;


# direct methods
.method constructor <init>(Lcom/anythink/network/facebook/FacebookBidkitManager;Lcom/anythink/core/api/MediationBidManager$BidListener;Lcom/anythink/network/facebook/FacebookBidkitAuction;Lcom/anythink/core/common/f/a;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitManager$2;->d:Lcom/anythink/network/facebook/FacebookBidkitManager;

    iput-object p2, p0, Lcom/anythink/network/facebook/FacebookBidkitManager$2;->a:Lcom/anythink/core/api/MediationBidManager$BidListener;

    iput-object p3, p0, Lcom/anythink/network/facebook/FacebookBidkitManager$2;->b:Lcom/anythink/network/facebook/FacebookBidkitAuction;

    iput-object p4, p0, Lcom/anythink/network/facebook/FacebookBidkitManager$2;->c:Lcom/anythink/core/common/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBidFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onBidStart(Lcom/anythink/core/common/f/au;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitManager$2;->a:Lcom/anythink/core/api/MediationBidManager$BidListener;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/MediationBidManager$BidListener;->onBidStart(Lcom/anythink/core/common/f/au;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    :cond_0
    return-void
.end method

.method public final onBidSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;)V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitManager$2;->d:Lcom/anythink/network/facebook/FacebookBidkitManager;

    iget-object v0, v0, Lcom/anythink/network/facebook/FacebookBidkitManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookBidkitManager$2;->b:Lcom/anythink/network/facebook/FacebookBidkitAuction;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitManager$2;->d:Lcom/anythink/network/facebook/FacebookBidkitManager;

    iget-object v0, v0, Lcom/anythink/network/facebook/FacebookBidkitManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookBidkitManager$2;->c:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookBidkitManager$2;->b:Lcom/anythink/network/facebook/FacebookBidkitAuction;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitManager$2;->a:Lcom/anythink/core/api/MediationBidManager$BidListener;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p1}, Lcom/anythink/core/api/MediationBidManager$BidListener;->onBidSuccess(Ljava/util/List;)V

    :cond_0
    return-void
.end method
