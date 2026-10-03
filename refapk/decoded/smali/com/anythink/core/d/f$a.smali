.class final Lcom/anythink/core/d/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/h/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/d/f;

.field private final b:Lcom/anythink/core/common/f/al;

.field private final c:Lcom/anythink/core/d/f$c;

.field private final d:Lcom/anythink/core/d/e;

.field private e:Lcom/anythink/core/common/m/a;

.field private f:[Z

.field private g:Lcom/anythink/core/common/m/b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/al;Lcom/anythink/core/d/f$c;Lcom/anythink/core/d/e;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/anythink/core/d/f$a;->a:Lcom/anythink/core/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p2, p0, Lcom/anythink/core/d/f$a;->b:Lcom/anythink/core/common/f/al;

    .line 360
    iput-object p3, p0, Lcom/anythink/core/d/f$a;->c:Lcom/anythink/core/d/f$c;

    .line 361
    iput-object p4, p0, Lcom/anythink/core/d/f$a;->d:Lcom/anythink/core/d/e;

    return-void
.end method

.method public constructor <init>(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/al;Lcom/anythink/core/d/f$c;Lcom/anythink/core/d/e;Lcom/anythink/core/common/m/a;Lcom/anythink/core/common/m/b;[Z)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/anythink/core/d/f$a;->a:Lcom/anythink/core/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p2, p0, Lcom/anythink/core/d/f$a;->b:Lcom/anythink/core/common/f/al;

    .line 368
    iput-object p3, p0, Lcom/anythink/core/d/f$a;->c:Lcom/anythink/core/d/f$c;

    .line 369
    iput-object p5, p0, Lcom/anythink/core/d/f$a;->e:Lcom/anythink/core/common/m/a;

    .line 370
    iput-object p7, p0, Lcom/anythink/core/d/f$a;->f:[Z

    .line 371
    iput-object p6, p0, Lcom/anythink/core/d/f$a;->g:Lcom/anythink/core/common/m/b;

    .line 372
    iput-object p4, p0, Lcom/anythink/core/d/f$a;->d:Lcom/anythink/core/d/e;

    return-void
.end method

.method private a()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/anythink/core/d/f$a;->e:Lcom/anythink/core/common/m/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/core/d/f$a;->g:Lcom/anythink/core/common/m/b;

    if-eqz v1, :cond_0

    .line 442
    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onLoadCanceled(I)V
    .locals 3

    .line 424
    invoke-direct {p0}, Lcom/anythink/core/d/f$a;->a()V

    .line 425
    iget-object p1, p0, Lcom/anythink/core/d/f$a;->c:Lcom/anythink/core/d/f$c;

    if-nez p1, :cond_0

    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/d/f$a;->d:Lcom/anythink/core/d/e;

    if-nez v0, :cond_1

    const-string v0, "9999"

    const-string v1, ""

    const-string v2, "by canceled"

    .line 430
    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/core/d/f$c;->a(Lcom/anythink/core/api/AdError;)V

    return-void

    .line 437
    :cond_1
    invoke-interface {p1, v0}, Lcom/anythink/core/d/f$c;->a(Lcom/anythink/core/d/e;)V

    return-void
.end method

.method public final onLoadError(ILjava/lang/String;Lcom/anythink/core/api/AdError;)V
    .locals 3

    .line 388
    invoke-direct {p0}, Lcom/anythink/core/d/f$a;->a()V

    .line 389
    iget-object p1, p0, Lcom/anythink/core/d/f$a;->b:Lcom/anythink/core/common/f/al;

    if-eqz p1, :cond_1

    .line 391
    invoke-virtual {p3}, Lcom/anythink/core/api/AdError;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "9991"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 392
    invoke-virtual {p3}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "10004"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 393
    invoke-virtual {p3}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "10003"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 394
    invoke-virtual {p3}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "10001"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 396
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/anythink/core/d/f$a;->b:Lcom/anythink/core/common/f/al;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/anythink/core/d/f$a;->b:Lcom/anythink/core/common/f/al;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/anythink/core/d/f$a;->b:Lcom/anythink/core/common/f/al;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 397
    sget-object p2, Lcom/anythink/core/d/f;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "code: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "msg: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", key -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    iget-object p2, p0, Lcom/anythink/core/d/f$a;->a:Lcom/anythink/core/d/f;

    invoke-static {p2}, Lcom/anythink/core/d/f;->a(Lcom/anythink/core/d/f;)Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "anythink_placement_strategy_update_check"

    invoke-static {p2, v2, p1, v0, v1}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 400
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/o;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 401
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Please check these params in your code (AppId: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/core/d/f$a;->b:Lcom/anythink/core/common/f/al;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", AppKey: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/anythink/core/d/f$a;->b:Lcom/anythink/core/common/f/al;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", PlacementId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/anythink/core/d/f$a;->b:Lcom/anythink/core/common/f/al;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/al;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "anythink"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_1
    iget-object p1, p0, Lcom/anythink/core/d/f$a;->d:Lcom/anythink/core/d/e;

    if-nez p1, :cond_2

    iget-object p2, p0, Lcom/anythink/core/d/f$a;->c:Lcom/anythink/core/d/f$c;

    if-eqz p2, :cond_2

    .line 407
    invoke-interface {p2, p3}, Lcom/anythink/core/d/f$c;->a(Lcom/anythink/core/api/AdError;)V

    return-void

    .line 417
    :cond_2
    iget-object p2, p0, Lcom/anythink/core/d/f$a;->c:Lcom/anythink/core/d/f$c;

    if-eqz p2, :cond_3

    .line 418
    invoke-interface {p2, p1}, Lcom/anythink/core/d/f$c;->a(Lcom/anythink/core/d/e;)V

    :cond_3
    return-void
.end method

.method public final onLoadFinish(ILjava/lang/Object;)V
    .locals 6

    .line 382
    invoke-direct {p0}, Lcom/anythink/core/d/f$a;->a()V

    .line 383
    iget-object v0, p0, Lcom/anythink/core/d/f$a;->a:Lcom/anythink/core/d/f;

    iget-object v2, p0, Lcom/anythink/core/d/f$a;->b:Lcom/anythink/core/common/f/al;

    iget-object v3, p0, Lcom/anythink/core/d/f$a;->c:Lcom/anythink/core/d/f$c;

    iget-object v4, p0, Lcom/anythink/core/d/f$a;->f:[Z

    iget-object v5, p0, Lcom/anythink/core/d/f$a;->d:Lcom/anythink/core/d/e;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/core/d/f;->a(Ljava/lang/Object;Lcom/anythink/core/common/f/al;Lcom/anythink/core/d/f$c;[ZLcom/anythink/core/d/e;)V

    return-void
.end method

.method public final onLoadStart(I)V
    .locals 0

    return-void
.end method
