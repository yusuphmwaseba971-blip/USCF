.class final Lcom/anythink/core/common/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/q;->a(ILcom/anythink/core/common/f/i;Lcom/anythink/core/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/i;

.field final synthetic b:I

.field final synthetic c:Lcom/anythink/core/d/a;

.field final synthetic d:Lcom/anythink/core/common/q;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/q;Lcom/anythink/core/common/f/i;ILcom/anythink/core/d/a;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/anythink/core/common/q$1;->d:Lcom/anythink/core/common/q;

    iput-object p2, p0, Lcom/anythink/core/common/q$1;->a:Lcom/anythink/core/common/f/i;

    iput p3, p0, Lcom/anythink/core/common/q$1;->b:I

    iput-object p4, p0, Lcom/anythink/core/common/q$1;->c:Lcom/anythink/core/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 61
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/d/f;->a(Landroid/content/Context;)Lcom/anythink/core/d/f;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/q$1;->a:Lcom/anythink/core/common/f/i;

    iget-object v3, v3, Lcom/anythink/core/common/f/i;->b:Lcom/anythink/core/common/f/at;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/at;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/core/d/f;->a(Ljava/lang/String;)Lcom/anythink/core/d/e;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/anythink/core/common/q$1;->a:Lcom/anythink/core/common/f/i;

    iget-object v2, v2, Lcom/anythink/core/common/f/i;->b:Lcom/anythink/core/common/f/at;

    check-cast v2, Lcom/anythink/core/common/f/h;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/h;->C()Ljava/lang/String;

    move-result-object v8

    .line 69
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 75
    iget v3, p0, Lcom/anythink/core/common/q$1;->b:I

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 95
    :pswitch_0
    iget-object v2, p0, Lcom/anythink/core/common/q$1;->a:Lcom/anythink/core/common/f/i;

    iget-object v2, v2, Lcom/anythink/core/common/f/i;->b:Lcom/anythink/core/common/f/at;

    check-cast v2, Lcom/anythink/core/common/f/h;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/h;->g()I

    move-result v2

    if-ne v2, v6, :cond_2

    const/4 v5, 0x1

    .line 96
    :cond_2
    iget-object v2, p0, Lcom/anythink/core/common/q$1;->c:Lcom/anythink/core/d/a;

    invoke-virtual {v2}, Lcom/anythink/core/d/a;->U()Ljava/util/Map;

    move-result-object v2

    const-string v3, "dl"

    .line 97
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_3
    iget-object v2, p0, Lcom/anythink/core/common/q$1;->a:Lcom/anythink/core/common/f/i;

    iget-object v2, v2, Lcom/anythink/core/common/f/i;->b:Lcom/anythink/core/common/f/at;

    check-cast v2, Lcom/anythink/core/common/f/h;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/h;->z()I

    move-result v2

    if-ne v2, v6, :cond_4

    const/4 v5, 0x1

    .line 87
    :cond_4
    iget-object v2, p0, Lcom/anythink/core/common/q$1;->c:Lcom/anythink/core/d/a;

    invoke-virtual {v2}, Lcom/anythink/core/d/a;->U()Ljava/util/Map;

    move-result-object v2

    const-string v3, "click"

    .line 88
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_5
    iget-object v2, p0, Lcom/anythink/core/common/q$1;->a:Lcom/anythink/core/common/f/i;

    iget-object v2, v2, Lcom/anythink/core/common/f/i;->b:Lcom/anythink/core/common/f/at;

    check-cast v2, Lcom/anythink/core/common/f/h;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/h;->y()I

    move-result v2

    if-ne v2, v6, :cond_6

    const/4 v5, 0x1

    .line 79
    :cond_6
    iget-object v2, p0, Lcom/anythink/core/common/q$1;->c:Lcom/anythink/core/d/a;

    invoke-virtual {v2}, Lcom/anythink/core/d/a;->U()Ljava/util/Map;

    move-result-object v2

    const-string v3, "show"

    .line 80
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    if-eqz v5, :cond_7

    .line 101
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 102
    invoke-static {}, Lcom/anythink/core/common/o/n;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 103
    sget-object v4, Lcom/anythink/core/common/q;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "common -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    sget-object v4, Lcom/anythink/core/common/q;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "data -> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anythink/core/common/q$1;->a:Lcom/anythink/core/common/f/i;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/i;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 107
    iget-object v3, p0, Lcom/anythink/core/common/q$1;->a:Lcom/anythink/core/common/f/i;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/i;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 109
    iget-object v3, p0, Lcom/anythink/core/common/q$1;->d:Lcom/anythink/core/common/q;

    iget v4, p0, Lcom/anythink/core/common/q$1;->b:I

    iget-object v5, p0, Lcom/anythink/core/common/q$1;->a:Lcom/anythink/core/common/f/i;

    iget-object v5, v5, Lcom/anythink/core/common/f/i;->b:Lcom/anythink/core/common/f/at;

    move-object v9, v5

    check-cast v9, Lcom/anythink/core/common/f/h;

    move-object v5, v2

    invoke-static/range {v3 .. v9}, Lcom/anythink/core/common/q;->a(Lcom/anythink/core/common/q;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/h;)V

    .line 111
    :cond_7
    sget-object v2, Lcom/anythink/core/common/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleTK cost time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
