.class public final Lcom/anythink/basead/a/j;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/anythink/basead/a/j;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/anythink/core/common/o/a/c;

.field private d:Lcom/anythink/core/common/o/a/f$b;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/a/j;->b:Landroid/content/Context;

    .line 19
    new-instance v0, Lcom/anythink/core/common/o/a/c;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/anythink/core/common/o/a/c;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/basead/a/j;->c:Lcom/anythink/core/common/o/a/c;

    .line 20
    new-instance v0, Lcom/anythink/core/common/o/a/f$b;

    invoke-direct {v0}, Lcom/anythink/core/common/o/a/f$b;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/a/j;->d:Lcom/anythink/core/common/o/a/f$b;

    return-void
.end method

.method public static a()Lcom/anythink/basead/a/j;
    .locals 2

    .line 24
    sget-object v0, Lcom/anythink/basead/a/j;->a:Lcom/anythink/basead/a/j;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/anythink/basead/a/g;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/anythink/basead/a/j;->a:Lcom/anythink/basead/a/j;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/anythink/basead/a/j;

    invoke-direct {v1}, Lcom/anythink/basead/a/j;-><init>()V

    sput-object v1, Lcom/anythink/basead/a/j;->a:Lcom/anythink/basead/a/j;

    .line 28
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/basead/a/j;->a:Lcom/anythink/basead/a/j;

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/anythink/core/common/o/a/c;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/anythink/basead/a/j;->c:Lcom/anythink/core/common/o/a/c;

    return-object v0
.end method

.method public final c()Lcom/anythink/core/common/o/a/f$b;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/anythink/basead/a/j;->d:Lcom/anythink/core/common/o/a/f$b;

    return-object v0
.end method
