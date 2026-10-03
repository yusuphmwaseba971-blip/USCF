.class public Lcom/anythink/network/facebook/FacebookATInitManager;
.super Lcom/anythink/core/api/ATInitMediation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/network/facebook/FacebookATInitManager$InitListener;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "FacebookATInitManager"

.field private static volatile c:Lcom/anythink/network/facebook/FacebookATInitManager;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/api/MediationInitCallback;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/anythink/core/api/ATInitMediation;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/anythink/network/facebook/FacebookATInitManager;->d:Z

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookATInitManager;->e:Ljava/lang/Object;

    return-void
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 158
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "encrypted_cpm"

    .line 159
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method static synthetic a(Lcom/anythink/network/facebook/FacebookATInitManager;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 4

    .line 1115
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATInitManager;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 1116
    :try_start_0
    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATInitManager;->a:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1117
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/api/MediationInitCallback;

    .line 1118
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    .line 1120
    invoke-interface {v2}, Lcom/anythink/core/api/MediationInitCallback;->onSuccess()V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    .line 1124
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/anythink/core/api/MediationInitCallback;->onFail(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1129
    iput-boolean p1, p0, Lcom/anythink/network/facebook/FacebookATInitManager;->d:Z

    .line 1130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookATInitManager;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATInitManager;->a:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 117
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/api/MediationInitCallback;

    .line 118
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    .line 120
    invoke-interface {v2}, Lcom/anythink/core/api/MediationInitCallback;->onSuccess()V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    .line 124
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/anythink/core/api/MediationInitCallback;->onFail(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/anythink/network/facebook/FacebookATInitManager;->d:Z

    .line 130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public static getInstance()Lcom/anythink/network/facebook/FacebookATInitManager;
    .locals 2

    .line 41
    sget-object v0, Lcom/anythink/network/facebook/FacebookATInitManager;->c:Lcom/anythink/network/facebook/FacebookATInitManager;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/anythink/network/facebook/FacebookATInitManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/anythink/network/facebook/FacebookATInitManager;->c:Lcom/anythink/network/facebook/FacebookATInitManager;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/anythink/network/facebook/FacebookATInitManager;

    invoke-direct {v1}, Lcom/anythink/network/facebook/FacebookATInitManager;-><init>()V

    sput-object v1, Lcom/anythink/network/facebook/FacebookATInitManager;->c:Lcom/anythink/network/facebook/FacebookATInitManager;

    .line 45
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/network/facebook/FacebookATInitManager;->c:Lcom/anythink/network/facebook/FacebookATInitManager;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/content/Context;Ljava/util/Map;ZLcom/anythink/core/api/ATBidRequestInfoListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/anythink/core/api/ATBidRequestInfoListener;",
            ")V"
        }
    .end annotation

    .line 173
    new-instance v6, Lcom/anythink/network/facebook/FacebookATInitManager$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/anythink/network/facebook/FacebookATInitManager$2;-><init>(Lcom/anythink/network/facebook/FacebookATInitManager;Landroid/content/Context;Ljava/util/Map;ZLcom/anythink/core/api/ATBidRequestInfoListener;)V

    invoke-virtual {p0, v6}, Lcom/anythink/network/facebook/FacebookATInitManager;->runOnThreadPool(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "UA_6.2.66"

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    const-string v0, "Facebook"

    return-object v0
.end method

.method public getNetworkSDKClass()Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.ads.AudienceNetworkAds"

    return-object v0
.end method

.method public getNetworkVersion()Ljava/lang/String;
    .locals 1

    .line 148
    invoke-static {}, Lcom/anythink/network/facebook/FacebookATConst;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, p1, p2, v0}, Lcom/anythink/network/facebook/FacebookATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V

    return-void
.end method

.method public declared-synchronized initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/MediationInitCallback;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "app_ccpa_switch"

    .line 58
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LDU"

    .line 60
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/AdSettings;->setDataProcessingOptions([Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    :try_start_1
    const-string v1, "app_coppa_switch"

    .line 67
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 69
    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->setMixedAudience(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    :catchall_1
    :cond_1
    :try_start_2
    iget-object p2, p0, Lcom/anythink/network/facebook/FacebookATInitManager;->e:Ljava/lang/Object;

    monitor-enter p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 77
    :try_start_3
    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->isInitialized(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p3, :cond_2

    .line 79
    invoke-interface {p3}, Lcom/anythink/core/api/MediationInitCallback;->onSuccess()V

    .line 81
    :cond_2
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-void

    .line 85
    :cond_3
    :try_start_4
    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATInitManager;->a:Ljava/util/List;

    if-nez v1, :cond_4

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/anythink/network/facebook/FacebookATInitManager;->a:Ljava/util/List;

    :cond_4
    if-eqz p3, :cond_5

    .line 90
    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookATInitManager;->a:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_5
    iget-boolean p3, p0, Lcom/anythink/network/facebook/FacebookATInitManager;->d:Z

    if-eqz p3, :cond_6

    .line 94
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    .line 97
    :cond_6
    :try_start_5
    iput-boolean v0, p0, Lcom/anythink/network/facebook/FacebookATInitManager;->d:Z

    .line 98
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 101
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->buildInitSettings(Landroid/content/Context;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p1

    new-instance p2, Lcom/anythink/network/facebook/FacebookATInitManager$1;

    invoke-direct {p2, p0}, Lcom/anythink/network/facebook/FacebookATInitManager$1;-><init>(Lcom/anythink/network/facebook/FacebookATInitManager;)V

    .line 102
    invoke-interface {p1, p2}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withInitListener(Lcom/facebook/ads/AudienceNetworkAds$InitListener;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p1

    .line 108
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->initialize()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 111
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    .line 98
    :try_start_7
    monitor-exit p2

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 112
    :catchall_3
    monitor-exit p0

    return-void
.end method
