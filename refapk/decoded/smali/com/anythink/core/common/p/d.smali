.class public Lcom/anythink/core/common/p/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/p/d$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "d"


# instance fields
.field b:Ljava/lang/String;

.field c:Lcom/anythink/core/common/f/au;

.field d:Lcom/anythink/core/common/f/h;

.field e:Ljava/lang/String;

.field f:I

.field g:Lcom/anythink/core/api/ATBaseAdAdapter;

.field h:Lcom/anythink/core/common/p/b;

.field i:Z

.field j:Z

.field k:J

.field l:J

.field m:Lcom/anythink/core/common/m/b;

.field n:Lcom/anythink/core/common/m/b;

.field o:Lcom/anythink/core/common/p/c;

.field p:Ljava/lang/Boolean;

.field q:I

.field r:Ljava/lang/String;

.field s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/anythink/core/common/f/au;I)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    .line 93
    iput p2, p0, Lcom/anythink/core/common/p/d;->q:I

    .line 95
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/p/d;->e:Ljava/lang/String;

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/anythink/core/common/p/d;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/p/d;->r:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/p/d;)Landroid/content/Context;
    .locals 3

    .line 7478
    iget-object p0, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    iget-object p0, p0, Lcom/anythink/core/common/p/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 7480
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 7481
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->E()Landroid/content/Context;

    move-result-object p0

    .line 7483
    :cond_0
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7484
    sget-object v0, Lcom/anythink/core/common/p/d;->a:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestContext = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method

.method private a(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->m()Lcom/anythink/core/common/m/b;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/p/d;->n:Lcom/anythink/core/common/m/b;

    .line 281
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/p/d;->n:Lcom/anythink/core/common/m/b;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/anythink/core/common/f/au;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 3

    .line 377
    invoke-static {}, Lcom/anythink/core/d/a;->ax()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object v0

    .line 381
    :try_start_0
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/r;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    invoke-virtual {v0}, Lcom/anythink/core/common/b/r;->c()Z

    move-result v1

    iget-object v2, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    iget-object v2, v2, Lcom/anythink/core/common/p/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/api/ATSDK;->isEUTraffic(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p3, p1, v1, v2}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalSetUserDataConsent(Landroid/content/Context;ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->d()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/b/r;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 386
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private a(Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/anythink/core/common/p/d;->g:Lcom/anythink/core/api/ATBaseAdAdapter;

    return-void
.end method

.method private a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/au;)V
    .locals 8

    .line 311
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->h()Ljava/util/Map;

    move-result-object v5

    .line 313
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    iget-object v0, v0, Lcom/anythink/core/common/p/c;->e:Lcom/anythink/core/d/e;

    invoke-virtual {v0}, Lcom/anythink/core/d/e;->ag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 314
    new-instance v7, Lcom/anythink/core/common/p/d$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, v6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/anythink/core/common/p/d$1;-><init>(Lcom/anythink/core/common/p/d;Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/lang/String;Lcom/anythink/core/common/f/au;Ljava/util/Map;)V

    const-string p1, "2"

    .line 369
    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 370
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void

    .line 372
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/anythink/core/common/o/b/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/b;)V
    .locals 2

    monitor-enter p0

    .line 691
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->k()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 692
    monitor-exit p0

    return-void

    .line 695
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->f()V

    .line 696
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->g()V

    const/4 v0, 0x0

    .line 3765
    iput-object v0, p0, Lcom/anythink/core/common/p/d;->g:Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 700
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/anythink/core/common/p/d;->p:Ljava/lang/Boolean;

    .line 702
    iget-boolean v0, p0, Lcom/anythink/core/common/p/d;->i:Z

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->d:Lcom/anythink/core/common/f/h;

    const/4 v1, 0x1

    .line 4730
    iput v1, v0, Lcom/anythink/core/common/f/h;->r:I

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->h:Lcom/anythink/core/common/p/b;

    if-eqz v0, :cond_2

    .line 708
    iget-object v1, p0, Lcom/anythink/core/common/p/d;->r:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/anythink/core/common/p/b;->a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 711
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private varargs declared-synchronized a(Lcom/anythink/core/api/ATBaseAdAdapter;[Lcom/anythink/core/api/BaseAd;)V
    .locals 7

    monitor-enter p0

    .line 634
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->k()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 635
    monitor-exit p0

    return-void

    .line 638
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 641
    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->m()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 642
    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->l()J

    move-result-wide v1

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->d:Lcom/anythink/core/common/f/h;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/anythink/core/common/p/d;->k:J

    sub-long/2addr v3, v5

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/anythink/core/common/f/h;->d(J)V

    .line 647
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->f()V

    .line 648
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->g()V

    const/4 v0, 0x0

    .line 2765
    iput-object v0, p0, Lcom/anythink/core/common/p/d;->g:Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 652
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/anythink/core/common/p/d;->p:Ljava/lang/Boolean;

    .line 654
    iget-boolean v0, p0, Lcom/anythink/core/common/p/d;->i:Z

    if-eqz v0, :cond_2

    .line 655
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->d:Lcom/anythink/core/common/f/h;

    const/4 v1, 0x1

    .line 3730
    iput v1, v0, Lcom/anythink/core/common/f/h;->r:I

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->h:Lcom/anythink/core/common/p/b;

    if-eqz v0, :cond_3

    .line 660
    iget-object v1, p0, Lcom/anythink/core/common/p/d;->r:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/anythink/core/common/p/b;->a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;[Lcom/anythink/core/api/BaseAd;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/anythink/core/common/p/d;Landroid/content/Context;Lcom/anythink/core/common/f/au;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 2

    .line 8377
    invoke-static {}, Lcom/anythink/core/d/a;->ax()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8378
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object v0

    .line 8381
    :try_start_0
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/r;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8382
    invoke-virtual {v0}, Lcom/anythink/core/common/b/r;->c()Z

    move-result v1

    iget-object p0, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    iget-object p0, p0, Lcom/anythink/core/common/p/c;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/anythink/core/api/ATSDK;->isEUTraffic(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p3, p1, v1, p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalSetUserDataConsent(Landroid/content/Context;ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 8383
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->d()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/b/r;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 8386
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/p/d;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 0

    .line 9394
    iput-object p1, p0, Lcom/anythink/core/common/p/d;->g:Lcom/anythink/core/api/ATBaseAdAdapter;

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/p/d;Lcom/anythink/core/api/ATBaseAdAdapter;[Lcom/anythink/core/api/BaseAd;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/api/ATBaseAdAdapter;[Lcom/anythink/core/api/BaseAd;)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/core/common/p/d;)Ljava/util/Map;
    .locals 4

    .line 8456
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    iget-object v0, v0, Lcom/anythink/core/common/p/c;->f:Ljava/util/Map;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 8458
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_0

    .line 8460
    :cond_0
    iget-object v2, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->d()I

    move-result v2

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "admob_content_urls"

    .line 8462
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8463
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 8465
    iget-object v3, p0, Lcom/anythink/core/common/p/d;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/anythink/core/common/p/d;->d:Lcom/anythink/core/common/f/h;

    invoke-static {v3, p0, v1, v2}, Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private b(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 289
    :cond_0
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->m()Lcom/anythink/core/common/m/b;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/p/d;->m:Lcom/anythink/core/common/m/b;

    .line 291
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/p/d;->m:Lcom/anythink/core/common/m/b;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    return-void
.end method

.method static synthetic c(Lcom/anythink/core/common/p/d;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->l()V

    return-void
.end method

.method static synthetic d(Lcom/anythink/core/common/p/d;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->n()V

    return-void
.end method

.method private f()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->m:Lcom/anythink/core/common/m/b;

    if-eqz v0, :cond_0

    .line 296
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/p/d;->m:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/anythink/core/common/p/d;->m:Lcom/anythink/core/common/m/b;

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->n:Lcom/anythink/core/common/m/b;

    if-eqz v0, :cond_0

    .line 303
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/p/d;->n:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lcom/anythink/core/common/p/d;->n:Lcom/anythink/core/common/m/b;

    :cond_0
    return-void
.end method

.method private h()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    iget-object v0, v0, Lcom/anythink/core/common/p/c;->e:Lcom/anythink/core/d/e;

    .line 400
    iget-object v1, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    iget-object v1, v1, Lcom/anythink/core/common/p/c;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 406
    :cond_0
    iget-object v2, p0, Lcom/anythink/core/common/p/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {v0, v2, v1, v3}, Lcom/anythink/core/d/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/au;)Ljava/util/Map;

    move-result-object v2

    .line 408
    iget-object v3, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/au;->d()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    const/16 v1, 0x16

    if-eq v3, v1, :cond_1

    goto/16 :goto_1

    .line 430
    :cond_1
    iget-object v1, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    iget-object v3, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    iget-object v3, v3, Lcom/anythink/core/common/p/c;->i:Lcom/anythink/core/common/f/p;

    invoke-static {v0, v2, v1, v3}, Lcom/anythink/core/common/o/b;->a(Lcom/anythink/core/d/e;Ljava/util/Map;Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/p;)V

    goto :goto_1

    .line 410
    :cond_2
    iget-object v3, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    iget-object v3, v3, Lcom/anythink/core/common/p/c;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/anythink/core/common/p/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/anythink/core/d/e;->ag()I

    move-result v7

    iget v8, p0, Lcom/anythink/core/common/p/d;->f:I

    invoke-static {v3, v1, v4, v7, v8}, Lcom/anythink/core/common/o/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v1

    .line 411
    invoke-virtual {v0}, Lcom/anythink/core/d/e;->aG()I

    move-result v0

    if-ne v0, v6, :cond_7

    const-string v0, "tp_info"

    .line 412
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 417
    :cond_3
    iget-object v1, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    iget-object v1, v1, Lcom/anythink/core/common/p/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v3, "mediation_switch"

    .line 419
    invoke-virtual {v1}, Lcom/anythink/core/d/a;->r()I

    move-result v1

    if-ne v1, v6, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :cond_5
    invoke-virtual {v0}, Lcom/anythink/core/d/e;->b()I

    move-result v1

    if-ne v1, v6, :cond_6

    const-string v1, "admob_show_with_pay_info"

    .line 424
    invoke-virtual {v0}, Lcom/anythink/core/d/e;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    const-string v0, "admob_show_with_pay_info"

    .line 426
    iget-object v1, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->an()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-static {v0}, Lcom/anythink/core/common/o/v;->a(Lcom/anythink/core/common/f/au;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 435
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    iget-object v0, v0, Lcom/anythink/core/common/p/c;->e:Lcom/anythink/core/d/e;

    invoke-virtual {v0}, Lcom/anythink/core/d/e;->aB()I

    move-result v0

    if-ne v0, v6, :cond_a

    .line 438
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    iget-object v0, v0, Lcom/anythink/core/common/p/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/p/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    iget-object v3, v3, Lcom/anythink/core/common/p/c;->e:Lcom/anythink/core/d/e;

    invoke-virtual {v3}, Lcom/anythink/core/d/e;->ag()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;I)Lcom/anythink/core/common/f/an;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 439
    iget v5, v0, Lcom/anythink/core/common/f/an;->c:I

    :cond_8
    const-string v0, "anythink_adload_seq"

    .line 440
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/p/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 444
    monitor-enter v0

    .line 445
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/core/common/p/d;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/au;->d()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "anythink_content"

    .line 447
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_a
    :goto_2
    return-object v2
.end method

.method private i()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    iget-object v0, v0, Lcom/anythink/core/common/p/c;->f:Ljava/util/Map;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_0

    .line 460
    :cond_0
    iget-object v2, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->d()I

    move-result v2

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "admob_content_urls"

    .line 462
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 463
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 465
    iget-object v3, p0, Lcom/anythink/core/common/p/d;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/common/p/d;->d:Lcom/anythink/core/common/f/h;

    invoke-static {v3, v4, v1, v2}, Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private j()Landroid/content/Context;
    .locals 4

    .line 478
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    iget-object v0, v0, Lcom/anythink/core/common/p/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 480
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 481
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->E()Landroid/content/Context;

    move-result-object v0

    .line 483
    :cond_0
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 484
    sget-object v1, Lcom/anythink/core/common/p/d;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "requestContext = "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private k()Z
    .locals 2

    .line 509
    iget-boolean v0, p0, Lcom/anythink/core/common/p/d;->s:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 512
    :cond_0
    iget-boolean v0, p0, Lcom/anythink/core/common/p/d;->j:Z

    if-eqz v0, :cond_1

    return v1

    .line 515
    :cond_1
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized l()V
    .locals 3

    monitor-enter p0

    .line 522
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->k()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 523
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 526
    :try_start_1
    iput-boolean v0, p0, Lcom/anythink/core/common/p/d;->i:Z

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "network short timeout: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/p/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->h:Lcom/anythink/core/common/p/b;

    if-eqz v0, :cond_1

    .line 531
    iget-object v1, p0, Lcom/anythink/core/common/p/d;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/p/d;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/common/p/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private m()Lcom/anythink/core/common/m/b;
    .locals 1

    .line 536
    new-instance v0, Lcom/anythink/core/common/p/d$2;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/p/d$2;-><init>(Lcom/anythink/core/common/p/d;)V

    return-object v0
.end method

.method private declared-synchronized n()V
    .locals 4

    monitor-enter p0

    .line 622
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->f()V

    .line 624
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/core/common/p/d;->k:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/core/common/p/d;->l:J

    .line 627
    iget-object v2, p0, Lcom/anythink/core/common/p/d;->d:Lcom/anythink/core/common/f/h;

    if-eqz v2, :cond_0

    .line 628
    invoke-virtual {v2, v0, v1}, Lcom/anythink/core/common/f/h;->c(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private o()V
    .locals 1

    const/4 v0, 0x0

    .line 765
    iput-object v0, p0, Lcom/anythink/core/common/p/d;->g:Lcom/anythink/core/api/ATBaseAdAdapter;

    return-void
.end method

.method private p()Z
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->p:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private q()J
    .locals 2

    .line 786
    iget-wide v0, p0, Lcom/anythink/core/common/p/d;->k:J

    return-wide v0
.end method

.method private r()Z
    .locals 1

    .line 790
    iget-boolean v0, p0, Lcom/anythink/core/common/p/d;->i:Z

    return v0
.end method

.method private s()Lcom/anythink/core/common/f/au;
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final a(D)V
    .locals 10

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/anythink/core/common/p/d;->s:Z

    .line 119
    iget-object v1, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    .line 120
    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    iget-object v1, v1, Lcom/anythink/core/common/p/c;->c:Ljava/lang/String;

    .line 121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    iget-object v2, v2, Lcom/anythink/core/common/p/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/q;->b(Ljava/lang/String;)V

    .line 125
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/p/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;Lcom/anythink/core/common/f/au;)Lcom/anythink/core/common/f/av;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 130
    iget-object v4, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/anythink/core/common/f/av;->a(Lcom/anythink/core/common/f/q;)Lcom/anythink/core/common/f/f;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lcom/anythink/core/common/f/f;->d()I

    move-result v4

    .line 134
    iget-object v5, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/au;->j()I

    move-result v5

    if-ne v5, v0, :cond_1

    .line 135
    invoke-virtual {v1}, Lcom/anythink/core/common/f/f;->e()Lcom/anythink/core/common/f/b;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "CacheCheck:: Bidding Offer Cache exist\uff1a"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p2, 0x1

    goto :goto_2

    .line 141
    :cond_1
    invoke-virtual {v1}, Lcom/anythink/core/common/f/f;->a()Lcom/anythink/core/common/f/b;

    move-result-object v5

    .line 142
    invoke-virtual {v1}, Lcom/anythink/core/common/f/f;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v5, :cond_3

    .line 144
    iget-object v1, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-static {v1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v6

    cmpg-double v1, v6, p1

    if-gtz v1, :cond_2

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "CacheCheck:: upstatus = 1, Normal Offer price < loadedMinPrice \uff1a"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", AdSource:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move-object p1, v5

    goto :goto_0

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->am()I

    move-result p1

    if-lt v4, p1, :cond_3

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "CacheCheck:: upstatus = 1, cache size > setting size, AdSource:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    move-object p1, v5

    :cond_4
    const/4 p2, 0x0

    .line 156
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "CacheCheck:: Offer Cache exist, need to real request status:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    xor-int/lit8 v5, p2, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", current cache size:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    .line 158
    invoke-virtual {v4}, Lcom/anythink/core/common/f/au;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 161
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "CacheCheck:: Offer Cache not exist, need to real request status:true, current cache size:0\n"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    .line 163
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p1, v2

    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_7

    .line 169
    iget-object p2, p0, Lcom/anythink/core/common/p/d;->h:Lcom/anythink/core/common/p/b;

    if-eqz p2, :cond_6

    .line 170
    invoke-virtual {p1}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/anythink/core/common/p/b;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    .line 173
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "CacheCheck:: Callback by cached\uff1a"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    .line 174
    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p1}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-direct {p0, p2, v0, p1}, Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/b;)V

    return-void

    .line 179
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "CacheCheck:: Start real request\uff1a"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    .line 180
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object p1, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 188
    iget-boolean p2, p1, Lcom/anythink/core/common/f/q;->s:Z

    if-eqz p2, :cond_9

    .line 190
    iget-object p2, p1, Lcom/anythink/core/common/f/q;->r:Lcom/anythink/core/b/c/a;

    if-eqz p2, :cond_8

    .line 192
    invoke-virtual {p2}, Lcom/anythink/core/b/c/a;->a()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    .line 193
    invoke-virtual {p2}, Lcom/anythink/core/b/c/a;->b()Lcom/anythink/core/api/BaseAd;

    move-result-object p2

    goto :goto_4

    :cond_8
    move-object p2, v2

    move-object v1, p2

    .line 199
    :goto_4
    iput-object v2, p1, Lcom/anythink/core/common/f/q;->r:Lcom/anythink/core/b/c/a;

    const/4 p1, 0x1

    goto :goto_5

    :cond_9
    move-object p2, v2

    move-object v1, p2

    const/4 p1, 0x0

    :goto_5
    if-nez v1, :cond_a

    if-nez p1, :cond_a

    .line 209
    iget-object v1, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-static {v1}, Lcom/anythink/core/common/o/j;->a(Lcom/anythink/core/common/f/au;)Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    :cond_a
    move-object v6, v1

    if-nez v6, :cond_f

    .line 212
    iget-object p2, p0, Lcom/anythink/core/common/p/d;->h:Lcom/anythink/core/common/p/b;

    if-eqz p2, :cond_e

    .line 214
    new-instance p2, Lcom/anythink/core/common/p/a;

    invoke-direct {p2}, Lcom/anythink/core/common/p/a;-><init>()V

    .line 215
    iput v3, p2, Lcom/anythink/core/common/p/a;->a:I

    if-eqz p1, :cond_b

    .line 216
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->l()J

    move-result-wide v0

    goto :goto_6

    :cond_b
    const-wide/16 v0, 0x0

    :goto_6
    iput-wide v0, p2, Lcom/anythink/core/common/p/a;->c:J

    if-eqz p1, :cond_c

    const-string v0, "2012"

    goto :goto_7

    :cond_c
    const-string v0, "2002"

    :goto_7
    const-string v1, ""

    if-eqz p1, :cond_d

    move-object p1, v1

    goto :goto_8

    .line 218
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/au;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist!"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 217
    :goto_8
    invoke-static {v0, v1, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    iput-object p1, p2, Lcom/anythink/core/common/p/a;->b:Lcom/anythink/core/api/AdError;

    .line 221
    invoke-virtual {p0, v2, p2}, Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/p/a;)V

    :cond_e
    return-void

    .line 227
    :cond_f
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->d()I

    move-result v1

    invoke-virtual {v6}, Lcom/anythink/core/api/ATBaseAdAdapter;->getInternalNetworkSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/e;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :catchall_0
    nop

    .line 231
    :goto_9
    iget-object v1, p0, Lcom/anythink/core/common/p/d;->d:Lcom/anythink/core/common/f/h;

    iget-object v2, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-static {v6, v1, v2}, Lcom/anythink/core/common/o/u;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;)Lcom/anythink/core/common/f/h;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/p/d;->d:Lcom/anythink/core/common/f/h;

    .line 233
    iget-object v2, p0, Lcom/anythink/core/common/p/d;->h:Lcom/anythink/core/common/p/b;

    if-eqz v2, :cond_10

    .line 234
    invoke-interface {v2, v1}, Lcom/anythink/core/common/p/b;->a(Lcom/anythink/core/common/f/h;)V

    .line 238
    :cond_10
    iget-object v1, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->C()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v7, v1, v4

    if-eqz v7, :cond_11

    .line 1289
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->m()Lcom/anythink/core/common/m/b;

    move-result-object v7

    iput-object v7, p0, Lcom/anythink/core/common/p/d;->m:Lcom/anythink/core/common/m/b;

    .line 1291
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v7

    iget-object v8, p0, Lcom/anythink/core/common/p/d;->m:Lcom/anythink/core/common/m/b;

    invoke-interface {v7, v8, v1, v2, v3}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    .line 239
    :cond_11
    iget-object v1, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->r()J

    move-result-wide v1

    cmp-long v7, v1, v4

    if-eqz v7, :cond_12

    .line 2279
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->m()Lcom/anythink/core/common/m/b;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/core/common/p/d;->n:Lcom/anythink/core/common/m/b;

    .line 2281
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/core/common/p/d;->n:Lcom/anythink/core/common/m/b;

    invoke-interface {v4, v5, v1, v2, v3}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    .line 243
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/anythink/core/common/p/d;->k:J

    .line 246
    iget-object v1, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    iget-object v1, v1, Lcom/anythink/core/common/p/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_13

    .line 247
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_13

    .line 248
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v6, v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->refreshActivityContext(Landroid/app/Activity;)V

    :cond_13
    if-eqz p1, :cond_16

    .line 258
    iget-object p1, p0, Lcom/anythink/core/common/p/d;->h:Lcom/anythink/core/common/p/b;

    if-eqz p1, :cond_14

    .line 259
    iget-object v1, p0, Lcom/anythink/core/common/p/d;->d:Lcom/anythink/core/common/f/h;

    invoke-interface {p1, v1, v6}, Lcom/anythink/core/common/p/b;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    :cond_14
    if-eqz p2, :cond_15

    new-array p1, v0, [Lcom/anythink/core/api/BaseAd;

    aput-object p2, p1, v3

    .line 263
    invoke-direct {p0, v6, p1}, Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/api/ATBaseAdAdapter;[Lcom/anythink/core/api/BaseAd;)V

    return-void

    :cond_15
    new-array p1, v3, [Lcom/anythink/core/api/BaseAd;

    .line 265
    invoke-direct {p0, v6, p1}, Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/api/ATBaseAdAdapter;[Lcom/anythink/core/api/BaseAd;)V

    return-void

    .line 271
    :cond_16
    iget-object v8, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    .line 2311
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->h()Ljava/util/Map;

    move-result-object v9

    .line 2313
    iget-object p1, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    iget-object p1, p1, Lcom/anythink/core/common/p/c;->e:Lcom/anythink/core/d/e;

    invoke-virtual {p1}, Lcom/anythink/core/d/e;->ag()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 2314
    new-instance p2, Lcom/anythink/core/common/p/d$1;

    move-object v4, p2

    move-object v5, p0

    move-object v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/anythink/core/common/p/d$1;-><init>(Lcom/anythink/core/common/p/d;Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/lang/String;Lcom/anythink/core/common/f/au;Ljava/util/Map;)V

    const-string v0, "2"

    .line 2369
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 2370
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void

    .line 2372
    :cond_17
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/o/b/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/p/a;)V
    .locals 5

    monitor-enter p0

    .line 715
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->k()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 716
    monitor-exit p0

    return-void

    .line 719
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->f()V

    .line 720
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->g()V

    if-eqz p1, :cond_1

    .line 723
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/p/d$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/p/d$3;-><init>(Lcom/anythink/core/common/p/d;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x0

    .line 4765
    iput-object v0, p0, Lcom/anythink/core/common/p/d;->g:Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 739
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/anythink/core/common/p/d;->p:Ljava/lang/Boolean;

    .line 741
    iget-boolean v0, p0, Lcom/anythink/core/common/p/d;->j:Z

    if-eqz v0, :cond_2

    .line 742
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->d:Lcom/anythink/core/common/f/h;

    const/4 v1, 0x2

    .line 5730
    iput v1, v0, Lcom/anythink/core/common/f/h;->r:I

    goto :goto_0

    .line 743
    :cond_2
    iget-boolean v0, p0, Lcom/anythink/core/common/p/d;->i:Z

    if-eqz v0, :cond_3

    .line 744
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->d:Lcom/anythink/core/common/f/h;

    const/4 v1, 0x1

    .line 6730
    iput v1, v0, Lcom/anythink/core/common/f/h;->r:I

    .line 748
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/anythink/core/common/p/d;->j:Z

    if-nez v0, :cond_4

    .line 750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 751
    invoke-static {}, Lcom/anythink/core/common/c;->a()Lcom/anythink/core/common/c;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/p/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/anythink/core/common/c;->a(Ljava/lang/String;J)V

    .line 752
    invoke-static {}, Lcom/anythink/core/common/c;->a()Lcom/anythink/core/common/c;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/p/d;->e:Ljava/lang/String;

    iget-object v4, p2, Lcom/anythink/core/common/p/a;->b:Lcom/anythink/core/api/AdError;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/anythink/core/common/c;->a(Ljava/lang/String;JLcom/anythink/core/api/AdError;)V

    .line 755
    :cond_4
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->d:Lcom/anythink/core/common/f/h;

    iput-object v0, p2, Lcom/anythink/core/common/p/a;->d:Lcom/anythink/core/common/f/h;

    .line 756
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    iput-object v0, p2, Lcom/anythink/core/common/p/a;->e:Lcom/anythink/core/common/f/au;

    .line 758
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->h:Lcom/anythink/core/common/p/b;

    if-eqz v0, :cond_5

    .line 759
    iget-object v1, p0, Lcom/anythink/core/common/p/d;->r:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/anythink/core/common/p/b;->a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/p/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/anythink/core/common/p/b;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/anythink/core/common/p/d;->h:Lcom/anythink/core/common/p/b;

    return-void
.end method

.method public final a(Lcom/anythink/core/common/p/c;)V
    .locals 1

    .line 104
    iput-object p1, p0, Lcom/anythink/core/common/p/d;->o:Lcom/anythink/core/common/p/c;

    .line 106
    iget-object v0, p1, Lcom/anythink/core/common/p/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/core/common/p/d;->b:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Lcom/anythink/core/common/p/c;->h:Lcom/anythink/core/common/f/h;

    iput-object v0, p0, Lcom/anythink/core/common/p/d;->d:Lcom/anythink/core/common/f/h;

    .line 108
    iget p1, p1, Lcom/anythink/core/common/p/c;->g:I

    iput p1, p0, Lcom/anythink/core/common/p/d;->f:I

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 5

    monitor-enter p0

    .line 492
    :try_start_0
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->k()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 493
    monitor-exit p0

    return-void

    .line 496
    :cond_0
    :try_start_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/anythink/core/common/p/d;->p:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 497
    iput-boolean v0, p0, Lcom/anythink/core/common/p/d;->j:Z

    .line 500
    new-instance v0, Lcom/anythink/core/common/p/a;

    invoke-direct {v0}, Lcom/anythink/core/common/p/a;-><init>()V

    const/4 v1, 0x0

    .line 501
    iput v1, v0, Lcom/anythink/core/common/p/a;->a:I

    .line 502
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/anythink/core/common/p/d;->k:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/anythink/core/common/p/a;->c:J

    const-string v1, "2001"

    const-string v2, ""

    const-string v3, ""

    .line 503
    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/p/a;->b:Lcom/anythink/core/api/AdError;

    .line 505
    iget-object v1, p0, Lcom/anythink/core/common/p/d;->g:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {p0, v1, v0}, Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/p/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/anythink/core/common/p/d;->p:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 778
    invoke-direct {p0}, Lcom/anythink/core/common/p/d;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/core/common/p/d;->i:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final e()I
    .locals 1

    .line 782
    iget v0, p0, Lcom/anythink/core/common/p/d;->q:I

    return v0
.end method
