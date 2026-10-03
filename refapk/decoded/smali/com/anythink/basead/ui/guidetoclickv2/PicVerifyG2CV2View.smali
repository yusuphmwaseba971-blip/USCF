.class public Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;
.super Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;


# instance fields
.field c:Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;

.field d:Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;

.field e:Ljava/lang/String;

.field f:Landroid/animation/ValueAnimator;

.field g:Landroid/animation/ValueAnimator;

.field h:I

.field private i:Z

.field private j:Z

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x1e

    .line 40
    iput p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->k:I

    const/16 p1, 0xf

    .line 42
    iput p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->l:I

    const/16 p1, 0x1f4

    .line 43
    iput p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->m:I

    const/16 p1, 0x12c

    .line 45
    iput p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->n:I

    const/4 p1, -0x1

    .line 227
    iput p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->h:I

    return-void
.end method

.method private a(Landroid/content/Context;III)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    .line 295
    invoke-static {p1, p3, p4, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 298
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method private a(I)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->d:Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->setClickable(Z)V

    .line 232
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->d:Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->setEnabled(Z)V

    .line 233
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->d:Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 234
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->g:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v1

    const/4 p1, 0x1

    const/16 v1, 0x64

    aput v1, v0, p1

    .line 235
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->g:Landroid/animation/ValueAnimator;

    .line 236
    new-instance v0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$5;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$5;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 248
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->g:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 249
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)V
    .locals 3

    .line 2202
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->f:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 2203
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->f:Landroid/animation/ValueAnimator;

    .line 2204
    new-instance v2, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$4;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$4;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2211
    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 2212
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->f:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 2213
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->f:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2216
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->g:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 2217
    iget-object p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0xf
    .end array-data
.end method

.method static synthetic a(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;I)V
    .locals 3

    .line 2231
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->d:Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->setClickable(Z)V

    .line 2232
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->d:Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->setEnabled(Z)V

    .line 2233
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->d:Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2234
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->g:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v1

    const/4 p1, 0x1

    const/16 v1, 0x64

    aput v1, v0, p1

    .line 2235
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->g:Landroid/animation/ValueAnimator;

    .line 2236
    new-instance v0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$5;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$5;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2248
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->g:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2249
    iget-object p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->j:Z

    return p0
.end method

.method static synthetic b(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->i:Z

    return p1
.end method

.method private c()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->d:Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->setProgress(I)V

    return-void
.end method

.method static synthetic c(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->i:Z

    return p0
.end method

.method private d()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->f:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 203
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->f:Landroid/animation/ValueAnimator;

    .line 204
    new-instance v2, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$4;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$4;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 211
    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 212
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->f:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 213
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->f:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->g:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0xf
    .end array-data
.end method

.method static synthetic d(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)V
    .locals 0

    .line 3222
    iget-object p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->f:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 3223
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->f:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method final a(II)V
    .locals 4

    .line 53
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 54
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "myoffer_g2c_v2_pic_vertify"

    const-string v1, "layout"

    invoke-static {p2, v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "myoffer_g2c_picvertify"

    const-string v0, "id"

    invoke-static {p1, p2, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->c:Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;

    .line 60
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "myoffer_g2c_picvertify_seekbar"

    invoke-static {p1, p2, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->d:Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;

    .line 61
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42400000    # 48.0f

    invoke-static {p1, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    .line 62
    iget-object p2, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->c:Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;

    invoke-virtual {p2, p1}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;->setBlockSize(I)V

    .line 63
    iget-object p2, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->c:Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;

    new-instance v0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$1;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)V

    invoke-virtual {p2, v0}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView;->callback(Lcom/anythink/basead/ui/guidetoclickv2/picverify/PictureVerifyView$a;)V

    .line 76
    iget-object p2, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->e:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object p2

    new-instance v0, Lcom/anythink/core/common/res/e;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$2;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;I)V

    .line 78
    invoke-virtual {p2, v0, v1}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->d:Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 138
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_g2c_seek_bar_bg"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 137
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->d:Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 140
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_seek_bar_icon"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 141
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    .line 1292
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v0, 0x0

    .line 1295
    invoke-static {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1298
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 139
    invoke-virtual {p1, v1}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->d:Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->setThumbOffset(I)V

    .line 144
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->d:Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;

    new-instance p2, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;

    invoke-direct {p2, p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View$3;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/guidetoclickv2/picverify/TextSeekbar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public canStartNextAnim()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->g:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadImage(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->e:Ljava/lang/String;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 255
    invoke-super {p0}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->onDetachedFromWindow()V

    .line 256
    invoke-virtual {p0}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->release()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 261
    invoke-super {p0}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->release()V

    .line 262
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->f:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->g:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method
