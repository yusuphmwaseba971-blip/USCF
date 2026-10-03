.class public Lcom/anythink/core/common/n/d;
.super Lcom/anythink/core/common/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/m<",
        "Lcom/anythink/core/common/f/k;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:Lcom/anythink/core/common/n/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/anythink/core/common/m;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/core/common/n/d;
    .locals 2

    .line 39
    sget-object v0, Lcom/anythink/core/common/n/d;->g:Lcom/anythink/core/common/n/d;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/anythink/core/common/n/d;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/anythink/core/common/n/d;->g:Lcom/anythink/core/common/n/d;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/anythink/core/common/n/d;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/n/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/core/common/n/d;->g:Lcom/anythink/core/common/n/d;

    .line 43
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 45
    :cond_1
    :goto_0
    sget-object p0, Lcom/anythink/core/common/n/d;->g:Lcom/anythink/core/common/n/d;

    return-object p0
.end method


# virtual methods
.method protected final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/k;",
            ">;)V"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f/k;

    .line 56
    invoke-virtual {v1}, Lcom/anythink/core/common/f/k;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 66
    invoke-virtual {p1}, Lcom/anythink/core/d/a;->C()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 74
    new-instance v3, Lcom/anythink/core/common/h/b;

    iget-object v4, p0, Lcom/anythink/core/common/n/d;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/anythink/core/d/a;->C()I

    move-result p1

    invoke-direct {v3, v4, p1, v0}, Lcom/anythink/core/common/h/b;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 75
    invoke-virtual {v3}, Lcom/anythink/core/common/h/b;->p()V

    .line 76
    invoke-virtual {v3, v2, v1}, Lcom/anythink/core/common/h/b;->a(ILcom/anythink/core/common/h/k;)V

    return-void

    .line 68
    :cond_1
    new-instance v2, Lcom/anythink/core/common/h/a/a;

    invoke-direct {v2, v0}, Lcom/anythink/core/common/h/a/a;-><init>(Ljava/util/List;)V

    .line 69
    invoke-virtual {p1}, Lcom/anythink/core/d/a;->B()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Lcom/anythink/core/common/h/a/a;->a(ILjava/lang/String;)V

    .line 70
    invoke-virtual {v2}, Lcom/anythink/core/common/h/a/a;->a()V

    .line 71
    invoke-virtual {v2, v1}, Lcom/anythink/core/common/h/a/a;->a(Lcom/anythink/core/common/h/a/c$a;)V

    return-void

    .line 80
    :cond_2
    new-instance p1, Lcom/anythink/core/common/h/b;

    iget-object v3, p0, Lcom/anythink/core/common/n/d;->d:Landroid/content/Context;

    invoke-direct {p1, v3, v2, v0}, Lcom/anythink/core/common/h/b;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 81
    invoke-virtual {p1}, Lcom/anythink/core/common/h/b;->p()V

    .line 82
    invoke-virtual {p1, v2, v1}, Lcom/anythink/core/common/h/b;->a(ILcom/anythink/core/common/h/k;)V

    return-void
.end method
