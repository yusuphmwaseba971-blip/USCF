.class public final Lcom/anythink/core/common/f/f;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/b;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/anythink/core/common/f/b;

.field protected c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/anythink/core/common/f/b;
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/anythink/core/common/f/f;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/f/f;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Lcom/anythink/core/common/f/b;
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/anythink/core/common/f/f;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/f/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/anythink/core/common/f/f;->c:Z

    return v0
.end method

.method public final d()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/anythink/core/common/f/f;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/anythink/core/common/f/b;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/anythink/core/common/f/f;->b:Lcom/anythink/core/common/f/b;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/ay$a;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/anythink/core/common/f/f;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/anythink/core/common/f/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/f/b;

    .line 40
    invoke-virtual {v2}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    move-result-object v2

    .line 41
    new-instance v3, Lcom/anythink/core/common/f/ay$a;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/anythink/core/common/f/ay$a;-><init>(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/q;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
