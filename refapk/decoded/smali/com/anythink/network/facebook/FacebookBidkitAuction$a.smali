.class Lcom/anythink/network/facebook/FacebookBidkitAuction$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/biddingkit/waterfall/WaterfallEntry;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/facebook/FacebookBidkitAuction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/biddingkit/waterfall/WaterfallEntry;",
        "Ljava/lang/Comparable<",
        "Lcom/anythink/network/facebook/FacebookBidkitAuction$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/facebook/FacebookBidkitAuction;

.field private b:Lcom/facebook/biddingkit/gen/Bid;

.field private c:D

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/anythink/network/facebook/FacebookBidkitAuction;Lcom/facebook/biddingkit/gen/Bid;DLjava/lang/String;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$a;->a:Lcom/anythink/network/facebook/FacebookBidkitAuction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object p2, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$a;->b:Lcom/facebook/biddingkit/gen/Bid;

    .line 389
    iput-wide p3, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$a;->c:D

    .line 390
    iput-object p5, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/anythink/network/facebook/FacebookBidkitAuction$a;)I
    .locals 4

    .line 410
    invoke-virtual {p1}, Lcom/anythink/network/facebook/FacebookBidkitAuction$a;->getCPMCents()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/anythink/network/facebook/FacebookBidkitAuction$a;->getCPMCents()D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 382
    check-cast p1, Lcom/anythink/network/facebook/FacebookBidkitAuction$a;

    invoke-virtual {p0, p1}, Lcom/anythink/network/facebook/FacebookBidkitAuction$a;->compareTo(Lcom/anythink/network/facebook/FacebookBidkitAuction$a;)I

    move-result p1

    return p1
.end method

.method public getBid()Lcom/facebook/biddingkit/gen/Bid;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$a;->b:Lcom/facebook/biddingkit/gen/Bid;

    return-object v0
.end method

.method public getCPMCents()D
    .locals 2

    .line 400
    iget-wide v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$a;->c:D

    return-wide v0
.end method

.method public getEntryName()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$a;->d:Ljava/lang/String;

    return-object v0
.end method
