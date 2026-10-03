.class public Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VerseRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


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

.field private context:Landroid/content/Context;

.field private dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private listener:Lcom/bnminfo/bibliatakatifu/VerseItemListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/bnminfo/bibliatakatifu/VerseItemListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bnminfo/bibliatakatifu/Book;",
            ">;",
            "Lcom/bnminfo/bibliatakatifu/VerseItemListener;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->bookList:Ljava/util/List;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 28
    iput-object p3, p0, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->listener:Lcom/bnminfo/bibliatakatifu/VerseItemListener;

    .line 29
    invoke-static {p1}, Lcom/bnminfo/bibliatakatifu/DBHelper;->getInstance(Landroid/content/Context;)Lcom/bnminfo/bibliatakatifu/DBHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;)Ljava/util/List;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->bookList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;)Lcom/bnminfo/bibliatakatifu/VerseItemListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->listener:Lcom/bnminfo/bibliatakatifu/VerseItemListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->bookList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->onBindViewHolder(Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter$ViewHolder;I)V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->bookList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bnminfo/bibliatakatifu/Book;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/bnminfo/bibliatakatifu/Book;->getVerseNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bnminfo/bibliatakatifu/Book;->getVerseText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->dbHelper:Lcom/bnminfo/bibliatakatifu/DBHelper;

    invoke-virtual {v1, p2}, Lcom/bnminfo/bibliatakatifu/DBHelper;->isHighlighted(Lcom/bnminfo/bibliatakatifu/Book;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 45
    iget-object p2, p1, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter$ViewHolder;->verseTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object p2, p1, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter$ViewHolder;->verseTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    :goto_0
    iget-object p1, p1, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter$ViewHolder;->verseTextview:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter$ViewHolder;
    .locals 2

    .line 35
    iget-object p2, p0, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b00ef

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 36
    new-instance p2, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter$ViewHolder;-><init>(Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public updateList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bnminfo/bibliatakatifu/Book;",
            ">;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->bookList:Ljava/util/List;

    .line 81
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
