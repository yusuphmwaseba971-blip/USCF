.class final Lcom/anythink/core/common/b/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/b;->b(Lcom/anythink/core/common/f/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/ATAdInfo;

.field final synthetic b:Lcom/anythink/core/common/b/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/b;Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/anythink/core/common/b/b$2;->b:Lcom/anythink/core/common/b/b;

    iput-object p2, p0, Lcom/anythink/core/common/b/b$2;->a:Lcom/anythink/core/api/ATAdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/anythink/core/common/b/b$2;->b:Lcom/anythink/core/common/b/b;

    invoke-static {v0}, Lcom/anythink/core/common/b/b;->a(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdSourceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/anythink/core/common/b/b$2;->a:Lcom/anythink/core/api/ATAdInfo;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATAdSourceStatusListener;->onAdSourceBiddingFilled(Lcom/anythink/core/api/ATAdInfo;)V

    :cond_0
    return-void
.end method
