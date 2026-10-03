.class public Lcom/anythink/network/facebook/FacebookATBannerAdapter;
.super Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;


# instance fields
.field a:Lcom/facebook/ads/AdView;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;-><init>()V

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->e:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/facebook/FacebookATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
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

    const-string v0, "size"

    .line 63
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->b:Ljava/lang/String;

    :cond_0
    const-string v0, "payload"

    .line 67
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->c:Ljava/lang/String;

    .line 69
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->d:Ljava/util/Map;

    .line 70
    invoke-static {}, Lcom/anythink/network/facebook/FacebookATInitManager;->getInstance()Lcom/anythink/network/facebook/FacebookATInitManager;

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATInitManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "encrypted_cpm"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_1
    new-instance p2, Lcom/anythink/network/facebook/FacebookATBannerAdapter$1;

    invoke-direct {p2, p0}, Lcom/anythink/network/facebook/FacebookATBannerAdapter$1;-><init>(Lcom/anythink/network/facebook/FacebookATBannerAdapter;)V

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "320x90"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "320x50"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "320x250"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "300x250"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 122
    new-instance v0, Lcom/facebook/ads/AdView;

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->e:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    goto :goto_1

    .line 115
    :pswitch_0
    new-instance v0, Lcom/facebook/ads/AdView;

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->e:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    goto :goto_1

    .line 112
    :pswitch_1
    new-instance v0, Lcom/facebook/ads/AdView;

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->e:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    goto :goto_1

    .line 119
    :pswitch_2
    new-instance v0, Lcom/facebook/ads/AdView;

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->e:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    .line 125
    :goto_1
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 126
    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    return-void

    .line 128
    :cond_6
    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->c:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x215ddd38 -> :sswitch_3
        -0x1df42bfa -> :sswitch_2
        0x59df59c2 -> :sswitch_1
        0x59df5a3e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/anythink/network/facebook/FacebookATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/facebook/FacebookATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/facebook/FacebookATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/facebook/FacebookATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/facebook/FacebookATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/facebook/FacebookATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/facebook/FacebookATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->a:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->a:Lcom/facebook/ads/AdView;

    :cond_0
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->a:Lcom/facebook/ads/AdView;

    return-object v0
.end method

.method public getBidManager()Lcom/anythink/core/api/MediationBidManager;
    .locals 1

    .line 167
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

    .line 184
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 186
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 188
    :goto_0
    invoke-static {}, Lcom/anythink/network/facebook/FacebookATInitManager;->getInstance()Lcom/anythink/network/facebook/FacebookATInitManager;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2, v0, p4}, Lcom/anythink/network/facebook/FacebookATInitManager;->a(Landroid/content/Context;Ljava/util/Map;ZLcom/anythink/core/api/ATBidRequestInfoListener;)V

    return-void
.end method

.method public getMediationInitManager()Lcom/anythink/core/api/ATInitMediation;
    .locals 1

    .line 178
    invoke-static {}, Lcom/anythink/network/facebook/FacebookATInitManager;->getInstance()Lcom/anythink/network/facebook/FacebookATInitManager;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkInfoMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->d:Ljava/util/Map;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 152
    invoke-static {}, Lcom/anythink/network/facebook/FacebookATInitManager;->getInstance()Lcom/anythink/network/facebook/FacebookATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/facebook/FacebookATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    .line 147
    invoke-static {}, Lcom/anythink/network/facebook/FacebookATInitManager;->getInstance()Lcom/anythink/network/facebook/FacebookATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/facebook/FacebookATInitManager;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
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

    const-string v0, "unit_id"

    .line 44
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 45
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->e:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/anythink/network/facebook/FacebookATInitManager;->getInstance()Lcom/anythink/network/facebook/FacebookATInitManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/anythink/network/facebook/FacebookATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;)V

    .line 55
    invoke-virtual {p0}, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->getMixedFormatAdType()I

    move-result v0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/anythink/network/facebook/FacebookATAdapter;

    invoke-direct {v0}, Lcom/anythink/network/facebook/FacebookATAdapter;-><init>()V

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->thirdPartyLoad(Lcom/anythink/core/api/ATBaseAdAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string p3, "size"

    .line 1063
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->b:Ljava/lang/String;

    :cond_1
    const-string p3, "payload"

    .line 1067
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1068
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->c:Ljava/lang/String;

    .line 1069
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->d:Ljava/util/Map;

    .line 1070
    invoke-static {}, Lcom/anythink/network/facebook/FacebookATInitManager;->getInstance()Lcom/anythink/network/facebook/FacebookATInitManager;

    iget-object p3, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->c:Ljava/lang/String;

    invoke-static {p3}, Lcom/anythink/network/facebook/FacebookATInitManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "encrypted_cpm"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    :cond_2
    new-instance p2, Lcom/anythink/network/facebook/FacebookATBannerAdapter$1;

    invoke-direct {p2, p0}, Lcom/anythink/network/facebook/FacebookATBannerAdapter$1;-><init>(Lcom/anythink/network/facebook/FacebookATBannerAdapter;)V

    .line 1107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 1110
    iget-object p3, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->b:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "320x90"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "320x50"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "320x250"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "300x250"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1122
    new-instance p3, Lcom/facebook/ads/AdView;

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->e:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    invoke-direct {p3, p1, v0, v1}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    goto :goto_1

    .line 1115
    :pswitch_0
    new-instance p3, Lcom/facebook/ads/AdView;

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->e:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    invoke-direct {p3, p1, v0, v1}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    goto :goto_1

    .line 1112
    :pswitch_1
    new-instance p3, Lcom/facebook/ads/AdView;

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->e:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    invoke-direct {p3, p1, v0, v1}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    goto :goto_1

    .line 1119
    :pswitch_2
    new-instance p3, Lcom/facebook/ads/AdView;

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->e:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    invoke-direct {p3, p1, v0, v1}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    .line 1125
    :goto_1
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1126
    invoke-virtual {p3}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    return-void

    .line 1128
    :cond_7
    invoke-virtual {p3}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    return-void

    .line 48
    :cond_8
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_9

    .line 49
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string p2, ""

    const-string p3, "facebook unitid is empty."

    invoke-interface {p1, p2, p3}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x215ddd38 -> :sswitch_3
        -0x1df42bfa -> :sswitch_2
        0x59df59c2 -> :sswitch_1
        0x59df5a3e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
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
