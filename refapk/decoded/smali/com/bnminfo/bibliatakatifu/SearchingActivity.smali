.class public Lcom/bnminfo/bibliatakatifu/SearchingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SearchingActivity.java"

# interfaces
.implements Lcom/bnminfo/bibliatakatifu/SearchItemListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchingActivity"


# instance fields
.field private adapter:Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;

.field private dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

.field private mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private searchInfoCard:Landroidx/cardview/widget/CardView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bnminfo/bibliatakatifu/SearchingActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bnminfo/bibliatakatifu/SearchingActivity;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->searchVerse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/bnminfo/bibliatakatifu/SearchingActivity;)Landroidx/cardview/widget/CardView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->searchInfoCard:Landroidx/cardview/widget/CardView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/bnminfo/bibliatakatifu/SearchingActivity;)Lcom/anythink/interstitial/api/ATInterstitial;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    return-object p0
.end method

.method private loadTopOnBannerAd()V
    .locals 4

    .line 171
    new-instance v0, Lcom/anythink/banner/api/ATBannerView;

    invoke-direct {v0, p0}, Lcom/anythink/banner/api/ATBannerView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00fb

    .line 172
    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/banner/api/ATBannerView;->setPlacementId(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 184
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/anythink/banner/api/ATBannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f080183

    .line 186
    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 187
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 188
    new-instance v1, Lcom/bnminfo/bibliatakatifu/SearchingActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/bnminfo/bibliatakatifu/SearchingActivity$3;-><init>(Lcom/bnminfo/bibliatakatifu/SearchingActivity;Lcom/anythink/banner/api/ATBannerView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/banner/api/ATBannerView;->setBannerAdListener(Lcom/anythink/banner/api/ATBannerListener;)V

    .line 229
    invoke-virtual {v0}, Lcom/anythink/banner/api/ATBannerView;->loadAd()V

    return-void
.end method

.method private loadTopOnInterstitialAd()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/anythink/interstitial/api/ATInterstitial;

    const v1, 0x7f0f00fc

    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/anythink/interstitial/api/ATInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 235
    new-instance v1, Lcom/bnminfo/bibliatakatifu/SearchingActivity$4;

    invoke-direct {v1, p0}, Lcom/bnminfo/bibliatakatifu/SearchingActivity$4;-><init>(Lcom/bnminfo/bibliatakatifu/SearchingActivity;)V

    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitial;->setAdListener(Lcom/anythink/interstitial/api/ATInterstitialListener;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->load()V

    return-void
.end method

.method private searchVerse(Ljava/lang/String;)V
    .locals 7

    .line 123
    invoke-static {}, Lcom/bnminfo/bibliatakatifu/LocalStorage;->getInstance()Lcom/bnminfo/bibliatakatifu/LocalStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bnminfo/bibliatakatifu/LocalStorage;->getBookList()Ljava/util/List;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 125
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 126
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bnminfo/bibliatakatifu/Book;

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/bnminfo/bibliatakatifu/Book;->getBookName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v4}, Lcom/bnminfo/bibliatakatifu/Book;->getChapterNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v4}, Lcom/bnminfo/bibliatakatifu/Book;->getVerseNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v4}, Lcom/bnminfo/bibliatakatifu/Book;->getVerseText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->adapter:Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;

    invoke-virtual {v0, v1, p1}, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->updateList(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private showTopOnInterstitialAd()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0, p0}, Lcom/anythink/interstitial/api/ATInterstitial;->show(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBookmarkClicked(Lcom/bnminfo/bibliatakatifu/Book;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

    invoke-virtual {v0, p1}, Lcom/bnminfo/bibliatakatifu/DBHelper;->isBookmarked(Lcom/bnminfo/bibliatakatifu/Book;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

    invoke-virtual {v0, p1}, Lcom/bnminfo/bibliatakatifu/DBHelper;->deleteBookmark(Lcom/bnminfo/bibliatakatifu/Book;)I

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

    invoke-virtual {v0, p1}, Lcom/bnminfo/bibliatakatifu/DBHelper;->addBookmark(Lcom/bnminfo/bibliatakatifu/Book;)Z

    .line 162
    :goto_0
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->adapter:Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 164
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->showTopOnInterstitialAd()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001f

    .line 44
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const-string v1, "Tafuta"

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->loadTopOnBannerAd()V

    .line 53
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->loadTopOnInterstitialAd()V

    .line 55
    invoke-static {p0}, Lcom/bnminfo/bibliatakatifu/DBHelper;->getInstance(Landroid/content/Context;)Lcom/bnminfo/bibliatakatifu/DBHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

    const p1, 0x7f08028c

    .line 56
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->searchInfoCard:Landroidx/cardview/widget/CardView;

    const p1, 0x7f080278

    .line 58
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 60
    new-instance p1, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p0, v1, p0}, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bnminfo/bibliatakatifu/SearchItemListener;)V

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->adapter:Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;

    .line 61
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 62
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->adapter:Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f08022e

    .line 69
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    .line 75
    new-instance v1, Lcom/bnminfo/bibliatakatifu/SearchingActivity$1;

    invoke-direct {v1, p0}, Lcom/bnminfo/bibliatakatifu/SearchingActivity$1;-><init>(Lcom/bnminfo/bibliatakatifu/SearchingActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 98
    new-instance v0, Lcom/bnminfo/bibliatakatifu/SearchingActivity$2;

    invoke-direct {v0, p0}, Lcom/bnminfo/bibliatakatifu/SearchingActivity$2;-><init>(Lcom/bnminfo/bibliatakatifu/SearchingActivity;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onItemClicked(Lcom/bnminfo/bibliatakatifu/Book;)V
    .locals 4

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bnminfo/bibliatakatifu/VerseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 144
    invoke-virtual {p1}, Lcom/bnminfo/bibliatakatifu/Book;->getBookName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bnminfo/bibliatakatifu/Utils;->generateChapterList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string v3, "chapter_list"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Lcom/bnminfo/bibliatakatifu/Book;->getBookName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "selected_book"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lcom/bnminfo/bibliatakatifu/Book;->getChapterNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "selected_chapter"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lcom/bnminfo/bibliatakatifu/Book;->getVerseNumber()Ljava/lang/String;

    move-result-object p1

    const-string v2, "clicked_verse"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->showTopOnInterstitialAd()V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method
