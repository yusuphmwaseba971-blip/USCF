.class final Lcom/anythink/expressad/splash/view/ATSplashNativeView$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/splash/view/ATSplashNativeView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/expressad/splash/view/ATSplashNativeView;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;Ljava/lang/String;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$5;->b:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    iput-object p2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 328
    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$5;->b:Lcom/anythink/expressad/splash/view/ATSplashNativeView;

    invoke-virtual {p1}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$5;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/anythink/core/common/o/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
