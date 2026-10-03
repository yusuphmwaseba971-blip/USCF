.class final Lcom/anythink/expressad/reward/a/d$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/expressad/foundation/g/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/reward/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private a:Lcom/anythink/expressad/reward/a/d;

.field private b:Lcom/anythink/expressad/foundation/d/c;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V
    .locals 0

    .line 3331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3333
    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d$e;->a:Lcom/anythink/expressad/reward/a/d;

    .line 3335
    iput-object p2, p0, Lcom/anythink/expressad/reward/a/d$e;->b:Lcom/anythink/expressad/foundation/d/c;

    .line 3336
    iput-object p3, p0, Lcom/anythink/expressad/reward/a/d$e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 3342
    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    invoke-static {p2}, Lcom/anythink/expressad/videocommon/b/l;->c(Ljava/lang/String;)V

    .line 3344
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$e;->a:Lcom/anythink/expressad/reward/a/d;

    if-eqz p1, :cond_1

    .line 3345
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3347
    :try_start_1
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$e;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-virtual {p2}, Lcom/anythink/expressad/reward/a/d;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3348
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$e;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {p2}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3349
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/4 v0, 0x6

    .line 3351
    iput v0, p2, Landroid/os/Message;->what:I

    .line 3352
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$e;->b:Lcom/anythink/expressad/foundation/d/c;

    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3353
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$e;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v0}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3354
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$e;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {p2}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p2, 0x0

    .line 3355
    iput-object p2, p0, Lcom/anythink/expressad/reward/a/d$e;->a:Lcom/anythink/expressad/reward/a/d;

    .line 3358
    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    :try_start_2
    monitor-exit p1

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    return-void

    :catchall_1
    move-exception p1

    .line 3361
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3369
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$e;->a:Lcom/anythink/expressad/reward/a/d;

    if-eqz v0, :cond_0

    .line 3370
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3373
    :try_start_1
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$e;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v1, p1, p2}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3374
    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d$e;->a:Lcom/anythink/expressad/reward/a/d;

    .line 3376
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

    .line 3380
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method
