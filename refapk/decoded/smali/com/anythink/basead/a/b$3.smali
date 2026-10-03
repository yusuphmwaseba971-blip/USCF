.class final Lcom/anythink/basead/a/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/c/i;

.field final synthetic b:Lcom/anythink/basead/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/basead/a/b;Lcom/anythink/basead/c/i;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/anythink/basead/a/b$3;->b:Lcom/anythink/basead/a/b;

    iput-object p2, p0, Lcom/anythink/basead/a/b$3;->a:Lcom/anythink/basead/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 245
    iget-object v0, p0, Lcom/anythink/basead/a/b$3;->b:Lcom/anythink/basead/a/b;

    iget-object v1, p0, Lcom/anythink/basead/a/b$3;->a:Lcom/anythink/basead/c/i;

    invoke-static {v0, v1}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/a/b;Lcom/anythink/basead/c/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 251
    iget-object v1, p0, Lcom/anythink/basead/a/b$3;->b:Lcom/anythink/basead/a/b;

    iget-object v1, v1, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->r()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    .line 252
    iget-object v0, p0, Lcom/anythink/basead/a/b$3;->b:Lcom/anythink/basead/a/b;

    iget-object v1, p0, Lcom/anythink/basead/a/b$3;->a:Lcom/anythink/basead/c/i;

    invoke-static {v0, v1}, Lcom/anythink/basead/a/b;->b(Lcom/anythink/basead/a/b;Lcom/anythink/basead/c/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :cond_2
    :goto_0
    if-ne v0, v3, :cond_3

    .line 259
    iget-object v1, p0, Lcom/anythink/basead/a/b$3;->b:Lcom/anythink/basead/a/b;

    iget-object v1, v1, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->r()I

    move-result v1

    if-ne v1, v3, :cond_3

    return-void

    .line 265
    :cond_3
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v1

    .line 266
    iget-object v2, p0, Lcom/anythink/basead/a/b$3;->b:Lcom/anythink/basead/a/b;

    iget-object v2, v2, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->G()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/anythink/basead/a/b$3;->b:Lcom/anythink/basead/a/b;

    iget-object v2, v2, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/n;->u()I

    move-result v2

    if-ne v3, v2, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v3, :cond_4

    .line 267
    iget-object v2, p0, Lcom/anythink/basead/a/b$3;->b:Lcom/anythink/basead/a/b;

    iget-object v2, v2, Lcom/anythink/basead/a/b;->S:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/basead/a/b$3;->b:Lcom/anythink/basead/a/b;

    iget-object v3, v3, Lcom/anythink/basead/a/b;->O:Lcom/anythink/core/common/f/l;

    iget-object v4, p0, Lcom/anythink/basead/a/b$3;->b:Lcom/anythink/basead/a/b;

    iget-object v4, v4, Lcom/anythink/basead/a/b;->U:Lcom/anythink/core/common/f/m;

    new-instance v5, Lcom/anythink/basead/a/b$3$1;

    invoke-direct {v5, p0, v0}, Lcom/anythink/basead/a/b$3$1;-><init>(Lcom/anythink/basead/a/b$3;I)V

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/anythink/core/api/IExHandler;->openApkConfirmDialog(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/g/a;)V

    return-void

    .line 285
    :cond_4
    iget-object v1, p0, Lcom/anythink/basead/a/b$3;->b:Lcom/anythink/basead/a/b;

    iget-object v2, p0, Lcom/anythink/basead/a/b$3;->a:Lcom/anythink/basead/c/i;

    invoke-static {v1, v0, v2}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/a/b;ILcom/anythink/basead/c/i;)V

    return-void
.end method
