.class final Lcom/anythink/basead/ui/MraidEndCardView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/MraidEndCardView;->init(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/MraidEndCardView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/MraidEndCardView;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/anythink/basead/ui/MraidEndCardView$1;->a:Lcom/anythink/basead/ui/MraidEndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 52
    iget-object p1, p0, Lcom/anythink/basead/ui/MraidEndCardView$1;->a:Lcom/anythink/basead/ui/MraidEndCardView;

    iget-object p1, p1, Lcom/anythink/basead/ui/MraidEndCardView;->f:Lcom/anythink/basead/ui/MraidEndCardView$a;

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/anythink/basead/ui/MraidEndCardView$1;->a:Lcom/anythink/basead/ui/MraidEndCardView;

    iget-object p1, p1, Lcom/anythink/basead/ui/MraidEndCardView;->f:Lcom/anythink/basead/ui/MraidEndCardView$a;

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidEndCardView$1;->a:Lcom/anythink/basead/ui/MraidEndCardView;

    iget-object v0, v0, Lcom/anythink/basead/ui/MraidEndCardView;->b:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->D()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/ui/MraidEndCardView$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
