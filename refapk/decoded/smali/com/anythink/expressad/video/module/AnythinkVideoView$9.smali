.class final Lcom/anythink/expressad/video/module/AnythinkVideoView$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/expressad/widget/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/module/AnythinkVideoView;->showAlertView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/video/module/AnythinkVideoView;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 754
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->h(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z

    .line 755
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->i(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setShowingAlertViewCover(Z)V

    .line 756
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->d(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->j(Lcom/anythink/expressad/video/module/AnythinkVideoView;)I

    move-result v0

    sget v1, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->j(Lcom/anythink/expressad/video/module/AnythinkVideoView;)I

    move-result v0

    sget v1, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-ne v0, v1, :cond_2

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->k(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z

    .line 759
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v1, 0x7c

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->l(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z

    .line 763
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->gonePlayingCloseView()V

    .line 765
    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->m(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 771
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->h(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z

    .line 772
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->n(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z

    .line 773
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->i(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setShowingAlertViewCover(Z)V

    .line 776
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->d(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->j(Lcom/anythink/expressad/video/module/AnythinkVideoView;)I

    move-result v0

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-ne v0, v2, :cond_1

    .line 777
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->o(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b(Lcom/anythink/expressad/video/module/AnythinkVideoView;Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_0
    return-void

    .line 783
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->d(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->j(Lcom/anythink/expressad/video/module/AnythinkVideoView;)I

    move-result v0

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v0, v2, :cond_2

    .line 784
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->m(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    return-void

    .line 787
    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_3

    .line 788
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 0

    .line 749
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;->a()V

    return-void
.end method
