.class public Lcom/bnminfo/bibliatakatifu/BookmarksActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BookmarksActivity.java"

# interfaces
.implements Lcom/bnminfo/bibliatakatifu/BookmarkItemListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BookmarksActivity"


# instance fields
.field private adapter:Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;

.field private bookmarkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bnminfo/bibliatakatifu/Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field private dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

.field private infoCard:Landroidx/cardview/widget/CardView;

.field private mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bnminfo/bibliatakatifu/BookmarksActivity;)Lcom/anythink/interstitial/api/ATInterstitial;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    return-object p0
.end method

.method private checkEmptyState()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->bookmarkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->infoCard:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->infoCard:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private launchMarket()V
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 85
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 87
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    const-string v1, "Couldn\'t open play store"

    .line 89
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private loadTopOnBannerAd()V
    .locals 4

    .line 169
    new-instance v0, Lcom/anythink/banner/api/ATBannerView;

    invoke-direct {v0, p0}, Lcom/anythink/banner/api/ATBannerView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00fb

    .line 170
    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/banner/api/ATBannerView;->setPlacementId(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 182
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/anythink/banner/api/ATBannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f080183

    .line 184
    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 185
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 186
    new-instance v1, Lcom/bnminfo/bibliatakatifu/BookmarksActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity$1;-><init>(Lcom/bnminfo/bibliatakatifu/BookmarksActivity;Lcom/anythink/banner/api/ATBannerView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/banner/api/ATBannerView;->setBannerAdListener(Lcom/anythink/banner/api/ATBannerListener;)V

    .line 227
    invoke-virtual {v0}, Lcom/anythink/banner/api/ATBannerView;->loadAd()V

    return-void
.end method

.method private loadTopOnInterstitialAd()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/anythink/interstitial/api/ATInterstitial;

    const v1, 0x7f0f00fc

    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/anythink/interstitial/api/ATInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 233
    new-instance v1, Lcom/bnminfo/bibliatakatifu/BookmarksActivity$2;

    invoke-direct {v1, p0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity$2;-><init>(Lcom/bnminfo/bibliatakatifu/BookmarksActivity;)V

    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitial;->setAdListener(Lcom/anythink/interstitial/api/ATInterstitialListener;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->load()V

    return-void
.end method

.method private shareApp()V
    .locals 3

    .line 95
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const v2, 0x7f0f0088

    .line 97
    invoke-virtual {p0, v2}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "\nLet me recommend you this application\n\n"

    .line 99
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

    .line 100
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Choose one"

    .line 101
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private showTopOnInterstitialAd()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0, p0}, Lcom/anythink/interstitial/api/ATInterstitial;->show(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBookmarkClicked(Lcom/bnminfo/bibliatakatifu/Bookmark;)V
    .locals 4

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bnminfo/bibliatakatifu/VerseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 143
    invoke-virtual {p1}, Lcom/bnminfo/bibliatakatifu/Bookmark;->getBookName()Ljava/lang/String;

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

    .line 144
    invoke-virtual {p1}, Lcom/bnminfo/bibliatakatifu/Bookmark;->getBookName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "selected_book"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Lcom/bnminfo/bibliatakatifu/Bookmark;->getChapterNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "selected_chapter"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lcom/bnminfo/bibliatakatifu/Bookmark;->getVerseNumber()Ljava/lang/String;

    move-result-object p1

    const-string v2, "clicked_verse"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->showTopOnInterstitialAd()V

    return-void
.end method

.method public onBookmarkDeleted(I)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->bookmarkList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bnminfo/bibliatakatifu/Bookmark;

    .line 157
    iget-object v1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

    invoke-virtual {v1, v0}, Lcom/bnminfo/bibliatakatifu/DBHelper;->deleteBookmark(Lcom/bnminfo/bibliatakatifu/Bookmark;)I

    .line 158
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->bookmarkList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 159
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->adapter:Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 160
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->checkEmptyState()V

    .line 162
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->showTopOnInterstitialAd()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 47
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    .line 48
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const-string v1, "Alamisho"

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->loadTopOnBannerAd()V

    .line 57
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->loadTopOnInterstitialAd()V

    const p1, 0x7f080207

    .line 59
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->infoCard:Landroidx/cardview/widget/CardView;

    .line 61
    invoke-static {p0}, Lcom/bnminfo/bibliatakatifu/DBHelper;->getInstance(Landroid/content/Context;)Lcom/bnminfo/bibliatakatifu/DBHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

    .line 62
    invoke-virtual {p1}, Lcom/bnminfo/bibliatakatifu/DBHelper;->getBookmarkList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->bookmarkList:Ljava/util/List;

    const p1, 0x7f080278

    .line 64
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    new-instance p1, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;

    iget-object v1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->bookmarkList:Ljava/util/List;

    invoke-direct {p1, p0, v1, p0}, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bnminfo/bibliatakatifu/BookmarkItemListener;)V

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->adapter:Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;

    .line 67
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 68
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->adapter:Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->checkEmptyState()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 125
    :pswitch_0
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->shareApp()V

    return v0

    .line 117
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/bnminfo/bibliatakatifu/SearchingActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->showTopOnInterstitialAd()V

    return v0

    .line 122
    :pswitch_2
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->launchMarket()V

    return v0

    :pswitch_data_0
    .packed-switch 0x7f080045
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method
