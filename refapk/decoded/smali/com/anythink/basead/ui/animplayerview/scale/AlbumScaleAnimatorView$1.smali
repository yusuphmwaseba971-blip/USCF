.class final Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView$1;->a:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView$1;->a:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;)Z

    .line 115
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView$1;->a:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->b(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;)Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->start()V

    .line 117
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView$1;->a:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->c(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;)Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->setStartDelay(J)V

    .line 118
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView$1;->a:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->c(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;)Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->start()V

    .line 120
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView$1;->a:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->d(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;)Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->setStartDelay(J)V

    .line 121
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView$1;->a:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->d(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;)Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->start()V

    .line 123
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView$1;->a:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->e(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;)Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView$1;->a:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;

    invoke-static {v3}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->d(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;)Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->getMainViewScale()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->setMainViewScale(F)V

    .line 124
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView$1;->a:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->e(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;)Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->setStartDelay(J)V

    .line 125
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView$1;->a:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->e(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;)Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->start()V

    return-void
.end method
