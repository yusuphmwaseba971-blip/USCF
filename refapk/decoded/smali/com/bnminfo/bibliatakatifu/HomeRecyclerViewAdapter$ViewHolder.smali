.class public Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HomeRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field bookItem:Landroid/widget/RelativeLayout;

.field bookNameTextview:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter$ViewHolder;->this$0:Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;

    .line 55
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f080189

    .line 56
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter$ViewHolder;->bookItem:Landroid/widget/RelativeLayout;

    .line 57
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08018f

    .line 58
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter$ViewHolder;->bookNameTextview:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter$ViewHolder;->this$0:Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;

    invoke-static {v0}, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;->access$000(Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f080189

    if-ne p1, v1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter$ViewHolder;->this$0:Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;

    invoke-static {p1}, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;->access$100(Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;)Lcom/bnminfo/bibliatakatifu/HomeItemListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/bnminfo/bibliatakatifu/HomeItemListener;->onItemClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
