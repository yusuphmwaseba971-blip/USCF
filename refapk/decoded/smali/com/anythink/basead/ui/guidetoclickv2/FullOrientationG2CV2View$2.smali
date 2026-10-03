.class final Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$2;->a:Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 88
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View$2;->a:Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;

    invoke-static {p1}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;->b(Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;)I

    return-void
.end method
