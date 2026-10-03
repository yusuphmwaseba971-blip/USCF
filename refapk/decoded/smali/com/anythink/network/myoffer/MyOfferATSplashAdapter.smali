.class public Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;
.super Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/anythink/basead/f/g;

.field c:Lcom/anythink/core/common/f/m;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 104
    new-instance v0, Lcom/anythink/basead/f/g;

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->c:Lcom/anythink/core/common/f/m;

    iget-object v2, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/anythink/basead/f/g;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->b:Lcom/anythink/basead/f/g;

    .line 105
    new-instance p1, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;

    invoke-direct {p1, p0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;-><init>(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)V

    invoke-virtual {v0, p1}, Lcom/anythink/basead/f/g;->a(Lcom/anythink/basead/e/a;)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->b:Lcom/anythink/basead/f/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/anythink/basead/f/g;->f()V

    .line 97
    iput-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->b:Lcom/anythink/basead/f/g;

    .line 100
    :cond_0
    iput-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->c:Lcom/anythink/core/common/f/m;

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

    .line 170
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->d:Ljava/util/Map;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    const-string v0, "MyOffer"

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    .line 160
    invoke-static {}, Lcom/anythink/core/common/o/h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReady()Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->b:Lcom/anythink/basead/f/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/f/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->d:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->b:Lcom/anythink/basead/f/g;

    invoke-static {v1}, Lcom/anythink/basead/b;->a(Lcom/anythink/basead/f/c;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->d:Ljava/util/Map;

    :cond_1
    return v0
.end method

.method public isSupportCustomSkipView()Z
    .locals 1

    const/4 v0, 0x1

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

    .line 40
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->a:Ljava/lang/String;

    :cond_0
    const-string p3, "basead_params"

    .line 44
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/f/m;

    iput-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->c:Lcom/anythink/core/common/f/m;

    .line 1104
    :cond_1
    new-instance p2, Lcom/anythink/basead/f/g;

    iget-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->c:Lcom/anythink/core/common/f/m;

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->a:Ljava/lang/String;

    invoke-direct {p2, p1, p3, v0}, Lcom/anythink/basead/f/g;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->b:Lcom/anythink/basead/f/g;

    .line 1105
    new-instance p1, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;

    invoke-direct {p1, p0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;-><init>(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)V

    invoke-virtual {p2, p1}, Lcom/anythink/basead/f/g;->a(Lcom/anythink/basead/e/a;)V

    .line 50
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->b:Lcom/anythink/basead/f/g;

    new-instance p2, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$1;

    invoke-direct {p2, p0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$1;-><init>(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/f/g;->a(Lcom/anythink/basead/e/c;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->b:Lcom/anythink/basead/f/g;

    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->isCustomSkipView()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->b:Lcom/anythink/basead/f/g;

    invoke-virtual {p1}, Lcom/anythink/basead/f/g;->b()V

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->b:Lcom/anythink/basead/f/g;

    invoke-virtual {p1, p2}, Lcom/anythink/basead/f/g;->a(Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method
