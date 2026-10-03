.class public abstract Lcom/anythink/basead/e/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/e/a;


# instance fields
.field a:Lcom/anythink/core/common/f/l;

.field b:Lcom/anythink/core/common/f/h;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/h;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/anythink/basead/e/e;->a:Lcom/anythink/core/common/f/l;

    .line 19
    iput-object p2, p0, Lcom/anythink/basead/e/e;->b:Lcom/anythink/core/common/f/h;

    return-void
.end method

.method private a()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/anythink/basead/e/e;->a:Lcom/anythink/core/common/f/l;

    instance-of v1, v0, Lcom/anythink/core/common/f/j;

    if-eqz v1, :cond_0

    .line 41
    check-cast v0, Lcom/anythink/core/common/f/j;

    .line 43
    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->c()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 44
    invoke-static {}, Lcom/anythink/core/common/a/c;->a()Lcom/anythink/core/common/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/a/c;->b(Lcom/anythink/core/common/f/j;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAdClick(Lcom/anythink/basead/e/i;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/anythink/basead/e/e;->b:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 34
    iget v1, p1, Lcom/anythink/basead/e/i;->a:I

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->B(I)V

    .line 35
    iget-object v0, p0, Lcom/anythink/basead/e/e;->b:Lcom/anythink/core/common/f/h;

    iget p1, p1, Lcom/anythink/basead/e/i;->b:I

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/h;->C(I)V

    :cond_0
    return-void
.end method

.method public onAdShow(Lcom/anythink/basead/e/i;)V
    .locals 2

    .line 1040
    iget-object p1, p0, Lcom/anythink/basead/e/e;->a:Lcom/anythink/core/common/f/l;

    instance-of v0, p1, Lcom/anythink/core/common/f/j;

    if-eqz v0, :cond_0

    .line 1041
    check-cast p1, Lcom/anythink/core/common/f/j;

    .line 1043
    invoke-virtual {p1}, Lcom/anythink/core/common/f/j;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1044
    invoke-static {}, Lcom/anythink/core/common/a/c;->a()Lcom/anythink/core/common/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/a/c;->b(Lcom/anythink/core/common/f/j;)V

    :cond_0
    return-void
.end method

.method public updateTrackingInfo(Lcom/anythink/core/common/f/h;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/anythink/basead/e/e;->b:Lcom/anythink/core/common/f/h;

    return-void
.end method
