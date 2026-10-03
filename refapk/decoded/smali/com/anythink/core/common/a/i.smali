.class public final Lcom/anythink/core/common/a/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/anythink/core/common/a/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/anythink/core/common/a/i;->c:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/anythink/core/common/a/i;->a:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/anythink/core/common/a/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/anythink/core/common/a/i;->b:Ljava/lang/String;

    return-void
.end method

.method private c()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/anythink/core/common/a/i;->c:I

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/anythink/core/common/a/i;->d:Ljava/lang/String;

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/anythink/core/common/a/i;->d:Ljava/lang/String;

    return-object v0
.end method
