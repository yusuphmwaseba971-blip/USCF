.class final Lcom/anythink/core/common/n/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/h/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/n/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/n/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/n/b;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/anythink/core/common/n/b$1;->a:Lcom/anythink/core/common/n/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadCanceled(I)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/anythink/core/common/n/b$1;->a:Lcom/anythink/core/common/n/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/n/b;Z)Z

    return-void
.end method

.method public final onLoadError(ILjava/lang/String;Lcom/anythink/core/api/AdError;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/anythink/core/common/n/b$1;->a:Lcom/anythink/core/common/n/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/n/b;Z)Z

    return-void
.end method

.method public final onLoadFinish(ILjava/lang/Object;)V
    .locals 4

    const/4 p1, 0x0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/n/b$1;->a:Lcom/anythink/core/common/n/b;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p2}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/n/b;I)V

    .line 75
    iget-object p2, p0, Lcom/anythink/core/common/n/b$1;->a:Lcom/anythink/core/common/n/b;

    invoke-static {p2, p1}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/n/b;Z)Z

    .line 76
    iget-object p2, p0, Lcom/anythink/core/common/n/b$1;->a:Lcom/anythink/core/common/n/b;

    invoke-static {p2}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/n/b;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "anythink_sdk"

    const-string v1, "LOG_SEND_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p2, v0, v1, v2, v3}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 78
    :catchall_0
    iget-object p2, p0, Lcom/anythink/core/common/n/b$1;->a:Lcom/anythink/core/common/n/b;

    invoke-static {p2, p1}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/n/b;Z)Z

    return-void
.end method

.method public final onLoadStart(I)V
    .locals 0

    return-void
.end method
