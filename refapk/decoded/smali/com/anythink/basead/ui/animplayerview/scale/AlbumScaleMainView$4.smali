.class final Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$4;
.super Lcom/anythink/basead/ui/animplayerview/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$4;->a:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    invoke-direct {p0}, Lcom/anythink/basead/ui/animplayerview/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 244
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$4;->a:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->c(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$4;->a:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->c(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x64

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
