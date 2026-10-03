.class final Lcom/anythink/expressad/splash/view/ATSplashNativeView$9;
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

    .line 418
    iput-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$9;->a:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 426
    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$9;->a:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-static {p1}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->f(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aG()Lcom/anythink/expressad/foundation/d/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 428
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/anythink/core/common/o/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
