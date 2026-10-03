.class public Lcom/anythink/basead/ui/GuideToClickView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/GuideToClickView$a;
    }
.end annotation


# instance fields
.field a:Lcom/anythink/basead/ui/WaveAnimImageView;

.field b:Lcom/anythink/basead/ui/WaveAnimImageView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field j:F

.field final k:I

.field final l:I

.field final m:F

.field n:Landroid/animation/ValueAnimator;

.field o:Landroid/animation/ValueAnimator;

.field p:Landroid/view/animation/ScaleAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x3e8

    .line 37
    iput v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->k:I

    const/16 v0, 0xc8

    .line 38
    iput v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->l:I

    const v0, 0x3f36db6e

    .line 39
    iput v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->m:F

    .line 48
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/GuideToClickView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x3e8

    .line 37
    iput p2, p0, Lcom/anythink/basead/ui/GuideToClickView;->k:I

    const/16 p2, 0xc8

    .line 38
    iput p2, p0, Lcom/anythink/basead/ui/GuideToClickView;->l:I

    const p2, 0x3f36db6e

    .line 39
    iput p2, p0, Lcom/anythink/basead/ui/GuideToClickView;->m:F

    .line 53
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/GuideToClickView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x3e8

    .line 37
    iput p2, p0, Lcom/anythink/basead/ui/GuideToClickView;->k:I

    const/16 p2, 0xc8

    .line 38
    iput p2, p0, Lcom/anythink/basead/ui/GuideToClickView;->l:I

    const p2, 0x3f36db6e

    .line 39
    iput p2, p0, Lcom/anythink/basead/ui/GuideToClickView;->m:F

    .line 58
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/GuideToClickView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->n:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/anythink/basead/ui/GuideToClickView;->a:Lcom/anythink/basead/ui/WaveAnimImageView;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/anythink/basead/ui/GuideToClickView;->startAnim(Landroid/animation/ValueAnimator;Lcom/anythink/basead/ui/WaveAnimImageView;J)V

    .line 115
    iget-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->o:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/anythink/basead/ui/GuideToClickView;->b:Lcom/anythink/basead/ui/WaveAnimImageView;

    const-wide/16 v2, 0x320

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/anythink/basead/ui/GuideToClickView;->startAnim(Landroid/animation/ValueAnimator;Lcom/anythink/basead/ui/WaveAnimImageView;J)V

    .line 117
    iget-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/anythink/basead/ui/GuideToClickView;->p:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "myoffer_guide_to_click"

    const-string v2, "layout"

    .line 63
    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string v0, "#66000000"

    .line 65
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/GuideToClickView;->setBackgroundColor(I)V

    const v0, 0x3f4ccccd    # 0.8f

    .line 67
    iput v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->e:F

    const v0, 0x3d4ccccd    # 0.05f

    .line 68
    iput v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->f:F

    const/high16 v0, 0x40800000    # 4.0f

    .line 70
    invoke-static {p1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->g:F

    const/high16 v0, 0x41900000    # 18.0f

    .line 71
    invoke-static {p1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->h:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 73
    invoke-static {p1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->i:F

    const/high16 v0, 0x42200000    # 40.0f

    .line 74
    invoke-static {p1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->j:F

    const-string v0, "myoffer_wave_anim_image"

    const-string v1, "id"

    .line 77
    invoke-static {p1, v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/GuideToClickView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/WaveAnimImageView;

    iput-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->a:Lcom/anythink/basead/ui/WaveAnimImageView;

    const-string v0, "myoffer_wave_anim_image2"

    .line 79
    invoke-static {p1, v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 78
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/GuideToClickView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/WaveAnimImageView;

    iput-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->b:Lcom/anythink/basead/ui/WaveAnimImageView;

    const/4 v0, 0x2

    new-array v2, v0, [F

    .line 81
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/basead/ui/GuideToClickView;->n:Landroid/animation/ValueAnimator;

    new-array v2, v0, [F

    .line 82
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/basead/ui/GuideToClickView;->o:Landroid/animation/ValueAnimator;

    const-string v2, "myoffer_guide_to_click_finger"

    .line 85
    invoke-static {p1, v2, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 84
    invoke-virtual {p0, v2}, Lcom/anythink/basead/ui/GuideToClickView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/anythink/basead/ui/GuideToClickView;->c:Landroid/widget/ImageView;

    .line 86
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f8ccccd    # 1.1f

    invoke-direct {v2, v3, v4, v3, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/anythink/basead/ui/GuideToClickView;->p:Landroid/view/animation/ScaleAnimation;

    .line 87
    invoke-virtual {v2, v0}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 88
    iget-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->p:Landroid/view/animation/ScaleAnimation;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 89
    iget-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->p:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-string v0, "myoffer_guide_to_click_hint"

    .line 91
    invoke-static {p1, v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/GuideToClickView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/anythink/basead/ui/GuideToClickView;->d:Landroid/widget/TextView;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private b()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->n:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->o:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->p:Landroid/view/animation/ScaleAnimation;

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->cancel()V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .line 103
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 1114
    iget-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->n:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/anythink/basead/ui/GuideToClickView;->a:Lcom/anythink/basead/ui/WaveAnimImageView;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/anythink/basead/ui/GuideToClickView;->startAnim(Landroid/animation/ValueAnimator;Lcom/anythink/basead/ui/WaveAnimImageView;J)V

    .line 1115
    iget-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->o:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/anythink/basead/ui/GuideToClickView;->b:Lcom/anythink/basead/ui/WaveAnimImageView;

    const-wide/16 v2, 0x320

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/anythink/basead/ui/GuideToClickView;->startAnim(Landroid/animation/ValueAnimator;Lcom/anythink/basead/ui/WaveAnimImageView;J)V

    .line 1117
    iget-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/anythink/basead/ui/GuideToClickView;->p:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 109
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 1121
    iget-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->n:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1122
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->o:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1125
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1127
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->p:Landroid/view/animation/ScaleAnimation;

    if-eqz v0, :cond_2

    .line 1128
    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->cancel()V

    :cond_2
    return-void
.end method

.method public setFingerImageResource(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setFingerViewMode(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 184
    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/GuideToClickView;->setBackgroundColor(I)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/GuideToClickView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    .line 186
    iget-object v3, v0, Lcom/anythink/basead/ui/GuideToClickView;->a:Lcom/anythink/basead/ui/WaveAnimImageView;

    invoke-virtual {v3}, Lcom/anythink/basead/ui/WaveAnimImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 187
    iget-object v4, v0, Lcom/anythink/basead/ui/GuideToClickView;->b:Lcom/anythink/basead/ui/WaveAnimImageView;

    invoke-virtual {v4}, Lcom/anythink/basead/ui/WaveAnimImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 188
    iget-object v5, v0, Lcom/anythink/basead/ui/GuideToClickView;->c:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 189
    iget-object v6, v0, Lcom/anythink/basead/ui/GuideToClickView;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide v7, 0x3ff199999999999aL    # 1.1

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const/16 v13, 0xe

    const/16 v14, 0xd

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const/16 v15, 0x1f9

    const/high16 v11, 0x40c00000    # 6.0f

    if-eq v1, v15, :cond_1

    const/16 v15, 0x1f8

    if-ne v1, v15, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/GuideToClickView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v15, 0x42f00000    # 120.0f

    invoke-static {v1, v15}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/GuideToClickView;->getContext()Landroid/content/Context;

    move-result-object v15

    const/high16 v12, 0x41000000    # 8.0f

    invoke-static {v15, v12}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v12

    int-to-float v12, v12

    iput v12, v0, Lcom/anythink/basead/ui/GuideToClickView;->h:F

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/GuideToClickView;->getContext()Landroid/content/Context;

    move-result-object v12

    const/high16 v15, 0x41c00000    # 24.0f

    invoke-static {v12, v15}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v12

    int-to-float v12, v12

    iput v12, v0, Lcom/anythink/basead/ui/GuideToClickView;->j:F

    goto :goto_1

    .line 224
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/GuideToClickView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v12, 0x42480000    # 50.0f

    invoke-static {v1, v12}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/GuideToClickView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v12

    int-to-float v12, v12

    iput v12, v0, Lcom/anythink/basead/ui/GuideToClickView;->h:F

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/GuideToClickView;->getContext()Landroid/content/Context;

    move-result-object v12

    const/high16 v15, 0x41900000    # 18.0f

    invoke-static {v12, v15}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v12

    int-to-float v12, v12

    iput v12, v0, Lcom/anythink/basead/ui/GuideToClickView;->j:F

    .line 232
    :goto_1
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 233
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v12, 0xf

    .line 234
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 235
    invoke-virtual {v3, v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 236
    iget-object v15, v0, Lcom/anythink/basead/ui/GuideToClickView;->a:Lcom/anythink/basead/ui/WaveAnimImageView;

    invoke-virtual {v15, v3}, Lcom/anythink/basead/ui/WaveAnimImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 239
    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 240
    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 241
    invoke-virtual {v4, v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 242
    iget-object v3, v0, Lcom/anythink/basead/ui/GuideToClickView;->b:Lcom/anythink/basead/ui/WaveAnimImageView;

    invoke-virtual {v3, v4}, Lcom/anythink/basead/ui/WaveAnimImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    div-int/lit8 v3, v1, 0x2

    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-double v14, v1

    div-double/2addr v14, v9

    mul-double v14, v14, v7

    double-to-int v1, v14

    .line 245
    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 246
    invoke-virtual {v5, v3, v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 247
    iget-object v1, v0, Lcom/anythink/basead/ui/GuideToClickView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    invoke-virtual {v6, v13, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x3

    .line 250
    invoke-virtual {v6, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 251
    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 252
    iget-object v1, v0, Lcom/anythink/basead/ui/GuideToClickView;->a:Lcom/anythink/basead/ui/WaveAnimImageView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/WaveAnimImageView;->getId()I

    move-result v1

    const/4 v12, 0x1

    invoke-virtual {v6, v12, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/GuideToClickView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/GuideToClickView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 253
    invoke-virtual {v6, v1, v2, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 255
    iget-object v1, v0, Lcom/anythink/basead/ui/GuideToClickView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object v1, v0, Lcom/anythink/basead/ui/GuideToClickView;->d:Landroid/widget/TextView;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v1, v12, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :pswitch_1
    const/high16 v6, 0x41400000    # 12.0f

    const/4 v12, 0x1

    const/16 v11, 0x1f6

    if-ne v1, v11, :cond_2

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/GuideToClickView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v11, 0x42c80000    # 100.0f

    invoke-static {v1, v11}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    .line 197
    iget-object v11, v0, Lcom/anythink/basead/ui/GuideToClickView;->d:Landroid/widget/TextView;

    const/high16 v15, 0x41600000    # 14.0f

    invoke-virtual {v11, v12, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/GuideToClickView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v6}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Lcom/anythink/basead/ui/GuideToClickView;->h:F

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/GuideToClickView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v11, 0x41f00000    # 30.0f

    invoke-static {v6, v11}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Lcom/anythink/basead/ui/GuideToClickView;->j:F

    goto :goto_2

    .line 201
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/GuideToClickView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v6, 0x43200000    # 160.0f

    invoke-static {v1, v6}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    .line 202
    iget-object v6, v0, Lcom/anythink/basead/ui/GuideToClickView;->d:Landroid/widget/TextView;

    const/high16 v11, 0x41800000    # 16.0f

    const/4 v12, 0x1

    invoke-virtual {v6, v12, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 204
    :goto_2
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 205
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 206
    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 207
    invoke-virtual {v3, v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 209
    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 210
    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 211
    invoke-virtual {v4, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 212
    invoke-virtual {v4, v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 214
    div-int/lit8 v3, v1, 0x2

    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-double v11, v1

    div-double/2addr v11, v9

    mul-double v11, v11, v7

    double-to-int v1, v11

    .line 215
    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 216
    invoke-virtual {v5, v3, v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-void

    .line 260
    :pswitch_2
    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 261
    invoke-virtual {v3, v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 262
    iget-object v1, v0, Lcom/anythink/basead/ui/GuideToClickView;->a:Lcom/anythink/basead/ui/WaveAnimImageView;

    invoke-virtual {v1, v3}, Lcom/anythink/basead/ui/WaveAnimImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    invoke-virtual {v4, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 265
    invoke-virtual {v4, v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 266
    iget-object v1, v0, Lcom/anythink/basead/ui/GuideToClickView;->b:Lcom/anythink/basead/ui/WaveAnimImageView;

    invoke-virtual {v1, v4}, Lcom/anythink/basead/ui/WaveAnimImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public startAnim(Landroid/animation/ValueAnimator;Lcom/anythink/basead/ui/WaveAnimImageView;J)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 135
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, -0x1

    .line 136
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const-wide/16 v0, 0x578

    .line 137
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 138
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 139
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 140
    new-instance v0, Lcom/anythink/basead/ui/GuideToClickView$1;

    invoke-direct {v0, p0, p2}, Lcom/anythink/basead/ui/GuideToClickView$1;-><init>(Lcom/anythink/basead/ui/GuideToClickView;Lcom/anythink/basead/ui/WaveAnimImageView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 174
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 175
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
