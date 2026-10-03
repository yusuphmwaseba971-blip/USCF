.class final Lcom/anythink/network/facebook/FacebookBidkitAuction$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/biddingkit/auction/AuctionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/facebook/FacebookBidkitAuction;->a(Ljava/lang/String;Lcom/anythink/core/api/MediationBidManager$BidListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/MediationBidManager$BidListener;

.field final synthetic b:Lcom/anythink/network/facebook/FacebookBidkitAuction;


# direct methods
.method constructor <init>(Lcom/anythink/network/facebook/FacebookBidkitAuction;Lcom/anythink/core/api/MediationBidManager$BidListener;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$3;->b:Lcom/anythink/network/facebook/FacebookBidkitAuction;

    iput-object p2, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$3;->a:Lcom/anythink/core/api/MediationBidManager$BidListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuctionCompleted(Lcom/facebook/biddingkit/waterfall/Waterfall;)V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$3;->b:Lcom/anythink/network/facebook/FacebookBidkitAuction;

    iget-object v1, v0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->i:Ljava/util/Map;

    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$3;->a:Lcom/anythink/core/api/MediationBidManager$BidListener;

    invoke-static {v0, v1, p1, v2}, Lcom/anythink/network/facebook/FacebookBidkitAuction;->a(Lcom/anythink/network/facebook/FacebookBidkitAuction;Ljava/util/Map;Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/anythink/core/api/MediationBidManager$BidListener;)V

    return-void
.end method
