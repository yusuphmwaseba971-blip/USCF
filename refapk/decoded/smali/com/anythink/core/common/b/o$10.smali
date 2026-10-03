.class final Lcom/anythink/core/common/b/o$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATNetworkConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/anythink/core/common/b/o;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/o;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/anythink/core/common/b/o$10;->c:Lcom/anythink/core/common/b/o;

    iput-object p2, p0, Lcom/anythink/core/common/b/o$10;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/common/b/o$10;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/anythink/core/common/b/o$10;->c:Lcom/anythink/core/common/b/o;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->b()Lcom/anythink/core/api/IExHandler;

    .line 736
    iget-object v0, p0, Lcom/anythink/core/common/b/o$10;->c:Lcom/anythink/core/common/b/o;

    invoke-static {v0}, Lcom/anythink/core/common/b/o;->c(Lcom/anythink/core/common/b/o;)Lcom/anythink/core/api/IExHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/anythink/core/common/b/o$10;->c:Lcom/anythink/core/common/b/o;

    invoke-static {v0}, Lcom/anythink/core/common/b/o;->c(Lcom/anythink/core/common/b/o;)Lcom/anythink/core/api/IExHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/b/o$10;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/IExHandler;->initDeviceInfo(Landroid/content/Context;)V

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o$10;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/f;->a(Landroid/content/Context;)Lcom/anythink/core/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/d/f;->a()V

    .line 741
    iget-object v0, p0, Lcom/anythink/core/common/b/o$10;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/x;->a(Landroid/content/Context;)Lcom/anythink/core/common/x;

    .line 744
    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/b/o$10;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/d;->a(Landroid/content/Context;)V

    .line 746
    iget-object v0, p0, Lcom/anythink/core/common/b/o$10;->c:Lcom/anythink/core/common/b/o;

    invoke-static {v0}, Lcom/anythink/core/common/b/o;->b(Lcom/anythink/core/common/b/o;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/o/e;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 747
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 748
    iget-object v1, p0, Lcom/anythink/core/common/b/o$10;->c:Lcom/anythink/core/common/b/o;

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/b/o;->h(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
