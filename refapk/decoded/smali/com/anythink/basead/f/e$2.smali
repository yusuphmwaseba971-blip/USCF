.class final Lcom/anythink/basead/f/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/f/e;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/anythink/basead/f/e;


# direct methods
.method constructor <init>(Lcom/anythink/basead/f/e;II)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/anythink/basead/f/e$2;->c:Lcom/anythink/basead/f/e;

    iput p2, p0, Lcom/anythink/basead/f/e$2;->a:I

    iput p3, p0, Lcom/anythink/basead/f/e$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/anythink/basead/f/e$2;->c:Lcom/anythink/basead/f/e;

    iget-object v0, v0, Lcom/anythink/basead/f/e;->a:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/anythink/basead/f/e$2;->c:Lcom/anythink/basead/f/e;

    iget-object v0, v0, Lcom/anythink/basead/f/e;->a:Lcom/anythink/basead/e/a;

    new-instance v1, Lcom/anythink/basead/e/i;

    invoke-direct {v1}, Lcom/anythink/basead/e/i;-><init>()V

    iget v2, p0, Lcom/anythink/basead/f/e$2;->a:I

    iget v3, p0, Lcom/anythink/basead/f/e$2;->b:I

    .line 90
    invoke-virtual {v1, v2, v3}, Lcom/anythink/basead/e/i;->a(II)Lcom/anythink/basead/e/i;

    move-result-object v1

    .line 89
    invoke-interface {v0, v1}, Lcom/anythink/basead/e/a;->onAdClick(Lcom/anythink/basead/e/i;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/anythink/basead/f/e$2;->c:Lcom/anythink/basead/f/e;

    iget-object v0, v0, Lcom/anythink/basead/f/e;->a:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/anythink/basead/f/e$2;->c:Lcom/anythink/basead/f/e;

    iget-object v0, v0, Lcom/anythink/basead/f/e;->a:Lcom/anythink/basead/e/a;

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
