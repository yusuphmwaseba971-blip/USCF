.class public Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BookmarksRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field bookMarkDateTextView:Landroid/widget/TextView;

.field bookMarkImageView:Landroid/widget/ImageView;

.field bookMarkItem:Landroid/widget/LinearLayout;

.field bookMarkTitleTextView:Landroid/widget/TextView;

.field bookMarkVerseTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;->this$0:Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;

    .line 66
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f08018c

    .line 67
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;->bookMarkItem:Landroid/widget/LinearLayout;

    .line 68
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08018d

    .line 69
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;->bookMarkTitleTextView:Landroid/widget/TextView;

    const p1, 0x7f08018a

    .line 70
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;->bookMarkDateTextView:Landroid/widget/TextView;

    const p1, 0x7f08018e

    .line 71
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;->bookMarkVerseTextView:Landroid/widget/TextView;

    const p1, 0x7f08018b

    .line 72
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;->bookMarkImageView:Landroid/widget/ImageView;

    .line 73
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08018c

    if-ne v0, v1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;->this$0:Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;

    invoke-static {p1}, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->access$100(Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;)Lcom/bnminfo/bibliatakatifu/BookmarkItemListener;

    move-result-object p1

    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;->this$0:Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;

    invoke-static {v0}, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->access$000(Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bnminfo/bibliatakatifu/Bookmark;

    invoke-interface {p1, v0}, Lcom/bnminfo/bibliatakatifu/BookmarkItemListener;->onBookmarkClicked(Lcom/bnminfo/bibliatakatifu/Bookmark;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08018b

    if-ne v0, v1, :cond_1

    .line 83
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;->this$0:Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->access$200(Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method
