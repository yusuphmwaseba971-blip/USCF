.class public final Lcom/anythink/expressad/video/signal/a/k;
.super Lcom/anythink/expressad/video/signal/a/d;


# instance fields
.field private k:Lcom/anythink/expressad/video/module/AnythinkContainerView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkContainerView;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/anythink/expressad/video/signal/a/d;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    return-void
.end method


# virtual methods
.method public final configurationChanged(III)V
    .locals 1

    .line 191
    invoke-super {p0, p1, p2, p3}, Lcom/anythink/expressad/video/signal/a/d;->configurationChanged(III)V

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->configurationChanged(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final endCardShowing()Z
    .locals 1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->endCardShowing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/d;->endCardShowing()Z

    move-result v0

    return v0
.end method

.method public final hideAlertWebview()V
    .locals 1

    .line 203
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/d;->hideAlertWebview()V

    .line 204
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->hideAlertWebview()V

    :cond_0
    return-void
.end method

.method public final install(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/d;->install(Lcom/anythink/expressad/foundation/d/c;)V

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->install(Lcom/anythink/expressad/foundation/d/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final ivRewardAdsWithoutVideo(Ljava/lang/String;)V
    .locals 1

    .line 211
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/d;->ivRewardAdsWithoutVideo(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->ivRewardAdsWithoutVideo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final miniCardLoaded()Z
    .locals 1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->miniCardLoaded()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/d;->miniCardLoaded()Z

    move-result v0

    return v0
.end method

.method public final miniCardShowing()Z
    .locals 1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->miniCardShowing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/d;->miniCardShowing()Z

    move-result v0

    return v0
.end method

.method public final orientation(Landroid/content/res/Configuration;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/d;->orientation(Landroid/content/res/Configuration;)V

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->orientation(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/d;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final readyStatus(I)V
    .locals 1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->readyStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/d;->readyStatus(I)V

    return-void
.end method

.method public final resizeMiniCard(III)V
    .locals 1

    .line 179
    invoke-super {p0, p1, p2, p3}, Lcom/anythink/expressad/video/signal/a/d;->resizeMiniCard(III)V

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->resizeMiniCard(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final showAlertWebView()Z
    .locals 1

    .line 18
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/d;->showAlertWebView()Z

    .line 19
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showAlertWebView()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final showEndcard(I)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/d;->showEndcard(I)V

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showEndcard(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final showMiniCard(IIIII)V
    .locals 6

    .line 167
    invoke-super/range {p0 .. p5}, Lcom/anythink/expressad/video/signal/a/d;->showMiniCard(IIIII)V

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 170
    invoke-virtual/range {v0 .. v5}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showMiniCard(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final showPlayableView()V
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/d;->showPlayableView()V

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showPlayableView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final showVideoClickView(I)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/d;->showVideoClickView(I)V

    .line 28
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showVideoClickView(I)V

    :cond_0
    return-void
.end method

.method public final toggleCloseBtn(I)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/d;->toggleCloseBtn(I)V

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->toggleCloseBtn(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final webviewshow()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/d;->webviewshow()V

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->webviewshow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
