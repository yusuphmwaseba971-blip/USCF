.class final Lcom/anythink/core/d/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/d/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/e;Lorg/json/JSONObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/anythink/core/d/h;


# direct methods
.method constructor <init>(Lcom/anythink/core/d/h;Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/anythink/core/d/h$1;->d:Lcom/anythink/core/d/h;

    iput-object p2, p0, Lcom/anythink/core/d/h$1;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/anythink/core/d/h$1;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/anythink/core/d/h$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/anythink/core/d/h$1;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/anythink/core/d/h$1;->d:Lcom/anythink/core/d/h;

    invoke-static {v1}, Lcom/anythink/core/d/h;->a(Lcom/anythink/core/d/h;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/d/h$1;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/anythink/core/d/h$1;->c:Z

    invoke-static {v2, v3}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "anythink_sdk"

    invoke-static {v1, v3, v2, v0}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
