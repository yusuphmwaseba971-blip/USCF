.class final Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->b:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->d:Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 118
    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;

    iget-object v1, v1, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->b:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    .line 119
    invoke-virtual {v1}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;

    iget v2, v2, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->a:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 118
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 121
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->b:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->d:Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2$1;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->b:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-static {v0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->a(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)V

    return-void
.end method
