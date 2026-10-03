.class final Lcom/anythink/basead/d/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/expressad/videocommon/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/d;->a(Landroid/app/Activity;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/basead/d/d;


# direct methods
.method constructor <init>(Lcom/anythink/basead/d/d;Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    iput-object p2, p0, Lcom/anythink/basead/d/d$1;->a:Ljava/lang/String;

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

    .line 103
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/d/d$1$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/d/d$1$1;-><init>(Lcom/anythink/basead/d/d$1;Lcom/anythink/expressad/foundation/d/c;)V

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

    .line 87
    iget-object p1, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    iget-object p1, p1, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    iget-object p1, p1, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    invoke-interface {p1}, Lcom/anythink/basead/e/a;->onAdClosed()V

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    invoke-virtual {p1}, Lcom/anythink/basead/d/d;->e()V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    const-string v1, "40002"

    invoke-static {v1, p1}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onShowFailed(Lcom/anythink/basead/c/e;)V

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/anythink/basead/d/d;->e:Lcom/anythink/core/common/f/ai;

    return-void
.end method

.method public final c()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    new-instance v1, Lcom/anythink/basead/e/i;

    invoke-direct {v1}, Lcom/anythink/basead/e/i;-><init>()V

    invoke-interface {v0, v1}, Lcom/anythink/basead/e/a;->onAdShow(Lcom/anythink/basead/e/i;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anythink/basead/d/d;->e:Lcom/anythink/core/common/f/ai;

    return-void
.end method

.method public final d()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    instance-of v0, v0, Lcom/anythink/basead/e/j;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/anythink/basead/d/d$1;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

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
