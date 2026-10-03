.class public Lcom/anythink/network/adx/AdxATSplashAdapter;
.super Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;


# instance fields
.field a:Lcom/anythink/basead/d/g;

.field b:Lcom/anythink/core/common/f/m;

.field c:Ljava/util/Map;
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

    .line 32
    invoke-direct {p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 5
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

    const-string v0, "orientation"

    .line 158
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 159
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "countdown"

    .line 165
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    goto :goto_1

    :cond_1
    const/4 v1, 0x5

    :goto_1
    const-string v3, "allows_skip"

    .line 172
    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 173
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 175
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    if-ne v3, v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    const-string v3, "basead_params"

    .line 185
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/f/m;

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->b:Lcom/anythink/core/common/f/m;

    .line 186
    new-instance p2, Lcom/anythink/basead/d/g;

    sget-object v3, Lcom/anythink/basead/d/b$b;->a:Lcom/anythink/basead/d/b$b;

    iget-object v4, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->b:Lcom/anythink/core/common/f/m;

    invoke-direct {p2, p1, v3, v4}, Lcom/anythink/basead/d/g;-><init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;)V

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/d/g;

    .line 187
    new-instance p1, Lcom/anythink/basead/d/c$a;

    invoke-direct {p1}, Lcom/anythink/basead/d/c$a;-><init>()V

    .line 188
    invoke-virtual {p1, v0}, Lcom/anythink/basead/d/c$a;->d(I)Lcom/anythink/basead/d/c$a;

    move-result-object p1

    .line 189
    invoke-virtual {p1, v1}, Lcom/anythink/basead/d/c$a;->e(I)Lcom/anythink/basead/d/c$a;

    move-result-object p1

    .line 190
    invoke-virtual {p1, v2}, Lcom/anythink/basead/d/c$a;->f(I)Lcom/anythink/basead/d/c$a;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Lcom/anythink/basead/d/c$a;->a()Lcom/anythink/basead/d/c;

    move-result-object p1

    .line 187
    invoke-virtual {p2, p1}, Lcom/anythink/basead/d/g;->a(Lcom/anythink/basead/d/c;)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic o(Lcom/anythink/network/adx/AdxATSplashAdapter;)I
    .locals 1

    const/16 v0, 0x63

    .line 32
    iput v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mDismissType:I

    return v0
.end method

.method static synthetic p(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic q(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method

.method static synthetic r(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/d/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/anythink/basead/d/g;->b()V

    .line 137
    iput-object v1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/d/g;

    .line 140
    :cond_0
    iput-object v1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->b:Lcom/anythink/core/common/f/m;

    return-void
.end method

.method public getBidRequestInfo(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBidRequestInfoListener;)V
    .locals 0
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

    const-string p3, "basead_params"

    .line 224
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/f/m;

    .line 225
    new-instance p3, Lcom/anythink/network/adx/AdxBidRequestInfo;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-direct {p3, p1, p2}, Lcom/anythink/network/adx/AdxBidRequestInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p3}, Lcom/anythink/network/adx/AdxBidRequestInfo;->fillSplashData()V

    if-eqz p4, :cond_1

    .line 229
    invoke-interface {p4, p3}, Lcom/anythink/core/api/ATBidRequestInfoListener;->onSuccess(Lcom/anythink/core/api/ATBidRequestInfo;)V

    :cond_1
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

    .line 214
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 198
    invoke-static {}, Lcom/anythink/network/adx/AdxATInitManager;->getInstance()Lcom/anythink/network/adx/AdxATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/adx/AdxATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->b:Lcom/anythink/core/common/f/m;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public initNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 0
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

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/adx/AdxATSplashAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 146
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/d/g;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/basead/d/g;->c()Z

    move-result p1

    if-nez p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/d/g;

    invoke-virtual {p1}, Lcom/anythink/basead/d/g;->d()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isAdReady()Z
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/d/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/d/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 71
    iget-object v1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->c:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/d/g;

    invoke-static {v1}, Lcom/anythink/basead/b;->a(Lcom/anythink/basead/d/b;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->c:Ljava/util/Map;

    :cond_1
    return v0
.end method

.method public isSupportCustomSkipView()Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/d/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/d/g;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
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

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/adx/AdxATSplashAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 43
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/d/g;

    new-instance p2, Lcom/anythink/network/adx/AdxATSplashAdapter$1;

    invoke-direct {p2, p0}, Lcom/anythink/network/adx/AdxATSplashAdapter$1;-><init>(Lcom/anythink/network/adx/AdxATSplashAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/d/g;->a(Lcom/anythink/basead/e/c;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 3

    .line 80
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/d/g;

    if-eqz p1, :cond_1

    .line 82
    new-instance v0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;

    invoke-virtual {p1}, Lcom/anythink/basead/d/g;->f()Lcom/anythink/core/common/f/l;

    move-result-object v1

    invoke-virtual {p0}, Lcom/anythink/network/adx/AdxATSplashAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/anythink/network/adx/AdxATSplashAdapter$2;-><init>(Lcom/anythink/network/adx/AdxATSplashAdapter;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/h;)V

    invoke-virtual {p1, v0}, Lcom/anythink/basead/d/g;->a(Lcom/anythink/basead/e/a;)V

    .line 124
    invoke-virtual {p0}, Lcom/anythink/network/adx/AdxATSplashAdapter;->isCustomSkipView()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/d/g;

    invoke-virtual {p1}, Lcom/anythink/basead/d/g;->a()V

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter;->a:Lcom/anythink/basead/d/g;

    invoke-virtual {p1, p2}, Lcom/anythink/basead/d/g;->a(Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method
