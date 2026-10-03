.class final Lcom/anythink/core/common/n/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;Ljava/lang/String;ZILcom/anythink/core/d/e;Lcom/anythink/core/common/f/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/common/f/c;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/b;

.field final synthetic b:Lcom/anythink/core/d/e;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:I

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:J

.field final synthetic j:Ljava/util/Map;

.field final synthetic k:Lcom/anythink/core/common/f/c;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f/b;Lcom/anythink/core/d/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;JLjava/util/Map;Lcom/anythink/core/common/f/c;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/anythink/core/common/n/c$1;->a:Lcom/anythink/core/common/f/b;

    iput-object p2, p0, Lcom/anythink/core/common/n/c$1;->b:Lcom/anythink/core/d/e;

    iput-object p3, p0, Lcom/anythink/core/common/n/c$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/common/n/c$1;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/anythink/core/common/n/c$1;->e:Z

    iput p6, p0, Lcom/anythink/core/common/n/c$1;->f:I

    iput-object p7, p0, Lcom/anythink/core/common/n/c$1;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/anythink/core/common/n/c$1;->h:Ljava/lang/String;

    iput-wide p9, p0, Lcom/anythink/core/common/n/c$1;->i:J

    iput-object p11, p0, Lcom/anythink/core/common/n/c$1;->j:Ljava/util/Map;

    iput-object p12, p0, Lcom/anythink/core/common/n/c$1;->k:Lcom/anythink/core/common/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 302
    iget-object v0, p0, Lcom/anythink/core/common/n/c$1;->a:Lcom/anythink/core/common/f/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->h()Lcom/anythink/core/common/f/h;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 303
    :goto_0
    new-instance v1, Lcom/anythink/core/common/f/k;

    .line 304
    iget-object v2, p0, Lcom/anythink/core/common/n/c$1;->b:Lcom/anythink/core/d/e;

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/anythink/core/d/e;->ag()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    if-eqz v0, :cond_2

    .line 306
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->M()I

    move-result v4

    .line 305
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v3

    .line 306
    :goto_2
    invoke-direct {v1, v2, v4}, Lcom/anythink/core/common/f/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "1004632"

    .line 307
    iput-object v2, v1, Lcom/anythink/core/common/f/k;->a:Ljava/lang/String;

    .line 308
    iget-object v2, p0, Lcom/anythink/core/common/n/c$1;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/anythink/core/common/f/k;->b:Ljava/lang/String;

    .line 309
    iget-object v2, p0, Lcom/anythink/core/common/n/c$1;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/anythink/core/common/f/k;->d:Ljava/lang/String;

    const-string v2, "0"

    if-eqz v0, :cond_3

    .line 311
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->N()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/anythink/core/common/f/k;->g:Ljava/lang/String;

    goto :goto_3

    .line 312
    :cond_3
    iget-object v4, p0, Lcom/anythink/core/common/n/c$1;->b:Lcom/anythink/core/d/e;

    if-eqz v4, :cond_4

    .line 313
    invoke-virtual {v4}, Lcom/anythink/core/d/e;->an()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/anythink/core/common/f/k;->g:Ljava/lang/String;

    goto :goto_3

    .line 315
    :cond_4
    iput-object v2, v1, Lcom/anythink/core/common/f/k;->g:Ljava/lang/String;

    :goto_3
    if-eqz v0, :cond_5

    .line 319
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->K()I

    move-result v4

    .line 318
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v2

    .line 319
    :goto_4
    iput-object v4, v1, Lcom/anythink/core/common/f/k;->k:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 322
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->aa()I

    move-result v4

    .line 321
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/anythink/core/common/f/k;->l:Ljava/lang/String;

    goto :goto_5

    .line 323
    :cond_6
    iget-object v4, p0, Lcom/anythink/core/common/n/c$1;->b:Lcom/anythink/core/d/e;

    if-eqz v4, :cond_7

    .line 325
    invoke-virtual {v4}, Lcom/anythink/core/d/e;->Y()I

    move-result v4

    .line 324
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/anythink/core/common/f/k;->l:Ljava/lang/String;

    .line 328
    :cond_7
    :goto_5
    iget-boolean v4, p0, Lcom/anythink/core/common/n/c$1;->e:Z

    const-string v5, "1"

    if-eqz v4, :cond_8

    move-object v4, v5

    goto :goto_6

    :cond_8
    move-object v4, v2

    :goto_6
    iput-object v4, v1, Lcom/anythink/core/common/f/k;->m:Ljava/lang/String;

    .line 329
    iget v4, p0, Lcom/anythink/core/common/n/c$1;->f:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/anythink/core/common/f/k;->n:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 331
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->F()I

    move-result v4

    .line 330
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_9
    const-string v4, "-1"

    .line 331
    :goto_7
    iput-object v4, v1, Lcom/anythink/core/common/f/k;->o:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 332
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->C()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_a
    move-object v4, v3

    :goto_8
    iput-object v4, v1, Lcom/anythink/core/common/f/k;->p:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 334
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->M()I

    move-result v4

    .line 333
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_b
    move-object v4, v3

    .line 334
    :goto_9
    iput-object v4, v1, Lcom/anythink/core/common/f/k;->q:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1578
    iget-object v4, v0, Lcom/anythink/core/common/f/h;->u:Ljava/lang/String;

    goto :goto_a

    :cond_c
    move-object v4, v3

    .line 335
    :goto_a
    iput-object v4, v1, Lcom/anythink/core/common/f/k;->r:Ljava/lang/String;

    .line 336
    iget-object v4, p0, Lcom/anythink/core/common/n/c$1;->g:Ljava/lang/String;

    iput-object v4, v1, Lcom/anythink/core/common/f/k;->s:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 337
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->ad()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_d
    iget-object v4, p0, Lcom/anythink/core/common/n/c$1;->c:Ljava/lang/String;

    :goto_b
    iput-object v4, v1, Lcom/anythink/core/common/f/k;->t:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 340
    iget-object v4, p0, Lcom/anythink/core/common/n/c$1;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->ad()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 343
    iput-object v5, v1, Lcom/anythink/core/common/f/k;->u:Ljava/lang/String;

    goto :goto_c

    .line 346
    :cond_e
    iput-object v2, v1, Lcom/anythink/core/common/f/k;->u:Ljava/lang/String;

    :goto_c
    if-eqz v0, :cond_10

    .line 1725
    iget v4, v0, Lcom/anythink/core/common/f/h;->q:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_f

    move-object v2, v5

    .line 351
    :cond_f
    iput-object v2, v1, Lcom/anythink/core/common/f/k;->v:Ljava/lang/String;

    goto :goto_d

    .line 353
    :cond_10
    iput-object v2, v1, Lcom/anythink/core/common/f/k;->v:Ljava/lang/String;

    .line 356
    :goto_d
    iget-object v2, p0, Lcom/anythink/core/common/n/c$1;->h:Ljava/lang/String;

    iput-object v2, v1, Lcom/anythink/core/common/f/k;->w:Ljava/lang/String;

    .line 358
    iget-object v2, p0, Lcom/anythink/core/common/n/c$1;->a:Lcom/anythink/core/common/f/b;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/anythink/core/common/f/b;->k()Ljava/lang/String;

    move-result-object v2

    const-string v4, "3"

    if-ne v2, v4, :cond_11

    .line 359
    iput-object v5, v1, Lcom/anythink/core/common/f/k;->y:Ljava/lang/String;

    .line 363
    :cond_11
    iget-wide v4, p0, Lcom/anythink/core/common/n/c$1;->i:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_12

    .line 364
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/f/k;->x:Ljava/lang/String;

    .line 367
    :cond_12
    iget-object v2, p0, Lcom/anythink/core/common/n/c$1;->b:Lcom/anythink/core/d/e;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/anythink/core/d/e;->ad()Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_13
    move-object v2, v3

    :goto_e
    iput-object v2, v1, Lcom/anythink/core/common/f/k;->j:Ljava/lang/String;

    .line 369
    iget-object v2, p0, Lcom/anythink/core/common/n/c$1;->b:Lcom/anythink/core/d/e;

    if-eqz v2, :cond_14

    .line 370
    invoke-virtual {v2}, Lcom/anythink/core/d/e;->ag()I

    move-result v2

    .line 369
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 370
    :cond_14
    iput-object v3, v1, Lcom/anythink/core/common/f/k;->A:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 374
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->V()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/f/k;->C:Ljava/lang/String;

    goto :goto_f

    .line 375
    :cond_15
    iget-object v2, p0, Lcom/anythink/core/common/n/c$1;->b:Lcom/anythink/core/d/e;

    if-eqz v2, :cond_16

    .line 376
    invoke-virtual {v2}, Lcom/anythink/core/d/e;->o()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/f/k;->C:Ljava/lang/String;

    :cond_16
    :goto_f
    if-eqz v0, :cond_17

    .line 380
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->W()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/anythink/core/common/f/k;->D:Ljava/lang/String;

    goto :goto_10

    .line 381
    :cond_17
    iget-object v0, p0, Lcom/anythink/core/common/n/c$1;->j:Ljava/util/Map;

    if-eqz v0, :cond_18

    const-string v2, "cp_placement_id"

    .line 382
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 384
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/anythink/core/common/f/k;->D:Ljava/lang/String;

    .line 390
    :cond_18
    :goto_10
    iget-object v0, p0, Lcom/anythink/core/common/n/c$1;->k:Lcom/anythink/core/common/f/c;

    if-eqz v0, :cond_19

    .line 391
    invoke-virtual {v0}, Lcom/anythink/core/common/f/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/anythink/core/common/f/k;->F:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/anythink/core/common/n/c$1;->k:Lcom/anythink/core/common/f/c;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/c;->b()I

    move-result v0

    iput v0, v1, Lcom/anythink/core/common/f/k;->G:I

    .line 394
    iget-object v0, p0, Lcom/anythink/core/common/n/c$1;->k:Lcom/anythink/core/common/f/c;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/c;->c()I

    move-result v0

    iput v0, v1, Lcom/anythink/core/common/f/k;->H:I

    .line 397
    :cond_19
    invoke-static {v1}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/k;)V

    return-void
.end method
