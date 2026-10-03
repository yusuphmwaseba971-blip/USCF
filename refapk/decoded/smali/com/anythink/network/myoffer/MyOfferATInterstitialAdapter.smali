.class public Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;
.super Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;


# instance fields
.field a:Lcom/anythink/core/common/f/m;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/anythink/basead/f/d;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;-><init>()V

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/basead/f/d;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d:Lcom/anythink/basead/f/d;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .line 81
    new-instance v0, Lcom/anythink/basead/f/d;

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a:Lcom/anythink/core/common/f/m;

    iget-object v2, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->e:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/anythink/basead/f/d;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d:Lcom/anythink/basead/f/d;

    return-void
.end method

.method static synthetic b(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic o(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic p(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic q(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d:Lcom/anythink/basead/f/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 199
    invoke-virtual {v0, v1}, Lcom/anythink/basead/f/d;->a(Lcom/anythink/basead/e/j;)V

    .line 200
    iput-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d:Lcom/anythink/basead/f/d;

    :cond_0
    return-void
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

    .line 216
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->b:Ljava/util/Map;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    const-string v0, "MyOffer"

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    .line 193
    invoke-static {}, Lcom/anythink/core/common/o/h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Z
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
            ">;)Z"
        }
    .end annotation

    const-string p3, "my_oid"

    .line 92
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c:Ljava/lang/String;

    :cond_0
    const-string p3, "basead_params"

    .line 95
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/core/common/f/m;

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a:Lcom/anythink/core/common/f/m;

    :cond_1
    const-string p3, "isDefaultOffer"

    .line 98
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->e:Z

    .line 103
    :cond_2
    invoke-direct {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method public isAdReady()Z
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d:Lcom/anythink/basead/f/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/f/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 184
    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->b:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d:Lcom/anythink/basead/f/d;

    invoke-static {v1}, Lcom/anythink/basead/b;->a(Lcom/anythink/basead/f/c;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->b:Ljava/util/Map;

    :cond_1
    return v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
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
            ">;)V"
        }
    .end annotation

    const-string p3, "my_oid"

    .line 48
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c:Ljava/lang/String;

    :cond_0
    const-string p3, "basead_params"

    .line 51
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/f/m;

    iput-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a:Lcom/anythink/core/common/f/m;

    .line 55
    :cond_1
    invoke-direct {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a(Landroid/content/Context;)V

    .line 57
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d:Lcom/anythink/basead/f/d;

    new-instance p2, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;

    invoke-direct {p2, p0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;-><init>(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/f/d;->a(Lcom/anythink/basead/e/c;)V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 4

    .line 109
    invoke-virtual {p0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 112
    invoke-static {p1}, Lcom/anythink/core/common/o/e;->g(Landroid/content/Context;)I

    move-result v1

    .line 113
    iget-object v2, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    const-string v3, "extra_request_id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v2, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->mScenario:Ljava/lang/String;

    const-string v3, "extra_scenario"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "extra_orientation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d:Lcom/anythink/basead/f/d;

    new-instance v2, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;

    invoke-direct {v2, p0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;-><init>(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)V

    invoke-virtual {v1, v2}, Lcom/anythink/basead/f/d;->a(Lcom/anythink/basead/e/j;)V

    .line 176
    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d:Lcom/anythink/basead/f/d;

    invoke-virtual {v1, p1, v0}, Lcom/anythink/basead/f/d;->a(Landroid/app/Activity;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
