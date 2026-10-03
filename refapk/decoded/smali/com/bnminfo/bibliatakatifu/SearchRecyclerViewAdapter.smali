.class public Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SearchRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private listener:Lcom/bnminfo/bibliatakatifu/SearchItemListener;

.field private searchBookList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bnminfo/bibliatakatifu/Book;",
            ">;"
        }
    .end annotation
.end field

.field private searchText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/bnminfo/bibliatakatifu/SearchItemListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bnminfo/bibliatakatifu/Book;",
            ">;",
            "Lcom/bnminfo/bibliatakatifu/SearchItemListener;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->searchBookList:Ljava/util/List;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 37
    invoke-static {p1}, Lcom/bnminfo/bibliatakatifu/DBHelper;->getInstance(Landroid/content/Context;)Lcom/bnminfo/bibliatakatifu/DBHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

    .line 38
    iput-object p3, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->listener:Lcom/bnminfo/bibliatakatifu/SearchItemListener;

    return-void
.end method

.method static synthetic access$000(Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->searchBookList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;)Lcom/bnminfo/bibliatakatifu/SearchItemListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->listener:Lcom/bnminfo/bibliatakatifu/SearchItemListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->searchBookList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->onBindViewHolder(Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;I)V
    .locals 10

    .line 50
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->searchBookList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bnminfo/bibliatakatifu/Book;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/bnminfo/bibliatakatifu/Book;->getBookName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bnminfo/bibliatakatifu/Book;->getChapterNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bnminfo/bibliatakatifu/Book;->getVerseNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p2}, Lcom/bnminfo/bibliatakatifu/Book;->getVerseText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^\\s*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    iget-object v2, p1, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;->bookNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->searchText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->searchText:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 58
    iget-object v2, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->searchText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 60
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v8, Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v4, v1, [[I

    const/4 v5, 0x0

    new-array v6, v5, [I

    aput-object v6, v4, v5

    new-array v1, v1, [I

    iget-object v6, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050061

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    aput v6, v1, v5

    invoke-direct {v8, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 62
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/16 v4, 0x21

    .line 63
    invoke-interface {v3, v1, v0, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 64
    iget-object v0, p1, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;->verseTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p1, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;->verseTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p1, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;->verseTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

    invoke-virtual {v0, p2}, Lcom/bnminfo/bibliatakatifu/DBHelper;->isBookmarked(Lcom/bnminfo/bibliatakatifu/Book;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 73
    iget-object p1, p1, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;->bookmarkImageView:Landroid/widget/ImageView;

    const p2, 0x7f07011d

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 75
    :cond_2
    iget-object p1, p1, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;->bookmarkImageView:Landroid/widget/ImageView;

    const p2, 0x7f07011e

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;
    .locals 2

    .line 44
    iget-object p2, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b00da

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    new-instance p2, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;-><init>(Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public updateList(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bnminfo/bibliatakatifu/Book;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 114
    iput-object p2, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->searchText:Ljava/lang/String;

    .line 115
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->searchBookList:Ljava/util/List;

    .line 116
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
