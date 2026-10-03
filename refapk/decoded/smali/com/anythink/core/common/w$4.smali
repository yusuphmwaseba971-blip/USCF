.class final Lcom/anythink/core/common/w$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/w;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/core/common/w;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/w;Ljava/lang/String;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/anythink/core/common/w$4;->b:Lcom/anythink/core/common/w;

    iput-object p2, p0, Lcom/anythink/core/common/w$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/anythink/core/common/w$4;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/w$4;->b:Lcom/anythink/core/common/w;

    invoke-static {v0}, Lcom/anythink/core/common/w;->e(Lcom/anythink/core/common/w;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 484
    invoke-static {}, Lcom/anythink/core/common/w;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkToStartScheduleLoadTask, status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/w$4;->b:Lcom/anythink/core/common/w;

    invoke-static {v1}, Lcom/anythink/core/common/w;->e(Lcom/anythink/core/common/w;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", do nothing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/w$4;->b:Lcom/anythink/core/common/w;

    invoke-static {v0}, Lcom/anythink/core/common/w;->f(Lcom/anythink/core/common/w;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/core/common/w$4;->b:Lcom/anythink/core/common/w;

    invoke-static {v0}, Lcom/anythink/core/common/w;->f(Lcom/anythink/core/common/w;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/w$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 493
    :cond_2
    invoke-static {}, Lcom/anythink/core/common/w;->c()Ljava/lang/String;

    return-void

    .line 490
    :cond_3
    :goto_0
    invoke-static {}, Lcom/anythink/core/common/w;->c()Ljava/lang/String;

    .line 491
    iget-object v0, p0, Lcom/anythink/core/common/w$4;->b:Lcom/anythink/core/common/w;

    iget-object v1, p0, Lcom/anythink/core/common/w$4;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/w;Ljava/lang/String;)V

    return-void
.end method
