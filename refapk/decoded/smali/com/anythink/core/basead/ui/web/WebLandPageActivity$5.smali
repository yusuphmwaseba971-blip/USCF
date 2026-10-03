.class final Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;


# direct methods
.method constructor <init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {v0, p1, p2}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 522
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    return-void
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .line 526
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->h(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/basead/ui/web/WebProgressBarView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 527
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->i(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    const/16 v0, 0x64

    if-nez p1, :cond_0

    .line 528
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->h(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/basead/ui/web/WebProgressBarView;

    move-result-object p1

    mul-int/lit8 v1, p2, 0x1e

    div-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x46

    invoke-virtual {p1, v1}, Lcom/anythink/core/basead/ui/web/WebProgressBarView;->setProgress(I)V

    :cond_0
    if-ne p2, v0, :cond_2

    .line 531
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->i(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 532
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->i(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 533
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->h(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/basead/ui/web/WebProgressBarView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/anythink/core/basead/ui/web/WebProgressBarView;->setProgress(I)V

    .line 535
    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p1

    new-instance p2, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5$1;

    invoke-direct {p2, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5$1;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Lcom/anythink/core/common/b/o;->a(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 549
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 550
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->j(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->j(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 551
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 552
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->j(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    const-string p1, "android.intent.extra.ALLOW_MULTIPLE"

    .line 496
    :try_start_0
    iget-object p3, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p3, p2}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 498
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.GET_CONTENT"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 499
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "*/*"

    .line 500
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.OPENABLE"

    .line 503
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 505
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    const-string v0, "File Chooser"

    .line 506
    invoke-static {p2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0x200

    .line 505
    invoke-virtual {p1, p2, v0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p3

    :catchall_0
    const/4 p1, 0x0

    return p1
.end method
