.class public final Lcom/anythink/basead/d/a;
.super Lcom/anythink/basead/d/b;


# instance fields
.field a:Lcom/anythink/basead/ui/BaseBannerATView;

.field private final k:Ljava/lang/String;

.field private l:Lcom/anythink/expressad/out/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/d/b;-><init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/d/a;->k:Ljava/lang/String;

    .line 26
    new-instance p1, Lcom/anythink/basead/d/a$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/d/a$1;-><init>(Lcom/anythink/basead/d/a;)V

    iput-object p1, p0, Lcom/anythink/basead/d/a;->l:Lcom/anythink/expressad/out/h;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/anythink/basead/d/a;->f:Lcom/anythink/core/common/a/h;

    instance-of v0, v0, Lcom/anythink/expressad/out/TemplateBannerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/d/a;->f:Lcom/anythink/core/common/a/h;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/anythink/basead/d/a;->f:Lcom/anythink/core/common/a/h;

    check-cast v0, Lcom/anythink/expressad/out/TemplateBannerView;

    iget-object v1, p0, Lcom/anythink/basead/d/a;->l:Lcom/anythink/expressad/out/h;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/out/TemplateBannerView;->setBannerAdListener(Lcom/anythink/expressad/out/h;)V

    .line 96
    iget-object v0, p0, Lcom/anythink/basead/d/a;->f:Lcom/anythink/core/common/a/h;

    check-cast v0, Lcom/anythink/expressad/out/TemplateBannerView;

    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/a;->a:Lcom/anythink/basead/ui/BaseBannerATView;

    if-nez v0, :cond_2

    .line 99
    invoke-super {p0}, Lcom/anythink/basead/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/anythink/basead/d/a;->e:Lcom/anythink/core/common/f/ai;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Lcom/anythink/basead/ui/MraidBannerATView;

    iget-object v1, p0, Lcom/anythink/basead/d/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/d/a;->c:Lcom/anythink/core/common/f/m;

    iget-object v3, p0, Lcom/anythink/basead/d/a;->e:Lcom/anythink/core/common/f/ai;

    iget-object v4, p0, Lcom/anythink/basead/d/a;->h:Lcom/anythink/basead/e/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/basead/ui/MraidBannerATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V

    iput-object v0, p0, Lcom/anythink/basead/d/a;->a:Lcom/anythink/basead/ui/BaseBannerATView;

    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Lcom/anythink/basead/ui/SdkBannerATView;

    iget-object v1, p0, Lcom/anythink/basead/d/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/d/a;->c:Lcom/anythink/core/common/f/m;

    iget-object v3, p0, Lcom/anythink/basead/d/a;->e:Lcom/anythink/core/common/f/ai;

    iget-object v4, p0, Lcom/anythink/basead/d/a;->h:Lcom/anythink/basead/e/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/basead/ui/SdkBannerATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V

    iput-object v0, p0, Lcom/anythink/basead/d/a;->a:Lcom/anythink/basead/ui/BaseBannerATView;

    .line 107
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/d/a;->a:Lcom/anythink/basead/ui/BaseBannerATView;

    return-object v0
.end method

.method public final b()V
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/anythink/basead/d/b;->b()V

    .line 116
    iget-object v0, p0, Lcom/anythink/basead/d/a;->f:Lcom/anythink/core/common/a/h;

    instance-of v0, v0, Lcom/anythink/expressad/out/TemplateBannerView;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/anythink/basead/d/a;->f:Lcom/anythink/core/common/a/h;

    check-cast v0, Lcom/anythink/expressad/out/TemplateBannerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/out/TemplateBannerView;->release()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/a;->a:Lcom/anythink/basead/ui/BaseBannerATView;

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseBannerATView;->destroy()V

    :cond_1
    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/anythink/basead/d/a;->f:Lcom/anythink/core/common/a/h;

    .line 125
    iput-object v0, p0, Lcom/anythink/basead/d/a;->h:Lcom/anythink/basead/e/a;

    return-void
.end method
