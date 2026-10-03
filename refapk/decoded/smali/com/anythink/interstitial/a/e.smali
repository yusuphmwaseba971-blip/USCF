.class public final Lcom/anythink/interstitial/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;


# instance fields
.field a:Lcom/anythink/interstitial/api/ATInterstitialListener;

.field b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

.field c:J

.field d:J

.field e:I

.field f:Z


# direct methods
.method public constructor <init>(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/interstitial/api/ATInterstitialListener;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/anythink/interstitial/a/e;->e:I

    .line 49
    iput-object p2, p0, Lcom/anythink/interstitial/a/e;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    .line 50
    iput-object p1, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/anythink/interstitial/a/e;->f:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    .line 240
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/u;->c(Ljava/lang/String;)Lcom/anythink/core/common/f/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 245
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/u;->d(Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "3"

    invoke-static {v1, p0, v2}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v1

    .line 247
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anythink/core/common/f/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lcom/anythink/core/common/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/f;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 8

    .line 252
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->E()Landroid/content/Context;

    move-result-object v0

    const-string v1, "3"

    invoke-static {v0, p0, v1}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v2

    const/4 v0, 0x0

    .line 254
    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/api/ATAdStatusInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    new-instance v6, Lcom/anythink/core/common/f/v;

    invoke-direct {v6}, Lcom/anythink/core/common/f/v;-><init>()V

    .line 257
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->E()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/anythink/core/common/f/v;->a(Landroid/content/Context;)V

    .line 258
    iput p1, v6, Lcom/anythink/core/common/f/v;->d:I

    .line 260
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/o;->E()Landroid/content/Context;

    move-result-object v3

    const/4 v7, 0x0

    const-string v4, "3"

    move-object v5, p0

    invoke-virtual/range {v2 .. v7}, Lcom/anythink/core/common/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/b/a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onDeeplinkCallback(Z)V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/anythink/interstitial/a/e;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/interstitial/api/ATInterstitialExListener;

    if-eqz v1, :cond_0

    .line 218
    check-cast v0, Lcom/anythink/interstitial/api/ATInterstitialExListener;

    iget-object v1, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/core/common/b/k;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/k;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/anythink/interstitial/api/ATInterstitialExListener;->onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 222
    sget-object p1, Lcom/anythink/core/common/b/h$m;->l:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/anythink/core/common/b/h$m;->m:Ljava/lang/String;

    .line 223
    :goto_0
    sget-object v1, Lcom/anythink/core/common/b/h$m;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, p1, v2}, Lcom/anythink/core/common/o/o;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/anythink/interstitial/a/e;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/interstitial/api/ATInterstitialExListener;

    if-eqz v1, :cond_0

    .line 230
    check-cast v0, Lcom/anythink/interstitial/api/ATInterstitialExListener;

    iget-object v1, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/core/common/b/k;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/k;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lcom/anythink/interstitial/api/ATInterstitialExListener;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    if-eqz p1, :cond_1

    .line 233
    invoke-virtual {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object p1

    .line 234
    sget-object p2, Lcom/anythink/core/common/b/h$m;->j:Ljava/lang/String;

    sget-object v0, Lcom/anythink/core/common/b/h$m;->l:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p1, p2, v0, v1}, Lcom/anythink/core/common/o/o;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onInterstitialAdClicked()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    .line 167
    sget-object v1, Lcom/anythink/core/common/b/h$m;->d:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$m;->l:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/o;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/n/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/a;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/n/a;->a(ILcom/anythink/core/common/f/at;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/anythink/interstitial/a/e;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_1

    .line 172
    iget-object v1, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/core/common/b/k;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdClicked(Lcom/anythink/core/api/ATAdInfo;)V

    :cond_1
    return-void
.end method

.method public final onInterstitialAdClose()V
    .locals 11

    .line 122
    iget-object v0, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    if-eqz v0, :cond_4

    .line 123
    invoke-virtual {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    .line 125
    iget v1, p0, Lcom/anythink/interstitial/a/e;->e:I

    if-nez v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-virtual {v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getDismissType()I

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 133
    :cond_1
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->D(I)V

    .line 135
    sget-object v1, Lcom/anythink/core/common/b/h$m;->e:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$m;->l:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/o;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-wide v3, p0, Lcom/anythink/interstitial/a/e;->c:J

    const-wide/16 v1, 0x0

    cmp-long v5, v3, v1

    if-eqz v5, :cond_2

    const/4 v2, 0x0

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/anythink/interstitial/a/e;->d:J

    sub-long/2addr v7, v9

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/h;ZJJJ)V

    :cond_2
    const/4 v1, 0x0

    .line 141
    invoke-static {v0, v1}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/h;Z)V

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-virtual {v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->clearImpressionListener()V

    .line 145
    iget-object v1, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-virtual {v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->internalDestory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/anythink/interstitial/a/e;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v1, :cond_3

    .line 151
    iget-object v2, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-static {v0, v2}, Lcom/anythink/core/common/b/k;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/k;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdClose(Lcom/anythink/core/api/ATAdInfo;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 155
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/interstitial/a/e;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final onInterstitialAdShow()V
    .locals 6

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/interstitial/a/e;->c:J

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/interstitial/a/e;->d:J

    .line 181
    iget-object v0, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/core/common/b/k;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/k;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    if-eqz v1, :cond_2

    .line 183
    invoke-virtual {v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-virtual {v2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/h;->a(Ljava/util/Map;)V

    .line 185
    iget-object v2, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-virtual {v2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getILRD()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/h;->a(Ljava/lang/String;)V

    .line 190
    :cond_0
    sget-object v2, Lcom/anythink/core/common/b/h$m;->c:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/h$m;->l:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/anythink/core/common/o/o;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/n/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/a;

    move-result-object v2

    const/4 v3, 0x4

    iget-object v5, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-virtual {v5}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    move-result-object v5

    invoke-virtual {v2, v3, v1, v5}, Lcom/anythink/core/common/n/a;->a(ILcom/anythink/core/common/f/at;Lcom/anythink/core/common/f/au;)V

    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {v1}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Lcom/anythink/core/api/ATAdInfo;)V

    :cond_1
    const/4 v1, 0x6

    .line 203
    invoke-static {v4, v1}, Lcom/anythink/interstitial/a/e;->a(Ljava/lang/String;I)V

    .line 205
    :cond_2
    iget-object v1, p0, Lcom/anythink/interstitial/a/e;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v1, :cond_4

    .line 207
    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdInfo;->getNetworkFirmId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 208
    iget-object v1, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    const/4 v2, 0x0

    const-string v3, "Interstitial"

    invoke-static {v3, v1, v2}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;)V

    .line 211
    :cond_3
    iget-object v1, p0, Lcom/anythink/interstitial/a/e;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-interface {v1, v0}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdShow(Lcom/anythink/core/api/ATAdInfo;)V

    :cond_4
    return-void
.end method

.method public final onInterstitialAdVideoEnd()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getDismissType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 74
    iput v0, p0, Lcom/anythink/interstitial/a/e;->e:I

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-virtual {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/n/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/a;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/n/a;->a(ILcom/anythink/core/common/f/at;)V

    .line 79
    iget-object v1, p0, Lcom/anythink/interstitial/a/e;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v1, :cond_1

    .line 80
    iget-object v2, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-static {v2}, Lcom/anythink/core/common/b/k;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/k;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdVideoEnd(Lcom/anythink/core/api/ATAdInfo;)V

    .line 83
    :cond_1
    sget-object v1, Lcom/anythink/core/common/b/h$m;->f:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$m;->l:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/o;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onInterstitialAdVideoError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x63

    .line 89
    iput v0, p0, Lcom/anythink/interstitial/a/e;->e:I

    const-string v0, "4006"

    .line 91
    invoke-static {v0, p1, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    .line 92
    iget-object v0, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->M()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 98
    iput-boolean v1, p0, Lcom/anythink/interstitial/a/e;->f:Z

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-virtual {v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/AdError;Ljava/util/Map;)V

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/interstitial/a/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    const/4 v2, 0x7

    .line 111
    invoke-static {v1, v2}, Lcom/anythink/interstitial/a/e;->a(Ljava/lang/String;I)V

    .line 113
    sget-object v1, Lcom/anythink/core/common/b/h$m;->g:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$m;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/anythink/core/common/o/o;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_2
    iget-object p2, p0, Lcom/anythink/interstitial/a/e;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz p2, :cond_3

    .line 116
    invoke-interface {p2, p1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdVideoError(Lcom/anythink/core/api/AdError;)V

    :cond_3
    return-void
.end method

.method public final onInterstitialAdVideoStart()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    .line 60
    iget-boolean v1, p0, Lcom/anythink/interstitial/a/e;->f:Z

    if-eqz v1, :cond_0

    .line 61
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/n/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/a;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/n/a;->a(ILcom/anythink/core/common/f/at;)V

    .line 62
    iget-object v0, p0, Lcom/anythink/interstitial/a/e;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/anythink/interstitial/a/e;->b:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/core/common/b/k;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdVideoStart(Lcom/anythink/core/api/ATAdInfo;)V

    :cond_0
    return-void
.end method
