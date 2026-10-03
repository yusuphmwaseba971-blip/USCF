.class final Lcom/anythink/expressad/video/module/AnythinkVideoView$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/module/AnythinkVideoView;->c()V
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

    .line 539
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$8;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 542
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$8;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->d(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 543
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$8;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z

    .line 545
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$8;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->f(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 546
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$8;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object p1, p1, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz p1, :cond_2

    .line 547
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$8;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object p1, p1, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v0, 0x7b

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void

    .line 550
    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$8;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->g(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    return-void

    .line 553
    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$8;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->g(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    :cond_2
    return-void
.end method
