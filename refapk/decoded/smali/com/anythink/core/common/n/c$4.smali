.class final Lcom/anythink/core/common/n/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:J

.field final synthetic g:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    .line 1498
    iput p1, p0, Lcom/anythink/core/common/n/c$4;->a:I

    iput-object p2, p0, Lcom/anythink/core/common/n/c$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/n/c$4;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/common/n/c$4;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/core/common/n/c$4;->e:Ljava/lang/String;

    iput-wide p6, p0, Lcom/anythink/core/common/n/c$4;->f:J

    iput p8, p0, Lcom/anythink/core/common/n/c$4;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1501
    new-instance v0, Lcom/anythink/core/common/f/k;

    iget v1, p0, Lcom/anythink/core/common/n/c$4;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/f/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1004691"

    .line 1502
    iput-object v1, v0, Lcom/anythink/core/common/f/k;->a:Ljava/lang/String;

    .line 1505
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    .line 1504
    invoke-static {v1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v1

    .line 1506
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1507
    invoke-virtual {v1}, Lcom/anythink/core/d/a;->O()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1508
    invoke-virtual {v1}, Lcom/anythink/core/d/a;->c()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1513
    :cond_0
    invoke-static {v1, v0}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/d/a;Lcom/anythink/core/common/f/k;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1525
    :cond_1
    iget-object v1, p0, Lcom/anythink/core/common/n/c$4;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->b:Ljava/lang/String;

    .line 1526
    iget-object v1, p0, Lcom/anythink/core/common/n/c$4;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->d:Ljava/lang/String;

    .line 1527
    iget-object v1, p0, Lcom/anythink/core/common/n/c$4;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->m:Ljava/lang/String;

    .line 1528
    iget-object v1, p0, Lcom/anythink/core/common/n/c$4;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->n:Ljava/lang/String;

    .line 1529
    iget-wide v1, p0, Lcom/anythink/core/common/n/c$4;->f:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    .line 1530
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->o:Ljava/lang/String;

    .line 1533
    :cond_2
    iget v1, p0, Lcom/anythink/core/common/n/c$4;->g:I

    if-lez v1, :cond_3

    .line 1534
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->p:Ljava/lang/String;

    .line 1538
    :cond_3
    invoke-static {}, Lcom/anythink/core/common/i/e;->a()Lcom/anythink/core/common/i/e;

    move-result-object v1

    .line 1539
    invoke-virtual {v1}, Lcom/anythink/core/common/i/e;->b()Lcom/anythink/core/common/i/d;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1541
    invoke-virtual {v1}, Lcom/anythink/core/common/i/d;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/core/common/f/k;->q:Ljava/lang/String;

    .line 1542
    invoke-virtual {v1}, Lcom/anythink/core/common/i/d;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/core/common/f/k;->r:Ljava/lang/String;

    .line 1543
    invoke-virtual {v1}, Lcom/anythink/core/common/i/d;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/core/common/f/k;->s:Ljava/lang/String;

    .line 1544
    invoke-virtual {v1}, Lcom/anythink/core/common/i/d;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/core/common/f/k;->t:Ljava/lang/String;

    .line 1545
    invoke-virtual {v1}, Lcom/anythink/core/common/i/d;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/core/common/f/k;->u:Ljava/lang/String;

    .line 1546
    invoke-virtual {v1}, Lcom/anythink/core/common/i/d;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/core/common/f/k;->v:Ljava/lang/String;

    .line 1547
    invoke-virtual {v1}, Lcom/anythink/core/common/i/d;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/core/common/f/k;->w:Ljava/lang/String;

    .line 1548
    invoke-virtual {v1}, Lcom/anythink/core/common/i/d;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->x:Ljava/lang/String;

    .line 1552
    :cond_4
    invoke-static {}, Lcom/anythink/core/common/i/e;->a()Lcom/anythink/core/common/i/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/i/e;->e()I

    move-result v1

    .line 1551
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->y:Ljava/lang/String;

    .line 1554
    invoke-static {v0}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/k;)V

    :cond_5
    return-void
.end method
