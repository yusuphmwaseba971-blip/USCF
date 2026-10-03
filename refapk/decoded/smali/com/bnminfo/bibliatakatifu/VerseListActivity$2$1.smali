.class Lcom/bnminfo/bibliatakatifu/VerseListActivity$2$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "VerseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bnminfo/bibliatakatifu/VerseListActivity$2;->onInit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bnminfo/bibliatakatifu/VerseListActivity$2;


# direct methods
.method constructor <init>(Lcom/bnminfo/bibliatakatifu/VerseListActivity$2;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity$2$1;->this$1:Lcom/bnminfo/bibliatakatifu/VerseListActivity$2;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 1

    .line 300
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity$2$1;->this$1:Lcom/bnminfo/bibliatakatifu/VerseListActivity$2;

    iget-object p1, p1, Lcom/bnminfo/bibliatakatifu/VerseListActivity$2;->this$0:Lcom/bnminfo/bibliatakatifu/VerseListActivity;

    new-instance v0, Lcom/bnminfo/bibliatakatifu/VerseListActivity$2$1$1;

    invoke-direct {v0, p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity$2$1$1;-><init>(Lcom/bnminfo/bibliatakatifu/VerseListActivity$2$1;)V

    invoke-virtual {p1, v0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
