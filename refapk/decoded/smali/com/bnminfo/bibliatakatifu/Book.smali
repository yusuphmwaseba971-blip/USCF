.class public Lcom/bnminfo/bibliatakatifu/Book;
.super Ljava/lang/Object;
.source "Book.java"


# instance fields
.field private bookName:Ljava/lang/String;

.field private bookNumber:Ljava/lang/String;

.field private chapterNumber:Ljava/lang/String;

.field private verseNumber:Ljava/lang/String;

.field private verseText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/Book;->bookNumber:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/bnminfo/bibliatakatifu/Book;->bookName:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/bnminfo/bibliatakatifu/Book;->chapterNumber:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/bnminfo/bibliatakatifu/Book;->verseNumber:Ljava/lang/String;

    .line 15
    iput-object p5, p0, Lcom/bnminfo/bibliatakatifu/Book;->verseText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBookName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/Book;->bookName:Ljava/lang/String;

    return-object v0
.end method

.method public getBookNumber()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/Book;->bookNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getChapterNumber()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/Book;->chapterNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getVerseNumber()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/Book;->verseNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getVerseText()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/Book;->verseText:Ljava/lang/String;

    return-object v0
.end method
