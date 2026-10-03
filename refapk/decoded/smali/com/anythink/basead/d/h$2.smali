.class final Lcom/anythink/basead/d/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/h;->a(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/anythink/basead/d/h;


# direct methods
.method constructor <init>(Lcom/anythink/basead/d/h;II)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/anythink/basead/d/h$2;->c:Lcom/anythink/basead/d/h;

    iput p2, p0, Lcom/anythink/basead/d/h$2;->a:I

    iput p3, p0, Lcom/anythink/basead/d/h$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/anythink/basead/d/h$2;->c:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->b:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/anythink/basead/d/h$2;->c:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->b:Lcom/anythink/basead/e/a;

    new-instance v1, Lcom/anythink/basead/e/i;

    invoke-direct {v1}, Lcom/anythink/basead/e/i;-><init>()V

    iget v2, p0, Lcom/anythink/basead/d/h$2;->a:I

    iget v3, p0, Lcom/anythink/basead/d/h$2;->b:I

    .line 127
    invoke-virtual {v1, v2, v3}, Lcom/anythink/basead/e/i;->a(II)Lcom/anythink/basead/e/i;

    move-result-object v1

    .line 126
    invoke-interface {v0, v1}, Lcom/anythink/basead/e/a;->onAdClick(Lcom/anythink/basead/e/i;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/anythink/basead/d/h$2;->c:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->b:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/anythink/basead/d/h$2;->c:Lcom/anythink/basead/d/h;

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
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/anythink/basead/d/h$2;->c:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->m:Lcom/anythink/basead/ui/BaseMediaATView;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/anythink/basead/d/h$2;->c:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->m:Lcom/anythink/basead/ui/BaseMediaATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseMediaATView;->notifyClick()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
