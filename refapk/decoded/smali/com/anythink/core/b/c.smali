.class public final Lcom/anythink/core/b/c;
.super Lcom/anythink/core/b/e;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:Z


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/a;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/a;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/anythink/core/b/e;-><init>(Lcom/anythink/core/common/f/a;)V

    .line 45
    iget v0, p1, Lcom/anythink/core/common/f/a;->f:I

    .line 47
    iget-object v1, p1, Lcom/anythink/core/common/f/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/core/b/c;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/c;->o:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/anythink/core/common/o/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/c;->a:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/anythink/core/common/f/a;->y:Lcom/anythink/core/common/p/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/anythink/core/common/f/a;->y:Lcom/anythink/core/common/p/h;

    invoke-virtual {p1}, Lcom/anythink/core/common/p/h;->a()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lcom/anythink/core/b/c;->b:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_1
    iput-object v1, p0, Lcom/anythink/core/b/c;->c:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 124
    iget-object v0, p0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/v;->a(Landroid/content/Context;)Lcom/anythink/core/common/v;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/v;->b(Ljava/lang/String;)I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->w:Lcom/anythink/core/common/f/ap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->w:Lcom/anythink/core/common/f/ap;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/ap;->c()Ljava/lang/Boolean;

    move-result-object v1

    .line 131
    iget-object v3, p0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v3, v3, Lcom/anythink/core/common/f/a;->w:Lcom/anythink/core/common/f/ap;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/ap;->a()Ljava/lang/String;

    move-result-object v3

    .line 132
    iget-object v4, p0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v4, v4, Lcom/anythink/core/common/f/a;->w:Lcom/anythink/core/common/f/ap;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/ap;->b()Z

    move-result v4

    goto :goto_0

    :cond_0
    const-string v3, ""

    const/4 v4, 0x1

    move-object v1, v2

    .line 135
    :goto_0
    iget-object v5, p0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v5, v5, Lcom/anythink/core/common/f/a;->s:Lcom/anythink/core/common/f/h;

    iget-object v6, p0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v6, v6, Lcom/anythink/core/common/f/a;->c:Lcom/anythink/core/common/f/v;

    iget v6, v6, Lcom/anythink/core/common/f/v;->d:I

    iget-object v7, p0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget v7, v7, Lcom/anythink/core/common/f/a;->t:I

    iget-boolean v8, p0, Lcom/anythink/core/b/c;->d:Z

    iget-boolean v9, p0, Lcom/anythink/core/b/c;->e:Z

    iget-object v10, p0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v10, v10, Lcom/anythink/core/common/f/a;->b:Landroid/content/Context;

    .line 140
    invoke-static {v10}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;)Z

    move-result v10

    .line 3030
    new-instance v11, Lcom/anythink/core/common/f/k;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/h;->ae()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v2}, Lcom/anythink/core/common/f/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "1004684"

    .line 3031
    iput-object v2, v11, Lcom/anythink/core/common/f/k;->a:Ljava/lang/String;

    .line 3032
    invoke-virtual {v5}, Lcom/anythink/core/common/f/h;->ad()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/anythink/core/common/f/k;->b:Ljava/lang/String;

    .line 3033
    invoke-virtual {v5}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/anythink/core/common/f/k;->d:Ljava/lang/String;

    .line 3034
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/anythink/core/common/f/k;->k:Ljava/lang/String;

    .line 3035
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/anythink/core/common/f/k;->m:Ljava/lang/String;

    .line 3036
    invoke-virtual {v5}, Lcom/anythink/core/common/f/h;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/anythink/core/common/f/k;->n:Ljava/lang/String;

    const-string v0, "1"

    const-string v2, "2"

    if-eqz v4, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 3037
    :goto_1
    iput-object v4, v11, Lcom/anythink/core/common/f/k;->o:Ljava/lang/String;

    .line 3039
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lcom/anythink/core/common/f/k;->p:Ljava/lang/String;

    .line 3041
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3042
    iput-object p2, v11, Lcom/anythink/core/common/f/k;->q:Ljava/lang/String;

    .line 3044
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 3045
    iput-object p1, v11, Lcom/anythink/core/common/f/k;->r:Ljava/lang/String;

    :cond_3
    if-nez v1, :cond_4

    const-string p1, "0"

    goto :goto_2

    .line 3051
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    move-object p1, v0

    goto :goto_2

    :cond_5
    move-object p1, v2

    :goto_2
    iput-object p1, v11, Lcom/anythink/core/common/f/k;->s:Ljava/lang/String;

    .line 3054
    iput-object v3, v11, Lcom/anythink/core/common/f/k;->t:Ljava/lang/String;

    if-eqz v8, :cond_6

    move-object p1, v0

    goto :goto_3

    :cond_6
    move-object p1, v2

    .line 3056
    :goto_3
    iput-object p1, v11, Lcom/anythink/core/common/f/k;->u:Ljava/lang/String;

    if-eqz v9, :cond_7

    move-object p1, v0

    goto :goto_4

    :cond_7
    move-object p1, v2

    .line 3057
    :goto_4
    iput-object p1, v11, Lcom/anythink/core/common/f/k;->v:Ljava/lang/String;

    .line 3058
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v11, Lcom/anythink/core/common/f/k;->w:Ljava/lang/String;

    if-eqz v10, :cond_8

    goto :goto_5

    :cond_8
    move-object v0, v2

    .line 3059
    :goto_5
    iput-object v0, v11, Lcom/anythink/core/common/f/k;->x:Ljava/lang/String;

    .line 3062
    invoke-static {v11}, Lcom/anythink/core/common/n/c;->b(Lcom/anythink/core/common/f/k;)V

    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/anythink/core/b/c;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 177
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f/au;

    .line 179
    iget-object v2, p0, Lcom/anythink/core/b/c;->o:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/anythink/core/common/o/v;->a(Ljava/lang/String;Lcom/anythink/core/common/f/au;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 181
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/f/ay$a;

    .line 182
    invoke-virtual {v2}, Lcom/anythink/core/common/f/ay$a;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/b/c;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f/au;

    .line 191
    iget-object v2, p0, Lcom/anythink/core/b/c;->o:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/anythink/core/common/o/v;->a(Ljava/lang/String;Lcom/anythink/core/common/f/au;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 192
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 193
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/f/ay$a;

    .line 194
    invoke-virtual {v2}, Lcom/anythink/core/common/f/ay$a;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    return-void
.end method

.method private b(Lorg/json/JSONArray;)V
    .locals 8

    .line 203
    iget-object v0, p0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->y:Lcom/anythink/core/common/p/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->y:Lcom/anythink/core/common/p/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/h;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 206
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 208
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/f/au;

    .line 209
    invoke-virtual {v3}, Lcom/anythink/core/common/f/au;->Z()Z

    move-result v4

    if-nez v4, :cond_2

    .line 213
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "ad_source_id"

    .line 214
    invoke-virtual {v3}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "price"

    .line 215
    invoke-virtual {v3}, Lcom/anythink/core/common/f/au;->y()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 216
    invoke-virtual {v3}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v6, "tp_bid_id"

    .line 218
    iget-object v5, v5, Lcom/anythink/core/common/f/q;->g:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v5, "s_pty"

    .line 220
    invoke-virtual {v3}, Lcom/anythink/core/common/f/au;->af()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 221
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 223
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 3

    .line 145
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "refresh"

    .line 147
    iget-object v2, p0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v2, v2, Lcom/anythink/core/common/f/a;->s:Lcom/anythink/core/common/f/h;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/h;->K()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :catchall_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/o;J)V
    .locals 0

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/core/b/e;->a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/o;J)V

    return-void
.end method

.method protected final a(Ljava/util/List;Lcom/anythink/core/common/h/k;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/anythink/core/common/h/k;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 82
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 83
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 85
    invoke-direct {v0, v2}, Lcom/anythink/core/b/c;->b(Lorg/json/JSONArray;)V

    .line 86
    invoke-direct {v0, v1}, Lcom/anythink/core/b/c;->a(Lorg/json/JSONArray;)V

    .line 90
    new-instance v3, Lcom/anythink/core/b/a/b;

    invoke-direct {v3}, Lcom/anythink/core/b/a/b;-><init>()V

    .line 91
    iget-object v4, v0, Lcom/anythink/core/b/c;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/anythink/core/b/a/b;->a:Ljava/lang/String;

    .line 92
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/anythink/core/b/a/b;->b:Ljava/lang/String;

    .line 94
    iget-object v2, v0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v2, v2, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/az;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/d/e;->aC()I

    move-result v2

    iput v2, v3, Lcom/anythink/core/b/a/b;->f:I

    .line 98
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const-string v4, ""

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    .line 100
    :goto_0
    iget-object v2, v0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v2, v2, Lcom/anythink/core/common/f/a;->v:Lcom/anythink/core/common/f/ay;

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, v0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v2, v2, Lcom/anythink/core/common/f/a;->v:Lcom/anythink/core/common/f/ay;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/ay;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    iput-object v2, v3, Lcom/anythink/core/b/a/b;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v4

    .line 104
    :goto_1
    iput-object v1, v3, Lcom/anythink/core/b/a/b;->e:Ljava/lang/String;

    .line 106
    iget-object v5, v0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v5, v5, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/az;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/d/e;->q()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/anythink/core/b/a/b;->g:Ljava/lang/String;

    .line 107
    invoke-direct/range {p0 .. p0}, Lcom/anythink/core/b/c;->f()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/anythink/core/b/a/b;->h:Ljava/lang/String;

    .line 108
    iget-object v5, v0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v5, v5, Lcom/anythink/core/common/f/a;->x:Lcom/anythink/core/common/f/p;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v5, v5, Lcom/anythink/core/common/f/a;->x:Lcom/anythink/core/common/f/p;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/p;->f()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v4

    :goto_2
    iput-object v5, v3, Lcom/anythink/core/b/a/b;->i:Ljava/lang/String;

    .line 1124
    iget-object v5, v0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v5, v5, Lcom/anythink/core/common/f/a;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/anythink/core/common/v;->a(Landroid/content/Context;)Lcom/anythink/core/common/v;

    move-result-object v5

    iget-object v6, v0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v6, v6, Lcom/anythink/core/common/f/a;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/v;->b(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    .line 1129
    iget-object v7, v0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v7, v7, Lcom/anythink/core/common/f/a;->w:Lcom/anythink/core/common/f/ap;

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    .line 1130
    iget-object v4, v0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v4, v4, Lcom/anythink/core/common/f/a;->w:Lcom/anythink/core/common/f/ap;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/ap;->c()Ljava/lang/Boolean;

    move-result-object v4

    .line 1131
    iget-object v6, v0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v6, v6, Lcom/anythink/core/common/f/a;->w:Lcom/anythink/core/common/f/ap;

    invoke-virtual {v6}, Lcom/anythink/core/common/f/ap;->a()Ljava/lang/String;

    move-result-object v6

    .line 1132
    iget-object v7, v0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v7, v7, Lcom/anythink/core/common/f/a;->w:Lcom/anythink/core/common/f/ap;

    invoke-virtual {v7}, Lcom/anythink/core/common/f/ap;->b()Z

    move-result v7

    goto :goto_3

    :cond_3
    move-object v6, v4

    move-object v4, v8

    const/4 v7, 0x1

    .line 1135
    :goto_3
    iget-object v9, v0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v9, v9, Lcom/anythink/core/common/f/a;->s:Lcom/anythink/core/common/f/h;

    iget-object v10, v0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v10, v10, Lcom/anythink/core/common/f/a;->c:Lcom/anythink/core/common/f/v;

    iget v10, v10, Lcom/anythink/core/common/f/v;->d:I

    iget-object v11, v0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget v11, v11, Lcom/anythink/core/common/f/a;->t:I

    iget-boolean v12, v0, Lcom/anythink/core/b/c;->d:Z

    iget-boolean v13, v0, Lcom/anythink/core/b/c;->e:Z

    iget-object v14, v0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v14, v14, Lcom/anythink/core/common/f/a;->b:Landroid/content/Context;

    .line 1140
    invoke-static {v14}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;)Z

    move-result v14

    .line 2030
    new-instance v15, Lcom/anythink/core/common/f/k;

    move-object/from16 v16, v3

    invoke-virtual {v9}, Lcom/anythink/core/common/f/h;->ae()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3, v8}, Lcom/anythink/core/common/f/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "1004684"

    .line 2031
    iput-object v3, v15, Lcom/anythink/core/common/f/k;->a:Ljava/lang/String;

    .line 2032
    invoke-virtual {v9}, Lcom/anythink/core/common/f/h;->ad()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/anythink/core/common/f/k;->b:Ljava/lang/String;

    .line 2033
    invoke-virtual {v9}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/anythink/core/common/f/k;->d:Ljava/lang/String;

    .line 2034
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/anythink/core/common/f/k;->k:Ljava/lang/String;

    .line 2035
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/anythink/core/common/f/k;->m:Ljava/lang/String;

    .line 2036
    invoke-virtual {v9}, Lcom/anythink/core/common/f/h;->ae()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/anythink/core/common/f/k;->n:Ljava/lang/String;

    const-string v3, "1"

    const-string v5, "2"

    if-eqz v7, :cond_4

    move-object v7, v3

    goto :goto_4

    :cond_4
    move-object v7, v5

    .line 2037
    :goto_4
    iput-object v7, v15, Lcom/anythink/core/common/f/k;->o:Ljava/lang/String;

    .line 2039
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v15, Lcom/anythink/core/common/f/k;->p:Ljava/lang/String;

    .line 2041
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2042
    iput-object v1, v15, Lcom/anythink/core/common/f/k;->q:Ljava/lang/String;

    .line 2044
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2045
    iput-object v2, v15, Lcom/anythink/core/common/f/k;->r:Ljava/lang/String;

    :cond_6
    if-nez v4, :cond_7

    const-string v1, "0"

    goto :goto_5

    .line 2051
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, v3

    goto :goto_5

    :cond_8
    move-object v1, v5

    :goto_5
    iput-object v1, v15, Lcom/anythink/core/common/f/k;->s:Ljava/lang/String;

    .line 2054
    iput-object v6, v15, Lcom/anythink/core/common/f/k;->t:Ljava/lang/String;

    if-eqz v12, :cond_9

    move-object v1, v3

    goto :goto_6

    :cond_9
    move-object v1, v5

    .line 2056
    :goto_6
    iput-object v1, v15, Lcom/anythink/core/common/f/k;->u:Ljava/lang/String;

    if-eqz v13, :cond_a

    move-object v1, v3

    goto :goto_7

    :cond_a
    move-object v1, v5

    .line 2057
    :goto_7
    iput-object v1, v15, Lcom/anythink/core/common/f/k;->v:Ljava/lang/String;

    .line 2058
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/anythink/core/common/f/k;->w:Ljava/lang/String;

    if-eqz v14, :cond_b

    goto :goto_8

    :cond_b
    move-object v3, v5

    .line 2059
    :goto_8
    iput-object v3, v15, Lcom/anythink/core/common/f/k;->x:Ljava/lang/String;

    .line 2062
    invoke-static {v15}, Lcom/anythink/core/common/n/c;->b(Lcom/anythink/core/common/f/k;)V

    .line 117
    new-instance v1, Lcom/anythink/core/b/a/a;

    iget-object v5, v0, Lcom/anythink/core/b/c;->p:Ljava/lang/String;

    iget-object v6, v0, Lcom/anythink/core/b/c;->o:Ljava/lang/String;

    iget-object v7, v0, Lcom/anythink/core/b/c;->n:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v2, v0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v2, v2, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/az;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v10

    move-object v4, v1

    move-object/from16 v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/anythink/core/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/anythink/core/d/e;)V

    move-object/from16 v2, v16

    .line 118
    invoke-virtual {v1, v2}, Lcom/anythink/core/b/a/a;->a(Lcom/anythink/core/b/a/b;)V

    const/4 v2, 0x0

    move-object/from16 v3, p2

    .line 119
    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/b/a/a;->a(ILcom/anythink/core/common/h/k;)V

    return-void
.end method

.method protected final declared-synchronized a(Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f/au;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/anythink/core/b/e;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 59
    iget-object p1, p0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object p1, p1, Lcom/anythink/core/common/f/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/core/common/v;->a(Landroid/content/Context;)Lcom/anythink/core/common/v;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/v;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/anythink/core/b/c;->d:Z

    .line 62
    iput-boolean p1, p0, Lcom/anythink/core/b/c;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 64
    :try_start_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_0
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    :try_start_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/f/au;

    .line 68
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->d()I

    move-result v0

    const/16 v1, 0x42

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 69
    iput-boolean v2, p0, Lcom/anythink/core/b/c;->d:Z

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->d()I

    move-result p2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 71
    iput-boolean v2, p0, Lcom/anythink/core/b/c;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 77
    :cond_2
    monitor-exit p0

    return-void

    .line 78
    :catchall_1
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/anythink/core/b/c;->f:Lcom/anythink/core/common/f/a;

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->l:Ljava/lang/String;

    return-object v0
.end method
