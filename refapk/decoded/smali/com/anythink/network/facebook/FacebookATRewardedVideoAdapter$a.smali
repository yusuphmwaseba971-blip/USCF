.class final Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

.field private b:Lcom/facebook/ads/RewardedVideoAd;

.field private c:Lcom/facebook/ads/RewardedInterstitialAd;


# direct methods
.method private constructor <init>(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;B)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;-><init>(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .line 215
    new-instance v0, Lcom/facebook/ads/RewardedInterstitialAd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    iget-object v1, v1, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/RewardedInterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->c:Lcom/facebook/ads/RewardedInterstitialAd;

    .line 216
    new-instance p1, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;

    invoke-direct {p1, p0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;-><init>(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;)V

    .line 263
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->c:Lcom/facebook/ads/RewardedInterstitialAd;

    .line 264
    invoke-virtual {v0}, Lcom/facebook/ads/RewardedInterstitialAd;->buildLoadAdConfig()Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;

    move-result-object v0

    .line 265
    invoke-interface {v0, p1}, Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/RewardedInterstitialAdListener;)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;

    move-result-object p1

    const/4 v0, 0x1

    .line 266
    invoke-interface {p1, v0}, Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;->withFailOnCacheFailureEnabled(Z)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;

    move-result-object p1

    .line 267
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->q(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->r(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{network_placement_id}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->s(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    iget-object v3, v3, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->a(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    :cond_0
    new-instance v0, Lcom/facebook/ads/RewardData;

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v1}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->t(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v2}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->u(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/RewardData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;->withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;

    .line 273
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    iget-object v0, v0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    iget-object v0, v0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->c:Lcom/facebook/ads/RewardedInterstitialAd;

    invoke-interface {p1}, Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;->build()Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialLoadAdConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/ads/RewardedInterstitialAd;->loadAd(Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialLoadAdConfig;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .line 281
    new-instance v0, Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    iget-object v1, v1, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/RewardedVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->b:Lcom/facebook/ads/RewardedVideoAd;

    .line 282
    new-instance p1, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$2;

    invoke-direct {p1, p0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$2;-><init>(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;)V

    .line 353
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->b:Lcom/facebook/ads/RewardedVideoAd;

    .line 354
    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    .line 355
    invoke-interface {v0, p1}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object p1

    const/4 v0, 0x1

    .line 356
    invoke-interface {p1, v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withFailOnCacheFailureEnabled(Z)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object p1

    .line 358
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->J(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->K(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{network_placement_id}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->L(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    iget-object v3, v3, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->b(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    :cond_0
    new-instance v0, Lcom/facebook/ads/RewardData;

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v1}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->M(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v2}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->N(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/RewardData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    .line 364
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    iget-object v0, v0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    iget-object v0, v0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->b:Lcom/facebook/ads/RewardedVideoAd;

    invoke-interface {p1}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/ads/RewardedVideoAd;->loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->b:Lcom/facebook/ads/RewardedVideoAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->destroy()V

    .line 206
    iput-object v1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->b:Lcom/facebook/ads/RewardedVideoAd;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->c:Lcom/facebook/ads/RewardedInterstitialAd;

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0}, Lcom/facebook/ads/RewardedInterstitialAd;->destroy()V

    .line 210
    iput-object v1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->c:Lcom/facebook/ads/RewardedInterstitialAd;

    :cond_1
    return-void
.end method

.method public final isAdInvalidated()Z
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->b(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->b:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->isAdInvalidated()Z

    move-result v0

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->b(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->c:Lcom/facebook/ads/RewardedInterstitialAd;

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0}, Lcom/facebook/ads/RewardedInterstitialAd;->isAdInvalidated()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isAdLoaded()Z
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->b(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->b:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->isAdLoaded()Z

    move-result v0

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->b(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->c:Lcom/facebook/ads/RewardedInterstitialAd;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Lcom/facebook/ads/RewardedInterstitialAd;->isAdLoaded()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final loadAd(Landroid/content/Context;)V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->b(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "{network_placement_id}"

    if-ne v0, v1, :cond_2

    .line 1281
    new-instance v0, Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    iget-object v3, v3, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v3}, Lcom/facebook/ads/RewardedVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->b:Lcom/facebook/ads/RewardedVideoAd;

    .line 1282
    new-instance p1, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$2;

    invoke-direct {p1, p0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$2;-><init>(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;)V

    .line 1353
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->b:Lcom/facebook/ads/RewardedVideoAd;

    .line 1354
    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    .line 1355
    invoke-interface {v0, p1}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object p1

    .line 1356
    invoke-interface {p1, v1}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withFailOnCacheFailureEnabled(Z)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object p1

    .line 1358
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->J(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->K(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->L(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    iget-object v3, v3, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->b(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 1362
    :cond_0
    new-instance v0, Lcom/facebook/ads/RewardData;

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v1}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->M(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v2}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->N(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/RewardData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    .line 1364
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    iget-object v0, v0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1365
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    iget-object v0, v0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    .line 1367
    :cond_1
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->b:Lcom/facebook/ads/RewardedVideoAd;

    invoke-interface {p1}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/ads/RewardedVideoAd;->loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V

    return-void

    .line 2215
    :cond_2
    new-instance v0, Lcom/facebook/ads/RewardedInterstitialAd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    iget-object v3, v3, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v3}, Lcom/facebook/ads/RewardedInterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->c:Lcom/facebook/ads/RewardedInterstitialAd;

    .line 2216
    new-instance p1, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;

    invoke-direct {p1, p0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a$1;-><init>(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;)V

    .line 2263
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->c:Lcom/facebook/ads/RewardedInterstitialAd;

    .line 2264
    invoke-virtual {v0}, Lcom/facebook/ads/RewardedInterstitialAd;->buildLoadAdConfig()Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;

    move-result-object v0

    .line 2265
    invoke-interface {v0, p1}, Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/RewardedInterstitialAdListener;)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;

    move-result-object p1

    .line 2266
    invoke-interface {p1, v1}, Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;->withFailOnCacheFailureEnabled(Z)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;

    move-result-object p1

    .line 2267
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->q(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->r(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2268
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->s(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    iget-object v3, v3, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->a(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 2271
    :cond_3
    new-instance v0, Lcom/facebook/ads/RewardData;

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v1}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->t(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v2}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->u(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/RewardData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;->withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;

    .line 2273
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    iget-object v0, v0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2274
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    iget-object v0, v0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;

    .line 2277
    :cond_4
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->c:Lcom/facebook/ads/RewardedInterstitialAd;

    invoke-interface {p1}, Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialAdLoadConfigBuilder;->build()Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialLoadAdConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/ads/RewardedInterstitialAd;->loadAd(Lcom/facebook/ads/RewardedInterstitialAd$RewardedInterstitialLoadAdConfig;)V

    return-void
.end method

.method public final show()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->b(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->b:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->show()Z

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->a:Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;->b(Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATRewardedVideoAdapter$a;->c:Lcom/facebook/ads/RewardedInterstitialAd;

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v0}, Lcom/facebook/ads/RewardedInterstitialAd;->show()Z

    :cond_1
    return-void
.end method
