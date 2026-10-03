.class public Lcom/bnminfo/bibliatakatifu/VerseListActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VerseListActivity.java"

# interfaces
.implements Lcom/bnminfo/bibliatakatifu/VerseItemListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VerseListActivity"


# instance fields
.field private adapter:Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;

.field private bookmarkButton:Landroid/widget/RelativeLayout;

.field private chapterIndex:I

.field private chapterNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private chapterTextview:Landroid/widget/TextView;

.field private clickedVerseNumber:Ljava/lang/String;

.field private copyButton:Landroid/widget/RelativeLayout;

.field private dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

.field private highlightedVerseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bnminfo/bibliatakatifu/Book;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

.field private nextButton:Landroidx/cardview/widget/CardView;

.field private playButton:Landroid/widget/RelativeLayout;

.field private playSoundImageView:Landroid/widget/ImageView;

.field private prevButton:Landroidx/cardview/widget/CardView;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private selectedBook:Ljava/lang/String;

.field private selectedChapter:Ljava/lang/String;

.field private shareButton:Landroid/widget/RelativeLayout;

.field private textToSpeech:Landroid/speech/tts/TextToSpeech;

.field private verseActionsView:Landroid/widget/LinearLayout;

.field private verseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bnminfo/bibliatakatifu/Book;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bnminfo/bibliatakatifu/VerseListActivity;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bnminfo/bibliatakatifu/VerseListActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->playSoundImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/bnminfo/bibliatakatifu/VerseListActivity;)Lcom/anythink/interstitial/api/ATInterstitial;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    return-object p0
.end method

.method private addToBookmarks()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->highlightedVerseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    const/4 v0, 0x0

    .line 254
    :goto_0
    iget-object v1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->highlightedVerseList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->highlightedVerseList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bnminfo/bibliatakatifu/Book;

    .line 256
    iget-object v2, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

    invoke-virtual {v2, v1}, Lcom/bnminfo/bibliatakatifu/DBHelper;->addBookmark(Lcom/bnminfo/bibliatakatifu/Book;)Z

    .line 257
    iget-object v2, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

    invoke-virtual {v2, v1}, Lcom/bnminfo/bibliatakatifu/DBHelper;->deleteHighlighted(Lcom/bnminfo/bibliatakatifu/Book;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->adapter:Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 260
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->updateHighlightedList()V

    return-void
.end method

.method private copyTextToClipboard(Ljava/lang/String;)V
    .locals 2

    const-string v0, "clipboard"

    .line 238
    invoke-virtual {p0, v0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "label"

    .line 239
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 240
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string p1, "Copied"

    const/4 v0, 0x0

    .line 241
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private generateTextFromHighlights()Ljava/lang/String;
    .locals 4

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 223
    :goto_0
    iget-object v2, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->highlightedVerseList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->highlightedVerseList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bnminfo/bibliatakatifu/Book;

    .line 225
    invoke-virtual {v2}, Lcom/bnminfo/bibliatakatifu/Book;->getBookName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 226
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v2}, Lcom/bnminfo/bibliatakatifu/Book;->getChapterNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    .line 228
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v2}, Lcom/bnminfo/bibliatakatifu/Book;->getVerseNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 230
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v2}, Lcom/bnminfo/bibliatakatifu/Book;->getVerseText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    .line 232
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPositionOfVerse()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 136
    :goto_0
    iget-object v2, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->verseList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->verseList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bnminfo/bibliatakatifu/Book;

    .line 138
    invoke-virtual {v2}, Lcom/bnminfo/bibliatakatifu/Book;->getVerseNumber()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->clickedVerseNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private initTextToSpeech()V
    .locals 2

    .line 286
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/bnminfo/bibliatakatifu/VerseListActivity$2;

    invoke-direct {v1, p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity$2;-><init>(Lcom/bnminfo/bibliatakatifu/VerseListActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method private launchMarket()V
    .locals 3

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 320
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 322
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    const-string v1, "Couldn\'t open play store"

    .line 324
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private loadNextChapter()V
    .locals 2

    .line 166
    iget v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->chapterIndex:I

    iget-object v1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->chapterNumberList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 167
    iget v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->chapterIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->chapterIndex:I

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->updateView()V

    .line 170
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->verseList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->updateAdapterList(Ljava/util/List;)V

    return-void
.end method

.method private loadPreviousChapter()V
    .locals 1

    .line 158
    iget v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->chapterIndex:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 159
    iput v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->chapterIndex:I

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->updateView()V

    .line 162
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->verseList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->updateAdapterList(Ljava/util/List;)V

    return-void
.end method

.method private loadTopOnBannerAd()V
    .locals 4

    .line 442
    new-instance v0, Lcom/anythink/banner/api/ATBannerView;

    invoke-direct {v0, p0}, Lcom/anythink/banner/api/ATBannerView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00fb

    .line 443
    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/banner/api/ATBannerView;->setPlacementId(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 455
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/anythink/banner/api/ATBannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f080183

    .line 457
    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 458
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 459
    new-instance v1, Lcom/bnminfo/bibliatakatifu/VerseListActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity$3;-><init>(Lcom/bnminfo/bibliatakatifu/VerseListActivity;Lcom/anythink/banner/api/ATBannerView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/banner/api/ATBannerView;->setBannerAdListener(Lcom/anythink/banner/api/ATBannerListener;)V

    .line 500
    invoke-virtual {v0}, Lcom/anythink/banner/api/ATBannerView;->loadAd()V

    return-void
.end method

.method private loadTopOnInterstitialAd()V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Lcom/anythink/interstitial/api/ATInterstitial;

    const v1, 0x7f0f00fc

    invoke-virtual {p0, v1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/anythink/interstitial/api/ATInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 506
    new-instance v1, Lcom/bnminfo/bibliatakatifu/VerseListActivity$4;

    invoke-direct {v1, p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity$4;-><init>(Lcom/bnminfo/bibliatakatifu/VerseListActivity;)V

    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitial;->setAdListener(Lcom/anythink/interstitial/api/ATInterstitialListener;)V

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->load()V

    return-void
.end method

.method private loadVerseList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bnminfo/bibliatakatifu/Book;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->chapterNumberList:Ljava/util/List;

    iget v1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->chapterIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 210
    invoke-static {}, Lcom/bnminfo/bibliatakatifu/LocalStorage;->getInstance()Lcom/bnminfo/bibliatakatifu/LocalStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bnminfo/bibliatakatifu/LocalStorage;->getBookList()Ljava/util/List;

    move-result-object v1

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 212
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 213
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bnminfo/bibliatakatifu/Book;

    .line 214
    iget-object v5, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->selectedBook:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/bnminfo/bibliatakatifu/Book;->getBookName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/bnminfo/bibliatakatifu/Book;->getChapterNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 215
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private playVersesTextToSpeech(Ljava/lang/String;)V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->stopTextToSpeech()V

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "VERSES_ID"

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 269
    :goto_0
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->updatePlaySoundIcons()V

    return-void
.end method

.method private scrollToPosition(I)V
    .locals 1

    .line 146
    new-instance v0, Lcom/bnminfo/bibliatakatifu/VerseListActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity$1;-><init>(Lcom/bnminfo/bibliatakatifu/VerseListActivity;Landroid/content/Context;)V

    .line 151
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 152
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :cond_0
    return-void
.end method

.method private shareApp()V
    .locals 3

    .line 330
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 331
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const v2, 0x7f0f0088

    .line 332
    invoke-virtual {p0, v2}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "\nLet me recommend you this application\n\n"

    .line 334
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

    .line 335
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Choose one"

    .line 336
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private shareText(Ljava/lang/String;)V
    .locals 2

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 246
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 247
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x7f0f00f7

    .line 248
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showTopOnInterstitialAd()V
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0, p0}, Lcom/anythink/interstitial/api/ATInterstitial;->show(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private stopTextToSpeech()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 282
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    return-void
.end method

.method private updateAdapterList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bnminfo/bibliatakatifu/Book;",
            ">;)V"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->adapter:Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->updateList(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 186
    invoke-direct {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->scrollToPosition(I)V

    return-void
.end method

.method private updateChapterLabel()V
    .locals 3

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SURA YA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->chapterNumberList:Ljava/util/List;

    iget v2, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->chapterIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->chapterTextview:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateHighlightedList()V
    .locals 3

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->highlightedVerseList:Ljava/util/List;

    const/4 v0, 0x0

    .line 191
    :goto_0
    iget-object v1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->verseList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->verseList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bnminfo/bibliatakatifu/Book;

    .line 193
    iget-object v2, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

    invoke-virtual {v2, v1}, Lcom/bnminfo/bibliatakatifu/DBHelper;->isHighlighted(Lcom/bnminfo/bibliatakatifu/Book;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->highlightedVerseList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->updateVerseActionsView()V

    return-void
.end method

.method private updatePlaySoundIcons()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->playSoundImageView:Landroid/widget/ImageView;

    const v1, 0x7f070119

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->playSoundImageView:Landroid/widget/ImageView;

    const v1, 0x7f07011a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private updateVerseActionsView()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->highlightedVerseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->verseActionsView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->verseActionsView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateView()V
    .locals 1

    .line 179
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->loadVerseList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->verseList:Ljava/util/List;

    .line 180
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->updateHighlightedList()V

    .line 181
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->updateChapterLabel()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 404
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 426
    :sswitch_0
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->generateTextFromHighlights()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->shareText(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :sswitch_1
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->loadPreviousChapter()V

    .line 408
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->showTopOnInterstitialAd()V

    goto :goto_0

    .line 429
    :sswitch_2
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->generateTextFromHighlights()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->playVersesTextToSpeech(Ljava/lang/String;)V

    .line 431
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->showTopOnInterstitialAd()V

    goto :goto_0

    .line 411
    :sswitch_3
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->loadNextChapter()V

    .line 413
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->showTopOnInterstitialAd()V

    goto :goto_0

    .line 416
    :sswitch_4
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->generateTextFromHighlights()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->copyTextToClipboard(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->showTopOnInterstitialAd()V

    goto :goto_0

    .line 421
    :sswitch_5
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->addToBookmarks()V

    .line 423
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->showTopOnInterstitialAd()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080191 -> :sswitch_5
        0x7f0801ba -> :sswitch_4
        0x7f080257 -> :sswitch_3
        0x7f08026e -> :sswitch_2
        0x7f080272 -> :sswitch_1
        0x7f08029b -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 77
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0021

    .line 78
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->setContentView(I)V

    .line 80
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->loadTopOnBannerAd()V

    .line 81
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->loadTopOnInterstitialAd()V

    .line 83
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "chapter_list"

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->chapterNumberList:Ljava/util/List;

    const-string v0, "selected_book"

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->selectedBook:Ljava/lang/String;

    const-string v0, "selected_chapter"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->selectedChapter:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->chapterNumberList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->chapterIndex:I

    const-string v0, "clicked_verse"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->clickedVerseNumber:Ljava/lang/String;

    .line 93
    :cond_0
    invoke-static {p0}, Lcom/bnminfo/bibliatakatifu/DBHelper;->getInstance(Landroid/content/Context;)Lcom/bnminfo/bibliatakatifu/DBHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

    .line 95
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iget-object v1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->selectedBook:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 101
    :cond_1
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->initTextToSpeech()V

    const p1, 0x7f0801ba

    .line 103
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->copyButton:Landroid/widget/RelativeLayout;

    .line 104
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080191

    .line 105
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->bookmarkButton:Landroid/widget/RelativeLayout;

    .line 106
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08029b

    .line 107
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->shareButton:Landroid/widget/RelativeLayout;

    .line 108
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08026e

    .line 109
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->playButton:Landroid/widget/RelativeLayout;

    .line 110
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08026f

    .line 111
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->playSoundImageView:Landroid/widget/ImageView;

    const p1, 0x7f080272

    .line 113
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->prevButton:Landroidx/cardview/widget/CardView;

    .line 114
    invoke-virtual {p1, p0}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080257

    .line 115
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->nextButton:Landroidx/cardview/widget/CardView;

    .line 116
    invoke-virtual {p1, p0}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801a5

    .line 117
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->chapterTextview:Landroid/widget/TextView;

    const p1, 0x7f0802f9

    .line 118
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->verseActionsView:Landroid/widget/LinearLayout;

    .line 120
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->updateView()V

    const p1, 0x7f080278

    .line 122
    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 123
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 124
    new-instance p1, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;

    iget-object v1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->verseList:Ljava/util/List;

    invoke-direct {p1, p0, v1, p0}, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bnminfo/bibliatakatifu/VerseItemListener;)V

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->adapter:Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;

    .line 125
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 126
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->adapter:Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 128
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->clickedVerseNumber:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->getPositionOfVerse()I

    move-result p1

    .line 130
    invoke-direct {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->scrollToPosition(I)V

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 344
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 364
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f080038

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 379
    :pswitch_0
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->shareApp()V

    return v1

    .line 366
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/bnminfo/bibliatakatifu/SearchingActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->startActivity(Landroid/content/Intent;)V

    .line 368
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->showTopOnInterstitialAd()V

    return v1

    .line 376
    :pswitch_2
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->launchMarket()V

    return v1

    .line 371
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/bnminfo/bibliatakatifu/BookmarksActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->startActivity(Landroid/content/Intent;)V

    .line 373
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->showTopOnInterstitialAd()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f080045
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->stopTextToSpeech()V

    .line 359
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method

.method public onVerseClicked(Lcom/bnminfo/bibliatakatifu/Book;)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

    invoke-virtual {v0, p1}, Lcom/bnminfo/bibliatakatifu/DBHelper;->isHighlighted(Lcom/bnminfo/bibliatakatifu/Book;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

    invoke-virtual {v0, p1}, Lcom/bnminfo/bibliatakatifu/DBHelper;->deleteHighlighted(Lcom/bnminfo/bibliatakatifu/Book;)I

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

    invoke-virtual {v0, p1}, Lcom/bnminfo/bibliatakatifu/DBHelper;->addHighlighted(Lcom/bnminfo/bibliatakatifu/Book;)Z

    .line 395
    :goto_0
    invoke-direct {p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->updateHighlightedList()V

    .line 396
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->adapter:Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
