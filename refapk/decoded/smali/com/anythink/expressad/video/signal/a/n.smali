.class public final Lcom/anythink/expressad/video/signal/a/n;
.super Lcom/anythink/expressad/video/signal/a/g;


# instance fields
.field private t:Lcom/anythink/expressad/video/module/AnythinkVideoView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/anythink/expressad/video/signal/a/g;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    return-void
.end method


# virtual methods
.method public final alertWebViewShowed()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->alertWebViewShowed()V

    return-void

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->alertWebViewShowed()V

    return-void
.end method

.method public final closeVideoOperate(II)V
    .locals 1

    .line 46
    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/a/g;->closeVideoOperate(II)V

    .line 47
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->closeVideoOperate(II)V

    :cond_0
    return-void
.end method

.method public final dismissAllAlert()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->dismissAllAlert()V

    return-void

    .line 191
    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->dismissAllAlert()V

    return-void
.end method

.method public final getBorderViewHeight()I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getBorderViewHeight()I

    move-result v0

    return v0

    .line 118
    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->getBorderViewHeight()I

    move-result v0

    return v0
.end method

.method public final getBorderViewLeft()I
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getBorderViewLeft()I

    move-result v0

    return v0

    .line 145
    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->getBorderViewLeft()I

    move-result v0

    return v0
.end method

.method public final getBorderViewRadius()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getBorderViewRadius()I

    move-result v0

    return v0

    .line 127
    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->getBorderViewRadius()I

    move-result v0

    return v0
.end method

.method public final getBorderViewTop()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getBorderViewTop()I

    move-result v0

    return v0

    .line 136
    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->getBorderViewTop()I

    move-result v0

    return v0
.end method

.method public final getBorderViewWidth()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getBorderViewWidth()I

    move-result v0

    return v0

    .line 109
    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->getBorderViewWidth()I

    move-result v0

    return v0
.end method

.method public final getCurrentProgress()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getCurrentProgress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->getCurrentProgress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hideAlertView(I)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->hideAlertView(I)V

    return-void

    .line 163
    :cond_0
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/g;->hideAlertView(I)V

    return-void
.end method

.method public final isH5Canvas()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->isH5Canvas()Z

    move-result v0

    return v0

    .line 100
    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->isH5Canvas()Z

    move-result v0

    return v0
.end method

.method public final progressOperate(II)V
    .locals 1

    .line 54
    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/a/g;->progressOperate(II)V

    .line 55
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->progressOperate(II)V

    :cond_0
    return-void
.end method

.method public final setCover(Z)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCover(Z)V

    return-void

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/g;->setCover(Z)V

    return-void
.end method

.method public final setScaleFitXY(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setScaleFitXY(I)V

    return-void

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/g;->setScaleFitXY(I)V

    return-void
.end method

.method public final setVisible(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setVisible(I)V

    return-void

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/g;->setVisible(I)V

    return-void
.end method

.method public final showAlertView()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->showAlertView()V

    return-void

    .line 181
    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->showAlertView()V

    return-void
.end method

.method public final showIVRewardAlertView(Ljava/lang/String;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->showIVRewardAlertView(Ljava/lang/String;)V

    return-void

    .line 154
    :cond_0
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/g;->showIVRewardAlertView(Ljava/lang/String;)V

    return-void
.end method

.method public final showVideoLocation(IIIIIIIII)V
    .locals 11

    .line 14
    invoke-super/range {p0 .. p9}, Lcom/anythink/expressad/video/signal/a/g;->showVideoLocation(IIIIIIIII)V

    move-object v0, p0

    .line 15
    iget-object v1, v0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v1, :cond_0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 16
    invoke-virtual/range {v1 .. v10}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->showVideoLocation(IIIIIIIII)V

    :cond_0
    return-void
.end method

.method public final soundOperate(II)V
    .locals 1

    .line 22
    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/a/g;->soundOperate(II)V

    .line 23
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->soundOperate(II)V

    :cond_0
    return-void
.end method

.method public final soundOperate(IILjava/lang/String;)V
    .locals 1

    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/anythink/expressad/video/signal/a/g;->soundOperate(IILjava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->soundOperate(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final videoOperate(I)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/g;->videoOperate(I)V

    .line 39
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->videoOperate(I)V

    :cond_0
    return-void
.end method
