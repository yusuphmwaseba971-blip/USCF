.class final Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;II)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$4;->c:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iput p2, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$4;->a:I

    iput p3, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 331
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$4;->c:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    const-string p2, "40003"

    const-string v0, "Animation render fail"

    invoke-static {p2, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->a(Lcom/anythink/basead/c/e;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$4;->c:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object v0, v0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 307
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$4;->c:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->g:Lcom/anythink/basead/ui/WrapRoundImageView;

    iget v0, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$4;->a:I

    iget v1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$4;->b:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/anythink/basead/ui/WrapRoundImageView;->setBitmapAndResize(Landroid/graphics/Bitmap;II)[I

    .line 308
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$4;->c:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$4$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$4$1;-><init>(Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$4;)V

    invoke-static {p1, p2, v0}, Lcom/anythink/core/common/o/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/anythink/core/common/o/c$a;)V

    .line 320
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const p2, 0x3e99999a    # 0.3f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 p2, 0x1

    .line 321
    invoke-virtual {p1, p2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const-wide/16 v0, 0x64

    .line 322
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 324
    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$4;->c:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object p2, p2, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->g:Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-virtual {p2, p1}, Lcom/anythink/basead/ui/WrapRoundImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 325
    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$4;->c:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object p2, p2, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->f:Lcom/anythink/core/common/res/image/RecycleImageView;

    invoke-virtual {p2, p1}, Lcom/anythink/core/common/res/image/RecycleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
