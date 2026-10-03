.class final Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView;->a(Lcom/anythink/basead/ui/WrapRoundImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/WrapRoundImageView;

.field final synthetic b:Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView;Lcom/anythink/basead/ui/WrapRoundImageView;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;->b:Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView;

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;->a:Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 102
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;->b:Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView;

    const-string p2, "40003"

    const-string v0, "Animation render fail"

    invoke-static {p2, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView;->a(Lcom/anythink/basead/c/e;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;->b:Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView;

    iget-object v0, v0, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;->a:Lcom/anythink/basead/ui/WrapRoundImageView;

    if-eqz p1, :cond_0

    .line 73
    new-instance v0, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1$1;

    invoke-direct {v0, p0, p2}, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1$1;-><init>(Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/WrapRoundImageView;->post(Ljava/lang/Runnable;)Z

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;->b:Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView;

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView;->f:Lcom/anythink/core/common/res/image/RecycleImageView;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 84
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;->b:Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1$2;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1$2;-><init>(Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;)V

    invoke-static {p1, p2, v0}, Lcom/anythink/core/common/o/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/anythink/core/common/o/c$a;)V

    :cond_1
    return-void
.end method
