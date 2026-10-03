.class final Lcom/anythink/basead/ui/FullScreenATView$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/FullScreenATView$4;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/FullScreenATView$4;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/FullScreenATView$4;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/anythink/basead/ui/FullScreenATView$4$1;->a:Lcom/anythink/basead/ui/FullScreenATView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView$4$1;->a:Lcom/anythink/basead/ui/FullScreenATView$4;

    iget-object v0, v0, Lcom/anythink/basead/ui/FullScreenATView$4;->a:Lcom/anythink/basead/ui/FullScreenATView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenATView;->a(Lcom/anythink/basead/ui/FullScreenATView;)V

    .line 696
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView$4$1;->a:Lcom/anythink/basead/ui/FullScreenATView$4;

    iget-object v0, v0, Lcom/anythink/basead/ui/FullScreenATView$4;->a:Lcom/anythink/basead/ui/FullScreenATView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenATView;->b(Lcom/anythink/basead/ui/FullScreenATView;)Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView$4$1;->a:Lcom/anythink/basead/ui/FullScreenATView$4;

    iget-object v0, v0, Lcom/anythink/basead/ui/FullScreenATView$4;->a:Lcom/anythink/basead/ui/FullScreenATView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenATView;->b(Lcom/anythink/basead/ui/FullScreenATView;)Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setVisibility(I)V

    :cond_0
    return-void
.end method
