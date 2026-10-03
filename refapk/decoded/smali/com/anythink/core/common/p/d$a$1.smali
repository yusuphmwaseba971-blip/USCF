.class final Lcom/anythink/core/common/p/d$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/p/d$a;->onAdDataLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/p/d$a;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/p/d$a;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/anythink/core/common/p/d$a$1;->a:Lcom/anythink/core/common/p/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/anythink/core/common/p/d$a$1;->a:Lcom/anythink/core/common/p/d$a;

    monitor-enter v0

    .line 567
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/p/d$a$1;->a:Lcom/anythink/core/common/p/d$a;

    iget-object v1, v1, Lcom/anythink/core/common/p/d$a;->b:Lcom/anythink/core/common/p/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/core/common/p/d$a$1;->a:Lcom/anythink/core/common/p/d$a;

    iget-object v1, v1, Lcom/anythink/core/common/p/d$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/anythink/core/common/p/d$a$1;->a:Lcom/anythink/core/common/p/d$a;

    iget-object v1, v1, Lcom/anythink/core/common/p/d$a;->b:Lcom/anythink/core/common/p/d;

    invoke-static {v1}, Lcom/anythink/core/common/p/d;->d(Lcom/anythink/core/common/p/d;)V

    .line 570
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
