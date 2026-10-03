.class public final Lcom/anythink/core/common/h/f;
.super Lcom/anythink/core/common/h/a;


# static fields
.field public static final c:I = 0x1


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field private d:Lcom/anythink/core/common/f/bb;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/anythink/core/common/h/a;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/anythink/core/common/h/f;->b:I

    .line 31
    iput-object p1, p0, Lcom/anythink/core/common/h/f;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/anythink/core/common/f/bb;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/anythink/core/common/h/f;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 37
    iput p1, p0, Lcom/anythink/core/common/h/f;->b:I

    .line 38
    iput-object p2, p0, Lcom/anythink/core/common/h/f;->d:Lcom/anythink/core/common/f/bb;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/anythink/core/common/h/f;
    .locals 1

    .line 42
    new-instance v0, Lcom/anythink/core/common/h/f;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/h/f;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/anythink/core/common/f/bb;)Lcom/anythink/core/common/h/f;
    .locals 1

    .line 46
    new-instance v0, Lcom/anythink/core/common/h/f;

    invoke-direct {v0, p0, p1}, Lcom/anythink/core/common/h/f;-><init>(Ljava/lang/String;Lcom/anythink/core/common/f/bb;)V

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 91
    iget p1, p0, Lcom/anythink/core/common/h/f;->b:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/anythink/core/common/h/f;->d:Lcom/anythink/core/common/f/bb;

    if-eqz p1, :cond_0

    const-string v0, "200"

    .line 92
    invoke-virtual {p1, v0}, Lcom/anythink/core/common/f/bb;->a(Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/anythink/core/common/h/f;->d:Lcom/anythink/core/common/f/bb;

    invoke-static {p1}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/bb;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .locals 0

    return-void
.end method

.method protected final a(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/anythink/core/common/h/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .locals 2

    .line 111
    iget v0, p0, Lcom/anythink/core/common/h/f;->b:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 112
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "9990"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/anythink/core/common/h/f;->d:Lcom/anythink/core/common/f/bb;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/bb;->a(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/anythink/core/common/h/f;->d:Lcom/anythink/core/common/f/bb;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/bb;->b(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/anythink/core/common/h/f;->d:Lcom/anythink/core/common/f/bb;

    invoke-static {p1}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/bb;)V

    :cond_0
    return-void
.end method

.method protected final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final d()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected final g()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final j()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
