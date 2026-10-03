.class final Lcom/anythink/core/b/d/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/h;Ljava/util/List;JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/h;

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Ljava/util/List;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f/h;JILjava/util/List;I)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/anythink/core/b/d/b$1;->a:Lcom/anythink/core/common/f/h;

    iput-wide p2, p0, Lcom/anythink/core/b/d/b$1;->b:J

    iput p4, p0, Lcom/anythink/core/b/d/b$1;->c:I

    iput-object p5, p0, Lcom/anythink/core/b/d/b$1;->d:Ljava/util/List;

    iput p6, p0, Lcom/anythink/core/b/d/b$1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 82
    sget-object v0, Lcom/anythink/core/b/d/b;->a:Ljava/lang/String;

    .line 83
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/anythink/core/b/d/b$1;->a:Lcom/anythink/core/common/f/h;

    iget-wide v2, p0, Lcom/anythink/core/b/d/b$1;->b:J

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/f/h;->e(J)V

    .line 86
    iget-object v1, p0, Lcom/anythink/core/b/d/b$1;->a:Lcom/anythink/core/common/f/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/f/h;->f(J)V

    .line 87
    iget-object v1, p0, Lcom/anythink/core/b/d/b$1;->a:Lcom/anythink/core/common/f/h;

    iget v2, p0, Lcom/anythink/core/b/d/b$1;->c:I

    .line 1721
    iput v2, v1, Lcom/anythink/core/common/f/h;->q:I

    const/4 v1, 0x0

    .line 89
    :goto_0
    iget-object v2, p0, Lcom/anythink/core/b/d/b$1;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 91
    iget-object v2, p0, Lcom/anythink/core/b/d/b$1;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/f/au;

    .line 93
    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->m()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_6

    .line 97
    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->k()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 102
    :try_start_0
    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->p()I

    move-result v3

    .line 104
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "sorttype"

    .line 106
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "unit_id"

    .line 107
    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "bidresult"

    .line 108
    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->O()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "bidprice"

    .line 109
    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->L()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "0"

    if-eqz v5, :cond_0

    :try_start_1
    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->y()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v6

    :goto_1
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "s_pty"

    .line 110
    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->L()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->af()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "nw_firm_id"

    .line 111
    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "tp_bid_id"

    .line 112
    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v5

    iget-object v5, v5, Lcom/anythink/core/common/f/q;->g:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "rl_bid_status"

    .line 113
    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->N()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "errormsg"

    .line 114
    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->A()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->W()I

    move-result v3

    .line 118
    iget v5, p0, Lcom/anythink/core/b/d/b$1;->e:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "4"

    .line 119
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "2"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "3"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_5

    :cond_3
    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    .line 121
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_4
    const-string v5, "ad_type"

    .line 122
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_5
    :try_start_3
    const-string v3, "ads_list_type"

    .line 128
    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->a()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 135
    :cond_7
    iget-object v1, p0, Lcom/anythink/core/b/d/b$1;->a:Lcom/anythink/core/common/f/h;

    iget v2, p0, Lcom/anythink/core/b/d/b$1;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/h;->y(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/anythink/core/b/d/b$1;->a:Lcom/anythink/core/common/f/h;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/f/h;->r(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/n/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/a;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/anythink/core/b/d/b$1;->a:Lcom/anythink/core/common/f/h;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/n/a;->a(ILcom/anythink/core/common/f/at;)V

    return-void
.end method
