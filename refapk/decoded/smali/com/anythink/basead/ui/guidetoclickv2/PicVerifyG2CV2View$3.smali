.class final Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 144
    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    if-eqz p3, :cond_4

    .line 148
    iget-object p3, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-static {p3}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->b(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)Z

    move-result p3

    const/16 v0, 0x1e

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 149
    iget-object p3, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-static {p3, v1}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->a(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;Z)Z

    if-le p2, v0, :cond_0

    .line 151
    iget-object p3, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-static {p3, v1}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->b(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;Z)Z

    goto :goto_0

    .line 153
    :cond_0
    iget-object p3, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    const/4 v2, 0x1

    invoke-static {p3, v2}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->b(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;Z)Z

    .line 156
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-static {p3}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->c(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)Z

    move-result p3

    if-eqz p3, :cond_3

    if-le p2, v0, :cond_2

    .line 158
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-static {p1, p2}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->a(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;I)V

    return-void

    .line 161
    :cond_2
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object p1, p1, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->c:Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;->move(I)V

    return-void

    .line 164
    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    .line 167
    :cond_4
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object p1, p1, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->c:Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;->move(I)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_5

    .line 169
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object p1, p1, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->c:Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;->loose()V

    :cond_5
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 176
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->a(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;Z)Z

    .line 177
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-static {p1}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->d(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-static {p1}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->c(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object p1, p1, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->c:Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;->loose()V

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;->a:Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    invoke-static {p1}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->a(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)V

    return-void
.end method
