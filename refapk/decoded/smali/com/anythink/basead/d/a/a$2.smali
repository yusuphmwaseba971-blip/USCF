.class final Lcom/anythink/basead/d/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/h/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/a/a;->b(Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/m;

.field final synthetic b:Lcom/anythink/basead/d/a/a$a;

.field final synthetic c:Lcom/anythink/basead/d/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/basead/d/a/a;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/anythink/basead/d/a/a$2;->c:Lcom/anythink/basead/d/a/a;

    iput-object p2, p0, Lcom/anythink/basead/d/a/a$2;->a:Lcom/anythink/core/common/f/m;

    iput-object p3, p0, Lcom/anythink/basead/d/a/a$2;->b:Lcom/anythink/basead/d/a/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadCanceled(I)V
    .locals 3

    .line 157
    iget-object p1, p0, Lcom/anythink/basead/d/a/a$2;->b:Lcom/anythink/basead/d/a/a$a;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "30001"

    const-string v2, "Cancel Request."

    .line 158
    invoke-static {v1, v2}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/anythink/basead/d/a/a$a;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/basead/c/e;)V

    :cond_0
    return-void
.end method

.method public final onLoadError(ILjava/lang/String;Lcom/anythink/core/api/AdError;)V
    .locals 1

    .line 150
    iget-object p1, p0, Lcom/anythink/basead/d/a/a$2;->b:Lcom/anythink/basead/d/a/a$a;

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    const-string v0, "30001"

    .line 151
    invoke-static {v0, p2}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/anythink/basead/d/a/a$a;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/basead/c/e;)V

    :cond_0
    return-void
.end method

.method public final onLoadFinish(ILjava/lang/Object;)V
    .locals 4

    const/4 p1, 0x0

    .line 111
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/json/JSONObject;

    .line 112
    iget-object v1, p0, Lcom/anythink/basead/d/a/a$2;->a:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/basead/d/a/a$2;->a:Lcom/anythink/core/common/f/m;

    iget v2, v2, Lcom/anythink/core/common/f/m;->f:I

    invoke-static {v1, v0, v2}, Lcom/anythink/core/common/a/d;->a(Ljava/lang/String;Lorg/json/JSONObject;I)Lcom/anythink/core/common/f/j;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_2

    .line 118
    iget-object p1, p0, Lcom/anythink/basead/d/a/a$2;->a:Lcom/anythink/core/common/f/m;

    iget-wide v1, p1, Lcom/anythink/core/common/f/m;->m:J

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/f/j;->c(J)V

    .line 119
    iget-object p1, p0, Lcom/anythink/basead/d/a/a$2;->a:Lcom/anythink/core/common/f/m;

    iget-object p1, p1, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/j;->h(Ljava/lang/String;)V

    .line 120
    invoke-static {v0}, Lcom/anythink/basead/d/c/c;->a(Lcom/anythink/core/common/f/l;)V

    .line 122
    iget-object p1, p0, Lcom/anythink/basead/d/a/a$2;->a:Lcom/anythink/core/common/f/m;

    invoke-static {p1, v0}, Lcom/anythink/basead/d/c/a;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/ai;)V

    .line 124
    iget-object p1, p0, Lcom/anythink/basead/d/a/a$2;->a:Lcom/anythink/core/common/f/m;

    iget p1, p1, Lcom/anythink/core/common/f/m;->f:I

    const/16 v1, 0x43

    if-ne p1, v1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/anythink/basead/d/a/a$2;->c:Lcom/anythink/basead/d/a/a;

    invoke-static {p1}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/basead/d/a/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/d/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/c;

    move-result-object p1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->V()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/anythink/core/common/d/c;->a(Ljava/lang/String;J)V

    .line 126
    iget-object p1, p0, Lcom/anythink/basead/d/a/a$2;->c:Lcom/anythink/basead/d/a/a;

    invoke-static {p1}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/basead/d/a/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/a;

    move-result-object p1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->V()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/anythink/core/common/d/a;->a(Ljava/lang/String;J)V

    .line 133
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/basead/d/a/a$2;->c:Lcom/anythink/basead/d/a/a;

    invoke-static {v1}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/basead/d/a/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/d/a/a$2;->a:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/basead/d/a/a$2;->a:Lcom/anythink/core/common/f/m;

    iget-object v3, v3, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, v2, v3, p2}, Lcom/anythink/core/common/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/anythink/basead/d/a/a$2;->c:Lcom/anythink/basead/d/a/a;

    iget-object p2, p0, Lcom/anythink/basead/d/a/a$2;->a:Lcom/anythink/core/common/f/m;

    invoke-static {p1, v0, p2}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/basead/d/a/a;Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;)Lcom/anythink/expressad/foundation/d/d;

    move-result-object p1

    .line 136
    iget-object p2, p0, Lcom/anythink/basead/d/a/a$2;->b:Lcom/anythink/basead/d/a/a$a;

    if-eqz p2, :cond_1

    .line 137
    invoke-interface {p2, v0}, Lcom/anythink/basead/d/a/a$a;->a(Lcom/anythink/core/common/f/j;)V

    .line 139
    :cond_1
    iget-object p2, p0, Lcom/anythink/basead/d/a/a$2;->c:Lcom/anythink/basead/d/a/a;

    iget-object v1, p0, Lcom/anythink/basead/d/a/a$2;->a:Lcom/anythink/core/common/f/m;

    iget-object v2, p0, Lcom/anythink/basead/d/a/a$2;->b:Lcom/anythink/basead/d/a/a$a;

    invoke-static {p2, v0, v1, p1, v2}, Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/basead/d/a/a;Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/a$a;)V

    return-void

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/d/a/a$2;->b:Lcom/anythink/basead/d/a/a$a;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 142
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    const-string p2, "No Ad Return."

    :goto_1
    const-string v1, "30001"

    invoke-static {v1, p2}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/anythink/basead/d/a/a$a;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/basead/c/e;)V

    :cond_4
    return-void
.end method

.method public final onLoadStart(I)V
    .locals 0

    return-void
.end method
