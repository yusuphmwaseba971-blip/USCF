.class public Lcom/anythink/network/adx/AdxATNativeAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# instance fields
.field a:Lcom/anythink/basead/d/h;

.field b:Landroid/content/Context;

.field c:Z

.field d:Z

.field e:Landroid/view/View;

.field f:Lcom/anythink/basead/e/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/basead/d/h;ZZ)V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd;->b:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    .line 45
    invoke-virtual {p2}, Lcom/anythink/basead/d/h;->a()Lcom/anythink/core/common/f/l;

    move-result-object p2

    invoke-static {p2}, Lcom/anythink/basead/b;->a(Lcom/anythink/core/common/f/l;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/anythink/network/adx/AdxATNativeAd;->setNetworkInfoMap(Ljava/util/Map;)V

    .line 47
    new-instance p2, Lcom/anythink/network/adx/AdxATNativeAd$1;

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {v0}, Lcom/anythink/basead/d/h;->a()Lcom/anythink/core/common/f/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1, p1}, Lcom/anythink/network/adx/AdxATNativeAd$1;-><init>(Lcom/anythink/network/adx/AdxATNativeAd;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/h;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATNativeAd;->f:Lcom/anythink/basead/e/e;

    .line 99
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1, p2}, Lcom/anythink/basead/d/h;->a(Lcom/anythink/basead/e/a;)V

    .line 101
    iput-boolean p3, p0, Lcom/anythink/network/adx/AdxATNativeAd;->c:Z

    .line 102
    iput-boolean p4, p0, Lcom/anythink/network/adx/AdxATNativeAd;->d:Z

    .line 105
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->t()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const-string p1, "1"

    .line 107
    iput-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->mAdSourceType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    const-string p1, "2"

    .line 109
    iput-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->mAdSourceType:Ljava/lang/String;

    .line 112
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->o()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/adx/AdxATNativeAd;->setAdChoiceIconUrl(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/adx/AdxATNativeAd;->setTitle(Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/adx/AdxATNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/adx/AdxATNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/adx/AdxATNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/network/adx/AdxATNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->n()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 124
    new-instance p1, Lcom/anythink/network/adx/AdxAppDownloadInfo;

    iget-object p2, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-direct {p1, p2}, Lcom/anythink/network/adx/AdxAppDownloadInfo;-><init>(Lcom/anythink/basead/d/h;)V

    invoke-virtual {p0, p1}, Lcom/anythink/network/adx/AdxATNativeAd;->setAdAppInfo(Lcom/anythink/core/api/ATAdAppInfo;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->p()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 199
    invoke-virtual {v0, v1}, Lcom/anythink/basead/d/h;->a(Lcom/anythink/basead/e/a;)V

    .line 200
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {v0}, Lcom/anythink/basead/d/h;->q()V

    :cond_0
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 3

    .line 136
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->e:Landroid/view/View;

    if-nez p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->d:Z

    new-instance v2, Lcom/anythink/network/adx/AdxATNativeAd$2;

    invoke-direct {v2, p0}, Lcom/anythink/network/adx/AdxATNativeAd$2;-><init>(Lcom/anythink/network/adx/AdxATNativeAd;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/basead/d/h;->a(Landroid/content/Context;ZLcom/anythink/basead/ui/BaseMediaATView$a;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->e:Landroid/view/View;

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->e:Landroid/view/View;

    return-object p1
.end method

.method public getCustomAdContainer()Landroid/view/ViewGroup;
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/network/adx/AdxATNativeAd;->c:Z

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/anythink/basead/ui/OwnNativeATView;

    iget-object v1, p0, Lcom/anythink/network/adx/AdxATNativeAd;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/OwnNativeATView;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNativeExpress()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {v0}, Lcom/anythink/basead/d/h;->o()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/anythink/basead/d/h;->s()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/anythink/basead/d/h;->r()V

    :cond_0
    return-void
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd;->f:Lcom/anythink/basead/e/e;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/anythink/network/adx/AdxATNativeAd;->getDetail()Lcom/anythink/core/common/f/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/e/e;->updateTrackingInfo(Lcom/anythink/core/common/f/h;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {v0}, Lcom/anythink/basead/d/h;->r()V

    .line 164
    iget-boolean v0, p0, Lcom/anythink/network/adx/AdxATNativeAd;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getClickViewList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 167
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;Ljava/util/List;)V

    return-void

    .line 170
    :cond_1
    iget-object p2, p0, Lcom/anythink/network/adx/AdxATNativeAd;->a:Lcom/anythink/basead/d/h;

    invoke-virtual {p2, p1}, Lcom/anythink/basead/d/h;->a(Landroid/view/View;)V

    :cond_2
    return-void
.end method
