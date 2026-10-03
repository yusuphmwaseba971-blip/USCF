.class final Lcom/anythink/basead/d/h$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/h$3;->a(Lcom/anythink/expressad/foundation/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/d/h$3;


# direct methods
.method constructor <init>(Lcom/anythink/basead/d/h$3;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/anythink/basead/d/h$3$1;->a:Lcom/anythink/basead/d/h$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/anythink/basead/d/h$3$1;->a:Lcom/anythink/basead/d/h$3;

    iget-object v0, v0, Lcom/anythink/basead/d/h$3;->a:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->b:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/anythink/basead/d/h$3$1;->a:Lcom/anythink/basead/d/h$3;

    iget-object v0, v0, Lcom/anythink/basead/d/h$3;->a:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->b:Lcom/anythink/basead/e/a;

    new-instance v1, Lcom/anythink/basead/e/i;

    invoke-direct {v1}, Lcom/anythink/basead/e/i;-><init>()V

    const/4 v2, 0x1

    const/16 v3, 0xd

    .line 258
    invoke-virtual {v1, v2, v3}, Lcom/anythink/basead/e/i;->a(II)Lcom/anythink/basead/e/i;

    move-result-object v1

    .line 257
    invoke-interface {v0, v1}, Lcom/anythink/basead/e/a;->onAdClick(Lcom/anythink/basead/e/i;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/anythink/basead/d/h$3$1;->a:Lcom/anythink/basead/d/h$3;

    iget-object v0, v0, Lcom/anythink/basead/d/h$3;->a:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->b:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/anythink/basead/d/h$3$1;->a:Lcom/anythink/basead/d/h$3;

    iget-object v0, v0, Lcom/anythink/basead/d/h$3;->a:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->b:Lcom/anythink/basead/e/a;

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onDeeplinkCallback(Z)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/IOfferClickHandler;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
