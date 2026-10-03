.class public final Lcom/anythink/core/c/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/c/b/a;


# static fields
.field private static final a:Ljava/lang/String; = "PlacementStatRecWrapper"


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Lcom/anythink/core/c/b/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/anythink/core/c/b/c;

    invoke-direct {v0}, Lcom/anythink/core/c/b/c;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/c/b/b;->c:Lcom/anythink/core/c/b/a;

    .line 30
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(I)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/c/b/b;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/c/b/b;)Lcom/anythink/core/c/b/a;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/anythink/core/c/b/b;->c:Lcom/anythink/core/c/b/a;

    return-object p0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/anythink/core/c/b/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/a/a;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "PlacementStatRecWrapper"

    const-string v1, "The getStatisticsBeanList method cannot be called from the main thread."

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/c/b/b;->c:Lcom/anythink/core/c/b/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/anythink/core/c/b/a;->a(ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p1, v0}, Lcom/anythink/core/c/b/b;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 2

    .line 68
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "PlacementStatRecWrapper"

    const-string v1, "The getUserValueParams method cannot be called from the main thread."

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/c/b/b;->c:Lcom/anythink/core/c/b/a;

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/c/b/a;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;II)Lorg/json/JSONObject;
    .locals 2

    .line 76
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "PlacementStatRecWrapper"

    const-string v1, "The getUserValueParams with count method cannot be called from the main thread."

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/c/b/b;->c:Lcom/anythink/core/c/b/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/anythink/core/c/b/a;->a(Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/anythink/core/common/f/at;Lcom/anythink/core/common/f/au;)V
    .locals 1

    .line 45
    new-instance v0, Lcom/anythink/core/c/b/b$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/core/c/b/b$2;-><init>(Lcom/anythink/core/c/b/b;Lcom/anythink/core/common/f/at;Lcom/anythink/core/common/f/au;)V

    invoke-direct {p0, v0}, Lcom/anythink/core/c/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/au;)V
    .locals 1

    .line 35
    new-instance v0, Lcom/anythink/core/c/b/b$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/anythink/core/c/b/b$1;-><init>(Lcom/anythink/core/c/b/b;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/au;)V

    invoke-direct {p0, v0}, Lcom/anythink/core/c/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/anythink/core/c/b/b;->c:Lcom/anythink/core/c/b/a;

    invoke-interface {v0, p1}, Lcom/anythink/core/c/b/a;->b(Ljava/lang/String;)V

    return-void
.end method
