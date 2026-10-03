.class final Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;I)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->b:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iput p2, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->b:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 83
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->b:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 85
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 86
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 87
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 88
    invoke-static {v0, p1, v1}, Lcom/anythink/core/common/o/w;->a(IIF)[I

    move-result-object p1

    .line 91
    iget v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->a:I

    mul-int/lit8 v0, v0, 0x2

    .line 92
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt v1, v0, :cond_5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v1, v0, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->b:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, 0x0

    .line 100
    aget v2, p1, v1

    if-lt v2, v0, :cond_3

    const/4 v2, 0x1

    aget v3, p1, v2

    if-ge v3, v0, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->b:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object v0, v0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->c:Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 108
    aget v1, p1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 109
    aget p1, p1, v2

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 111
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->b:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object p1, p1, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->c:Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    :cond_2
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->b:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object p1, p1, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->c:Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->b:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    new-instance p2, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2$1;

    invoke-direct {p2, p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2$1;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 101
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->b:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object p1, p1, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->a:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;

    if-eqz p1, :cond_4

    .line 102
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->b:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object p1, p1, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->a:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;

    invoke-interface {p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;->a()V

    :cond_4
    return-void

    .line 93
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->b:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object p1, p1, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->a:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;

    if-eqz p1, :cond_6

    .line 94
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;->b:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object p1, p1, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->a:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;

    invoke-interface {p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;->a()V

    :cond_6
    :goto_2
    return-void
.end method
