.class final Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$3;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$3;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-boolean v0, v0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->q:Z

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$3;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-boolean v0, v0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$3;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object v0, v0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->u:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$3;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object v0, v0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->u:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const-wide/16 v0, 0xc8

    .line 253
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xa

    .line 259
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method
