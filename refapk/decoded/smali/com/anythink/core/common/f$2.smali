.class final Lcom/anythink/core/common/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/core/common/f/v;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/anythink/core/d/e;

.field final synthetic f:Z

.field final synthetic g:Ljava/util/List;

.field final synthetic h:Lcom/anythink/core/common/f/az;

.field final synthetic i:Lcom/anythink/core/common/f/h;

.field final synthetic j:Lcom/anythink/core/common/f/ay;

.field final synthetic k:Lcom/anythink/core/common/f/ap;

.field final synthetic l:Lcom/anythink/core/common/f/p;

.field final synthetic m:Lcom/anythink/core/common/p/h;

.field final synthetic n:Lcom/anythink/core/common/f;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f;Landroid/content/Context;Lcom/anythink/core/common/f/v;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/e;ZLjava/util/List;Lcom/anythink/core/common/f/az;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/ay;Lcom/anythink/core/common/f/ap;Lcom/anythink/core/common/f/p;Lcom/anythink/core/common/p/h;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/anythink/core/common/f$2;->n:Lcom/anythink/core/common/f;

    iput-object p2, p0, Lcom/anythink/core/common/f$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/common/f$2;->b:Lcom/anythink/core/common/f/v;

    iput-object p4, p0, Lcom/anythink/core/common/f$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/core/common/f$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/anythink/core/common/f$2;->e:Lcom/anythink/core/d/e;

    iput-boolean p7, p0, Lcom/anythink/core/common/f$2;->f:Z

    iput-object p8, p0, Lcom/anythink/core/common/f$2;->g:Ljava/util/List;

    iput-object p9, p0, Lcom/anythink/core/common/f$2;->h:Lcom/anythink/core/common/f/az;

    iput-object p10, p0, Lcom/anythink/core/common/f$2;->i:Lcom/anythink/core/common/f/h;

    iput-object p11, p0, Lcom/anythink/core/common/f$2;->j:Lcom/anythink/core/common/f/ay;

    iput-object p12, p0, Lcom/anythink/core/common/f$2;->k:Lcom/anythink/core/common/f/ap;

    iput-object p13, p0, Lcom/anythink/core/common/f$2;->l:Lcom/anythink/core/common/f/p;

    iput-object p14, p0, Lcom/anythink/core/common/f$2;->m:Lcom/anythink/core/common/p/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 736
    :try_start_0
    new-instance v0, Lcom/anythink/core/common/f/a;

    invoke-direct {v0}, Lcom/anythink/core/common/f/a;-><init>()V

    .line 737
    iget-object v1, p0, Lcom/anythink/core/common/f$2;->a:Landroid/content/Context;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->b:Landroid/content/Context;

    .line 738
    iget-object v1, p0, Lcom/anythink/core/common/f$2;->b:Lcom/anythink/core/common/f/v;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->c:Lcom/anythink/core/common/f/v;

    .line 739
    iget-object v1, p0, Lcom/anythink/core/common/f$2;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->d:Ljava/lang/String;

    .line 740
    iget-object v1, p0, Lcom/anythink/core/common/f$2;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->e:Ljava/lang/String;

    .line 741
    iget-object v1, p0, Lcom/anythink/core/common/f$2;->e:Lcom/anythink/core/d/e;

    invoke-virtual {v1}, Lcom/anythink/core/d/e;->ag()I

    move-result v1

    iput v1, v0, Lcom/anythink/core/common/f/a;->f:I

    .line 742
    iget-object v1, p0, Lcom/anythink/core/common/f$2;->e:Lcom/anythink/core/d/e;

    invoke-virtual {v1}, Lcom/anythink/core/d/e;->R()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/core/common/f/a;->g:J

    .line 743
    iget-object v1, p0, Lcom/anythink/core/common/f$2;->e:Lcom/anythink/core/d/e;

    invoke-virtual {v1}, Lcom/anythink/core/d/e;->L()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/core/common/f/a;->h:J

    .line 744
    iget-object v1, p0, Lcom/anythink/core/common/f$2;->e:Lcom/anythink/core/d/e;

    invoke-virtual {v1}, Lcom/anythink/core/d/e;->u()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/core/common/f/a;->i:J

    .line 745
    invoke-static {}, Lcom/anythink/core/common/h;->a()Lcom/anythink/core/common/h;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->e:Lcom/anythink/core/d/e;

    iget-boolean v2, p0, Lcom/anythink/core/common/f$2;->f:Z

    invoke-static {v1, v2}, Lcom/anythink/core/common/h;->a(Lcom/anythink/core/d/e;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->l:Ljava/lang/String;

    .line 746
    invoke-static {}, Lcom/anythink/core/common/h;->a()Lcom/anythink/core/common/h;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->e:Lcom/anythink/core/d/e;

    invoke-static {v1}, Lcom/anythink/core/common/h;->a(Lcom/anythink/core/d/e;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->o:Ljava/lang/String;

    .line 747
    invoke-static {}, Lcom/anythink/core/common/h;->a()Lcom/anythink/core/common/h;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->e:Lcom/anythink/core/d/e;

    invoke-static {v1}, Lcom/anythink/core/common/h;->b(Lcom/anythink/core/d/e;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->p:Ljava/lang/String;

    .line 748
    iget-object v1, p0, Lcom/anythink/core/common/f$2;->g:Ljava/util/List;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->j:Ljava/util/List;

    .line 749
    iget-object v1, p0, Lcom/anythink/core/common/f$2;->h:Lcom/anythink/core/common/f/az;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/az;

    .line 750
    iget-object v1, p0, Lcom/anythink/core/common/f$2;->i:Lcom/anythink/core/common/f/h;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->s:Lcom/anythink/core/common/f/h;

    .line 751
    iget-object v1, p0, Lcom/anythink/core/common/f$2;->j:Lcom/anythink/core/common/f/ay;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->v:Lcom/anythink/core/common/f/ay;

    .line 752
    iget-object v1, p0, Lcom/anythink/core/common/f$2;->k:Lcom/anythink/core/common/f/ap;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->w:Lcom/anythink/core/common/f/ap;

    .line 753
    iget-object v1, p0, Lcom/anythink/core/common/f$2;->l:Lcom/anythink/core/common/f/p;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->x:Lcom/anythink/core/common/f/p;

    .line 754
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/f$2;->n:Lcom/anythink/core/common/f;

    iget-object v2, v2, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/u;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->q:Ljava/util/Map;

    .line 764
    iget-boolean v1, p0, Lcom/anythink/core/common/f$2;->f:Z

    iput-boolean v1, v0, Lcom/anythink/core/common/f/a;->m:Z

    .line 765
    iget-object v1, p0, Lcom/anythink/core/common/f$2;->b:Lcom/anythink/core/common/f/v;

    iget v1, v1, Lcom/anythink/core/common/f/v;->d:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x7

    .line 766
    iput v1, v0, Lcom/anythink/core/common/f/a;->t:I

    .line 768
    :cond_0
    iget-object v1, p0, Lcom/anythink/core/common/f$2;->m:Lcom/anythink/core/common/p/h;

    iput-object v1, v0, Lcom/anythink/core/common/f/a;->y:Lcom/anythink/core/common/p/h;

    .line 770
    new-instance v1, Lcom/anythink/core/b/b;

    invoke-direct {v1, v0}, Lcom/anythink/core/b/b;-><init>(Lcom/anythink/core/common/f/a;)V

    .line 771
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/anythink/core/common/i$b;->a(Z)V

    .line 772
    new-instance v0, Lcom/anythink/core/common/f$2$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/f$2$1;-><init>(Lcom/anythink/core/common/f$2;)V

    invoke-interface {v1, v0}, Lcom/anythink/core/common/i$b;->a(Lcom/anythink/core/common/i$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    nop

    .line 841
    iget-object v0, p0, Lcom/anythink/core/common/f$2;->n:Lcom/anythink/core/common/f;

    iget-object v0, v0, Lcom/anythink/core/common/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/g;

    if-eqz v0, :cond_1

    .line 843
    invoke-virtual {v0}, Lcom/anythink/core/common/g;->e()V

    :cond_1
    return-void
.end method
