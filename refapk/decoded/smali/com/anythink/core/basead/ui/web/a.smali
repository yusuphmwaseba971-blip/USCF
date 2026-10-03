.class public final Lcom/anythink/core/basead/ui/web/a;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private a:Lcom/anythink/core/basead/ui/web/b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/basead/ui/web/b;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 97
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p1, p2}, Lcom/anythink/core/basead/ui/web/b;->onWebPageFinish(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 84
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 85
    iget-object p3, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    if-eqz p3, :cond_0

    .line 86
    invoke-interface {p3, p1, p2}, Lcom/anythink/core/basead/ui/web/b;->onWebPageStart(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    invoke-interface {p1}, Lcom/anythink/core/basead/ui/web/b;->getWebProgressBarView()Lcom/anythink/core/basead/ui/web/WebProgressBarView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 89
    invoke-virtual {p1, p2}, Lcom/anythink/core/basead/ui/web/WebProgressBarView;->setVisibility(I)V

    .line 90
    invoke-virtual {p1, p2}, Lcom/anythink/core/basead/ui/web/WebProgressBarView;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    iget-object p2, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    if-eqz p2, :cond_0

    .line 38
    invoke-interface {p2, p1, p4}, Lcom/anythink/core/basead/ui/web/b;->onWebPageLoadError(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    if-eqz p1, :cond_0

    .line 109
    invoke-interface {p1}, Lcom/anythink/core/basead/ui/web/b;->onWebFinish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .line 44
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const-string v0, "about:blank"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v0, p2}, Lcom/anythink/core/basead/ui/web/b;->recordRedirectUrl(Ljava/lang/String;)V

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    invoke-static {v0, p2}, Lcom/anythink/core/basead/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/common/f/ba;

    move-result-object v0

    .line 55
    iget-boolean v2, v0, Lcom/anythink/core/common/f/ba;->m:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 56
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    if-eqz p1, :cond_2

    .line 57
    invoke-interface {p1, v0}, Lcom/anythink/core/basead/ui/web/b;->callbackClickResult(Lcom/anythink/core/common/f/ba;)V

    :cond_2
    return v3

    .line 61
    :cond_3
    iget-object v2, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    if-eqz v2, :cond_4

    .line 62
    invoke-interface {v2, v0}, Lcom/anythink/core/basead/ui/web/b;->callbackClickResult(Lcom/anythink/core/common/f/ba;)V

    .line 66
    :cond_4
    invoke-static {p2}, Lcom/anythink/core/basead/a/a;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/ba;

    move-result-object v0

    .line 67
    iget-object v2, p0, Lcom/anythink/core/basead/ui/web/a;->a:Lcom/anythink/core/basead/ui/web/b;

    if-eqz v2, :cond_5

    .line 68
    invoke-interface {v2, v0}, Lcom/anythink/core/basead/ui/web/b;->callbackClickResult(Lcom/anythink/core/common/f/ba;)V

    .line 70
    :cond_5
    iget-object v2, v0, Lcom/anythink/core/common/f/ba;->o:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 71
    iget-object p2, v0, Lcom/anythink/core/common/f/ba;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v3

    .line 76
    :cond_6
    invoke-static {p2}, Lcom/anythink/core/common/o/i;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    :goto_0
    return v1
.end method
