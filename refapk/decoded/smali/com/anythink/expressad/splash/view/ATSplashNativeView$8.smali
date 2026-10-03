.class final Lcom/anythink/expressad/splash/view/ATSplashNativeView$8;
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

    .line 406
    iput-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$8;->a:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 409
    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$8;->a:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-static {p1}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->f(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aG()Lcom/anythink/expressad/foundation/d/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 410
    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$8;->a:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-static {p1}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->f(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aG()Lcom/anythink/expressad/foundation/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/a;->c()Ljava/lang/String;

    move-result-object p1

    .line 411
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$8;->a:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/anythink/core/common/o/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
