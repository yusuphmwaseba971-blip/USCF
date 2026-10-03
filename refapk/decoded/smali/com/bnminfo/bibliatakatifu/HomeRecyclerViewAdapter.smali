.class public Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HomeRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private bookList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private listener:Lcom/bnminfo/bibliatakatifu/HomeItemListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/bnminfo/bibliatakatifu/HomeItemListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bnminfo/bibliatakatifu/HomeItemListener;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;->bookList:Ljava/util/List;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 27
    iput-object p3, p0, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;->listener:Lcom/bnminfo/bibliatakatifu/HomeItemListener;

    return-void
.end method

.method static synthetic access$000(Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;)Ljava/util/List;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;->bookList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;)Lcom/bnminfo/bibliatakatifu/HomeItemListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;->listener:Lcom/bnminfo/bibliatakatifu/HomeItemListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;->bookList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;->onBindViewHolder(Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter$ViewHolder;I)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;->bookList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 41
    iget-object p1, p1, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter$ViewHolder;->bookNameTextview:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter$ViewHolder;
    .locals 2

    .line 33
    iget-object p2, p0, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b009f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 34
    new-instance p2, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter$ViewHolder;-><init>(Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public updateList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;->bookList:Ljava/util/List;

    .line 73
    invoke-virtual {p0}, Lcom/bnminfo/bibliatakatifu/HomeRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
