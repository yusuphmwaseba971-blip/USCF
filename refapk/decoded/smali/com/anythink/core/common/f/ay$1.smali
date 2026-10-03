.class final Lcom/anythink/core/common/f/ay$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f/ay;->c(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/anythink/core/common/f/ay$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/ay;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f/ay;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/anythink/core/common/f/ay$1;->a:Lcom/anythink/core/common/f/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/anythink/core/common/f/ay$a;Lcom/anythink/core/common/f/ay$a;)I
    .locals 5

    .line 163
    iget-wide v0, p0, Lcom/anythink/core/common/f/ay$a;->d:D

    iget-wide v2, p1, Lcom/anythink/core/common/f/ay$a;->d:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 p0, -0x1

    return p0

    .line 165
    :cond_0
    iget-wide v0, p0, Lcom/anythink/core/common/f/ay$a;->d:D

    iget-wide p0, p1, Lcom/anythink/core/common/f/ay$a;->d:D

    cmpl-double v2, v0, p0

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 160
    check-cast p1, Lcom/anythink/core/common/f/ay$a;

    check-cast p2, Lcom/anythink/core/common/f/ay$a;

    .line 1163
    iget-wide v0, p1, Lcom/anythink/core/common/f/ay$a;->d:D

    iget-wide v2, p2, Lcom/anythink/core/common/f/ay$a;->d:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1165
    :cond_0
    iget-wide v0, p1, Lcom/anythink/core/common/f/ay$a;->d:D

    iget-wide p1, p2, Lcom/anythink/core/common/f/ay$a;->d:D

    cmpl-double v2, v0, p1

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
