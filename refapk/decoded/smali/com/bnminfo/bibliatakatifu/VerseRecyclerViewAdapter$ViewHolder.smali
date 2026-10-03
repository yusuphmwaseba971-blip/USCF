.class public Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VerseRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;

.field verseItem:Landroid/widget/RelativeLayout;

.field verseTextview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter$ViewHolder;->this$0:Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;

    .line 63
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0802fa

    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter$ViewHolder;->verseItem:Landroid/widget/RelativeLayout;

    .line 65
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0802fc

    .line 66
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter$ViewHolder;->verseTextview:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter$ViewHolder;->this$0:Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;

    invoke-static {v0}, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->access$000(Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bnminfo/bibliatakatifu/Book;

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0802fa

    if-ne p1, v1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter$ViewHolder;->this$0:Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;

    invoke-static {p1}, Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;->access$100(Lcom/bnminfo/bibliatakatifu/VerseRecyclerViewAdapter;)Lcom/bnminfo/bibliatakatifu/VerseItemListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/bnminfo/bibliatakatifu/VerseItemListener;->onVerseClicked(Lcom/bnminfo/bibliatakatifu/Book;)V

    :cond_0
    return-void
.end method
