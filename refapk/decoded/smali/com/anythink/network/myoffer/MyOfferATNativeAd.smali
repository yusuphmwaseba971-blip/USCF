.class public Lcom/anythink/network/myoffer/MyOfferATNativeAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# instance fields
.field a:Lcom/anythink/basead/f/e;

.field b:Landroid/content/Context;

.field c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/basead/f/e;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->b:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/f/e;

    .line 33
    new-instance p1, Lcom/anythink/network/myoffer/MyOfferATNativeAd$1;

    invoke-direct {p1, p0}, Lcom/anythink/network/myoffer/MyOfferATNativeAd$1;-><init>(Lcom/anythink/network/myoffer/MyOfferATNativeAd;)V

    invoke-virtual {p2, p1}, Lcom/anythink/basead/f/e;->a(Lcom/anythink/basead/e/a;)V

    .line 66
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/f/e;

    invoke-virtual {p1}, Lcom/anythink/basead/f/e;->e()Lcom/anythink/core/common/f/z;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/basead/b;->a(Lcom/anythink/core/common/f/l;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->setNetworkInfoMap(Ljava/util/Map;)V

    .line 67
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/f/e;

    invoke-virtual {p1}, Lcom/anythink/basead/f/e;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->setAdChoiceIconUrl(Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/f/e;

    invoke-virtual {p1}, Lcom/anythink/basead/f/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->setTitle(Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/f/e;

    invoke-virtual {p1}, Lcom/anythink/basead/f/e;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/f/e;

    invoke-virtual {p1}, Lcom/anythink/basead/f/e;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/f/e;

    invoke-virtual {p1}, Lcom/anythink/basead/f/e;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/f/e;

    invoke-virtual {p1}, Lcom/anythink/basead/f/e;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->setCallToActionText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/f/e;

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/anythink/basead/f/e;->l()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/f/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Lcom/anythink/basead/f/e;->a(Lcom/anythink/basead/e/a;)V

    .line 107
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/f/e;

    invoke-virtual {v0}, Lcom/anythink/basead/f/e;->m()V

    :cond_0
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->c:Landroid/view/View;

    if-nez p1, :cond_0

    .line 78
    invoke-static {}, Lcom/anythink/basead/f/e;->k()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->c:Landroid/view/View;

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->c:Landroid/view/View;

    return-object p1
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/f/e;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getClickViewList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 88
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/f/e;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/f/e;->a(Landroid/view/View;Ljava/util/List;)V

    return-void

    .line 91
    :cond_0
    iget-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;->a:Lcom/anythink/basead/f/e;

    invoke-virtual {p2, p1}, Lcom/anythink/basead/f/e;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method
