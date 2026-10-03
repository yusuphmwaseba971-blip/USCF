.class final Lcom/anythink/expressad/video/module/AnythinkVideoView$b;
.super Lcom/anythink/expressad/playercommon/DefaultVideoPlayerStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/video/module/AnythinkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Lcom/anythink/expressad/video/module/AnythinkVideoView$a;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Lcom/anythink/expressad/foundation/d/c;

.field private l:I

.field private m:I

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V
    .locals 1

    .line 1632
    invoke-direct {p0}, Lcom/anythink/expressad/playercommon/DefaultVideoPlayerStatusListener;-><init>()V

    .line 1596
    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;

    invoke-direct {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->e:Lcom/anythink/expressad/video/module/AnythinkVideoView$a;

    const/4 v0, 0x0

    .line 1597
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->f:Z

    .line 1598
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->g:Z

    .line 1599
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->h:Z

    .line 1605
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->n:Z

    .line 1633
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    return-void
.end method

.method private a(I)V
    .locals 5

    const-string v0, "drawable"

    if-lez p1, :cond_0

    .line 1676
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "anythink_reward_video_time_count_num_bg"

    invoke-static {v1, v2, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1677
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1678
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, 0x1

    .line 1679
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_native_endcard_feed_btn"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x0

    .line 1680
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1681
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1682
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 1684
    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "anythink_reward_shape_progress"

    invoke-static {v1, v2, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method private a(III)V
    .locals 5

    .line 1951
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-nez v0, :cond_0

    return-void

    .line 1956
    :cond_0
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "anythink_reward_video_view_reward_time_complete"

    const-string v3, "string"

    invoke-static {v1, v2, v3}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1957
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    const-string v4, "anythink_reward_video_view_reward_time_left"

    invoke-static {v2, v4, v3}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-ltz p1, :cond_2

    sub-int/2addr p1, p3

    if-gtz p1, :cond_1

    goto :goto_0

    .line 1963
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sub-int/2addr p2, p3

    if-gtz p2, :cond_3

    if-gtz p1, :cond_5

    const-string v0, "0"

    goto :goto_0

    :cond_3
    if-gtz p1, :cond_4

    .line 1970
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1973
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->e:Lcom/anythink/expressad/video/module/AnythinkVideoView$a;

    iput p3, p1, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;->a:I

    .line 1974
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1975
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->r(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->r(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 1976
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->r(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_6
    return-void
.end method

.method private b(I)V
    .locals 4

    .line 1695
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1698
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v0

    const/4 v1, 0x5

    const-string v2, "drawable"

    const-string v3, "anythink_reward_video_time_count_num_bg"

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrPlayNum:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    if-gtz p1, :cond_1

    .line 1699
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1700
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->d()V

    return-void

    :cond_1
    if-lez p1, :cond_2

    .line 1704
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->d()V

    goto :goto_0

    :cond_2
    const-string v3, "anythink_reward_shape_progress"

    .line 1708
    :goto_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private b(III)V
    .locals 3

    .line 1982
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-le p1, p2, :cond_1

    move p1, p2

    :cond_1
    if-gtz p1, :cond_2

    sub-int/2addr p2, p3

    goto :goto_0

    :cond_2
    sub-int p2, p1, p3

    :goto_0
    const-string v1, "string"

    if-gtz p2, :cond_4

    if-gtz p1, :cond_3

    const-string p1, "0"

    goto :goto_1

    .line 1992
    :cond_3
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p2

    const-string v0, "anythink_reward_video_view_reward_time_complete"

    invoke-static {p2, v0, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_4
    if-gtz p1, :cond_5

    .line 1994
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {p2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    const-string v2, "anythink_reward_video_view_reward_time_left"

    invoke-static {v0, v2, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1996
    :goto_1
    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1998
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->r(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->r(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 1999
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->r(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_6
    return-void
.end method

.method private c()Lcom/anythink/expressad/foundation/d/c;
    .locals 1

    .line 1608
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    return-object v0
.end method

.method private d()V
    .locals 3

    .line 1715
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-nez v0, :cond_0

    return-void

    .line 1718
    :cond_0
    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    const/4 v1, -0x2

    .line 1720
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1721
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v1, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1722
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1724
    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v0

    .line 1725
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1624
    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->b:I

    return v0
.end method

.method public final a(II)V
    .locals 0

    .line 1628
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->l:I

    .line 1629
    iput p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->m:I

    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 0

    .line 1612
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 1620
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->j:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 1616
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->i:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 2004
    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    const/4 v0, 0x0

    .line 2005
    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a(Z)Z

    return-void
.end method

.method public final onBufferingEnd()V
    .locals 3

    .line 1927
    :try_start_0
    invoke-super {p0}, Lcom/anythink/expressad/playercommon/DefaultVideoPlayerStatusListener;->onBufferingEnd()V

    .line 1932
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v1, 0xe

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1934
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final onBufferingStart(Ljava/lang/String;)V
    .locals 2

    .line 1912
    :try_start_0
    invoke-super {p0, p1}, Lcom/anythink/expressad/playercommon/DefaultVideoPlayerStatusListener;->onBufferingStart(Ljava/lang/String;)V

    .line 1917
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object p1, p1, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v0, 0xd

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1920
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final onPlayCompleted()V
    .locals 5

    .line 1730
    invoke-super {p0}, Lcom/anythink/expressad/playercommon/DefaultVideoPlayerStatusListener;->onPlayCompleted()V

    .line 1731
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->w(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z

    .line 1732
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    const-string v1, "0"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1733
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->i()I

    move-result v0

    if-lez v0, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    const-string v3, "anythink_reward_video_view_reward_time_complete"

    const-string v4, "string"

    invoke-static {v1, v3, v4}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1736
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1738
    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/c;->n(I)V

    .line 1739
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1740
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->x(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1741
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->y(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/widget/FeedBackButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1742
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->y(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/widget/FeedBackButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/widget/FeedBackButton;->setClickable(Z)V

    .line 1744
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->z(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/video/widget/SoundImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1745
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->z(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/video/widget/SoundImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/video/widget/SoundImageView;->setClickable(Z)V

    goto :goto_1

    .line 1749
    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1758
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->c(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/playercommon/PlayerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/playercommon/PlayerView;->setClickable(Z)V

    .line 1760
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b(Lcom/anythink/expressad/video/module/AnythinkVideoView;Z)Ljava/lang/String;

    move-result-object v0

    .line 1762
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 1764
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v2, :cond_5

    invoke-static {v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->A(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/video/dynview/f/a;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1766
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v2, v2, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampaignSize:I

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v3, v3, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrPlayNum:I

    if-le v2, v3, :cond_5

    .line 1767
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1768
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v1, v1, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrPlayNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "position"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v1, v1, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mMuteSwitch:I

    if-eqz v1, :cond_4

    .line 1770
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v1, v1, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mMuteSwitch:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mute"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    :cond_4
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->A(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/video/dynview/f/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/anythink/expressad/video/dynview/f/a;->a(Ljava/util/Map;)V

    return-void

    .line 1777
    :cond_5
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v2, v2, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v3, 0x79

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 1778
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v2, v2, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v3, 0xb

    invoke-interface {v2, v3, v0}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 1779
    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->c:I

    iput v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->b:I

    .line 1780
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iput v0, v2, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrentPlayProgressTime:I

    .line 1781
    invoke-static {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a(Z)Z

    return-void
.end method

.method public final onPlayError(Ljava/lang/String;)V
    .locals 2

    .line 1789
    invoke-super {p0, p1}, Lcom/anythink/expressad/playercommon/DefaultVideoPlayerStatusListener;->onPlayError(Ljava/lang/String;)V

    .line 1790
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 1791
    iget-object v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v1, 0xc

    invoke-interface {v0, v1, p1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onPlayProgress(II)V
    .locals 8

    .line 1797
    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/playercommon/DefaultVideoPlayerStatusListener;->onPlayProgress(II)V

    .line 1798
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-boolean v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->f:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 1800
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_0

    .line 1801
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->i()I

    move-result v0

    .line 1802
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;I)V

    .line 1805
    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v1

    const-string v2, "0"

    const-string v3, "anythink_reward_video_view_reward_time_complete"

    const-string v4, "anythink_reward_video_view_reward_time_left"

    const-string v5, "string"

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_6

    .line 1807
    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->B(Lcom/anythink/expressad/video/module/AnythinkVideoView;)I

    move-result v1

    .line 3951
    iget-object v6, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v6, :cond_d

    .line 3956
    invoke-virtual {v6}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3, v5}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3957
    iget-object v6, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v6}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4, v5}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-ltz v0, :cond_2

    sub-int/2addr v0, p1

    if-gtz v0, :cond_1

    goto :goto_0

    .line 3963
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    sub-int/2addr v1, p1

    if-gtz v1, :cond_3

    if-gtz v0, :cond_5

    goto :goto_1

    :cond_3
    if-gtz v0, :cond_4

    .line 3970
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    :goto_0
    move-object v2, v3

    .line 3973
    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->e:Lcom/anythink/expressad/video/module/AnythinkVideoView$a;

    iput p1, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;->a:I

    .line 3974
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3975
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->r(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->r(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 3976
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->r(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    .line 1809
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto/16 :goto_5

    .line 3982
    :cond_6
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v1, :cond_c

    if-le v0, p2, :cond_7

    move v0, p2

    :cond_7
    if-gtz v0, :cond_8

    sub-int v6, p2, p1

    goto :goto_2

    :cond_8
    sub-int v6, v0, p1

    :goto_2
    if-gtz v6, :cond_a

    if-gtz v0, :cond_9

    goto :goto_4

    .line 3992
    :cond_9
    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v5}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    goto :goto_4

    :cond_a
    if-gtz v0, :cond_b

    .line 3994
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v2, v0

    .line 3996
    :goto_4
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3998
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->r(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->r(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 3999
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->r(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1813
    :cond_c
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->e:Lcom/anythink/expressad/video/module/AnythinkVideoView$a;

    iput p1, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;->a:I

    .line 1816
    :cond_d
    :goto_5
    iput p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->c:I

    .line 1817
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iput p1, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrentPlayProgressTime:I

    .line 1818
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->e:Lcom/anythink/expressad/video/module/AnythinkVideoView$a;

    iput p1, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;->a:I

    .line 1819
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->e:Lcom/anythink/expressad/video/module/AnythinkVideoView$a;

    iput p2, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;->b:I

    .line 1820
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->e:Lcom/anythink/expressad/video/module/AnythinkVideoView$a;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->C(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$a;->c:Z

    .line 1821
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->b:I

    .line 1822
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->e:Lcom/anythink/expressad/video/module/AnythinkVideoView$a;

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 1840
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->d(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    .line 1841
    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->D(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    .line 1842
    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->j(Lcom/anythink/expressad/video/module/AnythinkVideoView;)I

    move-result v0

    sget v1, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v0, v1, :cond_e

    .line 1843
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->g(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    :cond_e
    const/4 v0, 0x1

    .line 1847
    :try_start_1
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v1, :cond_f

    invoke-static {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;

    move-result-object v1

    if-eqz v1, :cond_f

    mul-int/lit8 v1, p1, 0x64

    .line 1848
    div-int/2addr v1, p2

    .line 1849
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v3, v3, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrPlayNum:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v1, v3}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;->setProgress(II)V

    .line 1850
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/foundation/d/c;->n(I)V

    .line 1853
    :cond_f
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v1, :cond_10

    invoke-static {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->v(Lcom/anythink/expressad/video/module/AnythinkVideoView;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->v(Lcom/anythink/expressad/video/module/AnythinkVideoView;)I

    move-result v1

    if-ne p1, v1, :cond_10

    .line 1854
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v1, v1, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v1, v1, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1855
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCTALayoutVisibleOrGone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v1

    .line 1859
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1863
    :cond_10
    :goto_6
    iget v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->l:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_15

    iget-boolean v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->n:Z

    if-nez v3, :cond_15

    if-nez v1, :cond_11

    return-void

    .line 1868
    :cond_11
    iget v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->m:I

    if-le v3, v1, :cond_12

    .line 1869
    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->m:I

    .line 1872
    :cond_12
    iget v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->m:I

    if-ltz v1, :cond_15

    mul-int p2, p2, v1

    .line 1873
    div-int/2addr p2, v2

    if-lt p1, p2, :cond_15

    .line 1877
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result p1

    const/16 v1, 0x5e

    if-eq p1, v1, :cond_14

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result p1

    const/16 v1, 0x11f

    if-ne p1, v1, :cond_13

    goto :goto_7

    .line 1880
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 1878
    :cond_14
    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1882
    :goto_8
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/videocommon/b/c;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 1884
    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/b/c;->i()V

    .line 1885
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->n:Z

    .line 1886
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CDRate is : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and start download !"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    return-void
.end method

.method public final onPlaySetDataSourceError(Ljava/lang/String;)V
    .locals 0

    .line 1940
    invoke-super {p0, p1}, Lcom/anythink/expressad/playercommon/DefaultVideoPlayerStatusListener;->onPlaySetDataSourceError(Ljava/lang/String;)V

    return-void
.end method

.method public final onPlayStarted(I)V
    .locals 8

    .line 1638
    invoke-super {p0, p1}, Lcom/anythink/expressad/playercommon/DefaultVideoPlayerStatusListener;->onPlayStarted(I)V

    .line 1639
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1640
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    .line 1641
    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->q(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z

    .line 1643
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget-object v0, v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->e:Lcom/anythink/expressad/video/module/AnythinkVideoView$a;

    invoke-interface {v0, v2, v3}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 1644
    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->d:Z

    .line 1646
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 1647
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->i()I

    move-result v0

    .line 1648
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v3

    const-string v4, "anythink_reward_shape_progress"

    const-string v5, "anythink_reward_video_time_count_num_bg"

    const-string v6, "drawable"

    if-eqz v3, :cond_5

    .line 2695
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v3, :cond_7

    invoke-static {v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 2698
    :cond_2
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v3

    const/4 v7, 0x5

    if-ne v3, v7, :cond_3

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    iget v3, v3, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrPlayNum:I

    if-le v3, v1, :cond_3

    if-gtz v0, :cond_3

    .line 2699
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5, v6}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2700
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->d()V

    goto/16 :goto_0

    :cond_3
    if-lez v0, :cond_4

    .line 2704
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->d()V

    move-object v4, v5

    .line 2708
    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v6}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_5
    if-lez v0, :cond_6

    .line 3676
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v6}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3677
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v4, v5}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3678
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v3

    .line 3679
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v4

    const-string v5, "anythink_native_endcard_feed_btn"

    const-string v6, "id"

    invoke-static {v4, v5, v6}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3680
    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3681
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3682
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3684
    :cond_6
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v6}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1655
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->r(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1656
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->r(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1658
    :cond_8
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 1659
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->s(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1661
    :cond_9
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    .line 1662
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->u(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    .line 1664
    :cond_a
    invoke-static {v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a(Z)Z

    .line 1667
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->v(Lcom/anythink/expressad/video/module/AnythinkVideoView;)I

    move-result p1

    if-nez p1, :cond_b

    .line 1668
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCTALayoutVisibleOrGone()V

    .line 1670
    :cond_b
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->showMoreOfferInPlayTemplate()V

    .line 1671
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->showBaitClickView()V

    return-void
.end method

.method public final onVideoDownloadResume()V
    .locals 3

    .line 1896
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v0

    const/16 v1, 0x5e

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v0

    const/16 v1, 0x11f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1899
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1897
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->k:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1901
    :goto_1
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/e;->a()Lcom/anythink/expressad/videocommon/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/anythink/expressad/videocommon/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/videocommon/b/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1903
    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/b/c;->i()V

    const/4 v0, 0x1

    .line 1904
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->n:Z

    :cond_2
    return-void
.end method
