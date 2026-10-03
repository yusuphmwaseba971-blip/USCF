.class final Lcom/anythink/basead/ui/AsseblemSplashATView$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/AsseblemSplashATView$3;->onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/anythink/basead/ui/AsseblemSplashATView$3;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/AsseblemSplashATView$3;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$3$1;->b:Lcom/anythink/basead/ui/AsseblemSplashATView$3;

    iput-object p2, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$3$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$3$1;->b:Lcom/anythink/basead/ui/AsseblemSplashATView$3;

    iget-object v0, v0, Lcom/anythink/basead/ui/AsseblemSplashATView$3;->b:Lcom/anythink/basead/ui/WrapRoundImageView;

    iget-object v1, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$3$1;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$3$1;->b:Lcom/anythink/basead/ui/AsseblemSplashATView$3;

    iget-object v2, v2, Lcom/anythink/basead/ui/AsseblemSplashATView$3;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$3$1;->b:Lcom/anythink/basead/ui/AsseblemSplashATView$3;

    iget-object v3, v3, Lcom/anythink/basead/ui/AsseblemSplashATView$3;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/basead/ui/WrapRoundImageView;->setBitmapAndResize(Landroid/graphics/Bitmap;II)[I

    .line 146
    iget-object v0, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$3$1;->b:Lcom/anythink/basead/ui/AsseblemSplashATView$3;

    iget-object v0, v0, Lcom/anythink/basead/ui/AsseblemSplashATView$3;->b:Lcom/anythink/basead/ui/WrapRoundImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/WrapRoundImageView;->setVisibility(I)V

    return-void
.end method
