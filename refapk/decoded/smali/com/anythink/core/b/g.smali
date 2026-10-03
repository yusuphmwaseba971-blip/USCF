.class public final Lcom/anythink/core/b/g;
.super Lcom/anythink/core/b/e;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/a;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/anythink/core/b/e;-><init>(Lcom/anythink/core/common/f/a;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/List;Lcom/anythink/core/common/h/k;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/anythink/core/common/h/k;",
            ")V"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/anythink/core/b/a/b;

    invoke-direct {v0}, Lcom/anythink/core/b/a/b;-><init>()V

    .line 29
    iget-object v1, p0, Lcom/anythink/core/b/g;->f:Lcom/anythink/core/common/f/a;

    iget-object v1, v1, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/az;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/d/e;->aC()I

    move-result v1

    iput v1, v0, Lcom/anythink/core/b/a/b;->f:I

    .line 32
    new-instance v1, Lcom/anythink/core/b/a/a;

    iget-object v3, p0, Lcom/anythink/core/b/g;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/b/g;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/core/b/g;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/b/g;->f:Lcom/anythink/core/common/f/a;

    iget-object v2, v2, Lcom/anythink/core/common/f/a;->n:Lcom/anythink/core/common/f/az;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v8

    const/4 v7, 0x1

    move-object v2, v1

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/anythink/core/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/anythink/core/d/e;)V

    .line 33
    invoke-virtual {v1, v0}, Lcom/anythink/core/b/a/a;->a(Lcom/anythink/core/b/a/b;)V

    const/4 p1, 0x0

    .line 34
    invoke-virtual {v1, p1, p2}, Lcom/anythink/core/b/a/a;->a(ILcom/anythink/core/common/h/k;)V

    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/anythink/core/b/g;->f:Lcom/anythink/core/common/f/a;

    iget-object v0, v0, Lcom/anythink/core/common/f/a;->p:Ljava/lang/String;

    return-object v0
.end method
