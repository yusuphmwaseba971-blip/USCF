.class final Lcom/anythink/basead/mraid/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/mraid/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/basead/mraid/MraidWebView;Lcom/anythink/basead/mraid/d$a;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/m;

.field final synthetic b:Lcom/anythink/core/common/f/l;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/anythink/basead/mraid/d$a;

.field final synthetic f:Lcom/anythink/basead/mraid/MraidWebView;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;ILjava/lang/String;Lcom/anythink/basead/mraid/d$a;Lcom/anythink/basead/mraid/MraidWebView;Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/anythink/basead/mraid/d$1;->a:Lcom/anythink/core/common/f/m;

    iput-object p2, p0, Lcom/anythink/basead/mraid/d$1;->b:Lcom/anythink/core/common/f/l;

    iput p3, p0, Lcom/anythink/basead/mraid/d$1;->c:I

    iput-object p4, p0, Lcom/anythink/basead/mraid/d$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/basead/mraid/d$1;->e:Lcom/anythink/basead/mraid/d$a;

    iput-object p6, p0, Lcom/anythink/basead/mraid/d$1;->f:Lcom/anythink/basead/mraid/MraidWebView;

    iput-object p7, p0, Lcom/anythink/basead/mraid/d$1;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/anythink/basead/mraid/d$1;->a:Lcom/anythink/core/common/f/m;

    iget-object v1, p0, Lcom/anythink/basead/mraid/d$1;->b:Lcom/anythink/core/common/f/l;

    iget v2, p0, Lcom/anythink/basead/mraid/d$1;->c:I

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/n/c;->b(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;I)V

    .line 59
    sget-object v0, Lcom/anythink/basead/mraid/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/basead/mraid/d$1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start load mraid webview"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance v0, Lcom/anythink/basead/mraid/a;

    invoke-direct {v0}, Lcom/anythink/basead/mraid/a;-><init>()V

    .line 61
    new-instance v1, Lcom/anythink/basead/mraid/e;

    iget-object v2, p0, Lcom/anythink/basead/mraid/d$1;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/anythink/basead/mraid/e;-><init>(Ljava/lang/String;)V

    .line 63
    new-instance v2, Lcom/anythink/basead/mraid/d$1$1;

    invoke-direct {v2, p0}, Lcom/anythink/basead/mraid/d$1$1;-><init>(Lcom/anythink/basead/mraid/d$1;)V

    invoke-virtual {v1, v2}, Lcom/anythink/basead/mraid/e;->a(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V

    .line 124
    iget-object v2, p0, Lcom/anythink/basead/mraid/d$1;->f:Lcom/anythink/basead/mraid/MraidWebView;

    invoke-virtual {v2, v1}, Lcom/anythink/basead/mraid/MraidWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 125
    iget-object v1, p0, Lcom/anythink/basead/mraid/d$1;->f:Lcom/anythink/basead/mraid/MraidWebView;

    invoke-virtual {v1, v0}, Lcom/anythink/basead/mraid/MraidWebView;->setObject(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/anythink/basead/mraid/d$1;->f:Lcom/anythink/basead/mraid/MraidWebView;

    iget-object v1, p0, Lcom/anythink/basead/mraid/d$1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/mraid/MraidWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
