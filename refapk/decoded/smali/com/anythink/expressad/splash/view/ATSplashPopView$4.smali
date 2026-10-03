.class final Lcom/anythink/expressad/splash/view/ATSplashPopView$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/splash/view/ATSplashPopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/splash/view/ATSplashPopView;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/splash/view/ATSplashPopView;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashPopView$4;->a:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 558
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashPopView$4;->a:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    invoke-static {v0}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->c(Lcom/anythink/expressad/splash/view/ATSplashPopView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 559
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashPopView$4;->a:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    invoke-static {v0}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->d(Lcom/anythink/expressad/splash/view/ATSplashPopView;)I

    move-result v0

    if-nez v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashPopView$4;->a:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    invoke-static {v0}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->e(Lcom/anythink/expressad/splash/view/ATSplashPopView;)I

    .line 561
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashPopView$4;->a:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    invoke-static {v0}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->f(Lcom/anythink/expressad/splash/view/ATSplashPopView;)V

    .line 562
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashPopView$4;->a:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    invoke-static {v0}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->h(Lcom/anythink/expressad/splash/view/ATSplashPopView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashPopView$4;->a:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    invoke-static {v1}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->g(Lcom/anythink/expressad/splash/view/ATSplashPopView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 563
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashPopView$4;->a:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    invoke-static {v0}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->i(Lcom/anythink/expressad/splash/view/ATSplashPopView;)Lcom/anythink/expressad/splash/d/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashPopView$4;->a:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    invoke-static {v0}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->i(Lcom/anythink/expressad/splash/view/ATSplashPopView;)Lcom/anythink/expressad/splash/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/d/d;->b()V

    :cond_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashPopView$4;->a:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    invoke-static {v0}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->j(Lcom/anythink/expressad/splash/view/ATSplashPopView;)I

    .line 569
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashPopView$4;->a:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    invoke-static {v0}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->c(Lcom/anythink/expressad/splash/view/ATSplashPopView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashPopView$4;->a:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    invoke-static {v1}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->d(Lcom/anythink/expressad/splash/view/ATSplashPopView;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashPopView$4;->a:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    invoke-static {v0}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->h(Lcom/anythink/expressad/splash/view/ATSplashPopView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashPopView$4;->a:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    invoke-static {v1}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->g(Lcom/anythink/expressad/splash/view/ATSplashPopView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
