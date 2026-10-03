.class public Lcom/anythink/network/facebook/FacebookATAdapter;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->b:Ljava/lang/String;

    const-string v1, "0"

    .line 28
    iput-object v1, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->c:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/facebook/FacebookATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "payload"

    .line 73
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->a:Ljava/lang/String;

    .line 79
    :cond_0
    iget-object p2, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->c:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const-string v1, "2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const-string v1, "1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_3
    const-string v1, "0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    .line 94
    new-instance p2, Lcom/facebook/ads/NativeAd;

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->b:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/anythink/network/facebook/FacebookATNativeAd;

    invoke-direct {v0, p1, p2}, Lcom/anythink/network/facebook/FacebookATNativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;)V

    goto :goto_1

    .line 89
    :cond_2
    new-instance p2, Lcom/facebook/ads/NativeBannerAd;

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->b:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Lcom/facebook/ads/NativeBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/anythink/network/facebook/FacebookATNativeBannerAd;

    invoke-direct {v0, p1, p2}, Lcom/anythink/network/facebook/FacebookATNativeBannerAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeBannerAd;)V

    goto :goto_1

    .line 85
    :cond_3
    new-instance p2, Lcom/facebook/ads/NativeAd;

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->b:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/anythink/network/facebook/FacebookATNativeExpressAd;

    invoke-direct {v0, p1, p2}, Lcom/anythink/network/facebook/FacebookATNativeExpressAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;)V

    goto :goto_1

    .line 81
    :cond_4
    new-instance p2, Lcom/facebook/ads/NativeBannerAd;

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->b:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Lcom/facebook/ads/NativeBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->d:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeBannerAd;Ljava/lang/String;)V

    .line 99
    :goto_1
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->a:Ljava/lang/String;

    new-instance p2, Lcom/anythink/network/facebook/FacebookATAdapter$1;

    invoke-direct {p2, p0, v0}, Lcom/anythink/network/facebook/FacebookATAdapter$1;-><init>(Lcom/anythink/network/facebook/FacebookATAdapter;Lcom/anythink/network/facebook/FacebookATBaseNativeAd;)V

    invoke-virtual {v0, p1, p2}, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->loadAd(Ljava/lang/String;Lcom/anythink/network/facebook/FacebookATBaseNativeAd$a;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/anythink/network/facebook/FacebookATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/facebook/FacebookATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/facebook/FacebookATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/facebook/FacebookATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .locals 0

    return-void
.end method

.method public getBidManager()Lcom/anythink/core/api/MediationBidManager;
    .locals 1

    .line 146
    invoke-static {}, Lcom/anythink/network/facebook/FacebookBidkitManager;->getInstance()Lcom/anythink/network/facebook/FacebookBidkitManager;

    move-result-object v0

    return-object v0
.end method

.method public getBidRequestInfo(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBidRequestInfoListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATBidRequestInfoListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    const-string p3, "unit_id"

    .line 158
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 160
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    :goto_0
    invoke-static {}, Lcom/anythink/network/facebook/FacebookATInitManager;->getInstance()Lcom/anythink/network/facebook/FacebookATInitManager;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0, p4}, Lcom/anythink/network/facebook/FacebookATInitManager;->a(Landroid/content/Context;Ljava/util/Map;ZLcom/anythink/core/api/ATBidRequestInfoListener;)V

    return-void
.end method

.method public getMediationInitManager()Lcom/anythink/core/api/ATInitMediation;
    .locals 1

    .line 152
    invoke-static {}, Lcom/anythink/network/facebook/FacebookATInitManager;->getInstance()Lcom/anythink/network/facebook/FacebookATInitManager;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 126
    invoke-static {}, Lcom/anythink/network/facebook/FacebookATInitManager;->getInstance()Lcom/anythink/network/facebook/FacebookATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/facebook/FacebookATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    .line 141
    invoke-static {}, Lcom/anythink/network/facebook/FacebookATInitManager;->getInstance()Lcom/anythink/network/facebook/FacebookATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/facebook/FacebookATInitManager;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p3, "height"

    const-string v0, "unit_type"

    const-string v1, "unit_id"

    .line 35
    :try_start_0
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->b:Ljava/lang/String;

    .line 39
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->c:Ljava/lang/String;

    .line 43
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 47
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->b:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 51
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_3

    .line 52
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string p2, ""

    const-string p3, "facebook unitId is empty."

    invoke-interface {p1, p2, p3}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    if-eqz p2, :cond_5

    .line 60
    :try_start_1
    sget-object p3, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->IS_AUTO_PLAY_KEY:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->e:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 66
    :cond_5
    :goto_1
    invoke-static {}, Lcom/anythink/network/facebook/FacebookATInitManager;->getInstance()Lcom/anythink/network/facebook/FacebookATInitManager;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lcom/anythink/network/facebook/FacebookATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;)V

    const-string p3, "payload"

    .line 1073
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1074
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->a:Ljava/lang/String;

    .line 1079
    :cond_6
    iget-object p2, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->c:Ljava/lang/String;

    const/4 p3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v0, "3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p3, 0x2

    goto :goto_2

    :pswitch_1
    const-string v0, "2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p3, 0x1

    goto :goto_2

    :pswitch_2
    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p3, 0x0

    goto :goto_2

    :pswitch_3
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p3, 0x3

    :cond_7
    :goto_2
    if-eqz p3, :cond_a

    if-eq p3, v2, :cond_9

    if-eq p3, v1, :cond_8

    .line 1094
    new-instance p2, Lcom/facebook/ads/NativeAd;

    iget-object p3, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->b:Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1095
    new-instance p3, Lcom/anythink/network/facebook/FacebookATNativeAd;

    invoke-direct {p3, p1, p2}, Lcom/anythink/network/facebook/FacebookATNativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;)V

    goto :goto_3

    .line 1089
    :cond_8
    new-instance p2, Lcom/facebook/ads/NativeBannerAd;

    iget-object p3, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->b:Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Lcom/facebook/ads/NativeBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1090
    new-instance p3, Lcom/anythink/network/facebook/FacebookATNativeBannerAd;

    invoke-direct {p3, p1, p2}, Lcom/anythink/network/facebook/FacebookATNativeBannerAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeBannerAd;)V

    goto :goto_3

    .line 1085
    :cond_9
    new-instance p2, Lcom/facebook/ads/NativeAd;

    iget-object p3, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->b:Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1086
    new-instance p3, Lcom/anythink/network/facebook/FacebookATNativeExpressAd;

    invoke-direct {p3, p1, p2}, Lcom/anythink/network/facebook/FacebookATNativeExpressAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;)V

    goto :goto_3

    .line 1081
    :cond_a
    new-instance p2, Lcom/facebook/ads/NativeBannerAd;

    iget-object p3, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->b:Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Lcom/facebook/ads/NativeBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1082
    new-instance p3, Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->d:Ljava/lang/String;

    invoke-direct {p3, p1, p2, v0}, Lcom/anythink/network/facebook/FacebookATNativeBannerExpressAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeBannerAd;Ljava/lang/String;)V

    .line 1099
    :goto_3
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATAdapter;->a:Ljava/lang/String;

    new-instance p2, Lcom/anythink/network/facebook/FacebookATAdapter$1;

    invoke-direct {p2, p0, p3}, Lcom/anythink/network/facebook/FacebookATAdapter$1;-><init>(Lcom/anythink/network/facebook/FacebookATAdapter;Lcom/anythink/network/facebook/FacebookATBaseNativeAd;)V

    invoke-virtual {p3, p1, p2}, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->loadAd(Ljava/lang/String;Lcom/anythink/network/facebook/FacebookATBaseNativeAd$a;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setUserDataConsent(Landroid/content/Context;ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
