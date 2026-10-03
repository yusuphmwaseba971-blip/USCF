.class public Lcom/anythink/core/c/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/anythink/core/c/b;


# instance fields
.field private final b:Lcom/anythink/core/c/b/b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/anythink/core/c/b/b;

    invoke-direct {v0}, Lcom/anythink/core/c/b/b;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b/b;

    return-void
.end method

.method public static a()Lcom/anythink/core/c/b;
    .locals 2

    .line 24
    sget-object v0, Lcom/anythink/core/c/b;->a:Lcom/anythink/core/c/b;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/anythink/core/c/b;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/anythink/core/c/b;->a:Lcom/anythink/core/c/b;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/anythink/core/c/b;

    invoke-direct {v1}, Lcom/anythink/core/c/b;-><init>()V

    sput-object v1, Lcom/anythink/core/c/b;->a:Lcom/anythink/core/c/b;

    .line 29
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
    sget-object v0, Lcom/anythink/core/c/b;->a:Lcom/anythink/core/c/b;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b/b;

    const/4 v1, 0x0

    .line 1063
    invoke-virtual {v0, p1, v1}, Lcom/anythink/core/c/b/b;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b/b;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1, p2}, Lcom/anythink/core/c/b/b;->a(Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/anythink/core/common/f/at;Lcom/anythink/core/common/f/au;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/c/b/b;->a(Lcom/anythink/core/common/f/at;Lcom/anythink/core/common/f/au;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/au;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/core/c/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/au;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/anythink/core/c/b;->b:Lcom/anythink/core/c/b/b;

    invoke-virtual {v0, p1}, Lcom/anythink/core/c/b/b;->b(Ljava/lang/String;)V

    return-void
.end method
