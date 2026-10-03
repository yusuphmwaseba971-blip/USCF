.class final Lcom/anythink/basead/d/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/d/h;


# direct methods
.method constructor <init>(Lcom/anythink/basead/d/h;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/anythink/basead/d/h$1;->a:Lcom/anythink/basead/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/anythink/basead/d/h$1;->a:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->n:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/d/h$1;->a:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->n:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/anythink/basead/d/h$1;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {v0, p1, v1, v1}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;II)V

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/h$1;->a:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/d/h$1;->a:Lcom/anythink/basead/d/h;

    iget-object v0, v0, Lcom/anythink/basead/d/h;->e:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/anythink/basead/d/h$1;->a:Lcom/anythink/basead/d/h;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;II)V

    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/d/h$1;->a:Lcom/anythink/basead/d/h;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;II)V

    return-void
.end method
