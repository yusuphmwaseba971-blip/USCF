.class final Lcom/anythink/basead/ui/SinglePictureSplashATView$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/SinglePictureSplashATView$2;->onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/WrapRoundImageView;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/anythink/basead/ui/SinglePictureSplashATView$2;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/SinglePictureSplashATView$2;Lcom/anythink/basead/ui/WrapRoundImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2$1;->c:Lcom/anythink/basead/ui/SinglePictureSplashATView$2;

    iput-object p2, p0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2$1;->a:Lcom/anythink/basead/ui/WrapRoundImageView;

    iput-object p3, p0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2$1;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2$1;->c:Lcom/anythink/basead/ui/SinglePictureSplashATView$2;

    iget-object v0, v0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2;->b:Lcom/anythink/basead/ui/SinglePictureSplashATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/SinglePictureSplashATView;->getWidth()I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2$1;->c:Lcom/anythink/basead/ui/SinglePictureSplashATView$2;

    iget-object v1, v1, Lcom/anythink/basead/ui/SinglePictureSplashATView$2;->b:Lcom/anythink/basead/ui/SinglePictureSplashATView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/SinglePictureSplashATView;->getHeight()I

    move-result v1

    .line 96
    iget-object v2, p0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2$1;->a:Lcom/anythink/basead/ui/WrapRoundImageView;

    iget-object v3, p0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2$1;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v0, v1}, Lcom/anythink/basead/ui/WrapRoundImageView;->setBitmapAndResize(Landroid/graphics/Bitmap;II)[I

    return-void
.end method
