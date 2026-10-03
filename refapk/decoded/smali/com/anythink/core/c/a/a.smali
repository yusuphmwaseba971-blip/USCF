.class public final Lcom/anythink/core/c/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0xa

.field public static final b:I = 0x4


# instance fields
.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:D

.field private j:J

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    if-eqz p2, :cond_5

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 102
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 108
    :cond_1
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    return-void

    .line 111
    :cond_2
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_3

    return-void

    :cond_3
    const-string v0, "ecpm"

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 117
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/anythink/core/c/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final a(D)V
    .locals 0

    .line 65
    iput-wide p1, p0, Lcom/anythink/core/c/a/a;->i:D

    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/anythink/core/c/a/a;->f:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 73
    iput-wide p1, p0, Lcom/anythink/core/c/a/a;->j:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/anythink/core/c/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/anythink/core/c/a/a;->f:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/anythink/core/c/a/a;->c:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/anythink/core/c/a/a;->g:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/anythink/core/c/a/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/anythink/core/c/a/a;->h:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/anythink/core/c/a/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/anythink/core/c/a/a;->k:Ljava/lang/String;

    return-void
.end method

.method public final e()D
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/anythink/core/c/a/a;->i:D

    return-wide v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/anythink/core/c/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public final f()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/anythink/core/c/a/a;->j:J

    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/anythink/core/c/a/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 4

    .line 85
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "req_id"

    .line 87
    iget-object v2, p0, Lcom/anythink/core/c/a/a;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/anythink/core/c/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "unit_id"

    .line 88
    iget-object v2, p0, Lcom/anythink/core/c/a/a;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/anythink/core/c/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "dsp_id"

    .line 89
    iget-object v2, p0, Lcom/anythink/core/c/a/a;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/anythink/core/c/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ecpm"

    .line 90
    iget-wide v2, p0, Lcom/anythink/core/c/a/a;->i:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/core/c/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ts"

    .line 91
    iget-wide v2, p0, Lcom/anythink/core/c/a/a;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/core/c/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "lc_id"

    .line 92
    iget-object v2, p0, Lcom/anythink/core/c/a/a;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/anythink/core/c/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "nw_firm_id"

    .line 93
    iget v2, p0, Lcom/anythink/core/c/a/a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/core/c/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/anythink/core/c/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/anythink/core/c/a/a;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlacementStatisticsBean{requestId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/c/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", networkFirmId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/anythink/core/c/a/a;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", adSourceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/core/c/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dspId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/core/c/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", price="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/anythink/core/c/a/a;->i:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", recordTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/anythink/core/c/a/a;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", psId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/core/c/a/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", placementId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/core/c/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/anythink/core/c/a/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
