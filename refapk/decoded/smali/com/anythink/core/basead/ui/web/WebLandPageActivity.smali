.class public Lcom/anythink/core/basead/ui/web/WebLandPageActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/anythink/core/basead/ui/web/b;


# static fields
.field private static final e:I = 0x53d9c


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lcom/anythink/core/api/IOfferClickHandler;

.field private C:Lcom/anythink/core/basead/ui/web/c;

.field private D:I

.field private E:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final F:I

.field a:I

.field b:Lorg/json/JSONArray;

.field c:I

.field d:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:Lcom/anythink/core/basead/ui/web/WebProgressBarView;

.field private k:Landroid/webkit/WebView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Z

.field private p:Landroid/animation/ValueAnimator;

.field private q:Ljava/util/Random;

.field private r:I

.field private s:J

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:I

.field private w:Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Lcom/anythink/core/common/f/l;

.field private z:Lcom/anythink/core/common/f/m;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 70
    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->f:I

    const/4 v0, 0x2

    .line 71
    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->g:I

    const/4 v0, 0x3

    .line 72
    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->h:I

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->i:I

    const/16 v1, 0x8

    .line 84
    iput v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a:I

    const-string v1, ""

    .line 92
    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:Ljava/lang/String;

    .line 94
    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->v:I

    const/4 v1, 0x0

    .line 480
    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->E:Landroid/webkit/ValueCallback;

    const/16 v1, 0x200

    .line 481
    iput v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->F:I

    .line 807
    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->c:I

    .line 808
    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->d:I

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->r:I

    return p1
.end method

.method static synthetic a(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->E:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;
    .locals 4

    .line 777
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 779
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42400000    # 48.0f

    .line 780
    invoke-static {p0, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    .line 781
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v2, 0x40c00000    # 6.0f

    .line 782
    invoke-static {p0, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 783
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 784
    invoke-static {p0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    .line 785
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 788
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 789
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->w:Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 161
    invoke-virtual {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v1, "extra_offer_ad"

    .line 165
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    instance-of v2, v1, Lcom/anythink/core/common/f/l;

    if-eqz v2, :cond_0

    .line 168
    check-cast v1, Lcom/anythink/core/common/f/l;

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->y:Lcom/anythink/core/common/f/l;

    .line 169
    new-instance v2, Lcom/anythink/core/basead/ui/web/c;

    invoke-direct {v2, v1}, Lcom/anythink/core/basead/ui/web/c;-><init>(Lcom/anythink/core/common/f/l;)V

    iput-object v2, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->C:Lcom/anythink/core/basead/ui/web/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 173
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    const-string v1, "extra_request_info"

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 179
    instance-of v2, v1, Lcom/anythink/core/common/f/m;

    if-eqz v2, :cond_1

    .line 180
    check-cast v1, Lcom/anythink/core/common/f/m;

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->z:Lcom/anythink/core/common/f/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 184
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    :try_start_2
    const-string v1, "extra_click_handler"

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 190
    instance-of v2, v1, Lcom/anythink/core/api/IOfferClickHandler;

    if-eqz v2, :cond_2

    .line 191
    check-cast v1, Lcom/anythink/core/api/IOfferClickHandler;

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->B:Lcom/anythink/core/api/IOfferClickHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    .line 195
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    :try_start_3
    const-string v1, "extra_target_url"

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->A:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    .line 201
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    :try_start_4
    const-string v1, "extra_enter_type"

    const/4 v2, -0x1

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->D:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return-void

    :catchall_4
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/anythink/core/basead/b/c;)V
    .locals 3

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    const-class v1, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 105
    iget-object v1, p1, Lcom/anythink/core/basead/b/c;->c:Lcom/anythink/core/common/f/l;

    const-string v2, "extra_offer_ad"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 107
    iget-object v1, p1, Lcom/anythink/core/basead/b/c;->h:Lcom/anythink/core/common/f/m;

    const-string v2, "extra_request_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 109
    iget-object v1, p1, Lcom/anythink/core/basead/b/c;->f:Ljava/lang/String;

    const-string v2, "extra_target_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget v1, p1, Lcom/anythink/core/basead/b/c;->i:I

    const-string v2, "extra_enter_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    iget-object v1, p1, Lcom/anythink/core/basead/b/c;->g:Lcom/anythink/core/api/IOfferClickHandler;

    if-eqz v1, :cond_0

    .line 127
    iget-object p1, p1, Lcom/anythink/core/basead/b/c;->g:Lcom/anythink/core/api/IOfferClickHandler;

    const-string v1, "extra_click_handler"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    const/high16 p1, 0x10000000

    .line 132
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 147
    new-instance v0, Lcom/anythink/core/basead/b/c;

    invoke-direct {v0}, Lcom/anythink/core/basead/b/c;-><init>()V

    .line 148
    iput-object p1, v0, Lcom/anythink/core/basead/b/c;->f:Ljava/lang/String;

    .line 150
    invoke-static {p0, v0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a(Landroid/content/Context;Lcom/anythink/core/basead/b/c;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-static {v0, p0, p0}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/webkit/WebView;Landroid/content/Context;Lcom/anythink/core/basead/ui/web/b;)V

    .line 380
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$2;

    invoke-direct {v1, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$2;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 418
    invoke-static {p1}, Lcom/anythink/core/basead/a/a;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/ba;

    move-result-object p1

    .line 419
    iget v0, p1, Lcom/anythink/core/common/f/ba;->l:I

    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a:I

    .line 420
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    iget-object p1, p1, Lcom/anythink/core/common/f/ba;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 423
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->recordRedirectUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    return-object p0
.end method

.method private static b()V
    .locals 0

    return-void
.end method

.method static synthetic c(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/f/l;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->y:Lcom/anythink/core/common/f/l;

    return-object p0
.end method

.method private static c()V
    .locals 0

    return-void
.end method

.method static synthetic d(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/f/m;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->z:Lcom/anythink/core/common/f/m;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$3;

    invoke-direct {v1, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$3;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$4;

    invoke-direct {v1, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$4;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic e(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/api/IOfferClickHandler;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->B:Lcom/anythink/core/api/IOfferClickHandler;

    return-object p0
.end method

.method private e()V
    .locals 1

    .line 648
    invoke-virtual {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 649
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4067
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic f(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)I
    .locals 1

    const/4 v0, 0x2

    .line 67
    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->v:I

    return v0
.end method

.method private f()Landroid/widget/RelativeLayout;
    .locals 9

    .line 693
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 694
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 695
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 697
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v3, 0x53d9c

    .line 700
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 701
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v5, 0x425c0000    # 55.0f

    .line 702
    invoke-static {p0, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    .line 703
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0x10

    .line 704
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 705
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "#FFFFFF"

    .line 706
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 707
    invoke-static {p0, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    .line 708
    invoke-virtual {v2, v4, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 709
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 711
    invoke-virtual {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "browser_left_icon"

    const-string v7, "drawable"

    .line 712
    invoke-static {p0, v6, v7}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 711
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->l:Landroid/widget/ImageView;

    .line 717
    invoke-virtual {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "browser_close_icon"

    .line 718
    invoke-static {p0, v6, v7}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 717
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->m:Landroid/widget/ImageView;

    .line 721
    iget-object v4, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 724
    iget-object v4, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4795
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4797
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v6, 0x41a00000    # 20.0f

    .line 4798
    invoke-static {p0, v6}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {p0, v7}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v4, v6, v5, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v6, 0x1

    const/high16 v7, 0x41900000    # 18.0f

    .line 4799
    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v7, "#666666"

    .line 4800
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4801
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 4802
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 726
    iput-object v4, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->n:Landroid/widget/TextView;

    .line 727
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 731
    :try_start_0
    new-instance v2, Lcom/anythink/core/basead/ui/web/BaseWebView;

    invoke-direct {v2, p0}, Lcom/anythink/core/basead/ui/web/BaseWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x3

    .line 738
    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 739
    iget-object v6, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v6, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    iget-object v2, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 742
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v6, -0x252526

    .line 743
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 744
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 745
    invoke-static {p0, v8}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v6, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 746
    invoke-virtual {v6, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 747
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 748
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 750
    new-instance v2, Lcom/anythink/core/basead/ui/web/WebProgressBarView;

    invoke-direct {v2, p0}, Lcom/anythink/core/basead/ui/web/WebProgressBarView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->j:Lcom/anythink/core/basead/ui/web/WebProgressBarView;

    .line 751
    invoke-virtual {v2, v5}, Lcom/anythink/core/basead/ui/web/WebProgressBarView;->setProgress(I)V

    .line 752
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v5, 0x40800000    # 4.0f

    .line 753
    invoke-static {p0, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v2, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 754
    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 755
    iget-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->j:Lcom/anythink/core/basead/ui/web/WebProgressBarView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 757
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->q:Ljava/util/Random;

    const/16 v2, 0xc

    .line 758
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v4

    iput v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->r:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 760
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->p:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    .line 761
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 762
    iget-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->p:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$8;

    invoke-direct {v2, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$8;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 772
    iget-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x46
    .end array-data
.end method

.method private g()Landroid/widget/TextView;
    .locals 5

    .line 795
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 797
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 798
    invoke-static {p0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    .line 799
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v2, "#666666"

    .line 800
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 801
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 802
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-object v0
.end method

.method static synthetic g(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->e()V

    return-void
.end method

.method static synthetic h(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/basead/ui/web/WebProgressBarView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->j:Lcom/anythink/core/basead/ui/web/WebProgressBarView;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->p:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Landroid/widget/TextView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->r:I

    return p0
.end method

.method static synthetic m(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Ljava/util/Random;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->q:Ljava/util/Random;

    return-object p0
.end method

.method private static synthetic n(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V
    .locals 0

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public callbackClickResult(Lcom/anythink/core/common/f/ba;)V
    .locals 1

    .line 843
    iget v0, p1, Lcom/anythink/core/common/f/ba;->l:I

    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a:I

    .line 844
    iget-boolean v0, p1, Lcom/anythink/core/common/f/ba;->n:Z

    if-eqz v0, :cond_1

    .line 845
    iget-boolean p1, p1, Lcom/anythink/core/common/f/ba;->m:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 846
    iput p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->c:I

    .line 848
    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->v:I

    .line 849
    invoke-direct {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->e()V

    return-void

    .line 851
    :cond_0
    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->c:I

    :cond_1
    return-void
.end method

.method public finish()V
    .locals 5

    const-string v0, "string"

    .line 601
    iget-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->z:Lcom/anythink/core/common/f/m;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->z:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->f()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 604
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const-string v3, "system_dialog"

    const-string v4, "style"

    .line 605
    invoke-static {p0, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v3, "web_land_page_dialog_title"

    .line 607
    invoke-static {p0, v3, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 606
    invoke-virtual {p0, v3}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 608
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "web_land_page_dialog_stay"

    .line 609
    invoke-static {p0, v3, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 608
    invoke-virtual {p0, v3}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$7;

    invoke-direct {v4, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$7;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "web_land_page_dialog_yes"

    .line 622
    invoke-static {p0, v3, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 621
    invoke-virtual {p0, v0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$6;

    invoke-direct {v3, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$6;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 636
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 637
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 642
    :catchall_0
    :cond_0
    invoke-direct {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->e()V

    return-void
.end method

.method public getWebProgressBarView()Lcom/anythink/core/basead/ui/web/WebProgressBarView;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->j:Lcom/anythink/core/basead/ui/web/WebProgressBarView;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/16 v0, 0x200

    if-ne p1, v0, :cond_6

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->E:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_4

    if-eqz p3, :cond_4

    .line 570
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    .line 573
    :try_start_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 574
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_2

    .line 577
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    new-array v4, v4, [Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x0

    .line 578
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 579
    invoke-virtual {v3, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    .line 580
    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    nop

    goto :goto_2

    :catchall_1
    :cond_2
    move-object v4, v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    const/4 v3, 0x1

    :try_start_3
    new-array v4, v3, [Landroid/net/Uri;

    .line 587
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v4, v2

    goto :goto_3

    :cond_4
    move-object v4, v1

    .line 591
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->E:Landroid/webkit/ValueCallback;

    invoke-interface {v0, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 592
    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->E:Landroid/webkit/ValueCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 596
    :catchall_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void

    .line 659
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 312
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 313
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->s:J

    .line 314
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->t:Ljava/util/Map;

    const/4 p1, -0x1

    .line 316
    invoke-virtual {p0, p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->setResult(I)V

    .line 318
    invoke-virtual {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->o:Z

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 1161
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    const-string v1, "extra_offer_ad"

    .line 1165
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1167
    instance-of v2, v1, Lcom/anythink/core/common/f/l;

    if-eqz v2, :cond_1

    .line 1168
    check-cast v1, Lcom/anythink/core/common/f/l;

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->y:Lcom/anythink/core/common/f/l;

    .line 1169
    new-instance v2, Lcom/anythink/core/basead/ui/web/c;

    invoke-direct {v2, v1}, Lcom/anythink/core/basead/ui/web/c;-><init>(Lcom/anythink/core/common/f/l;)V

    iput-object v2, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->C:Lcom/anythink/core/basead/ui/web/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1173
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    :try_start_1
    const-string v1, "extra_request_info"

    .line 1177
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1179
    instance-of v2, v1, Lcom/anythink/core/common/f/m;

    if-eqz v2, :cond_2

    .line 1180
    check-cast v1, Lcom/anythink/core/common/f/m;

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->z:Lcom/anythink/core/common/f/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 1184
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    :try_start_2
    const-string v1, "extra_click_handler"

    .line 1188
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1190
    instance-of v2, v1, Lcom/anythink/core/api/IOfferClickHandler;

    if-eqz v2, :cond_3

    .line 1191
    check-cast v1, Lcom/anythink/core/api/IOfferClickHandler;

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->B:Lcom/anythink/core/api/IOfferClickHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    .line 1195
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    :try_start_3
    const-string v1, "extra_target_url"

    .line 1199
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->A:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    .line 1201
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    :try_start_4
    const-string v1, "extra_enter_type"

    .line 1205
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->D:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    .line 1207
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 331
    :cond_4
    :goto_4
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->A:Ljava/lang/String;

    .line 332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 333
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->y:Lcom/anythink/core/common/f/l;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->D()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_5
    const-string p1, ""

    .line 336
    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 337
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p1, "basead_click_empty"

    const-string v1, "string"

    .line 339
    invoke-static {v0, p1, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    .line 338
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 340
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x3

    .line 341
    iput p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->v:I

    .line 342
    invoke-direct {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->e()V

    return-void

    .line 346
    :cond_7
    invoke-static {v0, p1}, Lcom/anythink/core/basead/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/common/f/ba;

    move-result-object v0

    .line 349
    iget-boolean v1, v0, Lcom/anythink/core/common/f/ba;->m:Z

    if-eqz v1, :cond_8

    .line 350
    invoke-virtual {p0, v0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->callbackClickResult(Lcom/anythink/core/common/f/ba;)V

    return-void

    .line 353
    :cond_8
    invoke-virtual {p0, v0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->callbackClickResult(Lcom/anythink/core/common/f/ba;)V

    .line 356
    invoke-direct {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->f()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->x:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_9

    .line 2204
    invoke-static {p1}, Lcom/anythink/core/common/o/m;->a(Ljava/lang/String;)V

    .line 360
    invoke-direct {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->e()V

    return-void

    .line 363
    :cond_9
    invoke-virtual {p0, v0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->setContentView(Landroid/view/View;)V

    .line 2432
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$3;

    invoke-direct {v1, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$3;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2459
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$4;

    invoke-direct {v1, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$4;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    invoke-static {p0}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/content/Context;)V

    .line 3378
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-static {v0, p0, p0}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/webkit/WebView;Landroid/content/Context;Lcom/anythink/core/basead/ui/web/b;)V

    .line 3380
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$2;

    invoke-direct {v1, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$2;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 3418
    invoke-static {p1}, Lcom/anythink/core/basead/a/a;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/ba;

    move-result-object p1

    .line 3419
    iget v0, p1, Lcom/anythink/core/common/f/ba;->l:I

    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a:I

    .line 3420
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    iget-object p1, p1, Lcom/anythink/core/common/f/ba;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3423
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->recordRedirectUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 17

    move-object/from16 v0, p0

    .line 665
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onDestroy()V

    .line 666
    iget-object v1, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->p:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 667
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 668
    iput-object v2, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->p:Landroid/animation/ValueAnimator;

    .line 670
    :cond_0
    iget-object v1, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 671
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 672
    iget-object v1, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 674
    :cond_1
    iput-object v2, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    .line 676
    iget-object v1, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->y:Lcom/anythink/core/common/f/l;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->z:Lcom/anythink/core/common/f/m;

    if-eqz v1, :cond_3

    .line 677
    iget-object v2, v1, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->z:Lcom/anythink/core/common/f/m;

    iget-object v3, v1, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    iget-object v1, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->y:Lcom/anythink/core/common/f/l;

    .line 678
    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->d()I

    move-result v4

    iget-object v1, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->y:Lcom/anythink/core/common/f/l;

    .line 679
    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->s()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->t:Ljava/util/Map;

    iget v7, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->c:I

    iget v8, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->d:I

    iget v9, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a:I

    iget-object v10, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->A:Ljava/lang/String;

    iget-object v1, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->z:Lcom/anythink/core/common/f/m;

    iget v11, v1, Lcom/anythink/core/common/f/m;->j:I

    iget v12, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->D:I

    .line 681
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move v1, v11

    move v15, v12

    iget-wide v11, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->s:J

    sub-long/2addr v13, v11

    iget-object v12, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:Ljava/lang/String;

    .line 682
    iget v11, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->v:I

    if-nez v11, :cond_2

    const/4 v11, 0x1

    const/16 v16, 0x1

    goto :goto_0

    :cond_2
    move/from16 v16, v11

    :goto_0
    move v11, v1

    move-object v1, v12

    move v12, v15

    move-object v15, v1

    .line 677
    invoke-static/range {v2 .. v16}, Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;IIILjava/lang/String;IIJLjava/lang/String;I)V

    :cond_3
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 472
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 473
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 474
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 475
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 476
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->isFinishing()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/webkit/WebView;Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 485
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 486
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 487
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 488
    new-instance v1, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;

    invoke-direct {v1, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 557
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 372
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onWebFinish()V
    .locals 0

    .line 307
    invoke-direct {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->e()V

    return-void
.end method

.method public onWebPageFinish(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->w:Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 251
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 254
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    .line 255
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    .line 256
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    iget v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->v:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 259
    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->v:I

    .line 260
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->t:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 264
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 265
    iget-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->t:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 272
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->C:Lcom/anythink/core/basead/ui/web/c;

    if-eqz v0, :cond_2

    .line 273
    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/basead/ui/web/c;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onWebPageLoadError(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 279
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 280
    iput p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->v:I

    .line 282
    :cond_0
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->w:Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;

    if-eqz p1, :cond_1

    .line 283
    invoke-static {p1}, Lcom/anythink/core/common/o/w;->a(Landroid/view/View;)V

    goto :goto_0

    .line 285
    :cond_1
    new-instance p1, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;

    invoke-direct {p1, p0}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->w:Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;

    .line 286
    iget-object p2, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    if-eqz p2, :cond_2

    .line 287
    invoke-virtual {p2}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    :cond_2
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->w:Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;

    new-instance p2, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$1;

    invoke-direct {p2, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$1;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {p1, p2}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;->setOnRefreshListener(Landroid/view/View$OnClickListener;)V

    .line 299
    :goto_0
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    if-eqz p1, :cond_3

    const/16 p2, 0x8

    .line 300
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 302
    :cond_3
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->x:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->w:Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onWebPageStart(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 225
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 226
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 227
    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->v:I

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->t:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 233
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, ""

    .line 234
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 235
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->t:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 242
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->w:Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;

    if-eqz p1, :cond_2

    .line 243
    invoke-static {p1}, Lcom/anythink/core/common/o/w;->a(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public recordRedirectUrl(Ljava/lang/String;)V
    .locals 5

    .line 812
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->b:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->b:Lorg/json/JSONArray;

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->b:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 817
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 818
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->t:Ljava/util/Map;

    iget-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 821
    :try_start_0
    iget v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->v:I

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 823
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 826
    :cond_1
    iget-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->t:Ljava/util/Map;

    iget-object v2, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    :catchall_0
    :cond_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, ""

    .line 835
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 837
    iget-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->t:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    iput-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:Ljava/lang/String;

    const/4 p1, 0x0

    .line 839
    iput p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->v:I

    return-void
.end method
