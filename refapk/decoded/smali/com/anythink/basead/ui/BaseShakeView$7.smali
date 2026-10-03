.class final Lcom/anythink/basead/ui/BaseShakeView$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseShakeView;->a(I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/BaseShakeView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/BaseShakeView;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/anythink/basead/ui/BaseShakeView$7;->a:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 122
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 123
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView$7;->a:Lcom/anythink/basead/ui/BaseShakeView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseShakeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    return-void
.end method
