.class public Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;
.super Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;


# instance fields
.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)I
    .locals 2

    const-string v0, "myoffer_scale_third"

    const-string v1, "layout"

    .line 45
    invoke-static {p1, v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 50
    invoke-super {p0, p1}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->initView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "iv_left_01"

    const-string v2, "id"

    .line 52
    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->f:Landroid/widget/ImageView;

    const-string v1, "iv_left_02"

    .line 53
    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->g:Landroid/widget/ImageView;

    const-string v1, "iv_left_03"

    .line 54
    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->h:Landroid/widget/ImageView;

    const-string v1, "iv_left_04"

    .line 55
    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->i:Landroid/widget/ImageView;

    const-string v1, "iv_right_01"

    .line 56
    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->j:Landroid/widget/ImageView;

    const-string v1, "iv_right_02"

    .line 57
    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->k:Landroid/widget/ImageView;

    const-string v1, "iv_right_03"

    .line 58
    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->l:Landroid/widget/ImageView;

    return-void
.end method

.method public setBitmapResources(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->f:Landroid/widget/ImageView;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 67
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->g:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 70
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->h:Landroid/widget/ImageView;

    const/4 v3, 0x3

    if-eqz v0, :cond_3

    .line 73
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 76
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    .line 79
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 82
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    :cond_6
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 85
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public start()V
    .locals 11

    .line 91
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->b:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->b:Landroid/animation/AnimatorSet;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    iget-boolean v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->d:Z

    const-string v2, "translationY"

    const-string v3, "translationX"

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->j:Landroid/widget/ImageView;

    new-array v9, v8, [F

    aput v5, v9, v7

    invoke-virtual {p0, v4}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->dip2px(F)F

    move-result v10

    aput v10, v9, v6

    invoke-static {v1, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 98
    iget-object v3, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->j:Landroid/widget/ImageView;

    new-array v9, v8, [F

    aput v5, v9, v7

    invoke-virtual {p0, v4}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->dip2px(F)F

    move-result v4

    aput v4, v9, v6

    invoke-static {v3, v2, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->h:Landroid/widget/ImageView;

    new-array v9, v8, [F

    aput v5, v9, v7

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-virtual {p0, v10}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->dip2px(F)F

    move-result v10

    neg-float v10, v10

    aput v10, v9, v6

    invoke-static {v1, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 101
    iget-object v3, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->h:Landroid/widget/ImageView;

    new-array v9, v8, [F

    aput v5, v9, v7

    invoke-virtual {p0, v4}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->dip2px(F)F

    move-result v4

    aput v4, v9, v6

    invoke-static {v3, v2, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 103
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v8, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v7

    .line 105
    iget v3, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->c:F

    aput v3, v1, v6

    const-string v3, "scaleX"

    invoke-static {p0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v3, v8, [F

    aput v2, v3, v7

    .line 106
    iget v2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->c:F

    aput v2, v3, v6

    const-string v2, "scaleY"

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 107
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->b:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 111
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->b:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 114
    iget-wide v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 115
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->b:Landroid/animation/AnimatorSet;

    iget-wide v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->e:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
