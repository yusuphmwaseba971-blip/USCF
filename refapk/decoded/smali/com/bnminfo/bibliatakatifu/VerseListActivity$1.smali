.class Lcom/bnminfo/bibliatakatifu/VerseListActivity$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "VerseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bnminfo/bibliatakatifu/VerseListActivity;->scrollToPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bnminfo/bibliatakatifu/VerseListActivity;


# direct methods
.method constructor <init>(Lcom/bnminfo/bibliatakatifu/VerseListActivity;Landroid/content/Context;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity$1;->this$0:Lcom/bnminfo/bibliatakatifu/VerseListActivity;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getVerticalSnapPreference()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
