.class final Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$3;->a:Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 229
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$3;->a:Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->c(Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;)V

    .line 230
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$3;->a:Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->d(Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$3;->a:Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->d(Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$3;->a:Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->d(Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
