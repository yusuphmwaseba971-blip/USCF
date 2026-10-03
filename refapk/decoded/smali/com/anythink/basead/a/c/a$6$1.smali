.class final Lcom/anythink/basead/a/c/a$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/c/a$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/a/c/a$6;


# direct methods
.method constructor <init>(Lcom/anythink/basead/a/c/a$6;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/anythink/basead/a/c/a$6$1;->a:Lcom/anythink/basead/a/c/a$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 255
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 256
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    mul-long v1, v1, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-float v1, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float p1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float p1, p1, v2

    div-float/2addr v1, p1

    float-to-double v2, v0

    .line 257
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 258
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    float-to-double v0, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v2, v2, v0

    .line 259
    iget-object p1, p0, Lcom/anythink/basead/a/c/a$6$1;->a:Lcom/anythink/basead/a/c/a$6;

    iget-object p1, p1, Lcom/anythink/basead/a/c/a$6;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/anythink/basead/a/c/a$6$1;->a:Lcom/anythink/basead/a/c/a$6;

    iget-object v0, v0, Lcom/anythink/basead/a/c/a$6;->b:Lcom/anythink/basead/a/c/a;

    iget v0, v0, Lcom/anythink/basead/a/c/a;->k:I

    int-to-double v0, v0

    mul-double v0, v0, v2

    double-to-float v0, v0

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
