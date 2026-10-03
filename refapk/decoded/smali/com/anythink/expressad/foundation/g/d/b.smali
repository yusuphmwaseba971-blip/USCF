.class public final Lcom/anythink/expressad/foundation/g/d/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "ImageLoader"

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:Ljava/lang/String; = "message_key"

.field private static final e:Ljava/lang/String; = "message_bitmap"

.field private static final f:Ljava/lang/String; = "message_message"

.field private static g:Lcom/anythink/expressad/foundation/g/d/b;


# instance fields
.field private h:Lcom/anythink/expressad/foundation/g/g/c;

.field private i:Lcom/anythink/expressad/foundation/g/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/anythink/expressad/foundation/g/a/e<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/g/d/c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/d/b;->j:Ljava/util/LinkedHashMap;

    .line 87
    new-instance v0, Lcom/anythink/expressad/foundation/g/g/c;

    invoke-direct {v0, p1}, Lcom/anythink/expressad/foundation/g/g/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/d/b;->h:Lcom/anythink/expressad/foundation/g/g/c;

    .line 88
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int p1, v0

    .line 89
    div-int/lit8 p1, p1, 0x5

    .line 90
    new-instance v0, Lcom/anythink/expressad/foundation/g/a/c;

    invoke-direct {v0, p1}, Lcom/anythink/expressad/foundation/g/a/c;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/d/b;->i:Lcom/anythink/expressad/foundation/g/a/e;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;
    .locals 1

    .line 94
    sget-object v0, Lcom/anythink/expressad/foundation/g/d/b;->g:Lcom/anythink/expressad/foundation/g/d/b;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/anythink/expressad/foundation/g/d/b;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/foundation/g/d/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/expressad/foundation/g/d/b;->g:Lcom/anythink/expressad/foundation/g/d/b;

    .line 97
    :cond_0
    sget-object p0, Lcom/anythink/expressad/foundation/g/d/b;->g:Lcom/anythink/expressad/foundation/g/d/b;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/foundation/g/d/d;
    .locals 2

    .line 199
    new-instance v0, Lcom/anythink/expressad/foundation/g/d/b$2;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/foundation/g/d/b$2;-><init>(Lcom/anythink/expressad/foundation/g/d/b;Ljava/lang/String;)V

    .line 254
    new-instance v1, Lcom/anythink/expressad/foundation/g/d/d;

    invoke-direct {v1, p1, p2, p3}, Lcom/anythink/expressad/foundation/g/d/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1, p4}, Lcom/anythink/expressad/foundation/g/d/d;->a(Z)V

    .line 257
    invoke-virtual {v1, v0}, Lcom/anythink/expressad/foundation/g/d/d;->a(Lcom/anythink/expressad/foundation/g/d/d$a;)V

    return-object v1
.end method

.method static synthetic a(Lcom/anythink/expressad/foundation/g/d/b;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/anythink/expressad/foundation/g/d/b;->j:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static a()V
    .locals 1

    .line 108
    sget-object v0, Lcom/anythink/expressad/foundation/g/d/b;->g:Lcom/anythink/expressad/foundation/g/d/b;

    .line 1301
    iget-object v0, v0, Lcom/anythink/expressad/foundation/g/d/b;->i:Lcom/anythink/expressad/foundation/g/a/e;

    if-eqz v0, :cond_0

    .line 1302
    invoke-interface {v0}, Lcom/anythink/expressad/foundation/g/a/e;->b()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/anythink/expressad/foundation/g/d/b;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/anythink/expressad/foundation/g/d/c;)V
    .locals 2

    .line 2275
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/foundation/g/d/b$3;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/anythink/expressad/foundation/g/d/b$3;-><init>(Lcom/anythink/expressad/foundation/g/d/b;Lcom/anythink/expressad/foundation/g/d/c;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic a(Lcom/anythink/expressad/foundation/g/d/b;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V
    .locals 2

    .line 3290
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/foundation/g/d/b$4;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/anythink/expressad/foundation/g/d/b$4;-><init>(Lcom/anythink/expressad/foundation/g/d/b;Lcom/anythink/expressad/foundation/g/d/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/expressad/foundation/g/d/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/anythink/expressad/foundation/g/d/c;)V
    .locals 2

    .line 3180
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/b;->j:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 3181
    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/d/b;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p5, :cond_0

    .line 3183
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3184
    invoke-virtual {v1, p5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3185
    iget-object p5, p0, Lcom/anythink/expressad/foundation/g/d/b;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {p5, p2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3199
    :cond_0
    new-instance p5, Lcom/anythink/expressad/foundation/g/d/b$2;

    invoke-direct {p5, p0, p1}, Lcom/anythink/expressad/foundation/g/d/b$2;-><init>(Lcom/anythink/expressad/foundation/g/d/b;Ljava/lang/String;)V

    .line 3254
    new-instance v1, Lcom/anythink/expressad/foundation/g/d/d;

    invoke-direct {v1, p1, p2, p3}, Lcom/anythink/expressad/foundation/g/d/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3256
    invoke-virtual {v1, p4}, Lcom/anythink/expressad/foundation/g/d/d;->a(Z)V

    .line 3257
    invoke-virtual {v1, p5}, Lcom/anythink/expressad/foundation/g/d/d;->a(Lcom/anythink/expressad/foundation/g/d/d$a;)V

    .line 3188
    iget-object p0, p0, Lcom/anythink/expressad/foundation/g/d/b;->h:Lcom/anythink/expressad/foundation/g/g/c;

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/foundation/g/g/c;->a(Lcom/anythink/expressad/foundation/g/g/a;)V

    goto :goto_0

    .line 3190
    :cond_1
    iget-object p0, p0, Lcom/anythink/expressad/foundation/g/d/b;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    if-eqz p0, :cond_2

    if-eqz p5, :cond_2

    .line 3191
    invoke-virtual {p0, p5}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3192
    invoke-virtual {p0, p5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3195
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/anythink/expressad/foundation/g/d/c;)V
    .locals 2

    .line 275
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/foundation/g/d/b$3;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/anythink/expressad/foundation/g/d/b$3;-><init>(Lcom/anythink/expressad/foundation/g/d/b;Lcom/anythink/expressad/foundation/g/d/c;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V
    .locals 2

    .line 290
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/foundation/g/d/b$4;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/anythink/expressad/foundation/g/d/b$4;-><init>(Lcom/anythink/expressad/foundation/g/d/b;Lcom/anythink/expressad/foundation/g/d/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V
    .locals 8

    .line 154
    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/anythink/expressad/foundation/h/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Lcom/anythink/expressad/foundation/h/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v7, Lcom/anythink/expressad/foundation/g/d/b$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/anythink/expressad/foundation/g/d/b$1;-><init>(Lcom/anythink/expressad/foundation/g/d/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    invoke-virtual {v0, v7}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/anythink/expressad/foundation/g/d/c;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/b;->j:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/d/b;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p5, :cond_0

    .line 183
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 184
    invoke-virtual {v1, p5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object p5, p0, Lcom/anythink/expressad/foundation/g/d/b;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {p5, p2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2199
    :cond_0
    new-instance p5, Lcom/anythink/expressad/foundation/g/d/b$2;

    invoke-direct {p5, p0, p1}, Lcom/anythink/expressad/foundation/g/d/b$2;-><init>(Lcom/anythink/expressad/foundation/g/d/b;Ljava/lang/String;)V

    .line 2254
    new-instance v1, Lcom/anythink/expressad/foundation/g/d/d;

    invoke-direct {v1, p1, p2, p3}, Lcom/anythink/expressad/foundation/g/d/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    invoke-virtual {v1, p4}, Lcom/anythink/expressad/foundation/g/d/d;->a(Z)V

    .line 2257
    invoke-virtual {v1, p5}, Lcom/anythink/expressad/foundation/g/d/d;->a(Lcom/anythink/expressad/foundation/g/d/d$a;)V

    .line 188
    iget-object p1, p0, Lcom/anythink/expressad/foundation/g/d/b;->h:Lcom/anythink/expressad/foundation/g/g/c;

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/foundation/g/g/c;->a(Lcom/anythink/expressad/foundation/g/g/a;)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/foundation/g/d/b;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    if-eqz p1, :cond_2

    if-eqz p5, :cond_2

    .line 191
    invoke-virtual {p1, p5}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 192
    invoke-virtual {p1, p5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private b()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/b;->i:Lcom/anythink/expressad/foundation/g/a/e;

    invoke-interface {v0}, Lcom/anythink/expressad/foundation/g/a/e;->b()V

    .line 102
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/b;->j:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/b;->i:Lcom/anythink/expressad/foundation/g/a/e;

    if-eqz v0, :cond_0

    .line 302
    invoke-interface {v0}, Lcom/anythink/expressad/foundation/g/a/e;->b()V

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 118
    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/t;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 121
    :cond_0
    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {p0, p1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 125
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/b;->i:Lcom/anythink/expressad/foundation/g/a/e;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/foundation/g/a/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 77
    invoke-virtual {p0, p1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 78
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/b;->i:Lcom/anythink/expressad/foundation/g/a/e;

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/foundation/g/a/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V
    .locals 8

    .line 113
    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2154
    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2157
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v6

    new-instance v7, Lcom/anythink/expressad/foundation/g/d/b$1;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/foundation/g/d/b$1;-><init>(Lcom/anythink/expressad/foundation/g/d/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    invoke-virtual {v6, v7}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    .line 136
    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/t;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 139
    :cond_0
    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    return v0

    .line 143
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/b;->i:Lcom/anythink/expressad/foundation/g/a/e;

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {v0}, Lcom/anythink/expressad/foundation/g/a/e;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/d/b;->i:Lcom/anythink/expressad/foundation/g/a/e;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/foundation/g/a/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method
