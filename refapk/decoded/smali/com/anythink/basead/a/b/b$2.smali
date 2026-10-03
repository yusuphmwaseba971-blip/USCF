.class final Lcom/anythink/basead/a/b/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/b/b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/anythink/basead/a/b/b;


# direct methods
.method constructor <init>(Lcom/anythink/basead/a/b/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/anythink/basead/a/b/b$2;->c:Lcom/anythink/basead/a/b/b;

    iput-object p2, p0, Lcom/anythink/basead/a/b/b$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/basead/a/b/b$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/a/b/b$2;->c:Lcom/anythink/basead/a/b/b;

    new-instance v1, Lcom/anythink/basead/mraid/MraidWebView;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anythink/basead/mraid/MraidWebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/anythink/basead/a/b/b;->a(Lcom/anythink/basead/a/b/b;Lcom/anythink/basead/mraid/MraidWebView;)Lcom/anythink/basead/mraid/MraidWebView;

    .line 257
    iget-object v3, p0, Lcom/anythink/basead/a/b/b$2;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/basead/a/b/b$2;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/basead/a/b/b$2;->c:Lcom/anythink/basead/a/b/b;

    invoke-static {v0}, Lcom/anythink/basead/a/b/b;->a(Lcom/anythink/basead/a/b/b;)Lcom/anythink/basead/mraid/MraidWebView;

    move-result-object v5

    new-instance v6, Lcom/anythink/basead/a/b/b$2$1;

    invoke-direct {v6, p0}, Lcom/anythink/basead/a/b/b$2$1;-><init>(Lcom/anythink/basead/a/b/b$2;)V

    iget-object v0, p0, Lcom/anythink/basead/a/b/b$2;->c:Lcom/anythink/basead/a/b/b;

    iget-object v7, v0, Lcom/anythink/basead/a/b/b;->b:Lcom/anythink/core/common/f/l;

    iget-object v0, p0, Lcom/anythink/basead/a/b/b$2;->c:Lcom/anythink/basead/a/b/b;

    iget-object v8, v0, Lcom/anythink/basead/a/b/b;->d:Lcom/anythink/core/common/f/m;

    const/4 v9, 0x5

    invoke-static/range {v3 .. v9}, Lcom/anythink/basead/mraid/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/basead/mraid/MraidWebView;Lcom/anythink/basead/mraid/d$a;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 269
    iget-object v1, p0, Lcom/anythink/basead/a/b/b$2;->c:Lcom/anythink/basead/a/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mraid preload fail with exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Incomplete resource allocation!"

    .line 269
    invoke-static {v2, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anythink/basead/a/b/b;->a(Lcom/anythink/basead/a/b/b;Lcom/anythink/basead/c/e;)V

    return-void
.end method
