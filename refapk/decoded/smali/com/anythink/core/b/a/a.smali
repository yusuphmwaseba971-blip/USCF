.class public final Lcom/anythink/core/b/a/a;
.super Lcom/anythink/core/common/h/a;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:Ljava/lang/String; = "ex_pkg"


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field private final D:Ljava/lang/String;

.field private final E:Ljava/lang/String;

.field private final F:Ljava/lang/String;

.field private final G:Ljava/lang/String;

.field private final H:Ljava/lang/String;

.field private I:I

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:I

.field p:I

.field q:I

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field private v:I

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/anythink/core/d/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Lcom/anythink/core/d/e;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/anythink/core/common/h/a;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/anythink/core/b/a/a;->v:I

    const-string v1, "hb_list"

    .line 43
    iput-object v1, p0, Lcom/anythink/core/b/a/a;->w:Ljava/lang/String;

    const-string v1, "request_id"

    .line 44
    iput-object v1, p0, Lcom/anythink/core/b/a/a;->x:Ljava/lang/String;

    const-string v1, "ch_info"

    .line 45
    iput-object v1, p0, Lcom/anythink/core/b/a/a;->y:Ljava/lang/String;

    const-string v1, "wf"

    .line 46
    iput-object v1, p0, Lcom/anythink/core/b/a/a;->z:Ljava/lang/String;

    const-string v1, "np"

    .line 47
    iput-object v1, p0, Lcom/anythink/core/b/a/a;->A:Ljava/lang/String;

    const-string v1, "hb_size"

    .line 48
    iput-object v1, p0, Lcom/anythink/core/b/a/a;->B:Ljava/lang/String;

    const-string v1, "last_wf"

    .line 50
    iput-object v1, p0, Lcom/anythink/core/b/a/a;->C:Ljava/lang/String;

    const-string v1, "co"

    .line 51
    iput-object v1, p0, Lcom/anythink/core/b/a/a;->D:Ljava/lang/String;

    const-string v1, "adx_ext"

    .line 52
    iput-object v1, p0, Lcom/anythink/core/b/a/a;->E:Ljava/lang/String;

    const-string v1, "debug"

    .line 53
    iput-object v1, p0, Lcom/anythink/core/b/a/a;->F:Ljava/lang/String;

    const-string v1, "sdk_ext"

    .line 60
    iput-object v1, p0, Lcom/anythink/core/b/a/a;->G:Ljava/lang/String;

    const-string v1, "last_win"

    .line 65
    iput-object v1, p0, Lcom/anythink/core/b/a/a;->H:Ljava/lang/String;

    .line 93
    iput v0, p0, Lcom/anythink/core/b/a/a;->I:I

    .line 96
    iput-object p3, p0, Lcom/anythink/core/b/a/a;->d:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/anythink/core/b/a/a;->g:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/anythink/core/b/a/a;->h:Ljava/lang/String;

    .line 99
    iput p5, p0, Lcom/anythink/core/b/a/a;->v:I

    .line 101
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 102
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/json/JSONObject;

    .line 103
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/o/d;->a([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/b/a/a;->e:Ljava/lang/String;

    if-eqz p6, :cond_1

    .line 109
    invoke-virtual {p6}, Lcom/anythink/core/d/e;->Y()I

    move-result p1

    iput p1, p0, Lcom/anythink/core/b/a/a;->l:I

    .line 110
    invoke-virtual {p6}, Lcom/anythink/core/d/e;->an()I

    move-result p1

    iput p1, p0, Lcom/anythink/core/b/a/a;->p:I

    .line 111
    invoke-virtual {p6}, Lcom/anythink/core/d/e;->aN()I

    move-result p1

    iput p1, p0, Lcom/anythink/core/b/a/a;->I:I

    :cond_1
    return-void
.end method

.method private d(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/anythink/core/b/a/a;->q:I

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 403
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a(ILjava/lang/Object;)V
    .locals 0

    .line 185
    invoke-super {p0, p1, p2}, Lcom/anythink/core/common/h/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/anythink/core/b/a/b;)V
    .locals 2

    .line 133
    iget-object v0, p1, Lcom/anythink/core/b/a/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p1, Lcom/anythink/core/b/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/o/d;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/a/a;->f:Ljava/lang/String;

    .line 137
    :cond_0
    iget v0, p1, Lcom/anythink/core/b/a/b;->f:I

    iput v0, p0, Lcom/anythink/core/b/a/a;->q:I

    .line 139
    iget-object v0, p1, Lcom/anythink/core/b/a/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "[]"

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/anythink/core/b/a/b;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p1, Lcom/anythink/core/b/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/o/d;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/a/a;->i:Ljava/lang/String;

    .line 142
    :cond_1
    iget-object v0, p1, Lcom/anythink/core/b/a/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/anythink/core/b/a/b;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    iget-object v0, p1, Lcom/anythink/core/b/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/o/d;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/a/a;->j:Ljava/lang/String;

    .line 145
    :cond_2
    iget-object v0, p1, Lcom/anythink/core/b/a/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/anythink/core/b/a/b;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 146
    iget-object v0, p1, Lcom/anythink/core/b/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/o/d;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/a/a;->r:Ljava/lang/String;

    .line 148
    :cond_3
    iget-object v0, p1, Lcom/anythink/core/b/a/b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/anythink/core/b/a/b;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 149
    iget-object v0, p1, Lcom/anythink/core/b/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/o/d;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/a/a;->s:Ljava/lang/String;

    :cond_4
    const-string v0, ""

    .line 152
    iput-object v0, p0, Lcom/anythink/core/b/a/a;->t:Ljava/lang/String;

    .line 154
    iget-object v0, p1, Lcom/anythink/core/b/a/b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 155
    iget-object v0, p1, Lcom/anythink/core/b/a/b;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/o/d;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/a/a;->t:Ljava/lang/String;

    .line 158
    :cond_5
    iget-object v0, p1, Lcom/anythink/core/b/a/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 159
    iget-object v0, p1, Lcom/anythink/core/b/a/b;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/o/d;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/a/a;->k:Ljava/lang/String;

    .line 162
    :cond_6
    iget-object v0, p1, Lcom/anythink/core/b/a/b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/anythink/core/b/a/b;->i:Ljava/lang/String;

    const-string v1, "{}"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 163
    iget-object p1, p1, Lcom/anythink/core/b/a/b;->i:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/o/d;->a([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/b/a/a;->u:Ljava/lang/String;

    :cond_7
    return-void
.end method

.method protected final a(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/anythink/core/b/a/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .locals 0

    return-void
.end method

.method protected final c()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 192
    iget v1, p0, Lcom/anythink/core/b/a/a;->v:I

    if-nez v1, :cond_0

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    .line 193
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "Content-Type"

    const-string v2, "application/json;charset=utf-8"

    .line 196
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected final d()[B
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/anythink/core/b/a/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected final e()Lorg/json/JSONObject;
    .locals 4

    .line 228
    invoke-super {p0}, Lcom/anythink/core/common/h/a;->e()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "app_id"

    .line 230
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pl_id"

    .line 231
    iget-object v2, p0, Lcom/anythink/core/b/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "session_id"

    .line 232
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/b/a/a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/b/o;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "t_g_id"

    .line 233
    iget v2, p0, Lcom/anythink/core/b/a/a;->l:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "gro_id"

    .line 234
    iget v2, p0, Lcom/anythink/core/b/a/a;->p:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 237
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->y()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sy_id"

    .line 239
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->z()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "bk_id"

    if-nez v2, :cond_1

    .line 244
    :try_start_1
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 246
    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/o;->k(Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    :goto_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "deny"

    .line 252
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/o/e;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    :cond_2
    iget v1, p0, Lcom/anythink/core/b/a/a;->v:I

    if-nez v1, :cond_3

    const-string v1, "misk_spt"

    .line 257
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/o;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "misk_pt_det"

    .line 258
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    invoke-static {}, Lcom/anythink/core/common/o;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v1, "al_it_apil"

    .line 262
    invoke-static {}, Lcom/anythink/core/common/l;->a()Lcom/anythink/core/common/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/l;->c()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    iget-object v1, p0, Lcom/anythink/core/b/a/a;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/core/common/h/c;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "customs"

    .line 267
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    :cond_4
    invoke-static {v0}, Lcom/anythink/core/common/h/c;->a(Lorg/json/JSONObject;)V

    .line 274
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    .line 276
    invoke-static {v1}, Lcom/anythink/core/d/f;->a(Landroid/content/Context;)Lcom/anythink/core/d/f;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/b/a/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1253
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_5

    goto :goto_1

    .line 1262
    :cond_5
    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1263
    invoke-virtual {v1, v2}, Lcom/anythink/core/d/f;->b(Ljava/lang/String;)Lcom/anythink/core/d/e;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1265
    invoke-virtual {v1}, Lcom/anythink/core/d/e;->aH()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "p_c"

    .line 1267
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 279
    :catch_0
    :cond_6
    :goto_1
    :try_start_3
    iget v1, p0, Lcom/anythink/core/b/a/a;->I:I

    if-lez v1, :cond_7

    .line 280
    invoke-static {}, Lcom/anythink/core/c/b;->a()Lcom/anythink/core/c/b;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/b/a/a;->h:Ljava/lang/String;

    iget v3, p0, Lcom/anythink/core/b/a/a;->I:I

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/c/b;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "value_d"

    .line 282
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_7
    return-object v0
.end method

.method protected final f()Lorg/json/JSONObject;
    .locals 3

    .line 293
    invoke-super {p0}, Lcom/anythink/core/common/h/a;->f()Lorg/json/JSONObject;

    move-result-object v0

    .line 296
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "btts"

    .line 297
    invoke-static {}, Lcom/anythink/core/common/o/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method protected final g()Ljava/lang/String;
    .locals 5

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 332
    invoke-virtual {p0}, Lcom/anythink/core/b/a/a;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/o/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {p0}, Lcom/anythink/core/b/a/a;->f()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/o/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "p"

    .line 335
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "p2"

    .line 336
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v1, p0, Lcom/anythink/core/b/a/a;->e:Ljava/lang/String;

    const-string v2, "hb_list"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v1, p0, Lcom/anythink/core/b/a/a;->d:Ljava/lang/String;

    const-string v2, "request_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget v1, p0, Lcom/anythink/core/b/a/a;->q:I

    if-lez v1, :cond_0

    .line 341
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hb_size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_0
    iget v1, p0, Lcom/anythink/core/b/a/a;->v:I

    if-nez v1, :cond_9

    .line 345
    iget-object v1, p0, Lcom/anythink/core/b/a/a;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/anythink/core/b/a/a;->f:Ljava/lang/String;

    const-string v2, "ch_info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/anythink/core/b/a/a;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/anythink/core/b/a/a;->i:Ljava/lang/String;

    const-string v2, "wf"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/anythink/core/b/a/a;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 352
    iget-object v1, p0, Lcom/anythink/core/b/a/a;->j:Ljava/lang/String;

    const-string v2, "np"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :cond_3
    iget-object v1, p0, Lcom/anythink/core/b/a/a;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 355
    iget-object v1, p0, Lcom/anythink/core/b/a/a;->r:Ljava/lang/String;

    const-string v2, "last_wf"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_4
    iget-object v1, p0, Lcom/anythink/core/b/a/a;->s:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 358
    iget-object v1, p0, Lcom/anythink/core/b/a/a;->s:Ljava/lang/String;

    const-string v2, "co"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_5
    iget-object v1, p0, Lcom/anythink/core/b/a/a;->t:Ljava/lang/String;

    const-string v2, "adx_ext"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->k()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 364
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->k()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/o/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ex_pkg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_6
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->A()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->u()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    .line 369
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "debug"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_7
    iget-object v1, p0, Lcom/anythink/core/b/a/a;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 375
    iget-object v1, p0, Lcom/anythink/core/b/a/a;->k:Ljava/lang/String;

    const-string v2, "sdk_ext"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_8
    iget-object v1, p0, Lcom/anythink/core/b/a/a;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 380
    iget-object v1, p0, Lcom/anythink/core/b/a/a;->u:Ljava/lang/String;

    const-string v2, "last_win"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_9
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 386
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 388
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 389
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 391
    :cond_a
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 395
    :catch_0
    invoke-static {}, Ljava/lang/System;->gc()V

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final j()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final l()I
    .locals 1

    const/16 v0, 0x36

    return v0
.end method
