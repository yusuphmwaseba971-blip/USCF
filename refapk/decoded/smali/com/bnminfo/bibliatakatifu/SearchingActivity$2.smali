.class Lcom/bnminfo/bibliatakatifu/SearchingActivity$2;
.super Ljava/lang/Object;
.source "SearchingActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


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

    .line 98
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity$2;->this$0:Lcom/bnminfo/bibliatakatifu/SearchingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity$2;->this$0:Lcom/bnminfo/bibliatakatifu/SearchingActivity;

    invoke-static {p1}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->access$200(Lcom/bnminfo/bibliatakatifu/SearchingActivity;)Landroidx/cardview/widget/CardView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 108
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity$2;->this$0:Lcom/bnminfo/bibliatakatifu/SearchingActivity;

    invoke-static {p1}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->access$000(Lcom/bnminfo/bibliatakatifu/SearchingActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/SearchingActivity$2;->this$0:Lcom/bnminfo/bibliatakatifu/SearchingActivity;

    invoke-static {p1}, Lcom/bnminfo/bibliatakatifu/SearchingActivity;->access$200(Lcom/bnminfo/bibliatakatifu/SearchingActivity;)Landroidx/cardview/widget/CardView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method
