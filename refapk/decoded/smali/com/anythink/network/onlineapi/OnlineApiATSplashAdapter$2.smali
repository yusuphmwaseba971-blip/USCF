.class final Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick(Lcom/anythink/basead/e/i;)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-virtual {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget v1, p1, Lcom/anythink/basead/e/i;->a:I

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->B(I)V

    .line 163
    iget p1, p1, Lcom/anythink/basead/e/i;->b:I

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/h;->C(I)V

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {p1}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->k(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 166
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {p1}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->l(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdClicked()V

    :cond_1
    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->i(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->j(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    :cond_0
    return-void
.end method

.method public final onAdShow(Lcom/anythink/basead/e/i;)V
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {p1}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->g(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {p1}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->h(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShow()V

    :cond_0
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->m(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->n(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onDeeplinkCallback(Z)V

    :cond_0
    return-void
.end method

.method public final onShowFailed(Lcom/anythink/basead/c/e;)V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->o(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->p(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->b()Ljava/lang/String;

    move-result-object p1

    const-string v2, "4006"

    invoke-static {v2, v1, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShowFail(Lcom/anythink/core/api/AdError;)V

    :cond_0
    return-void
.end method
