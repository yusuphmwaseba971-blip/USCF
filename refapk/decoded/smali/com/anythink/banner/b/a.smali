.class public Lcom/anythink/banner/b/a;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/anythink/banner/a/c;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/anythink/core/common/m/c;

.field d:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

.field private e:Ljava/lang/Runnable;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/anythink/banner/a/c;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/anythink/banner/b/a;->f:Z

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/banner/b/a;->b:Ljava/lang/ref/WeakReference;

    .line 31
    new-instance p1, Lcom/anythink/banner/b/a$1;

    invoke-direct {p1, p0}, Lcom/anythink/banner/b/a$1;-><init>(Lcom/anythink/banner/b/a;)V

    iput-object p1, p0, Lcom/anythink/banner/b/a;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/anythink/banner/b/a;)Z
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/anythink/banner/b/a;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/anythink/banner/b/a;)V
    .locals 1

    .line 1118
    iget-object v0, p0, Lcom/anythink/banner/b/a;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/banner/a/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1120
    invoke-interface {v0}, Lcom/anythink/banner/a/c;->timeUpRefreshView()V

    return-void

    .line 1122
    :cond_1
    invoke-virtual {p0}, Lcom/anythink/banner/b/a;->c()V

    return-void
.end method

.method private d()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/anythink/banner/b/a;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/banner/a/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v0}, Lcom/anythink/banner/a/c;->timeUpRefreshView()V

    return-void

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/anythink/banner/b/a;->c()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/anythink/banner/b/a;->d:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/anythink/banner/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/anythink/banner/b/a;->f:Z

    return v0
.end method

.method public final declared-synchronized b()V
    .locals 6

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/anythink/banner/b/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 50
    monitor-exit p0

    return-void

    .line 52
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/f;->a(Landroid/content/Context;)Lcom/anythink/core/d/f;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/b/a;->a:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v1}, Lcom/anythink/core/d/f;->a(Ljava/lang/String;)Lcom/anythink/core/d/e;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/anythink/banner/b/a;->c:Lcom/anythink/core/common/m/c;

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/anythink/banner/b/a;->c()V

    :cond_1
    if-eqz v0, :cond_5

    .line 67
    invoke-virtual {v0}, Lcom/anythink/core/d/e;->ae()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 71
    iput-boolean v2, p0, Lcom/anythink/banner/b/a;->f:Z

    .line 76
    invoke-virtual {v0}, Lcom/anythink/core/d/e;->a()I

    move-result v1

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 77
    iget-object v1, p0, Lcom/anythink/banner/b/a;->d:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->as()J

    move-result-wide v1

    goto :goto_0

    :cond_2
    move-wide v1, v3

    :goto_0
    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    .line 90
    invoke-virtual {v0}, Lcom/anythink/core/d/e;->af()J

    move-result-wide v1

    :cond_3
    const-wide/16 v3, 0x7d0

    cmp-long v0, v1, v3

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    move-wide v1, v3

    .line 108
    :goto_1
    new-instance v0, Lcom/anythink/core/common/m/c;

    iget-object v3, p0, Lcom/anythink/banner/b/a;->e:Ljava/lang/Runnable;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/core/common/m/c;-><init>(JLjava/lang/Runnable;B)V

    iput-object v0, p0, Lcom/anythink/banner/b/a;->c:Lcom/anythink/core/common/m/c;

    .line 109
    invoke-virtual {v0}, Lcom/anythink/core/common/m/c;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/anythink/banner/b/a;->c:Lcom/anythink/core/common/m/c;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/anythink/core/common/m/c;->c()V

    :cond_0
    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/anythink/banner/b/a;->c:Lcom/anythink/core/common/m/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
