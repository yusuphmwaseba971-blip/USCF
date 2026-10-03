.class final Lcom/anythink/basead/ui/SimpleMediaATView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/SimpleMediaATView$1;->onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/anythink/basead/ui/SimpleMediaATView$1;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/SimpleMediaATView$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/anythink/basead/ui/SimpleMediaATView$1$1;->b:Lcom/anythink/basead/ui/SimpleMediaATView$1;

    iput-object p2, p0, Lcom/anythink/basead/ui/SimpleMediaATView$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/anythink/basead/ui/SimpleMediaATView$1$1;->b:Lcom/anythink/basead/ui/SimpleMediaATView$1;

    iget-object v0, v0, Lcom/anythink/basead/ui/SimpleMediaATView$1;->b:Lcom/anythink/basead/ui/SimpleMediaATView;

    iget-object v1, p0, Lcom/anythink/basead/ui/SimpleMediaATView$1$1;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/anythink/basead/ui/SimpleMediaATView;->a(Lcom/anythink/basead/ui/SimpleMediaATView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 79
    iget-object v0, p0, Lcom/anythink/basead/ui/SimpleMediaATView$1$1;->b:Lcom/anythink/basead/ui/SimpleMediaATView$1;

    iget-object v0, v0, Lcom/anythink/basead/ui/SimpleMediaATView$1;->b:Lcom/anythink/basead/ui/SimpleMediaATView;

    iget-object v1, p0, Lcom/anythink/basead/ui/SimpleMediaATView$1$1;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/anythink/basead/ui/SimpleMediaATView;->b(Lcom/anythink/basead/ui/SimpleMediaATView;Landroid/graphics/Bitmap;)V

    .line 80
    iget-object v0, p0, Lcom/anythink/basead/ui/SimpleMediaATView$1$1;->b:Lcom/anythink/basead/ui/SimpleMediaATView$1;

    iget-object v0, v0, Lcom/anythink/basead/ui/SimpleMediaATView$1;->b:Lcom/anythink/basead/ui/SimpleMediaATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/SimpleMediaATView;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/anythink/basead/ui/SimpleMediaATView$1$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    iget-object v0, p0, Lcom/anythink/basead/ui/SimpleMediaATView$1$1;->b:Lcom/anythink/basead/ui/SimpleMediaATView$1;

    iget-object v0, v0, Lcom/anythink/basead/ui/SimpleMediaATView$1;->b:Lcom/anythink/basead/ui/SimpleMediaATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/SimpleMediaATView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/anythink/basead/ui/SimpleMediaATView$1$1;->b:Lcom/anythink/basead/ui/SimpleMediaATView$1;

    iget-object v0, v0, Lcom/anythink/basead/ui/SimpleMediaATView$1;->b:Lcom/anythink/basead/ui/SimpleMediaATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/SimpleMediaATView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/SimpleMediaATView$1$1;->a:Landroid/graphics/Bitmap;

    new-instance v2, Lcom/anythink/basead/ui/SimpleMediaATView$1$1$1;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/SimpleMediaATView$1$1$1;-><init>(Lcom/anythink/basead/ui/SimpleMediaATView$1$1;)V

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/anythink/core/common/o/c$a;)V

    return-void
.end method
