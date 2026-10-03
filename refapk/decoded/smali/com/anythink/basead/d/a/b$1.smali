.class final Lcom/anythink/basead/d/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/a/b;->b(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/j;

.field final synthetic b:Lcom/anythink/core/common/f/m;

.field final synthetic c:Lcom/anythink/expressad/foundation/d/d;

.field final synthetic d:Lcom/anythink/basead/d/a/b$a;

.field final synthetic e:Lcom/anythink/basead/d/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/basead/d/a/b;Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/b$a;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/anythink/basead/d/a/b$1;->e:Lcom/anythink/basead/d/a/b;

    iput-object p2, p0, Lcom/anythink/basead/d/a/b$1;->a:Lcom/anythink/core/common/f/j;

    iput-object p3, p0, Lcom/anythink/basead/d/a/b$1;->b:Lcom/anythink/core/common/f/m;

    iput-object p4, p0, Lcom/anythink/basead/d/a/b$1;->c:Lcom/anythink/expressad/foundation/d/d;

    iput-object p5, p0, Lcom/anythink/basead/d/a/b$1;->d:Lcom/anythink/basead/d/a/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 129
    new-instance v0, Lcom/anythink/expressad/splash/d/c;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lcom/anythink/basead/d/a/b$1;->a:Lcom/anythink/core/common/f/j;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/j;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/anythink/basead/d/a/b$1;->b:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/anythink/basead/d/a/b$1;->a:Lcom/anythink/core/common/f/j;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/j;->Y()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, ""

    invoke-direct {v0, v1, v3, v2}, Lcom/anythink/expressad/splash/d/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/anythink/basead/d/a/b$1;->b:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->v()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/d/c;->b(Z)V

    .line 132
    iget-object v1, p0, Lcom/anythink/basead/d/a/b$1;->b:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->t()J

    move-result-wide v4

    long-to-int v1, v4

    div-int/lit16 v1, v1, 0x3e8

    const/4 v4, 0x2

    if-gt v1, v4, :cond_2

    .line 134
    invoke-virtual {v0, v4}, Lcom/anythink/expressad/splash/d/c;->b(I)V

    goto :goto_2

    :cond_2
    const/16 v4, 0xa

    if-lt v1, v4, :cond_3

    .line 136
    invoke-virtual {v0, v4}, Lcom/anythink/expressad/splash/d/c;->b(I)V

    goto :goto_2

    .line 138
    :cond_3
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/d/c;->b(I)V

    .line 141
    :goto_2
    iget-object v1, p0, Lcom/anythink/basead/d/a/b$1;->b:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->D()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/d/c;->a(Z)V

    .line 142
    iget-object v1, p0, Lcom/anythink/basead/d/a/b$1;->b:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/d/c;->a(I)V

    .line 144
    invoke-virtual {v0}, Lcom/anythink/expressad/splash/d/c;->f()V

    .line 147
    iget-object v1, p0, Lcom/anythink/basead/d/a/b$1;->c:Lcom/anythink/expressad/foundation/d/d;

    .line 1374
    iget-object v1, v1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 148
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 149
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v4, :cond_5

    .line 153
    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 157
    iget-object v6, p0, Lcom/anythink/basead/d/a/b$1;->b:Lcom/anythink/core/common/f/m;

    iget-object v6, v6, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v6}, Lcom/anythink/core/common/f/n;->D()I

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    .line 158
    :goto_5
    invoke-static {}, Lcom/anythink/expressad/shake/a;->a()Lcom/anythink/expressad/shake/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/expressad/shake/a;->b()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/anythink/basead/d/a/b$1;->b:Lcom/anythink/core/common/f/m;

    iget-object v7, v7, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v7}, Lcom/anythink/core/common/f/n;->Q()I

    move-result v7

    if-ne v7, v3, :cond_7

    const/4 v7, 0x1

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    .line 160
    :goto_6
    invoke-static {v5, v6}, Lcom/anythink/basead/d/a/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 162
    iget-object v8, p0, Lcom/anythink/basead/d/a/b$1;->b:Lcom/anythink/core/common/f/m;

    iget-object v8, v8, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v8}, Lcom/anythink/core/common/f/n;->R()I

    move-result v8

    iget-object v9, p0, Lcom/anythink/basead/d/a/b$1;->b:Lcom/anythink/core/common/f/m;

    iget-object v9, v9, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v9}, Lcom/anythink/core/common/f/n;->S()J

    move-result-wide v9

    invoke-static {v5, v7, v8, v9, v10}, Lcom/anythink/basead/d/a/b;->a(Ljava/lang/String;ZIJ)Ljava/lang/String;

    move-result-object v5

    if-nez v7, :cond_8

    if-nez v6, :cond_8

    .line 165
    invoke-static {v5, v3}, Lcom/anythink/basead/d/a/b;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_8
    if-eqz v7, :cond_9

    .line 167
    invoke-static {v5, v2}, Lcom/anythink/basead/d/a/b;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 171
    :cond_9
    :goto_7
    invoke-virtual {v4, v5}, Lcom/anythink/expressad/foundation/d/c;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 179
    :cond_a
    new-instance v1, Lcom/anythink/basead/d/a/b$1$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/d/a/b$1$1;-><init>(Lcom/anythink/basead/d/a/b$1;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/d/c;->a(Lcom/anythink/expressad/out/d;)V

    .line 205
    iget-object v1, p0, Lcom/anythink/basead/d/a/b$1;->d:Lcom/anythink/basead/d/a/b$a;

    if-eqz v1, :cond_b

    .line 206
    invoke-interface {v1, v0}, Lcom/anythink/basead/d/a/b$a;->a(Lcom/anythink/core/common/a/h;)V

    .line 208
    :cond_b
    iget-object v1, p0, Lcom/anythink/basead/d/a/b$1;->e:Lcom/anythink/basead/d/a/b;

    iget-object v1, v1, Lcom/anythink/basead/d/a/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/basead/d/a/b$1;->b:Lcom/anythink/core/common/f/m;

    iget-object v3, v3, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/anythink/basead/d/a/b$1;->b:Lcom/anythink/core/common/f/m;

    iget-object v3, v3, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v1, p0, Lcom/anythink/basead/d/a/b$1;->c:Lcom/anythink/expressad/foundation/d/d;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/d/c;->a(Lcom/anythink/expressad/foundation/d/d;)V

    return-void
.end method
