.class public Lcom/anythink/basead/ui/AsseblemSplashATView;
.super Lcom/anythink/basead/ui/BaseSdkSplashATView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/BaseSdkSplashATView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/basead/ui/BaseSdkSplashATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/AsseblemSplashATView;)V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->h()V

    return-void
.end method

.method private static synthetic a(Lcom/anythink/basead/ui/AsseblemSplashATView;ILjava/lang/Runnable;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->a(ILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->w()I

    move-result v0

    const-string v1, "layout"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "myoffer_splash_ad_layout_asseblem_vertical_land"

    invoke-static {v2, v3, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "myoffer_splash_ad_layout_asseblem_vertical_port"

    invoke-static {v2, v3, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->o()V

    .line 54
    iget-object v1, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->L:Lcom/anythink/basead/ui/d/a;

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->L:Lcom/anythink/basead/ui/d/a;

    const/16 v2, -0x66

    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/d/a;->a(I)Lcom/anythink/basead/ui/d/a;

    move-result-object v1

    new-instance v2, Lcom/anythink/basead/ui/AsseblemSplashATView$1;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/AsseblemSplashATView$1;-><init>(Lcom/anythink/basead/ui/AsseblemSplashATView;)V

    .line 56
    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/d/a;->a(Lcom/anythink/basead/ui/c/a;)Lcom/anythink/basead/ui/d/a;

    move-result-object v1

    .line 62
    invoke-virtual {p0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected final b()V
    .locals 13

    .line 68
    invoke-virtual {p0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_splash_ad_title"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    invoke-virtual {p0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "myoffer_splash_ad_install_btn"

    invoke-static {v1, v3, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/basead/ui/AsseblemSplashATView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    invoke-virtual {p0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "myoffer_splash_desc"

    invoke-static {v3, v4, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/anythink/basead/ui/AsseblemSplashATView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 72
    invoke-virtual {p0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "myoffer_splash_ad_content_image_area"

    invoke-static {v4, v5, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/anythink/basead/ui/AsseblemSplashATView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 73
    invoke-virtual {p0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "myoffer_splash_bg"

    invoke-static {v5, v6, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/anythink/basead/ui/AsseblemSplashATView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/anythink/core/common/ui/component/RoundImageView;

    .line 74
    invoke-virtual {p0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "myoffer_splash_icon"

    invoke-static {v6, v7, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/anythink/basead/ui/AsseblemSplashATView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/ui/component/RoundImageView;

    .line 76
    iput-object v1, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->s:Landroid/view/View;

    .line 79
    iget-object v6, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v6}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/16 v7, 0x11

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v6, :cond_0

    .line 80
    invoke-virtual {v2, v9}, Lcom/anythink/core/common/ui/component/RoundImageView;->setVisibility(I)V

    .line 81
    invoke-virtual {v2, v8}, Lcom/anythink/core/common/ui/component/RoundImageView;->setNeedRadiu(Z)V

    const/16 v6, 0xc

    .line 82
    invoke-virtual {v2, v6}, Lcom/anythink/core/common/ui/component/RoundImageView;->setRadiusInDip(I)V

    .line 83
    invoke-virtual {v2}, Lcom/anythink/core/common/ui/component/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 84
    invoke-virtual {p0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v10

    new-instance v11, Lcom/anythink/core/common/res/e;

    iget-object v12, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v12}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v8, v12}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v12, Lcom/anythink/basead/ui/AsseblemSplashATView$2;

    invoke-direct {v12, p0, v2}, Lcom/anythink/basead/ui/AsseblemSplashATView$2;-><init>(Lcom/anythink/basead/ui/AsseblemSplashATView;Lcom/anythink/core/common/ui/component/RoundImageView;)V

    invoke-virtual {v10, v11, v6, v6, v12}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {v2}, Lcom/anythink/basead/ui/d/c;->a(Landroid/view/View;)V

    .line 103
    invoke-virtual {v2}, Lcom/anythink/core/common/ui/component/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v6, :cond_1

    .line 105
    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 106
    invoke-virtual {v2, v6}, Lcom/anythink/core/common/ui/component/RoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    :cond_2
    if-eqz v3, :cond_3

    .line 113
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 116
    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->p:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 121
    new-instance v2, Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/anythink/basead/ui/WrapRoundImageView;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v6, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 123
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 124
    invoke-virtual {v2, v6}, Lcom/anythink/basead/ui/WrapRoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    invoke-virtual {v2, v9}, Lcom/anythink/basead/ui/WrapRoundImageView;->setNeedRadiu(Z)V

    .line 127
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v7}, Lcom/anythink/basead/ui/WrapRoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v7, 0x4

    .line 128
    invoke-virtual {v2, v7}, Lcom/anythink/basead/ui/WrapRoundImageView;->setVisibility(I)V

    .line 129
    invoke-virtual {v4, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 132
    invoke-virtual {v5, v9}, Lcom/anythink/core/common/ui/component/RoundImageView;->setNeedRadiu(Z)V

    .line 133
    iget-object v6, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v6}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v2, "#EFEFEF"

    .line 134
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/anythink/core/common/ui/component/RoundImageView;->setBackgroundColor(I)V

    goto :goto_1

    .line 136
    :cond_4
    invoke-virtual {p0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v6

    new-instance v10, Lcom/anythink/core/common/res/e;

    iget-object v11, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->c:Lcom/anythink/core/common/f/l;

    .line 137
    invoke-virtual {v11}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v8, v11}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit16 v11, v11, 0x273

    div-int/lit16 v11, v11, 0x4b0

    new-instance v12, Lcom/anythink/basead/ui/AsseblemSplashATView$3;

    invoke-direct {v12, p0, v4, v2, v5}, Lcom/anythink/basead/ui/AsseblemSplashATView$3;-><init>(Lcom/anythink/basead/ui/AsseblemSplashATView;Landroid/widget/FrameLayout;Lcom/anythink/basead/ui/WrapRoundImageView;Lcom/anythink/core/common/ui/component/RoundImageView;)V

    .line 136
    invoke-virtual {v6, v10, v8, v11, v12}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 170
    iget-object v4, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->p:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :goto_1
    iget-object v2, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 175
    iget-object v2, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 178
    :cond_5
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    :goto_2
    iget-object v2, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 184
    iget-object v0, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 186
    :cond_6
    invoke-virtual {p0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v0, v2}, Lcom/anythink/basead/a/d;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 188
    :goto_3
    iget-object v0, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_8

    .line 192
    iget-object v0, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 193
    iget-object v0, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    const/16 v0, 0x8

    .line 195
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    :goto_4
    iget-object v0, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->p:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method protected c()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->V()I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/AsseblemSplashATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->V()I

    move-result v0

    :goto_0
    new-instance v1, Lcom/anythink/basead/ui/AsseblemSplashATView$4;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/AsseblemSplashATView$4;-><init>(Lcom/anythink/basead/ui/AsseblemSplashATView;)V

    .line 1035
    invoke-super {p0, v0, v1}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->a(ILjava/lang/Runnable;)V

    return-void
.end method
