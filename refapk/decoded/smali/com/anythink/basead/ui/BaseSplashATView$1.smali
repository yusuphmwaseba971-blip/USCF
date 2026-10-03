.class final Lcom/anythink/basead/ui/BaseSplashATView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/ui/BaseSplashATView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/BaseSplashATView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/BaseSplashATView;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView$1;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView$1;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseSplashATView;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView$1;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseSplashATView;->s:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView$1;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    invoke-static {p1}, Lcom/anythink/basead/ui/BaseSplashATView;->a(Lcom/anythink/basead/ui/BaseSplashATView;)V

    return-void

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView$1;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    invoke-static {p1}, Lcom/anythink/basead/ui/BaseSplashATView;->b(Lcom/anythink/basead/ui/BaseSplashATView;)V

    return-void
.end method
