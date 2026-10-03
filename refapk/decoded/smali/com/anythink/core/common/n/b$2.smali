.class final Lcom/anythink/core/common/n/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/h/a/c$a;


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

    .line 94
    iput-object p1, p0, Lcom/anythink/core/common/n/b$2;->a:Lcom/anythink/core/common/n/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    .line 97
    instance-of v0, p1, Lcom/anythink/core/common/h/a/a;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/anythink/core/common/n/b$2;->a:Lcom/anythink/core/common/n/b;

    check-cast p1, Lcom/anythink/core/common/h/a/a;

    invoke-virtual {p1}, Lcom/anythink/core/common/h/a/a;->b()I

    move-result p1

    invoke-static {v0, p1}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/n/b;I)V

    .line 99
    iget-object p1, p0, Lcom/anythink/core/common/n/b$2;->a:Lcom/anythink/core/common/n/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/n/b;Z)Z

    .line 100
    iget-object p1, p0, Lcom/anythink/core/common/n/b$2;->a:Lcom/anythink/core/common/n/b;

    invoke-static {p1}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/n/b;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "anythink_sdk"

    const-string v3, "LOG_SEND_TIME"

    invoke-static {p1, v2, v3, v0, v1}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 106
    iget-object p1, p0, Lcom/anythink/core/common/n/b$2;->a:Lcom/anythink/core/common/n/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/n/b;Z)Z

    return-void
.end method
