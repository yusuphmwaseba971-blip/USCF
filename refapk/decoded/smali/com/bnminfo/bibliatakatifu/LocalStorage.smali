.class public Lcom/bnminfo/bibliatakatifu/LocalStorage;
.super Ljava/lang/Object;
.source "LocalStorage.java"


# static fields
.field private static final localStorage:Lcom/bnminfo/bibliatakatifu/LocalStorage;


# instance fields
.field private bookList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bnminfo/bibliatakatifu/Book;",
            ">;"
        }
    .end annotation
.end field

.field private bookNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/bnminfo/bibliatakatifu/LocalStorage;

    invoke-direct {v0}, Lcom/bnminfo/bibliatakatifu/LocalStorage;-><init>()V

    sput-object v0, Lcom/bnminfo/bibliatakatifu/LocalStorage;->localStorage:Lcom/bnminfo/bibliatakatifu/LocalStorage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/bnminfo/bibliatakatifu/LocalStorage;
    .locals 1

    .line 14
    sget-object v0, Lcom/bnminfo/bibliatakatifu/LocalStorage;->localStorage:Lcom/bnminfo/bibliatakatifu/LocalStorage;

    return-object v0
.end method


# virtual methods
.method public getBookList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bnminfo/bibliatakatifu/Book;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/LocalStorage;->bookList:Ljava/util/List;

    return-object v0
.end method

.method public getBookNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/bnminfo/bibliatakatifu/LocalStorage;->bookNames:Ljava/util/List;

    return-object v0
.end method

.method public setBookList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bnminfo/bibliatakatifu/Book;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/LocalStorage;->bookList:Ljava/util/List;

    return-void
.end method

.method public setBookNames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/LocalStorage;->bookNames:Ljava/util/List;

    return-void
.end method
