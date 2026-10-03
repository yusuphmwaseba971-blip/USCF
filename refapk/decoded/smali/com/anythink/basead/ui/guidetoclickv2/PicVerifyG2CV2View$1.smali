.class final Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->b:Lcom/anythink/basead/ui/b/b$a;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->b:Lcom/anythink/basead/ui/b/b$a;

    const/16 v1, 0xb

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2}, Lcom/anythink/basead/ui/b/b$a;->a(II)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
