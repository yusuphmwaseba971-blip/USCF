.class public Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ChapterRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field chapterItem:Landroid/widget/LinearLayout;

.field chapterTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter$ViewHolder;->this$0:Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;

    .line 54
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0801a3

    .line 55
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter$ViewHolder;->chapterItem:Landroid/widget/LinearLayout;

    .line 56
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801a4

    .line 57
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter$ViewHolder;->chapterTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0801a3

    if-ne p1, v0, :cond_0

    .line 63
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter$ViewHolder;->this$0:Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;

    invoke-static {p1}, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;->access$000(Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter$ViewHolder;->this$0:Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;

    invoke-static {v0}, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;->access$100(Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;)Lcom/bnminfo/bibliatakatifu/ChapterItemListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bnminfo/bibliatakatifu/ChapterItemListener;->onChapterClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
