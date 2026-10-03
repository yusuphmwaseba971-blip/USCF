.class public Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ChapterRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private chapterList:Ljava/util/List;
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

.field private listener:Lcom/bnminfo/bibliatakatifu/ChapterItemListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/bnminfo/bibliatakatifu/ChapterItemListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bnminfo/bibliatakatifu/ChapterItemListener;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;->chapterList:Ljava/util/List;

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 26
    iput-object p3, p0, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;->listener:Lcom/bnminfo/bibliatakatifu/ChapterItemListener;

    return-void
.end method

.method static synthetic access$000(Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;)Ljava/util/List;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;->chapterList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;)Lcom/bnminfo/bibliatakatifu/ChapterItemListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;->listener:Lcom/bnminfo/bibliatakatifu/ChapterItemListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;->chapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;->onBindViewHolder(Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter$ViewHolder;I)V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;->chapterList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 40
    iget-object p1, p1, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter$ViewHolder;->chapterTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter$ViewHolder;
    .locals 2

    .line 32
    iget-object p2, p0, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b008d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    new-instance p2, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter$ViewHolder;-><init>(Lcom/bnminfo/bibliatakatifu/ChapterRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2
.end method
