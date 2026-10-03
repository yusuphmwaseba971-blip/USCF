.class Lcom/bnminfo/bibliatakatifu/SearchingActivity$1;
.super Ljava/lang/Object;
.source "SearchingActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bnminfo/bibliatakatifu/SearchingActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bnminfo/bibliatakatifu/SearchingActivity;


# direct methods
.method constructor <init>(Lcom/bnminfo/bibliatakatifu/SearchingActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity$1;->this$0:Lcom/bnminfo/bibliatakatifu/SearchingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity$1;->this$0:Lcom/bnminfo/bibliatakatifu/SearchingActivity;

    invoke-static {v0}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->access$000(Lcom/bnminfo/bibliatakatifu/SearchingActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity$1;->this$0:Lcom/bnminfo/bibliatakatifu/SearchingActivity;

    invoke-static {v0, p1}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->access$100(Lcom/bnminfo/bibliatakatifu/SearchingActivity;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity$1;->this$0:Lcom/bnminfo/bibliatakatifu/SearchingActivity;

    invoke-static {p1}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->access$000(Lcom/bnminfo/bibliatakatifu/SearchingActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
