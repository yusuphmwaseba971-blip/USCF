.class public abstract Lcom/anythink/core/api/ATBaseAdAdapter;
.super Lcom/anythink/core/common/b/d;


# instance fields
.field public mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

.field protected mDismissType:I

.field protected mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

.field protected mFetchAdTimeout:I

.field protected mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

.field protected mMixedFormatAdType:I

.field protected mRequestNum:I

.field protected mScenario:Ljava/lang/String;

.field protected mThirdPartyAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

.field protected mUserData:Ljava/lang/String;

.field protected mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/anythink/core/common/b/d;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mUserId:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mUserData:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mScenario:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mDismissType:I

    const/16 v0, 0x2710

    .line 38
    iput v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mFetchAdTimeout:I

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mRequestNum:I

    const/4 v0, -0x1

    .line 266
    iput v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mMixedFormatAdType:I

    return-void
.end method

.method private cleanLoadListener()V
    .locals 1

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 133
    iput-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-void
.end method

.method private fillParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->S()Lcom/anythink/core/common/f/h;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/anythink/core/common/o/h;->a(Ljava/util/Map;Lcom/anythink/core/common/f/h;)V

    :cond_0
    return-void
.end method

.method private parseGloableParams(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    if-eqz p2, :cond_2

    const-string v0, "user_id"

    .line 153
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mUserId:Ljava/lang/String;

    const-string v0, "user_custom_data"

    .line 154
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iput-object v2, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mUserData:Ljava/lang/String;

    :cond_2
    if-eqz p1, :cond_3

    const-string p2, "ad_type"

    .line 158
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mMixedFormatAdType:I

    :cond_3
    return-void
.end method


# virtual methods
.method public abstract destory()V
.end method

.method public getBaseAdObject(Landroid/content/Context;)Lcom/anythink/core/api/BaseAd;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBidManager()Lcom/anythink/core/api/MediationBidManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
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

    if-eqz p4, :cond_0

    const-string p1, "This network don\'t support header bidding in current TopOn\'s version."

    .line 227
    invoke-interface {p4, p1}, Lcom/anythink/core/api/ATBidRequestInfoListener;->onFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getDismissType()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mDismissType:I

    return v0
.end method

.method public getILRD()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getInternalNetworkName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mThirdPartyAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInternalNetworkPlacementId()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mThirdPartyAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkPlacementId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkPlacementId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInternalNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mThirdPartyAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediationInitManager()Lcom/anythink/core/api/ATInitMediation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMixedFormatAdType()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mMixedFormatAdType:I

    return v0
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNetworkName()Ljava/lang/String;
.end method

.method public abstract getNetworkPlacementId()Ljava/lang/String;
.end method

.method public abstract getNetworkSDKVersion()Ljava/lang/String;
.end method

.method public final getUserCustomData()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mUserData:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mUserId:Ljava/lang/String;

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

    const/4 p1, 0x0

    return p1
.end method

.method public final internalDestory()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mThirdPartyAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->destory()V

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->destory()V

    return-void
.end method

.method public internalFormatShow(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/core/api/ATCommonImpressionListener;)V
    .locals 0

    return-void
.end method

.method public final internalInitNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Z
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

    .line 125
    invoke-direct {p0, p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->fillParams(Ljava/util/Map;)V

    .line 126
    invoke-direct {p0, p2, p3}, Lcom/anythink/core/api/ATBaseAdAdapter;->parseGloableParams(Ljava/util/Map;Ljava/util/Map;)V

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/core/api/ATBaseAdAdapter;->initNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public final internalIsAdReady()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mThirdPartyAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->isAdReady()Z

    move-result v0

    return v0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->isAdReady()Z

    move-result v0

    return v0
.end method

.method public final internalLoad(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATCustomLoadListener;)V
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
            "Lcom/anythink/core/api/ATCustomLoadListener;",
            ")V"
        }
    .end annotation

    .line 137
    iput-object p4, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 138
    invoke-direct {p0, p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->fillParams(Ljava/util/Map;)V

    .line 139
    invoke-direct {p0, p2, p3}, Lcom/anythink/core/api/ATBaseAdAdapter;->parseGloableParams(Ljava/util/Map;Ljava/util/Map;)V

    .line 141
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/core/api/ATBaseAdAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final internalSetUserDataConsent(Landroid/content/Context;ZZ)Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mThirdPartyAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/core/api/ATBaseAdAdapter;->setUserDataConsent(Landroid/content/Context;ZZ)Z

    move-result p1

    return p1

    .line 108
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/core/api/ATBaseAdAdapter;->setUserDataConsent(Landroid/content/Context;ZZ)Z

    move-result p1

    return p1
.end method

.method public final internalShow(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/core/api/ATCommonImpressionListener;)V
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->isMixFormatAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mThirdPartyAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalFormatShow(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/core/api/ATCommonImpressionListener;)V

    return-void

    .line 257
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalFormatShow(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/core/api/ATCommonImpressionListener;)V

    return-void
.end method

.method public final internalStartBiddingRequest(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)Z
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
            "Lcom/anythink/core/api/ATBiddingListener;",
            ")Z"
        }
    .end annotation

    .line 169
    invoke-direct {p0, p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->fillParams(Ljava/util/Map;)V

    .line 170
    invoke-direct {p0, p2, p3}, Lcom/anythink/core/api/ATBaseAdAdapter;->parseGloableParams(Ljava/util/Map;Ljava/util/Map;)V

    .line 171
    iput-object p4, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 172
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/anythink/core/api/ATBaseAdAdapter;->startBiddingRequest(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p2, 0x0

    .line 174
    iput-object p2, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    :cond_0
    return p1
.end method

.method public abstract isAdReady()Z
.end method

.method protected isMixFormatAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
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
.end method

.method public final notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    if-eqz v0, :cond_1

    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 237
    :goto_0
    iget-object v1, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    invoke-static {v0}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz v0, :cond_2

    .line 241
    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public releaseLoadResource()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->cleanLoadListener()V

    return-void
.end method

.method public setAdDownloadListener(Lcom/anythink/core/api/ATEventInterface;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    return-void
.end method

.method public final setFetchAdTimeout(I)V
    .locals 0

    .line 286
    iput p1, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mFetchAdTimeout:I

    return-void
.end method

.method public final setRequestNum(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 291
    iput p1, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mRequestNum:I

    :cond_0
    return-void
.end method

.method public final setScenario(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mScenario:Ljava/lang/String;

    return-void
.end method

.method public setUserDataConsent(Landroid/content/Context;ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public startBiddingRequest(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)Z
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
            "Lcom/anythink/core/api/ATBiddingListener;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public supportImpressionCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final thirdPartyLoad(Lcom/anythink/core/api/ATBaseAdAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/api/ATBaseAdAdapter;",
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

    .line 270
    iput-object p1, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mThirdPartyAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 271
    new-instance v0, Lcom/anythink/core/common/b/q;

    iget-object v1, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    iget v2, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mMixedFormatAdType:I

    invoke-direct {v0, v1, p3, v2}, Lcom/anythink/core/common/b/q;-><init>(Lcom/anythink/core/api/ATCustomLoadListener;Ljava/util/Map;I)V

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalLoad(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATCustomLoadListener;)V

    return-void
.end method

.method public final thirdPartyStartBiddingRequest(Lcom/anythink/core/api/ATBaseAdAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/api/ATBaseAdAdapter;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATBiddingListener;",
            ")Z"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mThirdPartyAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 276
    new-instance v0, Lcom/anythink/core/common/b/p;

    iget v1, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mMixedFormatAdType:I

    invoke-direct {v0, p5, p3, v1}, Lcom/anythink/core/common/b/p;-><init>(Lcom/anythink/core/api/ATBiddingListener;Ljava/util/Map;I)V

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalStartBiddingRequest(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)Z

    move-result p1

    return p1
.end method
