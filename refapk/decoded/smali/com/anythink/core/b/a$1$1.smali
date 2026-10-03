.class final Lcom/anythink/core/b/a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/a$1;->a(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/b/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/ATBiddingResult;

.field final synthetic b:Lcom/anythink/core/b/c/a;

.field final synthetic c:Lcom/anythink/core/b/a$1;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/a$1;Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/b/c/a;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/anythink/core/b/a$1$1;->c:Lcom/anythink/core/b/a$1;

    iput-object p2, p0, Lcom/anythink/core/b/a$1$1;->a:Lcom/anythink/core/api/ATBiddingResult;

    iput-object p3, p0, Lcom/anythink/core/b/a$1$1;->b:Lcom/anythink/core/b/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 110
    iget-object v0, p0, Lcom/anythink/core/b/a$1$1;->a:Lcom/anythink/core/api/ATBiddingResult;

    invoke-static {v0}, Lcom/anythink/core/b/a;->a(Lcom/anythink/core/api/ATBiddingResult;)I

    move-result v5

    .line 111
    iget-object v0, p0, Lcom/anythink/core/b/a$1$1;->c:Lcom/anythink/core/b/a$1;

    iget-object v1, v0, Lcom/anythink/core/b/a$1;->b:Lcom/anythink/core/b/a;

    iget-object v0, p0, Lcom/anythink/core/b/a$1$1;->a:Lcom/anythink/core/api/ATBiddingResult;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBiddingResult;->isSuccessWithUseType()Z

    move-result v2

    iget-object v3, p0, Lcom/anythink/core/b/a$1$1;->a:Lcom/anythink/core/api/ATBiddingResult;

    iget-object v0, p0, Lcom/anythink/core/b/a$1$1;->c:Lcom/anythink/core/b/a$1;

    iget-object v4, v0, Lcom/anythink/core/b/a$1;->a:Lcom/anythink/core/common/f/au;

    iget-object v6, p0, Lcom/anythink/core/b/a$1$1;->b:Lcom/anythink/core/b/c/a;

    invoke-static/range {v1 .. v6}, Lcom/anythink/core/b/a;->a(Lcom/anythink/core/b/a;ZLcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/common/f/au;ILcom/anythink/core/b/c/a;)V

    return-void
.end method
