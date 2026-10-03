.class public final Lcom/anythink/expressad/exoplayer/j/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/expressad/exoplayer/j/h;


# instance fields
.field private final a:Lcom/anythink/expressad/exoplayer/j/h;

.field private final b:Lcom/anythink/expressad/exoplayer/j/g;

.field private c:Z

.field private d:J


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/j/h;Lcom/anythink/expressad/exoplayer/j/g;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/j/h;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/z;->a:Lcom/anythink/expressad/exoplayer/j/h;

    .line 42
    invoke-static {p2}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/j/g;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/z;->b:Lcom/anythink/expressad/exoplayer/j/g;

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 5

    .line 69
    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->a:Lcom/anythink/expressad/exoplayer/j/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/j/h;->a([BII)I

    move-result p3

    if-lez p3, :cond_1

    .line 75
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->b:Lcom/anythink/expressad/exoplayer/j/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/j/g;->a([BII)V

    .line 76
    iget-wide p1, p0, Lcom/anythink/expressad/exoplayer/j/z;->d:J

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    int-to-long v0, p3

    sub-long/2addr p1, v0

    .line 77
    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/j/z;->d:J

    :cond_1
    return p3
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/j/k;)J
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 47
    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/j/z;->a:Lcom/anythink/expressad/exoplayer/j/h;

    invoke-interface {v2, v1}, Lcom/anythink/expressad/exoplayer/j/h;->a(Lcom/anythink/expressad/exoplayer/j/k;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/anythink/expressad/exoplayer/j/z;->d:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v4

    .line 51
    :cond_0
    iget-wide v2, v1, Lcom/anythink/expressad/exoplayer/j/k;->g:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/j/z;->d:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 53
    new-instance v2, Lcom/anythink/expressad/exoplayer/j/k;

    iget-object v8, v1, Lcom/anythink/expressad/exoplayer/j/k;->c:Landroid/net/Uri;

    iget-wide v9, v1, Lcom/anythink/expressad/exoplayer/j/k;->e:J

    iget-wide v11, v1, Lcom/anythink/expressad/exoplayer/j/k;->f:J

    iget-wide v13, v0, Lcom/anythink/expressad/exoplayer/j/z;->d:J

    iget-object v15, v1, Lcom/anythink/expressad/exoplayer/j/k;->h:Ljava/lang/String;

    iget v1, v1, Lcom/anythink/expressad/exoplayer/j/k;->i:I

    move-object v7, v2

    move/from16 v16, v1

    invoke-direct/range {v7 .. v16}, Lcom/anythink/expressad/exoplayer/j/k;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    move-object v1, v2

    :cond_1
    const/4 v2, 0x1

    .line 62
    iput-boolean v2, v0, Lcom/anythink/expressad/exoplayer/j/z;->c:Z

    .line 63
    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/j/z;->b:Lcom/anythink/expressad/exoplayer/j/g;

    invoke-interface {v2, v1}, Lcom/anythink/expressad/exoplayer/j/g;->a(Lcom/anythink/expressad/exoplayer/j/k;)V

    .line 64
    iget-wide v1, v0, Lcom/anythink/expressad/exoplayer/j/z;->d:J

    return-wide v1
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->a:Lcom/anythink/expressad/exoplayer/j/h;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/j/h;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j/z;->a:Lcom/anythink/expressad/exoplayer/j/h;

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/j/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-boolean v1, p0, Lcom/anythink/expressad/exoplayer/j/z;->c:Z

    if-eqz v1, :cond_0

    .line 94
    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->c:Z

    .line 95
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->b:Lcom/anythink/expressad/exoplayer/j/g;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/j/g;->a()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 93
    iget-boolean v2, p0, Lcom/anythink/expressad/exoplayer/j/z;->c:Z

    if-eqz v2, :cond_1

    .line 94
    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->c:Z

    .line 95
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/z;->b:Lcom/anythink/expressad/exoplayer/j/g;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/j/g;->a()V

    .line 97
    :cond_1
    throw v1
.end method
