.class public Lcom/anythink/network/facebook/FacebookBidkitManager;
.super Lcom/anythink/core/api/MediationBidManager;


# static fields
.field private static volatile d:Lcom/anythink/network/facebook/FacebookBidkitManager;


# instance fields
.field a:Z

.field b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/network/facebook/FacebookBidkitAuction;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/network/facebook/FacebookBidkitAuction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/anythink/core/api/MediationBidManager;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/a;Lcom/anythink/core/api/MediationBidManager$BidListener;)V
    .locals 5

    .line 60
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/network/facebook/FacebookBidkitManager;->a:Z

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 63
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "timeout_ms"

    .line 65
    iget-wide v3, p1, Lcom/anythink/core/common/f/a;->g:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "auction"

    .line 66
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :catchall_0
    :try_start_2
    iget-object v1, p1, Lcom/anythink/core/common/f/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/biddingkit/bridge/BiddingKit;->init(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/anythink/network/facebook/FacebookBidkitManager;->a:Z

    .line 77
    :cond_0
    new-instance v0, Lcom/anythink/network/facebook/FacebookBidkitAuction;

    invoke-direct {v0, p1}, Lcom/anythink/network/facebook/FacebookBidkitAuction;-><init>(Lcom/anythink/core/common/f/a;)V

    .line 78
    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookBidkitManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookBidkitManager;->mRequestUrl:Ljava/lang/String;

    new-instance v2, Lcom/anythink/network/facebook/FacebookBidkitManager$2;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/anythink/network/facebook/FacebookBidkitManager$2;-><init>(Lcom/anythink/network/facebook/FacebookBidkitManager;Lcom/anythink/core/api/MediationBidManager$BidListener;Lcom/anythink/network/facebook/FacebookBidkitAuction;Lcom/anythink/core/common/f/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/network/facebook/FacebookBidkitAuction;->startBidding(Ljava/lang/String;Lcom/anythink/core/api/MediationBidManager$BidListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    if-eqz p2, :cond_1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/anythink/core/api/MediationBidManager$BidListener;->onBidFail(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/anythink/network/facebook/FacebookBidkitManager;Lcom/anythink/core/common/f/a;Lcom/anythink/core/api/MediationBidManager$BidListener;)V
    .locals 5

    .line 1060
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/network/facebook/FacebookBidkitManager;->a:Z

    if-nez v0, :cond_0

    .line 1061
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1063
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "timeout_ms"

    .line 1065
    iget-wide v3, p1, Lcom/anythink/core/common/f/a;->g:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "auction"

    .line 1066
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1070
    :catchall_0
    :try_start_2
    iget-object v1, p1, Lcom/anythink/core/common/f/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/biddingkit/bridge/BiddingKit;->init(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1071
    iput-boolean v0, p0, Lcom/anythink/network/facebook/FacebookBidkitManager;->a:Z

    .line 1077
    :cond_0
    new-instance v0, Lcom/anythink/network/facebook/FacebookBidkitAuction;

    invoke-direct {v0, p1}, Lcom/anythink/network/facebook/FacebookBidkitAuction;-><init>(Lcom/anythink/core/common/f/a;)V

    .line 1078
    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookBidkitManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookBidkitManager;->mRequestUrl:Ljava/lang/String;

    new-instance v2, Lcom/anythink/network/facebook/FacebookBidkitManager$2;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/anythink/network/facebook/FacebookBidkitManager$2;-><init>(Lcom/anythink/network/facebook/FacebookBidkitManager;Lcom/anythink/core/api/MediationBidManager$BidListener;Lcom/anythink/network/facebook/FacebookBidkitAuction;Lcom/anythink/core/common/f/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/network/facebook/FacebookBidkitAuction;->startBidding(Ljava/lang/String;Lcom/anythink/core/api/MediationBidManager$BidListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    if-eqz p2, :cond_1

    .line 1103
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/anythink/core/api/MediationBidManager$BidListener;->onBidFail(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/anythink/network/facebook/FacebookBidkitManager;
    .locals 2

    .line 37
    sget-object v0, Lcom/anythink/network/facebook/FacebookBidkitManager;->d:Lcom/anythink/network/facebook/FacebookBidkitManager;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/anythink/network/facebook/FacebookBidkitManager;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/anythink/network/facebook/FacebookBidkitManager;->d:Lcom/anythink/network/facebook/FacebookBidkitManager;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/anythink/network/facebook/FacebookBidkitManager;

    invoke-direct {v1}, Lcom/anythink/network/facebook/FacebookBidkitManager;-><init>()V

    sput-object v1, Lcom/anythink/network/facebook/FacebookBidkitManager;->d:Lcom/anythink/network/facebook/FacebookBidkitManager;

    .line 41
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/network/facebook/FacebookBidkitManager;->d:Lcom/anythink/network/facebook/FacebookBidkitManager;

    return-object v0
.end method


# virtual methods
.method public notifyWinnerDisplay(Ljava/lang/String;Lcom/anythink/core/common/f/au;)V
    .locals 1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/network/facebook/FacebookBidkitAuction;

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p1, p2}, Lcom/anythink/network/facebook/FacebookBidkitAuction;->a(Lcom/anythink/core/common/f/au;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public startBid(Lcom/anythink/core/common/f/a;Lcom/anythink/core/api/MediationBidManager$BidListener;)V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/anythink/network/facebook/FacebookBidkitManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/network/facebook/FacebookBidkitManager$1;-><init>(Lcom/anythink/network/facebook/FacebookBidkitManager;Lcom/anythink/core/common/f/a;Lcom/anythink/core/api/MediationBidManager$BidListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
