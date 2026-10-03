.class public Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;
.super Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

# interfaces
.implements Lcom/anythink/core/basead/ui/web/b;


# instance fields
.field A:I

.field B:Lcom/anythink/core/api/IOfferClickHandler;

.field C:I

.field D:Ljava/lang/String;

.field E:Z

.field private final F:I

.field private final G:I

.field private final H:I

.field private final I:I

.field private J:Landroid/view/animation/TranslateAnimation;

.field private K:Landroid/view/animation/TranslateAnimation;

.field private L:Landroid/view/animation/TranslateAnimation;

.field private M:Landroid/webkit/WebView;

.field private N:Lcom/anythink/core/basead/ui/web/c;

.field private O:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final P:I

.field private Q:Ljava/lang/String;

.field private R:I

.field private S:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field y:Landroid/widget/LinearLayout;

.field z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 59
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->F:I

    const/4 p1, 0x2

    .line 60
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->G:I

    const/4 p1, 0x3

    .line 61
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->H:I

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->I:I

    const/16 v1, 0x8

    .line 70
    iput v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->z:I

    .line 71
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->A:I

    .line 74
    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->O:Landroid/webkit/ValueCallback;

    const/16 v0, 0x200

    .line 75
    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->P:I

    .line 76
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->C:I

    .line 78
    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->E:Z

    const-string v0, ""

    .line 80
    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->Q:Ljava/lang/String;

    .line 82
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 59
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->F:I

    const/4 p1, 0x2

    .line 60
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->G:I

    const/4 p1, 0x3

    .line 61
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->H:I

    .line 62
    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->I:I

    const/16 p1, 0x8

    .line 70
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->z:I

    .line 71
    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->A:I

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->O:Landroid/webkit/ValueCallback;

    const/16 p1, 0x200

    .line 75
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->P:I

    .line 76
    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->C:I

    .line 78
    iput-boolean v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->E:Z

    const-string p1, ""

    .line 80
    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->Q:Ljava/lang/String;

    .line 82
    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 59
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->F:I

    const/4 p1, 0x2

    .line 60
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->G:I

    const/4 p1, 0x3

    .line 61
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->H:I

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->I:I

    const/16 p2, 0x8

    .line 70
    iput p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->z:I

    .line 71
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->A:I

    const/4 p2, 0x0

    .line 74
    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->O:Landroid/webkit/ValueCallback;

    const/16 p2, 0x200

    .line 75
    iput p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->P:I

    .line 76
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->C:I

    .line 78
    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->E:Z

    const-string p2, ""

    .line 80
    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->Q:Ljava/lang/String;

    .line 82
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->O:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .line 107
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 108
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {p1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->a(II)V

    .line 124
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    .line 2140
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 2141
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2142
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2143
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2145
    new-instance v0, Lcom/anythink/core/common/res/image/RecycleImageView;

    invoke-direct {v0, p1}, Lcom/anythink/core/common/res/image/RecycleImageView;-><init>(Landroid/content/Context;)V

    .line 2147
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "myoffer_arrow_up"

    const-string v5, "drawable"

    invoke-static {v3, v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2146
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2148
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41100000    # 9.0f

    .line 2149
    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40400000    # 3.0f

    .line 2150
    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2151
    iget-object v4, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2153
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2154
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "myoffer_slide_hint"

    const-string v5, "string"

    invoke-static {v3, v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const/high16 v3, 0x41400000    # 12.0f

    .line 2155
    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "#000000"

    .line 2156
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2157
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 2159
    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2160
    iget-object v4, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2162
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42580000    # 54.0f

    .line 2163
    invoke-static {p1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    .line 2164
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x0

    .line 2165
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2166
    iget-object v3, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2168
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_0

    .line 2169
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v3, 0x41900000    # 18.0f

    .line 2170
    invoke-static {p1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    .line 2171
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2172
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 2173
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 2174
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2175
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2177
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 129
    new-instance v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$1;-><init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)V
    .locals 6

    .line 4182
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->K:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x4b0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 4183
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->getMeasuredHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v0, v4, v4, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->K:Landroid/view/animation/TranslateAnimation;

    .line 4184
    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 4185
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->K:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 4188
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->L:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_1

    .line 4189
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v4, v4, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->L:Landroid/view/animation/TranslateAnimation;

    .line 4190
    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 4191
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->L:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 4192
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->L:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$2;-><init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;Landroid/content/Context;)V
    .locals 3

    .line 3215
    :try_start_0
    new-instance v0, Lcom/anythink/core/basead/ui/web/BaseWebView;

    invoke-direct {v0, p1}, Lcom/anythink/core/basead/ui/web/BaseWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    .line 3216
    new-instance v0, Lcom/anythink/core/basead/ui/web/c;

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->w:Lcom/anythink/core/common/f/l;

    invoke-direct {v0, v1}, Lcom/anythink/core/basead/ui/web/c;-><init>(Lcom/anythink/core/common/f/l;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->N:Lcom/anythink/core/basead/ui/web/c;

    .line 3217
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 3218
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3219
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3221
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 3223
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    invoke-virtual {p0, v1, v0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3225
    invoke-static {p1}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/content/Context;)V

    .line 3234
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    invoke-static {v0, p1, p0}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/webkit/WebView;Landroid/content/Context;Lcom/anythink/core/basead/ui/web/b;)V

    .line 3236
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$3;-><init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    const/4 p1, 0x1

    .line 3227
    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->E:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const/4 p1, 0x0

    .line 3229
    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->E:Z

    return-void
.end method

.method static synthetic b(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)Landroid/webkit/WebView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 6

    .line 140
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 142
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 143
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 145
    new-instance v0, Lcom/anythink/core/common/res/image/RecycleImageView;

    invoke-direct {v0, p1}, Lcom/anythink/core/common/res/image/RecycleImageView;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "myoffer_arrow_up"

    const-string v5, "drawable"

    invoke-static {v3, v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 146
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41100000    # 9.0f

    .line 149
    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40400000    # 3.0f

    .line 150
    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 151
    iget-object v4, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "myoffer_slide_hint"

    const-string v5, "string"

    invoke-static {v3, v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const/high16 v3, 0x41400000    # 12.0f

    .line 155
    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "#000000"

    .line 156
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 159
    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 160
    iget-object v4, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42580000    # 54.0f

    .line 163
    invoke-static {p1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    .line 164
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x0

    .line 165
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 166
    iget-object v3, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v3, 0x41900000    # 18.0f

    .line 170
    invoke-static {p1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, p1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 172
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 173
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 174
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 175
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v0, 0x258

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic c(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)I
    .locals 1

    const/4 v0, 0x2

    .line 57
    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    return v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .line 215
    :try_start_0
    new-instance v0, Lcom/anythink/core/basead/ui/web/BaseWebView;

    invoke-direct {v0, p1}, Lcom/anythink/core/basead/ui/web/BaseWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    .line 216
    new-instance v0, Lcom/anythink/core/basead/ui/web/c;

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->w:Lcom/anythink/core/common/f/l;

    invoke-direct {v0, v1}, Lcom/anythink/core/basead/ui/web/c;-><init>(Lcom/anythink/core/common/f/l;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->N:Lcom/anythink/core/basead/ui/web/c;

    .line 217
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 218
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 219
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 221
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 223
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    invoke-virtual {p0, v1, v0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    invoke-static {p1}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/content/Context;)V

    .line 2234
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    invoke-static {v0, p1, p0}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/webkit/WebView;Landroid/content/Context;Lcom/anythink/core/basead/ui/web/b;)V

    .line 2236
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$3;-><init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    const/4 p1, 0x1

    .line 227
    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->E:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const/4 p1, 0x0

    .line 229
    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->E:Z

    return-void
.end method

.method static synthetic d(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)Landroid/view/animation/TranslateAnimation;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->K:Landroid/view/animation/TranslateAnimation;

    return-object p0
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    invoke-static {v0, p1, p0}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/webkit/WebView;Landroid/content/Context;Lcom/anythink/core/basead/ui/web/b;)V

    .line 236
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$3;-><init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method static synthetic e(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)Landroid/view/animation/TranslateAnimation;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->L:Landroid/view/animation/TranslateAnimation;

    return-object p0
.end method

.method private j()V
    .locals 6

    .line 182
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->K:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x4b0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->getMeasuredHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v0, v4, v4, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->K:Landroid/view/animation/TranslateAnimation;

    .line 184
    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 185
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->K:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->L:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v4, v4, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->L:Landroid/view/animation/TranslateAnimation;

    .line 190
    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 191
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->L:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 192
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->L:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$2;-><init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    return-void
.end method

.method protected final b()V
    .locals 0

    return-void
.end method

.method protected final c()V
    .locals 0

    return-void
.end method

.method public callbackClickResult(Lcom/anythink/core/common/f/ba;)V
    .locals 1

    .line 453
    iget v0, p1, Lcom/anythink/core/common/f/ba;->l:I

    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->z:I

    .line 454
    iget-boolean v0, p1, Lcom/anythink/core/common/f/ba;->n:Z

    if-eqz v0, :cond_1

    .line 455
    iget-boolean p1, p1, Lcom/anythink/core/common/f/ba;->m:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 456
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->C:I

    .line 457
    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    return-void

    .line 461
    :cond_0
    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->C:I

    :cond_1
    return-void
.end method

.method protected final d()V
    .locals 0

    return-void
.end method

.method protected final g()V
    .locals 17

    move-object/from16 v0, p0

    .line 348
    invoke-super/range {p0 .. p0}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->g()V

    .line 349
    iget-object v1, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 351
    iget-object v1, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 353
    :cond_0
    iput-object v2, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    .line 355
    iget-object v1, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->w:Lcom/anythink/core/common/f/l;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->x:Lcom/anythink/core/common/f/m;

    if-eqz v1, :cond_2

    .line 356
    iget-object v1, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->x:Lcom/anythink/core/common/f/m;

    iget-object v2, v1, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->x:Lcom/anythink/core/common/f/m;

    iget-object v3, v1, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    iget-object v1, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->w:Lcom/anythink/core/common/f/l;

    .line 358
    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->d()I

    move-result v4

    iget-object v1, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->w:Lcom/anythink/core/common/f/l;

    .line 359
    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->s()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    iget v7, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->C:I

    iget v8, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->A:I

    iget v9, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->z:I

    iget-object v10, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->D:Ljava/lang/String;

    iget-object v1, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->x:Lcom/anythink/core/common/f/m;

    iget v11, v1, Lcom/anythink/core/common/f/m;->j:I

    const/4 v12, 0x1

    const-wide/16 v13, 0x0

    iget-object v15, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->Q:Ljava/lang/String;

    .line 364
    iget v1, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    const/16 v16, 0x1

    goto :goto_0

    :cond_1
    move/from16 v16, v1

    .line 356
    :goto_0
    invoke-static/range {v2 .. v16}, Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;IIILjava/lang/String;IIJLjava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public getWebProgressBarView()Lcom/anythink/core/basead/ui/web/WebProgressBarView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/l;",
            "Lcom/anythink/core/common/f/m;",
            "Z",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->init(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLjava/util/List;)V

    .line 102
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1107
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1108
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 p4, 0x42200000    # 40.0f

    invoke-static {p1, p4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p4

    sub-int/2addr p3, p4

    .line 1110
    invoke-virtual {p0, p2, p3}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->a(II)V

    .line 1124
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    .line 1140
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    const/4 p3, 0x1

    .line 1141
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1142
    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1143
    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    const/4 p4, -0x1

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1145
    new-instance p2, Lcom/anythink/core/common/res/image/RecycleImageView;

    invoke-direct {p2, p1}, Lcom/anythink/core/common/res/image/RecycleImageView;-><init>(Landroid/content/Context;)V

    .line 1147
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_arrow_up"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1146
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1148
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x41100000    # 9.0f

    .line 1149
    invoke-static {p1, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p1, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 1150
    invoke-static {p1, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1151
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1153
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1154
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_slide_hint"

    const-string v2, "string"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    const/high16 v0, 0x41400000    # 12.0f

    .line 1155
    invoke-virtual {p2, p3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v0, "#000000"

    .line 1156
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1157
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1159
    invoke-static {p1, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1160
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1162
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v0, 0x42580000    # 54.0f

    .line 1163
    invoke-static {p1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p2, p4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 1164
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v0, 0x0

    .line 1165
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1166
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p2}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1168
    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    if-nez p2, :cond_0

    .line 1169
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    const/high16 v0, 0x41900000    # 18.0f

    .line 1170
    invoke-static {p1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v0, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    .line 1171
    invoke-virtual {p2, p3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1172
    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 1173
    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p2, p4}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 1174
    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    new-instance p3, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1175
    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    const-wide/16 p3, 0x258

    invoke-virtual {p2, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1177
    :cond_0
    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1129
    new-instance p2, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$1;

    invoke-direct {p2, p0, p1}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$1;-><init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 v0, 0x200

    if-ne p1, v0, :cond_6

    .line 390
    :try_start_0
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->O:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_4

    if-eqz p3, :cond_4

    .line 396
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 p2, 0x0

    .line 399
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 400
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_2

    .line 403
    invoke-virtual {p3}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    new-array v1, v1, [Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    .line 404
    :goto_1
    :try_start_2
    invoke-virtual {p3}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 405
    invoke-virtual {p3, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 406
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    nop

    goto :goto_2

    :catchall_1
    :cond_2
    move-object v1, v0

    :cond_3
    :goto_2
    if-eqz p1, :cond_5

    const/4 p3, 0x1

    :try_start_3
    new-array v1, p3, [Landroid/net/Uri;

    .line 413
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v1, p2

    goto :goto_3

    :cond_4
    move-object v1, v0

    .line 417
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->O:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 418
    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->O:Landroid/webkit/ValueCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :cond_6
    :goto_4
    return-void
.end method

.method public onWebFinish()V
    .locals 0

    return-void
.end method

.method public onWebPageFinish(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 473
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    iget v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    .line 475
    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    .line 476
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 480
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 481
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 488
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->N:Lcom/anythink/core/basead/ui/web/c;

    if-eqz v0, :cond_1

    .line 489
    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/basead/ui/web/c;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onWebPageLoadError(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x3

    .line 519
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    return-void
.end method

.method public onWebPageStart(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 501
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 502
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    .line 503
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 507
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, ""

    .line 508
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 509
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public declared-synchronized openInternalWebView(Ljava/lang/String;Lcom/anythink/core/api/IOfferClickHandler;)Z
    .locals 1

    monitor-enter p0

    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->D:Ljava/lang/String;

    .line 527
    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->B:Lcom/anythink/core/api/IOfferClickHandler;

    .line 529
    new-instance p1, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$5;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$5;-><init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)V

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->post(Ljava/lang/Runnable;)Z

    .line 549
    :cond_0
    iget-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->E:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public pause()V
    .locals 2

    .line 329
    invoke-super {p0}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->pause()V

    .line 330
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 331
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 332
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const/4 v0, 0x0

    .line 334
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    invoke-static {v1, v0}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/webkit/WebView;Z)V

    :cond_1
    return-void
.end method

.method public recordRedirectUrl(Ljava/lang/String;)V
    .locals 5

    .line 426
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->Q:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 430
    :try_start_0
    iget v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 432
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->Q:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :catchall_0
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, ""

    .line 444
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 446
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->Q:Ljava/lang/String;

    const/4 p1, 0x0

    .line 448
    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    return-void
.end method

.method public start()V
    .locals 2

    .line 278
    invoke-super {p0}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->start()V

    .line 279
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 280
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 282
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$4;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$4;-><init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 323
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    .line 343
    invoke-super {p0}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->stop()V

    return-void
.end method
