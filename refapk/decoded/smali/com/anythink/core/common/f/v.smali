.class public final Lcom/anythink/core/common/f/v;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/anythink/core/api/ATMediationRequestInfo;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Lcom/anythink/core/common/b/b;

.field public f:Lcom/anythink/core/common/n;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:Lcom/anythink/core/common/f/c;

.field public j:Z

.field public k:J

.field private l:Landroid/content/Context;

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/anythink/core/common/f/v;->j:Z

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/f/v;->k:J

    return-void
.end method

.method private c()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/anythink/core/common/f/v;->d:I

    return v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/anythink/core/common/f/v;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object v0

    .line 60
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->F()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/f/v;->l:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/v;->l:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 48
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/core/common/f/v;->m:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public final b()Lcom/anythink/core/common/f/v;
    .locals 2

    .line 72
    new-instance v0, Lcom/anythink/core/common/f/v;

    invoke-direct {v0}, Lcom/anythink/core/common/f/v;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/anythink/core/common/f/v;->b:Lcom/anythink/core/api/ATMediationRequestInfo;

    iput-object v1, v0, Lcom/anythink/core/common/f/v;->b:Lcom/anythink/core/api/ATMediationRequestInfo;

    .line 75
    iget-object v1, p0, Lcom/anythink/core/common/f/v;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/v;->c:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/anythink/core/common/f/v;->l:Landroid/content/Context;

    iput-object v1, v0, Lcom/anythink/core/common/f/v;->l:Landroid/content/Context;

    .line 77
    iget-object v1, p0, Lcom/anythink/core/common/f/v;->m:Ljava/lang/ref/WeakReference;

    iput-object v1, v0, Lcom/anythink/core/common/f/v;->m:Ljava/lang/ref/WeakReference;

    .line 78
    iget v1, p0, Lcom/anythink/core/common/f/v;->d:I

    iput v1, v0, Lcom/anythink/core/common/f/v;->d:I

    .line 79
    iget-object v1, p0, Lcom/anythink/core/common/f/v;->e:Lcom/anythink/core/common/b/b;

    iput-object v1, v0, Lcom/anythink/core/common/f/v;->e:Lcom/anythink/core/common/b/b;

    .line 80
    iget-object v1, p0, Lcom/anythink/core/common/f/v;->f:Lcom/anythink/core/common/n;

    iput-object v1, v0, Lcom/anythink/core/common/f/v;->f:Lcom/anythink/core/common/n;

    .line 81
    iget-object v1, p0, Lcom/anythink/core/common/f/v;->g:Ljava/util/Map;

    iput-object v1, v0, Lcom/anythink/core/common/f/v;->g:Ljava/util/Map;

    .line 82
    iget v1, p0, Lcom/anythink/core/common/f/v;->h:I

    iput v1, v0, Lcom/anythink/core/common/f/v;->h:I

    return-object v0
.end method
