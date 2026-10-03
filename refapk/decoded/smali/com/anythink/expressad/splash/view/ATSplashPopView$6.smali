.class final Lcom/anythink/expressad/splash/view/ATSplashPopView$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 585
    iput-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashPopView$6;->a:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 588
    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashPopView$6;->a:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    invoke-static {p1}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->d(Lcom/anythink/expressad/splash/view/ATSplashPopView;)I

    move-result p1

    if-lez p1, :cond_0

    return-void

    .line 591
    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashPopView$6;->a:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    invoke-static {p1}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->i(Lcom/anythink/expressad/splash/view/ATSplashPopView;)Lcom/anythink/expressad/splash/d/d;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 592
    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashPopView$6;->a:Lcom/anythink/expressad/splash/view/ATSplashPopView;

    invoke-static {p1}, Lcom/anythink/expressad/splash/view/ATSplashPopView;->i(Lcom/anythink/expressad/splash/view/ATSplashPopView;)Lcom/anythink/expressad/splash/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/splash/d/d;->b()V

    :cond_1
    return-void
.end method
