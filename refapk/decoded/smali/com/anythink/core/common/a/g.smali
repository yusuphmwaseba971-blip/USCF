.class public final Lcom/anythink/core/common/a/g;
.super Lcom/anythink/core/common/a/e;


# instance fields
.field c:I

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/anythink/core/common/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/anythink/core/common/a/g;->c:I

    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/anythink/core/common/a/g;->d:I

    return-void
.end method

.method public final c()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/anythink/core/common/a/g;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/anythink/core/common/a/g;->d:I

    return v0
.end method
