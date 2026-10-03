.class public final Lcom/anythink/core/common/p/e;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/anythink/core/common/f/au;

.field b:I


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/au;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/anythink/core/common/p/e;->a:Lcom/anythink/core/common/f/au;

    .line 12
    iput p2, p0, Lcom/anythink/core/common/p/e;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/anythink/core/common/f/au;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/anythink/core/common/p/e;->a:Lcom/anythink/core/common/f/au;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/anythink/core/common/p/e;->b:I

    return v0
.end method
