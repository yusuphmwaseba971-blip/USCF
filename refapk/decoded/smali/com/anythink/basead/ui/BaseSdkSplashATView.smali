.class public abstract Lcom/anythink/basead/ui/BaseSdkSplashATView;
.super Lcom/anythink/basead/ui/BaseSplashATView;


# static fields
.field public static final TYPE_ASSEBLEM:I = 0x1

.field public static final TYPE_SINGLE_PICTURE:I


# instance fields
.field A:Landroid/widget/TextView;

.field protected final B:Landroid/view/View$OnClickListener;

.field protected v:Lcom/anythink/core/common/ui/component/RoundImageView;

.field w:Landroid/view/ViewGroup;

.field x:Landroid/widget/TextView;

.field y:Landroid/widget/TextView;

.field z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/BaseSplashATView;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance p1, Lcom/anythink/basead/ui/BaseSdkSplashATView$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/BaseSdkSplashATView$1;-><init>(Lcom/anythink/basead/ui/BaseSdkSplashATView;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->B:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/basead/ui/BaseSplashATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V

    .line 51
    new-instance p1, Lcom/anythink/basead/ui/BaseSdkSplashATView$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/BaseSdkSplashATView$1;-><init>(Lcom/anythink/basead/ui/BaseSdkSplashATView;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->B:Landroid/view/View$OnClickListener;

    .line 75
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->c()V

    .line 76
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->p()V

    .line 79
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->D:Lcom/anythink/basead/ui/CloseFrameLayout;

    iget-object p2, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->b:Lcom/anythink/core/common/f/m;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/n;->n()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->a(Lcom/anythink/basead/ui/a;I)F

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/BaseSdkSplashATView;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 34
    invoke-super {p0, v0, v1}, Lcom/anythink/basead/ui/BaseSplashATView;->a(II)V

    return-void
.end method

.method public static isSinglePicture(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)Z
    .locals 3

    .line 222
    instance-of v0, p0, Lcom/anythink/core/common/f/z;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 223
    instance-of v0, p1, Lcom/anythink/core/common/f/ab;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    .line 224
    check-cast p1, Lcom/anythink/core/common/f/ab;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/ab;->as()I

    move-result p1

    if-ne p0, p1, :cond_0

    return v2

    :cond_0
    return v1

    .line 227
    :cond_1
    instance-of p1, p0, Lcom/anythink/core/common/f/ai;

    if-eqz p1, :cond_2

    check-cast p0, Lcom/anythink/core/common/f/ai;

    .line 228
    invoke-virtual {p0}, Lcom/anythink/core/common/f/ai;->ae()I

    move-result p0

    if-ne v2, p0, :cond_2

    return v2

    :cond_2
    return v1
.end method


# virtual methods
.method protected abstract b()V
.end method

.method protected abstract c()V
.end method

.method protected o()V
    .locals 9

    .line 84
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->b()V

    .line 87
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_four_element_container"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->w:Landroid/view/ViewGroup;

    .line 88
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_publisher_name"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->x:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_privacy_agreement"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->y:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_permission_manage"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->z:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_version_name"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->A:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->N()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 94
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->w:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->x:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/l;->I()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->p:Ljava/util/List;

    iget-object v5, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->x:Landroid/widget/TextView;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->y:Landroid/widget/TextView;

    new-instance v5, Lcom/anythink/basead/ui/BaseSdkSplashATView$2;

    invoke-direct {v5, p0}, Lcom/anythink/basead/ui/BaseSdkSplashATView$2;-><init>(Lcom/anythink/basead/ui/BaseSdkSplashATView;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->z:Landroid/widget/TextView;

    new-instance v5, Lcom/anythink/basead/ui/BaseSdkSplashATView$3;

    invoke-direct {v5, p0}, Lcom/anythink/basead/ui/BaseSdkSplashATView$3;-><init>(Lcom/anythink/basead/ui/BaseSdkSplashATView;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 123
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->A:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 125
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "myoffer_panel_version"

    const-string v8, "string"

    invoke-static {v6, v7, v8}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->c:Lcom/anythink/core/common/f/l;

    .line 126
    invoke-virtual {v8}, Lcom/anythink/core/common/f/l;->J()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 124
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->p:Ljava/util/List;

    iget-object v5, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->A:Landroid/widget/TextView;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->w:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 132
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 134
    :cond_5
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 135
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    :cond_6
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 138
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :cond_7
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 141
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :cond_8
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 144
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :cond_9
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "myoffer_four_element_container_bg"

    invoke-static {v0, v5, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v5, 0x0

    .line 149
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 156
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "myoffer_ad_logo"

    invoke-static {v0, v5, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->v:Lcom/anythink/core/common/ui/component/RoundImageView;

    .line 157
    invoke-virtual {v0}, Lcom/anythink/core/common/ui/component/RoundImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 158
    iget-object v2, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->y()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 159
    iget-object v2, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->v:Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/ui/component/RoundImageView;->setVisibility(I)V

    .line 160
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 161
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v3

    new-instance v4, Lcom/anythink/core/common/res/e;

    iget-object v5, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/l;->y()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/anythink/basead/ui/BaseSdkSplashATView$4;

    invoke-direct {v1, p0, v0}, Lcom/anythink/basead/ui/BaseSdkSplashATView$4;-><init>(Lcom/anythink/basead/ui/BaseSdkSplashATView;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v4, v2, v2, v1}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    goto :goto_1

    .line 187
    :cond_b
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->M()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 188
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->M()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 192
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v5, v3

    mul-float v5, v5, v2

    float-to-int v2, v5

    .line 194
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 195
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 196
    iget-object v2, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->v:Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/ui/component/RoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->v:Lcom/anythink/core/common/ui/component/RoundImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/anythink/core/common/ui/component/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 199
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->v:Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/ui/component/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->v:Lcom/anythink/core/common/ui/component/RoundImageView;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->M()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/ui/component/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 201
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->v:Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {v0, v4}, Lcom/anythink/core/common/ui/component/RoundImageView;->setVisibility(I)V

    goto :goto_1

    .line 203
    :cond_c
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->v:Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {v0, v3}, Lcom/anythink/core/common/ui/component/RoundImageView;->setVisibility(I)V

    .line 206
    :goto_1
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->p:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->v:Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected p()V
    .locals 1

    .line 215
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseSplashATView;->p()V

    .line 217
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSdkSplashATView;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
