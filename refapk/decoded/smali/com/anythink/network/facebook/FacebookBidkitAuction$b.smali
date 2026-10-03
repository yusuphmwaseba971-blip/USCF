.class final Lcom/anythink/network/facebook/FacebookBidkitAuction$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/biddingkit/waterfall/Waterfall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/facebook/FacebookBidkitAuction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/facebook/biddingkit/waterfall/WaterfallEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/anythink/network/facebook/FacebookBidkitAuction;


# direct methods
.method public constructor <init>(Lcom/anythink/network/facebook/FacebookBidkitAuction;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$b;->b:Lcom/anythink/network/facebook/FacebookBidkitAuction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$b;->a:Ljava/util/SortedSet;

    return-void
.end method


# virtual methods
.method public final createWaterfallCopy()Lcom/facebook/biddingkit/waterfall/Waterfall;
    .locals 3

    .line 348
    new-instance v0, Lcom/anythink/network/facebook/FacebookBidkitAuction$b;

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$b;->b:Lcom/anythink/network/facebook/FacebookBidkitAuction;

    invoke-direct {v0, v1}, Lcom/anythink/network/facebook/FacebookBidkitAuction$b;-><init>(Lcom/anythink/network/facebook/FacebookBidkitAuction;)V

    .line 349
    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$b;->a:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/biddingkit/waterfall/WaterfallEntry;

    .line 350
    invoke-interface {v0, v2}, Lcom/facebook/biddingkit/waterfall/Waterfall;->insert(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final entries()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/facebook/biddingkit/waterfall/WaterfallEntry;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$b;->a:Ljava/util/SortedSet;

    return-object v0
.end method

.method public final getFirst()Lcom/facebook/biddingkit/waterfall/WaterfallEntry;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$b;->a:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/biddingkit/waterfall/WaterfallEntry;

    return-object v0
.end method

.method public final insert(Lcom/facebook/biddingkit/gen/Bid;)V
    .locals 8

    .line 362
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$b;->a:Ljava/util/SortedSet;

    new-instance v7, Lcom/anythink/network/facebook/FacebookBidkitAuction$a;

    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$b;->b:Lcom/anythink/network/facebook/FacebookBidkitAuction;

    invoke-interface {p1}, Lcom/facebook/biddingkit/gen/Bid;->getPrice()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/facebook/biddingkit/gen/Bid;->getBidderName()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/anythink/network/facebook/FacebookBidkitAuction$a;-><init>(Lcom/anythink/network/facebook/FacebookBidkitAuction;Lcom/facebook/biddingkit/gen/Bid;DLjava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final insert(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$b;->a:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final size()I
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$b;->a:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    return v0
.end method
