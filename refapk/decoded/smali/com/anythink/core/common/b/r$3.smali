.class final Lcom/anythink/core/common/b/r$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/r;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/anythink/core/common/b/r;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/r;I)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/anythink/core/common/b/r$3;->b:Lcom/anythink/core/common/b/r;

    iput p2, p0, Lcom/anythink/core/common/b/r$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 258
    iget-object v0, p0, Lcom/anythink/core/common/b/r$3;->b:Lcom/anythink/core/common/b/r;

    iget v1, p0, Lcom/anythink/core/common/b/r$3;->a:I

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/r;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object v0

    .line 261
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v1

    .line 1068
    iget v2, v0, Lcom/anythink/core/common/b/r;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 264
    invoke-virtual {v1}, Lcom/anythink/core/d/a;->ae()I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/anythink/core/d/a;->Q()I

    move-result v2

    if-nez v2, :cond_0

    .line 2068
    iget v2, v0, Lcom/anythink/core/common/b/r;->c:I

    .line 265
    invoke-virtual {v1}, Lcom/anythink/core/d/a;->ae()I

    move-result v5

    iget v6, p0, Lcom/anythink/core/common/b/r$3;->a:I

    invoke-static {v4, v2, v5, v6}, Lcom/anythink/core/common/n/c;->a(IIII)V

    .line 3068
    :cond_0
    iget v2, v0, Lcom/anythink/core/common/b/r;->c:I

    if-ne v2, v4, :cond_1

    .line 269
    invoke-virtual {v1}, Lcom/anythink/core/d/a;->ac()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/anythink/core/d/a;->ae()I

    move-result v2

    if-nez v2, :cond_1

    .line 4068
    iget v0, v0, Lcom/anythink/core/common/b/r;->c:I

    .line 270
    invoke-virtual {v1}, Lcom/anythink/core/d/a;->ae()I

    move-result v1

    iget v2, p0, Lcom/anythink/core/common/b/r$3;->a:I

    invoke-static {v3, v0, v1, v2}, Lcom/anythink/core/common/n/c;->a(IIII)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/b/r$3;->b:Lcom/anythink/core/common/b/r;

    invoke-static {v0}, Lcom/anythink/core/common/b/r;->a(Lcom/anythink/core/common/b/r;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p0, Lcom/anythink/core/common/b/r$3;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
