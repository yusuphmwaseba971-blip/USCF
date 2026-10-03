.class final Lcom/anythink/basead/d/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/g;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/anythink/basead/d/g;


# direct methods
.method constructor <init>(Lcom/anythink/basead/d/g;Landroid/view/ViewGroup;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iput-object p2, p0, Lcom/anythink/basead/d/g$1;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 53
    iget-object v0, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v0, v0, Lcom/anythink/basead/d/g;->f:Lcom/anythink/core/common/a/h;

    instance-of v0, v0, Lcom/anythink/expressad/splash/d/c;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v0, v0, Lcom/anythink/basead/d/g;->f:Lcom/anythink/core/common/a/h;

    check-cast v0, Lcom/anythink/expressad/splash/d/c;

    new-instance v1, Lcom/anythink/basead/d/g$1$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/d/g$1$1;-><init>(Lcom/anythink/basead/d/g$1;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/d/c;->a(Lcom/anythink/expressad/out/e;)V

    .line 102
    iget-object v0, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v0, v0, Lcom/anythink/basead/d/g;->f:Lcom/anythink/core/common/a/h;

    check-cast v0, Lcom/anythink/expressad/splash/d/c;

    iget-object v1, p0, Lcom/anythink/basead/d/g$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/d/c;->a(Landroid/view/ViewGroup;)V

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v0, v0, Lcom/anythink/basead/d/g;->e:Lcom/anythink/core/common/f/ai;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    new-instance v1, Lcom/anythink/basead/ui/MraidSplashATView;

    iget-object v2, p0, Lcom/anythink/basead/d/g$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v3, v3, Lcom/anythink/basead/d/g;->c:Lcom/anythink/core/common/f/m;

    iget-object v4, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v4, v4, Lcom/anythink/basead/d/g;->e:Lcom/anythink/core/common/f/ai;

    iget-object v5, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v5, v5, Lcom/anythink/basead/d/g;->h:Lcom/anythink/basead/e/a;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/anythink/basead/ui/MraidSplashATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V

    iput-object v1, v0, Lcom/anythink/basead/d/g;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v0, v0, Lcom/anythink/basead/d/g;->e:Lcom/anythink/core/common/f/ai;

    iget-object v1, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v1, v1, Lcom/anythink/basead/d/g;->c:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-static {v0, v1}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->isSinglePicture(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    new-instance v1, Lcom/anythink/basead/ui/SinglePictureSplashATView;

    iget-object v2, p0, Lcom/anythink/basead/d/g$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v3, v3, Lcom/anythink/basead/d/g;->c:Lcom/anythink/core/common/f/m;

    iget-object v4, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v4, v4, Lcom/anythink/basead/d/g;->e:Lcom/anythink/core/common/f/ai;

    iget-object v5, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v5, v5, Lcom/anythink/basead/d/g;->h:Lcom/anythink/basead/e/a;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/anythink/basead/ui/SinglePictureSplashATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V

    iput-object v1, v0, Lcom/anythink/basead/d/g;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    new-instance v1, Lcom/anythink/basead/ui/AsseblemSplashATView;

    iget-object v2, p0, Lcom/anythink/basead/d/g$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v3, v3, Lcom/anythink/basead/d/g;->c:Lcom/anythink/core/common/f/m;

    iget-object v4, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v4, v4, Lcom/anythink/basead/d/g;->e:Lcom/anythink/core/common/f/ai;

    iget-object v5, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v5, v5, Lcom/anythink/basead/d/g;->h:Lcom/anythink/basead/e/a;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/anythink/basead/ui/AsseblemSplashATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V

    iput-object v1, v0, Lcom/anythink/basead/d/g;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v0, v0, Lcom/anythink/basead/d/g;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    iget-object v1, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-boolean v1, v1, Lcom/anythink/basead/d/g;->k:Z

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseSplashATView;->setDontCountDown(Z)V

    .line 116
    iget-object v0, p0, Lcom/anythink/basead/d/g$1;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v1, v1, Lcom/anythink/basead/d/g;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
