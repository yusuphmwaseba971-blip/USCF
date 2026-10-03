.class public Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;
.super Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;


# instance fields
.field c:Landroid/animation/ValueAnimator;

.field d:Landroid/widget/ImageView;

.field e:Lcom/anythink/basead/ui/guidetoclickv2/d;

.field private f:I

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->f:I

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;F)F
    .locals 0

    .line 24
    iput p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->g:F

    return p1
.end method

.method static synthetic a(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->f:I

    return p0
.end method

.method static synthetic b(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;F)F
    .locals 0

    .line 24
    iput p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->h:F

    return p1
.end method

.method static synthetic b(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)I
    .locals 2

    .line 24
    iget v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->f:I

    return v0
.end method

.method static synthetic c(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)F
    .locals 0

    .line 24
    iget p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->g:F

    return p0
.end method

.method static synthetic c(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;F)F
    .locals 1

    .line 24
    iget v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->i:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->i:F

    return v0
.end method

.method private c()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float v0, v0

    aput v0, v1, v2

    const/4 v0, 0x2

    aput v3, v1, v0

    .line 56
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 58
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 59
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$1;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 84
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$2;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)F
    .locals 0

    .line 24
    iget p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->h:F

    return p0
.end method

.method static synthetic d(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;F)F
    .locals 1

    .line 24
    iget v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->j:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->j:F

    return v0
.end method

.method private d()Lcom/anythink/basead/ui/guidetoclickv2/d;
    .locals 2

    .line 175
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 176
    :goto_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 177
    instance-of v1, v0, Lcom/anythink/basead/ui/guidetoclickv2/d;

    if-eqz v1, :cond_0

    .line 178
    check-cast v0, Lcom/anythink/basead/ui/guidetoclickv2/d;

    goto :goto_1

    .line 181
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method static synthetic e(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)F
    .locals 0

    .line 24
    iget p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->i:F

    return p0
.end method

.method static synthetic f(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)F
    .locals 0

    .line 24
    iget p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->j:F

    return p0
.end method

.method static synthetic g(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->k:I

    return p0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .line 146
    invoke-super {p0}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->a()V

    .line 147
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method final a(II)V
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 43
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "myoffer_g2c_v2_full_orientation"

    const-string v1, "layout"

    invoke-static {p2, v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 42
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->k:I

    .line 47
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "myoffer_g2c_fullori_finger"

    const-string v0, "id"

    invoke-static {p1, p2, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->d:Landroid/widget/ImageView;

    .line 1052
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_0

    .line 1055
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p1, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    const/4 p2, 0x3

    new-array p2, p2, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p2, v0

    const/4 v0, 0x1

    int-to-float p1, p1

    aput p1, p2, v0

    const/4 p1, 0x2

    aput v1, p2, p1

    .line 1056
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    .line 1057
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1058
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1059
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$1;

    invoke-direct {p2, p0}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$1;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1084
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$2;

    invoke-direct {p2, p0}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$2;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 1

    .line 154
    invoke-super {p0}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->b()V

    .line 155
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 96
    invoke-super {p0}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->onAttachedToWindow()V

    .line 1175
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1176
    :goto_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1177
    instance-of v1, v0, Lcom/anythink/basead/ui/guidetoclickv2/d;

    if-eqz v1, :cond_0

    .line 1178
    check-cast v0, Lcom/anythink/basead/ui/guidetoclickv2/d;

    goto :goto_1

    .line 1181
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 97
    :goto_1
    iput-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->e:Lcom/anythink/basead/ui/guidetoclickv2/d;

    if-eqz v0, :cond_2

    .line 99
    new-instance v1, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$3;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)V

    invoke-interface {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/d;->setCallback(Lcom/anythink/basead/ui/guidetoclickv2/c;)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 138
    invoke-super {p0}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->onDetachedFromWindow()V

    .line 139
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->e:Lcom/anythink/basead/ui/guidetoclickv2/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 140
    invoke-interface {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/d;->setCallback(Lcom/anythink/basead/ui/guidetoclickv2/c;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 162
    invoke-super {p0}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->release()V

    .line 163
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
