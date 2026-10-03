.class final Lcom/anythink/core/common/n/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/n/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/n/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/n/b;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 410
    monitor-enter p0

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v0}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/n/b;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 413
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    return-void

    .line 415
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v0}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/n/b;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "anythink_sdk"

    const-string v2, "LOG_SEND_TIME"

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-object v0, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v0}, Lcom/anythink/core/common/n/b;->b(Lcom/anythink/core/common/n/b;)J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-gtz v4, :cond_1

    iget-object v0, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v0}, Lcom/anythink/core/common/n/b;->c(Lcom/anythink/core/common/n/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v0}, Lcom/anythink/core/common/n/b;->c(Lcom/anythink/core/common/n/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v1}, Lcom/anythink/core/common/n/b;->d(Lcom/anythink/core/common/n/b;)I

    move-result v1

    if-lt v0, v1, :cond_7

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v0}, Lcom/anythink/core/common/n/b;->e(Lcom/anythink/core/common/n/b;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v0}, Lcom/anythink/core/common/n/b;->c(Lcom/anythink/core/common/n/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v0}, Lcom/anythink/core/common/n/b;->c(Lcom/anythink/core/common/n/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_7

    .line 420
    iget-object v0, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/n/b;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 424
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v5}, Lcom/anythink/core/common/n/b;->f(Lcom/anythink/core/common/n/b;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 427
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 428
    :goto_0
    iget-object v5, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v5}, Lcom/anythink/core/common/n/b;->g(Lcom/anythink/core/common/n/b;)I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 430
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 434
    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    if-nez v4, :cond_3

    .line 437
    iget-object v0, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v0, v2}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/n/b;Z)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 479
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 485
    :catch_0
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return-void

    .line 442
    :cond_3
    :try_start_7
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v4

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 444
    invoke-virtual {v4}, Lcom/anythink/core/d/a;->C()I

    move-result v5

    if-eq v5, v1, :cond_4

    .line 451
    new-instance v1, Lcom/anythink/core/common/h/b;

    iget-object v5, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v5}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/n/b;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Lcom/anythink/core/d/a;->C()I

    move-result v4

    invoke-direct {v1, v5, v4, v0}, Lcom/anythink/core/common/h/b;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 452
    iget-object v0, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v0}, Lcom/anythink/core/common/n/b;->i(Lcom/anythink/core/common/n/b;)Lcom/anythink/core/common/h/k;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/h/b;->a(ILcom/anythink/core/common/h/k;)V

    goto :goto_1

    .line 446
    :cond_4
    new-instance v5, Lcom/anythink/core/common/h/a/a;

    invoke-direct {v5, v0}, Lcom/anythink/core/common/h/a/a;-><init>(Ljava/util/List;)V

    .line 447
    invoke-virtual {v4}, Lcom/anythink/core/d/a;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/anythink/core/common/h/a/a;->a(ILjava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v0}, Lcom/anythink/core/common/n/b;->h(Lcom/anythink/core/common/n/b;)Lcom/anythink/core/common/h/a/c$a;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/h/a/a;->a(Lcom/anythink/core/common/h/a/c$a;)V

    goto :goto_1

    .line 456
    :cond_5
    new-instance v1, Lcom/anythink/core/common/h/b;

    iget-object v4, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v4}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/n/b;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v2, v0}, Lcom/anythink/core/common/h/b;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 457
    iget-object v0, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v0}, Lcom/anythink/core/common/n/b;->i(Lcom/anythink/core/common/n/b;)Lcom/anythink/core/common/h/k;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/h/b;->a(ILcom/anythink/core/common/h/k;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 479
    :goto_1
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-object v0, v3

    goto :goto_2

    :catch_2
    move-object v0, v3

    goto :goto_4

    :catch_3
    move-object v0, v3

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_6

    .line 472
    :catch_4
    :goto_2
    :try_start_9
    iget-object v1, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v1, v2}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/n/b;Z)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v0, :cond_7

    .line 479
    :goto_3
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_7

    .line 466
    :catch_5
    :goto_4
    :try_start_b
    iget-object v1, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v1, v2}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/n/b;Z)Z

    .line 470
    invoke-static {}, Ljava/lang/System;->gc()V

    if-eqz v0, :cond_7

    goto :goto_3

    .line 461
    :catch_6
    :goto_5
    iget-object v1, p0, Lcom/anythink/core/common/n/b$3;->a:Lcom/anythink/core/common/n/b;

    invoke-static {v1, v2}, Lcom/anythink/core/common/n/b;->a(Lcom/anythink/core/common/n/b;Z)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v0, :cond_7

    goto :goto_3

    :goto_6
    if-eqz v3, :cond_6

    .line 479
    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 487
    :catch_7
    :cond_6
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 495
    :catch_8
    :catchall_2
    :cond_7
    :goto_7
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method
