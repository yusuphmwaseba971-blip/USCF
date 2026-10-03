.class final Lcom/anythink/network/facebook/FacebookBidkitManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/facebook/FacebookBidkitManager;->startBid(Lcom/anythink/core/common/f/a;Lcom/anythink/core/api/MediationBidManager$BidListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/a;

.field final synthetic b:Lcom/anythink/core/api/MediationBidManager$BidListener;

.field final synthetic c:Lcom/anythink/network/facebook/FacebookBidkitManager;


# direct methods
.method constructor <init>(Lcom/anythink/network/facebook/FacebookBidkitManager;Lcom/anythink/core/common/f/a;Lcom/anythink/core/api/MediationBidManager$BidListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitManager$1;->c:Lcom/anythink/network/facebook/FacebookBidkitManager;

    iput-object p2, p0, Lcom/anythink/network/facebook/FacebookBidkitManager$1;->a:Lcom/anythink/core/common/f/a;

    iput-object p3, p0, Lcom/anythink/network/facebook/FacebookBidkitManager$1;->b:Lcom/anythink/core/api/MediationBidManager$BidListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitManager$1;->c:Lcom/anythink/network/facebook/FacebookBidkitManager;

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookBidkitManager$1;->a:Lcom/anythink/core/common/f/a;

    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookBidkitManager$1;->b:Lcom/anythink/core/api/MediationBidManager$BidListener;

    invoke-static {v0, v1, v2}, Lcom/anythink/network/facebook/FacebookBidkitManager;->a(Lcom/anythink/network/facebook/FacebookBidkitManager;Lcom/anythink/core/common/f/a;Lcom/anythink/core/api/MediationBidManager$BidListener;)V

    return-void
.end method
