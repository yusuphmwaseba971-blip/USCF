.class public Lcom/anythink/core/common/b/r;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Lcom/anythink/core/common/b/r;


# instance fields
.field final a:I

.field b:Landroid/content/Context;

.field c:I

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x64

    .line 34
    iput v0, p0, Lcom/anythink/core/common/b/r;->a:I

    const/4 v0, 0x2

    .line 39
    iput v0, p0, Lcom/anythink/core/common/b/r;->c:I

    .line 41
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v1, p0, Lcom/anythink/core/common/b/r;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/b/r;->b:Landroid/content/Context;

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/anythink/core/common/b/r;->b:Landroid/content/Context;

    const-string v1, "anythink_sdk"

    const-string v2, "UPLOAD_DATA_LEVEL"

    invoke-static {p1, v1, v2, v0}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/b/r;->c:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;
    .locals 2

    .line 52
    sget-object v0, Lcom/anythink/core/common/b/r;->d:Lcom/anythink/core/common/b/r;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/anythink/core/common/b/r;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/anythink/core/common/b/r;->d:Lcom/anythink/core/common/b/r;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/anythink/core/common/b/r;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/b/r;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/core/common/b/r;->d:Lcom/anythink/core/common/b/r;

    .line 56
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 58
    :cond_1
    :goto_0
    sget-object p0, Lcom/anythink/core/common/b/r;->d:Lcom/anythink/core/common/b/r;

    return-object p0
.end method

.method static synthetic a(Lcom/anythink/core/common/b/r;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/core/common/b/r;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/anythink/core/common/b/r;->c:I

    return v0
.end method

.method public final a(I)V
    .locals 3

    .line 62
    iput p1, p0, Lcom/anythink/core/common/b/r;->c:I

    .line 63
    iget-object v0, p0, Lcom/anythink/core/common/b/r;->b:Landroid/content/Context;

    const-string v1, "anythink_sdk"

    const-string v2, "UPLOAD_DATA_LEVEL"

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/anythink/core/api/ATGDPRAuthCallback;)V
    .locals 2

    .line 167
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b/r$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/anythink/core/common/b/r$1;-><init>(Lcom/anythink/core/common/b/r;Lcom/anythink/core/api/ATGDPRAuthCallback;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/anythink/core/api/NetTrafficeCallback;)V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/anythink/core/common/b/r;->b:Landroid/content/Context;

    const-string v1, "anythink_sdk"

    const-string v2, "EU_INFO"

    const/16 v3, -0x64

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v3, :cond_0

    .line 186
    new-instance v0, Lcom/anythink/core/common/h/j;

    invoke-direct {v0}, Lcom/anythink/core/common/h/j;-><init>()V

    new-instance v2, Lcom/anythink/core/common/b/r$2;

    invoke-direct {v2, p0, p1}, Lcom/anythink/core/common/b/r$2;-><init>(Lcom/anythink/core/common/b/r;Lcom/anythink/core/api/NetTrafficeCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/h/j;->a(ILcom/anythink/core/common/h/k;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-eqz p1, :cond_2

    .line 244
    invoke-interface {p1, v2}, Lcom/anythink/core/api/NetTrafficeCallback;->onResultCallback(Z)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 248
    invoke-interface {p1, v1}, Lcom/anythink/core/api/NetTrafficeCallback;->onResultCallback(Z)V

    :cond_2
    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 255
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b/r$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/b/r$3;-><init>(Lcom/anythink/core/common/b/r;I)V

    const/16 p1, 0xd

    const/4 v2, 0x1

    .line 1137
    invoke-virtual {v0, v1, p1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public final b()Z
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/anythink/core/common/b/r;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 80
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->O()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->ae()I

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 93
    :cond_1
    iget v3, p0, Lcom/anythink/core/common/b/r;->c:I

    .line 96
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->ac()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 97
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->ab()I

    move-result v3

    :cond_2
    if-nez v3, :cond_3

    return v2

    :cond_3
    return v1

    .line 81
    :cond_4
    :goto_0
    iget v0, p0, Lcom/anythink/core/common/b/r;->c:I

    if-ne v0, v2, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method public final c()Z
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/anythink/core/common/b/r;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 117
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->O()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget v3, p0, Lcom/anythink/core/common/b/r;->c:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 127
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->ae()I

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    return v1

    .line 133
    :cond_2
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->ac()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 135
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->ab()I

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    return v1

    .line 142
    :cond_4
    iget v3, p0, Lcom/anythink/core/common/b/r;->c:I

    if-nez v3, :cond_5

    return v2

    .line 146
    :cond_5
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->ae()I

    move-result v0

    if-nez v0, :cond_6

    return v2

    :cond_6
    return v1

    .line 118
    :cond_7
    :goto_0
    iget v0, p0, Lcom/anythink/core/common/b/r;->c:I

    if-ne v0, v2, :cond_8

    return v1

    :cond_8
    return v2
.end method

.method public final c(I)Z
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/anythink/core/common/b/r;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/core/common/b/r;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Z
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/anythink/core/common/b/r;->b:Landroid/content/Context;

    const-string v1, "anythink_sdk"

    const-string v2, "EU_INFO"

    const/16 v3, -0x64

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
