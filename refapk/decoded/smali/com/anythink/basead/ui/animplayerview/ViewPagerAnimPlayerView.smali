.class public Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;
.super Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView;


# instance fields
.field private A:Z

.field private y:Lcom/anythink/core/common/res/image/RecycleImageView;

.field private z:Lcom/anythink/basead/ui/animplayerview/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;Lcom/anythink/basead/ui/animplayerview/c;)Lcom/anythink/basead/ui/animplayerview/c;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->z:Lcom/anythink/basead/ui/animplayerview/c;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;)Lcom/anythink/core/common/res/image/RecycleImageView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->y:Lcom/anythink/core/common/res/image/RecycleImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;)Lcom/anythink/basead/ui/animplayerview/c;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->z:Lcom/anythink/basead/ui/animplayerview/c;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->A:Z

    return p0
.end method

.method static synthetic d(Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;)Z
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->A:Z

    return v0
.end method

.method private j()V
    .locals 7

    .line 53
    new-instance v0, Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/WrapRoundImageView;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v1, Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anythink/basead/ui/WrapRoundImageView;-><init>(Landroid/content/Context;)V

    .line 55
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/WrapRoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/WrapRoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 58
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v2

    new-instance v3, Lcom/anythink/core/common/res/e;

    iget-object v4, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->e:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 60
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v6, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;

    invoke-direct {v6, p0, v0, v1}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;-><init>(Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;Lcom/anythink/basead/ui/WrapRoundImageView;Lcom/anythink/basead/ui/WrapRoundImageView;)V

    .line 58
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->z:Lcom/anythink/basead/ui/animplayerview/c;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Lcom/anythink/basead/ui/animplayerview/c;->start()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->A:Z

    return-void
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 6

    .line 45
    new-instance v0, Lcom/anythink/core/common/res/image/RecycleImageView;

    invoke-direct {v0, p1}, Lcom/anythink/core/common/res/image/RecycleImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->y:Lcom/anythink/core/common/res/image/RecycleImageView;

    .line 46
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/res/image/RecycleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 47
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->y:Lcom/anythink/core/common/res/image/RecycleImageView;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->addView(Landroid/view/View;II)V

    .line 1053
    new-instance p1, Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/anythink/basead/ui/WrapRoundImageView;-><init>(Landroid/content/Context;)V

    .line 1054
    new-instance v0, Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/WrapRoundImageView;-><init>(Landroid/content/Context;)V

    .line 1055
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Lcom/anythink/basead/ui/WrapRoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1056
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/WrapRoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1058
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/common/res/e;

    iget-object v3, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->e:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    .line 1059
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1060
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v5, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;

    invoke-direct {v5, p0, p1, v0}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;-><init>(Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;Lcom/anythink/basead/ui/WrapRoundImageView;Lcom/anythink/basead/ui/WrapRoundImageView;)V

    .line 1058
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    return-void
.end method

.method protected final b()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->z:Lcom/anythink/basead/ui/animplayerview/c;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0}, Lcom/anythink/basead/ui/animplayerview/c;->pause()V

    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->z:Lcom/anythink/basead/ui/animplayerview/c;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Lcom/anythink/basead/ui/animplayerview/c;->stop()V

    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->z:Lcom/anythink/basead/ui/animplayerview/c;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Lcom/anythink/basead/ui/animplayerview/c;->release()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->z:Lcom/anythink/basead/ui/animplayerview/c;

    :cond_0
    return-void
.end method
