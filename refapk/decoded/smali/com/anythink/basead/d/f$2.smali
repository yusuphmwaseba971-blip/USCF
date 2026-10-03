.class final Lcom/anythink/basead/d/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/e/b$b;


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

    .line 147
    iput-object p1, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iput-object p2, p0, Lcom/anythink/basead/d/f$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    instance-of v0, v0, Lcom/anythink/basead/e/j;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    check-cast v0, Lcom/anythink/basead/e/j;

    invoke-interface {v0}, Lcom/anythink/basead/e/j;->onVideoAdPlayStart()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/e;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onShowFailed(Lcom/anythink/basead/c/e;)V

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/anythink/basead/d/f;->e:Lcom/anythink/core/common/f/ai;

    return-void
.end method

.method public final a(Lcom/anythink/basead/e/i;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onAdShow(Lcom/anythink/basead/e/i;)V

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/anythink/basead/d/f;->e:Lcom/anythink/core/common/f/ai;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 204
    sget-object v0, Lcom/anythink/basead/d/f;->a:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onDeeplinkCallback(Z)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    instance-of v0, v0, Lcom/anythink/basead/e/j;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    check-cast v0, Lcom/anythink/basead/e/j;

    invoke-interface {v0}, Lcom/anythink/basead/e/j;->onVideoAdPlayEnd()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/anythink/basead/e/i;)V
    .locals 1

    .line 196
    sget-object v0, Lcom/anythink/basead/d/f;->a:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onAdClick(Lcom/anythink/basead/e/i;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    instance-of v0, v0, Lcom/anythink/basead/e/j;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    check-cast v0, Lcom/anythink/basead/e/j;

    invoke-interface {v0}, Lcom/anythink/basead/e/j;->onRewarded()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 187
    sget-object v0, Lcom/anythink/basead/d/f;->a:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/anythink/basead/d/f$2;->b:Lcom/anythink/basead/d/f;

    iget-object v0, v0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/e/a;

    invoke-interface {v0}, Lcom/anythink/basead/e/a;->onAdClosed()V

    .line 191
    :cond_0
    invoke-static {}, Lcom/anythink/basead/e/b;->a()Lcom/anythink/basead/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/f$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/e/b;->b(Ljava/lang/String;)V

    return-void
.end method
