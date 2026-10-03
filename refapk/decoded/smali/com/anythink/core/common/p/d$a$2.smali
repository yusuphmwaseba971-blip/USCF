.class final Lcom/anythink/core/common/p/d$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/p/d$a;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/anythink/core/api/BaseAd;

.field final synthetic b:Lcom/anythink/core/common/p/d$a;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/p/d$a;[Lcom/anythink/core/api/BaseAd;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/anythink/core/common/p/d$a$2;->b:Lcom/anythink/core/common/p/d$a;

    iput-object p2, p0, Lcom/anythink/core/common/p/d$a$2;->a:[Lcom/anythink/core/api/BaseAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 581
    iget-object v0, p0, Lcom/anythink/core/common/p/d$a$2;->b:Lcom/anythink/core/common/p/d$a;

    monitor-enter v0

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/p/d$a$2;->b:Lcom/anythink/core/common/p/d$a;

    iget-object v1, v1, Lcom/anythink/core/common/p/d$a;->b:Lcom/anythink/core/common/p/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/core/common/p/d$a$2;->b:Lcom/anythink/core/common/p/d$a;

    iget-object v1, v1, Lcom/anythink/core/common/p/d$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/anythink/core/common/p/d$a$2;->b:Lcom/anythink/core/common/p/d$a;

    iget-object v1, v1, Lcom/anythink/core/common/p/d$a;->b:Lcom/anythink/core/common/p/d;

    iget-object v2, p0, Lcom/anythink/core/common/p/d$a$2;->b:Lcom/anythink/core/common/p/d$a;

    iget-object v2, v2, Lcom/anythink/core/common/p/d$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    iget-object v3, p0, Lcom/anythink/core/common/p/d$a$2;->a:[Lcom/anythink/core/api/BaseAd;

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/common/p/d;Lcom/anythink/core/api/ATBaseAdAdapter;[Lcom/anythink/core/api/BaseAd;)V

    .line 584
    iget-object v1, p0, Lcom/anythink/core/common/p/d$a$2;->b:Lcom/anythink/core/common/p/d$a;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/anythink/core/common/p/d$a;->b:Lcom/anythink/core/common/p/d;

    .line 585
    iget-object v1, p0, Lcom/anythink/core/common/p/d$a$2;->b:Lcom/anythink/core/common/p/d$a;

    iput-object v2, v1, Lcom/anythink/core/common/p/d$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 587
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
