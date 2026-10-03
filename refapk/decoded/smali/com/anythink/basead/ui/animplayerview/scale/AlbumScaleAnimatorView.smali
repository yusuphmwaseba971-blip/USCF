.class public Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/anythink/basead/ui/animplayerview/c;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

.field private c:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

.field private d:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

.field private e:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->f:Z

    return-void
.end method

.method private a(I)I
    .locals 1

    .line 224
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method private a(Z)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    const/16 v0, 0x5a

    const/16 v1, 0x2a

    if-eqz p1, :cond_0

    .line 67
    invoke-direct {p0, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a(I)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a(I)I

    move-result v2

    :goto_0
    if-eqz p1, :cond_1

    .line 68
    invoke-direct {p0, v1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a(I)I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a(I)I

    move-result p1

    .line 69
    :goto_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x11

    .line 70
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 60
    new-instance v0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->b:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    .line 6056
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/o/i;->c(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x5a

    const/16 v3, 0x2a

    if-eqz v1, :cond_0

    .line 6067
    invoke-direct {p0, v2}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a(I)I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-direct {p0, v3}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a(I)I

    move-result v4

    :goto_0
    if-eqz v1, :cond_1

    .line 6068
    invoke-direct {p0, v3}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a(I)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a(I)I

    move-result v1

    .line 6069
    :goto_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 6070
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 61
    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->b:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->addView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->b:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->initView(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private a()Z
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/o/i;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;)Z
    .locals 1

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;)Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->c:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 75
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 76
    new-instance v1, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;-><init>(Landroid/content/Context;)V

    .line 77
    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->setBitmapResources(Ljava/util/List;)V

    .line 7056
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/o/i;->c(Landroid/content/Context;)Z

    move-result v2

    .line 78
    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->setOrientation(Z)V

    .line 79
    invoke-virtual {p0, v1, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->c:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    return-void
.end method

.method static synthetic c(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;)Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->d:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 84
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 85
    new-instance v1, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;-><init>(Landroid/content/Context;)V

    .line 8056
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/o/i;->c(Landroid/content/Context;)Z

    move-result v2

    .line 86
    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->setOrientation(Z)V

    .line 87
    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->setBitmapResources(Ljava/util/List;)V

    .line 88
    invoke-virtual {p0, v1, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->d:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    return-void
.end method

.method static synthetic d(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;)Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->b:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 93
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 94
    new-instance v1, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;-><init>(Landroid/content/Context;)V

    .line 95
    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->setBitmapResources(Ljava/util/List;)V

    .line 9056
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/o/i;->c(Landroid/content/Context;)Z

    move-result v2

    .line 96
    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->setOrientation(Z)V

    .line 97
    invoke-virtual {p0, v1, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->e:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    return-void
.end method

.method static synthetic e(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;)Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->e:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    return-object p0
.end method


# virtual methods
.method public varargs addMainView(Landroid/graphics/Bitmap;[Lcom/anythink/basead/ui/WrapRoundImageView;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1060
    :cond_0
    new-instance p2, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->b:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    .line 2056
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/o/i;->c(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x5a

    const/16 v2, 0x2a

    if-eqz v0, :cond_1

    .line 2067
    invoke-direct {p0, v1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a(I)I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a(I)I

    move-result v3

    :goto_0
    if-eqz v0, :cond_2

    .line 2068
    invoke-direct {p0, v2}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a(I)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a(I)I

    move-result v0

    .line 2069
    :goto_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 2070
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1061
    invoke-virtual {p2, v1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1062
    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->b:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->addView(Landroid/view/View;)V

    .line 1063
    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->b:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->initView(Landroid/graphics/Bitmap;Z)V

    .line 2093
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2094
    new-instance v0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;-><init>(Landroid/content/Context;)V

    .line 2095
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->setBitmapResources(Ljava/util/List;)V

    .line 3056
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/o/i;->c(Landroid/content/Context;)Z

    move-result v1

    .line 2096
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView03;->setOrientation(Z)V

    .line 2097
    invoke-virtual {p0, v0, p1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2098
    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->e:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    .line 3084
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3085
    new-instance v0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;-><init>(Landroid/content/Context;)V

    .line 4056
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/o/i;->c(Landroid/content/Context;)Z

    move-result v1

    .line 3086
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->setOrientation(Z)V

    .line 3087
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->setBitmapResources(Ljava/util/List;)V

    .line 3088
    invoke-virtual {p0, v0, p1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3089
    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->d:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    .line 4075
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4076
    new-instance p2, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;-><init>(Landroid/content/Context;)V

    .line 4077
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->setBitmapResources(Ljava/util/List;)V

    .line 5056
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/o/i;->c(Landroid/content/Context;)Z

    move-result v0

    .line 4078
    invoke-virtual {p2, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->setOrientation(Z)V

    .line 4079
    invoke-virtual {p0, p2, p1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4080
    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->c:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    return-void
.end method

.method public pause()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->b:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->pause()V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->c:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->pause()V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->d:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->pause()V

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->e:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    if-eqz v0, :cond_3

    .line 156
    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->pause()V

    :cond_3
    return-void
.end method

.method public release()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 201
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 202
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->b:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    if-eqz v0, :cond_3

    .line 209
    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->release()V

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->c:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    if-eqz v0, :cond_4

    .line 212
    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->release()V

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->d:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    if-eqz v0, :cond_5

    .line 215
    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->release()V

    .line 217
    :cond_5
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->e:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    if-eqz v0, :cond_6

    .line 218
    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->release()V

    .line 220
    :cond_6
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->removeAllViews()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->b:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->resume()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->c:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->resume()V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->d:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->resume()V

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->e:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    if-eqz v0, :cond_3

    .line 172
    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->resume()V

    :cond_3
    return-void
.end method

.method public setBitmapResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->a:Ljava/util/List;

    return-void
.end method

.method public start()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->b:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->c:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->d:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->e:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-boolean v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->f:Z

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->resume()V

    return-void

    .line 111
    :cond_1
    new-instance v0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView$1;-><init>(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;)V

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->b:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->stop()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->c:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->stop()V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->d:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->stop()V

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->e:Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;

    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->stop()V

    :cond_3
    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;->f:Z

    return-void
.end method
