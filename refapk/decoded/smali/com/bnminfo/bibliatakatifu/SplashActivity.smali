.class public Lcom/bnminfo/bibliatakatifu/SplashActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SplashActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SplashActivity"


# instance fields
.field private bookList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bnminfo/bibliatakatifu/Book;",
            ">;"
        }
    .end annotation
.end field

.field private bookNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentBook:Lcom/bnminfo/bibliatakatifu/Book;

.field private currentBookName:Ljava/lang/String;

.field private currentBookNumber:Ljava/lang/String;

.field private currentChapterNumber:Ljava/lang/String;

.field private currentVerseNumber:Ljava/lang/String;

.field private currentVerseText:Ljava/lang/String;

.field private hasFinishLoading:Z

.field private mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

.field private startBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->hasFinishLoading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/bnminfo/bibliatakatifu/SplashActivity;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->hasFinishLoading:Z

    return p0
.end method

.method static synthetic access$100(Lcom/bnminfo/bibliatakatifu/SplashActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/SplashActivity;->showTopOnInterstitialAd()V

    return-void
.end method

.method static synthetic access$200(Lcom/bnminfo/bibliatakatifu/SplashActivity;)Lcom/anythink/interstitial/api/ATInterstitial;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    return-object p0
.end method

.method private loadTopOnBannerAd()V
    .locals 4

    .line 147
    new-instance v0, Lcom/anythink/banner/api/ATBannerView;

    invoke-direct {v0, p0}, Lcom/anythink/banner/api/ATBannerView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00fb

    .line 148
    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/banner/api/ATBannerView;->setPlacementId(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 160
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/anythink/banner/api/ATBannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f080183

    .line 162
    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 163
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    new-instance v1, Lcom/bnminfo/bibliatakatifu/SplashActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/bnminfo/bibliatakatifu/SplashActivity$2;-><init>(Lcom/bnminfo/bibliatakatifu/SplashActivity;Lcom/anythink/banner/api/ATBannerView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/banner/api/ATBannerView;->setBannerAdListener(Lcom/anythink/banner/api/ATBannerListener;)V

    .line 205
    invoke-virtual {v0}, Lcom/anythink/banner/api/ATBannerView;->loadAd()V

    return-void
.end method

.method private loadTopOnInterstitialAd()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/anythink/interstitial/api/ATInterstitial;

    const v1, 0x7f0f00fc

    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/anythink/interstitial/api/ATInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 211
    new-instance v1, Lcom/bnminfo/bibliatakatifu/SplashActivity$3;

    invoke-direct {v1, p0}, Lcom/bnminfo/bibliatakatifu/SplashActivity$3;-><init>(Lcom/bnminfo/bibliatakatifu/SplashActivity;)V

    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitial;->setAdListener(Lcom/anythink/interstitial/api/ATInterstitialListener;)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->load()V

    return-void
.end method

.method private showTopOnInterstitialAd()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0, p0}, Lcom/anythink/interstitial/api/ATInterstitial;->show(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0020

    .line 54
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/SplashActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f00f9

    invoke-virtual {p0, v0}, Lcom/bnminfo/bibliatakatifu/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f00fa

    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/anythink/core/api/ATSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/SplashActivity;->loadTopOnBannerAd()V

    .line 60
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/SplashActivity;->loadTopOnInterstitialAd()V

    const p1, 0x7f0802e8

    .line 62
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0802e7

    .line 63
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/SplashActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "biblia.xml"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/SplashActivity;->parseXml(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->bookList:Ljava/util/List;

    .line 68
    invoke-static {}, Lcom/bnminfo/bibliatakatifu/LocalStorage;->getInstance()Lcom/bnminfo/bibliatakatifu/LocalStorage;

    move-result-object p1

    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->bookList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/bnminfo/bibliatakatifu/LocalStorage;->setBookList(Ljava/util/List;)V

    .line 69
    invoke-static {}, Lcom/bnminfo/bibliatakatifu/LocalStorage;->getInstance()Lcom/bnminfo/bibliatakatifu/LocalStorage;

    move-result-object p1

    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->bookNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/bnminfo/bibliatakatifu/LocalStorage;->setBookNames(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const p1, 0x7f0802b3

    .line 74
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->startBtn:Landroid/widget/Button;

    .line 75
    new-instance v0, Lcom/bnminfo/bibliatakatifu/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/bnminfo/bibliatakatifu/SplashActivity$1;-><init>(Lcom/bnminfo/bibliatakatifu/SplashActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public parseXml(Ljava/io/InputStream;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/bnminfo/bibliatakatifu/Book;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    .line 91
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 92
    invoke-virtual {v3, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 93
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const/4 v4, 0x0

    .line 95
    invoke-interface {v3, p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 97
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_0
    if-eq v5, v2, :cond_c

    .line 99
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "BIBLEBOOK"

    const-string v8, "VERS"

    const/4 v9, 0x2

    if-eq v5, v9, :cond_3

    const/4 v9, 0x3

    if-eq v5, v9, :cond_1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    goto/16 :goto_2

    .line 116
    :cond_0
    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->currentVerseText:Ljava/lang/String;

    goto/16 :goto_2

    .line 119
    :cond_1
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 120
    new-instance v5, Lcom/bnminfo/bibliatakatifu/Book;

    iget-object v9, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->currentBookNumber:Ljava/lang/String;

    iget-object v10, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->currentBookName:Ljava/lang/String;

    iget-object v11, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->currentChapterNumber:Ljava/lang/String;

    iget-object v12, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->currentVerseNumber:Ljava/lang/String;

    iget-object v13, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->currentVerseText:Ljava/lang/String;

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Lcom/bnminfo/bibliatakatifu/Book;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->currentBook:Lcom/bnminfo/bibliatakatifu/Book;

    .line 121
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_2
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 124
    iget-object v5, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->currentBookName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v5, -0x1

    .line 102
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, 0x282530

    if-eq v10, v11, :cond_6

    const v8, 0x1d1887d

    if-eq v10, v8, :cond_5

    const v7, 0x56d8082d

    if-eq v10, v7, :cond_4

    goto :goto_1

    :cond_4
    const-string v7, "CHAPTER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v5, 0x2

    :cond_7
    :goto_1
    if-eqz v5, :cond_a

    if-eq v5, v2, :cond_9

    if-eq v5, v9, :cond_8

    goto :goto_2

    :cond_8
    const-string v5, "vnumber"

    .line 111
    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->currentVerseNumber:Ljava/lang/String;

    goto :goto_2

    :cond_9
    const-string v5, "cnumber"

    .line 108
    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->currentChapterNumber:Ljava/lang/String;

    goto :goto_2

    :cond_a
    const-string v5, "bnumber"

    .line 104
    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->currentBookNumber:Ljava/lang/String;

    const-string v5, "bname"

    .line 105
    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->currentBookName:Ljava/lang/String;

    .line 130
    :cond_b
    :goto_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto/16 :goto_0

    .line 133
    :cond_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 135
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 139
    :goto_3
    iput-object v1, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->bookNames:Ljava/util/List;

    .line 140
    iput-boolean v2, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity;->hasFinishLoading:Z

    return-object v0
.end method
