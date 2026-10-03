.class final Lcom/anythink/expressad/splash/view/ATSplashNativeView$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/splash/view/ATSplashNativeView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/splash/view/ATSplashNativeView;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$10;->a:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 454
    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$10;->a:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-static {p1}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->k(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 455
    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$10;->a:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-static {p1}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->l(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Lcom/anythink/expressad/splash/view/ATSplashView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/splash/view/ATSplashView;->getSplashJSBridgeImpl()Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$10;->a:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    .line 456
    invoke-static {p1}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->l(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Lcom/anythink/expressad/splash/view/ATSplashView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/splash/view/ATSplashView;->getSplashJSBridgeImpl()Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;->getSplashBridgeListener()Lcom/anythink/expressad/splash/d/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 457
    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$10;->a:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-static {p1}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->l(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Lcom/anythink/expressad/splash/view/ATSplashView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/splash/view/ATSplashView;->getSplashJSBridgeImpl()Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;->getSplashBridgeListener()Lcom/anythink/expressad/splash/d/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/splash/d/a;->c()V

    .line 459
    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$10;->a:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-static {p1}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->m(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$10;->a:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-static {p1}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->m(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void
.end method
