.class public Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;
.super Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;


# static fields
.field private static final a:Ljava/lang/String; = "ATNativeAdvancedWebview"


# instance fields
.field private b:Lcom/anythink/expressad/advanced/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 25
    invoke-super {p0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->onAttachedToWindow()V

    .line 26
    invoke-virtual {p0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;->registerNetWorkReceiver()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->onDetachedFromWindow()V

    .line 32
    invoke-virtual {p0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;->unregisterNetWorkReceiver()V

    return-void
.end method

.method public registerNetWorkReceiver()V
    .locals 3

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;->b:Lcom/anythink/expressad/advanced/a/c;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/anythink/expressad/advanced/a/c;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/advanced/a/c;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;->b:Lcom/anythink/expressad/advanced/a/c;

    .line 40
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;->b:Lcom/anythink/expressad/advanced/a/c;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public unregisterNetWorkReceiver()V
    .locals 2

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;->b:Lcom/anythink/expressad/advanced/a/c;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/anythink/expressad/advanced/a/c;->a()V

    .line 52
    invoke-virtual {p0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedWebview;->b:Lcom/anythink/expressad/advanced/a/c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method
