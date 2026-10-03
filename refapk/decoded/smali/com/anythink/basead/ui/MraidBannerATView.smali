.class public Lcom/anythink/basead/ui/MraidBannerATView;
.super Lcom/anythink/basead/ui/BaseBannerATView;


# instance fields
.field A:Z

.field B:Z

.field y:Lcom/anythink/basead/ui/MraidContainerView;

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/BaseBannerATView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/basead/ui/BaseBannerATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V

    .line 40
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->c()V

    return-void
.end method

.method private p()V
    .locals 9

    .line 58
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->x()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "myoffer_web_banner_ad_layout"

    const-string v4, "layout"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    .line 63
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x43a00000    # 320.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "728x90"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_1
    const-string v5, "320x90"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_2
    const-string v5, "300x250"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    const/high16 v0, 0x42b40000    # 90.0f

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 70
    :pswitch_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x44340000    # 720.0f

    invoke-static {v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 71
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_1

    .line 66
    :pswitch_1
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 67
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_1

    .line 75
    :pswitch_2
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 76
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    .line 80
    :goto_1
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 83
    new-instance v3, Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/basead/ui/MraidBannerATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v7, p0, Lcom/anythink/basead/ui/MraidBannerATView;->b:Lcom/anythink/core/common/f/m;

    new-instance v8, Lcom/anythink/basead/ui/MraidBannerATView$1;

    invoke-direct {v8, p0}, Lcom/anythink/basead/ui/MraidBannerATView$1;-><init>(Lcom/anythink/basead/ui/MraidBannerATView;)V

    invoke-direct {v3, v4, v5, v7, v8}, Lcom/anythink/basead/ui/MraidContainerView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/ui/MraidContainerView$a;)V

    iput-object v3, p0, Lcom/anythink/basead/ui/MraidBannerATView;->y:Lcom/anythink/basead/ui/MraidContainerView;

    .line 110
    invoke-virtual {v3}, Lcom/anythink/basead/ui/MraidContainerView;->init()V

    .line 112
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "myoffer_banner_web"

    const-string v5, "id"

    invoke-static {v3, v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/anythink/basead/ui/MraidBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 113
    iget-object v4, p0, Lcom/anythink/basead/ui/MraidBannerATView;->y:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/anythink/basead/ui/MraidContainerView;->setMinimumHeight(I)V

    .line 114
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 115
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 116
    iget-object v4, p0, Lcom/anythink/basead/ui/MraidBannerATView;->y:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {v3, v4, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/anythink/basead/ui/MraidBannerATView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_close"

    invoke-static {v0, v1, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/MraidBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/CloseImageView;

    iput-object v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->w:Lcom/anythink/basead/ui/CloseImageView;

    .line 122
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->y()I

    move-result v0

    if-nez v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->w:Lcom/anythink/basead/ui/CloseImageView;

    invoke-virtual {v0, v6}, Lcom/anythink/basead/ui/CloseImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->w:Lcom/anythink/basead/ui/CloseImageView;

    iget-object v1, p0, Lcom/anythink/basead/ui/MraidBannerATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->n()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/anythink/basead/ui/MraidBannerATView;->a(Lcom/anythink/basead/ui/a;I)F

    return-void

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->w:Lcom/anythink/basead/ui/CloseImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/CloseImageView;->setVisibility(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x215ddd38 -> :sswitch_2
        0x59df5a3e -> :sswitch_1
        0x60b65fb2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final a()V
    .locals 9

    .line 1058
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->x()Ljava/lang/String;

    move-result-object v0

    .line 1060
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "myoffer_web_banner_ad_layout"

    const-string v4, "layout"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1062
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    .line 1063
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x43a00000    # 320.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 1064
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "728x90"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_1
    const-string v5, "320x90"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_2
    const-string v5, "300x250"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    const/high16 v0, 0x42b40000    # 90.0f

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 1070
    :pswitch_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x44340000    # 720.0f

    invoke-static {v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 1071
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_1

    .line 1066
    :pswitch_1
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 1067
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_1

    .line 1075
    :pswitch_2
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 1076
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    .line 1080
    :goto_1
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1083
    new-instance v3, Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/basead/ui/MraidBannerATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v7, p0, Lcom/anythink/basead/ui/MraidBannerATView;->b:Lcom/anythink/core/common/f/m;

    new-instance v8, Lcom/anythink/basead/ui/MraidBannerATView$1;

    invoke-direct {v8, p0}, Lcom/anythink/basead/ui/MraidBannerATView$1;-><init>(Lcom/anythink/basead/ui/MraidBannerATView;)V

    invoke-direct {v3, v4, v5, v7, v8}, Lcom/anythink/basead/ui/MraidContainerView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/ui/MraidContainerView$a;)V

    iput-object v3, p0, Lcom/anythink/basead/ui/MraidBannerATView;->y:Lcom/anythink/basead/ui/MraidContainerView;

    .line 1110
    invoke-virtual {v3}, Lcom/anythink/basead/ui/MraidContainerView;->init()V

    .line 1112
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "myoffer_banner_web"

    const-string v5, "id"

    invoke-static {v3, v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/anythink/basead/ui/MraidBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 1113
    iget-object v4, p0, Lcom/anythink/basead/ui/MraidBannerATView;->y:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/anythink/basead/ui/MraidContainerView;->setMinimumHeight(I)V

    .line 1114
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 1115
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1116
    iget-object v4, p0, Lcom/anythink/basead/ui/MraidBannerATView;->y:Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {v3, v4, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1118
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/anythink/basead/ui/MraidBannerATView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1120
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_close"

    invoke-static {v0, v1, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/MraidBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/CloseImageView;

    iput-object v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->w:Lcom/anythink/basead/ui/CloseImageView;

    .line 1122
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->y()I

    move-result v0

    if-nez v0, :cond_3

    .line 1123
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->w:Lcom/anythink/basead/ui/CloseImageView;

    invoke-virtual {v0, v6}, Lcom/anythink/basead/ui/CloseImageView;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->w:Lcom/anythink/basead/ui/CloseImageView;

    iget-object v1, p0, Lcom/anythink/basead/ui/MraidBannerATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->n()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/anythink/basead/ui/MraidBannerATView;->a(Lcom/anythink/basead/ui/a;I)F

    return-void

    .line 1127
    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->w:Lcom/anythink/basead/ui/CloseImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/CloseImageView;->setVisibility(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x215ddd38 -> :sswitch_2
        0x59df5a3e -> :sswitch_1
        0x60b65fb2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final b()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->y:Lcom/anythink/basead/ui/MraidContainerView;

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseBannerATView;->b()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 156
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseBannerATView;->destroy()V

    .line 158
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->y:Lcom/anythink/basead/ui/MraidContainerView;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/anythink/basead/ui/MraidContainerView;->release()V

    :cond_0
    return-void
.end method

.method protected final declared-synchronized o()V
    .locals 2

    monitor-enter p0

    .line 44
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->z:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->A:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->B:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->B:Z

    .line 46
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v1, p0, Lcom/anythink/basead/ui/MraidBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v0, v1}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 134
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseBannerATView;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->A:Z

    .line 136
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidBannerATView;->o()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseBannerATView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/anythink/basead/ui/MraidBannerATView;->A:Z

    return-void
.end method
