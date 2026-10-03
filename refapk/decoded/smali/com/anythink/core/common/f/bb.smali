.class public final Lcom/anythink/core/common/f/bb;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Lcom/anythink/core/common/f/q$a;

.field private c:Lcom/anythink/core/common/f/h;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:D

.field private j:D

.field private k:D

.field private l:D

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 74
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 75
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/anythink/core/common/f/q$a;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/anythink/core/common/f/bb;->b:Lcom/anythink/core/common/f/q$a;

    return-object v0
.end method

.method public final a(D)V
    .locals 0

    .line 178
    iput-wide p1, p0, Lcom/anythink/core/common/f/bb;->i:D

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/au;)V
    .locals 2

    const-string v0, "0"

    .line 32
    iput-object v0, p0, Lcom/anythink/core/common/f/bb;->h:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->m()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const-string v0, "1"

    .line 46
    iput-object v0, p0, Lcom/anythink/core/common/f/bb;->h:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "3"

    .line 43
    iput-object v0, p0, Lcom/anythink/core/common/f/bb;->h:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "2"

    .line 39
    iput-object v0, p0, Lcom/anythink/core/common/f/bb;->h:Ljava/lang/String;

    .line 49
    :goto_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->ay()I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/f/bb;->m:I

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/h;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/anythink/core/common/f/bb;->c:Lcom/anythink/core/common/f/h;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/anythink/core/common/f/bb;->f:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "offer_id"

    .line 56
    invoke-static {p1, v0}, Lcom/anythink/core/common/f/bb;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/bb;->d:Ljava/lang/String;

    const-string v0, "dsp_id"

    .line 57
    invoke-static {p1, v0}, Lcom/anythink/core/common/f/bb;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/bb;->e:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "ws_imp_switch"

    .line 60
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/f/bb;->a:I

    :cond_0
    const-string v0, "ws_action"

    .line 64
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 65
    instance-of v0, p1, Lcom/anythink/core/common/f/q$a;

    if-eqz v0, :cond_1

    .line 66
    check-cast p1, Lcom/anythink/core/common/f/q$a;

    iput-object p1, p0, Lcom/anythink/core/common/f/bb;->b:Lcom/anythink/core/common/f/q$a;

    :cond_1
    return-void
.end method

.method public final b()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/anythink/core/common/f/bb;->a:I

    return v0
.end method

.method public final b(D)V
    .locals 0

    .line 182
    iput-wide p1, p0, Lcom/anythink/core/common/f/bb;->j:D

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/anythink/core/common/f/bb;->g:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/anythink/core/common/f/bb;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c(D)V
    .locals 0

    .line 207
    iput-wide p1, p0, Lcom/anythink/core/common/f/bb;->k:D

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/anythink/core/common/f/bb;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d(D)V
    .locals 0

    .line 215
    iput-wide p1, p0, Lcom/anythink/core/common/f/bb;->l:D

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/anythink/core/common/f/bb;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/anythink/core/common/f/bb;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/anythink/core/common/f/bb;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/anythink/core/common/f/bb;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/anythink/core/common/f/bb;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->ad()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/anythink/core/common/f/bb;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->N()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/anythink/core/common/f/bb;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->aa()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/anythink/core/common/f/bb;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final m()I
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/anythink/core/common/f/bb;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->M()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/anythink/core/common/f/bb;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/anythink/core/common/f/bb;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->ab()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/anythink/core/common/f/bb;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->ae()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final q()D
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/anythink/core/common/f/bb;->i:D

    return-wide v0
.end method

.method public final r()D
    .locals 2

    .line 190
    iget-wide v0, p0, Lcom/anythink/core/common/f/bb;->j:D

    return-wide v0
.end method

.method public final s()D
    .locals 2

    .line 203
    iget-wide v0, p0, Lcom/anythink/core/common/f/bb;->k:D

    return-wide v0
.end method

.method public final t()D
    .locals 2

    .line 211
    iget-wide v0, p0, Lcom/anythink/core/common/f/bb;->l:D

    return-wide v0
.end method

.method public final u()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/anythink/core/common/f/bb;->m:I

    return v0
.end method

.method public final v()Z
    .locals 2

    .line 223
    iget v0, p0, Lcom/anythink/core/common/f/bb;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
