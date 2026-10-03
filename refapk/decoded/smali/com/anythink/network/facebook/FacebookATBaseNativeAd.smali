.class public abstract Lcom/anythink/network/facebook/FacebookATBaseNativeAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

# interfaces
.implements Lcom/facebook/ads/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/network/facebook/FacebookATBaseNativeAd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/ads/NativeAdBase;",
        ">",
        "Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;",
        "Lcom/facebook/ads/NativeAdListener;"
    }
.end annotation


# instance fields
.field a:Lcom/facebook/ads/NativeAdBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field b:Landroid/content/Context;

.field c:Z

.field d:Lcom/anythink/network/facebook/FacebookATBaseNativeAd$a;

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/facebook/ads/NativeAdLayout;

.field g:Lcom/facebook/ads/MediaView;

.field h:Lcom/facebook/ads/MediaView;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;Z)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 35
    const-class v0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->i:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->b:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    .line 48
    iput-boolean p3, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->c:Z

    return-void
.end method

.method private a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3

    .line 74
    new-instance v0, Lcom/facebook/ads/AdOptionsView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->f:Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    if-nez p2, :cond_0

    .line 76
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p1, -0x2

    invoke-direct {p2, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x35

    .line 77
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 80
    :cond_0
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-lez p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 82
    iget v1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v1, p1

    float-to-int p1, v1

    .line 83
    invoke-virtual {v0, p1}, Lcom/facebook/ads/AdOptionsView;->setIconSizeDp(I)V

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->f:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p1, v0, p2}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->unregisterView()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->unregisterView()V

    .line 161
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->destroy()V

    .line 162
    iput-object v1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->g:Lcom/facebook/ads/MediaView;

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaView;->setListener(Lcom/facebook/ads/MediaViewListener;)V

    .line 166
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->g:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->destroy()V

    .line 167
    iput-object v1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->g:Lcom/facebook/ads/MediaView;

    .line 169
    :cond_1
    iput-object v1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->b:Landroid/content/Context;

    .line 170
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->h:Lcom/facebook/ads/MediaView;

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->destroy()V

    .line 172
    iput-object v1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->h:Lcom/facebook/ads/MediaView;

    .line 174
    :cond_2
    iput-object v1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->f:Lcom/facebook/ads/NativeAdLayout;

    return-void
.end method

.method public getAdFrom()Ljava/lang/String;
    .locals 2

    .line 364
    iget-boolean v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->c:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getSponsoredTranslation()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getAdIconView()Landroid/view/View;
    .locals 3

    .line 268
    iget-boolean v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 273
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->h:Lcom/facebook/ads/MediaView;

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->destroy()V

    .line 275
    iput-object v1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->h:Lcom/facebook/ads/MediaView;

    .line 277
    :cond_1
    new-instance v0, Lcom/facebook/ads/MediaView;

    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->h:Lcom/facebook/ads/MediaView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    .line 219
    :try_start_0
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->g:Lcom/facebook/ads/MediaView;

    if-nez p1, :cond_0

    .line 220
    new-instance p1, Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->g:Lcom/facebook/ads/MediaView;

    .line 221
    new-instance v0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd$1;

    invoke-direct {v0, p0}, Lcom/anythink/network/facebook/FacebookATBaseNativeAd$1;-><init>(Lcom/anythink/network/facebook/FacebookATBaseNativeAd;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaView;->setListener(Lcom/facebook/ads/MediaViewListener;)V

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->g:Lcom/facebook/ads/MediaView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 258
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAdvertiserName()Ljava/lang/String;
    .locals 2

    .line 324
    iget-boolean v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->c:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdvertiserName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getCallToActionText()Ljava/lang/String;
    .locals 2

    .line 312
    iget-boolean v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->c:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getCustomAdContainer()Landroid/view/ViewGroup;
    .locals 2

    .line 206
    iget-boolean v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 210
    :cond_0
    new-instance v0, Lcom/facebook/ads/NativeAdLayout;

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/ads/NativeAdLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->f:Lcom/facebook/ads/NativeAdLayout;

    return-object v0
.end method

.method public getDescriptionText()Ljava/lang/String;
    .locals 2

    .line 300
    iget-boolean v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->c:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getMainImageHeight()I
    .locals 2

    .line 350
    iget-boolean v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase$Image;->getHeight()I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public getMainImageWidth()I
    .locals 2

    .line 336
    iget-boolean v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase$Image;->getWidth()I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 287
    iget-boolean v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->c:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public isNativeExpress()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->c:Z

    return v0
.end method

.method public loadAd(Ljava/lang/String;Lcom/anythink/network/facebook/FacebookATBaseNativeAd$a;)V
    .locals 2

    .line 57
    iput-object p2, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->d:Lcom/anythink/network/facebook/FacebookATBaseNativeAd$a;

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 59
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {p2, p1}, Lcom/facebook/ads/NativeAdBase;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    return-void

    .line 62
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->e:Ljava/util/Map;

    .line 63
    invoke-static {}, Lcom/anythink/network/facebook/FacebookATInitManager;->getInstance()Lcom/anythink/network/facebook/FacebookATInitManager;

    invoke-static {p1}, Lcom/anythink/network/facebook/FacebookATInitManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "encrypted_cpm"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p2, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->e:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->setNetworkInfoMap(Ljava/util/Map;)V

    .line 65
    iget-object p2, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object p1

    .line 66
    iget-object p2, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {p2, p1}, Lcom/facebook/ads/NativeAdBase;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    return-void
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 376
    invoke-virtual {p0}, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->notifyAdClicked()V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->d:Lcom/anythink/network/facebook/FacebookATBaseNativeAd$a;

    if-eqz p1, :cond_0

    .line 192
    invoke-interface {p1}, Lcom/anythink/network/facebook/FacebookATBaseNativeAd$a;->onLoadSuccess()V

    :cond_0
    const/4 p1, 0x0

    .line 194
    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->d:Lcom/anythink/network/facebook/FacebookATBaseNativeAd$a;

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 183
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->d:Lcom/anythink/network/facebook/FacebookATBaseNativeAd$a;

    if-eqz p1, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/anythink/network/facebook/FacebookATBaseNativeAd$a;->onLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 186
    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->d:Lcom/anythink/network/facebook/FacebookATBaseNativeAd$a;

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 381
    invoke-virtual {p0}, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->notifyAdImpression()V

    return-void
.end method

.method public onMediaDownloaded(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 5

    .line 91
    iget-boolean v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 100
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getClickViewList()Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getChoiceViewLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    .line 104
    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    instance-of v2, v1, Lcom/facebook/ads/NativeAd;

    if-eqz v2, :cond_5

    .line 105
    check-cast v1, Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_3

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 108
    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->f:Lcom/facebook/ads/NativeAdLayout;

    if-eqz v2, :cond_2

    .line 109
    iget-object v3, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->g:Lcom/facebook/ads/MediaView;

    iget-object v4, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->h:Lcom/facebook/ads/MediaView;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->g:Lcom/facebook/ads/MediaView;

    iget-object v3, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->h:Lcom/facebook/ads/MediaView;

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    goto :goto_0

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->f:Lcom/facebook/ads/NativeAdLayout;

    if-eqz v0, :cond_4

    .line 115
    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->g:Lcom/facebook/ads/MediaView;

    iget-object v3, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->h:Lcom/facebook/ads/MediaView;

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V

    goto :goto_0

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->g:Lcom/facebook/ads/MediaView;

    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->h:Lcom/facebook/ads/MediaView;

    invoke-virtual {v1, p1, v0, v2}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;)V

    goto :goto_0

    .line 121
    :cond_5
    instance-of v2, v1, Lcom/facebook/ads/NativeBannerAd;

    if-eqz v2, :cond_9

    .line 122
    check-cast v1, Lcom/facebook/ads/NativeBannerAd;

    if-eqz v0, :cond_7

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 125
    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->f:Lcom/facebook/ads/NativeAdLayout;

    if-eqz v2, :cond_6

    .line 126
    iget-object v3, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->h:Lcom/facebook/ads/MediaView;

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    goto :goto_0

    .line 128
    :cond_6
    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->h:Lcom/facebook/ads/MediaView;

    invoke-virtual {v1, p1, v2, v0}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    goto :goto_0

    .line 131
    :cond_7
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->f:Lcom/facebook/ads/NativeAdLayout;

    if-eqz v0, :cond_8

    .line 132
    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->h:Lcom/facebook/ads/MediaView;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;)V

    goto :goto_0

    .line 134
    :cond_8
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->h:Lcom/facebook/ads/MediaView;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;)V

    .line 1074
    :cond_9
    :goto_0
    new-instance v0, Lcom/facebook/ads/AdOptionsView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->a:Lcom/facebook/ads/NativeAdBase;

    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->f:Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    if-nez p2, :cond_a

    .line 1076
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p1, -0x2

    invoke-direct {p2, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x35

    .line 1077
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1080
    :cond_a
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-lez p1, :cond_b

    .line 1081
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 1082
    iget v1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v1, p1

    float-to-int p1, v1

    .line 1083
    invoke-virtual {v0, p1}, Lcom/facebook/ads/AdOptionsView;->setIconSizeDp(I)V

    .line 1086
    :cond_b
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->f:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p1, v0, p2}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
