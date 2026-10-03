.class public Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/anythink/basead/ui/animplayerview/b;


# static fields
.field public static final MAIN_VIEW_INIT_HEIGHT:I = 0x2a

.field public static final MAIN_VIEW_INIT_WIDTH:I = 0x5a


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lcom/anythink/core/common/ui/component/RoundImageView;

.field private d:Lcom/anythink/basead/ui/WrapRoundImageView;

.field private e:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

.field private f:Landroid/animation/AnimatorSet;

.field private g:Landroid/animation/AnimatorSet;

.field private h:Landroid/os/Handler;

.field private i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x64

    .line 39
    iput p2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->a:I

    const/16 p2, 0x1f4

    .line 40
    iput p2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->b:I

    .line 61
    new-instance p2, Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-direct {p2, p1}, Lcom/anythink/core/common/ui/component/RoundImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->c:Lcom/anythink/core/common/ui/component/RoundImageView;

    .line 62
    new-instance p2, Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-direct {p2, p1}, Lcom/anythink/basead/ui/WrapRoundImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->d:Lcom/anythink/basead/ui/WrapRoundImageView;

    .line 63
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->c:Lcom/anythink/core/common/ui/component/RoundImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/ui/component/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->d:Lcom/anythink/basead/ui/WrapRoundImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/WrapRoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    .line 67
    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 69
    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->c:Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {p0, p2, p1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->d:Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-virtual {p0, p1, p3}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;)Lcom/anythink/core/common/ui/component/RoundImageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->c:Lcom/anythink/core/common/ui/component/RoundImageView;

    return-object p0
.end method

.method private a()V
    .locals 10

    .line 136
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->getMainViewScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_2

    .line 141
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v5, 0x1

    aput v0, v3, v5

    const-string v6, "scaleX"

    .line 143
    invoke-static {p0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v6, v2, [F

    aput v1, v6, v4

    aput v0, v6, v5

    const-string v0, "scaleY"

    .line 144
    invoke-static {p0, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 146
    iget-wide v6, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->i:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 150
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 151
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$3;-><init>(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method static synthetic b(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;)Lcom/anythink/basead/ui/WrapRoundImageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->d:Lcom/anythink/basead/ui/WrapRoundImageView;

    return-object p0
.end method

.method private b()V
    .locals 8

    .line 223
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->e:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->e:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->setVisibility(I)V

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->g:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_2

    .line 230
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->g:Landroid/animation/AnimatorSet;

    .line 231
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->e:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 232
    iget-object v3, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->e:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleY"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 237
    iget-object v4, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->e:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    const-string v6, "alpha"

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 238
    iget-object v5, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->g:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 239
    iget-object v5, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->g:Landroid/animation/AnimatorSet;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 240
    iget-object v5, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->g:Landroid/animation/AnimatorSet;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v1

    const/4 v0, 0x1

    aput-object v3, v6, v0

    aput-object v4, v6, v2

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 241
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->g:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$4;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$4;-><init>(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 251
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    :array_2
    .array-data 4
        0x3ecccccd    # 0.4f
        0x0
    .end array-data
.end method

.method static synthetic c(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->h:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public getMainViewScale()F
    .locals 3

    .line 108
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 112
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 113
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 115
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 116
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 117
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 257
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-ne p1, v1, :cond_2

    .line 1223
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->e:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    if-eqz p1, :cond_2

    .line 1226
    invoke-virtual {p1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 1227
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->e:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->setVisibility(I)V

    .line 1229
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->g:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_1

    .line 1230
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->g:Landroid/animation/AnimatorSet;

    .line 1231
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->e:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1232
    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->e:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    const-string v4, "scaleY"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1237
    iget-object v3, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->e:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    const-string v5, "alpha"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1238
    iget-object v4, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->g:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1239
    iget-object v4, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->g:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1240
    iget-object v4, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->g:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object p1, v5, v0

    const/4 p1, 0x1

    aput-object v2, v5, p1

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1241
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->g:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$4;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$4;-><init>(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1250
    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->g:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1251
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    :array_2
    .array-data 4
        0x3ecccccd    # 0.4f
        0x0
    .end array-data
.end method

.method public initView(Landroid/graphics/Bitmap;Z)V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$1;-><init>(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;)V

    invoke-static {v0, p1, v1}, Lcom/anythink/core/common/o/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/anythink/core/common/o/c$a;)V

    .line 88
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->d:Lcom/anythink/basead/ui/WrapRoundImageView;

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$2;-><init>(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/WrapRoundImageView;->post(Ljava/lang/Runnable;)Z

    if-eqz p2, :cond_0

    .line 95
    new-instance p2, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->e:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p2, p1, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->initView(Landroid/graphics/Bitmap;Z)V

    .line 97
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->e:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->setVisibility(I)V

    .line 98
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->e:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 219
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->stop()V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 0

    .line 208
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->stop()V

    .line 209
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->removeAllViews()V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->start()V

    :cond_1
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

    return-void
.end method

.method public setStartDelay(J)V
    .locals 0

    .line 264
    iput-wide p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->i:J

    return-void
.end method

.method public start()V
    .locals 10

    .line 1136
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->getMainViewScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    .line 1140
    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_1

    .line 1141
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v5, 0x1

    aput v0, v3, v5

    const-string v6, "scaleX"

    .line 1143
    invoke-static {p0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v6, v2, [F

    aput v1, v6, v4

    aput v0, v6, v5

    const-string v0, "scaleY"

    .line 1144
    invoke-static {p0, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1146
    iget-wide v6, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->i:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    .line 1147
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1149
    :cond_0
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1150
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1151
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1152
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$3;-><init>(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1165
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 194
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 195
    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->f:Landroid/animation/AnimatorSet;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 199
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 200
    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->g:Landroid/animation/AnimatorSet;

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->h:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
