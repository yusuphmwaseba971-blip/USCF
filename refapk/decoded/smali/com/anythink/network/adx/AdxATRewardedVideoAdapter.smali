.class public Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;
.super Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;


# instance fields
.field a:Lcom/anythink/core/common/f/m;

.field b:Lcom/anythink/basead/d/f;

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
    invoke-direct {p0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

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

    const-string v0, "v_m"

    .line 151
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "s_c_t"

    .line 158
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    const-string v2, "basead_params"

    .line 165
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/f/m;

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->a:Lcom/anythink/core/common/f/m;

    .line 166
    new-instance p2, Lcom/anythink/basead/d/f;

    sget-object v2, Lcom/anythink/basead/d/b$b;->a:Lcom/anythink/basead/d/b$b;

    iget-object v3, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->a:Lcom/anythink/core/common/f/m;

    invoke-direct {p2, p1, v2, v3}, Lcom/anythink/basead/d/f;-><init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;)V

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b:Lcom/anythink/basead/d/f;

    .line 167
    new-instance p1, Lcom/anythink/basead/d/c$a;

    invoke-direct {p1}, Lcom/anythink/basead/d/c$a;-><init>()V

    .line 168
    invoke-virtual {p1, v0}, Lcom/anythink/basead/d/c$a;->a(I)Lcom/anythink/basead/d/c$a;

    move-result-object p1

    .line 169
    invoke-virtual {p1, v1}, Lcom/anythink/basead/d/c$a;->b(I)Lcom/anythink/basead/d/c$a;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Lcom/anythink/basead/d/c$a;->a()Lcom/anythink/basead/d/c;

    move-result-object p1

    .line 167
    invoke-virtual {p2, p1}, Lcom/anythink/basead/d/f;->a(Lcom/anythink/basead/d/c;)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mImpressionListener:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    return-object p0
.end method

.method static synthetic o(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic p(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic q(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic r(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic s(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic t(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b:Lcom/anythink/basead/d/f;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/anythink/basead/d/f;->b()V

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b:Lcom/anythink/basead/d/f;

    :cond_0
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

    .line 214
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/f/m;

    .line 215
    new-instance p3, Lcom/anythink/network/adx/AdxBidRequestInfo;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-direct {p3, p1, p2}, Lcom/anythink/network/adx/AdxBidRequestInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p3}, Lcom/anythink/network/adx/AdxBidRequestInfo;->fillAdAcceptType()V

    if-eqz p4, :cond_0

    .line 218
    invoke-interface {p4, p3}, Lcom/anythink/core/api/ATBidRequestInfoListener;->onSuccess(Lcom/anythink/core/api/ATBidRequestInfo;)V

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

    .line 209
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 195
    invoke-static {}, Lcom/anythink/network/adx/AdxATInitManager;->getInstance()Lcom/anythink/network/adx/AdxATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/adx/AdxATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->a:Lcom/anythink/core/common/f/m;

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

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 141
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b:Lcom/anythink/basead/d/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/basead/d/f;->c()Z

    move-result p1

    if-nez p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b:Lcom/anythink/basead/d/f;

    invoke-virtual {p1}, Lcom/anythink/basead/d/f;->d()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isAdReady()Z
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b:Lcom/anythink/basead/d/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/d/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 201
    iget-object v1, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->c:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b:Lcom/anythink/basead/d/f;

    invoke-static {v1}, Lcom/anythink/basead/b;->a(Lcom/anythink/basead/d/b;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->c:Ljava/util/Map;

    :cond_1
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

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 113
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b:Lcom/anythink/basead/d/f;

    new-instance p2, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$2;

    invoke-direct {p2, p0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$2;-><init>(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/d/f;->a(Lcom/anythink/basead/e/c;)V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 5

    .line 40
    invoke-static {p1}, Lcom/anythink/core/common/o/e;->g(Landroid/content/Context;)I

    move-result v0

    .line 41
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 42
    iget-object v2, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->mScenario:Ljava/lang/String;

    const-string v3, "extra_scenario"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "extra_orientation"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b:Lcom/anythink/basead/d/f;

    new-instance v2, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;

    invoke-virtual {v0}, Lcom/anythink/basead/d/f;->f()Lcom/anythink/core/common/f/l;

    move-result-object v3

    invoke-virtual {p0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;-><init>(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/h;)V

    invoke-virtual {v0, v2}, Lcom/anythink/basead/d/f;->a(Lcom/anythink/basead/e/a;)V

    .line 103
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b:Lcom/anythink/basead/d/f;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1, v1}, Lcom/anythink/basead/d/f;->a(Landroid/app/Activity;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
