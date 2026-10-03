.class public final Lcom/anythink/expressad/foundation/g/c/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/anythink/expressad/foundation/g/c/a;

.field private b:Ljava/lang/String;

.field private c:Lcom/anythink/expressad/foundation/g/c/e;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/g/c/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/anythink/expressad/foundation/g/c/e;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/c/e;->c:Lcom/anythink/expressad/foundation/g/c/e;

    return-void
.end method

.method private b(Lcom/anythink/expressad/foundation/g/c/e;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/c/e;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/c/e;->d:Ljava/util/List;

    .line 1033
    :cond_0
    iput-object p0, p1, Lcom/anythink/expressad/foundation/g/c/e;->c:Lcom/anythink/expressad/foundation/g/c/e;

    .line 45
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/c/e;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/anythink/expressad/foundation/g/c/a;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/c/e;->a:Lcom/anythink/expressad/foundation/g/c/a;

    return-object v0
.end method

.method public final a(Lcom/anythink/expressad/foundation/g/c/a;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/c/e;->a:Lcom/anythink/expressad/foundation/g/c/a;

    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/g/c/a;Ljava/lang/String;)V
    .locals 1

    .line 49
    new-instance v0, Lcom/anythink/expressad/foundation/g/c/e;

    invoke-direct {v0}, Lcom/anythink/expressad/foundation/g/c/e;-><init>()V

    .line 2017
    iput-object p1, v0, Lcom/anythink/expressad/foundation/g/c/e;->a:Lcom/anythink/expressad/foundation/g/c/a;

    .line 2025
    iput-object p2, v0, Lcom/anythink/expressad/foundation/g/c/e;->b:Ljava/lang/String;

    .line 52
    invoke-direct {p0, v0}, Lcom/anythink/expressad/foundation/g/c/e;->b(Lcom/anythink/expressad/foundation/g/c/e;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/c/e;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/g/c/e;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/g/c/e;

    .line 59
    invoke-direct {p0, v0}, Lcom/anythink/expressad/foundation/g/c/e;->b(Lcom/anythink/expressad/foundation/g/c/e;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/c/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/anythink/expressad/foundation/g/c/e;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/c/e;->c:Lcom/anythink/expressad/foundation/g/c/e;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/g/c/e;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/c/e;->d:Ljava/util/List;

    return-object v0
.end method
