.class final Lcom/anythink/basead/d/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/expressad/videocommon/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/f;->a(Landroid/app/Activity;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/basead/d/f;


# direct methods
.method constructor <init>(Lcom/anythink/basead/d/f;Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    iput-object p2, p0, Lcom/anythink/basead/d/f$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 3

    .line 115
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/d/f$1$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/d/f$1$1;-><init>(Lcom/anythink/basead/d/f$1;Lcom/anythink/expressad/foundation/d/c;)V

    const/4 p1, 0x2

    const/4 v2, 0x1

    .line 1137
    invoke-virtual {v0, v1, p1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(ZLjava/lang/String;F)V
    .locals 0

    if-nez p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    iget-object p1, p1, Lcom/anythink/basead/d/f;->c:Lcom/anythink/core/common/f/m;

    iget-object p1, p1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    iget-object p1, p1, Lcom/anythink/basead/d/f;->c:Lcom/anythink/core/common/f/m;

    iget-object p1, p1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    .line 92
    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->l()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    iget-object p1, p1, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    iget-object p1, p1, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    instance-of p1, p1, Lcom/anythink/basead/e/j;

    if-eqz p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    iget-object p1, p1, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    check-cast p1, Lcom/anythink/basead/e/j;

    invoke-interface {p1}, Lcom/anythink/basead/e/j;->onRewarded()V

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    iget-object p1, p1, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    if-eqz p1, :cond_2

    .line 98
    iget-object p1, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    iget-object p1, p1, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    invoke-interface {p1}, Lcom/anythink/basead/e/a;->onAdClosed()V

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    invoke-virtual {p1}, Lcom/anythink/basead/d/f;->e()V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    const-string v1, "40002"

    invoke-static {v1, p1}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onShowFailed(Lcom/anythink/basead/c/e;)V

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/anythink/basead/d/f;->e:Lcom/anythink/core/common/f/ai;

    return-void
.end method

.method public final c()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    new-instance v1, Lcom/anythink/basead/e/i;

    invoke-direct {v1}, Lcom/anythink/basead/e/i;-><init>()V

    const/16 v2, 0x9

    .line 1016
    iput v2, v1, Lcom/anythink/basead/e/i;->c:I

    .line 80
    invoke-interface {v0, v1}, Lcom/anythink/basead/e/a;->onAdShow(Lcom/anythink/basead/e/i;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    instance-of v0, v0, Lcom/anythink/basead/e/j;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    check-cast v0, Lcom/anythink/basead/e/j;

    invoke-interface {v0}, Lcom/anythink/basead/e/j;->onVideoAdPlayStart()V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anythink/basead/d/f;->e:Lcom/anythink/core/common/f/ai;

    return-void
.end method

.method public final d()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    instance-of v0, v0, Lcom/anythink/basead/e/j;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    check-cast v0, Lcom/anythink/basead/e/j;

    invoke-interface {v0}, Lcom/anythink/basead/e/j;->onVideoAdPlayEnd()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method
