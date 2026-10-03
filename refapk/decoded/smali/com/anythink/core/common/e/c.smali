.class public Lcom/anythink/core/common/e/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "DomainManager"

.field private static final b:Ljava/lang/String; = "anythink_sdk"

.field private static final c:Ljava/lang/String; = "cdn_request_time_key"

.field private static final d:Ljava/lang/String; = "cur_using_domain_key"

.field private static final e:Ljava/lang/String; = "ru"

.field private static final f:Ljava/lang/String; = "api."

.field private static final g:I = 0x18

.field private static final h:Ljava/lang/String; = "api.toponadss.com"

.field private static final i:Ljava/lang/String;

.field private static volatile r:Lcom/anythink/core/common/e/c;


# instance fields
.field private final j:Ljava/lang/Object;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:J

.field private volatile o:Ljava/lang/String;

.field private volatile p:Ljava/lang/String;

.field private volatile q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "YXBpLmdldGZhc3Rpbi5jb20="

    .line 45
    invoke-static {v0}, Lcom/anythink/core/common/o/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/e/c;->i:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/e/c;->j:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/e/c;->k:Ljava/util/List;

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lcom/anythink/core/common/e/c;->o:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/anythink/core/common/e/c;->p:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/anythink/core/common/e/c;->q:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isCnSDK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcom/anythink/core/common/e/b;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 66
    array-length v1, v0

    if-lez v1, :cond_0

    .line 67
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iput-object v1, p0, Lcom/anythink/core/common/e/c;->q:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static a()Lcom/anythink/core/common/e/c;
    .locals 2

    .line 83
    sget-object v0, Lcom/anythink/core/common/e/c;->r:Lcom/anythink/core/common/e/c;

    if-nez v0, :cond_0

    .line 84
    const-class v0, Lcom/anythink/core/common/e/c;

    monitor-enter v0

    .line 85
    :try_start_0
    new-instance v1, Lcom/anythink/core/common/e/c;

    invoke-direct {v1}, Lcom/anythink/core/common/e/c;-><init>()V

    sput-object v1, Lcom/anythink/core/common/e/c;->r:Lcom/anythink/core/common/e/c;

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 88
    :cond_0
    :goto_0
    sget-object v0, Lcom/anythink/core/common/e/c;->r:Lcom/anythink/core/common/e/c;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/core/common/e/c;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/anythink/core/common/e/c;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/anythink/core/common/e/c;Landroid/content/Context;)V
    .locals 3

    .line 1349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1350
    iput-wide v0, p0, Lcom/anythink/core/common/e/c;->n:J

    const-string p0, "anythink_sdk"

    const-string v2, "cdn_request_time_key"

    .line 1351
    invoke-static {p1, p0, v2, v0, v1}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/e/c;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/core/common/e/c;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 397
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anythink/core/common/e/c;->c(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/anythink/core/common/e/c;->p:Ljava/lang/String;

    invoke-static {v1, p1, p2, v0}, Lcom/anythink/core/common/n/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 273
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 276
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/anythink/core/common/e/c;->p:Ljava/lang/String;

    .line 277
    iget-object p1, p0, Lcom/anythink/core/common/e/c;->p:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/anythink/core/common/e/c;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 283
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    invoke-static {p1, p2}, Lcom/anythink/core/common/e/c;->c(Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 292
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 293
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 297
    :cond_2
    invoke-direct {p0, p1}, Lcom/anythink/core/common/e/c;->c(Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/anythink/core/common/e/c;->e()V

    .line 300
    invoke-direct {p0, p1, p3}, Lcom/anythink/core/common/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p2

    const-string p3, "anythink_sdk"

    const-string v0, "cur_using_domain_key"

    invoke-static {p2, p3, v0, p1}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 240
    invoke-static {p1, p3}, Lcom/anythink/core/common/e/c;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    .line 241
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleSwitchDomain() >>> isCanSwitch = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/e/c;->d(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-direct {p0, p1, p3, p4}, Lcom/anythink/core/common/e/c;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 250
    :cond_1
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    invoke-static {p1, p3}, Lcom/anythink/core/common/e/c;->c(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_2
    invoke-static {p1, p2}, Lcom/anythink/core/common/e/c;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 255
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lcom/anythink/core/common/e/c;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 309
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isCanSwitchDomain() >>> firstDomain = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failedDomain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/e/c;->d(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 350
    iput-wide v0, p0, Lcom/anythink/core/common/e/c;->n:J

    const-string v2, "anythink_sdk"

    const-string v3, "cdn_request_time_key"

    .line 351
    invoke-static {p1, v2, v3, v0, v1}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static b(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 323
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 324
    invoke-interface {p0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_1
    if-gez v0, :cond_2

    .line 326
    invoke-interface {p0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/anythink/core/common/e/c;)Z
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/anythink/core/common/e/c;->m:Z

    return v0
.end method

.method private c(Landroid/content/Context;)Ljava/lang/Long;
    .locals 5

    .line 355
    iget-wide v0, p0, Lcom/anythink/core/common/e/c;->n:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 357
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "anythink_sdk"

    const-string v2, "cdn_request_time_key"

    invoke-static {p1, v1, v2, v0}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 359
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 137
    iput-object p1, p0, Lcom/anythink/core/common/e/c;->o:Ljava/lang/String;

    .line 138
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setCurrentDomain() >>> currentDomain = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/e/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 338
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 339
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 340
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    if-gez v0, :cond_2

    .line 342
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 3

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " threadId = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static d()Z
    .locals 2

    .line 365
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    :goto_0
    const-string v1, "ru"

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static e()V
    .locals 1

    .line 379
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/d/b;->b()V

    return-void
.end method

.method private static f()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 143
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isCnSDK()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 147
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/e/c;->o:Ljava/lang/String;

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 151
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "replaceUrlDomain() >> exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/e/c;->d(Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 6

    .line 95
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isCnSDK()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 102
    :cond_1
    iget-boolean v0, p0, Lcom/anythink/core/common/e/c;->l:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/anythink/core/common/e/c;->l:Z

    .line 107
    iget-object v0, p0, Lcom/anythink/core/common/e/c;->k:Ljava/util/List;

    .line 109
    invoke-static {}, Lcom/anythink/core/common/e/c;->d()Z

    move-result v1

    const-string v2, "api.anythinktech.com"

    if-nez v1, :cond_3

    .line 110
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "api.toponadss.com"

    .line 112
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "anythink_sdk"

    const-string v4, "cur_using_domain_key"

    const-string v5, ""

    .line 115
    invoke-static {p1, v3, v4, v5}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p0}, Lcom/anythink/core/common/e/c;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    sget-object v3, Lcom/anythink/core/common/e/a;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v3, Lcom/anythink/core/common/e/c;->i:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 122
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    move-object v5, p1

    .line 126
    :cond_5
    :goto_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "initDomain() >>> curUseDomain = "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/e/c;->d(Ljava/lang/String;)V

    .line 127
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 128
    invoke-static {v0, v5}, Lcom/anythink/core/common/e/c;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, v0}, Lcom/anythink/core/common/e/c;->a(Ljava/util/List;)V

    return-void

    .line 133
    :cond_6
    invoke-direct {p0, v0}, Lcom/anythink/core/common/e/c;->a(Ljava/util/List;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 9

    .line 164
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isCnSDK()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tryGetDomainFromCdn() >>> start isTrying = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/anythink/core/common/e/c;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/e/c;->d(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/anythink/core/common/e/c;->m:Z

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v1, ""

    .line 175
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tryGetDomainFromCdn() >>> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/e/c;->d(Ljava/lang/String;)V

    .line 182
    :goto_0
    iget-object v2, p0, Lcom/anythink/core/common/e/c;->j:Ljava/lang/Object;

    monitor-enter v2

    .line 183
    :try_start_1
    iget-boolean v3, p0, Lcom/anythink/core/common/e/c;->m:Z

    if-eqz v3, :cond_2

    .line 184
    monitor-exit v2

    return-void

    :cond_2
    const/4 v3, 0x1

    .line 187
    iput-boolean v3, p0, Lcom/anythink/core/common/e/c;->m:Z

    .line 190
    invoke-direct {p0, v0}, Lcom/anythink/core/common/e/c;->c(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/anythink/core/common/e/c;->n:J

    .line 191
    iget-wide v3, p0, Lcom/anythink/core/common/e/c;->n:J

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-lez v8, :cond_3

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/anythink/core/common/e/c;->n:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x36ee80

    div-long/2addr v3, v5

    const-wide/16 v5, 0x18

    cmp-long v8, v3, v5

    if-gez v8, :cond_3

    const-string v0, "tryGetDomainFromCdn() >>> intervalTime = "

    .line 194
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/e/c;->d(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/anythink/core/common/e/c;->k:Ljava/util/List;

    const-string v3, ""

    invoke-direct {p0, v0, v3, v1, p1}, Lcom/anythink/core/common/e/c;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iput-boolean v7, p0, Lcom/anythink/core/common/e/c;->m:Z

    .line 197
    monitor-exit v2

    return-void

    .line 202
    :cond_3
    new-instance v3, Lcom/anythink/core/common/h/h;

    invoke-direct {v3}, Lcom/anythink/core/common/h/h;-><init>()V

    new-instance v4, Lcom/anythink/core/common/e/c$1;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/anythink/core/common/e/c$1;-><init>(Lcom/anythink/core/common/e/c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7, v4}, Lcom/anythink/core/common/h/h;->a(ILcom/anythink/core/common/h/k;)V

    .line 230
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public final b()Z
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/anythink/core/common/e/c;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/e/c;->q:Ljava/lang/String;

    const-string v1, "IN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 402
    invoke-virtual {p0}, Lcom/anythink/core/common/e/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://dtcy0bqpv6jys.cloudfront.net/hostsetting/mumbai/index.html"

    return-object v0

    :cond_0
    const-string v0, "https://dtcy0bqpv6jys.cloudfront.net/hostsetting/dmlist/index.html"

    return-object v0
.end method
