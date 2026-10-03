.class final Lcom/anythink/core/common/f/av$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/f/av$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f/av;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/anythink/core/common/f/aq;

.field final synthetic b:Lcom/anythink/core/common/f/av;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f/av;[Lcom/anythink/core/common/f/aq;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/anythink/core/common/f/av$1;->b:Lcom/anythink/core/common/f/av;

    iput-object p2, p0, Lcom/anythink/core/common/f/av$1;->a:[Lcom/anythink/core/common/f/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/f/aq;)Z
    .locals 8

    .line 69
    iget-object v0, p0, Lcom/anythink/core/common/f/av$1;->a:[Lcom/anythink/core/common/f/aq;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 71
    aput-object p1, v0, v1

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aq;->e()D

    move-result-wide v4

    iget-object v0, p0, Lcom/anythink/core/common/f/av$1;->a:[Lcom/anythink/core/common/f/aq;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/aq;->e()D

    move-result-wide v6

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    :goto_1
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aq;->e()D

    move-result-wide v4

    iget-object v0, p0, Lcom/anythink/core/common/f/av$1;->a:[Lcom/anythink/core/common/f/aq;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/aq;->e()D

    move-result-wide v6

    cmpl-double v0, v4, v6

    if-nez v0, :cond_2

    .line 78
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aq;->f()J

    move-result-wide v4

    iget-object v0, p0, Lcom/anythink/core/common/f/av$1;->a:[Lcom/anythink/core/common/f/aq;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/aq;->f()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/anythink/core/common/f/av$1;->a:[Lcom/anythink/core/common/f/aq;

    aput-object p1, v0, v1

    :cond_3
    return v3
.end method
