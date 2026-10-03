.class public Lcom/anythink/basead/ui/FullScreenATView;
.super Lcom/anythink/basead/ui/BaseScreenATView;


# static fields
.field public static final TAG:Ljava/lang/String; = "FullScreenATView"


# instance fields
.field private ad:Lcom/anythink/basead/ui/CountDownCloseView;

.field private ae:Lcom/anythink/basead/ui/CloseHeaderView;

.field private af:Lcom/anythink/basead/ui/PanelView;

.field private ag:Lcom/anythink/basead/ui/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/BaseScreenATView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;II)V
    .locals 0

    .line 70
    invoke-direct/range {p0 .. p6}, Lcom/anythink/basead/ui/BaseScreenATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;II)V

    .line 72
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p4, "myoffer_full_screen_view_id"

    const-string p5, "id"

    invoke-static {p1, p4, p5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/FullScreenATView;->setId(I)V

    if-eqz p2, :cond_0

    .line 74
    new-instance p1, Lcom/anythink/basead/ui/d/a;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-direct {p1, p3, p2}, Lcom/anythink/basead/ui/d/a;-><init>(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/FullScreenATView;->ag:Lcom/anythink/basead/ui/d/a;

    :cond_0
    return-void
.end method

.method private S()V
    .locals 8

    .line 342
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 344
    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v2, v0}, Lcom/anythink/basead/ui/BaseEndCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4544
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v0}, Lcom/anythink/basead/a/d;->b(Lcom/anythink/core/common/f/l;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->K:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    return-void

    .line 356
    :cond_0
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/FullScreenATView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 357
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->P()Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    .line 358
    iget v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    if-eq v3, v5, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_2

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    .line 424
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->D()I

    move-result v1

    if-eqz v1, :cond_6

    .line 426
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getShakeView()Landroid/view/View;

    move-result-object v0

    .line 427
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_6

    .line 429
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1
    if-eqz v0, :cond_6

    const/16 v1, 0x8

    .line 433
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 360
    :cond_2
    iget v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->y:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 361
    iget v4, p0, Lcom/anythink/basead/ui/FullScreenATView;->y:I

    sub-int/2addr v4, v3

    .line 363
    iget-object v5, p0, Lcom/anythink/basead/ui/FullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Lcom/anythink/basead/ui/BaseEndCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_6

    .line 369
    iget v4, p0, Lcom/anythink/basead/ui/FullScreenATView;->x:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 370
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 372
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->removeAllViews()V

    .line 374
    iget v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    goto/16 :goto_1

    .line 406
    :cond_3
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x43960000    # 300.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 407
    iget v4, p0, Lcom/anythink/basead/ui/FullScreenATView;->x:I

    sub-int/2addr v4, v3

    .line 409
    iget-object v5, p0, Lcom/anythink/basead/ui/FullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Lcom/anythink/basead/ui/BaseEndCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_6

    .line 414
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 415
    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 417
    invoke-virtual {v0, v4}, Lcom/anythink/basead/ui/PanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->removeAllViews()V

    .line 419
    iget v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    goto :goto_1

    .line 378
    :cond_4
    iget-object v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 380
    iget v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->y:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 381
    iget-object v4, p0, Lcom/anythink/basead/ui/FullScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 382
    iget v4, p0, Lcom/anythink/basead/ui/FullScreenATView;->y:I

    sub-int/2addr v4, v3

    goto :goto_0

    .line 384
    :cond_5
    iget v4, p0, Lcom/anythink/basead/ui/FullScreenATView;->y:I

    sub-int/2addr v4, v3

    .line 385
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x42480000    # 50.0f

    .line 384
    invoke-static {v6, v7}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v4, v6

    .line 388
    :goto_0
    iget-object v6, p0, Lcom/anythink/basead/ui/FullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Lcom/anythink/basead/ui/BaseEndCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v1, v5}, Lcom/anythink/basead/ui/BaseEndCardView;->setNeedArc(Z)V

    .line 393
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_6

    .line 395
    iget v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->x:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 396
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 398
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->removeAllViews()V

    .line 400
    iget v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    .line 441
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->K:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private T()V
    .locals 7

    .line 495
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->H:Z

    if-eqz v0, :cond_2

    .line 496
    new-instance v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/anythink/core/common/ui/component/RoundImageView;-><init>(Landroid/content/Context;)V

    .line 498
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "myoffer_reward_icon"

    const-string v4, "drawable"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 497
    invoke-virtual {v0, v2}, Lcom/anythink/core/common/ui/component/RoundImageView;->setImageResource(I)V

    .line 499
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 500
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 501
    iget v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    invoke-virtual {p0, v3}, Lcom/anythink/basead/ui/FullScreenATView;->b(I)Z

    move-result v3

    const/4 v4, 0x2

    const/high16 v5, 0x41400000    # 12.0f

    if-eqz v3, :cond_1

    .line 502
    iget v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    if-eq v3, v4, :cond_0

    const/4 v6, 0x6

    if-eq v3, v6, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 513
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 505
    :cond_0
    iget v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->x:I

    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x43a50000    # 330.0f

    invoke-static {v5, v6}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v3, v5

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 507
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-static {v3, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 517
    :cond_1
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 518
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 520
    :goto_0
    invoke-virtual {v0, v2}, Lcom/anythink/core/common/ui/component/RoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    :try_start_0
    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenATView;->K:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v2, 0x1

    .line 526
    :catchall_0
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method private U()Z
    .locals 3

    .line 614
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->F:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private V()Z
    .locals 3

    .line 642
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->F:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->F:I

    const/16 v2, 0x65

    if-ne v0, v2, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private W()Z
    .locals 1

    .line 647
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->N()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/anythink/basead/ui/FullScreenATView;)V
    .locals 0

    .line 52
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->Q()V

    return-void
.end method

.method static synthetic b(Lcom/anythink/basead/ui/FullScreenATView;)Lcom/anythink/basead/ui/PanelView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    return-object p0
.end method


# virtual methods
.method protected final A()V
    .locals 3

    .line 118
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->A()V

    .line 120
    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenATView;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->F:I

    const/16 v1, 0x65

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/CloseHeaderView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CloseHeaderView;->getCloseImageView()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CloseHeaderView;->getCloseImageView()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/CloseImageView;->setVisibility(I)V

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ad:Lcom/anythink/basead/ui/CountDownCloseView;

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/CountDownCloseView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected final B()V
    .locals 8

    .line 446
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 448
    iget-boolean v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->r:Z

    if-eqz v0, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->D()V

    return-void

    .line 454
    :cond_0
    iget-boolean v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->G:Z

    if-eqz v0, :cond_1

    .line 455
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->D()V

    return-void

    .line 461
    :cond_1
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->v:I

    if-ne v1, v0, :cond_4

    iget-boolean v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->H:Z

    if-nez v0, :cond_4

    .line 463
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->k()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 465
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getVideoLength()J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    move-wide v2, v4

    :cond_2
    double-to-int v0, v2

    .line 472
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/anythink/basead/ui/FullScreenATView$3;

    invoke-direct {v3, p0}, Lcom/anythink/basead/ui/FullScreenATView$3;-><init>(Lcom/anythink/basead/ui/FullScreenATView;)V

    .line 482
    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenATView;->U()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x2

    .line 475
    :cond_3
    invoke-static {v2, v0, v3, v1}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;I)V

    return-void

    .line 486
    :cond_4
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->C()V

    .line 487
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 488
    iput-boolean v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->r:Z

    .line 490
    :cond_5
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->q()V

    return-void
.end method

.method protected final E()V
    .locals 1

    .line 140
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->E()V

    .line 141
    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenATView;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->I()V

    :cond_0
    return-void
.end method

.method protected final F()V
    .locals 2

    .line 193
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->F()V

    .line 194
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->F:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/MuteImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected G()V
    .locals 1

    .line 732
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->G()V

    .line 734
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ag:Lcom/anythink/basead/ui/d/a;

    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {v0}, Lcom/anythink/basead/ui/d/a;->a()V

    :cond_0
    return-void
.end method

.method protected final H()V
    .locals 1

    .line 741
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->H()V

    .line 743
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ag:Lcom/anythink/basead/ui/d/a;

    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {v0}, Lcom/anythink/basead/ui/d/a;->b()V

    :cond_0
    return-void
.end method

.method protected K()V
    .locals 8

    .line 310
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->K:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseEndCardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    .line 311
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->b:Lcom/anythink/core/common/f/m;

    invoke-static {v0, v1}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2342
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2344
    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v2, v0}, Lcom/anythink/basead/ui/BaseEndCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2544
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v0}, Lcom/anythink/basead/a/d;->b(Lcom/anythink/core/common/f/l;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 2356
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/FullScreenATView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2357
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->P()Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    .line 2358
    iget v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    const/4 v5, 0x5

    if-eq v3, v5, :cond_1

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    .line 2424
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->D()I

    move-result v1

    if-eqz v1, :cond_5

    .line 2426
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getShakeView()Landroid/view/View;

    move-result-object v0

    .line 2427
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_5

    .line 2429
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_0
    if-eqz v0, :cond_5

    const/16 v1, 0x8

    .line 2433
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 2360
    :cond_1
    iget v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->y:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 2361
    iget v4, p0, Lcom/anythink/basead/ui/FullScreenATView;->y:I

    sub-int/2addr v4, v3

    .line 2363
    iget-object v5, p0, Lcom/anythink/basead/ui/FullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Lcom/anythink/basead/ui/BaseEndCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2367
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_5

    .line 2369
    iget v4, p0, Lcom/anythink/basead/ui/FullScreenATView;->x:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2370
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2372
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2373
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->removeAllViews()V

    .line 2374
    iget v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    goto/16 :goto_1

    .line 2406
    :cond_2
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x43960000    # 300.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    .line 2407
    iget v4, p0, Lcom/anythink/basead/ui/FullScreenATView;->x:I

    sub-int/2addr v4, v3

    .line 2409
    iget-object v5, p0, Lcom/anythink/basead/ui/FullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Lcom/anythink/basead/ui/BaseEndCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2412
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_5

    .line 2414
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2415
    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2417
    invoke-virtual {v0, v4}, Lcom/anythink/basead/ui/PanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2418
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->removeAllViews()V

    .line 2419
    iget v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    goto :goto_1

    .line 2378
    :cond_3
    iget-object v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2380
    iget v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->y:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 2381
    iget-object v4, p0, Lcom/anythink/basead/ui/FullScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2382
    iget v4, p0, Lcom/anythink/basead/ui/FullScreenATView;->y:I

    sub-int/2addr v4, v3

    goto :goto_0

    .line 2384
    :cond_4
    iget v4, p0, Lcom/anythink/basead/ui/FullScreenATView;->y:I

    sub-int/2addr v4, v3

    .line 2385
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x42480000    # 50.0f

    .line 2384
    invoke-static {v6, v7}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v4, v6

    .line 2388
    :goto_0
    iget-object v6, p0, Lcom/anythink/basead/ui/FullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Lcom/anythink/basead/ui/BaseEndCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2391
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v1, v5}, Lcom/anythink/basead/ui/BaseEndCardView;->setNeedArc(Z)V

    .line 2393
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_5

    .line 2395
    iget v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->x:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2396
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2398
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2399
    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->removeAllViews()V

    .line 2400
    iget v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    .line 2441
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->K:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    return-void

    .line 315
    :cond_6
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->R()V

    :cond_7
    return-void
.end method

.method protected L()V
    .locals 7

    .line 272
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->L()V

    .line 1495
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->H:Z

    if-eqz v0, :cond_2

    .line 1496
    new-instance v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/anythink/core/common/ui/component/RoundImageView;-><init>(Landroid/content/Context;)V

    .line 1498
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "myoffer_reward_icon"

    const-string v4, "drawable"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1497
    invoke-virtual {v0, v2}, Lcom/anythink/core/common/ui/component/RoundImageView;->setImageResource(I)V

    .line 1499
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1500
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1501
    iget v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    invoke-virtual {p0, v3}, Lcom/anythink/basead/ui/FullScreenATView;->b(I)Z

    move-result v3

    const/4 v4, 0x2

    const/high16 v5, 0x41400000    # 12.0f

    if-eqz v3, :cond_1

    .line 1502
    iget v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    if-eq v3, v4, :cond_0

    const/4 v6, 0x6

    if-eq v3, v6, :cond_0

    .line 1512
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1513
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 1505
    :cond_0
    iget v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->x:I

    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x43a50000    # 330.0f

    invoke-static {v5, v6}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v3, v5

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1507
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-static {v3, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 1517
    :cond_1
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1518
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1520
    :goto_0
    invoke-virtual {v0, v2}, Lcom/anythink/core/common/ui/component/RoundImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1523
    :try_start_0
    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenATView;->K:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v2, 0x1

    .line 1526
    :catchall_0
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 1544
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v0}, Lcom/anythink/basead/a/d;->b(Lcom/anythink/core/common/f/l;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setVisibility(I)V

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    if-eqz v0, :cond_4

    .line 282
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method protected final M()Lcom/anythink/basead/ui/CloseImageView;
    .locals 2

    .line 575
    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenATView;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->F:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 577
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CloseHeaderView;->getCloseImageView()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CloseHeaderView;->getCloseImageView()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    return-object v0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ad:Lcom/anythink/basead/ui/CountDownCloseView;

    if-eqz v0, :cond_1

    return-object v0

    .line 587
    :cond_1
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    return-object v0
.end method

.method protected final O()Landroid/view/ViewGroup;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CloseHeaderView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CloseHeaderView;->getFeedbackButton()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CloseHeaderView;->getFeedbackButton()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0

    .line 596
    :cond_0
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->O()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected final P()Lcom/anythink/basead/ui/PanelView;
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->b:Lcom/anythink/core/common/f/m;

    invoke-static {v0, v1}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    if-eqz v0, :cond_0

    return-object v0

    .line 658
    :cond_0
    iget-boolean v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->G:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->F:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    if-eqz v0, :cond_1

    return-object v0

    .line 662
    :cond_1
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->P()Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    return-object v0
.end method

.method protected final Q()V
    .locals 5

    .line 668
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 672
    :cond_0
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->F:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_2

    .line 673
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 675
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 676
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getMeasuredWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 677
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 678
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 679
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 680
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 681
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0x12c

    .line 682
    invoke-virtual {v3, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 683
    new-instance v0, Lcom/anythink/basead/ui/FullScreenATView$4;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/FullScreenATView$4;-><init>(Lcom/anythink/basead/ui/FullScreenATView;)V

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 709
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0, v3}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 710
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 711
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0, v3}, Lcom/anythink/basead/ui/PanelView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void

    .line 715
    :cond_2
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->Q()V

    .line 717
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 718
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    .line 719
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method protected final R()V
    .locals 3

    .line 324
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 326
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v1, v0}, Lcom/anythink/basead/ui/BaseEndCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3544
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v0}, Lcom/anythink/basead/a/d;->b(Lcom/anythink/core/common/f/l;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->K:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    return-void

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->P()Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->K:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method protected a()V
    .locals 4

    .line 81
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_full_screen"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method protected final a(J)V
    .locals 3

    .line 4642
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->F:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->F:I

    const/16 v2, 0x65

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 602
    invoke-super {p0, p1, p2}, Lcom/anythink/basead/ui/BaseScreenATView;->a(J)V

    :cond_2
    return-void
.end method

.method protected final a(Ljava/lang/String;Lcom/anythink/core/api/IOfferClickHandler;)Z
    .locals 1

    .line 620
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 622
    iput-boolean v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->G:Z

    .line 623
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    check-cast v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->openInternalWebView(Ljava/lang/String;Lcom/anythink/core/api/IOfferClickHandler;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p2, 0x69

    .line 628
    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/FullScreenATView;->a(I)V

    .line 630
    iget-object p2, p0, Lcom/anythink/basead/ui/FullScreenATView;->ag:Lcom/anythink/basead/ui/d/a;

    if-eqz p2, :cond_0

    .line 631
    invoke-virtual {p2}, Lcom/anythink/basead/ui/d/a;->a()V

    :cond_0
    return p1

    .line 637
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/anythink/basead/ui/BaseScreenATView;->a(Ljava/lang/String;Lcom/anythink/core/api/IOfferClickHandler;)Z

    move-result p1

    return p1
.end method

.method protected b()V
    .locals 3

    .line 87
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->b()V

    .line 88
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ag:Lcom/anythink/basead/ui/d/a;

    if-eqz v0, :cond_1

    .line 94
    iget v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/16 v1, -0x65

    goto :goto_0

    :cond_0
    const/16 v1, -0x64

    .line 93
    :goto_0
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/d/a;->a(I)Lcom/anythink/basead/ui/d/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/ui/FullScreenATView$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/FullScreenATView$1;-><init>(Lcom/anythink/basead/ui/FullScreenATView;)V

    .line 95
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/d/a;->a(Lcom/anythink/basead/ui/c/a;)Lcom/anythink/basead/ui/d/a;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected final b(J)V
    .locals 1

    .line 544
    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenATView;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CloseHeaderView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/CloseHeaderView;->refresh(J)V

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ad:Lcom/anythink/basead/ui/CountDownCloseView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CountDownCloseView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ad:Lcom/anythink/basead/ui/CountDownCloseView;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/CountDownCloseView;->refresh(J)V

    return-void

    .line 552
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/anythink/basead/ui/BaseScreenATView;->b(J)V

    :cond_2
    return-void
.end method

.method protected b(I)Z
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/FullScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {p1}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;)Z

    move-result p1

    return p1
.end method

.method protected c()V
    .locals 3

    .line 106
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->c()V

    .line 109
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_btn_countdown_close_id"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 108
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/FullScreenATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/CountDownCloseView;

    iput-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ad:Lcom/anythink/basead/ui/CountDownCloseView;

    .line 111
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_btn_close_header_view_id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 110
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/FullScreenATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/CloseHeaderView;

    iput-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    .line 113
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_view_for_anim_player_id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 112
    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/FullScreenATView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/PanelView;

    iput-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    return-void
.end method

.method protected final c(I)V
    .locals 1

    .line 533
    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenATView;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object p1, p0, Lcom/anythink/basead/ui/FullScreenATView;->Q:Lcom/anythink/basead/ui/CloseImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/CloseImageView;->setVisibility(I)V

    .line 535
    iget-object p1, p0, Lcom/anythink/basead/ui/FullScreenATView;->P:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/CountDownView;->setVisibility(I)V

    return-void

    .line 537
    :cond_0
    invoke-super {p0, p1}, Lcom/anythink/basead/ui/BaseScreenATView;->c(I)V

    return-void
.end method

.method protected final c(J)V
    .locals 1

    .line 559
    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenATView;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CloseHeaderView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/CloseHeaderView;->setDuration(J)V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ad:Lcom/anythink/basead/ui/CountDownCloseView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CountDownCloseView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 564
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ad:Lcom/anythink/basead/ui/CountDownCloseView;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/CountDownCloseView;->setDuration(J)V

    return-void

    .line 567
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/anythink/basead/ui/BaseScreenATView;->c(J)V

    :cond_2
    return-void
.end method

.method protected final n()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final o()V
    .locals 4

    .line 153
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->o()V

    .line 155
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenATView;->U()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    iget v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->F:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_0

    .line 178
    new-instance v1, Lcom/anythink/basead/ui/animplayerview/EmptyAnimPlayer;

    invoke-direct {v1, v0}, Lcom/anythink/basead/ui/animplayerview/EmptyAnimPlayer;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 166
    :cond_0
    new-instance v1, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    invoke-direct {v1, v0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 172
    :cond_1
    new-instance v1, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;

    invoke-direct {v1, v0}, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 169
    :cond_2
    new-instance v1, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;

    invoke-direct {v1, v0}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 175
    :cond_3
    new-instance v1, Lcom/anythink/basead/ui/animplayerview/RedPacketAnimPlayerView;

    invoke-direct {v1, v0}, Lcom/anythink/basead/ui/animplayerview/RedPacketAnimPlayerView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 163
    :cond_4
    new-instance v1, Lcom/anythink/basead/ui/animplayerview/GuideToClickAnimPlayerView;

    invoke-direct {v1, v0}, Lcom/anythink/basead/ui/animplayerview/GuideToClickAnimPlayerView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 160
    :cond_5
    new-instance v1, Lcom/anythink/basead/ui/animplayerview/EmptyAnimPlayer;

    invoke-direct {v1, v0}, Lcom/anythink/basead/ui/animplayerview/EmptyAnimPlayer;-><init>(Landroid/content/Context;)V

    :goto_0
    const/16 v0, 0x8

    .line 182
    invoke-virtual {v1, v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 184
    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    .line 185
    invoke-virtual {v3}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 184
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 187
    iput-object v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    :cond_6
    return-void
.end method

.method protected final q()V
    .locals 1

    .line 4647
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->N()Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->q()V

    :cond_0
    return-void
.end method

.method protected r()I
    .locals 2

    .line 289
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 290
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    return v0

    .line 293
    :cond_0
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->x:I

    iget v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->y:I

    if-ge v0, v1, :cond_2

    .line 294
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ab:I

    iget v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->ac:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x5

    return v0

    .line 300
    :cond_2
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ab:I

    iget v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->ac:I

    if-ge v0, v1, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    const/4 v0, 0x6

    return v0
.end method

.method protected final w()V
    .locals 8

    .line 221
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 222
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setVisibility(I)V

    .line 223
    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    iget-object v3, p0, Lcom/anythink/basead/ui/FullScreenATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v4, p0, Lcom/anythink/basead/ui/FullScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget v5, p0, Lcom/anythink/basead/ui/FullScreenATView;->w:I

    .line 224
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->k()Z

    move-result v6

    new-instance v7, Lcom/anythink/basead/ui/FullScreenATView$2;

    invoke-direct {v7, p0}, Lcom/anythink/basead/ui/FullScreenATView$2;-><init>(Lcom/anythink/basead/ui/FullScreenATView;)V

    .line 223
    invoke-virtual/range {v2 .. v7}, Lcom/anythink/basead/ui/PanelView;->init(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;IZLcom/anythink/basead/ui/PanelView$a;)V

    .line 241
    :cond_0
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->w()V

    return-void
.end method

.method protected x()V
    .locals 3

    .line 246
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->x()V

    .line 247
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v0}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 249
    iput v1, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 251
    iput v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    iget v2, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    .line 257
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->D()I

    move-result v0

    if-nez v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getCTAButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    if-eqz v0, :cond_2

    .line 263
    iget v2, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    .line 264
    iget v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->E:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->D()I

    move-result v0

    if-nez v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getCTAButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
