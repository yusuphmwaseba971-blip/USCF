.class public final Lcom/anythink/core/common/f/y;
.super Ljava/lang/Object;


# instance fields
.field a:D

.field private b:I

.field private c:Lcom/anythink/core/common/f/h;

.field private d:Z

.field private e:D

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>(ILcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/anythink/core/common/f/y;->b:I

    .line 20
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->Y()Z

    move-result p1

    iput-boolean p1, p0, Lcom/anythink/core/common/f/y;->d:Z

    .line 21
    invoke-static {p2}, Lcom/anythink/core/b/d/a;->b(Lcom/anythink/core/common/f/au;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/f/y;->e:D

    if-eqz p3, :cond_0

    .line 23
    invoke-virtual {p3}, Lcom/anythink/core/common/f/h;->S()Lcom/anythink/core/common/f/h;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    const/4 p3, 0x0

    .line 25
    invoke-static {p1, p2, p3, p3}, Lcom/anythink/core/common/o/u;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;IZ)V

    :cond_0
    const-string p1, "0"

    .line 1038
    iput-object p1, p0, Lcom/anythink/core/common/f/y;->f:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 1042
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->m()I

    move-result p1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    const/4 p3, 0x6

    if-eq p1, p3, :cond_1

    const-string p1, "1"

    .line 1052
    iput-object p1, p0, Lcom/anythink/core/common/f/y;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "3"

    .line 1049
    iput-object p1, p0, Lcom/anythink/core/common/f/y;->f:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "2"

    .line 1045
    iput-object p1, p0, Lcom/anythink/core/common/f/y;->f:Ljava/lang/String;

    .line 1055
    :goto_0
    invoke-virtual {p2}, Lcom/anythink/core/common/f/au;->az()I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/f/y;->g:I

    :cond_3
    return-void
.end method

.method public constructor <init>(ILcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;D)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/core/common/f/y;-><init>(ILcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;)V

    .line 33
    iput-wide p4, p0, Lcom/anythink/core/common/f/y;->a:D

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/au;)V
    .locals 2

    const-string v0, "0"

    .line 38
    iput-object v0, p0, Lcom/anythink/core/common/f/y;->f:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 42
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

    .line 52
    iput-object v0, p0, Lcom/anythink/core/common/f/y;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "3"

    .line 49
    iput-object v0, p0, Lcom/anythink/core/common/f/y;->f:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "2"

    .line 45
    iput-object v0, p0, Lcom/anythink/core/common/f/y;->f:Ljava/lang/String;

    .line 55
    :goto_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/au;->az()I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/f/y;->g:I

    return-void
.end method

.method private r()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->f()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/anythink/core/common/f/y;->d:Z

    return v0
.end method

.method public final b()D
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/anythink/core/common/f/y;->a:D

    return-wide v0
.end method

.method public final c()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/anythink/core/common/f/y;->b:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->ad()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->N()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->aa()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->ac()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->M()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->ab()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->ae()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->V()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/anythink/core/common/f/y;->c:Lcom/anythink/core/common/f/h;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->W()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final n()D
    .locals 2

    .line 142
    iget-wide v0, p0, Lcom/anythink/core/common/f/y;->e:D

    return-wide v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/anythink/core/common/f/y;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final p()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/anythink/core/common/f/y;->g:I

    return v0
.end method

.method public final q()Z
    .locals 2

    .line 161
    iget v0, p0, Lcom/anythink/core/common/f/y;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
