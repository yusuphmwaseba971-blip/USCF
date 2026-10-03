.class final Lcom/anythink/core/d/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/h/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/d/g;->a(Landroid/content/Context;Lcom/anythink/core/common/f/al;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/d/e;

.field final synthetic b:Lcom/anythink/core/common/f/al;

.field final synthetic c:Lcom/anythink/core/d/g;


# direct methods
.method constructor <init>(Lcom/anythink/core/d/g;Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/al;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/anythink/core/d/g$1;->c:Lcom/anythink/core/d/g;

    iput-object p2, p0, Lcom/anythink/core/d/g$1;->a:Lcom/anythink/core/d/e;

    iput-object p3, p0, Lcom/anythink/core/d/g$1;->b:Lcom/anythink/core/common/f/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadCanceled(I)V
    .locals 0

    return-void
.end method

.method public final onLoadError(ILjava/lang/String;Lcom/anythink/core/api/AdError;)V
    .locals 0

    return-void
.end method

.method public final onLoadFinish(ILjava/lang/Object;)V
    .locals 5

    .line 43
    instance-of p1, p2, Lorg/json/JSONObject;

    if-nez p1, :cond_0

    return-void

    .line 46
    :cond_0
    check-cast p2, Lorg/json/JSONObject;

    :try_start_0
    const-string p1, "updateTime"

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 49
    iget-object p1, p0, Lcom/anythink/core/d/g$1;->a:Lcom/anythink/core/d/e;

    if-eqz p1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/anythink/core/d/g$1;->b:Lcom/anythink/core/common/f/al;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/al;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/anythink/core/d/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parse place strategy error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlaceFirstRequester"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/anythink/core/d/e;->a(Lorg/json/JSONObject;)Lcom/anythink/core/d/e;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/anythink/core/d/g$1;->c:Lcom/anythink/core/d/g;

    invoke-static {v0}, Lcom/anythink/core/d/g;->a(Lcom/anythink/core/d/g;)Lcom/anythink/core/d/f;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    .line 57
    invoke-virtual {p1, v0}, Lcom/anythink/core/d/e;->a(I)V

    .line 58
    iget-object v1, p0, Lcom/anythink/core/d/g$1;->c:Lcom/anythink/core/d/g;

    invoke-static {v1}, Lcom/anythink/core/d/g;->a(Lcom/anythink/core/d/g;)Lcom/anythink/core/d/f;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/d/g$1;->b:Lcom/anythink/core/common/f/al;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/al;->c()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {p1}, Lcom/anythink/core/d/e;->ai()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 58
    :goto_1
    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/anythink/core/d/f;->a(Ljava/lang/String;Lcom/anythink/core/d/e;Lorg/json/JSONObject;I)V

    :cond_3
    return-void
.end method

.method public final onLoadStart(I)V
    .locals 0

    return-void
.end method
