.class public Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# instance fields
.field a:Lcom/anythink/basead/d/h;

.field b:Landroid/content/Context;

.field c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/basead/d/h;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->b:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    .line 36
    new-instance p1, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd$1;

    invoke-direct {p1, p0}, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd$1;-><init>(Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;)V

    invoke-virtual {p2, p1}, Lcom/anythink/basead/d/h;->a(Lcom/anythink/basead/e/a;)V

    .line 68
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->a()Lcom/anythink/core/common/f/l;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/basead/b;->a(Lcom/anythink/core/common/f/l;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->setNetworkInfoMap(Ljava/util/Map;)V

    .line 69
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->setAdChoiceIconUrl(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->setTitle(Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    new-instance p1, Lcom/anythink/network/adx/AdxAppDownloadInfo;

    iget-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-direct {p1, p2}, Lcom/anythink/network/adx/AdxAppDownloadInfo;-><init>(Lcom/anythink/basead/d/h;)V

    invoke-virtual {p0, p1}, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->setAdAppInfo(Lcom/anythink/core/api/ATAdAppInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->p()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Lcom/anythink/basead/d/h;->a(Lcom/anythink/basead/e/a;)V

    .line 121
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {v0}, Lcom/anythink/basead/d/h;->q()V

    :cond_0
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 3

    .line 91
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->c:Landroid/view/View;

    if-nez p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->b:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/basead/d/h;->a(Landroid/content/Context;ZLcom/anythink/basead/ui/BaseMediaATView$a;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->c:Landroid/view/View;

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->c:Landroid/view/View;

    return-object p1
.end method

.method public getCustomAdContainer()Landroid/view/ViewGroup;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/anythink/basead/ui/OwnNativeATView;

    iget-object v1, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/OwnNativeATView;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getClickViewList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 101
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;Ljava/util/List;)V

    return-void

    .line 104
    :cond_0
    iget-object p2, p0, Lcom/anythink/network/onlineapi/OnlineApiATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p2, p1}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method
