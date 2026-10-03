.class final Lcom/anythink/core/common/p/d$a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/p/d$a;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/anythink/core/common/p/d$a;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/p/d$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/anythink/core/common/p/d$a$3;->c:Lcom/anythink/core/common/p/d$a;

    iput-object p2, p0, Lcom/anythink/core/common/p/d$a$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/p/d$a$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 599
    iget-object v0, p0, Lcom/anythink/core/common/p/d$a$3;->c:Lcom/anythink/core/common/p/d$a;

    monitor-enter v0

    .line 600
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/p/d$a$3;->c:Lcom/anythink/core/common/p/d$a;

    iget-object v1, v1, Lcom/anythink/core/common/p/d$a;->b:Lcom/anythink/core/common/p/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/core/common/p/d$a$3;->c:Lcom/anythink/core/common/p/d$a;

    iget-object v1, v1, Lcom/anythink/core/common/p/d$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v1, :cond_0

    .line 602
    new-instance v1, Lcom/anythink/core/common/p/a;

    invoke-direct {v1}, Lcom/anythink/core/common/p/a;-><init>()V

    const/4 v2, 0x0

    .line 603
    iput v2, v1, Lcom/anythink/core/common/p/a;->a:I

    const-string v2, "4001"

    .line 604
    iget-object v3, p0, Lcom/anythink/core/common/p/d$a$3;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/common/p/d$a$3;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/p/a;->b:Lcom/anythink/core/api/AdError;

    .line 605
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/anythink/core/common/p/d$a$3;->c:Lcom/anythink/core/common/p/d$a;

    iget-object v4, v4, Lcom/anythink/core/common/p/d$a;->c:Lcom/anythink/core/common/p/d;

    iget-wide v4, v4, Lcom/anythink/core/common/p/d;->k:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/anythink/core/common/p/a;->c:J

    .line 607
    iget-object v2, p0, Lcom/anythink/core/common/p/d$a$3;->c:Lcom/anythink/core/common/p/d$a;

    iget-object v2, v2, Lcom/anythink/core/common/p/d$a;->b:Lcom/anythink/core/common/p/d;

    iget-object v3, p0, Lcom/anythink/core/common/p/d$a$3;->c:Lcom/anythink/core/common/p/d$a;

    iget-object v3, v3, Lcom/anythink/core/common/p/d$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v2, v3, v1}, Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/p/a;)V

    .line 608
    iget-object v1, p0, Lcom/anythink/core/common/p/d$a$3;->c:Lcom/anythink/core/common/p/d$a;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/anythink/core/common/p/d$a;->b:Lcom/anythink/core/common/p/d;

    .line 609
    iget-object v1, p0, Lcom/anythink/core/common/p/d$a$3;->c:Lcom/anythink/core/common/p/d$a;

    iput-object v2, v1, Lcom/anythink/core/common/p/d$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 611
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
