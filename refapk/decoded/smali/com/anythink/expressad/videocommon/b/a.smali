.class public Lcom/anythink/expressad/videocommon/b/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/anythink/expressad/videocommon/b/a;


# instance fields
.field private final b:Lcom/anythink/core/common/res/a/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/anythink/core/common/res/a/c;->a()Lcom/anythink/core/common/res/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/videocommon/b/a;->b:Lcom/anythink/core/common/res/a/c;

    return-void
.end method

.method public static a()Lcom/anythink/expressad/videocommon/b/a;
    .locals 2

    .line 24
    sget-object v0, Lcom/anythink/expressad/videocommon/b/a;->a:Lcom/anythink/expressad/videocommon/b/a;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/anythink/expressad/videocommon/b/a;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/anythink/expressad/videocommon/b/a;->a:Lcom/anythink/expressad/videocommon/b/a;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/anythink/expressad/videocommon/b/a;

    invoke-direct {v1}, Lcom/anythink/expressad/videocommon/b/a;-><init>()V

    sput-object v1, Lcom/anythink/expressad/videocommon/b/a;->a:Lcom/anythink/expressad/videocommon/b/a;

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

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/expressad/videocommon/b/a;->a:Lcom/anythink/expressad/videocommon/b/a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 38
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    move-result-object v0

    const/4 v1, 0x4

    .line 1116
    invoke-static {p0}, Lcom/anythink/core/common/o/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-virtual {v0, v1, p0}, Lcom/anythink/core/common/res/d;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lcom/anythink/core/common/a/j;
    .locals 1

    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/a/k;->a()Lcom/anythink/core/common/a/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/a/k;->a(Ljava/lang/String;)Lcom/anythink/core/common/a/j;

    move-result-object p0

    return-object p0
.end method
