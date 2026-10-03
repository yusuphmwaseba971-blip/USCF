.class public Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/anythink/basead/ui/animplayerview/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "VpMainImgView"

.field private static final b:I = 0x64

.field private static final c:I = 0x5dc

.field private static final d:I = 0x1f4

.field private static final e:I = 0x8


# instance fields
.field private f:Lcom/anythink/basead/ui/WrapRoundImageView;

.field private g:Lcom/anythink/basead/ui/WrapRoundImageView;

.field private h:Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

.field private i:Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

.field private j:I

.field private k:F

.field private l:F

.field private final m:Landroid/os/Handler;

.field private n:Landroid/animation/ObjectAnimator;

.field private o:Landroid/animation/ObjectAnimator;

.field private p:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance p1, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$1;-><init>(Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->m:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/animation/ObjectAnimator;Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 1

    if-nez p1, :cond_0

    .line 260
    new-instance p1, Landroid/animation/ObjectAnimator;

    invoke-direct {p1}, Landroid/animation/ObjectAnimator;-><init>()V

    const-string v0, "translationX"

    .line 261
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 262
    new-instance v0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$a;

    invoke-direct {v0, p0, p2}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$a;-><init>(Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 265
    :cond_0
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    aput p3, p2, v0

    const/4 p3, 0x1

    aput p4, p2, p3

    .line 266
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    return-object p1
.end method

.method private a()V
    .locals 5

    .line 140
    new-instance v0, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->h:Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

    .line 141
    new-instance v0, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->i:Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

    .line 143
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    .line 145
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 146
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 148
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 149
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v0, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 151
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->h:Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->i:Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    .line 155
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xe

    .line 156
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 158
    invoke-virtual {p0, v1, v0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    invoke-direct {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;)V
    .locals 2

    .line 1194
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->f:Lcom/anythink/basead/ui/WrapRoundImageView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->g:Lcom/anythink/basead/ui/WrapRoundImageView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1198
    :cond_0
    iget v1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->j:I

    if-nez v1, :cond_1

    .line 1199
    new-instance v1, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$2;-><init>(Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/WrapRoundImageView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1206
    :cond_1
    invoke-direct {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;)[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iget v2, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->k:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->l:F

    :goto_0
    const/4 v1, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iget v2, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->k:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_1

    iget p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->l:F

    neg-float v2, p1

    :cond_1
    aput v2, v0, v1

    return-object v0
.end method

.method private b()V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->h:Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->i:Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->f:Lcom/anythink/basead/ui/WrapRoundImageView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v0}, Lcom/anythink/basead/ui/WrapRoundImageView;->getTranslationX()F

    move-result v0

    iget v1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->k:F

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->h:Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;->setSelectStatus(Z)V

    .line 169
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->i:Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

    invoke-virtual {v0, v3}, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;->setSelectStatus(Z)V

    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->h:Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

    invoke-virtual {v0, v3}, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;->setSelectStatus(Z)V

    .line 172
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->i:Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;->setSelectStatus(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->d()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->f:Lcom/anythink/basead/ui/WrapRoundImageView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->g:Lcom/anythink/basead/ui/WrapRoundImageView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iget v1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->j:I

    if-nez v1, :cond_1

    .line 199
    new-instance v1, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$2;-><init>(Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/WrapRoundImageView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 206
    :cond_1
    invoke-direct {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->b()V

    return-void
.end method

.method static synthetic d(Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->m:Landroid/os/Handler;

    return-object p0
.end method

.method private d()V
    .locals 7

    .line 211
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->f:Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-direct {p0, v0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->a(Landroid/view/View;)[F

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->g:Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-direct {p0, v1}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->a(Landroid/view/View;)[F

    move-result-object v1

    .line 213
    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->n:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->f:Lcom/anythink/basead/ui/WrapRoundImageView;

    const/4 v4, 0x0

    aget v5, v0, v4

    const/4 v6, 0x1

    aget v0, v0, v6

    invoke-direct {p0, v2, v3, v5, v0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->a(Landroid/animation/ObjectAnimator;Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->n:Landroid/animation/ObjectAnimator;

    .line 214
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->o:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->g:Lcom/anythink/basead/ui/WrapRoundImageView;

    aget v3, v1, v4

    aget v1, v1, v6

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->a(Landroid/animation/ObjectAnimator;Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->o:Landroid/animation/ObjectAnimator;

    .line 216
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->p:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->p:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    .line 218
    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->n:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->o:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 219
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->p:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 220
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->p:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 221
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->p:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$3;-><init>(Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->p:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method static synthetic e(Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->l:F

    return p0
.end method


# virtual methods
.method public varargs addMainView(Landroid/graphics/Bitmap;[Lcom/anythink/basead/ui/WrapRoundImageView;)V
    .locals 3

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 71
    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->removeAllViews()V

    const/4 v0, 0x0

    .line 75
    aget-object v1, p2, v0

    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->f:Lcom/anythink/basead/ui/WrapRoundImageView;

    const/4 v1, 0x1

    .line 77
    aget-object p2, p2, v1

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->g:Lcom/anythink/basead/ui/WrapRoundImageView;

    .line 78
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 80
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->f:Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-virtual {v1, p2}, Lcom/anythink/basead/ui/WrapRoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->g:Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-virtual {p2, v2}, Lcom/anythink/basead/ui/WrapRoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->f:Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->addView(Landroid/view/View;)V

    .line 87
    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->g:Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->addView(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 90
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 91
    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->f:Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-virtual {v2, p1, p2, v1}, Lcom/anythink/basead/ui/WrapRoundImageView;->setBitmapAndResize(Landroid/graphics/Bitmap;II)[I

    .line 92
    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->g:Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-virtual {v2, p1, p2, v1}, Lcom/anythink/basead/ui/WrapRoundImageView;->setBitmapAndResize(Landroid/graphics/Bitmap;II)[I

    .line 94
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->f:Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/WrapRoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 95
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->j:I

    .line 96
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 98
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 100
    iget v1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->j:I

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 101
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 102
    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->f:Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/WrapRoundImageView;->getTranslationX()F

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->k:F

    .line 105
    iget p2, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->j:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->l:F

    .line 107
    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->g:Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-virtual {p2, p1}, Lcom/anythink/basead/ui/WrapRoundImageView;->setTranslationX(F)V

    .line 1140
    new-instance p1, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->h:Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

    .line 1141
    new-instance p1, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->i:Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

    .line 1143
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p1, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    .line 1145
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1146
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1147
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1148
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1149
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1151
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->h:Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

    invoke-virtual {p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1152
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->i:Lcom/anythink/basead/ui/animplayerview/viewpager/CircleIndicatorView;

    invoke-virtual {p2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1154
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 1155
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xe

    .line 1156
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1157
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1158
    invoke-virtual {p0, p2, p1}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1160
    invoke-direct {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->p:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->p:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    return-void

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->stop()V

    .line 278
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->f:Lcom/anythink/basead/ui/WrapRoundImageView;

    if-eqz v0, :cond_1

    .line 279
    iget v1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->k:F

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/WrapRoundImageView;->setTranslationX(F)V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->g:Lcom/anythink/basead/ui/WrapRoundImageView;

    if-eqz v0, :cond_2

    .line 282
    iget v1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->l:F

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/WrapRoundImageView;->setTranslationX(F)V

    :cond_2
    return-void
.end method

.method public release()V
    .locals 0

    .line 178
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->stop()V

    return-void
.end method

.method public resume()V
    .locals 5

    .line 290
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->p:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x5dc

    const/16 v3, 0x64

    if-eqz v0, :cond_1

    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_0

    .line 292
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->p:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->m:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 295
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->m:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->m:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 301
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->m:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public setBitmapResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public start()V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->p:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->resume()V

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->m:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/16 v1, 0x64

    const-wide/16 v2, 0x5dc

    .line 189
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->m:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    .line 310
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->n:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 314
    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->n:Landroid/animation/ObjectAnimator;

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->o:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 318
    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->o:Landroid/animation/ObjectAnimator;

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->p:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 321
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 322
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->p:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 323
    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->p:Landroid/animation/AnimatorSet;

    :cond_3
    return-void
.end method
