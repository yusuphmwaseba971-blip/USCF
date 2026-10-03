.class final Lcom/anythink/core/common/g$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/g;->b(Lcom/anythink/core/common/f/au;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/core/common/f/au;

.field final synthetic c:I

.field final synthetic d:Lcom/anythink/core/common/p/d;

.field final synthetic e:Lcom/anythink/core/common/g;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/g;Ljava/lang/String;Lcom/anythink/core/common/f/au;ILcom/anythink/core/common/p/d;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    iput-object p2, p0, Lcom/anythink/core/common/g$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/g$4;->b:Lcom/anythink/core/common/f/au;

    iput p4, p0, Lcom/anythink/core/common/g$4;->c:I

    iput-object p5, p0, Lcom/anythink/core/common/g$4;->d:Lcom/anythink/core/common/p/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 664
    iget-object v0, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    monitor-enter v0

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    iget-object v1, v1, Lcom/anythink/core/common/g;->F:Lcom/anythink/core/common/p/i;

    invoke-virtual {v1}, Lcom/anythink/core/common/p/i;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    iget-object v1, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    iget-object v1, v1, Lcom/anythink/core/common/g;->B:Ljava/util/Map;

    iget-object v2, p0, Lcom/anythink/core/common/g$4;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    monitor-exit v0

    return-void

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/anythink/core/common/g$4;->b:Lcom/anythink/core/common/f/au;

    invoke-static {v1}, Lcom/anythink/core/common/o/v;->a(Lcom/anythink/core/common/f/au;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 673
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    iget-object v2, v2, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/common/g$4;->b:Lcom/anythink/core/common/f/au;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/au;->d()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 674
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 678
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    iget-object v2, v2, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/common/g$4;->b:Lcom/anythink/core/common/f/au;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/au;->d()I

    move-result v3

    iget-object v4, p0, Lcom/anythink/core/common/g$4;->b:Lcom/anythink/core/common/f/au;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/au;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 681
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    iget v0, p0, Lcom/anythink/core/common/g$4;->c:I

    invoke-static {v0}, Lcom/anythink/core/common/g;->b(I)Z

    move-result v0

    .line 685
    iget-object v1, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    iget-object v1, v1, Lcom/anythink/core/common/g;->i:Lcom/anythink/core/common/f/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/h;->S()Lcom/anythink/core/common/f/h;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/core/common/g$4;->b:Lcom/anythink/core/common/f/au;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    iget-object v0, v0, Lcom/anythink/core/common/g;->s:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/anythink/core/common/f/h;->m(Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/anythink/core/common/g$4;->b:Lcom/anythink/core/common/f/au;

    iget-object v2, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    iget v2, v2, Lcom/anythink/core/common/g;->v:I

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/anythink/core/common/o/u;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;IZ)V

    .line 692
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    iget-wide v6, v0, Lcom/anythink/core/common/g;->u:J

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/anythink/core/common/f/h;->a(J)V

    .line 696
    iget-object v0, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    iget-object v2, p0, Lcom/anythink/core/common/g$4;->b:Lcom/anythink/core/common/f/au;

    iget v4, p0, Lcom/anythink/core/common/g$4;->c:I

    iget-object v5, p0, Lcom/anythink/core/common/g$4;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4, v5}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/g;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 701
    :cond_3
    iget-object v0, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    invoke-static {v0}, Lcom/anythink/core/common/g;->c(Lcom/anythink/core/common/g;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "startAdSourceRequest: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/core/common/g$4;->b:Lcom/anythink/core/common/f/au;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    iget-object v0, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    iget-object v0, v0, Lcom/anythink/core/common/g;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/g$4;->b:Lcom/anythink/core/common/f/au;

    invoke-static {v0, v2, v1}, Lcom/anythink/core/common/p/f;->a(Ljava/lang/String;Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;)Z

    move-result v0

    .line 707
    iget-object v2, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    iget v4, v2, Lcom/anythink/core/common/g;->v:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/anythink/core/common/g;->v:I

    if-eqz v0, :cond_4

    .line 711
    new-instance v0, Lcom/anythink/core/common/p/a;

    invoke-direct {v0}, Lcom/anythink/core/common/p/a;-><init>()V

    const/4 v2, 0x6

    .line 712
    iput v2, v0, Lcom/anythink/core/common/p/a;->a:I

    const-string v2, "4001"

    const-string v3, ""

    const-string v4, "Bid result has expired."

    .line 713
    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/core/common/p/a;->b:Lcom/anythink/core/api/AdError;

    const-wide/16 v2, 0x0

    .line 714
    iput-wide v2, v0, Lcom/anythink/core/common/p/a;->c:J

    .line 715
    iput-object v1, v0, Lcom/anythink/core/common/p/a;->d:Lcom/anythink/core/common/f/h;

    .line 716
    iget-object v1, p0, Lcom/anythink/core/common/g$4;->b:Lcom/anythink/core/common/f/au;

    iput-object v1, v0, Lcom/anythink/core/common/p/a;->e:Lcom/anythink/core/common/f/au;

    .line 718
    iget-object v1, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    iget-object v2, p0, Lcom/anythink/core/common/g$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/g;->a(Ljava/lang/String;Lcom/anythink/core/common/p/a;)V

    return-void

    .line 723
    :cond_4
    iget-object v0, p0, Lcom/anythink/core/common/g$4;->b:Lcom/anythink/core/common/f/au;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 724
    iget-object v0, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    iget-object v2, p0, Lcom/anythink/core/common/g$4;->b:Lcom/anythink/core/common/f/au;

    invoke-static {v0, v2}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/g;Lcom/anythink/core/common/f/au;)V

    .line 728
    :cond_5
    iget-object v0, p0, Lcom/anythink/core/common/g$4;->b:Lcom/anythink/core/common/f/au;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->aa()I

    move-result v0

    if-lez v0, :cond_6

    .line 1721
    iput v0, v1, Lcom/anythink/core/common/f/h;->q:I

    goto :goto_1

    .line 731
    :cond_6
    iget-object v0, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    iget-boolean v0, v0, Lcom/anythink/core/common/g;->m:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    iget v0, v0, Lcom/anythink/core/common/g;->w:I

    iget-object v2, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    iget-object v2, v2, Lcom/anythink/core/common/g;->e:Lcom/anythink/core/common/f/az;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/az;->h()I

    move-result v2

    if-ge v0, v2, :cond_7

    const/4 v0, 0x5

    .line 2721
    iput v0, v1, Lcom/anythink/core/common/f/h;->q:I

    .line 738
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/anythink/core/common/g$4;->e:Lcom/anythink/core/common/g;

    iget-object v2, p0, Lcom/anythink/core/common/g$4;->d:Lcom/anythink/core/common/p/d;

    iget-object v3, p0, Lcom/anythink/core/common/g$4;->b:Lcom/anythink/core/common/f/au;

    invoke-static {v0, v2, v1, v3}, Lcom/anythink/core/common/g;->a(Lcom/anythink/core/common/g;Lcom/anythink/core/common/p/d;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;)V

    return-void

    :catchall_0
    move-exception v1

    .line 681
    monitor-exit v0

    throw v1
.end method
