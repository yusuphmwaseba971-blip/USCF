.class public Lcom/anythink/basead/ui/ShakeBorderThumbView;
.super Lcom/anythink/basead/ui/BaseShakeView;


# instance fields
.field k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/BaseShakeView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/anythink/basead/ui/BaseShakeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/ui/BaseShakeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/basead/ui/BaseShakeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected final a(I)Landroid/animation/ValueAnimator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method final a()V
    .locals 4

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ShakeBorderThumbView;->setOrientation(I)V

    const/16 v0, 0x11

    .line 39
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ShakeBorderThumbView;->setGravity(I)V

    .line 40
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_bg_shake_border_thumb"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ShakeBorderThumbView;->setBackgroundResource(I)V

    .line 42
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ShakeBorderThumbView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ShakeBorderThumbView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_shake_border_thumb"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ShakeBorderThumbView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    .line 46
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ShakeBorderThumbView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    .line 47
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ShakeBorderThumbView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    .line 48
    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/anythink/basead/ui/ShakeBorderThumbView;->setPadding(IIII)V

    .line 50
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_splash_shake_border_img"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 52
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ShakeBorderThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anythink/basead/ui/ShakeBorderThumbView;->a:Landroid/widget/ImageView;

    .line 54
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_splash_shake_hint_text"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ShakeBorderThumbView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/ShakeBorderThumbView;->k:Landroid/widget/TextView;

    return-void
.end method

.method public setShakeSetting(Lcom/anythink/core/common/f/n;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/anythink/basead/ui/BaseShakeView;->setShakeSetting(Lcom/anythink/core/common/f/n;)V

    .line 62
    iget-object p1, p0, Lcom/anythink/basead/ui/ShakeBorderThumbView;->h:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/ShakeBorderThumbView;->k:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/anythink/basead/ui/ShakeBorderThumbView;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
