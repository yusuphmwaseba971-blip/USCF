.class public abstract Lcom/anythink/basead/d/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/d/b$a;,
        Lcom/anythink/basead/d/b$b;
    }
.end annotation


# instance fields
.field private a:Lcom/anythink/basead/d/b$b;

.field protected b:Landroid/content/Context;

.field protected c:Lcom/anythink/core/common/f/m;

.field protected d:Lcom/anythink/basead/d/c;

.field protected e:Lcom/anythink/core/common/f/ai;

.field protected f:Lcom/anythink/core/common/a/h;

.field protected g:Lcom/anythink/basead/a/b;

.field protected h:Lcom/anythink/basead/e/a;

.field protected i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/basead/a/b;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/anythink/basead/d/b;->k:Z

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/anythink/basead/d/b;->a:Lcom/anythink/basead/d/b$b;

    .line 75
    iput-object p3, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/d/b;Lcom/anythink/core/common/a/h;)V
    .locals 3

    .line 2281
    iput-object p1, p0, Lcom/anythink/basead/d/b;->f:Lcom/anythink/core/common/a/h;

    .line 2282
    new-instance p1, Lcom/anythink/basead/a/b;

    iget-object v0, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v2, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/ai;

    invoke-direct {p1, v0, v1, v2}, Lcom/anythink/basead/a/b;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)V

    iput-object p1, p0, Lcom/anythink/basead/d/b;->g:Lcom/anythink/basead/a/b;

    .line 2283
    new-instance v0, Lcom/anythink/basead/d/b$3;

    invoke-direct {v0, p0}, Lcom/anythink/basead/d/b$3;-><init>(Lcom/anythink/basead/d/b;)V

    invoke-virtual {p1, v0}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/a/b$b;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/d/b;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/c/e;Lcom/anythink/basead/e/c;Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2353
    new-instance v0, Lcom/anythink/basead/c/i;

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x22

    .line 2354
    invoke-static {v1, p1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    .line 2361
    :cond_0
    instance-of p1, p1, Lcom/anythink/core/common/f/ah;

    if-eqz p1, :cond_1

    .line 2362
    invoke-static {}, Lcom/anythink/core/basead/b;->a()Lcom/anythink/core/basead/b;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/basead/b;->a()Lcom/anythink/core/basead/b;

    iget-object v0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    invoke-static {v0}, Lcom/anythink/core/basead/b;->a(Lcom/anythink/core/common/f/m;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/anythink/core/basead/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 2370
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p4

    invoke-virtual {p4}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p4

    iget-object p0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object p0, p0, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {p1, p4, p0}, Lcom/anythink/core/common/a/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 2378
    invoke-interface {p3, p2}, Lcom/anythink/basead/e/c;->onAdLoadFailed(Lcom/anythink/basead/c/e;)V

    :cond_3
    return-void
.end method

.method private a(Lcom/anythink/core/common/a/h;)V
    .locals 3

    .line 281
    iput-object p1, p0, Lcom/anythink/basead/d/b;->f:Lcom/anythink/core/common/a/h;

    .line 282
    new-instance p1, Lcom/anythink/basead/a/b;

    iget-object v0, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v2, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/ai;

    invoke-direct {p1, v0, v1, v2}, Lcom/anythink/basead/a/b;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)V

    iput-object p1, p0, Lcom/anythink/basead/d/b;->g:Lcom/anythink/basead/a/b;

    .line 283
    new-instance v0, Lcom/anythink/basead/d/b$3;

    invoke-direct {v0, p0}, Lcom/anythink/basead/d/b$3;-><init>(Lcom/anythink/basead/d/b;)V

    invoke-virtual {p1, v0}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/a/b$b;)V

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/l;Lcom/anythink/basead/c/e;Lcom/anythink/basead/e/c;Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 353
    new-instance v0, Lcom/anythink/basead/c/i;

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x22

    .line 354
    invoke-static {v1, p1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    .line 361
    :cond_0
    instance-of p1, p1, Lcom/anythink/core/common/f/ah;

    if-eqz p1, :cond_1

    .line 362
    invoke-static {}, Lcom/anythink/core/basead/b;->a()Lcom/anythink/core/basead/b;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/basead/b;->a()Lcom/anythink/core/basead/b;

    iget-object v0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    invoke-static {v0}, Lcom/anythink/core/basead/b;->a(Lcom/anythink/core/common/f/m;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/anythink/core/basead/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 370
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p4

    invoke-virtual {p4}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p4

    iget-object v0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {p1, p4, v0}, Lcom/anythink/core/common/a/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 378
    invoke-interface {p3, p2}, Lcom/anythink/basead/e/c;->onAdLoadFailed(Lcom/anythink/basead/c/e;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/d/b;)Z
    .locals 1

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/anythink/basead/d/b;->k:Z

    return v0
.end method

.method private b(Lcom/anythink/basead/e/c;)V
    .locals 3

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/d/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/d/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    new-instance v2, Lcom/anythink/basead/d/b$2;

    invoke-direct {v2, p0, p1}, Lcom/anythink/basead/d/b$2;-><init>(Lcom/anythink/basead/d/b;Lcom/anythink/basead/e/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const-string v0, "30001"

    const-string v1, "bidid\u3001placementid can not be null!"

    .line 232
    invoke-static {v0, v1}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/e/c;->onAdLoadFailed(Lcom/anythink/basead/c/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_3

    .line 275
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-9999"

    invoke-static {v1, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/e/c;->onAdLoadFailed(Lcom/anythink/basead/c/e;)V

    :cond_3
    return-void
.end method

.method private c(Lcom/anythink/basead/e/c;)V
    .locals 4

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/d/b/a;->a(Landroid/content/Context;)Lcom/anythink/basead/d/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v2, p0, Lcom/anythink/basead/d/b;->j:Ljava/lang/String;

    new-instance v3, Lcom/anythink/basead/d/b$4;

    invoke-direct {v3, p0, p1}, Lcom/anythink/basead/d/b$4;-><init>(Lcom/anythink/basead/d/b;Lcom/anythink/basead/e/c;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/basead/d/b/a;->a(Lcom/anythink/core/common/f/m;Ljava/lang/String;Lcom/anythink/basead/d/b/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_0

    .line 345
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-9999"

    invoke-static {v1, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/e/c;->onAdLoadFailed(Lcom/anythink/basead/c/e;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Lcom/anythink/core/common/f/ai;)Ljava/lang/String;
    .locals 3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget v1, v1, Lcom/anythink/core/common/f/m;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/ai;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/anythink/basead/d/b$a;)V
    .locals 4

    .line 178
    sget-object v0, Lcom/anythink/basead/d/b$6;->a:[I

    iget-object v1, p0, Lcom/anythink/basead/d/b;->a:Lcom/anythink/basead/d/b$b;

    invoke-virtual {v1}, Lcom/anythink/basead/d/b$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 182
    invoke-interface {p1}, Lcom/anythink/basead/d/b$a;->onAdCacheLoaded()V

    :cond_1
    return-void

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/d/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/d/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/ai;

    iget-object v2, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    new-instance v3, Lcom/anythink/basead/d/b$1;

    invoke-direct {v3, p0, p1}, Lcom/anythink/basead/d/b$1;-><init>(Lcom/anythink/basead/d/b;Lcom/anythink/basead/d/b$a;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/ai;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Lcom/anythink/basead/d/c;)V
    .locals 3

    .line 83
    iput-object p1, p0, Lcom/anythink/basead/d/b;->d:Lcom/anythink/basead/d/c;

    .line 84
    iget-object p1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object p1, p1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    instance-of p1, p1, Lcom/anythink/core/common/f/aj;

    if-eqz p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object p1, p1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    check-cast p1, Lcom/anythink/core/common/f/aj;

    iget-object v0, p0, Lcom/anythink/basead/d/b;->d:Lcom/anythink/basead/d/c;

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1030
    :cond_0
    invoke-virtual {v0}, Lcom/anythink/basead/d/c;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/f/aj;->x(I)V

    .line 1031
    invoke-virtual {v0}, Lcom/anythink/basead/d/c;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/f/aj;->y(I)V

    .line 1033
    invoke-virtual {v0}, Lcom/anythink/basead/d/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/f/aj;->e(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v0}, Lcom/anythink/basead/d/c;->c()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/f/aj;->r(I)V

    .line 1036
    invoke-virtual {v0}, Lcom/anythink/basead/d/c;->e()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/f/aj;->q(I)V

    .line 1037
    invoke-virtual {v0}, Lcom/anythink/basead/d/c;->f()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/anythink/core/common/f/aj;->b(J)V

    .line 1038
    invoke-virtual {v0}, Lcom/anythink/basead/d/c;->g()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/f/aj;->p(I)V

    .line 1040
    invoke-virtual {v0}, Lcom/anythink/basead/d/c;->h()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/f/aj;->c(I)V

    .line 1041
    invoke-virtual {v0}, Lcom/anythink/basead/d/c;->i()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/anythink/core/common/f/aj;->d(I)V

    .line 1043
    invoke-virtual {v0}, Lcom/anythink/basead/d/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/f/aj;->f(Ljava/lang/String;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/anythink/basead/e/a;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    return-void
.end method

.method public final a(Lcom/anythink/basead/e/c;)V
    .locals 5

    .line 164
    sget-object v0, Lcom/anythink/basead/d/b$6;->a:[I

    iget-object v1, p0, Lcom/anythink/basead/d/b;->a:Lcom/anythink/basead/d/b$b;

    invoke-virtual {v1}, Lcom/anythink/basead/d/b$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "-9999"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1317
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/d/b/a;->a(Landroid/content/Context;)Lcom/anythink/basead/d/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v3, p0, Lcom/anythink/basead/d/b;->j:Ljava/lang/String;

    new-instance v4, Lcom/anythink/basead/d/b$4;

    invoke-direct {v4, p0, p1}, Lcom/anythink/basead/d/b$4;-><init>(Lcom/anythink/basead/d/b;Lcom/anythink/basead/e/c;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/anythink/basead/d/b/a;->a(Lcom/anythink/core/common/f/m;Ljava/lang/String;Lcom/anythink/basead/d/b/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1343
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1345
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/e/c;->onAdLoadFailed(Lcom/anythink/basead/c/e;)V

    :goto_0
    return-void

    .line 1230
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1237
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/d/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/d/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    new-instance v3, Lcom/anythink/basead/d/b$2;

    invoke-direct {v3, p0, p1}, Lcom/anythink/basead/d/b$2;-><init>(Lcom/anythink/basead/d/b;Lcom/anythink/basead/e/c;)V

    invoke-virtual {v0, v1, v3}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V

    return-void

    :cond_3
    :goto_1
    const-string v0, "30001"

    const-string v1, "bidid\u3001placementid can not be null!"

    .line 1232
    invoke-static {v0, v1}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/e/c;->onAdLoadFailed(Lcom/anythink/basead/c/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    .line 1273
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1275
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/e/c;->onAdLoadFailed(Lcom/anythink/basead/c/e;)V

    return-void
.end method

.method protected final a(Lcom/anythink/core/common/f/j;)V
    .locals 3

    .line 476
    invoke-virtual {p1}, Lcom/anythink/core/common/f/j;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 478
    invoke-static {}, Lcom/anythink/core/common/a/c;->a()Lcom/anythink/core/common/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/a/c;->b()V

    .line 480
    iget-object v0, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/j;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, ",packagename:"

    if-eqz v0, :cond_0

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "check offer installed(onAdDataLoaded):ture,dsp offerid:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/j;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/j;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-static {}, Lcom/anythink/core/common/a/c;->a()Lcom/anythink/core/common/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/a/c;->c(Lcom/anythink/core/common/f/j;)V

    return-void

    .line 484
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "check offer installed(onAdDataLoaded):false,need record show,dsp offerid:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/j;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/j;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-static {}, Lcom/anythink/core/common/a/c;->a()Lcom/anythink/core/common/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/a/c;->a(Lcom/anythink/core/common/f/j;)V

    :cond_1
    return-void
.end method

.method protected final declared-synchronized a(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/d/b;->g:Lcom/anythink/basead/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 391
    monitor-exit p0

    return-void

    .line 393
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/basead/d/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 394
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/basead/d/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/d/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/a/b;

    if-nez v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/anythink/basead/d/b;->g:Lcom/anythink/basead/a/b;

    invoke-static {v0, p1}, Lcom/anythink/basead/d/a/b;->a(Lcom/anythink/basead/a/b;Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/basead/a/b;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/anythink/basead/d/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_3

    .line 403
    new-instance p1, Lcom/anythink/basead/c/i;

    iget-object v1, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    invoke-direct {p1, v1, p2}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance p2, Lcom/anythink/basead/c/a;

    invoke-direct {p2}, Lcom/anythink/basead/c/a;-><init>()V

    .line 405
    iput-object p2, p1, Lcom/anythink/basead/c/i;->g:Lcom/anythink/basead/c/a;

    .line 406
    new-instance p2, Lcom/anythink/basead/d/b$5;

    invoke-direct {p2, p0}, Lcom/anythink/basead/d/b$5;-><init>(Lcom/anythink/basead/d/b;)V

    invoke-virtual {v0, p2}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/a/b$b;)V

    .line 436
    invoke-virtual {v0, p1}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/i;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 439
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 442
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/anythink/basead/d/b;->j:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 472
    iput-object v0, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/ai;

    return-void
.end method

.method public final c()Z
    .locals 4

    .line 96
    sget-object v0, Lcom/anythink/basead/d/b$6;->a:[I

    iget-object v1, p0, Lcom/anythink/basead/d/b;->a:Lcom/anythink/basead/d/b$b;

    invoke-virtual {v1}, Lcom/anythink/basead/d/b$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return v2

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/ai;

    if-eqz v0, :cond_4

    instance-of v3, v0, Lcom/anythink/core/common/f/ah;

    if-nez v3, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 145
    :cond_2
    iget-boolean v0, p0, Lcom/anythink/basead/d/b;->k:Z

    if-eqz v0, :cond_3

    return v1

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/ai;

    iget-object v3, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    invoke-static {v0, v3}, Lcom/anythink/basead/a/b/c;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    iput-boolean v1, p0, Lcom/anythink/basead/d/b;->k:Z

    return v1

    :cond_4
    :goto_0
    return v2

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/ai;

    if-nez v0, :cond_6

    .line 99
    iget-object v0, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/d/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/d/a/a;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    invoke-virtual {v0, v3}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/m;)Lcom/anythink/core/common/f/j;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/ai;

    .line 102
    :cond_6
    iget-object v0, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/ai;

    if-nez v0, :cond_7

    return v2

    .line 106
    :cond_7
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ai;->U()Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    .line 110
    :cond_8
    iget-object v0, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/ai;

    instance-of v3, v0, Lcom/anythink/core/common/f/j;

    if-eqz v3, :cond_a

    check-cast v0, Lcom/anythink/core/common/f/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 111
    iget-object v0, p0, Lcom/anythink/basead/d/b;->f:Lcom/anythink/core/common/a/h;

    if-eqz v0, :cond_9

    .line 113
    invoke-interface {v0}, Lcom/anythink/core/common/a/h;->isReady()Z

    move-result v0

    return v0

    :cond_9
    return v2

    .line 120
    :cond_a
    iget-boolean v0, p0, Lcom/anythink/basead/d/b;->k:Z

    if-eqz v0, :cond_b

    return v1

    .line 124
    :cond_b
    iget-object v0, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/ai;

    iget-object v3, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    invoke-static {v0, v3}, Lcom/anythink/basead/a/b/c;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 125
    iput-boolean v1, p0, Lcom/anythink/basead/d/b;->k:Z

    return v1

    :cond_c
    return v2
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, v0}, Lcom/anythink/basead/d/b;->a(Lcom/anythink/basead/d/b$a;)V

    return-void
.end method

.method protected final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/d/b;->g:Lcom/anythink/basead/a/b;

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {v0}, Lcom/anythink/basead/a/b;->d()V

    const/4 v0, 0x0

    .line 452
    iput-object v0, p0, Lcom/anythink/basead/d/b;->g:Lcom/anythink/basead/a/b;

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/anythink/basead/d/b;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 456
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 457
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 458
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/basead/a/b;

    if-eqz v1, :cond_1

    .line 460
    invoke-virtual {v1}, Lcom/anythink/basead/a/b;->d()V

    .line 461
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 465
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Lcom/anythink/core/common/f/l;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/ai;

    return-object v0
.end method
