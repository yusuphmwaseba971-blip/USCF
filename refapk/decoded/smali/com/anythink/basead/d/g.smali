.class public final Lcom/anythink/basead/d/g;
.super Lcom/anythink/basead/d/b;


# instance fields
.field a:Lcom/anythink/basead/ui/BaseSplashATView;

.field k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/d/b;-><init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/anythink/basead/d/g;->k:Z

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 2

    .line 47
    invoke-super {p0}, Lcom/anythink/basead/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Lcom/anythink/core/common/o/w;->a(Z)V

    .line 49
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/d/g$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/d/g$1;-><init>(Lcom/anythink/basead/d/g;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/anythink/basead/d/g;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseSplashATView;->destroy()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/anythink/basead/d/g;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/g;->f:Lcom/anythink/core/common/a/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/d/g;->f:Lcom/anythink/core/common/a/h;

    instance-of v0, v0, Lcom/anythink/expressad/splash/d/c;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/anythink/basead/d/g;->f:Lcom/anythink/core/common/a/h;

    check-cast v0, Lcom/anythink/expressad/splash/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/d/c;->g()V

    :cond_1
    return-void
.end method

.method public final g()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/anythink/basead/d/g;->f:Lcom/anythink/core/common/a/h;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
