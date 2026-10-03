.class public Lcom/anythink/network/facebook/FacebookATInitConfig;
.super Lcom/anythink/core/api/ATInitConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/anythink/core/api/ATInitConfig;-><init>()V

    .line 17
    invoke-static {}, Lcom/anythink/network/facebook/FacebookATInitManager;->getInstance()Lcom/anythink/network/facebook/FacebookATInitManager;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookATInitConfig;->initMediation:Lcom/anythink/core/api/ATInitMediation;

    return-void
.end method
