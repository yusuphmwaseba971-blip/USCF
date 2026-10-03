.class final Lcom/anythink/core/d/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/d/f;->a(Lcom/anythink/core/d/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/d/f$c;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/core/d/f$c;

.field final synthetic c:Lcom/anythink/core/d/e;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:Z

.field final synthetic h:Lcom/anythink/core/d/f;


# direct methods
.method constructor <init>(Lcom/anythink/core/d/f;Ljava/lang/String;Lcom/anythink/core/d/f$c;Lcom/anythink/core/d/e;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/anythink/core/d/f$1;->h:Lcom/anythink/core/d/f;

    iput-object p2, p0, Lcom/anythink/core/d/f$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/d/f$1;->b:Lcom/anythink/core/d/f$c;

    iput-object p4, p0, Lcom/anythink/core/d/f$1;->c:Lcom/anythink/core/d/e;

    iput-object p5, p0, Lcom/anythink/core/d/f$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/anythink/core/d/f$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/anythink/core/d/f$1;->f:Ljava/util/Map;

    iput-boolean p8, p0, Lcom/anythink/core/d/f$1;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 163
    new-instance v3, Lcom/anythink/core/d/f$b;

    iget-object v0, p0, Lcom/anythink/core/d/f$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/d/f$1;->b:Lcom/anythink/core/d/f$c;

    invoke-direct {v3, v0, v1}, Lcom/anythink/core/d/f$b;-><init>(Ljava/lang/String;Lcom/anythink/core/d/f$c;)V

    .line 164
    iget-object v0, p0, Lcom/anythink/core/d/f$1;->c:Lcom/anythink/core/d/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/d/e;->Z()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v8, v0

    .line 165
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/d/f$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 166
    new-instance v11, Lcom/anythink/core/common/f/al;

    iget-object v5, p0, Lcom/anythink/core/d/f$1;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/core/d/f$1;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/anythink/core/d/f$1;->a:Ljava/lang/String;

    iget-object v10, p0, Lcom/anythink/core/d/f$1;->f:Ljava/util/Map;

    move-object v4, v11

    move-object v9, v0

    invoke-direct/range {v4 .. v10}, Lcom/anythink/core/common/f/al;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 170
    iget-object v1, p0, Lcom/anythink/core/d/f$1;->c:Lcom/anythink/core/d/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/anythink/core/d/f$1;->h:Lcom/anythink/core/d/f;

    invoke-static {v0}, Lcom/anythink/core/d/f;->b(Lcom/anythink/core/d/f;)Lcom/anythink/core/d/g;

    iget-object v0, p0, Lcom/anythink/core/d/f$1;->h:Lcom/anythink/core/d/f;

    invoke-static {v0}, Lcom/anythink/core/d/f;->a(Lcom/anythink/core/d/f;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/d/f$a;

    iget-object v4, p0, Lcom/anythink/core/d/f$1;->h:Lcom/anythink/core/d/f;

    invoke-direct {v1, v4, v11, v3, v2}, Lcom/anythink/core/d/f$a;-><init>(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/al;Lcom/anythink/core/d/f$c;Lcom/anythink/core/d/e;)V

    invoke-static {v0, v11, v1}, Lcom/anythink/core/d/g;->a(Landroid/content/Context;Lcom/anythink/core/common/f/al;Lcom/anythink/core/common/h/k;)V

    return-void

    .line 175
    :cond_1
    invoke-virtual {v1}, Lcom/anythink/core/d/e;->az()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/anythink/core/common/f/al;->a(Ljava/util/Map;)V

    .line 177
    iget-boolean v1, p0, Lcom/anythink/core/d/f$1;->g:Z

    if-eqz v1, :cond_2

    .line 178
    iget-object v0, p0, Lcom/anythink/core/d/f$1;->h:Lcom/anythink/core/d/f;

    invoke-static {v0}, Lcom/anythink/core/d/f;->b(Lcom/anythink/core/d/f;)Lcom/anythink/core/d/g;

    iget-object v0, p0, Lcom/anythink/core/d/f$1;->h:Lcom/anythink/core/d/f;

    invoke-static {v0}, Lcom/anythink/core/d/f;->a(Lcom/anythink/core/d/f;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/d/f$a;

    iget-object v2, p0, Lcom/anythink/core/d/f$1;->h:Lcom/anythink/core/d/f;

    iget-object v4, p0, Lcom/anythink/core/d/f$1;->c:Lcom/anythink/core/d/e;

    invoke-direct {v1, v2, v11, v3, v4}, Lcom/anythink/core/d/f$a;-><init>(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/al;Lcom/anythink/core/d/f$c;Lcom/anythink/core/d/e;)V

    invoke-static {v0, v11, v1}, Lcom/anythink/core/d/g;->a(Landroid/content/Context;Lcom/anythink/core/common/f/al;Lcom/anythink/core/common/h/k;)V

    return-void

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/anythink/core/d/f$1;->c:Lcom/anythink/core/d/e;

    invoke-virtual {v1}, Lcom/anythink/core/d/e;->aI()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    invoke-virtual {v11, v2}, Lcom/anythink/core/common/f/al;->a(Ljava/util/Map;)V

    .line 184
    iget-object v0, p0, Lcom/anythink/core/d/f$1;->h:Lcom/anythink/core/d/f;

    invoke-static {v0}, Lcom/anythink/core/d/f;->b(Lcom/anythink/core/d/f;)Lcom/anythink/core/d/g;

    iget-object v0, p0, Lcom/anythink/core/d/f$1;->h:Lcom/anythink/core/d/f;

    invoke-static {v0}, Lcom/anythink/core/d/f;->a(Lcom/anythink/core/d/f;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/d/f$a;

    iget-object v2, p0, Lcom/anythink/core/d/f$1;->h:Lcom/anythink/core/d/f;

    iget-object v4, p0, Lcom/anythink/core/d/f$1;->c:Lcom/anythink/core/d/e;

    invoke-direct {v1, v2, v11, v3, v4}, Lcom/anythink/core/d/f$a;-><init>(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/al;Lcom/anythink/core/d/f$c;Lcom/anythink/core/d/e;)V

    invoke-static {v0, v11, v1}, Lcom/anythink/core/d/g;->a(Landroid/content/Context;Lcom/anythink/core/common/f/al;Lcom/anythink/core/common/h/k;)V

    .line 185
    iget-object v0, p0, Lcom/anythink/core/d/f$1;->c:Lcom/anythink/core/d/e;

    invoke-virtual {v3, v0}, Lcom/anythink/core/d/f$b;->a(Lcom/anythink/core/d/e;)V

    return-void

    .line 189
    :cond_3
    iget-object v1, p0, Lcom/anythink/core/d/f$1;->c:Lcom/anythink/core/d/e;

    invoke-virtual {v1}, Lcom/anythink/core/d/e;->aL()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 190
    invoke-virtual {v3}, Lcom/anythink/core/d/f$b;->a()V

    .line 191
    iget-object v1, p0, Lcom/anythink/core/d/f$1;->c:Lcom/anythink/core/d/e;

    invoke-virtual {v3, v1}, Lcom/anythink/core/d/f$b;->a(Lcom/anythink/core/d/e;)V

    .line 194
    :cond_4
    iget-object v1, p0, Lcom/anythink/core/d/f$1;->h:Lcom/anythink/core/d/f;

    iget-object v4, p0, Lcom/anythink/core/d/f$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/anythink/core/d/f;->e(Ljava/lang/String;)Lcom/anythink/core/d/e;

    move-result-object v1

    if-nez v1, :cond_5

    .line 196
    sget-object v0, Lcom/anythink/core/d/f;->a:Ljava/lang/String;

    .line 197
    invoke-virtual {v11, v2}, Lcom/anythink/core/common/f/al;->a(Ljava/util/Map;)V

    .line 198
    iget-object v0, p0, Lcom/anythink/core/d/f$1;->h:Lcom/anythink/core/d/f;

    invoke-static {v0}, Lcom/anythink/core/d/f;->b(Lcom/anythink/core/d/f;)Lcom/anythink/core/d/g;

    iget-object v0, p0, Lcom/anythink/core/d/f$1;->h:Lcom/anythink/core/d/f;

    invoke-static {v0}, Lcom/anythink/core/d/f;->a(Lcom/anythink/core/d/f;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/d/f$a;

    iget-object v2, p0, Lcom/anythink/core/d/f$1;->h:Lcom/anythink/core/d/f;

    iget-object v4, p0, Lcom/anythink/core/d/f$1;->c:Lcom/anythink/core/d/e;

    invoke-direct {v1, v2, v11, v3, v4}, Lcom/anythink/core/d/f$a;-><init>(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/al;Lcom/anythink/core/d/f$c;Lcom/anythink/core/d/e;)V

    invoke-static {v0, v11, v1}, Lcom/anythink/core/d/g;->a(Landroid/content/Context;Lcom/anythink/core/common/f/al;Lcom/anythink/core/common/h/k;)V

    return-void

    .line 202
    :cond_5
    invoke-virtual {v1}, Lcom/anythink/core/d/e;->az()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/anythink/core/common/f/al;->a(Ljava/util/Map;)V

    .line 205
    invoke-virtual {v1}, Lcom/anythink/core/d/e;->W()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    const/4 v5, 0x0

    if-nez v0, :cond_7

    .line 207
    invoke-virtual {v1}, Lcom/anythink/core/d/e;->aU()Z

    move-result v0

    if-nez v0, :cond_7

    .line 208
    invoke-static {}, Lcom/anythink/core/common/r;->a()Lcom/anythink/core/common/r;

    move-result-object v0

    iget-object v6, p0, Lcom/anythink/core/d/f$1;->h:Lcom/anythink/core/d/f;

    invoke-static {v6}, Lcom/anythink/core/d/f;->a(Lcom/anythink/core/d/f;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/anythink/core/d/f$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/anythink/core/common/r;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_8

    .line 211
    iget-object v0, p0, Lcom/anythink/core/d/f$1;->c:Lcom/anythink/core/d/e;

    invoke-virtual {v3, v0}, Lcom/anythink/core/d/f$b;->a(Lcom/anythink/core/d/e;)V

    return-void

    .line 216
    :cond_8
    sget-object v0, Lcom/anythink/core/d/f;->a:Ljava/lang/String;

    new-array v7, v4, [Z

    .line 218
    invoke-virtual {v1}, Lcom/anythink/core/d/e;->ah()J

    move-result-wide v0

    .line 1016
    invoke-static {}, Lcom/anythink/core/common/m/d;->a()Lcom/anythink/core/common/m/a;

    move-result-object v6

    const-wide/16 v8, 0x0

    cmp-long v10, v0, v8

    if-nez v10, :cond_9

    aput-boolean v4, v7, v5

    .line 224
    iget-object v0, p0, Lcom/anythink/core/d/f$1;->c:Lcom/anythink/core/d/e;

    invoke-virtual {v3, v0}, Lcom/anythink/core/d/f$b;->a(Lcom/anythink/core/d/e;)V

    goto :goto_3

    .line 226
    :cond_9
    new-instance v2, Lcom/anythink/core/d/f$1$1;

    invoke-direct {v2, p0, v7, v3}, Lcom/anythink/core/d/f$1$1;-><init>(Lcom/anythink/core/d/f$1;[ZLcom/anythink/core/d/f$b;)V

    .line 234
    invoke-interface {v6, v2, v0, v1, v5}, Lcom/anythink/core/common/m/a;->a(Lcom/anythink/core/common/m/b;JZ)V

    :goto_3
    move-object v8, v2

    .line 236
    invoke-static {}, Lcom/anythink/core/c/b;->a()Lcom/anythink/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/d/f$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/anythink/core/d/f$1;->h:Lcom/anythink/core/d/f;

    invoke-static {v0}, Lcom/anythink/core/d/f;->b(Lcom/anythink/core/d/f;)Lcom/anythink/core/d/g;

    iget-object v0, p0, Lcom/anythink/core/d/f$1;->h:Lcom/anythink/core/d/f;

    invoke-static {v0}, Lcom/anythink/core/d/f;->a(Lcom/anythink/core/d/f;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/anythink/core/d/f$a;

    iget-object v1, p0, Lcom/anythink/core/d/f$1;->h:Lcom/anythink/core/d/f;

    iget-object v4, p0, Lcom/anythink/core/d/f$1;->c:Lcom/anythink/core/d/e;

    move-object v0, v10

    move-object v2, v11

    move-object v5, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/anythink/core/d/f$a;-><init>(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/al;Lcom/anythink/core/d/f$c;Lcom/anythink/core/d/e;Lcom/anythink/core/common/m/a;Lcom/anythink/core/common/m/b;[Z)V

    invoke-static {v9, v11, v10}, Lcom/anythink/core/d/g;->a(Landroid/content/Context;Lcom/anythink/core/common/f/al;Lcom/anythink/core/common/h/k;)V

    return-void
.end method
