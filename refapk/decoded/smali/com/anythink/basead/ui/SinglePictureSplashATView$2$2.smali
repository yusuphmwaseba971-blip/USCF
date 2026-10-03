.class final Lcom/anythink/basead/ui/SinglePictureSplashATView$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/o/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/SinglePictureSplashATView$2;->onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/SinglePictureSplashATView$2;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/SinglePictureSplashATView$2;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2$2;->a:Lcom/anythink/basead/ui/SinglePictureSplashATView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2$2;->a:Lcom/anythink/basead/ui/SinglePictureSplashATView$2;

    iget-object v0, v0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2;->a:Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/ui/component/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
