.class final Lcom/anythink/basead/d/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/e/b$b;


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

    .line 135
    iput-object p1, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iput-object p2, p0, Lcom/anythink/basead/d/d$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    instance-of v0, v0, Lcom/anythink/basead/e/j;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    check-cast v0, Lcom/anythink/basead/e/j;

    invoke-interface {v0}, Lcom/anythink/basead/e/j;->onVideoAdPlayStart()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/e;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onShowFailed(Lcom/anythink/basead/c/e;)V

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/anythink/basead/d/d;->e:Lcom/anythink/core/common/f/ai;

    return-void
.end method

.method public final a(Lcom/anythink/basead/e/i;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onAdShow(Lcom/anythink/basead/e/i;)V

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/anythink/basead/d/d;->e:Lcom/anythink/core/common/f/ai;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 190
    sget-object v0, Lcom/anythink/basead/d/d;->a:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onDeeplinkCallback(Z)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    instance-of v0, v0, Lcom/anythink/basead/e/j;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    check-cast v0, Lcom/anythink/basead/e/j;

    invoke-interface {v0}, Lcom/anythink/basead/e/j;->onVideoAdPlayEnd()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/anythink/basead/e/i;)V
    .locals 1

    .line 182
    sget-object v0, Lcom/anythink/basead/d/d;->a:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onAdClick(Lcom/anythink/basead/e/i;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 2

    .line 173
    sget-object v0, Lcom/anythink/basead/d/d;->a:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/anythink/basead/d/d$2;->b:Lcom/anythink/basead/d/d;

    iget-object v0, v0, Lcom/anythink/basead/d/d;->h:Lcom/anythink/basead/e/a;

    invoke-interface {v0}, Lcom/anythink/basead/e/a;->onAdClosed()V

    .line 177
    :cond_0
    invoke-static {}, Lcom/anythink/basead/e/b;->a()Lcom/anythink/basead/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/d$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/e/b;->b(Ljava/lang/String;)V

    return-void
.end method
