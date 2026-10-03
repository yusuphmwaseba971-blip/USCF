.class Lcom/bnminfo/bibliatakatifu/VerseListActivity$2;
.super Ljava/lang/Object;
.source "VerseListActivity.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bnminfo/bibliatakatifu/VerseListActivity;->initTextToSpeech()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bnminfo/bibliatakatifu/VerseListActivity;


# direct methods
.method constructor <init>(Lcom/bnminfo/bibliatakatifu/VerseListActivity;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity$2;->this$0:Lcom/bnminfo/bibliatakatifu/VerseListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 290
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity$2;->this$0:Lcom/bnminfo/bibliatakatifu/VerseListActivity;

    invoke-static {p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->access$000(Lcom/bnminfo/bibliatakatifu/VerseListActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    new-instance v0, Ljava/util/Locale;

    const-string v1, "sw_TZ"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 292
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/VerseListActivity$2;->this$0:Lcom/bnminfo/bibliatakatifu/VerseListActivity;

    invoke-static {p1}, Lcom/bnminfo/bibliatakatifu/VerseListActivity;->access$000(Lcom/bnminfo/bibliatakatifu/VerseListActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    new-instance v0, Lcom/bnminfo/bibliatakatifu/VerseListActivity$2$1;

    invoke-direct {v0, p0}, Lcom/bnminfo/bibliatakatifu/VerseListActivity$2$1;-><init>(Lcom/bnminfo/bibliatakatifu/VerseListActivity$2;)V

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    :cond_0
    return-void
.end method
