.class public Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;
.super Lcom/anythink/expressad/video/module/AnythinkBaseView;

# interfaces
.implements Lcom/anythink/expressad/video/signal/f;


# static fields
.field private static final n:Ljava/lang/String; = "anythink_reward_endcard_native_hor"

.field private static final o:Ljava/lang/String; = "anythink_reward_endcard_native_land"

.field private static final p:Ljava/lang/String; = "anythink_reward_endcard_native_half_portrait"

.field private static final q:Ljava/lang/String; = "anythink_reward_endcard_native_half_landscape"


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/LinearLayout;

.field private F:Lcom/anythink/expressad/widget/FeedBackButton;

.field private G:Ljava/lang/Runnable;

.field private H:Landroid/widget/RelativeLayout;

.field private I:Lcom/anythink/expressad/video/signal/factory/b;

.field private J:Z

.field private K:Z

.field private L:I

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Landroid/view/animation/AlphaAnimation;

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:Z

.field private V:Landroid/view/View;

.field private W:Landroid/widget/TextView;

.field private aa:Z

.field private ab:Ljava/lang/String;

.field private ac:Lcom/anythink/expressad/foundation/d/d;

.field private ad:Lcom/anythink/expressad/shake/MBShakeView;

.field private ae:Lcom/anythink/expressad/shake/b;

.field private af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

.field private ag:I

.field private r:Landroid/view/ViewGroup;

.field private s:Landroid/view/ViewGroup;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->J:Z

    .line 105
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->K:Z

    .line 106
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->L:I

    .line 107
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->M:Z

    .line 108
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->N:Z

    .line 109
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->O:Z

    .line 113
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const/4 p1, 0x1

    .line 135
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ag:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->J:Z

    .line 105
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->K:Z

    .line 106
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->L:I

    .line 107
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->M:Z

    .line 108
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->N:Z

    .line 109
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->O:Z

    .line 113
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const/4 p1, 0x1

    .line 135
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ag:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ZIZII)V
    .locals 0

    .line 150
    invoke-direct/range {p0 .. p7}, Lcom/anythink/expressad/video/module/AnythinkBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ZIZII)V

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->J:Z

    .line 105
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->K:Z

    .line 106
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->L:I

    .line 107
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->M:Z

    .line 108
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->N:Z

    .line 109
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->O:Z

    .line 113
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const/4 p1, 0x1

    .line 135
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ag:I

    return-void
.end method

.method static synthetic a(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;Lcom/anythink/expressad/shake/b;)Lcom/anythink/expressad/shake/b;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ae:Lcom/anythink/expressad/shake/b;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 208
    new-instance v0, Lcom/anythink/expressad/video/dynview/j/c;

    invoke-direct {v0}, Lcom/anythink/expressad/video/dynview/j/c;-><init>()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->j:I

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/video/dynview/j/c;->a(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;I)Lcom/anythink/expressad/video/dynview/c;

    move-result-object v0

    .line 209
    invoke-static {}, Lcom/anythink/expressad/video/dynview/b;->a()Lcom/anythink/expressad/video/dynview/b;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$10;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$10;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-static {v0, v1}, Lcom/anythink/expressad/video/dynview/b;->a(Lcom/anythink/expressad/video/dynview/c;Lcom/anythink/expressad/video/dynview/f/h;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->setLayout()V

    .line 434
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->I:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 439
    :cond_1
    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->addView(Landroid/view/View;)V

    .line 440
    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b(Landroid/view/View;)Z

    .line 441
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->c()V

    .line 444
    :goto_0
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->h()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;I)V
    .locals 2

    const/4 v0, 0x0

    .line 14538
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14539
    :try_start_1
    sget-object v0, Lcom/anythink/expressad/foundation/g/a;->ce:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->a(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14541
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const-string p1, "camp_position"

    const/4 v0, 0x0

    .line 14542
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 14545
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    .line 14547
    :cond_0
    :goto_1
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 p1, 0x69

    invoke-interface {p0, p1, v1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Z
    .locals 1

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->K:Z

    return v0
.end method

.method static synthetic a(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;Landroid/view/View;)Z
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    return p1
.end method

.method static synthetic b(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/view/View;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->V:Landroid/view/View;

    return-object p0
.end method

.method private b()V
    .locals 6

    .line 5591
    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ag:I

    const-string v1, "anythink_reward_endcard_native_half_landscape"

    const-string v2, "anythink_reward_endcard_native_land"

    const-string v3, "anythink_reward_endcard_native_half_portrait"

    const-string v4, "anythink_reward_endcard_native_hor"

    if-nez v0, :cond_1

    .line 5592
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 5593
    :goto_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5594
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    .line 5598
    iget-boolean v5, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v4

    goto :goto_1

    :cond_3
    const-string v3, ""

    :goto_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    .line 5601
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    move-object v3, v1

    .line 5604
    :cond_5
    invoke-virtual {p0, v3}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->findLayout(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    .line 6448
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->isLandscape()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 6449
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->s:Landroid/view/ViewGroup;

    .line 6450
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->addView(Landroid/view/View;)V

    .line 6451
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->s:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b(Landroid/view/View;)Z

    move-result v0

    goto :goto_3

    .line 6453
    :cond_6
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r:Landroid/view/ViewGroup;

    .line 6454
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->addView(Landroid/view/View;)V

    .line 6455
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b(Landroid/view/View;)Z

    move-result v0

    .line 233
    :goto_3
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->f:Z

    .line 234
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->e()V

    :cond_7
    return-void
.end method

.method private b(I)Z
    .locals 2

    .line 448
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->isLandscape()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->s:Landroid/view/ViewGroup;

    .line 450
    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->addView(Landroid/view/View;)V

    .line 451
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->s:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r:Landroid/view/ViewGroup;

    .line 454
    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->addView(Landroid/view/View;)V

    .line 455
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method private b(Landroid/view/View;)Z
    .locals 9

    const/4 v0, 0x0

    .line 552
    :try_start_0
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_native_ec_layout"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->t:Landroid/widget/RelativeLayout;

    .line 553
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_native_ec_layer_layout"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->u:Landroid/widget/RelativeLayout;

    .line 554
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_iv_adbanner"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->w:Landroid/widget/ImageView;

    .line 555
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_iv_icon"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->x:Landroid/widget/ImageView;

    .line 556
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_iv_flag"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->y:Landroid/widget/ImageView;

    .line 557
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_iv_link"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->z:Landroid/widget/ImageView;

    .line 558
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_tv_apptitle"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->B:Landroid/widget/TextView;

    .line 559
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_sv_starlevel"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->E:Landroid/widget/LinearLayout;

    .line 561
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_iv_close"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->V:Landroid/view/View;

    .line 562
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_tv_cta"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 563
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 564
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->W:Landroid/widget/TextView;

    .line 566
    :cond_0
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_native_endcard_feed_btn"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/widget/FeedBackButton;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->F:Lcom/anythink/expressad/widget/FeedBackButton;

    .line 567
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_native_ec_controller"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->H:Landroid/widget/RelativeLayout;

    .line 568
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v2, "anythink_iv_adbanner_bg"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->v:Landroid/widget/ImageView;

    .line 569
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->i:Z

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x6

    if-eqz v1, :cond_3

    .line 570
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->w:Landroid/widget/ImageView;

    const/16 v1, 0xa

    if-eqz p1, :cond_1

    instance-of v8, p1, Lcom/anythink/expressad/videocommon/view/RoundImageView;

    if-eqz v8, :cond_1

    .line 571
    check-cast p1, Lcom/anythink/expressad/videocommon/view/RoundImageView;

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/videocommon/view/RoundImageView;->setBorderRadius(I)V

    .line 573
    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->x:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    instance-of v8, p1, Lcom/anythink/expressad/videocommon/view/RoundImageView;

    if-eqz v8, :cond_2

    .line 574
    check-cast p1, Lcom/anythink/expressad/videocommon/view/RoundImageView;

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/videocommon/view/RoundImageView;->setBorderRadius(I)V

    :cond_2
    new-array p1, v7, [Landroid/view/View;

    .line 576
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->v:Landroid/widget/ImageView;

    aput-object v1, p1, v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->w:Landroid/widget/ImageView;

    aput-object v1, p1, v6

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->x:Landroid/widget/ImageView;

    aput-object v1, p1, v5

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->B:Landroid/widget/TextView;

    aput-object v1, p1, v4

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->E:Landroid/widget/LinearLayout;

    aput-object v1, p1, v3

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->V:Landroid/view/View;

    aput-object v1, p1, v2

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->isNotNULL([Landroid/view/View;)Z

    move-result p1

    return p1

    .line 578
    :cond_3
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v8, "anythink_tv_appdesc"

    invoke-virtual {p0, v1, v8}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->C:Landroid/widget/TextView;

    .line 579
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    const-string v8, "anythink_tv_number"

    invoke-virtual {p0, v1, v8}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->D:Landroid/widget/TextView;

    const/16 v1, 0x9

    new-array v1, v1, [Landroid/view/View;

    .line 580
    iget-object v8, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->v:Landroid/widget/ImageView;

    aput-object v8, v1, v0

    iget-object v8, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->w:Landroid/widget/ImageView;

    aput-object v8, v1, v6

    iget-object v6, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->x:Landroid/widget/ImageView;

    aput-object v6, v1, v5

    iget-object v5, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->B:Landroid/widget/TextView;

    aput-object v5, v1, v4

    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->C:Landroid/widget/TextView;

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->E:Landroid/widget/LinearLayout;

    aput-object p1, v1, v7

    const/4 p1, 0x7

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->V:Landroid/view/View;

    aput-object v2, v1, p1

    const/16 p1, 0x8

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->W:Landroid/widget/TextView;

    aput-object v2, v1, p1

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->isNotNULL([Landroid/view/View;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 584
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return v0
.end method

.method static synthetic b(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->O:Z

    return p1
.end method

.method private c(I)V
    .locals 2

    const/4 v0, 0x0

    .line 538
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 539
    :try_start_1
    sget-object v0, Lcom/anythink/expressad/foundation/g/a;->ce:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->a(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 541
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const-string p1, "camp_position"

    const/4 v0, 0x0

    .line 542
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 545
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    .line 547
    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v0, 0x69

    invoke-interface {p1, v0, v1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->e()V

    return-void
.end method

.method static synthetic d(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->w:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->v:Landroid/widget/ImageView;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 255
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->c()V

    .line 256
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->f:Z

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v1, 0x68

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 259
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->P:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    .line 260
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-void
.end method

.method static synthetic f(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->y:Landroid/widget/ImageView;

    return-object p0
.end method

.method private f()V
    .locals 5

    .line 267
    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$11;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$11;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    .line 300
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->be()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    .line 301
    new-instance v0, Lcom/anythink/expressad/video/module/a/a/j;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->x:Landroid/widget/ImageView;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a/j;-><init>(Landroid/widget/ImageView;I)V

    .line 302
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->bd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    .line 303
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->bb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->W:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    .line 9175
    iget-object v1, v1, Lcom/anythink/expressad/out/j;->cU:Ljava/lang/String;

    .line 306
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 309
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->bc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->aY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 315
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aX()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_3

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 319
    :cond_3
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->E:Landroid/widget/LinearLayout;

    instance-of v3, v2, Lcom/anythink/expressad/videocommon/view/StarLevelView;

    if-eqz v3, :cond_4

    .line 320
    check-cast v2, Lcom/anythink/expressad/videocommon/view/StarLevelView;

    invoke-virtual {v2, v0, v1}, Lcom/anythink/expressad/videocommon/view/StarLevelView;->initScore(D)V

    .line 322
    :cond_4
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->E:Landroid/widget/LinearLayout;

    instance-of v3, v2, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    if-eqz v3, :cond_5

    .line 323
    check-cast v2, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->aY()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;->setRatingAndUser(DI)V

    .line 333
    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alecfc=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 334
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->J:Z

    .line 344
    :cond_6
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aE()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "https://mores.toponad.com/image/default/mintegral_logo.png"

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aE()Ljava/lang/String;

    move-result-object v0

    .line 346
    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$12;

    invoke-direct {v2, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$12;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v1, v0, v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    .line 372
    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    .line 373
    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/d/b;->b()Lcom/anythink/expressad/d/a;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_9

    .line 375
    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->J()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 377
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->z:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    :cond_8
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->z:Landroid/widget/ImageView;

    new-instance v3, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$13;

    invoke-direct {v3, p0, v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$13;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 386
    :cond_9
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    :goto_1
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->K:Z

    if-nez v0, :cond_a

    .line 389
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->V:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 392
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v0, v2, :cond_b

    .line 393
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 394
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method private g()I
    .locals 6

    .line 591
    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ag:I

    const-string v1, "anythink_reward_endcard_native_half_landscape"

    const-string v2, "anythink_reward_endcard_native_land"

    const-string v3, "anythink_reward_endcard_native_half_portrait"

    const-string v4, "anythink_reward_endcard_native_hor"

    if-nez v0, :cond_1

    .line 592
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 593
    :goto_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 594
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    .line 598
    iget-boolean v5, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v4

    goto :goto_1

    :cond_3
    const-string v3, ""

    :goto_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    .line 601
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    move-object v3, v1

    .line 604
    :cond_5
    invoke-virtual {p0, v3}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->findLayout(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->J:Z

    return p0
.end method

.method static synthetic h(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->Q:I

    return p0
.end method

.method private h()V
    .locals 4

    .line 653
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->H:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 654
    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->S:I

    return p0
.end method

.method private i()V
    .locals 4

    .line 672
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    .line 675
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$4;

    invoke-direct {v3, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$4;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/f/a;)V

    .line 692
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)V

    .line 693
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/f/b;->c(Ljava/lang/String;)V

    .line 694
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->F:Lcom/anythink/expressad/widget/FeedBackButton;

    invoke-virtual {v0, v1, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/widget/FeedBackButton;)V

    .line 695
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->F:Lcom/anythink/expressad/widget/FeedBackButton;

    if-eqz v0, :cond_1

    .line 696
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->F:Lcom/anythink/expressad/widget/FeedBackButton;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/widget/FeedBackButton;)V

    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->F:Lcom/anythink/expressad/widget/FeedBackButton;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 700
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/widget/FeedBackButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic j(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->R:I

    return p0
.end method

.method private j()V
    .locals 6

    .line 775
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_c

    .line 776
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    .line 780
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 781
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "1"

    const-string v2, "shake_strength"

    .line 784
    invoke-static {v0, v2}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "shake_time"

    .line 785
    invoke-static {v0, v3}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 787
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    if-eqz v1, :cond_2

    return-void

    .line 790
    :cond_2
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    if-eqz v1, :cond_3

    const/16 v3, 0x8

    .line 791
    invoke-virtual {v1, v3}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->setVisibility(I)V

    .line 793
    :cond_3
    new-instance v1, Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/anythink/expressad/shake/MBShakeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    .line 794
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    .line 14175
    iget-object v3, v3, Lcom/anythink/expressad/out/j;->cU:Ljava/lang/String;

    const/4 v4, 0x1

    .line 794
    invoke-virtual {v1, v3, v4}, Lcom/anythink/expressad/shake/MBShakeView;->initView(Ljava/lang/String;Z)V

    .line 796
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 798
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->isLandscape()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "anythink_iv_logo"

    .line 799
    invoke-virtual {p0, v3}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    .line 800
    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xe

    .line 801
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 802
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v5, v4}, Lcom/anythink/expressad/shake/MBShakeView;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    const/16 v3, 0xd

    .line 804
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 807
    :goto_0
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {v3, v1}, Lcom/anythink/expressad/shake/MBShakeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->t:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_5

    return-void

    .line 813
    :cond_5
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    .line 817
    :cond_6
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->W:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 818
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->t:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 821
    :cond_7
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->W:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 823
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    new-instance v3, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$5;

    invoke-direct {v3, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$5;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/shake/MBShakeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0xa

    if-nez v1, :cond_9

    .line 832
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_8

    goto :goto_1

    :cond_8
    move v3, v1

    .line 837
    :cond_9
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x1388

    if-nez v1, :cond_b

    .line 838
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_a

    goto :goto_2

    :cond_a
    mul-int/lit16 v0, v0, 0x3e8

    move v2, v0

    .line 842
    :cond_b
    :goto_2
    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$6;

    invoke-direct {v0, p0, v3, v2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$6;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;II)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ae:Lcom/anythink/expressad/shake/b;

    .line 868
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$7;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$7;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/shake/MBShakeView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    .line 896
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method static synthetic k(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->T:I

    return p0
.end method

.method private k()V
    .locals 3

    .line 902
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_3

    .line 903
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    .line 908
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 909
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "bait_click"

    .line 912
    invoke-static {v0, v1}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    .line 915
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 917
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 920
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 921
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    if-eqz v0, :cond_2

    return-void

    .line 924
    :cond_2
    new-instance v0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    const/high16 v2, 0x50000000

    .line 925
    invoke-virtual {v0, v2, v1}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->init(II)V

    .line 927
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 928
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 930
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->u:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 931
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 932
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->startAnimation()V

    .line 937
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$8;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$8;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    :cond_3
    return-void

    :catchall_1
    move-exception v0

    .line 946
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method static synthetic l(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->H:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private l()V
    .locals 3

    .line 952
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_2

    .line 953
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    .line 957
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 958
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "alac"

    .line 960
    invoke-static {v0, v1}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 961
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 963
    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$9;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$9;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 972
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method static synthetic m(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->P:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->K:Z

    return p0
.end method

.method static synthetic o(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V
    .locals 4

    .line 14672
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14673
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    .line 14675
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$4;

    invoke-direct {v3, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$4;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/f/a;)V

    .line 14692
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)V

    .line 14693
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/f/b;->c(Ljava/lang/String;)V

    .line 14694
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->F:Lcom/anythink/expressad/widget/FeedBackButton;

    invoke-virtual {v0, v1, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/widget/FeedBackButton;)V

    .line 14695
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->F:Lcom/anythink/expressad/widget/FeedBackButton;

    if-eqz v0, :cond_1

    .line 14696
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->F:Lcom/anythink/expressad/widget/FeedBackButton;

    invoke-virtual {v0, v1, p0}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/widget/FeedBackButton;)V

    return-void

    .line 14699
    :cond_0
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->F:Lcom/anythink/expressad/widget/FeedBackButton;

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    .line 14700
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/widget/FeedBackButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic p(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->O:Z

    return p0
.end method

.method static synthetic q(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->N:Z

    return p0
.end method

.method static synthetic r(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Lcom/anythink/expressad/shake/b;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ae:Lcom/anythink/expressad/shake/b;

    return-object p0
.end method


# virtual methods
.method public blurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 611
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 614
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    .line 617
    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    .line 620
    invoke-static {v1, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 621
    invoke-static {v1, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v3

    const/high16 v4, 0x41c80000    # 25.0f

    .line 624
    invoke-virtual {v2, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 627
    invoke-virtual {v2, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 628
    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 631
    invoke-virtual {v3, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 634
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final c()V
    .locals 2

    .line 461
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->f:Z

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->t:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$14;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$14;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->V:Landroid/view/View;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$15;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$15;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->W:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 490
    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$16;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$16;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->x:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$17;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$17;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->w:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$2;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$2;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public canBackPress()Z
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->V:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearMoreOfferBitmap()V
    .locals 3

    .line 717
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ac:Lcom/anythink/expressad/foundation/d/d;

    if-eqz v0, :cond_1

    .line 11374
    iget-object v0, v0, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ac:Lcom/anythink/expressad/foundation/d/d;

    .line 12374
    iget-object v0, v0, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    .line 718
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ac:Lcom/anythink/expressad/foundation/d/d;

    .line 13374
    iget-object v0, v0, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    .line 719
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    .line 720
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->bd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 721
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v2

    .line 722
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->bd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/foundation/g/d/b;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public isDyXmlSuccess()Z
    .locals 1

    .line 977
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->U:Z

    return v0
.end method

.method public notifyShowListener()V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v1, 0x6e

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .line 155
    invoke-super {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->onAttachedToWindow()V

    .line 156
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->G:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$1;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$1;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->G:Ljava/lang/Runnable;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->G:Ljava/lang/Runnable;

    const-string v1, "1"

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 168
    iget v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->L:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {p0, v0, v3, v4}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->N:Z

    if-nez v0, :cond_1

    .line 171
    iput-boolean v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->N:Z

    .line 1952
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_4

    .line 1953
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1956
    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    .line 1957
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1958
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v3, "alac"

    .line 1960
    invoke-static {v0, v3}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1961
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1963
    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$9;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$9;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v0, v3, v4}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1972
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2902
    :cond_4
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_8

    .line 2903
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 2907
    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    .line 2908
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2909
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v3, "bait_click"

    .line 2912
    invoke-static {v0, v3}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2915
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    .line 2917
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const/4 v3, 0x1

    .line 2920
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v3, :cond_8

    .line 2921
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    if-eqz v0, :cond_7

    goto :goto_2

    .line 2924
    :cond_7
    new-instance v0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    const/high16 v4, 0x50000000

    .line 2925
    invoke-virtual {v0, v4, v3}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->init(II)V

    .line 2927
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2928
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {v3, v0}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2930
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->u:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_8

    .line 2931
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2932
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->startAnimation()V

    .line 2937
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    new-instance v3, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$8;

    invoke-direct {v3, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$8;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 2946
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 3775
    :cond_8
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_15

    .line 3776
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 3779
    :cond_9
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v0

    .line 3780
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3781
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v0

    :cond_a
    const-string v3, "shake_strength"

    .line 3784
    invoke-static {v0, v3}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "shake_time"

    .line 3785
    invoke-static {v0, v4}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3786
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 3787
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    if-eqz v1, :cond_b

    return-void

    .line 3790
    :cond_b
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->af:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    if-eqz v1, :cond_c

    const/16 v4, 0x8

    .line 3791
    invoke-virtual {v1, v4}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->setVisibility(I)V

    .line 3793
    :cond_c
    new-instance v1, Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/anythink/expressad/shake/MBShakeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    .line 3794
    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    .line 4175
    iget-object v4, v4, Lcom/anythink/expressad/out/j;->cU:Ljava/lang/String;

    .line 3794
    invoke-virtual {v1, v4, v2}, Lcom/anythink/expressad/shake/MBShakeView;->initView(Ljava/lang/String;Z)V

    .line 3796
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3798
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->isLandscape()Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "anythink_iv_logo"

    .line 3799
    invoke-virtual {p0, v2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->findID(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    .line 3800
    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xe

    .line 3801
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3802
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v5, v4}, Lcom/anythink/expressad/shake/MBShakeView;->setPadding(IIII)V

    goto :goto_3

    :cond_d
    const/16 v2, 0xd

    .line 3804
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3807
    :goto_3
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/shake/MBShakeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3809
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->t:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_e

    return-void

    .line 3813
    :cond_e
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    .line 3817
    :cond_f
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->W:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    .line 3818
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->t:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 3821
    :cond_10
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->W:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3823
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    new-instance v2, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$5;

    invoke-direct {v2, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$5;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/shake/MBShakeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3831
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0xa

    if-nez v1, :cond_12

    .line 3832
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_11

    goto :goto_4

    :cond_11
    move v2, v1

    .line 3837
    :cond_12
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x1388

    if-nez v1, :cond_14

    .line 3838
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_13

    goto :goto_5

    :cond_13
    mul-int/lit16 v0, v0, 0x3e8

    move v3, v0

    .line 3842
    :cond_14
    :goto_5
    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$6;

    invoke-direct {v0, p0, v2, v3}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$6;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;II)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ae:Lcom/anythink/expressad/shake/b;

    .line 3868
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$7;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$7;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/shake/MBShakeView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_15
    return-void

    :catchall_3
    move-exception v0

    .line 3896
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 182
    invoke-super {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->onDetachedFromWindow()V

    .line 183
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->G:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ae:Lcom/anythink/expressad/shake/b;

    if-eqz v0, :cond_1

    .line 187
    invoke-static {}, Lcom/anythink/expressad/shake/a;->a()Lcom/anythink/expressad/shake/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ae:Lcom/anythink/expressad/shake/b;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/shake/a;->b(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ae:Lcom/anythink/expressad/shake/b;

    :cond_1
    return-void
.end method

.method public onSelfConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 402
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->onSelfConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 403
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->H:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 409
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 411
    :cond_1
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->d:I

    .line 412
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " native onSelfConfigurationChanged:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 414
    iget p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->d:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 415
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->removeView(Landroid/view/View;)V

    .line 416
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->s:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->a(Landroid/view/View;)V

    return-void

    .line 418
    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->s:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->removeView(Landroid/view/View;)V

    .line 419
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->a(Landroid/view/View;)V

    return-void
.end method

.method public preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V
    .locals 4

    .line 240
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->I:Lcom/anythink/expressad/video/signal/factory/b;

    .line 242
    :try_start_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->f:Z

    if-eqz p1, :cond_b

    .line 7267
    new-instance p1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$11;

    invoke-direct {p1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$11;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    .line 7300
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->be()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    .line 7301
    new-instance p1, Lcom/anythink/expressad/video/module/a/a/j;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->x:Landroid/widget/ImageView;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/anythink/expressad/video/module/a/a/j;-><init>(Landroid/widget/ImageView;I)V

    .line 7302
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->bd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    .line 7303
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->B:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->bb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7305
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->W:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 7306
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    .line 8175
    iget-object v0, v0, Lcom/anythink/expressad/out/j;->cU:Ljava/lang/String;

    .line 7306
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7308
    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->C:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 7309
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->bc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7311
    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->D:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 7312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7314
    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->E:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 7315
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aX()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_3

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 7319
    :cond_3
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->E:Landroid/widget/LinearLayout;

    instance-of v2, p1, Lcom/anythink/expressad/videocommon/view/StarLevelView;

    if-eqz v2, :cond_4

    .line 7320
    check-cast p1, Lcom/anythink/expressad/videocommon/view/StarLevelView;

    invoke-virtual {p1, v0, v1}, Lcom/anythink/expressad/videocommon/view/StarLevelView;->initScore(D)V

    .line 7322
    :cond_4
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->E:Landroid/widget/LinearLayout;

    instance-of v2, p1, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    if-eqz v2, :cond_5

    .line 7323
    check-cast p1, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->aY()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;->setRatingAndUser(DI)V

    .line 7333
    :cond_5
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object p1

    const-string v0, "alecfc=1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 7334
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->J:Z

    .line 7344
    :cond_6
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aE()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "https://mores.toponad.com/image/default/mintegral_logo.png"

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aE()Ljava/lang/String;

    move-result-object p1

    .line 7346
    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$12;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$12;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-virtual {v0, p1, v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    .line 7372
    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    .line 7373
    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/d/b;->b()Lcom/anythink/expressad/d/a;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_9

    .line 7375
    invoke-virtual {p1}, Lcom/anythink/expressad/d/a;->J()Ljava/lang/String;

    move-result-object p1

    .line 7376
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7377
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->z:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7379
    :cond_8
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->z:Landroid/widget/ImageView;

    new-instance v2, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$13;

    invoke-direct {v2, p0, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$13;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 7386
    :cond_9
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->z:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7388
    :goto_1
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->K:Z

    if-nez p1, :cond_a

    .line 7389
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->V:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7392
    :cond_a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge p1, v1, :cond_b

    .line 7393
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->v:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    .line 7394
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    return-void

    :catchall_0
    move-exception p1

    .line 246
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public release()V
    .locals 1

    .line 731
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->removeAllViews()V

    .line 732
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->P:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 735
    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ae:Lcom/anythink/expressad/shake/b;

    .line 736
    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->G:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 738
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public setCloseBtnDelay(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->L:I

    return-void
.end method

.method public setLayout()V
    .locals 6

    .line 197
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->i:Z

    if-eqz v0, :cond_0

    .line 4208
    new-instance v0, Lcom/anythink/expressad/video/dynview/j/c;

    invoke-direct {v0}, Lcom/anythink/expressad/video/dynview/j/c;-><init>()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->j:I

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/video/dynview/j/c;->a(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;I)Lcom/anythink/expressad/video/dynview/c;

    move-result-object v0

    .line 4209
    invoke-static {}, Lcom/anythink/expressad/video/dynview/b;->a()Lcom/anythink/expressad/video/dynview/b;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$10;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$10;-><init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    invoke-static {v0, v1}, Lcom/anythink/expressad/video/dynview/b;->a(Lcom/anythink/expressad/video/dynview/c;Lcom/anythink/expressad/video/dynview/f/h;)V

    return-void

    .line 4591
    :cond_0
    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ag:I

    const-string v1, "anythink_reward_endcard_native_half_landscape"

    const-string v2, "anythink_reward_endcard_native_land"

    const-string v3, "anythink_reward_endcard_native_half_portrait"

    const-string v4, "anythink_reward_endcard_native_hor"

    if-nez v0, :cond_2

    .line 4592
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 4593
    :goto_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4594
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    if-ne v0, v5, :cond_4

    .line 4598
    iget-boolean v5, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v4

    goto :goto_1

    :cond_4
    const-string v3, ""

    :goto_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    .line 4601
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->aa:Z

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, v2

    :goto_2
    move-object v3, v1

    .line 4604
    :cond_6
    invoke-virtual {p0, v3}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->findLayout(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    .line 5448
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->isLandscape()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 5449
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->s:Landroid/view/ViewGroup;

    .line 5450
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->addView(Landroid/view/View;)V

    .line 5451
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->s:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b(Landroid/view/View;)Z

    move-result v0

    goto :goto_3

    .line 5453
    :cond_7
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r:Landroid/view/ViewGroup;

    .line 5454
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->addView(Landroid/view/View;)V

    .line 5455
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->r:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b(Landroid/view/View;)Z

    move-result v0

    .line 4233
    :goto_3
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->f:Z

    .line 4234
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->e()V

    :cond_8
    return-void
.end method

.method public setMoreOfferCampaignUnit(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ac:Lcom/anythink/expressad/foundation/d/d;

    if-eqz p1, :cond_0

    .line 9374
    iget-object p1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 708
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ac:Lcom/anythink/expressad/foundation/d/d;

    .line 10374
    iget-object p1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    .line 708
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    .line 709
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ad:Lcom/anythink/expressad/shake/MBShakeView;

    if-eqz p1, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/anythink/expressad/shake/MBShakeView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setNotchPadding(IIII)V
    .locals 4

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NOTCH NativeEndCard "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "%1s-%2s-%3s-%4s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->Q:I

    .line 645
    iput p2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->R:I

    .line 646
    iput p3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->S:I

    .line 647
    iput p4, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->T:I

    .line 649
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->h()V

    return-void
.end method

.method public setOnPause()V
    .locals 1

    const/4 v0, 0x0

    .line 770
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->N:Z

    return-void
.end method

.method public setOnResume()V
    .locals 1

    const/4 v0, 0x1

    .line 766
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->N:Z

    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->ab:Ljava/lang/String;

    return-void
.end method
