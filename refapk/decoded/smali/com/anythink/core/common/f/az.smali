.class public final Lcom/anythink/core/common/f/az;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/anythink/core/d/e;

.field private c:Lcom/anythink/core/common/f/v;

.field private d:Z

.field private e:J

.field private f:Z

.field private g:I

.field private h:I

.field private i:Z

.field private j:J


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/v;Lcom/anythink/core/d/e;)V
    .locals 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/az;->a:Ljava/lang/String;

    .line 24
    iget v0, p1, Lcom/anythink/core/common/f/v;->d:I

    .line 25
    iput-object p1, p0, Lcom/anythink/core/common/f/az;->c:Lcom/anythink/core/common/f/v;

    .line 26
    iput-object p2, p0, Lcom/anythink/core/common/f/az;->b:Lcom/anythink/core/d/e;

    .line 28
    invoke-virtual {p2}, Lcom/anythink/core/d/e;->v()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/16 p1, 0x8

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/anythink/core/common/f/az;->d:Z

    .line 29
    invoke-virtual {p2}, Lcom/anythink/core/d/e;->h()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/anythink/core/common/f/az;->e:J

    .line 31
    invoke-virtual {p2}, Lcom/anythink/core/d/e;->f()I

    move-result p1

    if-eq p1, v2, :cond_1

    invoke-virtual {p2}, Lcom/anythink/core/d/e;->v()I

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/anythink/core/common/f/az;->f:Z

    const/16 p1, 0x9

    if-ne v0, p1, :cond_2

    .line 32
    invoke-virtual {p2}, Lcom/anythink/core/d/e;->d()I

    move-result v3

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/anythink/core/d/e;->w()I

    move-result v3

    :goto_2
    iput v3, p0, Lcom/anythink/core/common/f/az;->g:I

    if-ne v0, p1, :cond_3

    .line 33
    invoke-virtual {p2}, Lcom/anythink/core/d/e;->e()I

    move-result p1

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/anythink/core/d/e;->aj()I

    move-result p1

    :goto_3
    iput p1, p0, Lcom/anythink/core/common/f/az;->h:I

    .line 34
    invoke-virtual {p2}, Lcom/anythink/core/d/e;->f()I

    move-result p1

    if-ne p1, v2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Lcom/anythink/core/common/f/az;->i:Z

    const-wide/16 p1, -0x1

    .line 36
    iput-wide p1, p0, Lcom/anythink/core/common/f/az;->j:J

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "LoadType: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " :::Generate WaterfallSetting:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/anythink/core/common/f/az;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private p()J
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/anythink/core/common/f/az;->b:Lcom/anythink/core/d/e;

    invoke-virtual {v0}, Lcom/anythink/core/d/e;->A()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a()Lcom/anythink/core/d/e;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/anythink/core/common/f/az;->b:Lcom/anythink/core/d/e;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/anythink/core/common/f/az;->d:Z

    return v0
.end method

.method public final c()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/anythink/core/common/f/az;->e:J

    return-wide v0
.end method

.method public final d()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/anythink/core/common/f/az;->f:Z

    return v0
.end method

.method public final e()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/anythink/core/common/f/az;->g:I

    return v0
.end method

.method public final f()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/anythink/core/common/f/az;->h:I

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/anythink/core/common/f/az;->i:Z

    return v0
.end method

.method public final h()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/anythink/core/common/f/az;->b:Lcom/anythink/core/d/e;

    invoke-virtual {v0}, Lcom/anythink/core/d/e;->av()I

    move-result v0

    return v0
.end method

.method public final i()J
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/anythink/core/common/f/az;->b:Lcom/anythink/core/d/e;

    invoke-virtual {v0}, Lcom/anythink/core/d/e;->ab()J

    move-result-wide v0

    return-wide v0
.end method

.method public final j()J
    .locals 8

    .line 82
    iget-object v0, p0, Lcom/anythink/core/common/f/az;->c:Lcom/anythink/core/common/f/v;

    iget-boolean v0, v0, Lcom/anythink/core/common/f/v;->j:Z

    if-eqz v0, :cond_2

    .line 83
    iget-wide v0, p0, Lcom/anythink/core/common/f/az;->j:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/f/az;->c:Lcom/anythink/core/common/f/v;

    iget v0, v0, Lcom/anythink/core/common/f/v;->h:I

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/anythink/core/common/f/az;->c:Lcom/anythink/core/common/f/v;

    iget-wide v6, v6, Lcom/anythink/core/common/f/v;->k:J

    sub-long/2addr v4, v6

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x64

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/anythink/core/common/f/az;->j:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 88
    iput-wide v2, p0, Lcom/anythink/core/common/f/az;->j:J

    .line 90
    :cond_1
    iget-wide v0, p0, Lcom/anythink/core/common/f/az;->j:J

    return-wide v0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/anythink/core/common/f/az;->b:Lcom/anythink/core/d/e;

    invoke-virtual {v0}, Lcom/anythink/core/d/e;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public final k()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/anythink/core/common/f/az;->b:Lcom/anythink/core/d/e;

    invoke-virtual {v0}, Lcom/anythink/core/d/e;->m()I

    move-result v0

    return v0
.end method

.method public final l()J
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/anythink/core/common/f/az;->b:Lcom/anythink/core/d/e;

    invoke-virtual {v0}, Lcom/anythink/core/d/e;->R()J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()J
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/anythink/core/common/f/az;->b:Lcom/anythink/core/d/e;

    invoke-virtual {v0}, Lcom/anythink/core/d/e;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()J
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/anythink/core/common/f/az;->b:Lcom/anythink/core/d/e;

    invoke-virtual {v0}, Lcom/anythink/core/d/e;->ac()J

    move-result-wide v0

    return-wide v0
.end method

.method public final o()J
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/anythink/core/common/f/az;->b:Lcom/anythink/core/d/e;

    invoke-virtual {v0}, Lcom/anythink/core/d/e;->F()J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WaterfallSetting{canLoadFailRetry="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/anythink/core/common/f/az;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", loadFailRetryDelayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/anythink/core/common/f/az;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cannBiddingFailRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/anythink/core/common/f/az;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requestType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/core/common/f/az;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/core/common/f/az;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", canBuyerIdOverTimeToBid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/anythink/core/common/f/az;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cacheNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    iget-object v1, p0, Lcom/anythink/core/common/f/az;->b:Lcom/anythink/core/d/e;

    invoke-virtual {v1}, Lcom/anythink/core/d/e;->av()I

    move-result v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
