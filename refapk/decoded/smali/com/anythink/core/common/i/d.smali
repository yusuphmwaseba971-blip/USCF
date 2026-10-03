.class public final Lcom/anythink/core/common/i/d;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:J

.field protected g:J

.field protected h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/anythink/core/common/i/d;->a:I

    return-void
.end method

.method private a(J)V
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/anythink/core/common/i/d;->f:J

    return-void
.end method

.method private b(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/anythink/core/common/i/d;->b:I

    return-void
.end method

.method private b(J)V
    .locals 0

    .line 67
    iput-wide p1, p0, Lcom/anythink/core/common/i/d;->g:J

    return-void
.end method

.method private c(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/anythink/core/common/i/d;->c:I

    return-void
.end method

.method private d(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/anythink/core/common/i/d;->d:I

    return-void
.end method

.method private e(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/anythink/core/common/i/d;->e:I

    return-void
.end method

.method private f(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/anythink/core/common/i/d;->h:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/anythink/core/common/i/d;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/anythink/core/common/i/d;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/anythink/core/common/i/d;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/anythink/core/common/i/d;->d:I

    return v0
.end method

.method public final e()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/anythink/core/common/i/d;->e:I

    return v0
.end method

.method public final f()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/anythink/core/common/i/d;->f:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/anythink/core/common/i/d;->g:J

    return-wide v0
.end method

.method public final h()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/anythink/core/common/i/d;->h:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PerformaceEntry{totalMemory="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/anythink/core/common/i/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneVailMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/core/common/i/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", appJavaMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/core/common/i/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", appMaxJavaMemory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/core/common/i/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cpuNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/core/common/i/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalStorage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/anythink/core/common/i/d;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastStorage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/anythink/core/common/i/d;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cpuRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/core/common/i/d;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
