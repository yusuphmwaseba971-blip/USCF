.class final Lcom/anythink/basead/d/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/d/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/b;->b(Lcom/anythink/basead/e/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/e/c;

.field final synthetic b:Lcom/anythink/basead/d/b;


# direct methods
.method constructor <init>(Lcom/anythink/basead/d/b;Lcom/anythink/basead/e/c;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/anythink/basead/d/b$2;->b:Lcom/anythink/basead/d/b;

    iput-object p2, p0, Lcom/anythink/basead/d/b$2;->a:Lcom/anythink/basead/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/a/h;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/j;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/anythink/basead/d/b$2;->b:Lcom/anythink/basead/d/b;

    invoke-virtual {v0, p1}, Lcom/anythink/basead/d/b;->a(Lcom/anythink/core/common/f/j;)V

    .line 247
    iget-object p1, p0, Lcom/anythink/basead/d/b$2;->a:Lcom/anythink/basead/e/c;

    if-eqz p1, :cond_0

    .line 248
    invoke-interface {p1}, Lcom/anythink/basead/e/c;->onAdDataLoaded()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/j;Lcom/anythink/basead/c/e;)V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/anythink/basead/d/b$2;->b:Lcom/anythink/basead/d/b;

    iget-object v1, p0, Lcom/anythink/basead/d/b$2;->a:Lcom/anythink/basead/e/c;

    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v1, v2}, Lcom/anythink/basead/d/b;->a(Lcom/anythink/basead/d/b;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/c/e;Lcom/anythink/basead/e/c;Z)V

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/a/h;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/anythink/basead/d/b$2;->b:Lcom/anythink/basead/d/b;

    iput-object p1, v0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/ai;

    .line 255
    iget-object v0, p0, Lcom/anythink/basead/d/b$2;->b:Lcom/anythink/basead/d/b;

    invoke-static {v0, p2}, Lcom/anythink/basead/d/b;->a(Lcom/anythink/basead/d/b;Lcom/anythink/core/common/a/h;)V

    .line 257
    new-instance p2, Lcom/anythink/basead/c/i;

    iget-object v0, p0, Lcom/anythink/basead/d/b$2;->b:Lcom/anythink/basead/d/b;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p2, v0, v1}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x21

    .line 258
    invoke-static {v0, p1, p2}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    .line 260
    iget-object p1, p0, Lcom/anythink/basead/d/b$2;->b:Lcom/anythink/basead/d/b;

    invoke-static {p1}, Lcom/anythink/basead/d/b;->a(Lcom/anythink/basead/d/b;)Z

    .line 261
    iget-object p1, p0, Lcom/anythink/basead/d/b$2;->a:Lcom/anythink/basead/e/c;

    if-eqz p1, :cond_0

    .line 262
    invoke-interface {p1}, Lcom/anythink/basead/e/c;->onAdCacheLoaded()V

    :cond_0
    return-void
.end method
