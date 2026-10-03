.class final Lcom/anythink/core/common/p/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/au;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/ATBaseAdAdapter;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/anythink/core/common/f/au;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/anythink/core/common/p/d;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/p/d;Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/lang/String;Lcom/anythink/core/common/f/au;Ljava/util/Map;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/anythink/core/common/p/d$1;->e:Lcom/anythink/core/common/p/d;

    iput-object p2, p0, Lcom/anythink/core/common/p/d$1;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    iput-object p3, p0, Lcom/anythink/core/common/p/d$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/common/p/d$1;->c:Lcom/anythink/core/common/f/au;

    iput-object p5, p0, Lcom/anythink/core/common/p/d$1;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 318
    iget-object v0, p0, Lcom/anythink/core/common/p/d$1;->e:Lcom/anythink/core/common/p/d;

    iget-object v0, v0, Lcom/anythink/core/common/p/d;->h:Lcom/anythink/core/common/p/b;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/anythink/core/common/p/d$1;->e:Lcom/anythink/core/common/p/d;

    iget-object v0, v0, Lcom/anythink/core/common/p/d;->h:Lcom/anythink/core/common/p/b;

    iget-object v1, p0, Lcom/anythink/core/common/p/d$1;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    iget-object v2, p0, Lcom/anythink/core/common/p/d$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/common/p/b;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/lang/String;)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/p/d$1;->e:Lcom/anythink/core/common/p/d;

    invoke-static {v0}, Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/common/p/d;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "2006"

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/anythink/core/common/p/d$1;->e:Lcom/anythink/core/common/p/d;

    iget-object v0, v0, Lcom/anythink/core/common/p/d;->h:Lcom/anythink/core/common/p/b;

    if-eqz v0, :cond_1

    .line 327
    new-instance v0, Lcom/anythink/core/common/p/a;

    invoke-direct {v0}, Lcom/anythink/core/common/p/a;-><init>()V

    .line 328
    iput v3, v0, Lcom/anythink/core/common/p/a;->a:I

    .line 329
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/anythink/core/common/p/d$1;->e:Lcom/anythink/core/common/p/d;

    iget-wide v5, v5, Lcom/anythink/core/common/p/d;->k:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/anythink/core/common/p/a;->c:J

    const-string v3, "Request Context is null! Please check the Ad init Context."

    .line 330
    invoke-static {v2, v1, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/p/a;->b:Lcom/anythink/core/api/AdError;

    .line 332
    iget-object v1, p0, Lcom/anythink/core/common/p/d$1;->e:Lcom/anythink/core/common/p/d;

    iget-object v2, p0, Lcom/anythink/core/common/p/d$1;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/p/a;)V

    :cond_1
    return-void

    .line 337
    :cond_2
    iget-object v4, p0, Lcom/anythink/core/common/p/d$1;->e:Lcom/anythink/core/common/p/d;

    iget-object v5, p0, Lcom/anythink/core/common/p/d$1;->c:Lcom/anythink/core/common/f/au;

    iget-object v6, p0, Lcom/anythink/core/common/p/d$1;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-static {v4, v0, v5, v6}, Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/common/p/d;Landroid/content/Context;Lcom/anythink/core/common/f/au;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    .line 340
    :try_start_0
    iget-object v4, p0, Lcom/anythink/core/common/p/d$1;->e:Lcom/anythink/core/common/p/d;

    invoke-static {v4}, Lcom/anythink/core/common/p/d;->b(Lcom/anythink/core/common/p/d;)Ljava/util/Map;

    move-result-object v4

    .line 343
    iget-object v5, p0, Lcom/anythink/core/common/p/d$1;->e:Lcom/anythink/core/common/p/d;

    iget-object v6, p0, Lcom/anythink/core/common/p/d$1;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-static {v5, v6}, Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/common/p/d;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    .line 345
    invoke-static {}, Lcom/anythink/core/common/i/e;->a()Lcom/anythink/core/common/i/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/common/i/e;->c()V

    .line 347
    iget-object v5, p0, Lcom/anythink/core/common/p/d$1;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    iget-object v6, p0, Lcom/anythink/core/common/p/d$1;->d:Ljava/util/Map;

    new-instance v7, Lcom/anythink/core/common/p/d$a;

    iget-object v8, p0, Lcom/anythink/core/common/p/d$1;->e:Lcom/anythink/core/common/p/d;

    invoke-direct {v7, v8, v8, v5, v3}, Lcom/anythink/core/common/p/d$a;-><init>(Lcom/anythink/core/common/p/d;Lcom/anythink/core/common/p/d;Lcom/anythink/core/api/ATBaseAdAdapter;B)V

    invoke-virtual {v5, v0, v6, v4, v7}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalLoad(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATCustomLoadListener;)V

    .line 348
    iget-object v0, p0, Lcom/anythink/core/common/p/d$1;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    .line 349
    iget-object v4, p0, Lcom/anythink/core/common/p/d$1;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v4}, Lcom/anythink/core/api/ATBaseAdAdapter;->getInternalNetworkPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/anythink/core/common/f/h;->g(Ljava/lang/String;)V

    .line 352
    iget-object v4, p0, Lcom/anythink/core/common/p/d$1;->e:Lcom/anythink/core/common/p/d;

    iget-object v4, v4, Lcom/anythink/core/common/p/d;->h:Lcom/anythink/core/common/p/b;

    if-eqz v4, :cond_3

    .line 353
    iget-object v4, p0, Lcom/anythink/core/common/p/d$1;->e:Lcom/anythink/core/common/p/d;

    iget-object v4, v4, Lcom/anythink/core/common/p/d;->h:Lcom/anythink/core/common/p/b;

    iget-object v5, p0, Lcom/anythink/core/common/p/d$1;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-interface {v4, v0, v5}, Lcom/anythink/core/common/p/b;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 358
    new-instance v4, Lcom/anythink/core/common/p/a;

    invoke-direct {v4}, Lcom/anythink/core/common/p/a;-><init>()V

    .line 359
    iput v3, v4, Lcom/anythink/core/common/p/a;->a:I

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v3, p0, Lcom/anythink/core/common/p/d$1;->e:Lcom/anythink/core/common/p/d;

    iget-wide v7, v3, Lcom/anythink/core/common/p/d;->k:J

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lcom/anythink/core/common/p/a;->c:J

    .line 361
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    iput-object v0, v4, Lcom/anythink/core/common/p/a;->b:Lcom/anythink/core/api/AdError;

    .line 363
    iget-object v0, p0, Lcom/anythink/core/common/p/d$1;->e:Lcom/anythink/core/common/p/d;

    iget-object v1, p0, Lcom/anythink/core/common/p/d$1;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0, v1, v4}, Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/p/a;)V

    return-void
.end method
