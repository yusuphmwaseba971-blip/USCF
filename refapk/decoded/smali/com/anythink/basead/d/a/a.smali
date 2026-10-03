.class public Lcom/anythink/basead/d/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/d/a/a$a;
    }
.end annotation


# static fields
.field private static volatile d:Lcom/anythink/basead/d/a/a;


# instance fields
.field a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/d/a/a;->c:Landroid/content/Context;

    .line 57
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/anythink/basead/d/a/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/anythink/basead/d/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/d/a/a;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/anythink/basead/d/a/a;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/basead/d/a/a;
    .locals 2

    .line 62
    sget-object v0, Lcom/anythink/basead/d/a/a;->d:Lcom/anythink/basead/d/a/a;

    if-nez v0, :cond_1

    .line 63
    const-class v0, Lcom/anythink/basead/d/a/a;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/anythink/basead/d/a/a;->d:Lcom/anythink/basead/d/a/a;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/anythink/basead/d/a/a;

    invoke-direct {v1, p0}, Lcom/anythink/basead/d/a/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/basead/d/a/a;->d:Lcom/anythink/basead/d/a/a;

    .line 66
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 68
    :cond_1
    :goto_0
    sget-object p0, Lcom/anythink/basead/d/a/a;->d:Lcom/anythink/basead/d/a/a;

    return-object p0
.end method

.method static synthetic a(Lcom/anythink/basead/d/a/a;Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;)Lcom/anythink/expressad/foundation/d/d;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;)Lcom/anythink/expressad/foundation/d/d;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;)Lcom/anythink/expressad/foundation/d/d;
    .locals 3

    monitor-enter p0

    .line 236
    :try_start_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 237
    monitor-exit p0

    return-object p1

    .line 239
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/anythink/core/common/f/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/d/d;->a(Ljava/lang/String;)Lcom/anythink/expressad/foundation/d/d;

    move-result-object v0

    .line 7374
    iget-object v1, v0, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 241
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    .line 243
    invoke-static {p1, v2}, Lcom/anythink/basead/d/a/b;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/expressad/foundation/d/c;)V

    .line 245
    invoke-static {p1, v1}, Lcom/anythink/basead/d/a/b;->a(Lcom/anythink/core/common/f/j;Ljava/util/List;)V

    .line 247
    invoke-static {p2, v1}, Lcom/anythink/basead/d/a/b;->a(Lcom/anythink/core/common/f/m;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/anythink/basead/d/a/a;Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;Z)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/d/a/a;Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/a$a;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/d/a/a;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V
    .locals 3

    .line 8093
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/m;)Lcom/anythink/core/common/f/j;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8094
    :try_start_1
    iget-wide v1, p1, Lcom/anythink/core/common/f/m;->m:J

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/f/j;->c(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    :catchall_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8100
    new-instance v0, Lcom/anythink/basead/g/a;

    invoke-direct {v0, p1}, Lcom/anythink/basead/g/a;-><init>(Lcom/anythink/core/common/f/m;)V

    .line 8101
    new-instance v2, Lcom/anythink/basead/d/a/a$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/anythink/basead/d/a/a$2;-><init>(Lcom/anythink/basead/d/a/a;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/g/a;->a(ILcom/anythink/core/common/h/k;)V

    return-void

    .line 8174
    :cond_0
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;Z)V

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;Z)V
    .locals 4

    .line 184
    iget-object v0, p2, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/f/j;->h(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;)Lcom/anythink/expressad/foundation/d/d;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 188
    invoke-interface {p3, p1}, Lcom/anythink/basead/d/a/a$a;->a(Lcom/anythink/core/common/f/j;)V

    :cond_0
    if-eqz p4, :cond_6

    .line 193
    iget p4, p2, Lcom/anythink/core/common/f/m;->j:I

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const-string v1, "0"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    iget p4, p2, Lcom/anythink/core/common/f/m;->j:I

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const-string v3, "2"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_0

    .line 197
    :cond_2
    iget p4, p2, Lcom/anythink/core/common/f/m;->j:I

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const-string v1, "4"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    if-eqz v0, :cond_4

    .line 1374
    iget-object p4, v0, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz p4, :cond_4

    .line 2374
    iget-object p4, v0, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_4

    .line 3374
    iget-object p4, v0, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    .line 199
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/anythink/expressad/foundation/d/c;

    invoke-static {p4}, Lcom/anythink/expressad/splash/c/b;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 4374
    iget-object p4, v0, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz p4, :cond_4

    .line 5374
    iget-object p4, v0, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    .line 202
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_4

    .line 6374
    iget-object p4, v0, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    .line 203
    invoke-static {p4}, Lcom/anythink/expressad/videocommon/b/n;->b(Ljava/util/List;)Z

    move-result v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 207
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/a$a;)V

    :cond_5
    return-void

    .line 210
    :cond_6
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/a$a;)V

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/a$a;)V
    .locals 2

    .line 253
    invoke-virtual {p1}, Lcom/anythink/core/common/f/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-static {}, Lcom/anythink/basead/d/a/b;->a()Lcom/anythink/basead/d/a/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/d/a/a$4;

    invoke-direct {v1, p0, p4, p2, p1}, Lcom/anythink/basead/d/a/a$4;-><init>(Lcom/anythink/basead/d/a/a;Lcom/anythink/basead/d/a/a$a;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/j;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/anythink/basead/d/a/b;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/b$a;)V

    return-void

    .line 281
    :cond_0
    invoke-static {}, Lcom/anythink/basead/a/e;->a()Lcom/anythink/basead/a/e;

    iget-object p3, p2, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    new-instance v0, Lcom/anythink/basead/d/a/a$5;

    invoke-direct {v0, p0, p2, p4, p1}, Lcom/anythink/basead/d/a/a$5;-><init>(Lcom/anythink/basead/d/a/a;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;Lcom/anythink/core/common/f/j;)V

    invoke-static {p3, p1, p2, v0}, Lcom/anythink/basead/a/e;->a(Ljava/lang/String;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/a/b/b$b;)V

    return-void
.end method

.method private b(Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V
    .locals 3

    .line 93
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/m;)Lcom/anythink/core/common/f/j;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    :try_start_1
    iget-wide v1, p1, Lcom/anythink/core/common/f/m;->m:J

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/f/j;->c(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    :catchall_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/anythink/basead/g/a;

    invoke-direct {v0, p1}, Lcom/anythink/basead/g/a;-><init>(Lcom/anythink/core/common/f/m;)V

    .line 101
    new-instance v2, Lcom/anythink/basead/d/a/a$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/anythink/basead/d/a/a$2;-><init>(Lcom/anythink/basead/d/a/a;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/g/a;->a(ILcom/anythink/core/common/h/k;)V

    return-void

    .line 174
    :cond_0
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/f/m;)Lcom/anythink/core/common/f/j;
    .locals 5

    .line 306
    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/a/a;->c:Landroid/content/Context;

    iget-object v2, p1, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/common/f/ag;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ag;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 311
    :cond_0
    :try_start_0
    iget-object v2, p1, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/ag;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/anythink/core/common/f/m;->f:I

    invoke-static {v2, v3, v4}, Lcom/anythink/core/common/a/d;->a(Ljava/lang/String;Lorg/json/JSONObject;I)Lcom/anythink/core/common/f/j;

    move-result-object v1

    .line 312
    invoke-virtual {v0}, Lcom/anythink/core/common/f/ag;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/f/j;->c(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    if-eqz v1, :cond_1

    .line 317
    invoke-static {v1}, Lcom/anythink/basead/d/c/c;->a(Lcom/anythink/core/common/f/l;)V

    .line 319
    invoke-static {p1, v1}, Lcom/anythink/basead/d/c/a;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/ai;)V

    :cond_1
    :goto_1
    return-object v1
.end method

.method public final a(Lcom/anythink/core/common/f/ai;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V
    .locals 2

    .line 215
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/d/a/a$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/basead/d/a/a$3;-><init>(Lcom/anythink/basead/d/a/a;Lcom/anythink/core/common/f/ai;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/anythink/basead/d/a/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/d/a/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const-string v0, "20005"

    const-string v1, "Offer data is loading."

    .line 75
    invoke-static {v0, v1}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/anythink/basead/d/a/a$a;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/basead/c/e;)V

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/a/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/d/a/a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/basead/d/a/a$1;-><init>(Lcom/anythink/basead/d/a/a;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method
