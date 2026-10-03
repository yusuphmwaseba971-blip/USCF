.class final Lcom/anythink/basead/ui/GuideToClickView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/GuideToClickView;->startAnim(Landroid/animation/ValueAnimator;Lcom/anythink/basead/ui/WaveAnimImageView;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/WaveAnimImageView;

.field final synthetic b:Lcom/anythink/basead/ui/GuideToClickView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/GuideToClickView;Lcom/anythink/basead/ui/WaveAnimImageView;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->b:Lcom/anythink/basead/ui/GuideToClickView;

    iput-object p2, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->a:Lcom/anythink/basead/ui/WaveAnimImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    .line 143
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x3f36db6e

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->a:Lcom/anythink/basead/ui/WaveAnimImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/WaveAnimImageView;->setVisibility(I)V

    return-void

    :cond_0
    div-float/2addr p1, v0

    .line 151
    iget-object v0, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->b:Lcom/anythink/basead/ui/GuideToClickView;

    iget v0, v0, Lcom/anythink/basead/ui/GuideToClickView;->i:F

    iget-object v1, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->b:Lcom/anythink/basead/ui/GuideToClickView;

    iget v1, v1, Lcom/anythink/basead/ui/GuideToClickView;->j:F

    iget-object v2, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->b:Lcom/anythink/basead/ui/GuideToClickView;

    iget v2, v2, Lcom/anythink/basead/ui/GuideToClickView;->i:F

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 152
    iget-object v1, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->b:Lcom/anythink/basead/ui/GuideToClickView;

    iget v1, v1, Lcom/anythink/basead/ui/GuideToClickView;->g:F

    iget-object v2, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->b:Lcom/anythink/basead/ui/GuideToClickView;

    iget v2, v2, Lcom/anythink/basead/ui/GuideToClickView;->h:F

    iget-object v3, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->b:Lcom/anythink/basead/ui/GuideToClickView;

    iget v3, v3, Lcom/anythink/basead/ui/GuideToClickView;->i:F

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpg-double v8, v2, v6

    if-gez v8, :cond_1

    .line 155
    iget-object v2, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->b:Lcom/anythink/basead/ui/GuideToClickView;

    iget v2, v2, Lcom/anythink/basead/ui/GuideToClickView;->e:F

    float-to-double v2, v2

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float p1, p1, v8

    float-to-double v8, p1

    div-double/2addr v8, v6

    sub-double/2addr v4, v8

    iget-object p1, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->b:Lcom/anythink/basead/ui/GuideToClickView;

    iget p1, p1, Lcom/anythink/basead/ui/GuideToClickView;->f:F

    iget-object v6, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->b:Lcom/anythink/basead/ui/GuideToClickView;

    iget v6, v6, Lcom/anythink/basead/ui/GuideToClickView;->e:F

    sub-float/2addr p1, v6

    float-to-double v6, p1

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    double-to-float p1, v2

    goto :goto_0

    .line 157
    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->b:Lcom/anythink/basead/ui/GuideToClickView;

    iget p1, p1, Lcom/anythink/basead/ui/GuideToClickView;->e:F

    float-to-double v8, p1

    sub-double/2addr v2, v6

    mul-double v2, v2, v4

    const-wide v4, 0x3fe999999999999aL    # 0.8

    div-double/2addr v2, v4

    iget-object p1, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->b:Lcom/anythink/basead/ui/GuideToClickView;

    iget p1, p1, Lcom/anythink/basead/ui/GuideToClickView;->f:F

    iget-object v4, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->b:Lcom/anythink/basead/ui/GuideToClickView;

    iget v4, v4, Lcom/anythink/basead/ui/GuideToClickView;->e:F

    sub-float/2addr p1, v4

    float-to-double v4, p1

    mul-double v2, v2, v4

    add-double/2addr v8, v2

    double-to-float p1, v8

    .line 160
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->b:Lcom/anythink/basead/ui/GuideToClickView;

    invoke-virtual {v2}, Lcom/anythink/basead/ui/GuideToClickView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 161
    iget-object v2, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->a:Lcom/anythink/basead/ui/WaveAnimImageView;

    new-instance v3, Lcom/anythink/basead/ui/WaveAnimImageView$a;

    invoke-direct {v3, v0, v1, p1}, Lcom/anythink/basead/ui/WaveAnimImageView$a;-><init>(FFF)V

    invoke-virtual {v2, v3}, Lcom/anythink/basead/ui/WaveAnimImageView;->setWaveAnimParams(Lcom/anythink/basead/ui/WaveAnimImageView$a;)V

    .line 164
    iget-object p1, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->a:Lcom/anythink/basead/ui/WaveAnimImageView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/WaveAnimImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 165
    iget-object p1, p0, Lcom/anythink/basead/ui/GuideToClickView$1;->a:Lcom/anythink/basead/ui/WaveAnimImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/WaveAnimImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method
