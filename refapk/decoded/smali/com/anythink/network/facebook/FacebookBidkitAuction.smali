.class public Lcom/anythink/network/facebook/FacebookBidkitAuction;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/network/facebook/FacebookBidkitAuction$a;,
        Lcom/anythink/network/facebook/FacebookBidkitAuction$b;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:I

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/biddingkit/waterfall/WaterfallEntry;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/facebook/biddingkit/auction/Auction;

.field g:Lcom/anythink/core/common/f/a;

.field h:Lcom/facebook/biddingkit/auction/Auction$Builder;

.field i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/lang/String;

.field k:Lcom/anythink/core/api/MediationBidManager$BidListener;

.field l:Landroid/os/Handler;

.field m:Ljava/lang/Runnable;

.field private final n:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/anythink/core/common/f/a;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->n:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/anythink/network/facebook/FacebookBidkitAuction$1;

    invoke-direct {v0, p0}, Lcom/anythink/network/facebook/FacebookBidkitAuction$1;-><init>(Lcom/anythink/network/facebook/FacebookBidkitAuction;)V

    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->m:Ljava/lang/Runnable;

    .line 86
    iget-object v0, p1, Lcom/anythink/core/common/f/a;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->a:Landroid/content/Context;

    .line 87
    iget v0, p1, Lcom/anythink/core/common/f/a;->f:I

    iput v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->b:I

    .line 88
    iget-object v0, p1, Lcom/anythink/core/common/f/a;->j:Ljava/util/List;

    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->c:Ljava/util/List;

    .line 89
    iget-object v0, p1, Lcom/anythink/core/common/f/a;->y:Lcom/anythink/core/common/p/h;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/anythink/core/common/f/a;->y:Lcom/anythink/core/common/p/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/p/h;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->d:Ljava/util/List;

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->d:Ljava/util/List;

    .line 93
    :cond_1
    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->g:Lcom/anythink/core/common/f/a;

    .line 95
    new-instance p1, Lcom/facebook/biddingkit/auction/Auction$Builder;

    invoke-direct {p1}, Lcom/facebook/biddingkit/auction/Auction$Builder;-><init>()V

    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->h:Lcom/facebook/biddingkit/auction/Auction$Builder;

    .line 96
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->i:Ljava/util/Map;

    .line 98
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->l:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->k:Lcom/anythink/core/api/MediationBidManager$BidListener;

    invoke-direct {p0, v0, v1}, Lcom/anythink/network/facebook/FacebookBidkitAuction;->a(Ljava/lang/String;Lcom/anythink/core/api/MediationBidManager$BidListener;)V

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/au;Lorg/json/JSONObject;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "3"

    const-string v4, "buyeruid"

    const-string v5, "1"

    .line 191
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/core/common/b/o;->u()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v7, 0x0

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 196
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/au;->d()I

    move-result v11

    if-ne v11, v10, :cond_a

    const-string v11, "app_id"

    .line 198
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "unit_id"

    .line 199
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 201
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 204
    iget v14, v0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->b:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/4 v6, 0x3

    const/4 v8, 0x2

    packed-switch v15, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x2

    goto :goto_2

    :pswitch_1
    const-string v15, "2"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    goto :goto_2

    :pswitch_2
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x3

    goto :goto_2

    :pswitch_3
    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x1

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v14, -0x1

    :goto_2
    if-eqz v14, :cond_5

    if-eq v14, v10, :cond_3

    if-eq v14, v8, :cond_2

    if-eq v14, v6, :cond_1

    move-object v6, v9

    goto :goto_5

    .line 239
    :cond_1
    sget-object v6, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->REWARDED_VIDEO:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    goto :goto_5

    .line 236
    :cond_2
    sget-object v6, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->INTERSTITIAL:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    goto :goto_5

    .line 225
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/au;->h()Ljava/lang/String;

    move-result-object v6

    .line 226
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "unit_type"

    .line 227
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 229
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 230
    sget-object v6, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->NATIVE_BANNER:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    goto :goto_5

    .line 232
    :cond_4
    sget-object v6, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->NATIVE:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    goto :goto_5

    :cond_5
    const-string v6, "ad_height"

    .line 206
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "50"

    .line 207
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 208
    sget-object v8, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->BANNER_HEIGHT_50:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    goto :goto_3

    :cond_6
    move-object v8, v9

    :goto_3
    const-string v14, "90"

    .line 211
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 212
    sget-object v8, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->BANNER_HEIGHT_90:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    :cond_7
    const-string v14, "250"

    .line 215
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 216
    sget-object v6, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->BANNER_HEIGHT_250:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    goto :goto_4

    :cond_8
    move-object v6, v8

    :goto_4
    if-nez v6, :cond_9

    .line 220
    sget-object v6, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->BANNER_HEIGHT_50:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    .line 244
    :cond_9
    :goto_5
    new-instance v8, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    invoke-direct {v8, v11, v12, v6, v13}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v8, v7}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->setTestMode(Z)Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->build()Lcom/facebook/biddingkit/bidders/Bidder;

    move-result-object v6

    .line 246
    iget-object v8, v0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->h:Lcom/facebook/biddingkit/auction/Auction$Builder;

    invoke-virtual {v8, v6}, Lcom/facebook/biddingkit/auction/Auction$Builder;->addBidder(Lcom/facebook/biddingkit/bidders/Bidder;)Lcom/facebook/biddingkit/auction/Auction$Builder;

    .line 248
    iget-object v6, v0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->i:Ljava/util/Map;

    invoke-interface {v6, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    :catchall_1
    :cond_a
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/au;->d()I

    move-result v6

    const/16 v8, 0xb

    if-ne v6, v8, :cond_10

    const-string v6, "app_key"

    .line 257
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "instance_id"

    .line 258
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 260
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    iget v4, v0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->b:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/16 v12, 0x31

    if-eq v11, v12, :cond_c

    const/16 v5, 0x33

    if-eq v11, v5, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    goto :goto_7

    :cond_c
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v3, -0x1

    :goto_7
    if-eqz v3, :cond_f

    if-eq v3, v10, :cond_e

    goto :goto_8

    .line 268
    :cond_e
    sget-object v9, Lcom/facebook/biddingkit/gen/IronSourceAdFormat;->REWARDED_VIDEO:Lcom/facebook/biddingkit/gen/IronSourceAdFormat;

    goto :goto_8

    .line 265
    :cond_f
    sget-object v9, Lcom/facebook/biddingkit/gen/IronSourceAdFormat;->INTERSTITIAL:Lcom/facebook/biddingkit/gen/IronSourceAdFormat;

    .line 272
    :goto_8
    new-instance v3, Lcom/facebook/biddingkit/ironsource/IronSourceBidder$Builder;

    invoke-direct {v3, v6, v8, v9, v2}, Lcom/facebook/biddingkit/ironsource/IronSourceBidder$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/biddingkit/gen/IronSourceAdFormat;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/facebook/biddingkit/ironsource/IronSourceBidder$Builder;->setTestMode(Z)Lcom/facebook/biddingkit/ironsource/IronSourceBidder$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/biddingkit/ironsource/IronSourceBidder$Builder;->build()Lcom/facebook/biddingkit/bidders/Bidder;

    move-result-object v2

    .line 273
    iget-object v3, v0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->h:Lcom/facebook/biddingkit/auction/Auction$Builder;

    invoke-virtual {v3, v2}, Lcom/facebook/biddingkit/auction/Auction$Builder;->addBidder(Lcom/facebook/biddingkit/bidders/Bidder;)Lcom/facebook/biddingkit/auction/Auction$Builder;

    .line 275
    iget-object v2, v0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->i:Ljava/util/Map;

    invoke-interface {v2, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/anythink/network/facebook/FacebookBidkitAuction;)V
    .locals 2

    .line 1081
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->k:Lcom/anythink/core/api/MediationBidManager$BidListener;

    invoke-direct {p0, v0, v1}, Lcom/anythink/network/facebook/FacebookBidkitAuction;->a(Ljava/lang/String;Lcom/anythink/core/api/MediationBidManager$BidListener;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/facebook/FacebookBidkitAuction;Lcom/anythink/core/common/f/au;Lorg/json/JSONObject;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "3"

    const-string v4, "buyeruid"

    const-string v5, "1"

    .line 1191
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/core/common/b/o;->u()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v7, 0x0

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1196
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/au;->d()I

    move-result v11

    if-ne v11, v10, :cond_a

    const-string v11, "app_id"

    .line 1198
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "unit_id"

    .line 1199
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1201
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1204
    iget v14, v0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->b:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/4 v6, 0x3

    const/4 v8, 0x2

    packed-switch v15, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x2

    goto :goto_2

    :pswitch_1
    const-string v15, "2"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    goto :goto_2

    :pswitch_2
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x3

    goto :goto_2

    :pswitch_3
    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x1

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v14, -0x1

    :goto_2
    if-eqz v14, :cond_5

    if-eq v14, v10, :cond_3

    if-eq v14, v8, :cond_2

    if-eq v14, v6, :cond_1

    move-object v6, v9

    goto :goto_5

    .line 1239
    :cond_1
    sget-object v6, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->REWARDED_VIDEO:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    goto :goto_5

    .line 1236
    :cond_2
    sget-object v6, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->INTERSTITIAL:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    goto :goto_5

    .line 1225
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/au;->h()Ljava/lang/String;

    move-result-object v6

    .line 1226
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "unit_type"

    .line 1227
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1229
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1230
    sget-object v6, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->NATIVE_BANNER:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    goto :goto_5

    .line 1232
    :cond_4
    sget-object v6, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->NATIVE:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    goto :goto_5

    :cond_5
    const-string v6, "ad_height"

    .line 1206
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "50"

    .line 1207
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1208
    sget-object v8, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->BANNER_HEIGHT_50:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    goto :goto_3

    :cond_6
    move-object v8, v9

    :goto_3
    const-string v14, "90"

    .line 1211
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1212
    sget-object v8, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->BANNER_HEIGHT_90:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    :cond_7
    const-string v14, "250"

    .line 1215
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1216
    sget-object v6, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->BANNER_HEIGHT_250:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    goto :goto_4

    :cond_8
    move-object v6, v8

    :goto_4
    if-nez v6, :cond_9

    .line 1220
    sget-object v6, Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;->BANNER_HEIGHT_50:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    .line 1244
    :cond_9
    :goto_5
    new-instance v8, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    invoke-direct {v8, v11, v12, v6, v13}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;Ljava/lang/String;)V

    .line 1245
    invoke-virtual {v8, v7}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->setTestMode(Z)Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->build()Lcom/facebook/biddingkit/bidders/Bidder;

    move-result-object v6

    .line 1246
    iget-object v8, v0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->h:Lcom/facebook/biddingkit/auction/Auction$Builder;

    invoke-virtual {v8, v6}, Lcom/facebook/biddingkit/auction/Auction$Builder;->addBidder(Lcom/facebook/biddingkit/bidders/Bidder;)Lcom/facebook/biddingkit/auction/Auction$Builder;

    .line 1248
    iget-object v6, v0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->i:Ljava/util/Map;

    invoke-interface {v6, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1255
    :catchall_1
    :cond_a
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/common/f/au;->d()I

    move-result v6

    const/16 v8, 0xb

    if-ne v6, v8, :cond_10

    const-string v6, "app_key"

    .line 1257
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "instance_id"

    .line 1258
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1260
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1263
    iget v4, v0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->b:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/16 v12, 0x31

    if-eq v11, v12, :cond_c

    const/16 v5, 0x33

    if-eq v11, v5, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    goto :goto_7

    :cond_c
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v3, -0x1

    :goto_7
    if-eqz v3, :cond_f

    if-eq v3, v10, :cond_e

    goto :goto_8

    .line 1268
    :cond_e
    sget-object v9, Lcom/facebook/biddingkit/gen/IronSourceAdFormat;->REWARDED_VIDEO:Lcom/facebook/biddingkit/gen/IronSourceAdFormat;

    goto :goto_8

    .line 1265
    :cond_f
    sget-object v9, Lcom/facebook/biddingkit/gen/IronSourceAdFormat;->INTERSTITIAL:Lcom/facebook/biddingkit/gen/IronSourceAdFormat;

    .line 1272
    :goto_8
    new-instance v3, Lcom/facebook/biddingkit/ironsource/IronSourceBidder$Builder;

    invoke-direct {v3, v6, v8, v9, v2}, Lcom/facebook/biddingkit/ironsource/IronSourceBidder$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/biddingkit/gen/IronSourceAdFormat;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/facebook/biddingkit/ironsource/IronSourceBidder$Builder;->setTestMode(Z)Lcom/facebook/biddingkit/ironsource/IronSourceBidder$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/biddingkit/ironsource/IronSourceBidder$Builder;->build()Lcom/facebook/biddingkit/bidders/Bidder;

    move-result-object v2

    .line 1273
    iget-object v3, v0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->h:Lcom/facebook/biddingkit/auction/Auction$Builder;

    invoke-virtual {v3, v2}, Lcom/facebook/biddingkit/auction/Auction$Builder;->addBidder(Lcom/facebook/biddingkit/bidders/Bidder;)Lcom/facebook/biddingkit/auction/Auction$Builder;

    .line 1275
    iget-object v0, v0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->i:Ljava/util/Map;

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/anythink/network/facebook/FacebookBidkitAuction;Ljava/lang/String;Lcom/anythink/core/api/MediationBidManager$BidListener;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/anythink/network/facebook/FacebookBidkitAuction;->a(Ljava/lang/String;Lcom/anythink/core/api/MediationBidManager$BidListener;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/facebook/FacebookBidkitAuction;Ljava/util/Map;Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/anythink/core/api/MediationBidManager$BidListener;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/network/facebook/FacebookBidkitAuction;->a(Ljava/util/Map;Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/anythink/core/api/MediationBidManager$BidListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/anythink/core/api/MediationBidManager$BidListener;)V
    .locals 10

    .line 164
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 166
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2, p1}, Lcom/anythink/core/api/MediationBidManager$BidListener;->onBidSuccess(Ljava/util/List;)V

    :cond_0
    return-void

    .line 172
    :cond_1
    new-instance v0, Lcom/anythink/network/facebook/FacebookBidkitAuction$b;

    invoke-direct {v0, p0}, Lcom/anythink/network/facebook/FacebookBidkitAuction$b;-><init>(Lcom/anythink/network/facebook/FacebookBidkitAuction;)V

    .line 173
    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/f/au;

    .line 174
    new-instance v9, Lcom/anythink/network/facebook/FacebookBidkitAuction$a;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->af()D

    move-result-wide v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v6, v6, v3

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/anythink/network/facebook/FacebookBidkitAuction$a;-><init>(Lcom/anythink/network/facebook/FacebookBidkitAuction;Lcom/facebook/biddingkit/gen/Bid;DLjava/lang/String;)V

    invoke-interface {v0, v9}, Lcom/facebook/biddingkit/waterfall/Waterfall;->insert(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->h:Lcom/facebook/biddingkit/auction/Auction$Builder;

    invoke-virtual {v1}, Lcom/facebook/biddingkit/auction/Auction$Builder;->build()Lcom/facebook/biddingkit/auction/Auction;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->f:Lcom/facebook/biddingkit/auction/Auction;

    .line 178
    new-instance v2, Lcom/anythink/network/facebook/FacebookBidkitAuction$3;

    invoke-direct {v2, p0, p2}, Lcom/anythink/network/facebook/FacebookBidkitAuction$3;-><init>(Lcom/anythink/network/facebook/FacebookBidkitAuction;Lcom/anythink/core/api/MediationBidManager$BidListener;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/facebook/biddingkit/auction/Auction;->startRemoteAuction(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/facebook/biddingkit/auction/AuctionListener;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/Map;Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/anythink/core/api/MediationBidManager$BidListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f/au;",
            ">;",
            "Lcom/facebook/biddingkit/waterfall/Waterfall;",
            "Lcom/anythink/core/api/MediationBidManager$BidListener;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 283
    :try_start_0
    invoke-interface {p2}, Lcom/facebook/biddingkit/waterfall/Waterfall;->entries()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    .line 287
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 289
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 290
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/biddingkit/waterfall/WaterfallEntry;

    .line 291
    invoke-interface {v1}, Lcom/facebook/biddingkit/waterfall/WaterfallEntry;->getEntryName()Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-interface {v1}, Lcom/facebook/biddingkit/waterfall/WaterfallEntry;->getBid()Lcom/facebook/biddingkit/gen/Bid;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "FACEBOOK_BIDDER"

    .line 295
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    if-eqz v4, :cond_1

    .line 296
    invoke-interface {v3}, Lcom/facebook/biddingkit/gen/Bid;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/common/f/au;

    .line 297
    invoke-interface {v3}, Lcom/facebook/biddingkit/gen/Bid;->getPayload()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/anythink/core/common/f/au;->g(Ljava/lang/String;)V

    .line 298
    invoke-interface {v3}, Lcom/facebook/biddingkit/gen/Bid;->getPrice()D

    move-result-wide v7

    div-double/2addr v7, v5

    invoke-virtual {v4, v7, v8}, Lcom/anythink/core/common/f/au;->a(D)V

    .line 299
    invoke-interface {v3}, Lcom/facebook/biddingkit/gen/Bid;->getPrice()D

    move-result-wide v7

    div-double/2addr v7, v5

    invoke-virtual {v4, v7, v8}, Lcom/anythink/core/common/f/au;->d(D)V

    .line 300
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v7, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v4, "IRONSOURCE_BIDDER"

    .line 304
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    invoke-interface {v3}, Lcom/facebook/biddingkit/gen/Bid;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/f/au;

    .line 306
    invoke-interface {v3}, Lcom/facebook/biddingkit/gen/Bid;->getPayload()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/au;->g(Ljava/lang/String;)V

    .line 307
    invoke-interface {v3}, Lcom/facebook/biddingkit/gen/Bid;->getPrice()D

    move-result-wide v7

    div-double/2addr v7, v5

    invoke-virtual {v2, v7, v8}, Lcom/anythink/core/common/f/au;->a(D)V

    .line 308
    invoke-interface {v3}, Lcom/facebook/biddingkit/gen/Bid;->getPrice()D

    move-result-wide v3

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/anythink/core/common/f/au;->d(D)V

    .line 309
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v3, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 313
    :cond_2
    iget-object v2, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Lcom/facebook/biddingkit/waterfall/WaterfallEntry;->getEntryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 318
    invoke-interface {p3, v0}, Lcom/anythink/core/api/MediationBidManager$BidListener;->onBidSuccess(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected final declared-synchronized a(Lcom/anythink/core/common/f/au;)V
    .locals 3

    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/biddingkit/waterfall/WaterfallEntry;

    if-eqz p1, :cond_1

    .line 326
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->f:Lcom/facebook/biddingkit/auction/Auction;

    if-eqz v0, :cond_1

    .line 327
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyWinnerDisplay:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/facebook/biddingkit/waterfall/WaterfallEntry;->getEntryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->f:Lcom/facebook/biddingkit/auction/Auction;

    invoke-virtual {v0, p1}, Lcom/facebook/biddingkit/auction/Auction;->notifyDisplayWinner(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startBidding(Ljava/lang/String;Lcom/anythink/core/api/MediationBidManager$BidListener;)V
    .locals 5

    .line 104
    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->j:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->k:Lcom/anythink/core/api/MediationBidManager$BidListener;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 108
    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/f/au;

    .line 109
    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->u()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v3, Lcom/anythink/core/b/i;

    iget-object v4, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->g:Lcom/anythink/core/common/f/a;

    invoke-direct {v3, v4}, Lcom/anythink/core/b/i;-><init>(Lcom/anythink/core/common/f/a;)V

    .line 111
    new-instance v4, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;

    invoke-direct {v4, p0, p2, v0, p1}, Lcom/anythink/network/facebook/FacebookBidkitAuction$2;-><init>(Lcom/anythink/network/facebook/FacebookBidkitAuction;Lcom/anythink/core/api/MediationBidManager$BidListener;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lcom/anythink/core/b/i;->a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/b/i$a;)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->g:Lcom/anythink/core/common/f/a;

    iget-object p1, p1, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/az;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/az;->o()J

    move-result-wide p1

    .line 157
    iget-object v0, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->l:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 158
    iget-object v1, p0, Lcom/anythink/network/facebook/FacebookBidkitAuction;->m:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gtz v4, :cond_1

    const-wide/16 p1, 0x1f4

    :cond_1
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
