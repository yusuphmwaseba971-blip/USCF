.class final Lcom/anythink/expressad/reward/a/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/expressad/videocommon/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/reward/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/anythink/expressad/reward/a/d;

.field private b:Lcom/anythink/expressad/foundation/d/c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;)V
    .locals 0

    .line 3600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3602
    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d$b;->a:Lcom/anythink/expressad/reward/a/d;

    .line 3604
    iput-object p2, p0, Lcom/anythink/expressad/reward/a/d$b;->b:Lcom/anythink/expressad/foundation/d/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 3610
    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/anythink/expressad/videocommon/b/l;->a(Ljava/lang/String;Z)V

    .line 3612
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$b;->a:Lcom/anythink/expressad/reward/a/d;

    if-eqz p1, :cond_1

    .line 3613
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3615
    :try_start_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$b;->a:Lcom/anythink/expressad/reward/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/reward/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3617
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$b;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v0}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3618
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 3620
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3621
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$b;->b:Lcom/anythink/expressad/foundation/d/c;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3622
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$b;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v1}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3623
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$b;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v0}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 3624
    iput-object v0, p0, Lcom/anythink/expressad/reward/a/d$b;->a:Lcom/anythink/expressad/reward/a/d;

    .line 3627
    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    return-void

    :catchall_1
    move-exception p1

    .line 3630
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3637
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$b;->a:Lcom/anythink/expressad/reward/a/d;

    if-eqz v0, :cond_0

    .line 3638
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3640
    :try_start_1
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$b;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v1, p1, p2}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3641
    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d$b;->a:Lcom/anythink/expressad/reward/a/d;

    .line 3642
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    return-void

    :catchall_1
    move-exception p1

    .line 3645
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method
