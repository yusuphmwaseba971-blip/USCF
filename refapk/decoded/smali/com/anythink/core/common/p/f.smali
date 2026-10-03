.class public final Lcom/anythink/core/common/p/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field final b:I

.field c:I

.field d:I

.field e:J

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/p/e;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field

.field volatile k:I

.field volatile l:I

.field volatile m:I

.field volatile n:I

.field o:Lcom/anythink/core/common/f/ay;

.field p:Lcom/anythink/core/common/f/ap;

.field q:Lcom/anythink/core/common/p/h;

.field r:Lcom/anythink/core/common/f/p;

.field s:Lcom/anythink/core/common/f/p;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/anythink/core/common/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/p/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/anythink/core/common/p/g;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/anythink/core/common/p/f;->c:I

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/anythink/core/common/p/f;->k:I

    .line 54
    iput v0, p0, Lcom/anythink/core/common/p/f;->l:I

    .line 55
    iput v0, p0, Lcom/anythink/core/common/p/f;->m:I

    .line 56
    iput v0, p0, Lcom/anythink/core/common/p/f;->n:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/p/f;->f:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/p/f;->g:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/p/f;->h:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/p/f;->i:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/p/f;->j:Ljava/util/List;

    .line 73
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->f:Ljava/util/List;

    iget-object v1, p1, Lcom/anythink/core/common/p/g;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->j:Ljava/util/List;

    iget-object v1, p1, Lcom/anythink/core/common/p/g;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    iget-object v0, p1, Lcom/anythink/core/common/p/g;->i:Lcom/anythink/core/common/p/h;

    iput-object v0, p0, Lcom/anythink/core/common/p/f;->q:Lcom/anythink/core/common/p/h;

    .line 77
    iget-object v0, p1, Lcom/anythink/core/common/p/g;->k:Lcom/anythink/core/common/f/p;

    iput-object v0, p0, Lcom/anythink/core/common/p/f;->r:Lcom/anythink/core/common/f/p;

    .line 78
    iget-object v0, p1, Lcom/anythink/core/common/p/g;->l:Lcom/anythink/core/common/f/p;

    iput-object v0, p0, Lcom/anythink/core/common/p/f;->s:Lcom/anythink/core/common/f/p;

    .line 81
    iget-object v0, p1, Lcom/anythink/core/common/p/g;->c:Lcom/anythink/core/common/f/az;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/az;->h()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/p/f;->b:I

    .line 82
    iget-object v0, p1, Lcom/anythink/core/common/p/g;->c:Lcom/anythink/core/common/f/az;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/az;->e()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/p/f;->c:I

    .line 83
    iget-object v0, p1, Lcom/anythink/core/common/p/g;->c:Lcom/anythink/core/common/f/az;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/az;->f()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/p/f;->d:I

    .line 84
    iget-object v0, p1, Lcom/anythink/core/common/p/g;->c:Lcom/anythink/core/common/f/az;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/az;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/p/f;->e:J

    .line 86
    iget-object v0, p1, Lcom/anythink/core/common/p/g;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/anythink/core/common/p/f;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 89
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/p/f;->t:Ljava/util/List;

    .line 93
    iget-object v0, p1, Lcom/anythink/core/common/p/g;->h:Lcom/anythink/core/common/f/ay;

    iput-object v0, p0, Lcom/anythink/core/common/p/f;->o:Lcom/anythink/core/common/f/ay;

    .line 94
    iget-object p1, p1, Lcom/anythink/core/common/p/g;->j:Lcom/anythink/core/common/f/ap;

    iput-object p1, p0, Lcom/anythink/core/common/p/f;->p:Lcom/anythink/core/common/f/ap;

    return-void
.end method

.method private A()D
    .locals 2

    const/4 v0, 0x1

    .line 556
    invoke-virtual {p0, v0}, Lcom/anythink/core/common/p/f;->a(Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/util/Map;)Lcom/anythink/core/common/f/au;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/p/d;",
            ">;)",
            "Lcom/anythink/core/common/f/au;"
        }
    .end annotation

    .line 1021
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1023
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1024
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1025
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/p/d;

    if-eqz v1, :cond_0

    .line 9790
    iget-boolean v2, v1, Lcom/anythink/core/common/p/d;->i:Z

    if-nez v2, :cond_0

    .line 9794
    iget-object v1, v1, Lcom/anythink/core/common/p/d;->c:Lcom/anythink/core/common/f/au;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 1037
    :cond_1
    invoke-static {v1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v2

    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v4

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 778
    invoke-static {p0}, Lcom/anythink/core/common/x;->a(Landroid/content/Context;)Lcom/anythink/core/common/x;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/au;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 762
    new-instance p4, Lcom/anythink/core/common/f/ay$a;

    invoke-virtual {p3}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v1

    invoke-direct {p4, p3, v1}, Lcom/anythink/core/common/f/ay$a;-><init>(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/q;)V

    move-object p3, v0

    move-object v0, p4

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 764
    new-instance p3, Lcom/anythink/core/common/f/ay$a;

    invoke-virtual {p4}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v1

    invoke-direct {p3, p4, v1}, Lcom/anythink/core/common/f/ay$a;-><init>(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/q;)V

    goto :goto_0

    :cond_1
    move-object p3, v0

    .line 767
    :goto_0
    invoke-static {p0}, Lcom/anythink/core/common/x;->a(Landroid/content/Context;)Lcom/anythink/core/common/x;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/anythink/core/common/x;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/ay$a;Lcom/anythink/core/common/f/ay$a;)V

    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 950
    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->K()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 953
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/h;->S()Lcom/anythink/core/common/f/h;

    move-result-object p1

    const/4 v0, 0x1

    .line 955
    invoke-static {p0, p1, v0}, Lcom/anythink/core/common/p/f;->a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;Z)V
    .locals 3

    .line 613
    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 617
    new-instance v1, Lcom/anythink/core/common/f/y;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lcom/anythink/core/common/f/y;-><init>(ILcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;)V

    .line 619
    invoke-static {v0, v1, p2}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/y;Z)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 782
    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;)V"
        }
    .end annotation

    .line 632
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 634
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 637
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/f/au;

    .line 638
    invoke-virtual {v3}, Lcom/anythink/core/common/f/au;->k()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 642
    invoke-virtual {v3}, Lcom/anythink/core/common/f/au;->ae()I

    move-result v4

    if-lez v4, :cond_0

    if-gt v4, v1, :cond_0

    .line 653
    invoke-static {v3}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v5

    .line 654
    iget-object v7, p0, Lcom/anythink/core/common/p/f;->t:Ljava/util/List;

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/common/f/au;

    invoke-static {v4}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v7

    cmpg-double v4, v5, v7

    if-gez v4, :cond_0

    .line 657
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/p/i;)Z
    .locals 4

    .line 714
    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->X()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 716
    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->m()I

    move-result p0

    if-eq p0, v2, :cond_3

    const/4 v3, 0x3

    if-eq p0, v3, :cond_3

    const/4 v3, 0x6

    if-eq p0, v3, :cond_1

    const/4 v3, 0x7

    if-eq p0, v3, :cond_3

    goto :goto_1

    .line 5072
    :cond_1
    iget-boolean p0, p1, Lcom/anythink/core/common/p/i;->g:Z

    if-eqz p0, :cond_2

    goto :goto_2

    .line 5076
    :cond_2
    iput-boolean v2, p1, Lcom/anythink/core/common/p/i;->g:Z

    goto :goto_1

    .line 5064
    :cond_3
    iget-boolean p0, p1, Lcom/anythink/core/common/p/i;->f:Z

    if-eqz p0, :cond_4

    goto :goto_2

    .line 5068
    :cond_4
    iput-boolean v2, p1, Lcom/anythink/core/common/p/i;->f:Z

    :cond_5
    :goto_1
    move v1, v0

    :goto_2
    return v1
.end method

.method public static a(Ljava/lang/String;Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;)Z
    .locals 3

    const/4 v0, 0x0

    .line 830
    :try_start_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 832
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v1

    .line 835
    invoke-static {}, Lcom/anythink/core/b/f;->a()Lcom/anythink/core/b/f;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/anythink/core/b/f;->a(Ljava/lang/String;Lcom/anythink/core/common/f/q;)V

    const/4 p0, 0x1

    if-eqz v1, :cond_0

    .line 837
    invoke-virtual {v1}, Lcom/anythink/core/common/f/q;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 844
    new-instance v2, Lcom/anythink/core/common/f/y;

    invoke-direct {v2, p0, p1, p2}, Lcom/anythink/core/common/f/y;-><init>(ILcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;)V

    .line 846
    invoke-static {v1, v2, p0}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/common/f/q;Lcom/anythink/core/common/f/y;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return v0
.end method

.method public static b(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 269
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/f/au;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/au;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static c(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation

    .line 489
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f/au;

    .line 490
    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->m()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    if-nez v0, :cond_1

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 494
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static h(Lcom/anythink/core/common/f/au;)D
    .locals 5

    .line 965
    invoke-static {p0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v0

    .line 967
    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->Z()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide v2, 0x40c3880000000000L    # 10000.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 971
    invoke-virtual {p0}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 976
    iget-wide v0, p0, Lcom/anythink/core/common/f/q;->o:D

    :cond_0
    return-wide v0
.end method

.method private w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->f:Ljava/util/List;

    return-object v0
.end method

.method private x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->g:Ljava/util/List;

    return-object v0
.end method

.method private y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->h:Ljava/util/List;

    return-object v0
.end method

.method private z()D
    .locals 2

    const/4 v0, 0x0

    .line 511
    invoke-virtual {p0, v0}, Lcom/anythink/core/common/p/f;->a(Z)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(Z)D
    .locals 5

    .line 521
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->t:Ljava/util/List;

    monitor-enter v0

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 525
    monitor-exit v0

    return-wide v2

    .line 528
    :cond_0
    iget v4, p0, Lcom/anythink/core/common/p/f;->b:I

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v1, v1, -0x1

    if-eqz p1, :cond_1

    if-ge v1, v4, :cond_1

    .line 537
    monitor-exit v0

    return-wide v2

    .line 540
    :cond_1
    iget-object p1, p0, Lcom/anythink/core/common/p/f;->t:Ljava/util/List;

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/f/au;

    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v1

    .line 545
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v1

    :catchall_0
    move-exception p1

    .line 546
    monitor-exit v0

    throw p1
.end method

.method public final a(ZJ)J
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const-wide/16 p2, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 p2, -0x1

    :cond_1
    :goto_0
    return-wide p2
.end method

.method public final a()Lcom/anythink/core/common/p/h;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->q:Lcom/anythink/core/common/p/h;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .line 299
    iget v0, p0, Lcom/anythink/core/common/p/f;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 301
    iget p1, p0, Lcom/anythink/core/common/p/f;->n:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/anythink/core/common/p/f;->n:I

    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 1

    .line 281
    iget v0, p0, Lcom/anythink/core/common/p/f;->k:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/anythink/core/common/p/f;->k:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 288
    iget p2, p0, Lcom/anythink/core/common/p/f;->l:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/anythink/core/common/p/f;->l:I

    return-void

    .line 284
    :cond_0
    iget p2, p0, Lcom/anythink/core/common/p/f;->m:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/anythink/core/common/p/f;->m:I

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/au;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/au;I)V
    .locals 8

    .line 170
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->i:Ljava/util/List;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/p/e;

    .line 2016
    iget-object v3, v3, Lcom/anythink/core/common/p/e;->a:Lcom/anythink/core/common/f/au;

    .line 172
    invoke-static {v3}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v3

    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v5

    cmpl-double v7, v3, v5

    if-lez v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->i:Ljava/util/List;

    new-instance v3, Lcom/anythink/core/common/p/e;

    invoke-direct {v3, p1, p2}, Lcom/anythink/core/common/p/e;-><init>(Lcom/anythink/core/common/f/au;I)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 179
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Lcom/anythink/core/common/f/h;)V
    .locals 3

    .line 598
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 600
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->t:Ljava/util/List;

    monitor-enter v1

    .line 601
    :try_start_0
    iget-object v2, p0, Lcom/anythink/core/common/p/f;->t:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/anythink/core/common/p/f;->a(Ljava/util/List;Ljava/util/List;)V

    .line 602
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 603
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->g:Ljava/util/List;

    monitor-enter v1

    .line 604
    :try_start_1
    iget-object v2, p0, Lcom/anythink/core/common/p/f;->g:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/anythink/core/common/p/f;->a(Ljava/util/List;Ljava/util/List;)V

    .line 605
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f/au;

    const/4 v2, 0x0

    .line 608
    invoke-static {v1, p1, v2}, Lcom/anythink/core/common/p/f;->a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;Z)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 605
    monitor-exit v1

    throw p1

    :catchall_1
    move-exception p1

    .line 602
    monitor-exit v1

    throw p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;)V"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final b(Z)Lcom/anythink/core/common/f/au;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 871
    :cond_0
    iget-object p1, p0, Lcom/anythink/core/common/p/f;->r:Lcom/anythink/core/common/f/p;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/p;->a()Lcom/anythink/core/common/f/au;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 877
    :cond_1
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->k()Z

    move-result v1

    if-nez v1, :cond_2

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tryToSendWinNotice(), do not send win, the unitGroupInfo of the max price is not a bidding ad source -- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0

    .line 882
    :cond_2
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->aj()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    return-object v0

    .line 887
    :cond_3
    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v1

    .line 889
    iget-object v3, p0, Lcom/anythink/core/common/p/f;->g:Ljava/util/List;

    monitor-enter v3

    .line 890
    :try_start_0
    iget-object v4, p0, Lcom/anythink/core/common/p/f;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/core/common/f/au;

    .line 892
    invoke-static {v5}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v6

    cmpl-double v8, v6, v1

    if-lez v8, :cond_4

    .line 893
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "tryToSendWinNotice(), do not send win, waiting for -- "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/anythink/core/common/f/au;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v0

    .line 897
    :cond_5
    monitor-exit v3

    .line 899
    iget-object v3, p0, Lcom/anythink/core/common/p/f;->i:Ljava/util/List;

    monitor-enter v3

    .line 900
    :try_start_1
    iget-object v4, p0, Lcom/anythink/core/common/p/f;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/core/common/p/e;

    .line 6016
    iget-object v5, v5, Lcom/anythink/core/common/p/e;->a:Lcom/anythink/core/common/f/au;

    .line 902
    invoke-static {v5}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v6

    cmpl-double v8, v6, v1

    if-lez v8, :cond_6

    .line 903
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "tryToSendWinNotice(), do not send win, waiting for -- "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/anythink/core/common/f/au;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 907
    :cond_7
    monitor-exit v3

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tryToSendWinNotice(), need to send win notice: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    :catchall_0
    move-exception p1

    .line 907
    monitor-exit v3

    throw p1

    :catchall_1
    move-exception p1

    .line 897
    monitor-exit v3

    throw p1
.end method

.method public final b()Lcom/anythink/core/common/f/p;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->r:Lcom/anythink/core/common/f/p;

    return-object v0
.end method

.method public final b(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 328
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->f:Ljava/util/List;

    goto :goto_0

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->h:Ljava/util/List;

    .line 332
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_b

    .line 334
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v3, 0x0

    .line 339
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/common/f/au;

    if-ne p1, v0, :cond_2

    .line 343
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 345
    :cond_2
    invoke-static {v4}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v5

    const/4 p1, 0x1

    .line 3556
    invoke-virtual {p0, p1}, Lcom/anythink/core/common/p/f;->a(Z)D

    move-result-wide v7

    cmpl-double v9, v5, v7

    if-lez v9, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 347
    :goto_1
    iget v6, p0, Lcom/anythink/core/common/p/f;->c:I

    if-ne v6, p1, :cond_6

    .line 354
    iget v0, p0, Lcom/anythink/core/common/p/f;->l:I

    iget v6, p0, Lcom/anythink/core/common/p/f;->d:I

    if-ge v0, v6, :cond_4

    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    .line 357
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 359
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getNextRequestList, isLessThenMaxRequestNum: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isExceedCachePrice: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    if-ne v6, v0, :cond_a

    .line 364
    iget p1, p0, Lcom/anythink/core/common/p/f;->n:I

    if-nez p1, :cond_9

    if-eqz v5, :cond_9

    .line 366
    invoke-static {v4}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v4

    .line 367
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    :goto_2
    if-ge v3, p1, :cond_8

    .line 370
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/au;

    .line 372
    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v6

    cmpl-double v8, v6, v4

    if-nez v8, :cond_7

    .line 374
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 381
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/p/f;->n:I

    .line 383
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getNextRequestList: same price, need request num: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/anythink/core/common/p/f;->n:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 386
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getNextRequestList: The number of ad sources with the same price that did not return results: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/anythink/core/common/p/f;->n:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b

    .line 393
    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_b
    :goto_4
    return-object v2
.end method

.method public final b(Lcom/anythink/core/common/f/au;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final declared-synchronized b(Lcom/anythink/core/common/f/au;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 802
    :try_start_0
    iget-object p2, p0, Lcom/anythink/core/common/p/f;->f:Ljava/util/List;

    goto :goto_0

    .line 798
    :cond_0
    iget-object p2, p0, Lcom/anythink/core/common/p/f;->h:Ljava/util/List;

    .line 807
    :goto_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 809
    :try_start_1
    invoke-static {p2, p1}, Lcom/anythink/core/common/o/h;->a(Ljava/util/List;Lcom/anythink/core/common/f/au;)V

    .line 814
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p2

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Lcom/anythink/core/common/f/h;)V
    .locals 4

    .line 920
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->f:Ljava/util/List;

    monitor-enter v0

    .line 921
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/f/au;

    if-eqz v2, :cond_0

    .line 922
    invoke-virtual {v2}, Lcom/anythink/core/common/f/au;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 923
    invoke-static {v2, p1}, Lcom/anythink/core/common/p/f;->a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;)V

    goto :goto_0

    .line 926
    :cond_1
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 927
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 929
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->i:Ljava/util/List;

    monitor-enter v0

    .line 930
    :try_start_1
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/p/e;

    if-eqz v2, :cond_2

    .line 7016
    iget-object v3, v2, Lcom/anythink/core/common/p/e;->a:Lcom/anythink/core/common/f/au;

    if-eqz v3, :cond_2

    .line 8016
    iget-object v3, v2, Lcom/anythink/core/common/p/e;->a:Lcom/anythink/core/common/f/au;

    .line 931
    invoke-virtual {v3}, Lcom/anythink/core/common/f/au;->k()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9016
    iget-object v2, v2, Lcom/anythink/core/common/p/e;->a:Lcom/anythink/core/common/f/au;

    .line 932
    invoke-static {v2, p1}, Lcom/anythink/core/common/p/f;->a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;)V

    goto :goto_1

    .line 935
    :cond_3
    iget-object p1, p0, Lcom/anythink/core/common/p/f;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 936
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 938
    iget-object p1, p0, Lcom/anythink/core/common/p/f;->h:Ljava/util/List;

    monitor-enter p1

    .line 939
    :try_start_2
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 940
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :catchall_1
    move-exception p1

    .line 936
    monitor-exit v0

    throw p1

    :catchall_2
    move-exception p1

    .line 927
    monitor-exit v0

    throw p1
.end method

.method public final c()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final c(Lcom/anythink/core/common/f/au;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->q:Lcom/anythink/core/common/p/h;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0, p1}, Lcom/anythink/core/common/p/h;->a(Lcom/anythink/core/common/f/au;)V

    :cond_0
    return-void
.end method

.method public final d()Lcom/anythink/core/common/f/au;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/p/f;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/au;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Lcom/anythink/core/common/f/au;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 411
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->k()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 417
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->r:Lcom/anythink/core/common/f/p;

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/f/q;->a(Lcom/anythink/core/common/f/p;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final e(Lcom/anythink/core/common/f/au;)V
    .locals 6

    .line 428
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->r:Lcom/anythink/core/common/f/p;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {v0}, Lcom/anythink/core/common/f/p;->a()Lcom/anythink/core/common/f/au;

    move-result-object v0

    if-nez v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->r:Lcom/anythink/core/common/f/p;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/p;->a(Lcom/anythink/core/common/f/au;)V

    return-void

    .line 436
    :cond_1
    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v1

    .line 437
    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v3

    cmpl-double v5, v1, v3

    if-lez v5, :cond_2

    .line 440
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->r:Lcom/anythink/core/common/f/p;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/p;->a(Lcom/anythink/core/common/f/au;)V

    return-void

    :cond_2
    if-nez v5, :cond_3

    .line 441
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->al()I

    move-result v1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->al()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 442
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->r:Lcom/anythink/core/common/f/p;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/p;->a(Lcom/anythink/core/common/f/au;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final f()I
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final f(Lcom/anythink/core/common/f/au;)V
    .locals 7

    .line 564
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->t:Ljava/util/List;

    monitor-enter v0

    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->t:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 569
    :cond_0
    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v1

    const/4 v3, 0x0

    .line 572
    :goto_0
    iget-object v4, p0, Lcom/anythink/core/common/p/f;->t:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 573
    iget-object v4, p0, Lcom/anythink/core/common/p/f;->t:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/common/f/au;

    .line 574
    invoke-static {v4}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v4

    cmpl-double v6, v1, v4

    if-lez v6, :cond_1

    .line 576
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->t:Ljava/util/List;

    invoke-interface {v1, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 580
    :cond_1
    iget-object v4, p0, Lcom/anythink/core/common/p/f;->t:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_2

    .line 581
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->t:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 586
    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final g()Lcom/anythink/core/common/f/au;
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/au;

    return-object v0
.end method

.method public final g(Lcom/anythink/core/common/f/au;)Z
    .locals 12

    .line 675
    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v0

    const/4 v2, 0x1

    .line 4556
    invoke-virtual {p0, v2}, Lcom/anythink/core/common/p/f;->a(Z)D

    move-result-wide v3

    .line 681
    iget-object v5, p0, Lcom/anythink/core/common/p/f;->g:Ljava/util/List;

    monitor-enter v5

    .line 682
    :try_start_0
    iget-object v6, p0, Lcom/anythink/core/common/p/f;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/anythink/core/common/f/au;

    .line 684
    invoke-static {v7}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v8

    .line 685
    invoke-virtual {v7}, Lcom/anythink/core/common/f/au;->k()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v10

    cmpl-double v7, v8, v10

    if-lez v7, :cond_0

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x0

    .line 692
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    cmpl-double p1, v0, v3

    if-lez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 692
    monitor-exit v5

    throw p1
.end method

.method public final h()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/p/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final j()Lcom/anythink/core/common/f/au;
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->i:Ljava/util/List;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/p/e;

    if-eqz v1, :cond_0

    .line 3016
    iget-object v1, v1, Lcom/anythink/core/common/p/e;->a:Lcom/anythink/core/common/f/au;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 191
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final k()I
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/p/e;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->i:Ljava/util/List;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final n()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 210
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 211
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method public final o()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/anythink/core/common/p/f;->k:I

    return v0
.end method

.method public final p()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/anythink/core/common/p/f;->l:I

    return v0
.end method

.method public final q()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/anythink/core/common/p/f;->m:I

    return v0
.end method

.method public final r()Lcom/anythink/core/common/f/ay;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->o:Lcom/anythink/core/common/f/ay;

    return-object v0
.end method

.method public final s()Lcom/anythink/core/common/f/ap;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->p:Lcom/anythink/core/common/f/ap;

    return-object v0
.end method

.method public final t()Lcom/anythink/core/common/f/p;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->s:Lcom/anythink/core/common/f/p;

    return-object v0
.end method

.method public final u()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/au;",
            ">;"
        }
    .end annotation

    .line 247
    iget v0, p0, Lcom/anythink/core/common/p/f;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    iget v2, p0, Lcom/anythink/core/common/p/f;->d:I

    iget-object v3, p0, Lcom/anythink/core/common/p/f;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 251
    iget-object v4, p0, Lcom/anythink/core/common/p/f;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/common/f/au;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 254
    invoke-virtual {p0, v2}, Lcom/anythink/core/common/p/f;->b(I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 256
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startToRequestMediationAd: mRequestNumType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/anythink/core/common/p/f;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", needRequestNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", validCacheNum: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/core/common/p/f;->b:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWaitingFillTime: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/anythink/core/common/p/f;->e:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 259
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 260
    iget-object v1, p0, Lcom/anythink/core/common/p/f;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v0
.end method

.method public final v()Z
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/anythink/core/common/p/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/p/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/p/f;->i:Ljava/util/List;

    .line 1009
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/p/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
