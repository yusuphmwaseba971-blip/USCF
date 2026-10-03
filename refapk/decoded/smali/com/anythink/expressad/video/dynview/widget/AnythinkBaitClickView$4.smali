.class final Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/animation/AnimationSet;

.field final synthetic b:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;Landroid/view/animation/AnimationSet;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$4;->b:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    iput-object p2, p0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$4;->a:Landroid/view/animation/AnimationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 375
    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$4;->b:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    new-instance v0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$4$2;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$4$2;-><init>(Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$4;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    .line 363
    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$4;->b:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    new-instance v0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$4$1;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$4$1;-><init>(Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$4;)V

    const-wide/16 v1, 0x226

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
