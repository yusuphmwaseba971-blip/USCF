.class final Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/o/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->initView(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$1;->a:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

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

    .line 79
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$1;->a:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->a(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;)Lcom/anythink/core/common/ui/component/RoundImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/ui/component/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
