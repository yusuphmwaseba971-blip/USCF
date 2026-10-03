.class final Lcom/anythink/core/common/q$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/q;->a(Lcom/anythink/core/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/d/a;

.field final synthetic b:Lcom/anythink/core/common/q;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/q;Lcom/anythink/core/d/a;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/anythink/core/common/q$2;->b:Lcom/anythink/core/common/q;

    iput-object p2, p0, Lcom/anythink/core/common/q$2;->a:Lcom/anythink/core/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/q$2;->b:Lcom/anythink/core/common/q;

    invoke-static {v0}, Lcom/anythink/core/common/q;->a(Lcom/anythink/core/common/q;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/q$2;->b:Lcom/anythink/core/common/q;

    invoke-static {v0}, Lcom/anythink/core/common/q;->a(Lcom/anythink/core/common/q;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {v1}, Lcom/anythink/core/common/o/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lcom/anythink/core/common/q$2;->a:Lcom/anythink/core/d/a;

    invoke-virtual {v3}, Lcom/anythink/core/d/a;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    .line 136
    invoke-static {}, Lcom/anythink/core/common/o/n;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "denied"

    .line 137
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/o;->e()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v0, p0, Lcom/anythink/core/common/q$2;->b:Lcom/anythink/core/common/q;

    invoke-static {v0}, Lcom/anythink/core/common/q;->a(Lcom/anythink/core/common/q;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/l;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/l;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/anythink/core/common/b/l;->a(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
