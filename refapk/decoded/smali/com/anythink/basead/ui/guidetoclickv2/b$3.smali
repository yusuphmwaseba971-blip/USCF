.class final Lcom/anythink/basead/ui/guidetoclickv2/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/guidetoclickv2/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/guidetoclickv2/b;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/guidetoclickv2/b;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/b;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/b;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/b;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/b;

    invoke-static {v0}, Lcom/anythink/basead/ui/guidetoclickv2/b;->f(Lcom/anythink/basead/ui/guidetoclickv2/b;)Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/b;

    invoke-static {v0}, Lcom/anythink/basead/ui/guidetoclickv2/b;->f(Lcom/anythink/basead/ui/guidetoclickv2/b;)Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;->b()V

    :cond_1
    return-void
.end method
