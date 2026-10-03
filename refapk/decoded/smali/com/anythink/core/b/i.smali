.class public Lcom/anythink/core/b/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/b/i$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "i"


# instance fields
.field b:Lcom/anythink/core/common/f/a;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/anythink/core/b/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/anythink/core/common/f/a;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    .line 44
    iget-object p1, p1, Lcom/anythink/core/common/f/a;->q:Ljava/util/Map;

    iput-object p1, p0, Lcom/anythink/core/b/i;->c:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/au;)V
    .locals 4

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/az;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v2, v2, Lcom/anythink/core/common/f/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/anythink/core/d/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/au;)Ljava/util/Map;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->s:Lcom/anythink/core/common/f/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/h;->S()Lcom/anythink/core/common/f/h;

    move-result-object v1

    const/4 v2, 0x0

    .line 78
    invoke-static {v1, p2, v2, v2}, Lcom/anythink/core/common/o/u;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;IZ)V

    .line 80
    invoke-static {v0, v1}, Lcom/anythink/core/common/o/h;->a(Ljava/util/Map;Lcom/anythink/core/common/f/h;)V

    .line 82
    iget-object v1, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/core/b/i;->c:Ljava/util/Map;

    new-instance v3, Lcom/anythink/core/b/i$2;

    invoke-direct {v3, p0, p2}, Lcom/anythink/core/b/i$2;-><init>(Lcom/anythink/core/b/i;Lcom/anythink/core/common/f/au;)V

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/anythink/core/api/ATBaseAdAdapter;->getBidRequestInfo(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBidRequestInfoListener;)V

    .line 99
    iget-object v0, p0, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, p2, p1}, Lcom/anythink/core/b/i$a;->onBidTokenObtainStart(Lcom/anythink/core/common/f/au;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    iget-object v0, p0, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/b/i$a;->onBidTokenObtainFail(Ljava/lang/String;Lcom/anythink/core/common/f/au;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/i;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/au;)V
    .locals 4

    .line 1076
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/az;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v2, v2, Lcom/anythink/core/common/f/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/anythink/core/d/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/au;)Ljava/util/Map;

    move-result-object v0

    .line 1077
    iget-object v1, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->s:Lcom/anythink/core/common/f/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/h;->S()Lcom/anythink/core/common/f/h;

    move-result-object v1

    const/4 v2, 0x0

    .line 1078
    invoke-static {v1, p2, v2, v2}, Lcom/anythink/core/common/o/u;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;IZ)V

    .line 1080
    invoke-static {v0, v1}, Lcom/anythink/core/common/o/h;->a(Ljava/util/Map;Lcom/anythink/core/common/f/h;)V

    .line 1082
    iget-object v1, p0, Lcom/anythink/core/b/i;->b:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/core/b/i;->c:Ljava/util/Map;

    new-instance v3, Lcom/anythink/core/b/i$2;

    invoke-direct {v3, p0, p2}, Lcom/anythink/core/b/i$2;-><init>(Lcom/anythink/core/b/i;Lcom/anythink/core/common/f/au;)V

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/anythink/core/api/ATBaseAdAdapter;->getBidRequestInfo(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBidRequestInfoListener;)V

    .line 1099
    iget-object v0, p0, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    if-eqz v0, :cond_0

    .line 1100
    invoke-interface {v0, p2, p1}, Lcom/anythink/core/b/i$a;->onBidTokenObtainStart(Lcom/anythink/core/common/f/au;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1103
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1105
    iget-object p0, p0, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    if-eqz p0, :cond_1

    .line 1106
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/anythink/core/b/i$a;->onBidTokenObtainFail(Ljava/lang/String;Lcom/anythink/core/common/f/au;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/i;Lcom/anythink/core/common/f/au;Lcom/anythink/core/api/ATBidRequestInfo;)V
    .locals 2

    .line 1113
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/i$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/anythink/core/b/i$3;-><init>(Lcom/anythink/core/b/i;Lcom/anythink/core/api/ATBidRequestInfo;Lcom/anythink/core/common/f/au;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/api/ATBidRequestInfo;)V
    .locals 2

    .line 113
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/i$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/anythink/core/b/i$3;-><init>(Lcom/anythink/core/b/i;Lcom/anythink/core/api/ATBidRequestInfo;Lcom/anythink/core/common/f/au;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/b/i$a;)V
    .locals 2

    .line 49
    iput-object p2, p0, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    .line 51
    invoke-static {p1}, Lcom/anythink/core/common/o/j;->a(Lcom/anythink/core/common/f/au;)Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "There is no Network Adapter."

    .line 55
    invoke-interface {p2, v0, p1}, Lcom/anythink/core/b/i$a;->onBidTokenObtainFail(Ljava/lang/String;Lcom/anythink/core/common/f/au;)V

    return-void

    .line 60
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object p2

    new-instance v1, Lcom/anythink/core/b/i$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/anythink/core/b/i$1;-><init>(Lcom/anythink/core/b/i;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/au;)V

    invoke-virtual {p2, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
