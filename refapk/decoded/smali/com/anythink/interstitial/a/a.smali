.class public Lcom/anythink/interstitial/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "a"

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/interstitial/a/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/view/View;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private final f:Lcom/anythink/core/common/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/anythink/interstitial/a/a;->g:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/anythink/interstitial/a/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/interstitial/a/a;->d:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/anythink/interstitial/a/a;->e:Ljava/lang/String;

    const-string v0, "3"

    .line 114
    invoke-static {p1, p2, v0}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/interstitial/a/a;->f:Lcom/anythink/core/common/f;

    return-void
.end method

.method static synthetic a(Lcom/anythink/interstitial/a/a;)Landroid/content/Context;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/anythink/interstitial/a/a;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/interstitial/a/a;
    .locals 2

    .line 95
    sget-object v0, Lcom/anythink/interstitial/a/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/interstitial/a/a;

    if-nez v0, :cond_1

    .line 97
    const-class v1, Lcom/anythink/interstitial/a/a;

    monitor-enter v1

    if-nez v0, :cond_0

    .line 99
    :try_start_0
    new-instance v0, Lcom/anythink/interstitial/a/a;

    invoke-direct {v0, p0, p1}, Lcom/anythink/interstitial/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    sget-object p0, Lcom/anythink/interstitial/a/a;->g:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static a()V
    .locals 0

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/anythink/interstitial/a/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->v()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->u()Ljava/lang/String;

    move-result-object v0

    .line 238
    iget-object v2, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/view/View;

    if-nez v2, :cond_1

    .line 239
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const-string v3, "interstitial_loading_layout"

    const-string v4, "layout"

    invoke-static {p1, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/view/View;

    .line 241
    :cond_1
    iget-object v2, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/view/View;

    new-instance v3, Lcom/anythink/interstitial/a/a$2;

    invoke-direct {v3, p0}, Lcom/anythink/interstitial/a/a$2;-><init>(Lcom/anythink/interstitial/a/a;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 251
    iget-object v2, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/view/View;

    const-string v3, "interstitial_iv_loading"

    const-string v4, "id"

    invoke-static {p1, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 252
    iget-object v3, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/view/View;

    const-string v5, "interstitial_tv_loading"

    invoke-static {p1, v5, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/high16 v4, 0x41f00000    # 30.0f

    .line 255
    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    .line 256
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 257
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    const/high16 v4, 0x42b40000    # 90.0f

    .line 259
    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    .line 260
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 261
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 264
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v4, "interstitial_loading_default"

    const-string v5, "drawable"

    .line 266
    invoke-static {p1, v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 267
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 269
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 272
    :cond_2
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 274
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v2

    new-instance v6, Lcom/anythink/core/common/res/e;

    const/4 v7, 0x3

    invoke-direct {v6, v7, v1}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v7, Lcom/anythink/interstitial/a/a$3;

    invoke-direct {v7, p0, v5, v1, v4}, Lcom/anythink/interstitial/a/a$3;-><init>(Lcom/anythink/interstitial/a/a;Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V

    invoke-virtual {v2, v6, v7}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    .line 295
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 296
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const-string v0, "interstitial_text_loading_default"

    const-string v1, "string"

    .line 298
    invoke-static {p1, v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 301
    :goto_1
    iget-object v0, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 302
    iget-object v0, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 305
    :cond_4
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 306
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 307
    iget-object v1, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/anythink/interstitial/a/e;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/common/f/h;Ljava/lang/String;)V
    .locals 4

    if-eqz p3, :cond_0

    .line 410
    instance-of v0, p3, Lcom/anythink/core/common/f/a/e;

    if-eqz v0, :cond_0

    .line 411
    new-instance v0, Lcom/anythink/core/common/f/a/b;

    move-object v1, p3

    check-cast v1, Lcom/anythink/core/common/f/a/e;

    invoke-direct {v0, v1}, Lcom/anythink/core/common/f/a/b;-><init>(Lcom/anythink/core/common/f/a/e;)V

    .line 412
    new-instance v1, Lcom/anythink/core/common/f/a/c;

    move-object v2, p3

    check-cast v2, Lcom/anythink/core/common/f/a/a;

    const-string v3, "3"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, p4, v3}, Lcom/anythink/core/common/f/a/c;-><init>(Lcom/anythink/core/common/f/a/a;Lcom/anythink/core/common/f/h;I)V

    .line 413
    invoke-static {v1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f/m;)Ljava/lang/String;

    move-result-object p4

    .line 415
    invoke-static {}, Lcom/anythink/basead/e/b;->a()Lcom/anythink/basead/e/b;

    move-result-object v2

    new-instance v3, Lcom/anythink/interstitial/a/a$4;

    invoke-direct {v3, p0, p2, p4}, Lcom/anythink/interstitial/a/a$4;-><init>(Lcom/anythink/interstitial/a/a;Lcom/anythink/interstitial/a/e;Ljava/lang/String;)V

    invoke-virtual {v2, p4, v3}, Lcom/anythink/basead/e/b;->a(Ljava/lang/String;Lcom/anythink/basead/e/b$b;)V

    .line 468
    invoke-static {}, Lcom/anythink/basead/d/i;->a()Lcom/anythink/basead/d/i;

    move-result-object p2

    invoke-virtual {p2, p4, p3}, Lcom/anythink/basead/d/i;->a(Ljava/lang/String;Lcom/anythink/core/api/BaseAd;)V

    .line 470
    new-instance p2, Lcom/anythink/core/basead/b/c;

    invoke-direct {p2}, Lcom/anythink/core/basead/b/c;-><init>()V

    .line 471
    iput-object v0, p2, Lcom/anythink/core/basead/b/c;->c:Lcom/anythink/core/common/f/l;

    .line 472
    iput-object p4, p2, Lcom/anythink/core/basead/b/c;->d:Ljava/lang/String;

    const/4 p3, 0x3

    .line 473
    iput p3, p2, Lcom/anythink/core/basead/b/c;->a:I

    .line 474
    iput-object v1, p2, Lcom/anythink/core/basead/b/c;->h:Lcom/anythink/core/common/f/m;

    .line 475
    invoke-static {p1}, Lcom/anythink/core/common/o/e;->g(Landroid/content/Context;)I

    move-result p3

    iput p3, p2, Lcom/anythink/core/basead/b/c;->e:I

    .line 476
    iput-object p5, p2, Lcom/anythink/core/basead/b/c;->b:Ljava/lang/String;

    .line 478
    invoke-static {p1, p2}, Lcom/anythink/basead/ui/BaseATActivity;->a(Landroid/app/Activity;Lcom/anythink/core/basead/b/c;)V

    return-void

    :cond_0
    const-string p1, "anythink"

    const-string p3, "showThirdPartyNativeSplash fail,AdCache return illegal type adObject"

    .line 480
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    const-string p1, ""

    const-string p3, "showThirdPartyNativeInterstitial fail,AdCache return illegal type adObject"

    .line 482
    invoke-virtual {p2, p1, p3}, Lcom/anythink/interstitial/a/e;->onInterstitialAdVideoError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/anythink/interstitial/a/a;Landroid/app/Activity;)V
    .locals 8

    if-eqz p1, :cond_4

    .line 1233
    iget-object v0, p0, Lcom/anythink/interstitial/a/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    .line 1234
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->v()Ljava/lang/String;

    move-result-object v1

    .line 1235
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->u()Ljava/lang/String;

    move-result-object v0

    .line 1238
    iget-object v2, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1239
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const-string v3, "interstitial_loading_layout"

    const-string v4, "layout"

    invoke-static {p1, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/view/View;

    .line 1241
    :cond_0
    iget-object v2, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/view/View;

    new-instance v3, Lcom/anythink/interstitial/a/a$2;

    invoke-direct {v3, p0}, Lcom/anythink/interstitial/a/a$2;-><init>(Lcom/anythink/interstitial/a/a;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1251
    iget-object v2, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/view/View;

    const-string v3, "interstitial_iv_loading"

    const-string v4, "id"

    invoke-static {p1, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1252
    iget-object v3, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/view/View;

    const-string v5, "interstitial_tv_loading"

    invoke-static {p1, v5, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/high16 v4, 0x41f00000    # 30.0f

    .line 1255
    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    .line 1256
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 1257
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    const/high16 v4, 0x42b40000    # 90.0f

    .line 1259
    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    .line 1260
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 1261
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 1264
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v4, "interstitial_loading_default"

    const-string v5, "drawable"

    .line 1266
    invoke-static {p1, v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1267
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1269
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1272
    :cond_1
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1274
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/res/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;

    move-result-object v2

    new-instance v6, Lcom/anythink/core/common/res/e;

    const/4 v7, 0x3

    invoke-direct {v6, v7, v1}, Lcom/anythink/core/common/res/e;-><init>(ILjava/lang/String;)V

    new-instance v7, Lcom/anythink/interstitial/a/a$3;

    invoke-direct {v7, p0, v5, v1, v4}, Lcom/anythink/interstitial/a/a$3;-><init>(Lcom/anythink/interstitial/a/a;Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V

    invoke-virtual {v2, v6, v7}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V

    .line 1295
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1296
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const-string v0, "interstitial_text_loading_default"

    const-string v1, "string"

    .line 1298
    invoke-static {p1, v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1301
    :goto_1
    iget-object v0, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1302
    iget-object v0, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1305
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1306
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 1307
    iget-object p0, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/view/View;

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/anythink/interstitial/a/a;Landroid/app/Activity;Lcom/anythink/interstitial/a/e;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/common/f/h;Ljava/lang/String;)V
    .locals 4

    if-eqz p3, :cond_0

    .line 1410
    instance-of v0, p3, Lcom/anythink/core/common/f/a/e;

    if-eqz v0, :cond_0

    .line 1411
    new-instance v0, Lcom/anythink/core/common/f/a/b;

    move-object v1, p3

    check-cast v1, Lcom/anythink/core/common/f/a/e;

    invoke-direct {v0, v1}, Lcom/anythink/core/common/f/a/b;-><init>(Lcom/anythink/core/common/f/a/e;)V

    .line 1412
    new-instance v1, Lcom/anythink/core/common/f/a/c;

    move-object v2, p3

    check-cast v2, Lcom/anythink/core/common/f/a/a;

    const-string v3, "3"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, p4, v3}, Lcom/anythink/core/common/f/a/c;-><init>(Lcom/anythink/core/common/f/a/a;Lcom/anythink/core/common/f/h;I)V

    .line 1413
    invoke-static {v1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f/m;)Ljava/lang/String;

    move-result-object p4

    .line 1415
    invoke-static {}, Lcom/anythink/basead/e/b;->a()Lcom/anythink/basead/e/b;

    move-result-object v2

    new-instance v3, Lcom/anythink/interstitial/a/a$4;

    invoke-direct {v3, p0, p2, p4}, Lcom/anythink/interstitial/a/a$4;-><init>(Lcom/anythink/interstitial/a/a;Lcom/anythink/interstitial/a/e;Ljava/lang/String;)V

    invoke-virtual {v2, p4, v3}, Lcom/anythink/basead/e/b;->a(Ljava/lang/String;Lcom/anythink/basead/e/b$b;)V

    .line 1468
    invoke-static {}, Lcom/anythink/basead/d/i;->a()Lcom/anythink/basead/d/i;

    move-result-object p0

    invoke-virtual {p0, p4, p3}, Lcom/anythink/basead/d/i;->a(Ljava/lang/String;Lcom/anythink/core/api/BaseAd;)V

    .line 1470
    new-instance p0, Lcom/anythink/core/basead/b/c;

    invoke-direct {p0}, Lcom/anythink/core/basead/b/c;-><init>()V

    .line 1471
    iput-object v0, p0, Lcom/anythink/core/basead/b/c;->c:Lcom/anythink/core/common/f/l;

    .line 1472
    iput-object p4, p0, Lcom/anythink/core/basead/b/c;->d:Ljava/lang/String;

    const/4 p2, 0x3

    .line 1473
    iput p2, p0, Lcom/anythink/core/basead/b/c;->a:I

    .line 1474
    iput-object v1, p0, Lcom/anythink/core/basead/b/c;->h:Lcom/anythink/core/common/f/m;

    .line 1475
    invoke-static {p1}, Lcom/anythink/core/common/o/e;->g(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/anythink/core/basead/b/c;->e:I

    .line 1476
    iput-object p5, p0, Lcom/anythink/core/basead/b/c;->b:Ljava/lang/String;

    .line 1478
    invoke-static {p1, p0}, Lcom/anythink/basead/ui/BaseATActivity;->a(Landroid/app/Activity;Lcom/anythink/core/basead/b/c;)V

    return-void

    :cond_0
    const-string p0, "anythink"

    const-string p1, "showThirdPartyNativeSplash fail,AdCache return illegal type adObject"

    .line 1480
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    const-string p1, "showThirdPartyNativeInterstitial fail,AdCache return illegal type adObject"

    .line 1482
    invoke-virtual {p2, p0, p1}, Lcom/anythink/interstitial/a/e;->onInterstitialAdVideoError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/interstitial/a/a;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/anythink/interstitial/a/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method private static b()V
    .locals 0

    return-void
.end method

.method static synthetic c(Lcom/anythink/interstitial/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/anythink/interstitial/a/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private static c()V
    .locals 0

    return-void
.end method

.method static synthetic d(Lcom/anythink/interstitial/a/a;)Landroid/view/View;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/anythink/interstitial/a/a;->b:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/Map;)Lcom/anythink/core/api/ATAdStatusInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/anythink/core/api/ATAdStatusInfo;"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/anythink/interstitial/a/a;->f:Lcom/anythink/core/common/f;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/util/Map;)Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/api/ATAdInfo;",
            ">;"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/anythink/interstitial/a/a;->f:Lcom/anythink/core/common/f;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/interstitial/api/ATInterstitialListener;Lcom/anythink/core/api/ATEventInterface;Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/anythink/interstitial/api/ATInterstitialListener;",
            "Lcom/anythink/core/api/ATEventInterface;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object v12, p0

    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, v12, Lcom/anythink/interstitial/a/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The placementId("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v12, Lcom/anythink/interstitial/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is already in the process of being delayed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 128
    iget-object v0, v12, Lcom/anythink/interstitial/a/a;->f:Lcom/anythink/core/common/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v4, p1

    move-object/from16 v6, p5

    invoke-virtual {v0, p1, v1, v2, v6}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLjava/util/Map;)Lcom/anythink/core/common/f/b;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 130
    invoke-virtual {v3}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, v12, Lcom/anythink/interstitial/a/a;->f:Lcom/anythink/core/common/f;

    invoke-virtual {v0, v3}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f/b;)V

    .line 134
    invoke-virtual {v3}, Lcom/anythink/core/common/f/b;->c()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Lcom/anythink/core/common/f/b;->a(I)V

    .line 137
    invoke-virtual {v3}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ac()I

    move-result v7

    if-lez v7, :cond_1

    .line 140
    iget-object v0, v12, Lcom/anythink/interstitial/a/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    :cond_1
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v13, Lcom/anythink/interstitial/a/a$1;

    move-object v1, v13

    move-object v2, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v11}, Lcom/anythink/interstitial/a/a$1;-><init>(Lcom/anythink/interstitial/a/a;Lcom/anythink/core/common/f/b;Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;ILcom/anythink/core/api/ATEventInterface;Lcom/anythink/interstitial/api/ATInterstitialListener;J)V

    invoke-virtual {v0, v13}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v0, v12, Lcom/anythink/interstitial/a/a;->f:Lcom/anythink/core/common/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/api/ATAdStatusInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->E()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/interstitial/a/a;->a(Landroid/content/Context;ILcom/anythink/core/common/b/a;Lcom/anythink/core/common/b/b;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/content/Context;ILcom/anythink/core/common/b/a;Lcom/anythink/core/common/b/b;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/anythink/core/common/b/a;",
            "Lcom/anythink/core/common/b/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 327
    new-instance v4, Lcom/anythink/core/common/f/v;

    invoke-direct {v4}, Lcom/anythink/core/common/f/v;-><init>()V

    .line 328
    invoke-virtual {v4, p1}, Lcom/anythink/core/common/f/v;->a(Landroid/content/Context;)V

    .line 330
    iput p2, v4, Lcom/anythink/core/common/f/v;->d:I

    .line 331
    iput-object p4, v4, Lcom/anythink/core/common/f/v;->e:Lcom/anythink/core/common/b/b;

    if-eqz p5, :cond_0

    .line 334
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, v4, Lcom/anythink/core/common/f/v;->g:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :catchall_0
    :cond_0
    iget-object v0, p0, Lcom/anythink/interstitial/a/a;->f:Lcom/anythink/core/common/f;

    iget-object v1, p0, Lcom/anythink/interstitial/a/a;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/interstitial/a/a;->e:Ljava/lang/String;

    const-string v2, "3"

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/core/common/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/b/a;)V

    return-void
.end method
