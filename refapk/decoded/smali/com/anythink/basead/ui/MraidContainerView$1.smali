.class final Lcom/anythink/basead/ui/MraidContainerView$1;
.super Lcom/anythink/basead/mraid/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/MraidContainerView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/MraidContainerView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/MraidContainerView;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/anythink/basead/ui/MraidContainerView$1;->a:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-direct {p0}, Lcom/anythink/basead/mraid/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidContainerView$1;->a:Lcom/anythink/basead/ui/MraidContainerView;

    iget-object v0, v0, Lcom/anythink/basead/ui/MraidContainerView;->g:Lcom/anythink/basead/ui/MraidContainerView$a;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidContainerView$1;->a:Lcom/anythink/basead/ui/MraidContainerView;

    iget-object v0, v0, Lcom/anythink/basead/ui/MraidContainerView;->g:Lcom/anythink/basead/ui/MraidContainerView$a;

    invoke-interface {v0}, Lcom/anythink/basead/ui/MraidContainerView$a;->b()V

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final open(Ljava/lang/String;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidContainerView$1;->a:Lcom/anythink/basead/ui/MraidContainerView;

    iget-object v0, v0, Lcom/anythink/basead/ui/MraidContainerView;->g:Lcom/anythink/basead/ui/MraidContainerView$a;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidContainerView$1;->a:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-static {v0, p1}, Lcom/anythink/basead/ui/MraidContainerView;->a(Lcom/anythink/basead/ui/MraidContainerView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidContainerView$1;->a:Lcom/anythink/basead/ui/MraidContainerView;

    iget-object v0, v0, Lcom/anythink/basead/ui/MraidContainerView;->g:Lcom/anythink/basead/ui/MraidContainerView$a;

    invoke-interface {v0, p1}, Lcom/anythink/basead/ui/MraidContainerView$a;->a(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/anythink/basead/ui/MraidContainerView$1;->a:Lcom/anythink/basead/ui/MraidContainerView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/anythink/basead/ui/MraidContainerView;->h:Z

    :cond_0
    return-void
.end method
