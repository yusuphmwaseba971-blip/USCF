.class public Lcom/anythink/basead/ui/ThirdPartyBannerATView;
.super Lcom/anythink/basead/ui/BaseBannerATView;


# instance fields
.field private A:Landroid/widget/FrameLayout;

.field private B:Landroid/widget/FrameLayout;

.field private C:Landroid/widget/LinearLayout;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Lcom/anythink/basead/ui/SpreadAnimLayout;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/TextView;

.field private I:Lcom/anythink/core/common/ui/component/RoundImageView;

.field private J:Landroid/view/View;

.field private K:Landroid/view/View;

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private M:F

.field private N:F

.field private O:Z

.field private P:I

.field private Q:I

.field private R:Landroid/view/View;

.field private S:Landroid/widget/FrameLayout;

.field private T:Landroid/widget/TextView;

.field private y:Landroid/view/ViewGroup;

.field private z:Lcom/anythink/core/common/f/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/BaseBannerATView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->O:Z

    const/4 p1, 0x5

    .line 60
    iput p1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->Q:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/anythink/core/api/BaseAd;",
            "Lcom/anythink/core/common/f/m;",
            "Lcom/anythink/core/common/f/l<",
            "*>;",
            "Lcom/anythink/basead/e/a;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/anythink/basead/ui/BaseBannerATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->O:Z

    const/4 p5, 0x5

    .line 60
    iput p5, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->Q:I

    .line 71
    instance-of p5, p2, Lcom/anythink/core/common/f/a/e;

    if-eqz p5, :cond_0

    .line 72
    check-cast p2, Lcom/anythink/core/common/f/a/e;

    iput-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    .line 74
    :cond_0
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    if-eqz p2, :cond_1e

    if-eqz p4, :cond_1e

    if-nez p3, :cond_1

    goto/16 :goto_a

    .line 1082
    :cond_1
    invoke-virtual {p2}, Lcom/anythink/core/common/f/a/e;->g()I

    move-result p2

    iput p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->P:I

    .line 1083
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    .line 1410
    invoke-virtual {p2}, Lcom/anythink/core/common/f/a/e;->i()I

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 1083
    :goto_0
    iput-boolean p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->O:Z

    .line 1084
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->L:Ljava/util/List;

    .line 1085
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/a/e;->h()[I

    move-result-object p2

    .line 1086
    array-length p4, p2

    const/4 p5, 0x0

    :goto_1
    if-ge p5, p4, :cond_3

    aget v0, p2, p5

    .line 1087
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->L:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 2109
    :cond_3
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string p5, "myoffer_banner_native_ad_layout_320x50"

    const-string v0, "layout"

    invoke-static {p4, p5, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p4, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->y:Landroid/view/ViewGroup;

    .line 2110
    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->addView(Landroid/view/View;)V

    .line 2114
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "myoffer_mediaview_container"

    const-string p5, "id"

    invoke-static {p2, p4, p5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    .line 2115
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "myoffer_banner_icon_container"

    invoke-static {p2, p4, p5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->B:Landroid/widget/FrameLayout;

    .line 2116
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "ll_title_desc"

    invoke-static {p2, p4, p5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->C:Landroid/widget/LinearLayout;

    .line 2117
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "myoffer_banner_icon"

    invoke-static {p2, p4, p5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/ui/component/RoundImageView;

    iput-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->I:Lcom/anythink/core/common/ui/component/RoundImageView;

    .line 2118
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "myoffer_banner_ad_title"

    invoke-static {p2, p4, p5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->D:Landroid/widget/TextView;

    .line 2119
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "myoffer_banner_desc"

    invoke-static {p2, p4, p5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->E:Landroid/widget/TextView;

    .line 2120
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "myoffer_banner_ad_install_btn"

    invoke-static {p2, p4, p5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->H:Landroid/widget/TextView;

    .line 2121
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "myoffer_banner_spread_layout"

    invoke-static {p2, p4, p5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/anythink/basead/ui/SpreadAnimLayout;

    iput-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->F:Lcom/anythink/basead/ui/SpreadAnimLayout;

    .line 2122
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "myoffer_banner_self_ad_logo"

    invoke-static {p2, p4, p5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->G:Landroid/widget/ImageView;

    .line 2123
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "myoffer_ad_choice_container"

    invoke-static {p2, p4, p5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->S:Landroid/widget/FrameLayout;

    .line 2124
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "myoffer_banner_ad_from"

    invoke-static {p2, p4, p5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->T:Landroid/widget/TextView;

    .line 2125
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "myoffer_banner_close"

    invoke-static {p2, p4, p5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/anythink/basead/ui/CloseImageView;

    .line 2126
    iput-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->w:Lcom/anythink/basead/ui/CloseImageView;

    .line 2129
    iget-object p4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->T:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/a/e;->getAdFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    const/16 p4, 0x8

    if-eqz p2, :cond_5

    .line 2133
    iget-boolean v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->O:Z

    if-eqz v0, :cond_4

    .line 2134
    invoke-virtual {p2, p1}, Lcom/anythink/basead/ui/CloseImageView;->setVisibility(I)V

    goto :goto_2

    .line 2136
    :cond_4
    invoke-virtual {p2, p4}, Lcom/anythink/basead/ui/CloseImageView;->setVisibility(I)V

    .line 2140
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/a/e;->getAdIconView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->J:Landroid/view/View;

    const/4 v0, -0x1

    if-eqz p2, :cond_7

    .line 2142
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->J:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_6

    .line 2143
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->J:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->J:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2145
    :cond_6
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2146
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->B:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->J:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 2148
    :cond_7
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->I:Lcom/anythink/core/common/ui/component/RoundImageView;

    if-eqz p2, :cond_8

    .line 2149
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 2150
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->I:Lcom/anythink/core/common/ui/component/RoundImageView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/ui/component/RoundImageView;->setRadiusInDip(I)V

    .line 2151
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->I:Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {v1, p3}, Lcom/anythink/core/common/ui/component/RoundImageView;->setNeedRadiu(Z)V

    .line 2152
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/common/res/e;

    iget-object v3, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v4, Lcom/anythink/basead/ui/ThirdPartyBannerATView$1;

    invoke-direct {v4, p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$1;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)V

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    goto :goto_3

    .line 2166
    :cond_8
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->B:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_9

    .line 2167
    invoke-virtual {p2, p4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2172
    :cond_9
    :goto_3
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 2174
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/l;->z()Ljava/lang/String;

    move-result-object p2

    .line 2175
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->H:Landroid/widget/TextView;

    invoke-static {v1, p2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 2176
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 2177
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->F:Lcom/anythink/basead/ui/SpreadAnimLayout;

    if-eqz p2, :cond_b

    .line 2178
    invoke-virtual {p2, p4}, Lcom/anythink/basead/ui/SpreadAnimLayout;->setVisibility(I)V

    goto :goto_4

    .line 2185
    :cond_a
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->F:Lcom/anythink/basead/ui/SpreadAnimLayout;

    if-eqz p2, :cond_b

    .line 2186
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x41855c29    # 16.67f

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/anythink/basead/ui/SpreadAnimLayout;->setRoundRadius(I)V

    .line 2190
    :cond_b
    :goto_4
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->E:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 2193
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/a/e;->getAdLogoView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 2195
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->S:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_f

    .line 2196
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 2197
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2199
    :cond_c
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->S:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2200
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->S:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2202
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/anythink/basead/ui/ThirdPartyBannerATView$2;

    invoke-direct {v2, p0, p2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$2;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_5

    .line 2218
    :cond_d
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->G:Landroid/widget/ImageView;

    if-eqz p2, :cond_f

    .line 2219
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/l;->y()Ljava/lang/String;

    move-result-object p2

    .line 2220
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2221
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/common/res/e;

    invoke-direct {v2, p3, p2}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/anythink/basead/ui/ThirdPartyBannerATView$3;

    invoke-direct {v3, p0, p2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$3;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    goto :goto_5

    .line 2236
    :cond_e
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->G:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2241
    :cond_f
    :goto_5
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    const/16 v1, 0x11

    if-eqz p2, :cond_13

    .line 2242
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p2, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2243
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2245
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    new-array v2, p1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/anythink/core/common/f/a/e;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    .line 2246
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/a/e;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 2247
    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    if-eqz v2, :cond_11

    .line 2248
    iget-object p3, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2249
    iget-object p3, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eqz p3, :cond_10

    .line 2250
    iget-object p3, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iget-object p4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2252
    :cond_10
    iget-object p3, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    iget-object p4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    invoke-virtual {p3, p4, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 2253
    :cond_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 2254
    iget-object p4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2255
    new-instance p4, Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p4, v2}, Lcom/anythink/core/common/ui/component/RoundImageView;-><init>(Landroid/content/Context;)V

    .line 2256
    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p4, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2257
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object p2

    new-instance v2, Lcom/anythink/core/common/res/e;

    invoke-direct {v2, p3, v0}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance p3, Lcom/anythink/basead/ui/ThirdPartyBannerATView$4;

    invoke-direct {p3, p0, v0, p4}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$4;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;Ljava/lang/String;Lcom/anythink/core/common/ui/component/RoundImageView;)V

    invoke-virtual {p2, v2, p3}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    goto :goto_6

    .line 2271
    :cond_12
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2276
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->F:Lcom/anythink/basead/ui/SpreadAnimLayout;

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Lcom/anythink/basead/ui/SpreadAnimLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_13

    .line 2277
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->F:Lcom/anythink/basead/ui/SpreadAnimLayout;

    const/high16 p3, 0x41c00000    # 24.0f

    invoke-direct {p0, p3}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(F)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/anythink/basead/ui/SpreadAnimLayout;->setRoundRadius(I)V

    .line 2283
    :cond_13
    :goto_6
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "myoffer_banner_publisher_name"

    invoke-static {p2, p3, p5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 2284
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "myoffer_banner_privacy_agreement"

    invoke-static {p3, p4, p5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 2285
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v0, "myoffer_banner_center_line"

    invoke-static {p4, v0, p5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object p4

    .line 2286
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "myoffer_banner_permission_manage"

    invoke-static {v0, v2, p5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2287
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "myoffer_banner_version_name"

    invoke-static {v2, v3, p5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p0, p5}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    .line 2288
    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->N()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2289
    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->I()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 2290
    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    if-eqz p3, :cond_14

    .line 2292
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2293
    new-instance v2, Lcom/anythink/basead/ui/ThirdPartyBannerATView$5;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$5;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)V

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    if-eqz p4, :cond_15

    .line 2301
    invoke-virtual {p4, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    if-eqz v0, :cond_16

    .line 2304
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2305
    new-instance p1, Lcom/anythink/basead/ui/ThirdPartyBannerATView$6;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$6;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    if-eqz p2, :cond_17

    .line 2312
    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_17

    .line 2313
    new-instance p1, Lcom/anythink/basead/ui/ThirdPartyBannerATView$7;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$7;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    if-eqz p5, :cond_18

    .line 2320
    invoke-virtual {p5}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_18

    .line 2321
    new-instance p1, Lcom/anythink/basead/ui/ThirdPartyBannerATView$8;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$8;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)V

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2099
    :cond_18
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c()V

    .line 2100
    iget-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    .line 2503
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->y:Landroid/view/ViewGroup;

    if-eqz p2, :cond_1e

    .line 2506
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x43a00000    # 320.0f

    .line 2542
    invoke-static {p2, p3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p3

    const/high16 p4, 0x42480000    # 50.0f

    .line 2546
    invoke-static {p2, p4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p2

    if-eqz p1, :cond_19

    .line 2509
    invoke-virtual {p1}, Lcom/anythink/core/api/BaseAd;->getCustomAdContainer()Landroid/view/ViewGroup;

    move-result-object p1

    goto :goto_7

    :cond_19
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_1d

    .line 2511
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    if-nez p4, :cond_1a

    .line 2514
    new-instance p4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p4, p3, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_8

    .line 2516
    :cond_1a
    iput p3, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2517
    iput p2, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2519
    :goto_8
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2520
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->removeAllViews()V

    .line 2523
    instance-of p4, p1, Landroid/widget/FrameLayout;

    if-eqz p4, :cond_1b

    .line 2524
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p4, p3, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2525
    move-object p2, p4

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_9

    .line 2527
    :cond_1b
    new-instance p4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p4, p3, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2529
    :goto_9
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->y:Landroid/view/ViewGroup;

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2530
    invoke-static {p1}, Lcom/anythink/core/common/o/w;->a(Landroid/view/View;)V

    .line 2531
    iget-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->y:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2533
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1c

    .line 2534
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2536
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->addView(Landroid/view/View;)V

    .line 2538
    :cond_1d
    iget-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->y:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->b(Landroid/view/View;)V

    :cond_1e
    :goto_a
    return-void
.end method

.method private a(F)I
    .locals 1

    .line 410
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method private static a(Landroid/content/Context;)I
    .locals 1

    const/high16 v0, 0x43a00000    # 320.0f

    .line 542
    invoke-static {p0, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)Lcom/anythink/core/common/ui/component/RoundImageView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->I:Lcom/anythink/core/common/ui/component/RoundImageView;

    return-object p0
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 335
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/16 p1, 0x8

    .line 339
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private a(Lcom/anythink/core/api/BaseAd;)V
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->y:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43a00000    # 320.0f

    .line 5542
    invoke-static {v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    .line 5546
    invoke-static {v0, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    if-eqz p1, :cond_1

    .line 509
    invoke-virtual {p1}, Lcom/anythink/core/api/BaseAd;->getCustomAdContainer()Landroid/view/ViewGroup;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 511
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_2

    .line 514
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 516
    :cond_2
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 517
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 519
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->removeAllViews()V

    .line 523
    instance-of v2, p1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 524
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 525
    move-object v0, v2

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    .line 527
    :cond_3
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 529
    :goto_2
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->y:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    invoke-static {p1}, Lcom/anythink/core/common/o/w;->a(Landroid/view/View;)V

    .line 531
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->y:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 533
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 534
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 536
    :cond_4
    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->addView(Landroid/view/View;)V

    .line 538
    :cond_5
    iget-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->y:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->b(Landroid/view/View;)V

    return-void
.end method

.method private static a(FFLandroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 466
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v1

    .line 467
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v2

    .line 468
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    .line 469
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, v2

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_1

    cmpg-float p0, p0, v3

    if-gtz p0, :cond_1

    cmpl-float p0, p1, v2

    if-ltz p0, :cond_1

    cmpg-float p0, p1, p2

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private a(FFLandroid/view/View;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 475
    iput-object p3, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->R:Landroid/view/View;

    .line 476
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eqz p4, :cond_6

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    if-eq p3, v0, :cond_5

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->B:Landroid/widget/FrameLayout;

    if-ne p3, v0, :cond_1

    goto :goto_0

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->C:Landroid/widget/LinearLayout;

    if-ne p3, v0, :cond_3

    .line 484
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v0

    sub-float v0, p1, v0

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v2

    sub-float v2, p2, v2

    iget-object v3, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->D:Landroid/widget/TextView;

    invoke-static {v0, v2, v3}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(FFLandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    .line 486
    iput p1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->Q:I

    .line 487
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 489
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v0

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->E:Landroid/widget/TextView;

    invoke-static {p1, p2, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(FFLandroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    .line 491
    iput p1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->Q:I

    .line 492
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 495
    :cond_3
    iget-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->F:Lcom/anythink/basead/ui/SpreadAnimLayout;

    if-ne p3, p1, :cond_4

    const/4 p1, 0x4

    .line 496
    iput p1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->Q:I

    .line 497
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    return v1

    .line 480
    :cond_5
    :goto_0
    iput v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->Q:I

    .line 481
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_1
    return v1
.end method

.method private static b(Landroid/content/Context;)I
    .locals 1

    const/high16 v0, 0x42480000    # 50.0f

    .line 546
    invoke-static {p0, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)I
    .locals 1

    const/high16 v0, 0x41000000    # 8.0f

    .line 40
    invoke-direct {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(F)I

    move-result p0

    return p0
.end method

.method private b(Landroid/view/View;)V
    .locals 8

    .line 344
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 345
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->b:Lcom/anythink/core/common/f/m;

    iget v1, v1, Lcom/anythink/core/common/f/m;->f:I

    const/16 v2, 0x53

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 347
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    if-ne v1, v4, :cond_1

    .line 349
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x42000000    # 32.0f

    .line 350
    invoke-direct {p0, v1}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/high16 v1, 0x41000000    # 8.0f

    .line 351
    invoke-direct {p0, v1}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x55

    .line 353
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x40000000    # 2.0f

    .line 354
    invoke-direct {p0, v1}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 356
    invoke-direct {p0, v1}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 364
    new-instance v1, Lcom/anythink/core/basead/b/b;

    invoke-direct {v1}, Lcom/anythink/core/basead/b/b;-><init>()V

    .line 365
    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/a/e;->h()[I

    move-result-object v2

    if-nez v2, :cond_2

    .line 368
    invoke-direct {p0, p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c(Landroid/view/View;)V

    goto :goto_4

    .line 370
    :cond_2
    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_a

    aget v6, v2, v5

    if-ne v6, v3, :cond_5

    .line 372
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->J:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 373
    invoke-direct {p0, v6}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c(Landroid/view/View;)V

    .line 374
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->J:Landroid/view/View;

    invoke-virtual {v1, v6}, Lcom/anythink/core/basead/b/b;->b(Landroid/view/View;)V

    goto :goto_2

    .line 375
    :cond_3
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->I:Lcom/anythink/core/common/ui/component/RoundImageView;

    if-eqz v6, :cond_4

    .line 376
    invoke-direct {p0, v6}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c(Landroid/view/View;)V

    .line 377
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->I:Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {v1, v6}, Lcom/anythink/core/basead/b/b;->b(Landroid/view/View;)V

    .line 379
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c(Landroid/view/View;)V

    .line 380
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    if-eqz v6, :cond_9

    .line 381
    invoke-virtual {v1, v6}, Lcom/anythink/core/basead/b/b;->c(Landroid/view/View;)V

    goto :goto_3

    :cond_5
    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 384
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->D:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c(Landroid/view/View;)V

    .line 385
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Lcom/anythink/core/basead/b/b;->a(Landroid/view/View;)V

    goto :goto_3

    :cond_6
    const/4 v7, 0x3

    if-ne v6, v7, :cond_7

    .line 387
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->E:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c(Landroid/view/View;)V

    .line 388
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->E:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Lcom/anythink/core/basead/b/b;->d(Landroid/view/View;)V

    goto :goto_3

    :cond_7
    const/4 v7, 0x4

    if-ne v6, v7, :cond_8

    .line 390
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->H:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c(Landroid/view/View;)V

    .line 391
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Lcom/anythink/core/basead/b/b;->e(Landroid/view/View;)V

    goto :goto_3

    :cond_8
    const/4 v7, 0x5

    if-ne v6, v7, :cond_9

    .line 393
    invoke-direct {p0, p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c(Landroid/view/View;)V

    :cond_9
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 397
    :cond_a
    :goto_4
    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->w:Lcom/anythink/basead/ui/CloseImageView;

    if-eqz v2, :cond_b

    .line 398
    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->w:Lcom/anythink/basead/ui/CloseImageView;

    invoke-virtual {v1, v2}, Lcom/anythink/core/basead/b/b;->f(Landroid/view/View;)V

    .line 400
    :cond_b
    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    iget-object v3, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->p:Ljava/util/List;

    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/anythink/core/common/f/a/e;->registerListener(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;Lcom/anythink/core/basead/b/b;)V

    return-void
.end method

.method static synthetic c(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)Landroid/widget/ImageView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->G:Landroid/widget/ImageView;

    return-object p0
.end method

.method private c(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private o()V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/a/e;->g()I

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->P:I

    .line 83
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    .line 3410
    invoke-virtual {v0}, Lcom/anythink/core/common/f/a/e;->i()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 83
    :goto_0
    iput-boolean v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->O:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->L:Ljava/util/List;

    .line 85
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/a/e;->h()[I

    move-result-object v0

    .line 86
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 87
    iget-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->L:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private p()V
    .locals 10

    .line 4109
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_banner_native_ad_layout_320x50"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->y:Landroid/view/ViewGroup;

    .line 4110
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->addView(Landroid/view/View;)V

    .line 4114
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_mediaview_container"

    const-string v3, "id"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    .line 4115
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_icon_container"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->B:Landroid/widget/FrameLayout;

    .line 4116
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ll_title_desc"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->C:Landroid/widget/LinearLayout;

    .line 4117
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_icon"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->I:Lcom/anythink/core/common/ui/component/RoundImageView;

    .line 4118
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_ad_title"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->D:Landroid/widget/TextView;

    .line 4119
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_desc"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->E:Landroid/widget/TextView;

    .line 4120
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_ad_install_btn"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->H:Landroid/widget/TextView;

    .line 4121
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_spread_layout"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/SpreadAnimLayout;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->F:Lcom/anythink/basead/ui/SpreadAnimLayout;

    .line 4122
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_self_ad_logo"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->G:Landroid/widget/ImageView;

    .line 4123
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_ad_choice_container"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->S:Landroid/widget/FrameLayout;

    .line 4124
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_ad_from"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->T:Landroid/widget/TextView;

    .line 4125
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_close"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/CloseImageView;

    .line 4126
    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->w:Lcom/anythink/basead/ui/CloseImageView;

    .line 4129
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->T:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/a/e;->getAdFrom()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 4133
    iget-boolean v4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->O:Z

    if-eqz v4, :cond_0

    .line 4134
    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/CloseImageView;->setVisibility(I)V

    goto :goto_0

    .line 4136
    :cond_0
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/CloseImageView;->setVisibility(I)V

    .line 4140
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/a/e;->getAdIconView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->J:Landroid/view/View;

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 4142
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->J:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 4143
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->J:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->J:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4145
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 4146
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->B:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->J:Landroid/view/View;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 4148
    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->I:Lcom/anythink/core/common/ui/component/RoundImageView;

    if-eqz v0, :cond_4

    .line 4149
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4150
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->I:Lcom/anythink/core/common/ui/component/RoundImageView;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/anythink/core/common/ui/component/RoundImageView;->setRadiusInDip(I)V

    .line 4151
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->I:Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {v6, v5}, Lcom/anythink/core/common/ui/component/RoundImageView;->setNeedRadiu(Z)V

    .line 4152
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v6

    new-instance v7, Lcom/anythink/core/common/res/e;

    iget-object v8, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v8}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    iget v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v9, Lcom/anythink/basead/ui/ThirdPartyBannerATView$1;

    invoke-direct {v9, p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$1;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)V

    invoke-virtual {v6, v7, v8, v0, v9}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    goto :goto_1

    .line 4166
    :cond_4
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->B:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    .line 4167
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4172
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->D:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v6}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 4174
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->z()Ljava/lang/String;

    move-result-object v0

    .line 4175
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->H:Landroid/widget/TextView;

    invoke-static {v6, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 4176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4177
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->F:Lcom/anythink/basead/ui/SpreadAnimLayout;

    if-eqz v0, :cond_7

    .line 4178
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/SpreadAnimLayout;->setVisibility(I)V

    goto :goto_2

    .line 4185
    :cond_6
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->F:Lcom/anythink/basead/ui/SpreadAnimLayout;

    if-eqz v0, :cond_7

    .line 4186
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x41855c29    # 16.67f

    invoke-static {v6, v7}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/anythink/basead/ui/SpreadAnimLayout;->setRoundRadius(I)V

    .line 4190
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->E:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v6}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 4193
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/a/e;->getAdLogoView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4195
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->S:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_b

    .line 4196
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_8

    .line 4197
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4199
    :cond_8
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->S:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 4200
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->S:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 4202
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lcom/anythink/basead/ui/ThirdPartyBannerATView$2;

    invoke-direct {v7, p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$2;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_3

    .line 4218
    :cond_9
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->G:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 4219
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->y()Ljava/lang/String;

    move-result-object v0

    .line 4220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 4221
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v6

    new-instance v7, Lcom/anythink/core/common/res/e;

    invoke-direct {v7, v5, v0}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/anythink/basead/ui/ThirdPartyBannerATView$3;

    invoke-direct {v8, p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$3;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    goto :goto_3

    .line 4236
    :cond_a
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4241
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    const/16 v6, 0x11

    if-eqz v0, :cond_f

    .line 4242
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v0, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4243
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4245
    iget-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v7}, Lcom/anythink/core/common/f/a/e;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    .line 4246
    iget-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/a/e;->getMainImageUrl()Ljava/lang/String;

    move-result-object v4

    .line 4247
    iget-object v7, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    if-eqz v7, :cond_d

    .line 4248
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4249
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 4250
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4252
    :cond_c
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 4253
    :cond_d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 4254
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4255
    new-instance v1, Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/anythink/core/common/ui/component/RoundImageView;-><init>(Landroid/content/Context;)V

    .line 4256
    iget-object v7, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4257
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v0

    new-instance v7, Lcom/anythink/core/common/res/e;

    invoke-direct {v7, v5, v4}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v5, Lcom/anythink/basead/ui/ThirdPartyBannerATView$4;

    invoke-direct {v5, p0, v4, v1}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$4;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;Ljava/lang/String;Lcom/anythink/core/common/ui/component/RoundImageView;)V

    invoke-virtual {v0, v7, v5}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    goto :goto_4

    .line 4271
    :cond_e
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4276
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->F:Lcom/anythink/basead/ui/SpreadAnimLayout;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/anythink/basead/ui/SpreadAnimLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 4277
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->F:Lcom/anythink/basead/ui/SpreadAnimLayout;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-direct {p0, v1}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/SpreadAnimLayout;->setRoundRadius(I)V

    .line 4283
    :cond_f
    :goto_4
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_publisher_name"

    invoke-static {v0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4284
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "myoffer_banner_privacy_agreement"

    invoke-static {v1, v4, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4285
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "myoffer_banner_center_line"

    invoke-static {v4, v5, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 4286
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "myoffer_banner_permission_manage"

    invoke-static {v5, v7, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 4287
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "myoffer_banner_version_name"

    invoke-static {v7, v8, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 4288
    iget-object v7, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v7}, Lcom/anythink/core/common/f/l;->N()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 4289
    iget-object v7, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v7}, Lcom/anythink/core/common/f/l;->I()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 4290
    iget-object v7, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v7}, Lcom/anythink/core/common/f/l;->J()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    if-eqz v1, :cond_10

    .line 4292
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4293
    new-instance v7, Lcom/anythink/basead/ui/ThirdPartyBannerATView$5;

    invoke-direct {v7, p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$5;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    if-eqz v4, :cond_11

    .line 4301
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    if-eqz v5, :cond_12

    .line 4304
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4305
    new-instance v1, Lcom/anythink/basead/ui/ThirdPartyBannerATView$6;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$6;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    if-eqz v0, :cond_13

    .line 4312
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_13

    .line 4313
    new-instance v1, Lcom/anythink/basead/ui/ThirdPartyBannerATView$7;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$7;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    if-eqz v3, :cond_14

    .line 4320
    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 4321
    new-instance v0, Lcom/anythink/basead/ui/ThirdPartyBannerATView$8;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$8;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_14
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c()V

    .line 100
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    .line 4503
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->y:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1a

    .line 4506
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43a00000    # 320.0f

    .line 4542
    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    .line 4546
    invoke-static {v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    if-eqz v0, :cond_15

    .line 4509
    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getCustomAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_5

    :cond_15
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_19

    .line 4511
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_16

    .line 4514
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_6

    .line 4516
    :cond_16
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4517
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4519
    :goto_6
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4520
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->removeAllViews()V

    .line 4523
    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_17

    .line 4524
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4525
    move-object v1, v3

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_7

    .line 4527
    :cond_17
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4529
    :goto_7
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->y:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4530
    invoke-static {v0}, Lcom/anythink/core/common/o/w;->a(Landroid/view/View;)V

    .line 4531
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->y:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4533
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 4534
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4536
    :cond_18
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->addView(Landroid/view/View;)V

    .line 4538
    :cond_19
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->y:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->b(Landroid/view/View;)V

    :cond_1a
    return-void
.end method

.method private q()V
    .locals 4

    .line 109
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_banner_native_ad_layout_320x50"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->y:Landroid/view/ViewGroup;

    .line 110
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private r()V
    .locals 10

    .line 114
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_mediaview_container"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    .line 115
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_icon_container"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->B:Landroid/widget/FrameLayout;

    .line 116
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ll_title_desc"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->C:Landroid/widget/LinearLayout;

    .line 117
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_icon"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->I:Lcom/anythink/core/common/ui/component/RoundImageView;

    .line 118
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_ad_title"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->D:Landroid/widget/TextView;

    .line 119
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_desc"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->E:Landroid/widget/TextView;

    .line 120
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_ad_install_btn"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->H:Landroid/widget/TextView;

    .line 121
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_spread_layout"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/SpreadAnimLayout;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->F:Lcom/anythink/basead/ui/SpreadAnimLayout;

    .line 122
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_self_ad_logo"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->G:Landroid/widget/ImageView;

    .line 123
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_ad_choice_container"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->S:Landroid/widget/FrameLayout;

    .line 124
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_ad_from"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->T:Landroid/widget/TextView;

    .line 125
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_close"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/CloseImageView;

    .line 126
    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->w:Lcom/anythink/basead/ui/CloseImageView;

    .line 129
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->T:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/a/e;->getAdFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 133
    iget-boolean v4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->O:Z

    if-eqz v4, :cond_0

    .line 134
    invoke-virtual {v0, v3}, Lcom/anythink/basead/ui/CloseImageView;->setVisibility(I)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/CloseImageView;->setVisibility(I)V

    .line 140
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/a/e;->getAdIconView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->J:Landroid/view/View;

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->J:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->J:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->J:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 146
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->B:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->J:Landroid/view/View;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->I:Lcom/anythink/core/common/ui/component/RoundImageView;

    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 150
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->I:Lcom/anythink/core/common/ui/component/RoundImageView;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/anythink/core/common/ui/component/RoundImageView;->setRadiusInDip(I)V

    .line 151
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->I:Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {v6, v5}, Lcom/anythink/core/common/ui/component/RoundImageView;->setNeedRadiu(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v6

    new-instance v7, Lcom/anythink/core/common/res/e;

    iget-object v8, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v8}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    iget v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v9, Lcom/anythink/basead/ui/ThirdPartyBannerATView$1;

    invoke-direct {v9, p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$1;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)V

    invoke-virtual {v6, v7, v8, v0, v9}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    goto :goto_1

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->B:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 172
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->D:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v6}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->z()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->H:Landroid/widget/TextView;

    invoke-static {v6, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 177
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->F:Lcom/anythink/basead/ui/SpreadAnimLayout;

    if-eqz v0, :cond_7

    .line 178
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/SpreadAnimLayout;->setVisibility(I)V

    goto :goto_2

    .line 185
    :cond_6
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->F:Lcom/anythink/basead/ui/SpreadAnimLayout;

    if-eqz v0, :cond_7

    .line 186
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x41855c29    # 16.67f

    invoke-static {v6, v7}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/anythink/basead/ui/SpreadAnimLayout;->setRoundRadius(I)V

    .line 190
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->E:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v6}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/a/e;->getAdLogoView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 195
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->S:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_b

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_8

    .line 197
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 199
    :cond_8
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->S:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 200
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->S:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 202
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lcom/anythink/basead/ui/ThirdPartyBannerATView$2;

    invoke-direct {v7, p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$2;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_3

    .line 218
    :cond_9
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->G:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 219
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->y()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 221
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v6

    new-instance v7, Lcom/anythink/core/common/res/e;

    invoke-direct {v7, v5, v0}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/anythink/basead/ui/ThirdPartyBannerATView$3;

    invoke-direct {v8, p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$3;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    goto :goto_3

    .line 236
    :cond_a
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_f

    .line 242
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v0, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 243
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 245
    iget-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v6}, Lcom/anythink/core/common/f/a/e;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    .line 246
    iget-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/a/e;->getMainImageUrl()Ljava/lang/String;

    move-result-object v4

    .line 247
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    if-eqz v6, :cond_d

    .line 248
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 250
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 252
    :cond_c
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->K:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 253
    :cond_d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 254
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 255
    new-instance v1, Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/anythink/core/common/ui/component/RoundImageView;-><init>(Landroid/content/Context;)V

    .line 256
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v0

    new-instance v6, Lcom/anythink/core/common/res/e;

    invoke-direct {v6, v5, v4}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v5, Lcom/anythink/basead/ui/ThirdPartyBannerATView$4;

    invoke-direct {v5, p0, v4, v1}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$4;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;Ljava/lang/String;Lcom/anythink/core/common/ui/component/RoundImageView;)V

    invoke-virtual {v0, v6, v5}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    goto :goto_4

    .line 271
    :cond_e
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->F:Lcom/anythink/basead/ui/SpreadAnimLayout;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/anythink/basead/ui/SpreadAnimLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 277
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->F:Lcom/anythink/basead/ui/SpreadAnimLayout;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-direct {p0, v1}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/SpreadAnimLayout;->setRoundRadius(I)V

    .line 283
    :cond_f
    :goto_4
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_publisher_name"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 284
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "myoffer_banner_privacy_agreement"

    invoke-static {v1, v4, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 285
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "myoffer_banner_center_line"

    invoke-static {v4, v5, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 286
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "myoffer_banner_permission_manage"

    invoke-static {v5, v6, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 287
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "myoffer_banner_version_name"

    invoke-static {v6, v7, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 288
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v6}, Lcom/anythink/core/common/f/l;->N()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 289
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v6}, Lcom/anythink/core/common/f/l;->I()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 290
    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v6}, Lcom/anythink/core/common/f/l;->J()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    if-eqz v1, :cond_10

    .line 292
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    new-instance v6, Lcom/anythink/basead/ui/ThirdPartyBannerATView$5;

    invoke-direct {v6, p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$5;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    if-eqz v4, :cond_11

    .line 301
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    if-eqz v5, :cond_12

    .line 304
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    new-instance v1, Lcom/anythink/basead/ui/ThirdPartyBannerATView$6;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$6;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    if-eqz v0, :cond_13

    .line 312
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_13

    .line 313
    new-instance v1, Lcom/anythink/basead/ui/ThirdPartyBannerATView$7;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$7;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    if-eqz v2, :cond_14

    .line 320
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 321
    new-instance v0, Lcom/anythink/basead/ui/ThirdPartyBannerATView$8;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/ThirdPartyBannerATView$8;-><init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    return-void
.end method

.method protected final a(ILjava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    if-eqz v0, :cond_0

    .line 555
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->y:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/a/e;->clear(Landroid/view/View;)V

    .line 556
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/a/e;->destroy()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 429
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->y:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 439
    :goto_0
    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->y:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 440
    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->y:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 441
    iget v3, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->M:F

    iget v4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->N:F

    invoke-static {v3, v4, v2}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(FFLandroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 443
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->M:F

    iget v3, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->N:F

    iget-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->L:Ljava/util/List;

    .line 5475
    iput-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->R:Landroid/view/View;

    .line 5476
    iget-object v5, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->z:Lcom/anythink/core/common/f/a/e;

    if-eqz v5, :cond_8

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_2

    .line 5479
    :cond_1
    iget-object v5, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->A:Landroid/widget/FrameLayout;

    if-eq v2, v5, :cond_5

    iget-object v5, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->B:Landroid/widget/FrameLayout;

    if-ne v2, v5, :cond_2

    goto :goto_1

    .line 5483
    :cond_2
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->C:Landroid/widget/LinearLayout;

    if-ne v2, v1, :cond_4

    .line 5484
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v1

    sub-float v1, v0, v1

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    sub-float v5, v3, v5

    iget-object v6, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->D:Landroid/widget/TextView;

    invoke-static {v1, v5, v6}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(FFLandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    .line 5486
    iput v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->Q:I

    .line 5487
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5489
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->E:Landroid/widget/TextView;

    invoke-static {v0, v3, v1}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->a(FFLandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    .line 5491
    iput v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->Q:I

    .line 5492
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5495
    :cond_4
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->F:Lcom/anythink/basead/ui/SpreadAnimLayout;

    if-ne v2, v0, :cond_8

    const/4 v0, 0x4

    .line 5496
    iput v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->Q:I

    .line 5497
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5480
    :cond_5
    :goto_1
    iput v1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->Q:I

    .line 5481
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    .line 432
    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->R:Landroid/view/View;

    .line 434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->M:F

    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->N:F

    .line 452
    :cond_8
    :goto_2
    invoke-super {p0, p1}, Lcom/anythink/basead/ui/BaseBannerATView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getClickedArea()I
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->R:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->Q:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 422
    invoke-super {p0, p1}, Lcom/anythink/basead/ui/BaseBannerATView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
