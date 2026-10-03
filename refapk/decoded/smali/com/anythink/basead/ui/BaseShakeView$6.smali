.class final Lcom/anythink/basead/ui/BaseShakeView$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseShakeView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/BaseShakeView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/BaseShakeView;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/anythink/basead/ui/BaseShakeView$6;->a:Lcom/anythink/basead/ui/BaseShakeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView$6;->a:Lcom/anythink/basead/ui/BaseShakeView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseShakeView;->a:Landroid/widget/ImageView;

    const-string v1, "drawable"

    const-string v2, "myoffer_shake_icon"

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView$6;->a:Lcom/anythink/basead/ui/BaseShakeView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseShakeView;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView$6;->a:Lcom/anythink/basead/ui/BaseShakeView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseShakeView;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseShakeView$6;->a:Lcom/anythink/basead/ui/BaseShakeView;

    iget-object v3, v3, Lcom/anythink/basead/ui/BaseShakeView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView$6;->a:Lcom/anythink/basead/ui/BaseShakeView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseShakeView;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseShakeView$6;->a:Lcom/anythink/basead/ui/BaseShakeView;

    .line 283
    invoke-virtual {v3}, Lcom/anythink/basead/ui/BaseShakeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 282
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView$6;->a:Lcom/anythink/basead/ui/BaseShakeView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseShakeView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 289
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView$6;->a:Lcom/anythink/basead/ui/BaseShakeView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseShakeView;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView$6;->a:Lcom/anythink/basead/ui/BaseShakeView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseShakeView;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseShakeView$6;->a:Lcom/anythink/basead/ui/BaseShakeView;

    iget-object v1, v1, Lcom/anythink/basead/ui/BaseShakeView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView$6;->a:Lcom/anythink/basead/ui/BaseShakeView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseShakeView;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseShakeView$6;->a:Lcom/anythink/basead/ui/BaseShakeView;

    .line 293
    invoke-virtual {v3}, Lcom/anythink/basead/ui/BaseShakeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 292
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method
