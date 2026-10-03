.class public Lcom/anythink/basead/ui/MraidMediaView;
.super Lcom/anythink/basead/ui/BaseMediaATView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/MraidMediaView$a;
    }
.end annotation


# instance fields
.field g:Z

.field h:Z

.field i:Z

.field private j:Lcom/anythink/basead/ui/MraidContainerView;

.field private k:Lcom/anythink/basead/ui/MraidMediaView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/anythink/basead/ui/MraidMediaView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLcom/anythink/basead/ui/BaseMediaATView$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLcom/anythink/basead/ui/BaseMediaATView$a;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/anythink/basead/ui/BaseMediaATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLcom/anythink/basead/ui/BaseMediaATView$a;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/MraidMediaView;)Lcom/anythink/basead/ui/MraidMediaView$a;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/anythink/basead/ui/MraidMediaView;->k:Lcom/anythink/basead/ui/MraidMediaView$a;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MraidMediaView"

    .line 129
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b()V
    .locals 5

    .line 81
    new-instance v0, Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/ui/MraidMediaView;->a:Lcom/anythink/core/common/f/l;

    iget-object v3, p0, Lcom/anythink/basead/ui/MraidMediaView;->c:Lcom/anythink/core/common/f/m;

    new-instance v4, Lcom/anythink/basead/ui/MraidMediaView$1;

    invoke-direct {v4, p0}, Lcom/anythink/basead/ui/MraidMediaView$1;-><init>(Lcom/anythink/basead/ui/MraidMediaView;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/basead/ui/MraidContainerView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/ui/MraidContainerView$a;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->j:Lcom/anythink/basead/ui/MraidContainerView;

    .line 109
    invoke-virtual {v0}, Lcom/anythink/basead/ui/MraidContainerView;->init()V

    .line 112
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->f:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->j:Lcom/anythink/basead/ui/MraidContainerView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 114
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/anythink/basead/ui/MraidMediaView;->j:Lcom/anythink/basead/ui/MraidContainerView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 56
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->i:Z

    .line 58
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->c:Lcom/anythink/core/common/f/m;

    iget-object v1, p0, Lcom/anythink/basead/ui/MraidMediaView;->a:Lcom/anythink/core/common/f/l;

    invoke-static {v0, v1}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroy()V
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseMediaATView;->destroy()V

    .line 170
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->j:Lcom/anythink/basead/ui/MraidContainerView;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/anythink/basead/ui/MraidContainerView;->release()V

    :cond_0
    return-void
.end method

.method public fireAudioVolumeChange(Z)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->j:Lcom/anythink/basead/ui/MraidContainerView;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/MraidContainerView;->fireAudioVolumeChange(Z)V

    :cond_0
    return-void
.end method

.method public init(II)V
    .locals 3

    .line 75
    invoke-super {p0, p1, p2}, Lcom/anythink/basead/ui/BaseMediaATView;->init(II)V

    .line 1081
    new-instance p1, Lcom/anythink/basead/ui/MraidContainerView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidMediaView;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->a:Lcom/anythink/core/common/f/l;

    iget-object v1, p0, Lcom/anythink/basead/ui/MraidMediaView;->c:Lcom/anythink/core/common/f/m;

    new-instance v2, Lcom/anythink/basead/ui/MraidMediaView$1;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/MraidMediaView$1;-><init>(Lcom/anythink/basead/ui/MraidMediaView;)V

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/anythink/basead/ui/MraidContainerView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/ui/MraidContainerView$a;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/MraidMediaView;->j:Lcom/anythink/basead/ui/MraidContainerView;

    .line 1109
    invoke-virtual {p1}, Lcom/anythink/basead/ui/MraidContainerView;->init()V

    .line 1112
    iget-object p1, p0, Lcom/anythink/basead/ui/MraidMediaView;->f:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/MraidMediaView;->j:Lcom/anythink/basead/ui/MraidContainerView;

    if-eqz p1, :cond_0

    .line 1113
    iget-object p1, p0, Lcom/anythink/basead/ui/MraidMediaView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1114
    iget-object p1, p0, Lcom/anythink/basead/ui/MraidMediaView;->f:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/anythink/basead/ui/MraidMediaView;->j:Lcom/anythink/basead/ui/MraidContainerView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 155
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseMediaATView;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->h:Z

    .line 157
    invoke-virtual {p0}, Lcom/anythink/basead/ui/MraidMediaView;->a()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 162
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseMediaATView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->h:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 134
    invoke-super {p0, p1}, Lcom/anythink/basead/ui/BaseMediaATView;->onWindowFocusChanged(Z)V

    .line 136
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidMediaView;->j:Lcom/anythink/basead/ui/MraidContainerView;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/MraidContainerView;->fireMraidIsViewable(Z)V

    :cond_0
    return-void
.end method

.method public setMraidWebViewListener(Lcom/anythink/basead/ui/MraidMediaView$a;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/anythink/basead/ui/MraidMediaView;->k:Lcom/anythink/basead/ui/MraidMediaView$a;

    return-void
.end method
