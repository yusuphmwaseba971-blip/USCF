.class final Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V
    .locals 0

    .line 868
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$7;->b:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 869
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$7;->a:Z

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 873
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$7;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$7;->b:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Lcom/anythink/expressad/shake/b;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 874
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$7;->a:Z

    .line 875
    invoke-static {}, Lcom/anythink/expressad/shake/a;->a()Lcom/anythink/expressad/shake/a;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$7;->b:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Lcom/anythink/expressad/shake/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/shake/a;->a(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 882
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$7;->b:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Lcom/anythink/expressad/shake/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 883
    invoke-static {}, Lcom/anythink/expressad/shake/a;->a()Lcom/anythink/expressad/shake/a;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$7;->b:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Lcom/anythink/expressad/shake/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/shake/a;->b(Landroid/hardware/SensorEventListener;)V

    .line 885
    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$7;->b:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->a(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;Lcom/anythink/expressad/shake/b;)Lcom/anythink/expressad/shake/b;

    const/4 p1, 0x0

    .line 886
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$7;->a:Z

    return-void
.end method
