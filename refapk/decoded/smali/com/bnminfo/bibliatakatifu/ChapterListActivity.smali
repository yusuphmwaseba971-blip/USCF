.class public Lcom/bnminfo/bibliatakatifu/ChapterListActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ChapterListActivity.java"

# interfaces
.implements Lcom/bnminfo/bibliatakatifu/ChapterItemListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ChapterListActivity"


# instance fields
.field private adapter:Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;

.field private chapterNumberList:Ljava/util/List;
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

.field private selectedBook:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bnminfo/bibliatakatifu/ChapterListActivity;)Lcom/anythink/interstitial/api/ATInterstitial;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    return-object p0
.end method

.method private launchMarket()V
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 69
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 71
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    const-string v1, "Couldn\'t open play store"

    .line 73
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private loadTopOnBannerAd()V
    .locals 4

    .line 145
    new-instance v0, Lcom/anythink/banner/api/ATBannerView;

    invoke-direct {v0, p0}, Lcom/anythink/banner/api/ATBannerView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00fb

    .line 146
    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/banner/api/ATBannerView;->setPlacementId(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 158
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/anythink/banner/api/ATBannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f080183

    .line 160
    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 161
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 162
    new-instance v1, Lcom/bnminfo/bibliatakatifu/ChapterListActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity$1;-><init>(Lcom/bnminfo/bibliatakatifu/ChapterListActivity;Lcom/anythink/banner/api/ATBannerView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/banner/api/ATBannerView;->setBannerAdListener(Lcom/anythink/banner/api/ATBannerListener;)V

    .line 203
    invoke-virtual {v0}, Lcom/anythink/banner/api/ATBannerView;->loadAd()V

    return-void
.end method

.method private loadTopOnInterstitialAd()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/anythink/interstitial/api/ATInterstitial;

    const v1, 0x7f0f00fc

    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/anythink/interstitial/api/ATInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 209
    new-instance v1, Lcom/bnminfo/bibliatakatifu/ChapterListActivity$2;

    invoke-direct {v1, p0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity$2;-><init>(Lcom/bnminfo/bibliatakatifu/ChapterListActivity;)V

    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitial;->setAdListener(Lcom/anythink/interstitial/api/ATInterstitialListener;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->load()V

    return-void
.end method

.method private shareApp()V
    .locals 3

    .line 79
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const v2, 0x7f0f0088

    .line 81
    invoke-virtual {p0, v2}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "\nLet me recommend you this application\n\n"

    .line 83
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

    .line 84
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Choose one"

    .line 85
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private showTopOnInterstitialAd()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0, p0}, Lcom/anythink/interstitial/api/ATInterstitial;->show(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onChapterClicked(Ljava/lang/String;)V
    .locals 4

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bnminfo/bibliatakatifu/VerseListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 132
    iget-object v2, p0, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->chapterNumberList:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const-string v3, "chapter_list"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->selectedBook:Ljava/lang/String;

    const-string v3, "selected_book"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "selected_chapter"

    .line 134
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->startActivity(Landroid/content/Intent;)V

    .line 138
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->showTopOnInterstitialAd()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001d

    .line 42
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "selected_book"

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->selectedBook:Ljava/lang/String;

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->selectedBook:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 55
    :cond_1
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->loadTopOnBannerAd()V

    .line 56
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->loadTopOnInterstitialAd()V

    .line 58
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->selectedBook:Ljava/lang/String;

    invoke-static {p1}, Lcom/bnminfo/bibliatakatifu/Utils;->generateChapterList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->chapterNumberList:Ljava/util/List;

    const p1, 0x7f080278

    .line 60
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 p1, 0x42a00000    # 80.0f

    .line 61
    invoke-static {p0, p1}, Lcom/bnminfo/bibliatakatifu/Utils;->calculateNoOfColumns(Landroid/content/Context;F)I

    move-result p1

    .line 62
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v1, p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 63
    new-instance p1, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;

    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->chapterNumberList:Ljava/util/List;

    invoke-direct {p1, p0, v0, p0}, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bnminfo/bibliatakatifu/ChapterItemListener;)V

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->adapter:Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;

    .line 64
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f080038

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 120
    :pswitch_0
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->shareApp()V

    return v1

    .line 107
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->showTopOnInterstitialAd()V

    return v1

    .line 117
    :pswitch_2
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->launchMarket()V

    return v1

    .line 112
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->startActivity(Landroid/content/Intent;)V

    .line 114
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->showTopOnInterstitialAd()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f080045
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/ChapterListActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method
