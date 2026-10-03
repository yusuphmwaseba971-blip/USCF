.class final Lcom/anythink/basead/d/a/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/a/b;->e(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/j;

.field final synthetic b:Lcom/anythink/core/common/f/m;

.field final synthetic c:Lcom/anythink/basead/d/a/b$a;

.field final synthetic d:Lcom/anythink/expressad/foundation/d/d;

.field final synthetic e:Lcom/anythink/basead/d/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/basead/d/a/b;Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/b$a;Lcom/anythink/expressad/foundation/d/d;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/anythink/basead/d/a/b$4;->e:Lcom/anythink/basead/d/a/b;

    iput-object p2, p0, Lcom/anythink/basead/d/a/b$4;->a:Lcom/anythink/core/common/f/j;

    iput-object p3, p0, Lcom/anythink/basead/d/a/b$4;->b:Lcom/anythink/core/common/f/m;

    iput-object p4, p0, Lcom/anythink/basead/d/a/b$4;->c:Lcom/anythink/basead/d/a/b$a;

    iput-object p5, p0, Lcom/anythink/basead/d/a/b$4;->d:Lcom/anythink/expressad/foundation/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 514
    iget-object v0, p0, Lcom/anythink/basead/d/a/b$4;->a:Lcom/anythink/core/common/f/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/d/a/b$4;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/a/b$4;->a:Lcom/anythink/core/common/f/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->Y()Ljava/lang/String;

    move-result-object v0

    .line 515
    :goto_0
    new-instance v1, Lcom/anythink/expressad/advanced/d/c;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v3, v0, v2}, Lcom/anythink/expressad/advanced/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 516
    new-instance v0, Lcom/anythink/basead/d/a/b$4$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/d/a/b$4$1;-><init>(Lcom/anythink/basead/d/a/b$4;)V

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/advanced/d/c;->a(Lcom/anythink/expressad/out/o;)V

    .line 567
    iget-object v0, p0, Lcom/anythink/basead/d/a/b$4;->c:Lcom/anythink/basead/d/a/b$a;

    if-eqz v0, :cond_1

    .line 568
    invoke-interface {v0, v1}, Lcom/anythink/basead/d/a/b$a;->a(Lcom/anythink/core/common/a/h;)V

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/d/a/b$4;->e:Lcom/anythink/basead/d/a/b;

    iget-object v0, v0, Lcom/anythink/basead/d/a/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/basead/d/a/b$4;->b:Lcom/anythink/core/common/f/m;

    iget-object v3, v3, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/anythink/basead/d/a/b$4;->b:Lcom/anythink/core/common/f/m;

    iget-object v3, v3, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget-object v0, p0, Lcom/anythink/basead/d/a/b$4;->d:Lcom/anythink/expressad/foundation/d/d;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/advanced/d/c;->a(Lcom/anythink/expressad/foundation/d/d;)V

    return-void
.end method
