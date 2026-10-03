.class public Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;
.super Lcom/anythink/basead/ui/BaseScreenATView;


# static fields
.field public static final TAG:Ljava/lang/String; = "ThirdPartyFullScreenATView"


# instance fields
.field ad:Landroid/view/View;

.field ae:Ljava/util/Timer;

.field private af:Lcom/anythink/core/api/BaseAd;

.field private final ag:Lcom/anythink/core/common/m/a;

.field private final ah:Lcom/anythink/core/common/m/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/BaseScreenATView;-><init>(Landroid/content/Context;)V

    .line 1016
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ag:Lcom/anythink/core/common/m/a;

    .line 48
    new-instance p1, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$1;-><init>(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ah:Lcom/anythink/core/common/m/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;IILcom/anythink/core/api/BaseAd;)V
    .locals 0

    .line 62
    invoke-direct/range {p0 .. p6}, Lcom/anythink/basead/ui/BaseScreenATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;II)V

    .line 2016
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ag:Lcom/anythink/core/common/m/a;

    .line 48
    new-instance p1, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$1;-><init>(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ah:Lcom/anythink/core/common/m/b;

    .line 63
    iput-object p7, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->af:Lcom/anythink/core/api/BaseAd;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p7, p1}, Lcom/anythink/core/api/BaseAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ad:Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "myoffer_thirdparty_full_screen_view_id"

    const-string p3, "id"

    invoke-static {p1, p2, p3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->setId(I)V

    return-void
.end method

.method private R()V
    .locals 5

    .line 171
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->C:I

    if-gez v0, :cond_0

    return-void

    .line 174
    :cond_0
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->C:I

    if-lez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ag:Lcom/anythink/core/common/m/a;

    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ah:Lcom/anythink/core/common/m/b;

    iget v2, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->C:I

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    return-void

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->J()V

    return-void
.end method

.method private S()V
    .locals 3

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->D()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/PanelView;->getClickViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/PanelView;->getCTAButton()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 213
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/PanelView;->getCTAButton()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_2
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/PanelView;->getClickViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    if-eqz v1, :cond_3

    .line 208
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->af:Lcom/anythink/core/api/BaseAd;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/anythink/core/api/BaseAd;->registerListener(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method private T()V
    .locals 6

    .line 396
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 398
    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v2, v0}, Lcom/anythink/basead/ui/BaseEndCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->E:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->b(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 406
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->E:I

    const/high16 v3, 0x3f000000    # 0.5f

    if-eq v0, v2, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getShakeView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 474
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 408
    :cond_1
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->y:I

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    .line 409
    iget v3, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->y:I

    sub-int/2addr v3, v0

    .line 411
    iget-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/anythink/basead/ui/BaseEndCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/PanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_5

    .line 417
    iget v3, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->x:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 418
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 420
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->removeAllViews()V

    .line 422
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    iget v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->E:I

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    goto/16 :goto_1

    .line 454
    :cond_2
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x43960000    # 300.0f

    invoke-static {v0, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    .line 455
    iget v3, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->x:I

    sub-int/2addr v3, v0

    .line 457
    iget-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/anythink/basead/ui/BaseEndCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    iget-object v3, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v3}, Lcom/anythink/basead/ui/PanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_5

    .line 462
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 463
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 465
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0, v3}, Lcom/anythink/basead/ui/PanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->removeAllViews()V

    .line 467
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    iget v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->E:I

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    goto :goto_1

    .line 426
    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 428
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->y:I

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    .line 429
    iget-object v3, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 430
    iget v3, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->y:I

    sub-int/2addr v3, v0

    goto :goto_0

    .line 432
    :cond_4
    iget v3, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->y:I

    sub-int/2addr v3, v0

    .line 433
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42480000    # 50.0f

    .line 432
    invoke-static {v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    add-int/2addr v3, v4

    .line 436
    :goto_0
    iget-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/anythink/basead/ui/BaseEndCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/BaseEndCardView;->setNeedArc(Z)V

    .line 441
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_5

    .line 443
    iget v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->x:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 444
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 446
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v1, v0}, Lcom/anythink/basead/ui/PanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->removeAllViews()V

    .line 448
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    iget v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->E:I

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    .line 482
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->K:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private U()V
    .locals 3

    .line 486
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 488
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v1, v0}, Lcom/anythink/basead/ui/BaseEndCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->P()Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->K:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private V()V
    .locals 7

    .line 520
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ae:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 521
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ae:Ljava/util/Timer;

    .line 522
    new-instance v2, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$6;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$6;-><init>(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x12c

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method private W()V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ae:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method private X()V
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ae:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 540
    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ae:Ljava/util/Timer;

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ag:Lcom/anythink/core/common/m/a;

    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ah:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    return-void
.end method

.method private Y()Z
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->af:Lcom/anythink/core/api/BaseAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getAdType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ad:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method static synthetic a(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;)V
    .locals 7

    .line 3520
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ae:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 3521
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ae:Ljava/util/Timer;

    .line 3522
    new-instance v2, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$6;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$6;-><init>(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x12c

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;I)V
    .locals 1

    .line 4182
    new-instance v0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;

    invoke-direct {v0, p0, p1}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;-><init>(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;I)V

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;)V
    .locals 0

    .line 3532
    iget-object p0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ae:Ljava/util/Timer;

    if-eqz p0, :cond_0

    .line 3533
    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;)Lcom/anythink/core/api/BaseAd;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->af:Lcom/anythink/core/api/BaseAd;

    return-object p0
.end method

.method private d(I)V
    .locals 1

    .line 182
    new-instance v0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;

    invoke-direct {v0, p0, p1}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;-><init>(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;I)V

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected final B()V
    .locals 0

    .line 502
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->D()V

    return-void
.end method

.method protected final J()V
    .locals 2

    .line 342
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->J()V

    .line 343
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ag:Lcom/anythink/core/common/m/a;

    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ah:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    return-void
.end method

.method protected final K()V
    .locals 6

    .line 384
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->K:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseEndCardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    .line 385
    invoke-direct {p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->Y()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_6

    .line 2396
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2398
    iget-object v3, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v3, v0}, Lcom/anythink/basead/ui/BaseEndCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2404
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->E:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2406
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->E:I

    const/high16 v3, 0x3f000000    # 0.5f

    if-eq v0, v1, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 2472
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getShakeView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2474
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 2408
    :cond_1
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->y:I

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    .line 2409
    iget v3, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->y:I

    sub-int/2addr v3, v0

    .line 2411
    iget-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/anythink/basead/ui/BaseEndCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2415
    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v2}, Lcom/anythink/basead/ui/PanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_5

    .line 2417
    iget v3, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->x:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2418
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2420
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/PanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2421
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->removeAllViews()V

    .line 2422
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    iget v2, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->E:I

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    goto/16 :goto_1

    .line 2454
    :cond_2
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x43960000    # 300.0f

    invoke-static {v0, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    .line 2455
    iget v3, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->x:I

    sub-int/2addr v3, v0

    .line 2457
    iget-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/anythink/basead/ui/BaseEndCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2460
    iget-object v3, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v3}, Lcom/anythink/basead/ui/PanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_5

    .line 2462
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2463
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2465
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0, v3}, Lcom/anythink/basead/ui/PanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2466
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->removeAllViews()V

    .line 2467
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    iget v2, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->E:I

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    goto :goto_1

    .line 2426
    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2428
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->y:I

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    .line 2429
    iget-object v3, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/l;->w()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2430
    iget v3, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->y:I

    sub-int/2addr v3, v0

    goto :goto_0

    .line 2432
    :cond_4
    iget v3, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->y:I

    sub-int/2addr v3, v0

    .line 2433
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42480000    # 50.0f

    .line 2432
    invoke-static {v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    add-int/2addr v3, v4

    .line 2436
    :goto_0
    iget-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/anythink/basead/ui/BaseEndCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2439
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseEndCardView;->setNeedArc(Z)V

    .line 2441
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_5

    .line 2443
    iget v2, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->x:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2444
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2446
    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v2, v0}, Lcom/anythink/basead/ui/PanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2447
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->removeAllViews()V

    .line 2448
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    iget v2, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->E:I

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    .line 2482
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->K:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 2486
    :cond_6
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2488
    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v2, v0}, Lcom/anythink/basead/ui/BaseEndCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2494
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->P()Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/PanelView;->setVisibility(I)V

    .line 2497
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->K:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 391
    :goto_2
    invoke-direct {p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->S()V

    :cond_7
    return-void
.end method

.method protected final L()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ad:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ad:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ad:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->P:Lcom/anythink/basead/ui/CountDownView;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->P:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/CountDownView;->setVisibility(I)V

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/MuteImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected final a()V
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_thirdparty_full_screen"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 71
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method protected final b(I)Z
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

    .line 315
    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {p1}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;)Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 2

    .line 507
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->destroy()V

    .line 2538
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ae:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2539
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 2540
    iput-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ae:Ljava/util/Timer;

    .line 2542
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ag:Lcom/anythink/core/common/m/a;

    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ah:Lcom/anythink/core/common/m/b;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/m/a;->b(Lcom/anythink/core/common/m/b;)V

    .line 510
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->af:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_1

    .line 511
    invoke-virtual {v0, p0}, Lcom/anythink/core/api/BaseAd;->clear(Landroid/view/View;)V

    .line 512
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->af:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->destroy()V

    :cond_1
    return-void
.end method

.method public init()V
    .locals 5

    .line 79
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->b()V

    .line 81
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->E:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->D:Z

    .line 83
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->af:Lcom/anythink/core/api/BaseAd;

    new-instance v1, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$2;-><init>(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/api/BaseAd;->setNativeEventListener(Lcom/anythink/core/common/b/m;)V

    .line 145
    iget-boolean v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->G:Z

    if-nez v0, :cond_2

    .line 147
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->v:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_3

    const/4 v0, 0x3

    .line 158
    iget v2, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->v:I

    if-ne v0, v2, :cond_3

    .line 160
    invoke-direct {p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->Y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->p()V

    .line 2171
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->C:I

    if-ltz v0, :cond_1

    .line 2174
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->C:I

    if-lez v0, :cond_0

    .line 2175
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ag:Lcom/anythink/core/common/m/a;

    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ah:Lcom/anythink/core/common/m/b;

    iget v3, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->C:I

    int-to-long v3, v3

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    return-void

    .line 2177
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->J()V

    :cond_1
    return-void

    .line 164
    :cond_2
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->q()V

    :cond_3
    return-void
.end method

.method protected final p()V
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ad:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->K:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ad:Landroid/view/View;

    const/4 v2, 0x0

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->af:Lcom/anythink/core/api/BaseAd;

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->getVideoDuration()D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->c(J)V

    .line 235
    invoke-virtual {p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->F()V

    .line 236
    invoke-direct {p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->S()V

    :cond_0
    return-void
.end method

.method protected final r()I
    .locals 2

    .line 364
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->E:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 365
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->E:I

    return v0

    .line 367
    :cond_0
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->x:I

    iget v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->y:I

    if-ge v0, v1, :cond_2

    .line 368
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->W:I

    iget v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->aa:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x5

    return v0

    .line 374
    :cond_2
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->W:I

    iget v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->aa:I

    if-ge v0, v1, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    const/4 v0, 0x6

    return v0
.end method

.method protected final v()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    invoke-static {}, Lcom/anythink/basead/a/e;->a()Lcom/anythink/basead/a/e;

    const/4 v1, 0x2

    .line 352
    invoke-static {v1, v0}, Lcom/anythink/basead/a/e;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Lcom/anythink/core/common/o/c;->a(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 354
    aget v1, v0, v1

    iput v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ab:I

    const/4 v1, 0x1

    .line 355
    aget v0, v0, v1

    iput v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ac:I

    .line 356
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ab:I

    iput v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->W:I

    .line 357
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ac:I

    iput v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->aa:I

    :cond_0
    return-void
.end method

.method protected final w()V
    .locals 8

    .line 243
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setVisibility(I)V

    .line 245
    iget-object v2, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    iget-object v3, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v4, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget v5, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->w:I

    const/4 v6, 0x0

    new-instance v7, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$4;

    invoke-direct {v7, p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$4;-><init>(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;)V

    invoke-virtual/range {v2 .. v7}, Lcom/anythink/basead/ui/PanelView;->init(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;IZLcom/anythink/basead/ui/PanelView$a;)V

    :cond_0
    return-void
.end method

.method protected final x()V
    .locals 4

    .line 261
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->x()V

    .line 263
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v0}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 266
    iput v2, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->E:I

    goto :goto_0

    .line 268
    :cond_0
    iput v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->E:I

    .line 270
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    iget v3, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->E:I

    invoke-virtual {v0, v3}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    .line 271
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->E:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->D()I

    move-result v0

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getCTAButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected final z()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    iget-boolean v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->I:Z

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/MuteImageView;->setMute(Z)V

    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/MuteImageView;->setMute(Z)V

    .line 290
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/MuteImageView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    new-instance v1, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$5;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$5;-><init>(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/MuteImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
