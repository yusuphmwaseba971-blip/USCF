.class public abstract Lcom/anythink/expressad/foundation/g/c/f;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/anythink/expressad/foundation/g/c/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/anythink/expressad/foundation/g/c/e;

    invoke-direct {v0}, Lcom/anythink/expressad/foundation/g/c/e;-><init>()V

    .line 11
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/g/c/e;->a(Ljava/lang/String;)V

    .line 12
    sget-object p1, Lcom/anythink/expressad/foundation/g/c/a;->a:Lcom/anythink/expressad/foundation/g/c/a;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/g/c/e;->a(Lcom/anythink/expressad/foundation/g/c/a;)V

    .line 13
    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/g/c/f;->a()Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 15
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/g/c/e;->a(Ljava/util/List;)V

    .line 17
    :cond_0
    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/c/f;->a:Lcom/anythink/expressad/foundation/g/c/e;

    return-void
.end method

.method protected static a(Ljava/util/ArrayList;Lcom/anythink/expressad/foundation/g/c/a;Ljava/lang/String;)Lcom/anythink/expressad/foundation/g/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/anythink/expressad/foundation/g/c/e;",
            ">;",
            "Lcom/anythink/expressad/foundation/g/c/a;",
            "Ljava/lang/String;",
            ")",
            "Lcom/anythink/expressad/foundation/g/c/e;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/anythink/expressad/foundation/g/c/e;

    invoke-direct {v0}, Lcom/anythink/expressad/foundation/g/c/e;-><init>()V

    .line 28
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/g/c/e;->a(Lcom/anythink/expressad/foundation/g/c/a;)V

    .line 29
    invoke-virtual {v0, p2}, Lcom/anythink/expressad/foundation/g/c/e;->a(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/g/c/e;",
            ">;"
        }
    .end annotation
.end method

.method public final b()Lcom/anythink/expressad/foundation/g/c/e;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/c/f;->a:Lcom/anythink/expressad/foundation/g/c/e;

    return-object v0
.end method
