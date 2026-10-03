.class final Lcom/anythink/basead/f/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/f/e;


# direct methods
.method constructor <init>(Lcom/anythink/basead/f/e;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/anythink/basead/f/e$1;->a:Lcom/anythink/basead/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/anythink/basead/f/e$1;->a:Lcom/anythink/basead/f/e;

    iget-object v0, v0, Lcom/anythink/basead/f/e;->o:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/f/e$1;->a:Lcom/anythink/basead/f/e;

    iget-object v0, v0, Lcom/anythink/basead/f/e;->o:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 60
    iget-object p1, p0, Lcom/anythink/basead/f/e$1;->a:Lcom/anythink/basead/f/e;

    invoke-static {p1, v1, v1}, Lcom/anythink/basead/f/e;->a(Lcom/anythink/basead/f/e;II)V

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/f/e$1;->a:Lcom/anythink/basead/f/e;

    iget-object v0, v0, Lcom/anythink/basead/f/e;->m:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/f/e$1;->a:Lcom/anythink/basead/f/e;

    iget-object v0, v0, Lcom/anythink/basead/f/e;->m:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 63
    iget-object p1, p0, Lcom/anythink/basead/f/e$1;->a:Lcom/anythink/basead/f/e;

    const/4 v0, 0x3

    invoke-static {p1, v1, v0}, Lcom/anythink/basead/f/e;->a(Lcom/anythink/basead/f/e;II)V

    return-void

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/f/e$1;->a:Lcom/anythink/basead/f/e;

    const/4 v0, 0x2

    invoke-static {p1, v1, v0}, Lcom/anythink/basead/f/e;->a(Lcom/anythink/basead/f/e;II)V

    return-void
.end method
