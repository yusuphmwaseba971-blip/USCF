.class final Lcom/anythink/expressad/video/module/AnythinkVideoView$1$1;
.super Lcom/anythink/expressad/widget/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/module/AnythinkVideoView$1;->a(Lcom/anythink/expressad/video/dynview/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/video/module/AnythinkVideoView$1;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/video/module/AnythinkVideoView$1;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$1$1;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView$1;

    invoke-direct {p0}, Lcom/anythink/expressad/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 4

    .line 394
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$1$1;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView$1;

    iget-object p1, p1, Lcom/anythink/expressad/video/module/AnythinkVideoView$1;->c:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/video/module/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 417
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 418
    :try_start_1
    sget-object p1, Lcom/anythink/expressad/foundation/g/a;->ce:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$1$1;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView$1;

    iget-object v1, v1, Lcom/anythink/expressad/video/module/AnythinkVideoView$1;->c:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    .line 420
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 428
    :goto_1
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$1$1;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView$1;

    iget-object p1, p1, Lcom/anythink/expressad/video/module/AnythinkVideoView$1;->c:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/video/module/a/a;

    move-result-object p1

    const/16 v1, 0x69

    invoke-interface {p1, v1, v0}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 429
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    :cond_0
    return-void
.end method
