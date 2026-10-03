.class final Lcom/anythink/core/b/i$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/i;->a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/api/ATBidRequestInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/ATBidRequestInfo;

.field final synthetic b:Lcom/anythink/core/common/f/au;

.field final synthetic c:Lcom/anythink/core/b/i;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/i;Lcom/anythink/core/api/ATBidRequestInfo;Lcom/anythink/core/common/f/au;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iput-object p2, p0, Lcom/anythink/core/b/i$3;->a:Lcom/anythink/core/api/ATBidRequestInfo;

    iput-object p3, p0, Lcom/anythink/core/b/i$3;->b:Lcom/anythink/core/common/f/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/i$3;->a:Lcom/anythink/core/api/ATBidRequestInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBidRequestInfo;->toRequestJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iget-object v1, v1, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget v1, v1, Lcom/anythink/core/common/f/a;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iget-object v2, v2, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v2, v2, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/az;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/b/i$3;->b:Lcom/anythink/core/common/f/au;

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/api/ATBidRequestInfo;->fillBaseCommonParams(Lorg/json/JSONObject;Ljava/lang/String;Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/au;)V

    .line 129
    iget-object v1, p0, Lcom/anythink/core/b/i$3;->b:Lcom/anythink/core/common/f/au;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->m()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :try_start_1
    const-string v1, "unit_id"

    .line 131
    iget-object v2, p0, Lcom/anythink/core/b/i$3;->b:Lcom/anythink/core/common/f/au;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->k()Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "ecpoffer"

    .line 135
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 137
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iget-object v1, v1, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget v1, v1, Lcom/anythink/core/common/f/a;->z:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "get_offer"

    const/4 v2, 0x2

    .line 141
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iget-object v1, v1, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iget-object v1, v1, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    iget-object v2, p0, Lcom/anythink/core/b/i$3;->b:Lcom/anythink/core/common/f/au;

    invoke-interface {v1, v2, v0}, Lcom/anythink/core/b/i$a;->onBidTokenObtainSuccess(Lcom/anythink/core/common/f/au;Lorg/json/JSONObject;)V

    :cond_2
    return-void

    .line 119
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iget-object v0, v0, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iget-object v0, v0, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    const-string v1, "The parameter is abnormal."

    iget-object v2, p0, Lcom/anythink/core/b/i$3;->b:Lcom/anythink/core/common/f/au;

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/b/i$a;->onBidTokenObtainFail(Ljava/lang/String;Lcom/anythink/core/common/f/au;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    return-void

    :catchall_1
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    iget-object v1, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iget-object v1, v1, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    if-eqz v1, :cond_5

    .line 156
    iget-object v1, p0, Lcom/anythink/core/b/i$3;->c:Lcom/anythink/core/b/i;

    iget-object v1, v1, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/core/b/i$3;->b:Lcom/anythink/core/common/f/au;

    invoke-interface {v1, v0, v2}, Lcom/anythink/core/b/i$a;->onBidTokenObtainFail(Ljava/lang/String;Lcom/anythink/core/common/f/au;)V

    :cond_5
    return-void
.end method
