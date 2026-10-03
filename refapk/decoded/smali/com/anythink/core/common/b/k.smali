.class public final Lcom/anythink/core/common/b/k;
.super Lcom/anythink/core/api/ATAdInfo;


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private D:I

.field private E:Ljava/lang/String;

.field private F:D

.field private a:Lcom/anythink/core/api/ATBaseAdAdapter;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:D

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Double;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 73
    invoke-direct {p0}, Lcom/anythink/core/api/ATAdInfo;-><init>()V

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/anythink/core/common/b/k;->b:I

    const-string v1, ""

    .line 75
    iput-object v1, p0, Lcom/anythink/core/common/b/k;->c:Ljava/lang/String;

    .line 76
    iput v0, p0, Lcom/anythink/core/common/b/k;->d:I

    const-wide/16 v2, 0x0

    .line 77
    iput-wide v2, p0, Lcom/anythink/core/common/b/k;->e:D

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/anythink/core/common/b/k;->f:I

    .line 80
    iput-object v1, p0, Lcom/anythink/core/common/b/k;->g:Ljava/lang/String;

    .line 81
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/core/common/b/k;->h:Ljava/lang/Double;

    .line 82
    iput-object v1, p0, Lcom/anythink/core/common/b/k;->i:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/anythink/core/common/b/k;->j:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/anythink/core/common/b/k;->k:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/anythink/core/common/b/k;->l:Ljava/lang/String;

    const-string v2, "unknow"

    .line 87
    iput-object v2, p0, Lcom/anythink/core/common/b/k;->m:Ljava/lang/String;

    const-string v2, "Network"

    .line 88
    iput-object v2, p0, Lcom/anythink/core/common/b/k;->n:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/anythink/core/common/b/k;->o:Ljava/lang/String;

    const/4 v2, 0x1

    .line 90
    iput v2, p0, Lcom/anythink/core/common/b/k;->p:I

    .line 92
    iput v0, p0, Lcom/anythink/core/common/b/k;->q:I

    .line 93
    iput-object v1, p0, Lcom/anythink/core/common/b/k;->r:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/anythink/core/common/b/k;->s:Ljava/lang/String;

    .line 95
    iput v0, p0, Lcom/anythink/core/common/b/k;->t:I

    .line 97
    iput-object v1, p0, Lcom/anythink/core/common/b/k;->u:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/anythink/core/common/b/k;->v:Ljava/lang/String;

    const/4 v3, 0x0

    .line 99
    iput-object v3, p0, Lcom/anythink/core/common/b/k;->w:Ljava/util/Map;

    .line 101
    iput-object v1, p0, Lcom/anythink/core/common/b/k;->y:Ljava/lang/String;

    .line 102
    iput v0, p0, Lcom/anythink/core/common/b/k;->z:I

    .line 103
    iput-object v1, p0, Lcom/anythink/core/common/b/k;->A:Ljava/lang/String;

    .line 105
    iput v0, p0, Lcom/anythink/core/common/b/k;->B:I

    .line 106
    iput v2, p0, Lcom/anythink/core/common/b/k;->D:I

    .line 107
    iput-object v1, p0, Lcom/anythink/core/common/b/k;->E:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/anythink/core/api/BaseAd;)Lcom/anythink/core/common/b/k;
    .locals 1

    if-eqz p0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/anythink/core/api/BaseAd;->getDetail()Lcom/anythink/core/common/f/h;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/k;->a(Lcom/anythink/core/common/f/h;)Lcom/anythink/core/common/b/k;

    move-result-object v0

    .line 277
    invoke-virtual {p0}, Lcom/anythink/core/api/BaseAd;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Lcom/anythink/core/common/b/k;->x:Ljava/util/Map;

    return-object v0

    .line 280
    :cond_0
    new-instance p0, Lcom/anythink/core/common/b/k;

    invoke-direct {p0}, Lcom/anythink/core/common/b/k;-><init>()V

    return-object p0
.end method

.method public static a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/k;
    .locals 1

    if-eqz p0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/k;->a(Lcom/anythink/core/common/f/h;)Lcom/anythink/core/common/b/k;

    move-result-object v0

    .line 269
    invoke-static {v0, p0}, Lcom/anythink/core/common/b/k;->a(Lcom/anythink/core/common/b/k;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/k;

    move-result-object p0

    return-object p0

    .line 271
    :cond_0
    new-instance p0, Lcom/anythink/core/common/b/k;

    invoke-direct {p0}, Lcom/anythink/core/common/b/k;-><init>()V

    return-object p0
.end method

.method private static a(Lcom/anythink/core/common/b/k;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/k;
    .locals 1

    if-eqz p1, :cond_0

    .line 301
    instance-of v0, p1, Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v0, :cond_0

    .line 302
    check-cast p1, Lcom/anythink/core/api/ATBaseAdAdapter;

    iput-object p1, p0, Lcom/anythink/core/common/b/k;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 303
    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/b/k;->x:Ljava/util/Map;

    :cond_0
    return-object p0
.end method

.method private static a(Lcom/anythink/core/common/b/k;Lcom/anythink/core/common/f/h;)Lcom/anythink/core/common/b/k;
    .locals 5

    .line 309
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->M()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/b/k;->b:I

    .line 310
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/k;->c:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->F()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/b/k;->d:I

    .line 313
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->A()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/b/k;->f:I

    .line 315
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->k()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/b/k;->e:D

    .line 317
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/b/k;->F:D

    .line 319
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/k;->i:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/k;->g:Ljava/lang/String;

    .line 323
    iget-wide v0, p0, Lcom/anythink/core/common/b/k;->e:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/k;->h:Ljava/lang/Double;

    .line 325
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/k;->j:Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/o/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/k;->l:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->b()Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, ""

    .line 344
    :goto_1
    iput-object v0, p0, Lcom/anythink/core/common/b/k;->k:Ljava/lang/String;

    .line 345
    iput-object v1, p0, Lcom/anythink/core/common/b/k;->E:Ljava/lang/String;

    .line 353
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/k;->m:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->M()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    const-string v0, "Cross_Promotion"

    .line 357
    iput-object v0, p0, Lcom/anythink/core/common/b/k;->n:Ljava/lang/String;

    goto :goto_2

    .line 358
    :cond_2
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->M()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_3

    const-string v0, "Adx"

    .line 359
    iput-object v0, p0, Lcom/anythink/core/common/b/k;->n:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v0, "Network"

    .line 361
    iput-object v0, p0, Lcom/anythink/core/common/b/k;->n:Ljava/lang/String;

    .line 364
    :goto_2
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/k;->o:Ljava/lang/String;

    .line 365
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->r()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/b/k;->p:I

    .line 366
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->N()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/b/k;->q:I

    .line 1529
    iget-object v0, p1, Lcom/anythink/core/common/f/h;->B:Ljava/lang/String;

    .line 367
    iput-object v0, p0, Lcom/anythink/core/common/b/k;->r:Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->l:Ljava/lang/String;

    const-string v1, "RewardedVideo"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 371
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->v()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 372
    iget-object v1, p0, Lcom/anythink/core/common/b/k;->r:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 373
    iget-object v1, p0, Lcom/anythink/core/common/b/k;->r:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/api/ATRewardInfo;

    if-eqz v0, :cond_4

    .line 375
    iget-object v1, v0, Lcom/anythink/core/api/ATRewardInfo;->rewardName:Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/core/common/b/k;->s:Ljava/lang/String;

    .line 376
    iget v0, v0, Lcom/anythink/core/api/ATRewardInfo;->rewardNumber:I

    iput v0, p0, Lcom/anythink/core/common/b/k;->t:I

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/anythink/core/common/b/k;->t:I

    if-nez v0, :cond_6

    .line 381
    :cond_5
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->w()Lcom/anythink/core/api/ATRewardInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 383
    iget-object v1, v0, Lcom/anythink/core/api/ATRewardInfo;->rewardName:Ljava/lang/String;

    iput-object v1, p0, Lcom/anythink/core/common/b/k;->s:Ljava/lang/String;

    .line 384
    iget v0, v0, Lcom/anythink/core/api/ATRewardInfo;->rewardNumber:I

    iput v0, p0, Lcom/anythink/core/common/b/k;->t:I

    .line 390
    :cond_6
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/k;->v:Ljava/lang/String;

    .line 391
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/k;->u:Ljava/lang/String;

    .line 392
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->x()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/k;->w:Ljava/util/Map;

    .line 395
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/k;->y:Ljava/lang/String;

    .line 398
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->R()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/b/k;->z:I

    .line 400
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->V()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/k;->A:Ljava/lang/String;

    .line 402
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->aa()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/b/k;->B:I

    .line 405
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->e()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 407
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/anythink/core/common/b/k;->C:Ljava/util/Map;

    .line 411
    :cond_7
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->d()I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/b/k;->D:I

    return-object p0
.end method

.method private static a(Lcom/anythink/core/common/f/h;)Lcom/anythink/core/common/b/k;
    .locals 1

    .line 293
    new-instance v0, Lcom/anythink/core/common/b/k;

    invoke-direct {v0}, Lcom/anythink/core/common/b/k;-><init>()V

    if-eqz p0, :cond_0

    .line 295
    invoke-static {v0, p0}, Lcom/anythink/core/common/b/k;->a(Lcom/anythink/core/common/b/k;Lcom/anythink/core/common/f/h;)Lcom/anythink/core/common/b/k;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/k;
    .locals 0

    .line 287
    invoke-static {p0}, Lcom/anythink/core/common/b/k;->a(Lcom/anythink/core/common/f/h;)Lcom/anythink/core/common/b/k;

    move-result-object p0

    .line 289
    invoke-static {p0, p1}, Lcom/anythink/core/common/b/k;->a(Lcom/anythink/core/common/b/k;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getABTestId()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/anythink/core/common/b/k;->B:I

    return v0
.end method

.method public final getAdNetworkType()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdsourceId()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdsourceIndex()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/anythink/core/common/b/k;->d:I

    return v0
.end method

.method public final getBidFloor()D
    .locals 2

    .line 257
    iget-wide v0, p0, Lcom/anythink/core/common/b/k;->F:D

    return-wide v0
.end method

.method public final getChannel()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomRule()Ljava/lang/String;
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->w:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/anythink/core/common/b/k;->w:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getDismissType()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/anythink/core/common/b/k;->z:I

    return v0
.end method

.method public final getEcpm()D
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/anythink/core/common/b/k;->e:D

    return-wide v0
.end method

.method public final getEcpmLevel()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/anythink/core/common/b/k;->p:I

    return v0
.end method

.method public final getEcpmPrecision()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtInfoMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->x:Ljava/util/Map;

    return-object v0
.end method

.method public final getLocalExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->C:Ljava/util/Map;

    return-object v0
.end method

.method public final getNetworkFirmId()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/anythink/core/common/b/k;->b:I

    return v0
.end method

.method public final getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlacementType()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/anythink/core/common/b/k;->D:I

    return v0
.end method

.method public final getPublisherRevenue()Ljava/lang/Double;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->h:Ljava/lang/Double;

    return-object v0
.end method

.method public final getRewardUserCustomData()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUserCustomData()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getScenarioId()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final getScenarioRewardName()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final getScenarioRewardNumber()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/anythink/core/common/b/k;->t:I

    return v0
.end method

.method public final getSegmentId()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/anythink/core/common/b/k;->q:I

    return v0
.end method

.method public final getSharedPlacementId()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->E:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowId()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubChannel()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopOnAdFormat()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopOnPlacementId()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final getTpBidId()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final getWaterfallId()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/anythink/core/common/b/k;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final isHeaderBiddingAdsource()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/anythink/core/common/b/k;->f:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 419
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 421
    iget-object v2, p0, Lcom/anythink/core/common/b/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "publisher_revenue"

    .line 422
    iget-object v2, p0, Lcom/anythink/core/common/b/k;->h:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "currency"

    .line 423
    iget-object v2, p0, Lcom/anythink/core/common/b/k;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "country"

    .line 424
    iget-object v2, p0, Lcom/anythink/core/common/b/k;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adunit_id"

    .line 425
    iget-object v2, p0, Lcom/anythink/core/common/b/k;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adunit_format"

    .line 427
    iget-object v2, p0, Lcom/anythink/core/common/b/k;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "precision"

    .line 428
    iget-object v2, p0, Lcom/anythink/core/common/b/k;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network_type"

    .line 429
    iget-object v2, p0, Lcom/anythink/core/common/b/k;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "network_placement_id"

    .line 430
    iget-object v2, p0, Lcom/anythink/core/common/b/k;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ecpm_level"

    .line 431
    iget v2, p0, Lcom/anythink/core/common/b/k;->p:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "segment_id"

    .line 433
    iget v2, p0, Lcom/anythink/core/common/b/k;->q:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 434
    iget-object v1, p0, Lcom/anythink/core/common/b/k;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "scenario_id"

    .line 435
    iget-object v2, p0, Lcom/anythink/core/common/b/k;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/anythink/core/common/b/k;->s:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/anythink/core/common/b/k;->t:I

    if-eqz v1, :cond_1

    const-string v1, "scenario_reward_name"

    .line 439
    iget-object v2, p0, Lcom/anythink/core/common/b/k;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "scenario_reward_number"

    .line 440
    iget v2, p0, Lcom/anythink/core/common/b/k;->t:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/anythink/core/common/b/k;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "channel"

    .line 444
    iget-object v2, p0, Lcom/anythink/core/common/b/k;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    :cond_2
    iget-object v1, p0, Lcom/anythink/core/common/b/k;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "sub_channel"

    .line 447
    iget-object v2, p0, Lcom/anythink/core/common/b/k;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    :cond_3
    iget-object v1, p0, Lcom/anythink/core/common/b/k;->w:Ljava/util/Map;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "custom_rule"

    .line 450
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/anythink/core/common/b/k;->w:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v1, "network_firm_id"

    .line 452
    iget v2, p0, Lcom/anythink/core/common/b/k;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "adsource_id"

    .line 454
    iget-object v2, p0, Lcom/anythink/core/common/b/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adsource_index"

    .line 455
    iget v2, p0, Lcom/anythink/core/common/b/k;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "adsource_price"

    .line 456
    iget-wide v2, p0, Lcom/anythink/core/common/b/k;->e:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "adsource_isheaderbidding"

    .line 457
    iget v2, p0, Lcom/anythink/core/common/b/k;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 459
    iget-object v1, p0, Lcom/anythink/core/common/b/k;->x:Ljava/util/Map;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "ext_info"

    .line 460
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/anythink/core/common/b/k;->x:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    :cond_5
    iget-object v1, p0, Lcom/anythink/core/common/b/k;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v1, :cond_6

    const-string v2, "reward_custom_data"

    .line 464
    invoke-virtual {v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUserCustomData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    :cond_6
    iget-object v1, p0, Lcom/anythink/core/common/b/k;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "tp_bid_id"

    .line 468
    iget-object v2, p0, Lcom/anythink/core/common/b/k;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    :cond_7
    iget v1, p0, Lcom/anythink/core/common/b/k;->z:I

    if-eqz v1, :cond_8

    const-string v2, "dismiss_type"

    .line 472
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 475
    :cond_8
    iget-object v1, p0, Lcom/anythink/core/common/b/k;->A:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "wf_id"

    .line 476
    iget-object v2, p0, Lcom/anythink/core/common/b/k;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    const-string v1, "abtest_id"

    .line 480
    iget v2, p0, Lcom/anythink/core/common/b/k;->B:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 482
    iget-object v1, p0, Lcom/anythink/core/common/b/k;->C:Ljava/util/Map;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_a

    const-string v1, "user_load_extra_data"

    .line 483
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/anythink/core/common/b/k;->C:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    const-string v1, "placement_type"

    .line 486
    iget v2, p0, Lcom/anythink/core/common/b/k;->D:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 487
    iget-object v1, p0, Lcom/anythink/core/common/b/k;->E:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "shared_placement_id"

    .line 488
    iget-object v2, p0, Lcom/anythink/core/common/b/k;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    const-string v1, "bid_floor"

    .line 491
    iget-wide v2, p0, Lcom/anythink/core/common/b/k;->F:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 494
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 497
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
