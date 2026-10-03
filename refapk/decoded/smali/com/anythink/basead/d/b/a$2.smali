.class final Lcom/anythink/basead/d/b/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/a/b/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/b/a;->a(Lcom/anythink/core/common/f/ah;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/b/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/m;

.field final synthetic b:Lcom/anythink/basead/d/b/a$a;

.field final synthetic c:Lcom/anythink/core/common/f/ah;

.field final synthetic d:Lcom/anythink/basead/d/b/a;


# direct methods
.method constructor <init>(Lcom/anythink/basead/d/b/a;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/b/a$a;Lcom/anythink/core/common/f/ah;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/anythink/basead/d/b/a$2;->d:Lcom/anythink/basead/d/b/a;

    iput-object p2, p0, Lcom/anythink/basead/d/b/a$2;->a:Lcom/anythink/core/common/f/m;

    iput-object p3, p0, Lcom/anythink/basead/d/b/a$2;->b:Lcom/anythink/basead/d/b/a$a;

    iput-object p4, p0, Lcom/anythink/basead/d/b/a$2;->c:Lcom/anythink/core/common/f/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/anythink/basead/d/b/a$2;->d:Lcom/anythink/basead/d/b/a;

    iget-object v0, v0, Lcom/anythink/basead/d/b/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/anythink/core/basead/b;->a()Lcom/anythink/core/basead/b;

    iget-object v1, p0, Lcom/anythink/basead/d/b/a$2;->a:Lcom/anythink/core/common/f/m;

    invoke-static {v1}, Lcom/anythink/core/basead/b;->a(Lcom/anythink/core/common/f/m;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/anythink/basead/d/b/a$2;->b:Lcom/anythink/basead/d/b/a$a;

    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/anythink/basead/d/b/a$2;->c:Lcom/anythink/core/common/f/ah;

    invoke-interface {v0, v1}, Lcom/anythink/basead/d/b/a$a;->a(Lcom/anythink/core/common/f/ah;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/e;)V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/anythink/basead/d/b/a$2;->d:Lcom/anythink/basead/d/b/a;

    iget-object v0, v0, Lcom/anythink/basead/d/b/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/anythink/core/basead/b;->a()Lcom/anythink/core/basead/b;

    iget-object v1, p0, Lcom/anythink/basead/d/b/a$2;->a:Lcom/anythink/core/common/f/m;

    invoke-static {v1}, Lcom/anythink/core/basead/b;->a(Lcom/anythink/core/common/f/m;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/anythink/basead/d/b/a$2;->b:Lcom/anythink/basead/d/b/a$a;

    if-eqz v0, :cond_0

    .line 191
    iget-object v1, p0, Lcom/anythink/basead/d/b/a$2;->c:Lcom/anythink/core/common/f/ah;

    invoke-interface {v0, v1, p1}, Lcom/anythink/basead/d/b/a$a;->a(Lcom/anythink/core/common/f/ah;Lcom/anythink/basead/c/e;)V

    :cond_0
    return-void
.end method
