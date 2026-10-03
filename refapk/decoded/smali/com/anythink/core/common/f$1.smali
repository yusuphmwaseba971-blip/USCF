.class final Lcom/anythink/core/common/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/v;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/anythink/core/common/b/a;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:[I

.field final synthetic g:Ljava/util/Map;

.field final synthetic h:Lcom/anythink/core/common/f;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f;Lcom/anythink/core/common/f/v;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/b/a;Landroid/content/Context;[ILjava/util/Map;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iput-object p2, p0, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iput-object p3, p0, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/common/f$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/core/common/f$1;->d:Lcom/anythink/core/common/b/a;

    iput-object p6, p0, Lcom/anythink/core/common/f$1;->e:Landroid/content/Context;

    iput-object p7, p0, Lcom/anythink/core/common/f$1;->f:[I

    iput-object p8, p0, Lcom/anythink/core/common/f$1;->g:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v1, p0

    .line 310
    iget-object v2, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    monitor-enter v2

    .line 311
    :try_start_0
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget v0, v0, Lcom/anythink/core/common/f/v;->d:I

    if-eqz v0, :cond_0

    .line 312
    monitor-exit v2

    return-void

    .line 315
    :cond_0
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget v0, v0, Lcom/anythink/core/common/f/v;->d:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    .line 316
    monitor-exit v2

    return-void

    .line 319
    :cond_1
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/common/f;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget v0, v0, Lcom/anythink/core/common/f/v;->d:I

    if-nez v0, :cond_2

    const-string v0, "anythink"

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PlacementId("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") the load api calls are not allowed in Auto-load mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    monitor-exit v2

    return-void

    .line 324
    :cond_2
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v0, v0, Lcom/anythink/core/common/f;->g:Lcom/anythink/core/common/n;

    if-nez v0, :cond_3

    .line 325
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    new-instance v3, Lcom/anythink/core/common/n;

    invoke-direct {v3}, Lcom/anythink/core/common/n;-><init>()V

    iput-object v3, v0, Lcom/anythink/core/common/f;->g:Lcom/anythink/core/common/n;

    .line 328
    :cond_3
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v0, v0, Lcom/anythink/core/common/f;->g:Lcom/anythink/core/common/n;

    iget-object v3, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/anythink/core/common/f$1;->c:Ljava/lang/String;

    .line 2071
    iput-object v3, v0, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    .line 2072
    iput-object v4, v0, Lcom/anythink/core/common/n;->b:Ljava/lang/String;

    .line 329
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v0, v0, Lcom/anythink/core/common/f;->g:Lcom/anythink/core/common/n;

    iget-object v3, v1, Lcom/anythink/core/common/f$1;->d:Lcom/anythink/core/common/b/a;

    invoke-virtual {v0, v3}, Lcom/anythink/core/common/n;->a(Lcom/anythink/core/common/b/a;)V

    .line 332
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v3, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v3, v3, Lcom/anythink/core/common/f;->g:Lcom/anythink/core/common/n;

    iput-object v3, v0, Lcom/anythink/core/common/f/v;->f:Lcom/anythink/core/common/n;

    .line 334
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget v0, v0, Lcom/anythink/core/common/f/v;->d:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v0, v3, :cond_4

    .line 335
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iput v4, v0, Lcom/anythink/core/common/f;->f:I

    goto :goto_0

    .line 337
    :cond_4
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget v5, v0, Lcom/anythink/core/common/f;->f:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/anythink/core/common/f;->f:I

    .line 340
    :goto_0
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0}, Lcom/anythink/core/common/f;->c(Lcom/anythink/core/common/f;)V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "PlacementId("

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") start load type:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget v5, v5, Lcom/anythink/core/common/f/v;->d:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    iget-object v5, v1, Lcom/anythink/core/common/f$1;->e:Landroid/content/Context;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/core/common/b/o;->p()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/anythink/core/common/b/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v0, v0, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 349
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 352
    iget-object v5, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iput-object v0, v5, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    goto :goto_1

    .line 354
    :cond_5
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v0, v0, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    :goto_1
    move-object v12, v0

    .line 357
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v5, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v5, v5, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/anythink/core/common/f$1;->d:Lcom/anythink/core/common/b/a;

    .line 2187
    iget-object v7, v0, Lcom/anythink/core/common/f;->i:Lcom/anythink/core/common/j/c;

    if-eqz v7, :cond_6

    .line 2188
    iget-object v0, v0, Lcom/anythink/core/common/f;->i:Lcom/anythink/core/common/j/c;

    invoke-interface {v0, v5, v6}, Lcom/anythink/core/common/j/c;->a(Ljava/lang/String;Lcom/anythink/core/common/b/a;)V

    .line 360
    :cond_6
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    const/4 v13, 0x0

    if-eqz v0, :cond_19

    .line 361
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 362
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    .line 363
    invoke-static {v0}, Lcom/anythink/core/common/o/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_8

    .line 376
    :cond_7
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0}, Lcom/anythink/core/common/f;->d(Lcom/anythink/core/common/f;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "anythink"

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Placement("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") is loading."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v0, v0, Lcom/anythink/core/common/f/v;->g:Ljava/util/Map;

    const-string v3, "type_start_load"

    iget-object v4, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v5}, Lcom/anythink/core/common/f;->e(Lcom/anythink/core/common/f;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v6, v6, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/anythink/core/common/e;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    monitor-exit v2

    return-void

    .line 386
    :cond_8
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    .line 387
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v15

    .line 388
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->p()Ljava/lang/String;

    move-result-object v16

    .line 389
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->v()Z

    move-result v0

    .line 391
    iget-object v5, v1, Lcom/anythink/core/common/f$1;->e:Landroid/content/Context;

    invoke-static {v5}, Lcom/anythink/core/d/f;->a(Landroid/content/Context;)Lcom/anythink/core/d/f;

    move-result-object v11

    if-eqz v0, :cond_9

    const/4 v5, 0x0

    :goto_2
    move-object/from16 v17, v5

    goto :goto_3

    .line 392
    :cond_9
    iget-object v5, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v11, v5}, Lcom/anythink/core/d/f;->c(Ljava/lang/String;)Lcom/anythink/core/d/e;

    move-result-object v5

    goto :goto_2

    .line 397
    :goto_3
    iget-object v6, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget v8, v5, Lcom/anythink/core/common/f/v;->d:I

    iget-object v5, v1, Lcom/anythink/core/common/f$1;->f:[I

    aget v9, v5, v13

    iget-object v5, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v10, v5, Lcom/anythink/core/common/f/v;->g:Ljava/util/Map;

    iget-object v5, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v7, v5, Lcom/anythink/core/common/f/v;->i:Lcom/anythink/core/common/f/c;

    move-object v5, v12

    move-object/from16 v18, v7

    move-object/from16 v7, v17

    move-object v3, v11

    move-object/from16 v11, v18

    invoke-static/range {v5 .. v11}, Lcom/anythink/core/common/o/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/e;IILjava/util/Map;Lcom/anythink/core/common/f/c;)Lcom/anythink/core/common/f/h;

    move-result-object v5

    .line 399
    iget-object v6, v1, Lcom/anythink/core/common/f$1;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/h;->y(Ljava/lang/String;)V

    .line 401
    iget-object v6, v1, Lcom/anythink/core/common/f$1;->g:Ljava/util/Map;

    if-eqz v6, :cond_a

    .line 402
    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/h;->b(Ljava/util/Map;)V

    :cond_a
    if-nez v17, :cond_c

    if-nez v0, :cond_c

    .line 407
    iget-object v6, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v6, v6, Lcom/anythink/core/common/f/v;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v6, v6, Lcom/anythink/core/common/f/v;->b:Lcom/anythink/core/api/ATMediationRequestInfo;

    if-eqz v6, :cond_c

    :cond_b
    const-string v6, "anythink"

    const-string v7, "request default adsource for splash."

    .line 408
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v6, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v7, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    iget-object v8, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v9, v6, Lcom/anythink/core/common/f;->g:Lcom/anythink/core/common/n;

    invoke-static {v6, v7, v12, v8, v9}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/n;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 410
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iput-object v12, v0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    .line 411
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/h;->V()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;Ljava/lang/String;)Ljava/lang/String;

    .line 412
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/f;->a(Landroid/content/Context;)Lcom/anythink/core/d/f;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v9, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v10, v0, Lcom/anythink/core/common/f/v;->g:Ljava/util/Map;

    const/4 v11, 0x0

    move-object v7, v15

    move-object/from16 v8, v16

    invoke-virtual/range {v5 .. v11}, Lcom/anythink/core/d/f;->a(Lcom/anythink/core/d/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/d/f$c;)V

    .line 413
    monitor-exit v2

    return-void

    .line 417
    :cond_c
    iget-object v6, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/anythink/core/d/f;->f(Ljava/lang/String;)Lcom/anythink/core/d/e;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v17, :cond_d

    if-nez v0, :cond_d

    if-eqz v6, :cond_d

    goto :goto_4

    :cond_d
    move-object/from16 v6, v17

    :goto_4
    if-eqz v6, :cond_e

    .line 424
    :try_start_1
    invoke-static {v6, v5}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/h;)V

    .line 425
    invoke-static {v6, v5}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/h;)V
    :try_end_1
    .catch Lcom/anythink/core/common/f/g; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 431
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_0
    move-exception v0

    .line 428
    iget-object v3, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v6, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    invoke-static {v3, v4, v5, v0, v6}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;ZLcom/anythink/core/common/f/h;Ljava/lang/Throwable;Lcom/anythink/core/common/f/v;)V

    .line 429
    monitor-exit v2

    return-void

    .line 436
    :cond_e
    :goto_5
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/f;->c()I

    move-result v0

    if-lez v0, :cond_13

    if-eqz v6, :cond_13

    .line 438
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v7

    iget-object v8, v1, Lcom/anythink/core/common/f$1;->e:Landroid/content/Context;

    iget-object v9, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/common/f/b;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 441
    iget-object v7, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v7}, Lcom/anythink/core/common/f;->f(Lcom/anythink/core/common/f;)Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Upstatus vail count:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "::Setting UpstatuCount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/anythink/core/d/e;->g()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v6}, Lcom/anythink/core/d/e;->g()I

    move-result v7

    if-lt v0, v7, :cond_10

    .line 444
    invoke-virtual {v5, v13}, Lcom/anythink/core/common/f/h;->b(Z)V

    const/4 v3, 0x4

    .line 445
    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/h;->E(I)V

    .line 446
    invoke-static {v14}, Lcom/anythink/core/common/n/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/a;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v5}, Lcom/anythink/core/common/n/a;->a(ILcom/anythink/core/common/f/at;)V

    .line 447
    invoke-static {v14}, Lcom/anythink/core/common/n/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/a;

    move-result-object v0

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v5}, Lcom/anythink/core/common/n/a;->a(ILcom/anythink/core/common/f/at;)V

    .line 448
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iput-boolean v13, v0, Lcom/anythink/core/common/f;->d:Z

    .line 450
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->d:Lcom/anythink/core/common/b/a;

    if-eqz v0, :cond_f

    .line 452
    invoke-interface {v0}, Lcom/anythink/core/common/b/a;->onAdLoaded()V

    .line 453
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v0, v0, Lcom/anythink/core/common/f;->g:Lcom/anythink/core/common/n;

    iget-object v3, v1, Lcom/anythink/core/common/f$1;->d:Lcom/anythink/core/common/b/a;

    invoke-virtual {v0, v3}, Lcom/anythink/core/common/n;->b(Lcom/anythink/core/common/b/a;)V

    .line 456
    :cond_f
    monitor-exit v2

    return-void

    .line 459
    :cond_10
    iget-object v7, v1, Lcom/anythink/core/common/f$1;->d:Lcom/anythink/core/common/b/a;

    if-eqz v7, :cond_11

    .line 461
    invoke-interface {v7}, Lcom/anythink/core/common/b/a;->onAdLoaded()V

    .line 462
    iget-object v7, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v7, v7, Lcom/anythink/core/common/f;->g:Lcom/anythink/core/common/n;

    iget-object v8, v1, Lcom/anythink/core/common/f$1;->d:Lcom/anythink/core/common/b/a;

    invoke-virtual {v7, v8}, Lcom/anythink/core/common/n;->b(Lcom/anythink/core/common/b/a;)V

    .line 465
    :cond_11
    iget-object v7, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v7}, Lcom/anythink/core/common/f;->f(Lcom/anythink/core/common/f;)Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Upstatus vail count:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "::Setting UpstatuCount:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/anythink/core/d/e;->g()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "::StartFilledLoad"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    const/16 v7, 0x9

    iput v7, v0, Lcom/anythink/core/common/f/v;->d:I

    .line 468
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget v0, v0, Lcom/anythink/core/common/f/v;->d:I

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/h;->x(I)V

    goto :goto_6

    .line 471
    :cond_12
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/f;->b()V

    :cond_13
    :goto_6
    if-eqz v6, :cond_15

    .line 476
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0}, Lcom/anythink/core/common/f;->g(Lcom/anythink/core/common/f;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0}, Lcom/anythink/core/common/f;->h(Lcom/anythink/core/common/f;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_15

    .line 478
    invoke-virtual {v6}, Lcom/anythink/core/d/e;->as()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-gez v0, :cond_15

    const-string v0, "2008"

    const-string v3, ""

    const-string v6, ""

    .line 479
    invoke-static {v0, v3, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    const/4 v3, 0x7

    .line 480
    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/h;->E(I)V

    .line 481
    iget-object v3, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v3}, Lcom/anythink/core/common/f;->i(Lcom/anythink/core/common/f;)Z

    move-result v3

    if-nez v3, :cond_14

    const/4 v13, 0x1

    .line 482
    :cond_14
    iget-object v3, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    new-instance v6, Lcom/anythink/core/common/f/g;

    invoke-virtual {v0}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/anythink/core/common/f/g;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    invoke-static {v3, v13, v5, v6, v0}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;ZLcom/anythink/core/common/f/h;Ljava/lang/Throwable;Lcom/anythink/core/common/f/v;)V

    .line 483
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0, v4}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;Z)Z

    .line 484
    monitor-exit v2

    return-void

    .line 489
    :cond_15
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0}, Lcom/anythink/core/common/f;->j(Lcom/anythink/core/common/f;)Z

    .line 490
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0}, Lcom/anythink/core/common/f;->k(Lcom/anythink/core/common/f;)J

    .line 491
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0, v13}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;Z)Z

    if-eqz v6, :cond_16

    .line 494
    invoke-static {}, Lcom/anythink/core/a/b;->a()Lcom/anythink/core/a/b;

    move-result-object v0

    iget-object v7, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v14, v7, v6}, Lcom/anythink/core/a/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/d/e;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "2009"

    const-string v3, ""

    const-string v6, ""

    .line 495
    invoke-static {v0, v3, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    const/16 v3, 0x8

    .line 496
    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/h;->E(I)V

    .line 497
    iget-object v3, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    new-instance v6, Lcom/anythink/core/common/f/g;

    invoke-virtual {v0}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/anythink/core/common/f/g;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    invoke-static {v3, v4, v5, v6, v0}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;ZLcom/anythink/core/common/f/h;Ljava/lang/Throwable;Lcom/anythink/core/common/f/v;)V

    .line 498
    monitor-exit v2

    return-void

    .line 501
    :cond_16
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/f;->f()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "anythink"

    .line 502
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Placement("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") is loading."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v0, v0, Lcom/anythink/core/common/f/v;->g:Ljava/util/Map;

    const-string v3, "type_start_load"

    iget-object v4, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v5}, Lcom/anythink/core/common/f;->e(Lcom/anythink/core/common/f;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v6, v6, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/anythink/core/common/e;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    monitor-exit v2

    return-void

    .line 513
    :cond_17
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/anythink/core/d/f;->g(Ljava/lang/String;)V

    .line 515
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iput-boolean v4, v0, Lcom/anythink/core/common/f;->d:Z

    .line 518
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v0, v0, Lcom/anythink/core/common/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/g;

    .line 519
    invoke-virtual {v3}, Lcom/anythink/core/common/g;->f()V

    goto :goto_7

    .line 522
    :cond_18
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/f;->a(Landroid/content/Context;)Lcom/anythink/core/d/f;

    move-result-object v0

    iget-object v9, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v10, v3, Lcom/anythink/core/common/f/v;->g:Ljava/util/Map;

    new-instance v11, Lcom/anythink/core/common/f$1$1;

    invoke-direct {v11, v1, v5, v14, v12}, Lcom/anythink/core/common/f$1$1;-><init>(Lcom/anythink/core/common/f$1;Lcom/anythink/core/common/f/h;Landroid/content/Context;Ljava/lang/String;)V

    move-object v5, v0

    move-object v7, v15

    move-object/from16 v8, v16

    invoke-virtual/range {v5 .. v11}, Lcom/anythink/core/d/f;->a(Lcom/anythink/core/d/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/d/f$c;)V

    .line 572
    monitor-exit v2

    return-void

    :cond_19
    :goto_8
    const-string v0, "3002"

    const-string v3, ""

    const-string v4, ""

    .line 365
    invoke-static {v0, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 366
    iget-object v3, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v4, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    invoke-virtual {v3, v4, v0}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f/v;Lcom/anythink/core/api/AdError;)V

    .line 368
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->A()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "anythink"

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Please check these params in your code (AppId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", AppKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/o;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", PlacementId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1a
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iput-boolean v13, v0, Lcom/anythink/core/common/f;->d:Z

    .line 372
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    .line 572
    monitor-exit v2

    throw v0
.end method
