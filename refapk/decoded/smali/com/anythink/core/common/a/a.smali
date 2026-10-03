.class public Lcom/anythink/core/common/a/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Lcom/anythink/core/common/a/a;


# instance fields
.field a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f/r;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/anythink/core/common/c/k;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/c/k;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/k;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/a/a;->c:Lcom/anythink/core/common/c/k;

    .line 40
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/core/common/a/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a()Lcom/anythink/core/common/a/a;
    .locals 2

    .line 45
    sget-object v0, Lcom/anythink/core/common/a/a;->b:Lcom/anythink/core/common/a/a;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/anythink/core/common/a/a;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/anythink/core/common/a/a;->b:Lcom/anythink/core/common/a/a;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/anythink/core/common/a/a;

    invoke-direct {v1}, Lcom/anythink/core/common/a/a;-><init>()V

    sput-object v1, Lcom/anythink/core/common/a/a;->b:Lcom/anythink/core/common/a/a;

    .line 49
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/core/common/a/a;->b:Lcom/anythink/core/common/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/core/common/a/a;)Lcom/anythink/core/common/c/k;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/anythink/core/common/a/a;->c:Lcom/anythink/core/common/c/k;

    return-object p0
.end method

.method static synthetic a(Lcom/anythink/core/common/a/a;Lcom/anythink/core/common/c/k;)Lcom/anythink/core/common/c/k;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/anythink/core/common/a/a;->c:Lcom/anythink/core/common/c/k;

    return-object p1
.end method

.method private static b(Lcom/anythink/core/common/f/q;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/anythink/core/common/f/q;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/f/q;->token:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/anythink/core/common/f/q;->i:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/anythink/core/common/f/q;->d:I

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/a/d;->a(Ljava/lang/String;Lorg/json/JSONObject;I)Lcom/anythink/core/common/f/j;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 80
    iput-object v0, p0, Lcom/anythink/core/common/f/q;->i:Ljava/lang/String;

    return-void

    .line 83
    :cond_0
    iget-wide v1, p0, Lcom/anythink/core/common/f/q;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/f/j;->c(J)V

    .line 85
    iget p0, p0, Lcom/anythink/core/common/f/q;->d:I

    const/16 v1, 0x43

    if-ne p0, v1, :cond_1

    .line 86
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/anythink/core/common/d/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/c;

    move-result-object p0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->V()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/anythink/core/common/d/c;->a(Ljava/lang/String;J)V

    .line 87
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/anythink/core/common/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/a;

    move-result-object p0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->V()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/anythink/core/common/d/a;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_win_notice"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "anythinkadx_file"

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_win_notice"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "anythinkadx_file"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    return v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/common/f/ag;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/anythink/core/common/a/a;->c:Lcom/anythink/core/common/c/k;

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/c/k;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/k;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/a/a;->c:Lcom/anythink/core/common/c/k;

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/anythink/core/common/a/a;->c:Lcom/anythink/core/common/c/k;

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/c/k;->c(Ljava/lang/String;)Lcom/anythink/core/common/f/ag;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f/q;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/anythink/core/common/a/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/r;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/anythink/core/common/a/a;->c:Lcom/anythink/core/common/c/k;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/c/k;->b(Ljava/lang/String;)Lcom/anythink/core/common/f/r;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/anythink/core/common/a/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    invoke-virtual {v0, p2}, Lcom/anythink/core/common/f/r;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/q;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/anythink/core/common/a/a;->c:Lcom/anythink/core/common/c/k;

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/c/k;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/k;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/a/a;->c:Lcom/anythink/core/common/c/k;

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/anythink/core/common/a/a;->c:Lcom/anythink/core/common/c/k;

    invoke-virtual {p1, p2, p3, p4}, Lcom/anythink/core/common/c/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/q;)V
    .locals 3

    .line 96
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/a/a$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/a/a$1;-><init>(Lcom/anythink/core/common/a/a;Lcom/anythink/core/common/f/q;)V

    const/4 p1, 0x2

    const/4 v2, 0x1

    .line 1137
    invoke-virtual {v0, v1, p1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/common/f/q;)V
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/anythink/core/common/a/a;->c:Lcom/anythink/core/common/c/k;

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/c/k;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/k;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/a/a;->c:Lcom/anythink/core/common/c/k;

    .line 1076
    :cond_0
    iget-object v0, p2, Lcom/anythink/core/common/f/q;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1078
    :try_start_0
    iget-object v0, p2, Lcom/anythink/core/common/f/q;->token:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p2, Lcom/anythink/core/common/f/q;->i:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget v2, p2, Lcom/anythink/core/common/f/q;->d:I

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/a/d;->a(Ljava/lang/String;Lorg/json/JSONObject;I)Lcom/anythink/core/common/f/j;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 1080
    iput-object v0, p2, Lcom/anythink/core/common/f/q;->i:Ljava/lang/String;

    goto :goto_0

    .line 1083
    :cond_1
    iget-wide v1, p2, Lcom/anythink/core/common/f/q;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/f/j;->c(J)V

    .line 1085
    iget v1, p2, Lcom/anythink/core/common/f/q;->d:I

    const/16 v2, 0x43

    if-ne v1, v2, :cond_2

    .line 1086
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/d/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->V()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/anythink/core/common/d/c;->a(Ljava/lang/String;J)V

    .line 1087
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->V()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/anythink/core/common/d/a;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :catchall_0
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/anythink/core/common/a/a;->c:Lcom/anythink/core/common/c/k;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/c/k;->a(Ljava/lang/String;Lcom/anythink/core/common/f/q;)J

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 146
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/a/a$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/core/common/a/a$2;-><init>(Lcom/anythink/core/common/a/a;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 2137
    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_win_notice"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "anythinkadx_file"

    invoke-static {p1, v0, p2}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
