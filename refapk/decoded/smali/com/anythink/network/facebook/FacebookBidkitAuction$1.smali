.class final Lcom/anythink/network/facebook/FacebookBidkitAuction$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/facebook/FacebookBidkitAuction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/facebook/FacebookBidkitAuction;


# direct methods
.method constructor <init>(Lcom/anythink/network/facebook/FacebookBidkitAuction;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction$1;->a:Lcom/anythink/network/facebook/FacebookBidkitAuction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 71
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/network/facebook/FacebookBidkitAuction$1$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/facebook/FacebookBidkitAuction$1$1;-><init>(Lcom/anythink/network/facebook/FacebookBidkitAuction$1;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
