.class final Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$5;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 239
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 241
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$5;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->h:I

    if-eq v0, p1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$5;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iput p1, v0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->h:I

    .line 243
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$5;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->d:Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->setProgress(I)V

    :cond_0
    return-void
.end method
