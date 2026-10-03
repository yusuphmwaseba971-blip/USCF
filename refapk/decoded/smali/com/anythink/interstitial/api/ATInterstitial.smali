.class public Lcom/anythink/interstitial/api/ATInterstitial;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "ATInterstitial"


# instance fields
.field adLoadListener:Lcom/anythink/core/common/b/a;

.field mActivityWef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field mAdLoadManager:Lcom/anythink/interstitial/a/a;

.field mAdSourceEventListener:Lcom/anythink/core/common/b/b;

.field public mContext:Landroid/content/Context;

.field mDeveloperStatusListener:Lcom/anythink/core/api/ATAdSourceStatusListener;

.field mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

.field private mInterListener:Lcom/anythink/interstitial/api/ATInterstitialExListener;

.field public mInterstitialListener:Lcom/anythink/interstitial/api/ATInterstitialListener;

.field public mPlacementId:Ljava/lang/String;

.field mTKExtraMap:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/anythink/interstitial/api/ATInterstitial$1;

    invoke-direct {v0, p0}, Lcom/anythink/interstitial/api/ATInterstitial$1;-><init>(Lcom/anythink/interstitial/api/ATInterstitial;)V

    iput-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mInterListener:Lcom/anythink/interstitial/api/ATInterstitialExListener;

    .line 159
    new-instance v0, Lcom/anythink/interstitial/api/ATInterstitial$2;

    invoke-direct {v0, p0}, Lcom/anythink/interstitial/api/ATInterstitial$2;-><init>(Lcom/anythink/interstitial/api/ATInterstitial;)V

    iput-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->adLoadListener:Lcom/anythink/core/common/b/a;

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mContext:Landroid/content/Context;

    .line 187
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/ref/WeakReference;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mActivityWef:Ljava/lang/ref/WeakReference;

    .line 190
    :cond_0
    iput-object p2, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mPlacementId:Ljava/lang/String;

    .line 191
    invoke-static {p1, p2}, Lcom/anythink/interstitial/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/interstitial/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    return-void
.end method

.method private controlShow(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    .line 293
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/h$m;->p:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$m;->y:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/h$m;->n:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/common/o/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 295
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 296
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 304
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 305
    move-object p1, v0

    check-cast p1, Landroid/app/Activity;

    :cond_1
    move-object v1, p1

    if-nez v1, :cond_2

    .line 309
    sget-object p1, Lcom/anythink/interstitial/api/ATInterstitial;->TAG:Ljava/lang/String;

    const-string v0, "Interstitial Show Activity is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    iget-object v3, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mInterListener:Lcom/anythink/interstitial/api/ATInterstitialExListener;

    iget-object v4, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    iget-object v5, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mTKExtraMap:Ljava/util/Map;

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/interstitial/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/interstitial/api/ATInterstitialListener;Lcom/anythink/core/api/ATEventInterface;Ljava/util/Map;)V

    return-void

    .line 297
    :cond_3
    :goto_0
    sget-object p1, Lcom/anythink/interstitial/api/ATInterstitial;->TAG:Ljava/lang/String;

    const-string p2, "Show error: SDK init error!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static entryAdScenario(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 245
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "3"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/anythink/core/common/b/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static entryAdScenario(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 249
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/anythink/core/common/b/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private getAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;
    .locals 3

    .line 262
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 263
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mTKExtraMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/interstitial/a/a;->a(Landroid/content/Context;Ljava/util/Map;)Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    return-object v0

    .line 265
    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/interstitial/api/ATInterstitial;->TAG:Ljava/lang/String;

    const-string v1, "SDK init error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private getRequestContext()Landroid/content/Context;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mActivityWef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private load(Landroid/content/Context;I)V
    .locals 12

    .line 216
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/h$m;->p:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$m;->w:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/h$m;->n:Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/common/o/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 217
    iget-object v6, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    iget-object v9, p0, Lcom/anythink/interstitial/api/ATInterstitial;->adLoadListener:Lcom/anythink/core/common/b/a;

    iget-object v10, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

    iget-object v11, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mTKExtraMap:Ljava/util/Map;

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v6 .. v11}, Lcom/anythink/interstitial/a/a;->a(Landroid/content/Context;ILcom/anythink/core/common/b/a;Lcom/anythink/core/common/b/b;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public checkAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;
    .locals 6

    .line 253
    invoke-direct {p0}, Lcom/anythink/interstitial/api/ATInterstitial;->getAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/anythink/core/api/ATAdStatusInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/anythink/core/api/ATAdStatusInfo;-><init>(ZZLcom/anythink/core/api/ATAdInfo;)V

    return-object v0

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mPlacementId:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$m;->p:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/h$m;->A:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdStatusInfo;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lcom/anythink/core/common/o/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public checkValidAdCaches()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/api/ATAdInfo;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    if-eqz v0, :cond_0

    .line 274
    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/a/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAdReady()Z
    .locals 6

    .line 235
    invoke-direct {p0}, Lcom/anythink/interstitial/api/ATInterstitial;->getAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 239
    :cond_0
    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdStatusInfo;->isReady()Z

    move-result v0

    .line 240
    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mPlacementId:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$m;->p:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/h$m;->z:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lcom/anythink/core/common/o/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public load()V
    .locals 2

    .line 208
    invoke-direct {p0}, Lcom/anythink/interstitial/api/ATInterstitial;->getRequestContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/anythink/interstitial/api/ATInterstitial;->load(Landroid/content/Context;I)V

    return-void
.end method

.method public load(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/anythink/interstitial/api/ATInterstitial;->getRequestContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anythink/interstitial/api/ATInterstitial;->load(Landroid/content/Context;I)V

    return-void
.end method

.method public setAdDownloadListener(Lcom/anythink/core/api/ATEventInterface;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    return-void
.end method

.method public setAdListener(Lcom/anythink/interstitial/api/ATInterstitialListener;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mInterstitialListener:Lcom/anythink/interstitial/api/ATInterstitialListener;

    return-void
.end method

.method public setAdSourceStatusListener(Lcom/anythink/core/api/ATAdSourceStatusListener;)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Lcom/anythink/core/common/b/b;

    invoke-direct {v0}, Lcom/anythink/core/common/b/b;-><init>()V

    iput-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

    .line 350
    :cond_0
    iput-object p1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mDeveloperStatusListener:Lcom/anythink/core/api/ATAdSourceStatusListener;

    .line 351
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/b/b;->a(Lcom/anythink/core/api/ATAdSourceStatusListener;)V

    return-void
.end method

.method public setLocalExtra(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 204
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setTKExtra(Ljava/util/Map;)V
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

    .line 326
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mTKExtraMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mTKExtraMap:Ljava/util/Map;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mTKExtraMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 330
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mTKExtraMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 1

    const-string v0, ""

    .line 288
    invoke-direct {p0, p1, v0}, Lcom/anythink/interstitial/api/ATInterstitial;->controlShow(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 281
    invoke-static {p2}, Lcom/anythink/core/common/o/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 284
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/anythink/interstitial/api/ATInterstitial;->controlShow(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
