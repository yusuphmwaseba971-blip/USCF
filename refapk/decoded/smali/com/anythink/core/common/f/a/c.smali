.class public final Lcom/anythink/core/common/f/a/c;
.super Lcom/anythink/core/common/f/m;

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/a/a;Lcom/anythink/core/common/f/h;I)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/anythink/core/common/f/m;-><init>()V

    .line 11
    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/a/c;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/a/c;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/a/c;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->ad()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/a/c;->d:Ljava/lang/String;

    .line 15
    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->M()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/a/c;->f:I

    .line 16
    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->Z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/a/c;->g:Ljava/lang/String;

    .line 17
    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->aa()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/a/c;->h:I

    .line 18
    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->N()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/a/c;->i:I

    .line 19
    iput p3, p0, Lcom/anythink/core/common/f/a/c;->j:I

    .line 20
    invoke-virtual {p2}, Lcom/anythink/core/common/f/h;->j()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/core/common/f/a/c;->k:Ljava/lang/String;

    .line 22
    new-instance p2, Lcom/anythink/core/common/f/a/d;

    invoke-direct {p2, p1}, Lcom/anythink/core/common/f/a/d;-><init>(Lcom/anythink/core/common/f/a/a;)V

    iput-object p2, p0, Lcom/anythink/core/common/f/a/c;->n:Lcom/anythink/core/common/f/n;

    return-void
.end method
