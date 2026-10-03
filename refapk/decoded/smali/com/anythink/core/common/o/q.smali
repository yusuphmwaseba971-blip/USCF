.class public final Lcom/anythink/core/common/o/q;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/Random; = null

.field private static final b:Ljava/lang/String; = "PlacementPrepareUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/anythink/core/common/o/q;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/h;)Lcom/anythink/core/common/f/ao;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/anythink/core/d/k;->b(Lcom/anythink/core/d/e;)Ljava/util/List;

    move-result-object v0

    .line 56
    invoke-static {p0}, Lcom/anythink/core/d/k;->a(Lcom/anythink/core/d/e;)Ljava/util/List;

    move-result-object v1

    .line 58
    invoke-static {p0}, Lcom/anythink/core/d/k;->c(Lcom/anythink/core/d/e;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 60
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 63
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/core/common/f/au;

    .line 65
    invoke-static {v0, v5}, Lcom/anythink/core/common/o/h;->a(Ljava/util/List;Lcom/anythink/core/common/f/au;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {}, Lcom/anythink/core/c/a;->a()Lcom/anythink/core/c/a;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p0}, Lcom/anythink/core/c/a;->a(Lcom/anythink/core/common/f/h;Ljava/util/List;Lcom/anythink/core/d/e;)V

    .line 71
    invoke-static {p0}, Lcom/anythink/core/d/k;->d(Lcom/anythink/core/d/e;)Ljava/util/List;

    move-result-object v2

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    .line 75
    new-instance v4, Lcom/anythink/core/common/f/ao;

    invoke-direct {v4, p0, p1, v3}, Lcom/anythink/core/common/f/ao;-><init>(Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/h;I)V

    .line 76
    invoke-virtual {v4, v0}, Lcom/anythink/core/common/f/ao;->a(Ljava/util/List;)V

    .line 77
    invoke-virtual {v4, v1}, Lcom/anythink/core/common/f/ao;->b(Ljava/util/List;)V

    .line 78
    invoke-virtual {v4, v2}, Lcom/anythink/core/common/f/ao;->c(Ljava/util/List;)V

    .line 82
    invoke-virtual {v4}, Lcom/anythink/core/common/f/ao;->c()Lcom/anythink/core/common/f/h;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/anythink/core/common/o/q;->a(Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/h;Ljava/util/List;)V

    .line 83
    invoke-virtual {v4}, Lcom/anythink/core/common/f/ao;->c()Lcom/anythink/core/common/f/h;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/anythink/core/common/o/q;->a(Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/h;Ljava/util/List;)V

    .line 84
    invoke-virtual {v4}, Lcom/anythink/core/common/f/ao;->c()Lcom/anythink/core/common/f/h;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/anythink/core/common/o/q;->a(Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/h;Ljava/util/List;)V

    return-object v4
.end method

.method public static a(Lcom/anythink/core/common/f/ao;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/ao;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/anythink/core/common/o/q$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/o/q$1;-><init>(Lcom/anythink/core/common/f/ao;)V

    invoke-static {p1, v0}, Lcom/anythink/core/common/o/h;->a(Ljava/util/List;Lcom/anythink/core/common/g/d;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/h;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/d/e;",
            "Lcom/anythink/core/common/f/h;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;)V"
        }
    .end annotation

    .line 309
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 310
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/au;

    .line 312
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->K()I

    move-result v1

    invoke-static {v1, p0, p1, v0}, Lcom/anythink/core/common/o/q;->a(ILcom/anythink/core/d/e;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->c()V

    .line 314
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Lcom/anythink/core/common/f/h;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;",
            "Lcom/anythink/core/common/f/h;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;)V"
        }
    .end annotation

    .line 227
    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 235
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x7

    if-ltz v1, :cond_8

    .line 236
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/anythink/core/common/f/au;

    .line 237
    invoke-virtual {v6}, Lcom/anythink/core/common/f/au;->Z()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 238
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_1
    invoke-virtual {v6}, Lcom/anythink/core/common/f/au;->n()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_7

    .line 246
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;Lcom/anythink/core/common/f/au;)Lcom/anythink/core/common/f/av;

    move-result-object v7

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    .line 249
    invoke-virtual {v7, v9}, Lcom/anythink/core/common/f/av;->a(Lcom/anythink/core/common/f/q;)Lcom/anythink/core/common/f/f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/core/common/f/f;->a()Lcom/anythink/core/common/f/b;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v9

    :goto_1
    if-eqz v7, :cond_3

    .line 256
    invoke-virtual {v7}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    move-result-object v7

    const/4 v9, 0x3

    invoke-virtual {v6, v7, v3, v9, v2}, Lcom/anythink/core/common/f/au;->a(Lcom/anythink/core/common/f/au;III)V

    .line 257
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "CacehMotify:Not real time bidding, max price cache:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v6}, Lcom/anythink/core/common/f/au;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, v6

    :cond_3
    if-nez v9, :cond_5

    .line 265
    :try_start_0
    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Lcom/anythink/core/b/f;->a(Ljava/lang/String;Lcom/anythink/core/common/f/au;)Lcom/anythink/core/common/f/q;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 266
    invoke-virtual {v7}, Lcom/anythink/core/common/f/q;->a()Z

    move-result v10

    if-nez v10, :cond_4

    .line 267
    invoke-virtual {v6, v7, v3, v8, v2}, Lcom/anythink/core/common/f/au;->a(Lcom/anythink/core/common/f/q;III)V

    move-object v9, v6

    goto :goto_2

    :cond_4
    if-eqz v7, :cond_5

    .line 273
    new-instance v8, Lcom/anythink/core/common/f/y;

    invoke-direct {v8, v2, v6, p2}, Lcom/anythink/core/common/f/y;-><init>(ILcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;)V

    .line 275
    invoke-static {v7, v8, v2}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/y;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    nop

    :cond_5
    :goto_2
    if-eqz v9, :cond_7

    .line 286
    :try_start_1
    invoke-virtual {v6}, Lcom/anythink/core/common/f/au;->m()I

    move-result v7

    if-ne v7, v5, :cond_6

    const/4 v4, 0x1

    .line 289
    :cond_6
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 290
    invoke-static {p0, v6}, Lcom/anythink/core/common/o/h;->a(Ljava/util/List;Lcom/anythink/core/common/f/au;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_8
    if-eqz v4, :cond_a

    .line 299
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v2

    :goto_3
    if-ltz p0, :cond_a

    .line 300
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/f/au;

    .line 301
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->m()I

    move-result p2

    if-ne p2, v5, :cond_9

    .line 302
    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 p0, p0, -0x1

    goto :goto_3

    :cond_a
    :goto_4
    return-void
.end method

.method private static a(ILcom/anythink/core/d/e;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;)Z
    .locals 16

    move/from16 v0, p0

    move-object/from16 v7, p3

    .line 330
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/core/common/f/h;->S()Lcom/anythink/core/common/f/h;

    move-result-object v8

    .line 331
    invoke-virtual/range {p2 .. p2}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 332
    invoke-static {v8, v7, v10, v10}, Lcom/anythink/core/common/o/u;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;IZ)V

    .line 334
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/d/e;->ag()I

    move-result v3

    invoke-virtual {v1, v9, v2, v3}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/anythink/core/common/f/an$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 335
    iget v2, v1, Lcom/anythink/core/common/f/an$a;->e:I

    move v11, v2

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 336
    iget v1, v1, Lcom/anythink/core/common/f/an$a;->d:I

    move v12, v1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 338
    :goto_1
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/d/e;->ag()I

    move-result v2

    invoke-virtual {v1, v9, v7, v2}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;Lcom/anythink/core/common/f/au;I)Z

    move-result v1

    const/4 v13, 0x2

    const-string v14, ""

    if-eqz v1, :cond_2

    const/4 v1, -0x5

    .line 339
    invoke-virtual {v7, v1}, Lcom/anythink/core/common/f/au;->g(I)V

    const-string v15, "Out of Cap"

    .line 340
    invoke-virtual {v7, v15}, Lcom/anythink/core/common/f/au;->h(Ljava/lang/String;)V

    const-string v3, "Out of Cap"

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move v5, v11

    move v6, v12

    .line 341
    invoke-static/range {v1 .. v6}, Lcom/anythink/core/common/o/o;->a(Ljava/lang/String;Lcom/anythink/core/common/f/h;Ljava/lang/String;Lcom/anythink/core/common/f/au;II)V

    const-string v1, "2003"

    .line 342
    invoke-static {v1, v14, v15}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-static {v8, v13, v1}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/h;ILcom/anythink/core/api/AdError;)V

    .line 345
    :cond_2
    invoke-static {}, Lcom/anythink/core/a/c;->a()Lcom/anythink/core/a/c;

    move-result-object v1

    invoke-virtual {v1, v9, v7}, Lcom/anythink/core/a/c;->a(Ljava/lang/String;Lcom/anythink/core/common/f/au;)Z

    move-result v1

    const/4 v2, -0x6

    const/4 v15, 0x1

    if-eqz v1, :cond_3

    .line 346
    invoke-virtual {v7, v2}, Lcom/anythink/core/common/f/au;->g(I)V

    const-string v6, "Out of Pacing"

    .line 347
    invoke-virtual {v7, v6}, Lcom/anythink/core/common/f/au;->h(Ljava/lang/String;)V

    const-string v2, "Out of Pacing"

    move-object v0, v9

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move v4, v11

    move v5, v12

    .line 348
    invoke-static/range {v0 .. v5}, Lcom/anythink/core/common/o/o;->a(Ljava/lang/String;Lcom/anythink/core/common/f/h;Ljava/lang/String;Lcom/anythink/core/common/f/au;II)V

    const/4 v0, 0x3

    const-string v1, "2004"

    .line 349
    invoke-static {v1, v14, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/h;ILcom/anythink/core/api/AdError;)V

    return v15

    .line 353
    :cond_3
    invoke-static {}, Lcom/anythink/core/common/c;->a()Lcom/anythink/core/common/c;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/anythink/core/common/c;->a(Lcom/anythink/core/common/f/au;)Z

    move-result v1

    const-string v6, "2007"

    const/4 v5, 0x4

    if-eqz v1, :cond_4

    .line 354
    invoke-virtual {v7, v2}, Lcom/anythink/core/common/f/au;->g(I)V

    const-string v10, "Request fail in pacing"

    .line 355
    invoke-virtual {v7, v10}, Lcom/anythink/core/common/f/au;->h(Ljava/lang/String;)V

    const-string v2, "Request fail in pacing"

    move-object v0, v9

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move v4, v11

    const/4 v7, 0x4

    move v5, v12

    .line 356
    invoke-static/range {v0 .. v5}, Lcom/anythink/core/common/o/o;->a(Ljava/lang/String;Lcom/anythink/core/common/f/h;Ljava/lang/String;Lcom/anythink/core/common/f/au;II)V

    .line 357
    invoke-static {v6, v14, v10}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-static {v8, v7, v0}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/h;ILcom/anythink/core/api/AdError;)V

    return v15

    .line 361
    :cond_4
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/anythink/core/common/b/o;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/4 v1, -0x8

    if-eqz v4, :cond_5

    .line 362
    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 363
    invoke-virtual {v7, v1}, Lcom/anythink/core/common/f/au;->g(I)V

    const-string v10, "Request fail in filter list"

    .line 364
    invoke-virtual {v7, v10}, Lcom/anythink/core/common/f/au;->h(Ljava/lang/String;)V

    const-string v2, "Request fail in filter list"

    move-object v0, v9

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object v6, v4

    move v4, v11

    move v5, v12

    .line 365
    invoke-static/range {v0 .. v6}, Lcom/anythink/core/common/o/o;->a(Ljava/lang/String;Lcom/anythink/core/common/f/h;Ljava/lang/String;Lcom/anythink/core/common/f/au;IILjava/util/List;)V

    const/4 v0, 0x5

    const-string v1, "2010"

    .line 366
    invoke-static {v1, v14, v10}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/h;ILcom/anythink/core/api/AdError;)V

    return v15

    .line 370
    :cond_5
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/anythink/core/common/b/o;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 371
    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/common/f/au;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 372
    invoke-virtual {v7, v1}, Lcom/anythink/core/common/f/au;->g(I)V

    const-string v10, "Filter by network firm id."

    .line 373
    invoke-virtual {v7, v10}, Lcom/anythink/core/common/f/au;->h(Ljava/lang/String;)V

    const-string v2, "Filter by network firm id."

    move-object v0, v9

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object v6, v4

    move v4, v11

    move v5, v12

    .line 374
    invoke-static/range {v0 .. v6}, Lcom/anythink/core/common/o/o;->a(Ljava/lang/String;Lcom/anythink/core/common/f/h;Ljava/lang/String;Lcom/anythink/core/common/f/au;IILjava/util/List;)V

    const/16 v0, 0x9

    const-string v1, "2013"

    .line 375
    invoke-static {v1, v14, v10}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/h;ILcom/anythink/core/api/AdError;)V

    return v15

    .line 379
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/common/f/au;->k()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 380
    invoke-static {}, Lcom/anythink/core/common/c;->a()Lcom/anythink/core/common/c;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/anythink/core/common/c;->b(Lcom/anythink/core/common/f/au;)Z

    move-result v2

    const/4 v3, -0x7

    if-eqz v2, :cond_7

    .line 381
    invoke-virtual {v7, v3}, Lcom/anythink/core/common/f/au;->g(I)V

    const-string v10, "Bid fail in pacing"

    .line 382
    invoke-virtual {v7, v10}, Lcom/anythink/core/common/f/au;->h(Ljava/lang/String;)V

    const-string v2, "Bid fail in pacing"

    move-object v0, v9

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move v4, v11

    const/4 v7, 0x4

    move v5, v12

    .line 383
    invoke-static/range {v0 .. v5}, Lcom/anythink/core/common/o/o;->a(Ljava/lang/String;Lcom/anythink/core/common/f/h;Ljava/lang/String;Lcom/anythink/core/common/f/au;II)V

    .line 384
    invoke-static {v6, v14, v10}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-static {v8, v7, v0}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/h;ILcom/anythink/core/api/AdError;)V

    return v15

    .line 389
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/common/f/au;->V()I

    move-result v2

    if-eq v2, v15, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/common/f/au;->m()I

    move-result v2

    if-ne v2, v13, :cond_8

    .line 390
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/anythink/core/common/u;->c(Ljava/lang/String;)Lcom/anythink/core/common/f/e;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 391
    invoke-virtual {v2, v7}, Lcom/anythink/core/common/f/e;->a(Lcom/anythink/core/common/f/au;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 392
    invoke-virtual {v7, v3}, Lcom/anythink/core/common/f/au;->g(I)V

    const-string v6, "Can\'t Load On Showing"

    .line 393
    invoke-virtual {v7, v6}, Lcom/anythink/core/common/f/au;->h(Ljava/lang/String;)V

    const-string v2, "Can\'t Load On Showing"

    move-object v0, v9

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move v4, v11

    move v5, v12

    .line 394
    invoke-static/range {v0 .. v5}, Lcom/anythink/core/common/o/o;->a(Ljava/lang/String;Lcom/anythink/core/common/f/h;Ljava/lang/String;Lcom/anythink/core/common/f/au;II)V

    const/4 v0, 0x7

    const-string v1, "2011"

    .line 395
    invoke-static {v1, v14, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-static {v2, v0, v1}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/h;ILcom/anythink/core/api/AdError;)V

    return v15

    :cond_8
    move-object/from16 v2, p2

    .line 401
    invoke-static {}, Lcom/anythink/core/common/c;->a()Lcom/anythink/core/common/c;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v3, v0, v4, v7}, Lcom/anythink/core/common/c;->a(ILcom/anythink/core/d/e;Lcom/anythink/core/common/f/au;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 402
    invoke-virtual {v7, v1}, Lcom/anythink/core/common/f/au;->g(I)V

    const-string v6, "Error Code Request fail in pacing"

    .line 403
    invoke-virtual {v7, v6}, Lcom/anythink/core/common/f/au;->h(Ljava/lang/String;)V

    const-string v3, "Error Code Request fail in pacing"

    move-object v0, v9

    move-object/from16 v1, p2

    move-object v2, v3

    move-object/from16 v3, p3

    move v4, v11

    move v5, v12

    .line 404
    invoke-static/range {v0 .. v5}, Lcom/anythink/core/common/o/o;->a(Ljava/lang/String;Lcom/anythink/core/common/f/h;Ljava/lang/String;Lcom/anythink/core/common/f/au;II)V

    const/16 v0, 0xa

    const-string v1, "2014"

    .line 405
    invoke-static {v1, v14, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/h;ILcom/anythink/core/api/AdError;)V

    return v15

    :cond_9
    if-eqz v0, :cond_a

    .line 409
    invoke-virtual/range {p3 .. p3}, Lcom/anythink/core/common/f/au;->aC()I

    move-result v0

    if-ne v0, v15, :cond_a

    const-string v6, "System splash not allow preload"

    .line 411
    invoke-virtual {v7, v6}, Lcom/anythink/core/common/f/au;->h(Ljava/lang/String;)V

    const-string v3, "System splash not allow preload"

    move-object v0, v9

    move-object/from16 v1, p2

    move-object v2, v3

    move-object/from16 v3, p3

    move v4, v11

    move v5, v12

    .line 412
    invoke-static/range {v0 .. v5}, Lcom/anythink/core/common/o/o;->a(Ljava/lang/String;Lcom/anythink/core/common/f/h;Ljava/lang/String;Lcom/anythink/core/common/f/au;II)V

    const/16 v0, 0xb

    const-string v1, "2015"

    .line 413
    invoke-static {v1, v1, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/h;ILcom/anythink/core/api/AdError;)V

    return v15

    :cond_a
    return v10
.end method

.method public static b(Lcom/anythink/core/common/f/ao;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/ao;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;)V"
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/anythink/core/common/f/ao;->d()Ljava/util/List;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lcom/anythink/core/common/f/ao;->e()Ljava/util/List;

    move-result-object v1

    .line 218
    invoke-virtual {p0}, Lcom/anythink/core/common/f/ao;->f()Ljava/util/List;

    move-result-object v2

    .line 220
    invoke-virtual {p0}, Lcom/anythink/core/common/f/ao;->c()Lcom/anythink/core/common/f/h;

    move-result-object v3

    invoke-static {v0, v1, v3, p1}, Lcom/anythink/core/common/o/q;->a(Ljava/util/List;Ljava/util/List;Lcom/anythink/core/common/f/h;Ljava/util/List;)V

    .line 221
    invoke-virtual {p0}, Lcom/anythink/core/common/f/ao;->c()Lcom/anythink/core/common/f/h;

    move-result-object p0

    invoke-static {v0, v2, p0, p1}, Lcom/anythink/core/common/o/q;->a(Ljava/util/List;Ljava/util/List;Lcom/anythink/core/common/f/h;Ljava/util/List;)V

    return-void
.end method
