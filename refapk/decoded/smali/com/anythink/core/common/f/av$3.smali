.class final Lcom/anythink/core/common/f/av$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/f/av$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f/av;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/anythink/core/common/f/av;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f/av;I)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/anythink/core/common/f/av$3;->b:Lcom/anythink/core/common/f/av;

    iput p2, p0, Lcom/anythink/core/common/f/av$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/f/aq;)Z
    .locals 1

    .line 183
    iget v0, p0, Lcom/anythink/core/common/f/av$3;->a:I

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/f/aq;->a(I)V

    const/4 p1, 0x1

    return p1
.end method
