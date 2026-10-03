.class public Lcom/anythink/basead/mraid/MraidWebView;
.super Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;


# static fields
.field public static TAG:Ljava/lang/String; = "MraidWebView"


# instance fields
.field a:Lcom/anythink/basead/mraid/b;

.field b:Z

.field c:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

.field d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/anythink/basead/mraid/MraidWebView;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/anythink/basead/mraid/MraidWebView;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/anythink/basead/mraid/MraidWebView;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/mraid/MraidWebView;)V
    .locals 5

    .line 2114
    invoke-virtual {p0}, Lcom/anythink/basead/mraid/MraidWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 2115
    invoke-virtual {p0}, Lcom/anythink/basead/mraid/MraidWebView;->getBaseWebViewClient()Lcom/anythink/expressad/atsignalcommon/base/b;

    move-result-object v1

    .line 2117
    instance-of v2, v0, Lcom/anythink/basead/mraid/a;

    if-eqz v2, :cond_1

    .line 2118
    invoke-virtual {p0}, Lcom/anythink/basead/mraid/MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2119
    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 2120
    move-object v3, v0

    check-cast v3, Lcom/anythink/basead/mraid/a;

    check-cast v2, Landroid/app/Activity;

    .line 2150
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/anythink/basead/mraid/a;->b:Ljava/lang/ref/WeakReference;

    .line 2122
    :cond_0
    check-cast v0, Lcom/anythink/basead/mraid/a;

    iget-object v2, p0, Lcom/anythink/basead/mraid/MraidWebView;->a:Lcom/anythink/basead/mraid/b;

    invoke-virtual {v0, v2}, Lcom/anythink/basead/mraid/a;->a(Lcom/anythink/basead/mraid/b;)V

    .line 2125
    :cond_1
    instance-of v0, v1, Lcom/anythink/basead/mraid/e;

    if-eqz v0, :cond_2

    .line 2126
    check-cast v1, Lcom/anythink/basead/mraid/e;

    iget-object p0, p0, Lcom/anythink/basead/mraid/MraidWebView;->a:Lcom/anythink/basead/mraid/b;

    .line 3025
    iput-object p0, v1, Lcom/anythink/basead/mraid/e;->c:Lcom/anythink/basead/mraid/b;

    :cond_2
    return-void
.end method

.method private b()V
    .locals 5

    .line 114
    invoke-virtual {p0}, Lcom/anythink/basead/mraid/MraidWebView;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lcom/anythink/basead/mraid/MraidWebView;->getBaseWebViewClient()Lcom/anythink/expressad/atsignalcommon/base/b;

    move-result-object v1

    .line 117
    instance-of v2, v0, Lcom/anythink/basead/mraid/a;

    if-eqz v2, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/anythink/basead/mraid/MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 119
    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 120
    move-object v3, v0

    check-cast v3, Lcom/anythink/basead/mraid/a;

    check-cast v2, Landroid/app/Activity;

    .line 1150
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/anythink/basead/mraid/a;->b:Ljava/lang/ref/WeakReference;

    .line 122
    :cond_0
    check-cast v0, Lcom/anythink/basead/mraid/a;

    iget-object v2, p0, Lcom/anythink/basead/mraid/MraidWebView;->a:Lcom/anythink/basead/mraid/b;

    invoke-virtual {v0, v2}, Lcom/anythink/basead/mraid/a;->a(Lcom/anythink/basead/mraid/b;)V

    .line 125
    :cond_1
    instance-of v0, v1, Lcom/anythink/basead/mraid/e;

    if-eqz v0, :cond_2

    .line 126
    check-cast v1, Lcom/anythink/basead/mraid/e;

    iget-object v0, p0, Lcom/anythink/basead/mraid/MraidWebView;->a:Lcom/anythink/basead/mraid/b;

    .line 2025
    iput-object v0, v1, Lcom/anythink/basead/mraid/e;->c:Lcom/anythink/basead/mraid/b;

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/anythink/basead/mraid/MraidWebView;)V
    .locals 2

    .line 3132
    new-instance v0, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    invoke-virtual {p0}, Lcom/anythink/basead/mraid/MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/mraid/MraidWebView;->c:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    .line 3133
    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->registerReceiver()V

    .line 3134
    iget-object v0, p0, Lcom/anythink/basead/mraid/MraidWebView;->c:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->getCurrentVolume()D

    .line 3135
    iget-object v0, p0, Lcom/anythink/basead/mraid/MraidWebView;->c:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    new-instance v1, Lcom/anythink/basead/mraid/MraidWebView$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/mraid/MraidWebView$2;-><init>(Lcom/anythink/basead/mraid/MraidWebView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->setVolumeChangeListener(Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver$VolumeChangeListener;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 132
    new-instance v0, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    invoke-virtual {p0}, Lcom/anythink/basead/mraid/MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/mraid/MraidWebView;->c:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    .line 133
    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->registerReceiver()V

    .line 134
    iget-object v0, p0, Lcom/anythink/basead/mraid/MraidWebView;->c:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->getCurrentVolume()D

    .line 135
    iget-object v0, p0, Lcom/anythink/basead/mraid/MraidWebView;->c:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    new-instance v1, Lcom/anythink/basead/mraid/MraidWebView$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/mraid/MraidWebView$2;-><init>(Lcom/anythink/basead/mraid/MraidWebView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->setVolumeChangeListener(Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver$VolumeChangeListener;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "../"

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "file"

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/res/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 55
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "illegal URL: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "anythink_express"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "about:blank"

    :cond_3
    return-object p1
.end method

.method public prepare(Landroid/content/Context;Lcom/anythink/basead/mraid/b;)V
    .locals 0

    .line 75
    iput-object p2, p0, Lcom/anythink/basead/mraid/MraidWebView;->a:Lcom/anythink/basead/mraid/b;

    .line 77
    invoke-virtual {p0}, Lcom/anythink/basead/mraid/MraidWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/anythink/basead/mraid/MraidWebView$1;

    invoke-direct {p2, p0}, Lcom/anythink/basead/mraid/MraidWebView$1;-><init>(Lcom/anythink/basead/mraid/MraidWebView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 151
    invoke-super {p0}, Lcom/anythink/expressad/mbbanner/view/ATBannerWebView;->release()V

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, v0}, Lcom/anythink/basead/mraid/MraidWebView;->setWebViewListener(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V

    .line 155
    iget-object v0, p0, Lcom/anythink/basead/mraid/MraidWebView;->c:Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/anythink/expressad/atsignalcommon/mraid/MraidVolumeChangeReceiver;->unregisterReceiver()V

    :cond_0
    return-void
.end method

.method public setNeedRegisterVolumeChangeReceiver(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/anythink/basead/mraid/MraidWebView;->d:Z

    return-void
.end method
