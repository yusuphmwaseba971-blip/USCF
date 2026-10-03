.class public Lcom/bnminfo/bibliatakatifu/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/bnminfo/bibliatakatifu/HomeItemListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private adapter:Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;

.field private bookListType:I

.field private bookNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/bnminfo/bibliatakatifu/MainActivity;->bookListType:I

    return-void
.end method

.method static synthetic access$000(Lcom/bnminfo/bibliatakatifu/MainActivity;)Lcom/anythink/interstitial/api/ATInterstitial;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/MainActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    return-object p0
.end method

.method private getBookNames(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-static {}, Lcom/bnminfo/bibliatakatifu/LocalStorage;->getInstance()Lcom/bnminfo/bibliatakatifu/LocalStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bnminfo/bibliatakatifu/LocalStorage;->getBookNames()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x27

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    const/16 p1, 0x42

    .line 73
    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 71
    invoke-interface {v0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private launchMarket()V
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    const-string v1, "Couldn\'t open play store"

    .line 85
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private loadTopOnBannerAd()V
    .locals 4

    .line 165
    new-instance v0, Lcom/anythink/banner/api/ATBannerView;

    invoke-direct {v0, p0}, Lcom/anythink/banner/api/ATBannerView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00fb

    .line 166
    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/banner/api/ATBannerView;->setPlacementId(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 178
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/anythink/banner/api/ATBannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f080183

    .line 180
    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 181
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 182
    new-instance v1, Lcom/bnminfo/bibliatakatifu/MainActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/bnminfo/bibliatakatifu/MainActivity$1;-><init>(Lcom/bnminfo/bibliatakatifu/MainActivity;Lcom/anythink/banner/api/ATBannerView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/banner/api/ATBannerView;->setBannerAdListener(Lcom/anythink/banner/api/ATBannerListener;)V

    .line 223
    invoke-virtual {v0}, Lcom/anythink/banner/api/ATBannerView;->loadAd()V

    return-void
.end method

.method private loadTopOnInterstitialAd()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/MainActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/anythink/interstitial/api/ATInterstitial;

    const v1, 0x7f0f00fc

    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/anythink/interstitial/api/ATInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bnminfo/bibliatakatifu/MainActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 229
    new-instance v1, Lcom/bnminfo/bibliatakatifu/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/bnminfo/bibliatakatifu/MainActivity$2;-><init>(Lcom/bnminfo/bibliatakatifu/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitial;->setAdListener(Lcom/anythink/interstitial/api/ATInterstitialListener;)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/MainActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->load()V

    return-void
.end method

.method private shareApp()V
    .locals 3

    .line 91
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const v2, 0x7f0f0088

    .line 93
    invoke-virtual {p0, v2}, Lcom/bnminfo/bibliatakatifu/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "\nLet me recommend you this application\n\n"

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "com.bnminfo.bibliatakatifu"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    .line 96
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Choose one"

    .line 97
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bnminfo/bibliatakatifu/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private showTopOnInterstitialAd()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/MainActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/MainActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0, p0}, Lcom/anythink/interstitial/api/ATInterstitial;->show(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 44
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001e

    .line 45
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/MainActivity;->setContentView(I)V

    const p1, 0x7f0802e6

    .line 47
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 48
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/MainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 50
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const-string v0, "BIBLIA TAKATIFU"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/MainActivity;->loadTopOnBannerAd()V

    .line 55
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/MainActivity;->loadTopOnInterstitialAd()V

    .line 57
    iget p1, p0, Lcom/bnminfo/bibliatakatifu/MainActivity;->bookListType:I

    invoke-direct {p0, p1}, Lcom/bnminfo/bibliatakatifu/MainActivity;->getBookNames(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/MainActivity;->bookNames:Ljava/util/List;

    const p1, 0x7f080278

    .line 59
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/bnminfo/bibliatakatifu/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    new-instance p1, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;

    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/MainActivity;->bookNames:Ljava/util/List;

    invoke-direct {p1, p0, v0, p0}, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bnminfo/bibliatakatifu/HomeItemListener;)V

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/MainActivity;->adapter:Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;

    .line 63
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 64
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/MainActivity;->adapter:Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onItemClicked(Ljava/lang/String;)V
    .locals 3

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "selected_book"

    .line 154
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v0}, Lcom/bnminfo/bibliatakatifu/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/MainActivity;->showTopOnInterstitialAd()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 117
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f080038

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    .line 142
    :pswitch_0
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/MainActivity;->shareApp()V

    return v1

    .line 129
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/MainActivity;->showTopOnInterstitialAd()V

    return v1

    .line 139
    :pswitch_2
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/MainActivity;->launchMarket()V

    return v1

    .line 119
    :pswitch_3
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/MainActivity;->adapter:Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;

    invoke-direct {p0, v0}, Lcom/bnminfo/bibliatakatifu/MainActivity;->getBookNames(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;->updateList(Ljava/util/List;)V

    .line 121
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/MainActivity;->showTopOnInterstitialAd()V

    return v1

    .line 124
    :pswitch_4
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/MainActivity;->adapter:Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;

    invoke-direct {p0, v1}, Lcom/bnminfo/bibliatakatifu/MainActivity;->getBookNames(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;->updateList(Ljava/util/List;)V

    .line 126
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/MainActivity;->showTopOnInterstitialAd()V

    return v1

    .line 134
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 136
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/MainActivity;->showTopOnInterstitialAd()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f080043
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/MainActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method
