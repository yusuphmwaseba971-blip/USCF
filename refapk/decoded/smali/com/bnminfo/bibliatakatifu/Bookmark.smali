.class public Lcom/bnminfo/bibliatakatifu/Bookmark;
.super Ljava/lang/Object;
.source "Bookmark.java"


# instance fields
.field private bookName:Ljava/lang/String;

.field private bookNumber:Ljava/lang/String;

.field private bookmarkDate:Ljava/lang/String;

.field private chapterNumber:Ljava/lang/String;

.field private verseNumber:Ljava/lang/String;

.field private verseText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/Bookmark;->bookNumber:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/bnminfo/bibliatakatifu/Bookmark;->bookName:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/bnminfo/bibliatakatifu/Bookmark;->chapterNumber:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/bnminfo/bibliatakatifu/Bookmark;->verseNumber:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcom/bnminfo/bibliatakatifu/Bookmark;->verseText:Ljava/lang/String;

    .line 17
    iput-object p6, p0, Lcom/bnminfo/bibliatakatifu/Bookmark;->bookmarkDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBookName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/Bookmark;->bookName:Ljava/lang/String;

    return-object v0
.end method

.method public getBookNumber()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/Bookmark;->bookNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getBookmarkDate()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/Bookmark;->bookmarkDate:Ljava/lang/String;

    return-object v0
.end method

.method public getChapterNumber()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/Bookmark;->chapterNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getVerseNumber()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/Bookmark;->verseNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getVerseText()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/Bookmark;->verseText:Ljava/lang/String;

    return-object v0
.end method
