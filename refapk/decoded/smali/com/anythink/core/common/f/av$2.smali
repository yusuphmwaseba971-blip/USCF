.class final Lcom/anythink/core/common/f/av$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/f/av$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f/av;->a(Lcom/anythink/core/common/f/q;)Lcom/anythink/core/common/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/f;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/anythink/core/common/f/q;

.field final synthetic d:Lcom/anythink/core/common/f/av;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/f;Ljava/util/List;Lcom/anythink/core/common/f/q;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/anythink/core/common/f/av$2;->d:Lcom/anythink/core/common/f/av;

    iput-object p2, p0, Lcom/anythink/core/common/f/av$2;->a:Lcom/anythink/core/common/f/f;

    iput-object p3, p0, Lcom/anythink/core/common/f/av$2;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/anythink/core/common/f/av$2;->c:Lcom/anythink/core/common/f/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/f/aq;)Z
    .locals 7

    .line 119
    iget-object v0, p0, Lcom/anythink/core/common/f/av$2;->a:Lcom/anythink/core/common/f/f;

    iget-boolean v0, v0, Lcom/anythink/core/common/f/f;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/anythink/core/common/f/av$2;->a:Lcom/anythink/core/common/f/f;

    iput-boolean v1, v0, Lcom/anythink/core/common/f/f;->c:Z

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aq;->c()Lcom/anythink/core/common/f/b;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 128
    iget-object v0, p0, Lcom/anythink/core/common/f/av$2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/anythink/core/common/f/av$2;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/anythink/core/common/f/av$2;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 132
    iget-object v2, p0, Lcom/anythink/core/common/f/av$2;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/f/b;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    move-result-object v2

    .line 133
    invoke-virtual {p1}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    move-result-object v3

    .line 135
    invoke-static {v3}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v3

    invoke-static {v2}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v5

    cmpl-double v2, v3, v5

    if-lez v2, :cond_2

    .line 136
    iget-object v2, p0, Lcom/anythink/core/common/f/av$2;->b:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/anythink/core/common/f/av$2;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_3

    .line 140
    iget-object v0, p0, Lcom/anythink/core/common/f/av$2;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getUnitGroupInfo()Lcom/anythink/core/common/f/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v0

    .line 148
    iget-object v2, p0, Lcom/anythink/core/common/f/av$2;->c:Lcom/anythink/core/common/f/q;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    iget-object v2, v2, Lcom/anythink/core/common/f/q;->token:Ljava/lang/String;

    iget-object v0, v0, Lcom/anythink/core/common/f/q;->token:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    iget-object v0, p0, Lcom/anythink/core/common/f/av$2;->a:Lcom/anythink/core/common/f/f;

    iput-object p1, v0, Lcom/anythink/core/common/f/f;->b:Lcom/anythink/core/common/f/b;

    :cond_5
    return v1
.end method
