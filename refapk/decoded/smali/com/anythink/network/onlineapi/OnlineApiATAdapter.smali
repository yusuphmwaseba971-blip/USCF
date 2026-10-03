.class public Lcom/anythink/network/onlineapi/OnlineApiATAdapter;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;


# instance fields
.field a:Lcom/anythink/basead/d/e;

.field b:Lcom/anythink/core/common/f/m;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/onlineapi/OnlineApiATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

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

    const-string v0, "unit_id"

    .line 96
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->c:Ljava/lang/String;

    const-string v0, "basead_params"

    .line 97
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/f/m;

    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->b:Lcom/anythink/core/common/f/m;

    .line 99
    new-instance p2, Lcom/anythink/basead/d/e;

    sget-object v0, Lcom/anythink/basead/d/b$b;->b:Lcom/anythink/basead/d/b$b;

    iget-object v1, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->b:Lcom/anythink/core/common/f/m;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/anythink/basead/d/e;-><init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;Z)V

    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->a:Lcom/anythink/basead/d/e;

    return-void
.end method

.method static synthetic b(Lcom/anythink/network/onlineapi/OnlineApiATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/onlineapi/OnlineApiATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/onlineapi/OnlineApiATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->a:Lcom/anythink/basead/d/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->a:Lcom/anythink/basead/d/e;

    :cond_0
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
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

    .line 1096
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->c:Ljava/lang/String;

    const-string v0, "basead_params"

    .line 1097
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/f/m;

    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->b:Lcom/anythink/core/common/f/m;

    .line 1099
    new-instance p2, Lcom/anythink/basead/d/e;

    sget-object v0, Lcom/anythink/basead/d/b$b;->b:Lcom/anythink/basead/d/b$b;

    iget-object v1, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->b:Lcom/anythink/core/common/f/m;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/anythink/basead/d/e;-><init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;Z)V

    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->a:Lcom/anythink/basead/d/e;

    const/4 p2, -0x1

    if-eqz p3, :cond_1

    :try_start_0
    const-string v0, "key_width"

    .line 40
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 v0, -0x1

    :goto_1
    :try_start_1
    const-string v1, "key_height"

    .line 44
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move p3, p2

    move p2, v0

    goto :goto_2

    :catchall_1
    move p2, v0

    :cond_1
    const/4 p3, -0x1

    .line 49
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gtz p2, :cond_2

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_2
    if-gtz p3, :cond_3

    mul-int/lit8 p3, p2, 0x3

    .line 56
    div-int/lit8 p3, p3, 0x4

    :cond_3
    if-le p2, v0, :cond_4

    goto :goto_3

    :cond_4
    move v0, p2

    :goto_3
    if-le p3, v1, :cond_5

    goto :goto_4

    :cond_5
    move v1, p3

    .line 71
    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 72
    iget-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATAdapter;->a:Lcom/anythink/basead/d/e;

    new-instance p3, Lcom/anythink/network/onlineapi/OnlineApiATAdapter$1;

    invoke-direct {p3, p0, v0, v1, p1}, Lcom/anythink/network/onlineapi/OnlineApiATAdapter$1;-><init>(Lcom/anythink/network/onlineapi/OnlineApiATAdapter;IILandroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/anythink/basead/d/e;->a(Lcom/anythink/basead/e/d;)V

    return-void
.end method
