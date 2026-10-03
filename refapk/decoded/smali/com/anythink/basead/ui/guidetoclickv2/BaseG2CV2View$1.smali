.class final Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->init(JIILcom/anythink/basead/ui/b/b$a;Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->a:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    invoke-static {v0}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->a(Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->canStartNextAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    invoke-static {v0}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->b(Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;)Z

    .line 55
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->a:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;

    invoke-interface {v0}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;->a()V

    .line 56
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->b()V

    :cond_0
    return-void
.end method
