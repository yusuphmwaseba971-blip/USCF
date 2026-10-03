.class public Lcom/anythink/core/b/d/b;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String; = "b"

.field public static final b:Ljava/lang/String; = "${AUCTION_PRICE}"

.field public static final c:Ljava/lang/String; = "${AUCTION_LOSS}"

.field public static final d:Ljava/lang/String; = "${AUCTION_SEAT_ID}"

.field public static final e:Ljava/lang/String; = "${AUCTION_BID_TO_WIN}"

.field public static final f:Ljava/lang/String; = "${AUCTION_CURRENCY}"

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field public static final i:I = 0x3

.field public static final j:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/anythink/core/common/f/q;D)D
    .locals 5

    .line 560
    iget-wide v0, p0, Lcom/anythink/core/common/f/q;->l:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p0, Lcom/anythink/core/common/f/q;->l:D

    mul-double p1, p1, v0

    :cond_0
    return-wide p1
.end method

.method private static a(Lcom/anythink/core/common/f/q;)Lcom/anythink/core/common/f/au;
    .locals 0

    if-eqz p0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/anythink/core/common/f/q;->f()Lcom/anythink/core/common/f/au;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static varargs a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;[Lcom/anythink/core/api/BaseAd;)V
    .locals 3

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 535
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    .line 539
    array-length v1, p3

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v2, p3, v1

    if-eqz v2, :cond_0

    .line 540
    aget-object p0, p3, v1

    invoke-virtual {p0}, Lcom/anythink/core/api/BaseAd;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 542
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object p0

    .line 545
    :goto_0
    new-instance p3, Lcom/anythink/core/common/f/bb;

    invoke-direct {p3}, Lcom/anythink/core/common/f/bb;-><init>()V

    .line 546
    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->S()Lcom/anythink/core/common/f/h;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/anythink/core/common/f/bb;->a(Lcom/anythink/core/common/f/h;)V

    .line 547
    invoke-virtual {p3, p0}, Lcom/anythink/core/common/f/bb;->a(Ljava/util/Map;)V

    .line 548
    invoke-virtual {p3, p1}, Lcom/anythink/core/common/f/bb;->a(Lcom/anythink/core/common/f/au;)V

    .line 550
    invoke-virtual {p3}, Lcom/anythink/core/common/f/bb;->b()I

    move-result p0

    if-eqz p0, :cond_1

    .line 551
    invoke-virtual {p3}, Lcom/anythink/core/common/f/bb;->b()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/anythink/core/common/f/au;->A(I)V

    .line 4301
    :cond_1
    iput-object p3, v0, Lcom/anythink/core/common/f/q;->u:Lcom/anythink/core/common/f/bb;

    :cond_2
    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/b;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-static {p0, v0}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/b;Z)V

    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/b;Z)V
    .locals 4

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/anythink/core/common/f/b;->h()Lcom/anythink/core/common/f/h;

    move-result-object p0

    .line 60
    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 63
    new-instance v2, Lcom/anythink/core/common/f/y;

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-direct {v2, p1, v0, p0}, Lcom/anythink/core/common/f/y;-><init>(ILcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;)V

    .line 65
    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/y;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private static a(Lcom/anythink/core/common/f/bb;)V
    .locals 0

    .line 528
    invoke-static {p0}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/bb;)V

    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/h;Ljava/util/List;JII)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/h;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;JII)V"
        }
    .end annotation

    .line 79
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v8, Lcom/anythink/core/b/d/b$1;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p2

    move v5, p4

    move-object v6, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/anythink/core/b/d/b$1;-><init>(Lcom/anythink/core/common/f/h;JILjava/util/List;I)V

    invoke-virtual {v0, v8}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/au;)V
    .locals 21

    move-object/from16 v1, p0

    if-eqz v1, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 1297
    :cond_0
    iget-object v2, v1, Lcom/anythink/core/common/f/q;->u:Lcom/anythink/core/common/f/bb;

    if-nez v2, :cond_1

    return-void

    .line 237
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/common/f/q;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 247
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v9

    .line 248
    iget-wide v11, v1, Lcom/anythink/core/common/f/q;->q:D

    .line 251
    invoke-static/range {p1 .. p1}, Lcom/anythink/core/b/d/a;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v13

    move-wide v3, v9

    move-wide v5, v11

    move-wide v7, v13

    .line 252
    invoke-static/range {v3 .. v8}, Lcom/anythink/core/b/d/a;->a(DDD)D

    move-result-wide v3

    .line 256
    invoke-virtual {v2, v9, v10}, Lcom/anythink/core/common/f/bb;->a(D)V

    .line 257
    invoke-virtual {v2, v11, v12}, Lcom/anythink/core/common/f/bb;->b(D)V

    .line 259
    invoke-virtual {v2, v13, v14}, Lcom/anythink/core/common/f/bb;->c(D)V

    .line 260
    invoke-virtual {v2, v3, v4}, Lcom/anythink/core/common/f/bb;->d(D)V

    .line 263
    invoke-static {v1, v9, v10}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/q;D)D

    move-result-wide v5

    .line 264
    invoke-static {v1, v3, v4}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/q;D)D

    move-result-wide v3

    .line 266
    invoke-virtual {v2}, Lcom/anythink/core/common/f/bb;->v()Z

    move-result v0

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/au;->Y()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 286
    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/anythink/core/common/a/a;->a(Lcom/anythink/core/common/f/q;)V

    :cond_3
    if-eqz v0, :cond_7

    .line 290
    invoke-static {v1, v5, v6, v3, v4}, Lcom/anythink/core/b/d/a;->a(Lcom/anythink/core/common/f/q;DD)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v2, :cond_5

    .line 1522
    invoke-static {v0, v2}, Lcom/anythink/core/common/h/f;->a(Ljava/lang/String;Lcom/anythink/core/common/f/bb;)Lcom/anythink/core/common/h/f;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1524
    invoke-virtual {v0, v7, v8}, Lcom/anythink/core/common/h/f;->a(ILcom/anythink/core/common/h/k;)V

    goto :goto_0

    .line 1528
    :cond_4
    invoke-static {v2}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/bb;)V

    .line 297
    :cond_5
    :goto_0
    iget-object v15, v1, Lcom/anythink/core/common/f/q;->biddingNotice:Lcom/anythink/core/api/ATBiddingNotice;

    if-eqz v15, :cond_6

    .line 300
    :try_start_0
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-wide/from16 v16, v5

    move-wide/from16 v18, v3

    invoke-interface/range {v15 .. v20}, Lcom/anythink/core/api/ATBiddingNotice;->notifyBidWin(DDLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "notifyBidWin: error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "anythink"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_6
    :goto_1
    invoke-virtual {v2}, Lcom/anythink/core/common/f/bb;->a()Lcom/anythink/core/common/f/q$a;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 309
    invoke-interface {v0}, Lcom/anythink/core/common/f/q$a;->a()V

    goto :goto_2

    .line 2528
    :cond_7
    invoke-static {v2}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/bb;)V

    .line 315
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/common/f/q;->g()V

    :cond_9
    :goto_3
    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/y;Z)V
    .locals 19

    move-object/from16 v7, p0

    if-nez v7, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 391
    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/anythink/core/b/f;->a(Ljava/lang/String;Lcom/anythink/core/common/f/q;)V

    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v7, Lcom/anythink/core/common/f/q;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/a/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 401
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/common/f/q;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/anythink/core/b/d/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [return] sendLossNotice, win or loss has been sent, do anything!\n bid id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/anythink/core/common/f/q;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 410
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/common/f/q;->getSortPrice()D

    move-result-wide v0

    .line 411
    iget v2, v7, Lcom/anythink/core/common/f/q;->d:I

    const/4 v3, 0x0

    if-eqz v7, :cond_3

    .line 3363
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/common/f/q;->f()Lcom/anythink/core/common/f/au;

    move-result-object v3

    :cond_3
    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 416
    invoke-static {v3}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v0

    .line 417
    invoke-virtual {v3}, Lcom/anythink/core/common/f/au;->d()I

    move-result v2

    .line 418
    invoke-virtual {v3}, Lcom/anythink/core/common/f/au;->k()Z

    move-result v3

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    .line 422
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->b()D

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmpl-double v10, v5, v8

    if-lez v10, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->b()D

    move-result-wide v5

    cmpl-double v8, v5, v0

    if-lez v8, :cond_5

    .line 423
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->b()D

    move-result-wide v0

    .line 424
    iget v2, v7, Lcom/anythink/core/common/f/q;->d:I

    const/4 v3, 0x1

    .line 430
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->c()I

    move-result v4

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/common/f/q;->getSortPrice()D

    move-result-wide v5

    .line 434
    iget v8, v7, Lcom/anythink/core/common/f/q;->d:I

    cmpg-double v9, v0, v5

    if-gtz v9, :cond_6

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v0, v5

    :cond_6
    move-wide v10, v0

    .line 440
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->n()D

    move-result-wide v13

    .line 441
    invoke-static {v10, v11, v13, v14}, Lcom/anythink/core/b/d/a;->a(DD)D

    move-result-wide v0

    .line 444
    invoke-static {v3, v4, v8}, Lcom/anythink/core/b/d/a;->b(ZII)Ljava/lang/String;

    move-result-object v6

    move/from16 p2, v4

    .line 447
    iget-wide v4, v7, Lcom/anythink/core/common/f/q;->originPrice:D

    move-object/from16 v9, p1

    move-object v12, v6

    move-wide v15, v0

    move-wide/from16 v17, v4

    invoke-static/range {v9 .. v18}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/y;DLjava/lang/String;DDD)V

    .line 451
    invoke-static {v7, v0, v1}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/q;D)D

    move-result-wide v4

    .line 465
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 466
    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/anythink/core/common/a/a;->a(Lcom/anythink/core/common/f/q;)V

    .line 469
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/y;->q()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "-1"

    .line 470
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 472
    monitor-enter p0

    .line 474
    :try_start_0
    iget-object v0, v7, Lcom/anythink/core/common/f/q;->biddingNotice:Lcom/anythink/core/api/ATBiddingNotice;

    if-eqz v0, :cond_8

    .line 476
    new-instance v1, Ljava/util/HashMap;

    const/4 v9, 0x3

    invoke-direct {v1, v9}, Ljava/util/HashMap;-><init>(I)V

    const-string v9, "adn_id"

    .line 477
    invoke-static {v3, v2, v8}, Lcom/anythink/core/b/d/a;->a(ZII)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v8, p2

    .line 480
    :try_start_1
    invoke-static {v3, v8}, Lcom/anythink/core/b/d/a;->a(ZI)Ljava/lang/String;

    move-result-object v8

    .line 488
    invoke-interface {v0, v8, v4, v5, v1}, Lcom/anythink/core/api/ATBiddingNotice;->notifyBidLoss(Ljava/lang/String;DLjava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 490
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "anythink"

    .line 491
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "notifyBidLoss: error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_8
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p0

    .line 499
    invoke-static/range {v1 .. v6}, Lcom/anythink/core/b/d/a;->a(Lcom/anythink/core/common/f/q;IZDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 501
    invoke-static {v0}, Lcom/anythink/core/b/d/b;->a(Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 496
    monitor-exit p0

    throw v0

    .line 506
    :cond_9
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/common/f/q;->e()V

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/common/f/q;->g()V

    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/q;ZDZ)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 323
    :cond_0
    iget-wide v0, p0, Lcom/anythink/core/common/f/q;->l:D

    .line 324
    iget-object v2, p0, Lcom/anythink/core/common/f/q;->j:Ljava/lang/String;

    .line 325
    iget v3, p0, Lcom/anythink/core/common/f/q;->d:I

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_1

    mul-double p2, p2, v0

    :cond_1
    if-eqz p1, :cond_3

    .line 332
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 333
    iget-object v2, p0, Lcom/anythink/core/common/f/q;->displayNoticeUrl:Ljava/lang/String;

    .line 336
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    const-string p4, "${AUCTION_PRICE}"

    .line 337
    invoke-static {p0, p2, p3}, Lcom/anythink/core/b/d/a;->a(Lcom/anythink/core/common/f/q;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/anythink/core/b/d/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/anythink/core/common/f/q;->displayNoticeUrl:Ljava/lang/String;

    .line 341
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x2

    .line 342
    invoke-static {p4, v1, v3}, Lcom/anythink/core/b/d/a;->b(ZII)Ljava/lang/String;

    move-result-object p4

    const-string v1, "${AUCTION_PRICE}"

    .line 343
    invoke-static {p0, p2, p3}, Lcom/anythink/core/b/d/a;->a(Lcom/anythink/core/common/f/q;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "${AUCTION_LOSS}"

    .line 344
    invoke-virtual {v0, v1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    .line 343
    invoke-static {p4}, Lcom/anythink/core/b/d/b;->a(Ljava/lang/String;)V

    .line 348
    :cond_4
    :goto_0
    monitor-enter p0

    .line 349
    :try_start_0
    iget-object p4, p0, Lcom/anythink/core/common/f/q;->biddingNotice:Lcom/anythink/core/api/ATBiddingNotice;

    if-eqz p4, :cond_5

    .line 352
    invoke-interface {p4, p1, p2, p3}, Lcom/anythink/core/api/ATBiddingNotice;->notifyBidDisplay(ZD)V

    if-eqz p1, :cond_5

    .line 354
    invoke-virtual {p0}, Lcom/anythink/core/common/f/q;->e()V

    .line 357
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    .line 516
    invoke-static {p0}, Lcom/anythink/core/common/h/f;->a(Ljava/lang/String;)Lcom/anythink/core/common/h/f;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 517
    invoke-virtual {p0, v0, v1}, Lcom/anythink/core/common/h/f;->a(ILcom/anythink/core/common/h/k;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/anythink/core/common/f/bb;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 522
    :cond_0
    invoke-static {p0, p1}, Lcom/anythink/core/common/h/f;->a(Ljava/lang/String;Lcom/anythink/core/common/f/bb;)Lcom/anythink/core/common/h/f;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 524
    invoke-virtual {p0, p1, v0}, Lcom/anythink/core/common/h/f;->a(ILcom/anythink/core/common/h/k;)V

    return-void
.end method
