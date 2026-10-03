.class final Lcom/anythink/core/common/b/r$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/h/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/r;->a(Lcom/anythink/core/api/NetTrafficeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/NetTrafficeCallback;

.field final synthetic b:Lcom/anythink/core/common/b/r;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/r;Lcom/anythink/core/api/NetTrafficeCallback;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/anythink/core/common/b/r$2;->b:Lcom/anythink/core/common/b/r;

    iput-object p2, p0, Lcom/anythink/core/common/b/r$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

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

    .line 232
    iget-object p1, p0, Lcom/anythink/core/common/b/r$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p3}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/anythink/core/api/NetTrafficeCallback;->onErrorCallback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onLoadFinish(ILjava/lang/Object;)V
    .locals 2

    const-string p1, "is_eu"

    .line 194
    :try_start_0
    instance-of v0, p2, Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "There is no result."

    if-nez v0, :cond_1

    .line 195
    :try_start_1
    iget-object p1, p0, Lcom/anythink/core/common/b/r$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz p1, :cond_0

    .line 196
    invoke-interface {p1, v1}, Lcom/anythink/core/api/NetTrafficeCallback;->onErrorCallback(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 202
    :cond_1
    check-cast p2, Lorg/json/JSONObject;

    .line 204
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 205
    iget-object p1, p0, Lcom/anythink/core/common/b/r$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz p1, :cond_2

    .line 206
    invoke-interface {p1, v1}, Lcom/anythink/core/api/NetTrafficeCallback;->onErrorCallback(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 211
    :cond_3
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    .line 214
    iget-object p1, p0, Lcom/anythink/core/common/b/r$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz p1, :cond_5

    .line 215
    invoke-interface {p1, p2}, Lcom/anythink/core/api/NetTrafficeCallback;->onResultCallback(Z)V

    return-void

    .line 218
    :cond_4
    iget-object p1, p0, Lcom/anythink/core/common/b/r$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    .line 219
    invoke-interface {p1, p2}, Lcom/anythink/core/api/NetTrafficeCallback;->onResultCallback(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    return-void

    :catchall_0
    nop

    .line 223
    iget-object p1, p0, Lcom/anythink/core/common/b/r$2;->a:Lcom/anythink/core/api/NetTrafficeCallback;

    if-eqz p1, :cond_6

    const-string p2, "Internal error"

    .line 224
    invoke-interface {p1, p2}, Lcom/anythink/core/api/NetTrafficeCallback;->onErrorCallback(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final onLoadStart(I)V
    .locals 0

    return-void
.end method
