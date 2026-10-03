.class final Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;Landroid/os/Looper;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 184
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-nez p1, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-wide v0, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-wide v2, v2, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->i:J

    .line 190
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-boolean p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->r:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-boolean p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->s:Z

    if-nez p1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iput-boolean v0, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->r:Z

    .line 192
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz p1, :cond_1

    .line 193
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    invoke-interface {p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->a()V

    .line 197
    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz p1, :cond_2

    .line 198
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-wide v1, v1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->i:J

    invoke-interface {p1, v1, v2}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->a(J)V

    .line 201
    :cond_2
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-boolean p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->m:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-wide v1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->i:J

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->j:I

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-ltz p1, :cond_3

    .line 202
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iput-boolean v0, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->m:Z

    .line 203
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz p1, :cond_5

    .line 204
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    const/16 v1, 0x19

    invoke-interface {p1, v1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->a(I)V

    goto :goto_0

    .line 206
    :cond_3
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-boolean p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->n:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-wide v1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->i:J

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->k:I

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-ltz p1, :cond_4

    .line 207
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iput-boolean v0, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->n:Z

    .line 208
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz p1, :cond_5

    .line 209
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    const/16 v1, 0x32

    invoke-interface {p1, v1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->a(I)V

    goto :goto_0

    .line 211
    :cond_4
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-boolean p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->o:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-wide v1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->i:J

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->l:I

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-ltz p1, :cond_5

    .line 212
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iput-boolean v0, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->o:Z

    .line 213
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz p1, :cond_5

    .line 214
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    const/16 v1, 0x4b

    invoke-interface {p1, v1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->a(I)V

    .line 218
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-boolean p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->s:Z

    if-nez p1, :cond_7

    .line 219
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-wide v1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->i:J

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-wide v3, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->h:J

    cmp-long p1, v1, v3

    if-ltz p1, :cond_7

    .line 220
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->a(Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;)V

    .line 221
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->b(Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;)Z

    .line 222
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iput-boolean v0, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->s:Z

    .line 223
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz p1, :cond_6

    .line 224
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    iget-object p1, p1, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    invoke-interface {p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->c()V

    .line 226
    :cond_6
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->i()V

    :cond_7
    return-void
.end method
