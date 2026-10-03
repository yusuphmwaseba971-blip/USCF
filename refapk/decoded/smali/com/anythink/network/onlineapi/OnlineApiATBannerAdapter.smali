.class public Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;
.super Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;


# instance fields
.field a:Lcom/anythink/core/common/f/m;

.field b:Ljava/lang/String;

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

.field private d:Lcom/anythink/basead/d/a;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->e:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

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

    const-string v0, "unit_id"

    .line 86
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
    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->b:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "close_button"

    .line 91
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_1
    const-string v1, "size"

    .line 98
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "320x50"

    :goto_1
    const-string v2, "basead_params"

    .line 106
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/f/m;

    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->a:Lcom/anythink/core/common/f/m;

    .line 107
    new-instance p2, Lcom/anythink/basead/d/a;

    sget-object v2, Lcom/anythink/basead/d/b$b;->b:Lcom/anythink/basead/d/b$b;

    iget-object v3, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->a:Lcom/anythink/core/common/f/m;

    invoke-direct {p2, p1, v2, v3}, Lcom/anythink/basead/d/a;-><init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;)V

    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/d/a;

    .line 108
    new-instance p1, Lcom/anythink/basead/d/c$a;

    invoke-direct {p1}, Lcom/anythink/basead/d/c$a;-><init>()V

    .line 109
    invoke-virtual {p1, v0}, Lcom/anythink/basead/d/c$a;->c(I)Lcom/anythink/basead/d/c$a;

    move-result-object p1

    .line 110
    invoke-virtual {p1, v1}, Lcom/anythink/basead/d/c$a;->b(Ljava/lang/String;)Lcom/anythink/basead/d/c$a;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/anythink/basead/d/c$a;->a()Lcom/anythink/basead/d/c;

    move-result-object p1

    .line 108
    invoke-virtual {p2, p1}, Lcom/anythink/basead/d/a;->a(Lcom/anythink/basead/d/c;)V

    .line 114
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/d/a;

    new-instance p2, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$2;

    invoke-direct {p2, p0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$2;-><init>(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/d/a;->a(Lcom/anythink/basead/e/a;)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/basead/d/a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/d/a;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Landroid/view/View;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic o(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic p(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method static synthetic q(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .locals 2

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->e:Landroid/view/View;

    .line 166
    iget-object v1, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/d/a;

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v1, v0}, Lcom/anythink/basead/d/a;->a(Lcom/anythink/basead/e/a;)V

    .line 168
    iget-object v1, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/d/a;

    invoke-virtual {v1}, Lcom/anythink/basead/d/a;->b()V

    .line 169
    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/d/a;

    :cond_0
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/d/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/d/a;

    invoke-virtual {v0}, Lcom/anythink/basead/d/a;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->e:Landroid/view/View;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->c:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/d/a;

    invoke-static {v0}, Lcom/anythink/basead/b;->a(Lcom/anythink/basead/d/b;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->c:Ljava/util/Map;

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->e:Landroid/view/View;

    return-object v0
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

    .line 190
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->b:Ljava/lang/String;

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

    const-string p3, "unit_id"

    .line 1086
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    iput-object p3, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->b:Ljava/lang/String;

    const/4 p3, 0x0

    const-string v0, "close_button"

    .line 1091
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1092
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1094
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    :cond_1
    const-string v0, "size"

    .line 1098
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1099
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1101
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "320x50"

    :goto_1
    const-string v1, "basead_params"

    .line 1106
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/f/m;

    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->a:Lcom/anythink/core/common/f/m;

    .line 1107
    new-instance p2, Lcom/anythink/basead/d/a;

    sget-object v1, Lcom/anythink/basead/d/b$b;->b:Lcom/anythink/basead/d/b$b;

    iget-object v2, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->a:Lcom/anythink/core/common/f/m;

    invoke-direct {p2, p1, v1, v2}, Lcom/anythink/basead/d/a;-><init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;)V

    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/d/a;

    .line 1108
    new-instance p1, Lcom/anythink/basead/d/c$a;

    invoke-direct {p1}, Lcom/anythink/basead/d/c$a;-><init>()V

    .line 1109
    invoke-virtual {p1, p3}, Lcom/anythink/basead/d/c$a;->c(I)Lcom/anythink/basead/d/c$a;

    move-result-object p1

    .line 1110
    invoke-virtual {p1, v0}, Lcom/anythink/basead/d/c$a;->b(Ljava/lang/String;)Lcom/anythink/basead/d/c$a;

    move-result-object p1

    .line 1111
    invoke-virtual {p1}, Lcom/anythink/basead/d/c$a;->a()Lcom/anythink/basead/d/c;

    move-result-object p1

    .line 1108
    invoke-virtual {p2, p1}, Lcom/anythink/basead/d/a;->a(Lcom/anythink/basead/d/c;)V

    .line 1114
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/d/a;

    new-instance p2, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$2;

    invoke-direct {p2, p0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$2;-><init>(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/d/a;->a(Lcom/anythink/basead/e/a;)V

    .line 55
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d:Lcom/anythink/basead/d/a;

    new-instance p2, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$1;

    invoke-direct {p2, p0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$1;-><init>(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/d/a;->a(Lcom/anythink/basead/e/c;)V

    return-void
.end method
