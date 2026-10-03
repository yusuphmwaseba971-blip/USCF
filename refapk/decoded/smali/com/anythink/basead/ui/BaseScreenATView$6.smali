.class final Lcom/anythink/basead/ui/BaseScreenATView$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseScreenATView;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/BaseScreenATView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/BaseScreenATView;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 406
    sget-object v0, Lcom/anythink/basead/ui/BaseScreenATView;->TAG:Ljava/lang/String;

    .line 408
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->t:Lcom/anythink/basead/ui/b/a;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->t:Lcom/anythink/basead/ui/b/a;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    .line 410
    invoke-virtual {v1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getVideoLength()J

    move-result-wide v1

    .line 409
    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/ui/b/a;->a(J)V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseScreenATView;->a(I)V

    .line 413
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->F()V

    .line 416
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/anythink/basead/ui/BaseScreenATView;->a(Lcom/anythink/basead/ui/BaseScreenATView;J)J

    .line 417
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->h()V

    .line 418
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-static {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->b(Lcom/anythink/basead/ui/BaseScreenATView;)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v0

    const/16 v1, 0x19

    if-eq p1, v1, :cond_2

    const/16 v1, 0x32

    if-eq p1, v1, :cond_1

    const/16 v1, 0x4b

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 543
    :cond_0
    sget-object p1, Lcom/anythink/basead/ui/BaseScreenATView;->TAG:Ljava/lang/String;

    const/4 p1, 0x4

    .line 544
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {p1, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    :goto_0
    return-void

    .line 537
    :cond_1
    sget-object p1, Lcom/anythink/basead/ui/BaseScreenATView;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    .line 538
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {p1, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    return-void

    .line 531
    :cond_2
    sget-object p1, Lcom/anythink/basead/ui/BaseScreenATView;->TAG:Ljava/lang/String;

    const/4 p1, 0x2

    .line 532
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {p1, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    return-void
.end method

.method public final a(J)V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-static {v0, p1, p2}, Lcom/anythink/basead/ui/BaseScreenATView;->b(Lcom/anythink/basead/ui/BaseScreenATView;J)V

    .line 426
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/BaseScreenATView;->a(J)V

    .line 428
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/BaseScreenATView;->b(J)V

    .line 430
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->C:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->C:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 431
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->J()V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->k()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-boolean p1, p1, Lcom/anythink/basead/ui/BaseScreenATView;->H:Z

    if-nez p1, :cond_1

    .line 435
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/BaseScreenATView;->J()V

    .line 436
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/anythink/basead/ui/BaseScreenATView;->H:Z

    .line 437
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object p1, p1, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz p1, :cond_1

    .line 438
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object p1, p1, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    invoke-interface {p1}, Lcom/anythink/basead/e/h;->c()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/e;)V
    .locals 4

    .line 493
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/basead/ui/BaseScreenATView;->r:Z

    .line 494
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    const/16 v2, 0x6c

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/BaseScreenATView;->a(I)V

    .line 496
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    invoke-interface {v0}, Lcom/anythink/basead/e/h;->g()V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v0

    .line 501
    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/anythink/basead/ui/BaseScreenATView;->fillVideoEndRecord(Z)Lcom/anythink/basead/c/j;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/c/i;->h:Lcom/anythink/basead/c/j;

    const/16 v2, 0x11

    .line 502
    iget-object v3, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v3, v3, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v2, v3, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    .line 504
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/BaseScreenATView;->a(Lcom/anythink/basead/c/e;)V

    .line 506
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-boolean p1, p1, Lcom/anythink/basead/ui/BaseScreenATView;->H:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object p1, p1, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object p1, p1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->l()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 507
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iput-boolean v1, p1, Lcom/anythink/basead/ui/BaseScreenATView;->H:Z

    .line 508
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object p1, p1, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz p1, :cond_1

    .line 509
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object p1, p1, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    invoke-interface {p1}, Lcom/anythink/basead/e/h;->c()V

    .line 514
    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object p1, p1, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz p1, :cond_2

    .line 515
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, p1, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getVideoLength()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/anythink/basead/ui/BaseScreenATView;->b(J)V

    .line 519
    :cond_2
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-boolean p1, p1, Lcom/anythink/basead/ui/BaseScreenATView;->G:Z

    if-nez p1, :cond_3

    .line 520
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/BaseScreenATView;->q()V

    return-void

    .line 522
    :cond_3
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/BaseScreenATView;->Q()V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 445
    sget-object v0, Lcom/anythink/basead/ui/BaseScreenATView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public final b(J)V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    invoke-interface {v0}, Lcom/anythink/basead/e/h;->f()V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/BaseScreenATView;->c(J)V

    .line 593
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object p1

    const/16 p2, 0x23

    .line 594
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {p2, v0, p1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 451
    sget-object v0, Lcom/anythink/basead/ui/BaseScreenATView;->TAG:Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    .line 459
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    const/16 v2, 0x1f

    invoke-static {v2, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    .line 462
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseScreenATView;->a(I)V

    .line 464
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    invoke-interface {v0}, Lcom/anythink/basead/e/h;->b()V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-boolean v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->H:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iput-boolean v1, v0, Lcom/anythink/basead/ui/BaseScreenATView;->H:Z

    .line 470
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    invoke-interface {v0}, Lcom/anythink/basead/e/h;->c()V

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->N()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 476
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iput-boolean v1, v0, Lcom/anythink/basead/ui/BaseScreenATView;->r:Z

    .line 478
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-boolean v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->G:Z

    if-nez v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->q()V

    return-void

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->Q()V

    return-void

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 485
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseScreenATView;->a(Landroid/view/View;)V

    .line 487
    :cond_4
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->D()V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v1, v0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/anythink/basead/ui/BaseScreenATView;->c(Lcom/anythink/basead/ui/BaseScreenATView;J)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v0

    .line 559
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/BaseScreenATView;->j()Lcom/anythink/basead/c/a;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    const/16 v1, 0xe

    .line 560
    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v2, v2, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v1, v2, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    .line 563
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->A()I

    move-result v0

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->N()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/ui/BaseScreenATView;->a(II)V

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 3

    .line 570
    sget-object v0, Lcom/anythink/basead/ui/BaseScreenATView;->TAG:Ljava/lang/String;

    .line 571
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v0

    .line 572
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/BaseScreenATView;->j()Lcom/anythink/basead/c/a;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    .line 573
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    const/16 v2, 0xc

    invoke-static {v2, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 579
    sget-object v0, Lcom/anythink/basead/ui/BaseScreenATView;->TAG:Ljava/lang/String;

    .line 580
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->i()Lcom/anythink/basead/c/i;

    move-result-object v0

    .line 581
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/BaseScreenATView;->j()Lcom/anythink/basead/c/a;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    .line 582
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    const/16 v2, 0xd

    invoke-static {v2, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    return-void
.end method

.method public final g()V
    .locals 4

    .line 600
    new-instance v0, Lcom/anythink/basead/a/b/f;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v2, v2, Lcom/anythink/basead/ui/BaseScreenATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseScreenATView$6;->a:Lcom/anythink/basead/ui/BaseScreenATView;

    iget-object v3, v3, Lcom/anythink/basead/ui/BaseScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v3, v3, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/basead/a/b/f;-><init>(Ljava/lang/String;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)V

    .line 603
    invoke-virtual {v0}, Lcom/anythink/basead/a/b/f;->b()V

    return-void
.end method
