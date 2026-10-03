.class public Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field bookNameTextView:Landroid/widget/TextView;

.field bookmarkImageView:Landroid/widget/ImageView;

.field searchItem:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;

.field verseTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;->this$0:Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;

    .line 92
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f08028d

    .line 93
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;->searchItem:Landroid/widget/LinearLayout;

    .line 94
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080190

    .line 95
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;->bookNameTextView:Landroid/widget/TextView;

    const p1, 0x7f0802fb

    .line 96
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;->verseTextView:Landroid/widget/TextView;

    const p1, 0x7f080192

    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;->bookmarkImageView:Landroid/widget/ImageView;

    .line 98
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;->this$0:Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;

    invoke-static {v0}, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->access$000(Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bnminfo/bibliatakatifu/Book;

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08028d

    if-ne v1, v2, :cond_0

    .line 105
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;->this$0:Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;

    invoke-static {p1}, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->access$100(Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;)Lcom/bnminfo/bibliatakatifu/SearchItemListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/bnminfo/bibliatakatifu/SearchItemListener;->onItemClicked(Lcom/bnminfo/bibliatakatifu/Book;)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f080192

    if-ne p1, v1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter$ViewHolder;->this$0:Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;

    invoke-static {p1}, Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;->access$100(Lcom/bnminfo/bibliatakatifu/SearchRecyclerViewAdapter;)Lcom/bnminfo/bibliatakatifu/SearchItemListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/bnminfo/bibliatakatifu/SearchItemListener;->onBookmarkClicked(Lcom/bnminfo/bibliatakatifu/Book;)V

    :cond_1
    :goto_0
    return-void
.end method
