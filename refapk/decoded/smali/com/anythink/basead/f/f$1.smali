.class final Lcom/anythink/basead/f/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/e/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/f/f;->a(Landroid/app/Activity;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/basead/f/f;


# direct methods
.method constructor <init>(Lcom/anythink/basead/f/f;Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/anythink/basead/f/f$1;->b:Lcom/anythink/basead/f/f;

    iput-object p2, p0, Lcom/anythink/basead/f/f$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 77
    sget-object v0, Lcom/anythink/basead/f/f;->a:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/anythink/basead/f/f$1;->b:Lcom/anythink/basead/f/f;

    invoke-static {v0}, Lcom/anythink/basead/f/f;->a(Lcom/anythink/basead/f/f;)Lcom/anythink/basead/e/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/anythink/basead/f/f$1;->b:Lcom/anythink/basead/f/f;

    invoke-static {v0}, Lcom/anythink/basead/f/f;->a(Lcom/anythink/basead/f/f;)Lcom/anythink/basead/e/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/e/j;->onVideoAdPlayStart()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/e;)V
    .locals 2

    .line 69
    sget-object v0, Lcom/anythink/basead/f/f;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVideoShowFailed......."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v0, p0, Lcom/anythink/basead/f/f$1;->b:Lcom/anythink/basead/f/f;

    invoke-static {v0}, Lcom/anythink/basead/f/f;->a(Lcom/anythink/basead/f/f;)Lcom/anythink/basead/e/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/anythink/basead/f/f$1;->b:Lcom/anythink/basead/f/f;

    invoke-static {v0}, Lcom/anythink/basead/f/f;->a(Lcom/anythink/basead/f/f;)Lcom/anythink/basead/e/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/j;->onShowFailed(Lcom/anythink/basead/c/e;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/basead/e/i;)V
    .locals 1

    .line 61
    sget-object v0, Lcom/anythink/basead/f/f;->a:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/anythink/basead/f/f$1;->b:Lcom/anythink/basead/f/f;

    invoke-static {v0}, Lcom/anythink/basead/f/f;->a(Lcom/anythink/basead/f/f;)Lcom/anythink/basead/e/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/anythink/basead/f/f$1;->b:Lcom/anythink/basead/f/f;

    invoke-static {v0}, Lcom/anythink/basead/f/f;->a(Lcom/anythink/basead/f/f;)Lcom/anythink/basead/e/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/j;->onAdShow(Lcom/anythink/basead/e/i;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 118
    sget-object v0, Lcom/anythink/basead/f/f;->a:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/anythink/basead/f/f$1;->b:Lcom/anythink/basead/f/f;

    invoke-static {v0}, Lcom/anythink/basead/f/f;->a(Lcom/anythink/basead/f/f;)Lcom/anythink/basead/e/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/anythink/basead/f/f$1;->b:Lcom/anythink/basead/f/f;

    invoke-static {v0}, Lcom/anythink/basead/f/f;->a(Lcom/anythink/basead/f/f;)Lcom/anythink/basead/e/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/j;->onDeeplinkCallback(Z)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 85
    sget-object v0, Lcom/anythink/basead/f/f;->a:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/anythink/basead/f/f$1;->b:Lcom/anythink/basead/f/f;

    invoke-static {v0}, Lcom/anythink/basead/f/f;->a(Lcom/anythink/basead/f/f;)Lcom/anythink/basead/e/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/anythink/basead/f/f$1;->b:Lcom/anythink/basead/f/f;

    invoke-static {v0}, Lcom/anythink/basead/f/f;->a(Lcom/anythink/basead/f/f;)Lcom/anythink/basead/e/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/e/j;->onVideoAdPlayEnd()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/anythink/basead/e/i;)V
    .locals 1

    .line 110
    sget-object v0, Lcom/anythink/basead/f/f;->a:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/anythink/basead/f/f$1;->b:Lcom/anythink/basead/f/f;

    invoke-static {v0}, Lcom/anythink/basead/f/f;->a(Lcom/anythink/basead/f/f;)Lcom/anythink/basead/e/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/anythink/basead/f/f$1;->b:Lcom/anythink/basead/f/f;

    invoke-static {v0}, Lcom/anythink/basead/f/f;->a(Lcom/anythink/basead/f/f;)Lcom/anythink/basead/e/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/j;->onAdClick(Lcom/anythink/basead/e/i;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 93
    sget-object v0, Lcom/anythink/basead/f/f;->a:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/anythink/basead/f/f$1;->b:Lcom/anythink/basead/f/f;

    invoke-static {v0}, Lcom/anythink/basead/f/f;->a(Lcom/anythink/basead/f/f;)Lcom/anythink/basead/e/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/anythink/basead/f/f$1;->b:Lcom/anythink/basead/f/f;

    invoke-static {v0}, Lcom/anythink/basead/f/f;->a(Lcom/anythink/basead/f/f;)Lcom/anythink/basead/e/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/e/j;->onRewarded()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 101
    sget-object v0, Lcom/anythink/basead/f/f;->a:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/anythink/basead/f/f$1;->b:Lcom/anythink/basead/f/f;

    invoke-static {v0}, Lcom/anythink/basead/f/f;->a(Lcom/anythink/basead/f/f;)Lcom/anythink/basead/e/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/anythink/basead/f/f$1;->b:Lcom/anythink/basead/f/f;

    invoke-static {v0}, Lcom/anythink/basead/f/f;->a(Lcom/anythink/basead/f/f;)Lcom/anythink/basead/e/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/e/j;->onAdClosed()V

    .line 105
    :cond_0
    invoke-static {}, Lcom/anythink/basead/e/b;->a()Lcom/anythink/basead/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/f/f$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/e/b;->b(Ljava/lang/String;)V

    return-void
.end method
