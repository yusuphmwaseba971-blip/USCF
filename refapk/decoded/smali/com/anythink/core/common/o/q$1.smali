.class final Lcom/anythink/core/common/o/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/g/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/o/q;->a(Lcom/anythink/core/common/f/ao;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/ao;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f/ao;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/anythink/core/common/o/q$1;->a:Lcom/anythink/core/common/f/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/f/au;II)V
    .locals 0

    .line 101
    invoke-virtual {p1, p2}, Lcom/anythink/core/common/f/au;->C(I)V

    if-ltz p3, :cond_0

    .line 104
    invoke-virtual {p1, p3}, Lcom/anythink/core/common/f/au;->B(I)V

    .line 107
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object p2

    iget-object p3, p0, Lcom/anythink/core/common/o/q$1;->a:Lcom/anythink/core/common/f/ao;

    invoke-virtual {p3}, Lcom/anythink/core/common/f/ao;->c()Lcom/anythink/core/common/f/h;

    move-result-object p3

    invoke-virtual {p3}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;Lcom/anythink/core/common/f/au;)Lcom/anythink/core/common/f/av;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->ak()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/anythink/core/common/f/av;->b(I)V

    :cond_0
    return-void
.end method
