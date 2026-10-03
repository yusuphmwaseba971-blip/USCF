.class Lcom/bnminfo/bibliatakatifu/VerseListActivity$2$1$1;
.super Ljava/lang/Object;
.source "VerseListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bnminfo/bibliatakatifu/VerseListActivity$2$1;->onDone(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/bnminfo/bibliatakatifu/VerseListActivity$2$1;


# direct methods
.method constructor <init>(Lcom/bnminfo/bibliatakatifu/VerseListActivity$2$1;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity$2$1$1;->this$2:Lcom/bnminfo/bibliatakatifu/VerseListActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity$2$1$1;->this$2:Lcom/bnminfo/bibliatakatifu/VerseListActivity$2$1;

    iget-object v0, v0, Lcom/bnminfo/bibliatakatifu/VerseListActivity$2$1;->this$1:Lcom/bnminfo/bibliatakatifu/VerseListActivity$2;

    iget-object v0, v0, Lcom/bnminfo/bibliatakatifu/VerseListActivity$2;->this$0:Lcom/bnminfo/bibliatakatifu/VerseListActivity;

    invoke-static {v0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->access$100(Lcom/bnminfo/bibliatakatifu/VerseListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f07011a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
