.class final Lcom/anythink/core/b/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/b;->a(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/anythink/core/common/f/au;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/b;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/anythink/core/b/b$3;->a:Lcom/anythink/core/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/au;)I
    .locals 3

    .line 309
    invoke-static {p0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v0

    .line 310
    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide p0

    cmpl-double v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 306
    check-cast p1, Lcom/anythink/core/common/f/au;

    check-cast p2, Lcom/anythink/core/common/f/au;

    .line 1309
    invoke-static {p1}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v0

    .line 1310
    invoke-static {p2}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide p1

    cmpl-double v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
