.class final Lcom/anythink/basead/mraid/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/mraid/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/mraid/c;


# direct methods
.method constructor <init>(Lcom/anythink/basead/mraid/c;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/anythink/basead/mraid/c$3;->a:Lcom/anythink/basead/mraid/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    .line 147
    iget-object p1, p0, Lcom/anythink/basead/mraid/c$3;->a:Lcom/anythink/basead/mraid/c;

    invoke-static {p1}, Lcom/anythink/basead/mraid/c;->b(Lcom/anythink/basead/mraid/c;)Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/anythink/basead/mraid/c$3;->a:Lcom/anythink/basead/mraid/c;

    invoke-static {p1}, Lcom/anythink/basead/mraid/c;->c(Lcom/anythink/basead/mraid/c;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/basead/mraid/c$3;->a:Lcom/anythink/basead/mraid/c;

    invoke-static {v0}, Lcom/anythink/basead/mraid/c;->b(Lcom/anythink/basead/mraid/c;)Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 149
    iget-object p1, p0, Lcom/anythink/basead/mraid/c$3;->a:Lcom/anythink/basead/mraid/c;

    invoke-static {p1}, Lcom/anythink/basead/mraid/c;->b(Lcom/anythink/basead/mraid/c;)Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->release()V

    .line 150
    iget-object p1, p0, Lcom/anythink/basead/mraid/c$3;->a:Lcom/anythink/basead/mraid/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/basead/mraid/c;->a(Lcom/anythink/basead/mraid/c;Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;)Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    .line 151
    iget-object p1, p0, Lcom/anythink/basead/mraid/c$3;->a:Lcom/anythink/basead/mraid/c;

    invoke-static {p1, v0}, Lcom/anythink/basead/mraid/c;->a(Lcom/anythink/basead/mraid/c;Lcom/anythink/basead/mraid/b;)Lcom/anythink/basead/mraid/b;

    return-void
.end method
