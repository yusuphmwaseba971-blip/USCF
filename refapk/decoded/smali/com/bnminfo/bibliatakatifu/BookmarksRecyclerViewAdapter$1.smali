.class Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "BookmarksRecyclerViewAdapter.java"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->inflateOptionsMenu(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;I)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$1;->this$0:Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;

    iput p2, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 94
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f08003b

    if-ne p1, v0, :cond_0

    .line 95
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$1;->this$0:Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;

    invoke-static {p1}, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;->access$100(Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter;)Lcom/bnminfo/bibliatakatifu/BookmarkItemListener;

    move-result-object p1

    iget v0, p0, Lcom/bnminfo/bibliatakatifu/BookmarksRecyclerViewAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/bnminfo/bibliatakatifu/BookmarkItemListener;->onBookmarkDeleted(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
