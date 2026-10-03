.class public final Lcom/anythink/core/common/f/ao;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/anythink/core/d/e;

.field b:Lcom/anythink/core/common/f/h;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field

.field f:I


# direct methods
.method public constructor <init>(Lcom/anythink/core/d/e;Lcom/anythink/core/common/f/h;I)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/anythink/core/common/f/ao;->f:I

    .line 20
    iput-object p1, p0, Lcom/anythink/core/common/f/ao;->a:Lcom/anythink/core/d/e;

    .line 21
    iput-object p2, p0, Lcom/anythink/core/common/f/ao;->b:Lcom/anythink/core/common/f/h;

    .line 22
    iput p3, p0, Lcom/anythink/core/common/f/ao;->f:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/anythink/core/d/e;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/anythink/core/common/f/ao;->a:Lcom/anythink/core/d/e;

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/anythink/core/common/f/ao;->c:Ljava/util/List;

    return-void
.end method

.method public final b()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/anythink/core/common/f/ao;->f:I

    return v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/anythink/core/common/f/ao;->d:Ljava/util/List;

    return-void
.end method

.method public final c()Lcom/anythink/core/common/f/h;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/anythink/core/common/f/ao;->b:Lcom/anythink/core/common/f/h;

    return-object v0
.end method

.method public final c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/anythink/core/common/f/ao;->e:Ljava/util/List;

    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/anythink/core/common/f/ao;->c:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/anythink/core/common/f/ao;->d:Ljava/util/List;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/anythink/core/common/f/ao;->e:Ljava/util/List;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/anythink/core/common/f/ao;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/f/ao;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/f/ao;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
