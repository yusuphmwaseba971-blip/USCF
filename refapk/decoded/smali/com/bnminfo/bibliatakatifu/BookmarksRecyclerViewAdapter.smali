.class public Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BookmarksRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private bookmarkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bnminfo/bibliatakatifu/Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private listener:Lcom/bnminfo/bibliatakatifu/BookmarkItemListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/bnminfo/bibliatakatifu/BookmarkItemListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bnminfo/bibliatakatifu/Bookmark;",
            ">;",
            "Lcom/bnminfo/bibliatakatifu/BookmarkItemListener;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->bookmarkList:Ljava/util/List;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 30
    invoke-static {p1}, Lcom/bnminfo/bibliatakatifu/DBHelper;->getInstance(Landroid/content/Context;)Lcom/bnminfo/bibliatakatifu/DBHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

    .line 31
    iput-object p3, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->listener:Lcom/bnminfo/bibliatakatifu/BookmarkItemListener;

    return-void
.end method

.method static synthetic access$000(Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->bookmarkList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;)Lcom/bnminfo/bibliatakatifu/BookmarkItemListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->listener:Lcom/bnminfo/bibliatakatifu/BookmarkItemListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;Landroid/view/View;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->inflateOptionsMenu(Landroid/view/View;I)V

    return-void
.end method

.method private inflateOptionsMenu(Landroid/view/View;I)V
    .locals 2

    .line 89
    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    iget-object v1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/high16 p1, 0x7f0c0000

    .line 90
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/PopupMenu;->inflate(I)V

    .line 91
    new-instance p1, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$1;

    invoke-direct {p1, p0, p2}, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$1;-><init>(Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;I)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 101
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->bookmarkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->onBindViewHolder(Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;I)V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->bookmarkList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bnminfo/bibliatakatifu/Bookmark;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/bnminfo/bibliatakatifu/Bookmark;->getBookName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bnminfo/bibliatakatifu/Bookmark;->getChapterNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bnminfo/bibliatakatifu/Bookmark;->getVerseNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p2}, Lcom/bnminfo/bibliatakatifu/Bookmark;->getVerseText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^\\s*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p2}, Lcom/bnminfo/bibliatakatifu/Bookmark;->getBookmarkDate()Ljava/lang/String;

    move-result-object p2

    .line 49
    iget-object v2, p1, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;->bookMarkTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p1, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;->bookMarkDateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object p1, p1, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;->bookMarkVerseTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;
    .locals 2

    .line 37
    iget-object p2, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b008a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    new-instance p2, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;-><init>(Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2
.end method
