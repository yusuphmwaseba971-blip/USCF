.class final Lcom/anythink/basead/d/h$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/expressad/out/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/h;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/ai;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/a/h;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/d/h;


# direct methods
.method constructor <init>(Lcom/anythink/basead/d/h;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/anythink/basead/d/h$3;->a:Lcom/anythink/basead/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 5

    .line 247
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/anythink/basead/d/h$3;->a:Lcom/anythink/basead/d/h;

    iget-object v1, v1, Lcom/anythink/basead/d/h;->d:Lcom/anythink/basead/a/b;

    if-nez v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/anythink/basead/d/h$3;->a:Lcom/anythink/basead/d/h;

    new-instance v2, Lcom/anythink/basead/a/b;

    iget-object v3, v1, Lcom/anythink/basead/d/h;->h:Lcom/anythink/core/common/f/m;

    iget-object v4, p0, Lcom/anythink/basead/d/h$3;->a:Lcom/anythink/basead/d/h;

    iget-object v4, v4, Lcom/anythink/basead/d/h;->g:Lcom/anythink/core/common/f/ai;

    invoke-direct {v2, v0, v3, v4}, Lcom/anythink/basead/a/b;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)V

    iput-object v2, v1, Lcom/anythink/basead/d/h;->d:Lcom/anythink/basead/a/b;

    .line 252
    iget-object v0, p0, Lcom/anythink/basead/d/h$3;->a:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->d:Lcom/anythink/basead/a/b;

    new-instance v1, Lcom/anythink/basead/d/h$3$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/d/h$3$1;-><init>(Lcom/anythink/basead/d/h$3;)V

    invoke-virtual {v0, v1}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/a/b$b;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/h$3;->a:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->d:Lcom/anythink/basead/a/b;

    invoke-virtual {v0}, Lcom/anythink/basead/a/b;->b()Lcom/anythink/core/common/f/l;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/anythink/basead/d/a/b;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/expressad/foundation/d/c;)V

    .line 290
    iget-object p1, p0, Lcom/anythink/basead/d/h$3;->a:Lcom/anythink/basead/d/h;

    iget-object p1, p1, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/d/h$3;->a:Lcom/anythink/basead/d/h;

    iget-object p1, p1, Lcom/anythink/basead/d/h;->l:Lcom/anythink/expressad/advanced/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/advanced/d/c;->c()Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 292
    :goto_0
    new-instance v0, Lcom/anythink/basead/c/i;

    iget-object v1, p0, Lcom/anythink/basead/d/h$3;->a:Lcom/anythink/basead/d/h;

    iget-object v1, v1, Lcom/anythink/basead/d/h;->h:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/anythink/basead/c/i;->f:I

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, v0, Lcom/anythink/basead/c/i;->e:I

    .line 299
    :cond_2
    new-instance p1, Lcom/anythink/basead/c/a;

    invoke-direct {p1}, Lcom/anythink/basead/c/a;-><init>()V

    iput-object p1, v0, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    .line 302
    iget-object p1, p0, Lcom/anythink/basead/d/h$3;->a:Lcom/anythink/basead/d/h;

    iget-object p1, p1, Lcom/anythink/basead/d/h;->d:Lcom/anythink/basead/a/b;

    invoke-virtual {p1, v0}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/i;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/anythink/basead/d/h$3;->a:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->b:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/anythink/basead/d/h$3;->a:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->b:Lcom/anythink/basead/e/a;

    new-instance v1, Lcom/anythink/basead/e/i;

    invoke-direct {v1}, Lcom/anythink/basead/e/i;-><init>()V

    invoke-interface {v0, v1}, Lcom/anythink/basead/e/a;->onAdShow(Lcom/anythink/basead/e/i;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/anythink/basead/d/h$3;->a:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->b:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/anythink/basead/d/h$3;->a:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->b:Lcom/anythink/basead/e/a;

    invoke-interface {v0}, Lcom/anythink/basead/e/a;->onAdClosed()V

    :cond_0
    return-void
.end method
