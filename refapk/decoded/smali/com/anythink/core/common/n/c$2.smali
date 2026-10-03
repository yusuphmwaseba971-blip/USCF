.class final Lcom/anythink/core/common/n/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Z

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1279
    iput-object p1, p0, Lcom/anythink/core/common/n/c$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/core/common/n/c$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/n/c$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/common/n/c$2;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/core/common/n/c$2;->e:Ljava/lang/String;

    iput p6, p0, Lcom/anythink/core/common/n/c$2;->f:I

    iput-boolean p7, p0, Lcom/anythink/core/common/n/c$2;->g:Z

    iput-object p8, p0, Lcom/anythink/core/common/n/c$2;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/anythink/core/common/n/c$2;->i:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1282
    new-instance v0, Lcom/anythink/core/common/f/k;

    iget-object v1, p0, Lcom/anythink/core/common/n/c$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/n/c$2;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/f/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1004680"

    .line 1283
    iput-object v1, v0, Lcom/anythink/core/common/f/k;->a:Ljava/lang/String;

    .line 1284
    iget-object v1, p0, Lcom/anythink/core/common/n/c$2;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->b:Ljava/lang/String;

    .line 1285
    iget-object v1, p0, Lcom/anythink/core/common/n/c$2;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->d:Ljava/lang/String;

    .line 1286
    iget-object v1, p0, Lcom/anythink/core/common/n/c$2;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->m:Ljava/lang/String;

    .line 1287
    iget v1, p0, Lcom/anythink/core/common/n/c$2;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->n:Ljava/lang/String;

    .line 1288
    iget-boolean v1, p0, Lcom/anythink/core/common/n/c$2;->g:Z

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iput-object v1, v0, Lcom/anythink/core/common/f/k;->o:Ljava/lang/String;

    const/4 v1, 0x1

    .line 1291
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v4

    const-string v5, "power"

    .line 1292
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1293
    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :goto_1
    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_2

    :cond_1
    move-object v1, v3

    .line 1297
    :goto_2
    iput-object v1, v0, Lcom/anythink/core/common/f/k;->p:Ljava/lang/String;

    .line 1299
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    .line 1298
    invoke-static {v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    move-object v2, v3

    .line 1300
    :goto_3
    iput-object v2, v0, Lcom/anythink/core/common/f/k;->q:Ljava/lang/String;

    .line 1301
    iget-object v1, p0, Lcom/anythink/core/common/n/c$2;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->r:Ljava/lang/String;

    .line 1302
    iget-object v1, p0, Lcom/anythink/core/common/n/c$2;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/k;->s:Ljava/lang/String;

    .line 1304
    invoke-static {v0}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/k;)V

    return-void
.end method
