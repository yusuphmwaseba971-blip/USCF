.class public final Lcom/anythink/core/common/f/ah;
.super Lcom/anythink/core/common/f/ai;


# static fields
.field public static final W:I = 0x2

.field public static final b:I = 0x1


# instance fields
.field X:I

.field a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/anythink/core/common/f/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/anythink/core/common/f/ah;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/anythink/core/common/f/ah;->a:I

    return-void
.end method

.method public final b()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/anythink/core/common/f/ah;->X:I

    return v0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final k(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/anythink/core/common/f/ah;->X:I

    return-void
.end method
