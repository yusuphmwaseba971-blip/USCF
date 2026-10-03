.class public final Lcom/anythink/core/common/n;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Object;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/anythink/core/common/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/n;->c:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/n;->d:Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/anythink/core/common/n$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/n$1;-><init>(Lcom/anythink/core/common/n;)V

    iput-object v0, p0, Lcom/anythink/core/common/n;->f:Lcom/anythink/core/common/b/a;

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/n;)Ljava/lang/Object;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/anythink/core/common/n;->d:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/anythink/core/common/n;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/anythink/core/common/f;)Z
    .locals 3

    .line 217
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/f;->a(Landroid/content/Context;)Lcom/anythink/core/d/f;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/f;->a(Ljava/lang/String;)Lcom/anythink/core/d/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/anythink/core/d/e;->f()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/anythink/core/common/f;->c()I

    move-result p1

    invoke-virtual {v0}, Lcom/anythink/core/d/e;->g()I

    move-result v0

    if-ge p1, v0, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/anythink/core/common/n;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/anythink/core/common/n;->e:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a(ILcom/anythink/core/common/f/v;Lcom/anythink/core/common/f/az;)V
    .locals 12

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::requestId::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "::callbackLoaded::loadType::"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/anythink/core/common/f/v;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "::callbackType::"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "::"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/anythink/core/common/f/az;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v0

    iget-object v4, p0, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/core/common/n;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz p3, :cond_2

    .line 113
    invoke-virtual {p3}, Lcom/anythink/core/common/f/az;->a()Lcom/anythink/core/d/e;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 115
    invoke-virtual {v5}, Lcom/anythink/core/d/e;->f()I

    move-result v6

    const-string v7, "::updateUpStatus::callbackType::"

    if-ne v6, v4, :cond_1

    if-ne p1, v4, :cond_2

    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p2, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p2, Lcom/anythink/core/common/f/v;->d:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/anythink/core/common/f/az;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    new-instance v6, Lcom/anythink/core/common/f/aw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p3}, Lcom/anythink/core/common/f/az;->n()J

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/anythink/core/common/f/aw;-><init>(JJ)V

    invoke-virtual {v0, v6, v5}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f/aw;Lcom/anythink/core/d/e;)V

    goto :goto_1

    .line 124
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p2, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p2, Lcom/anythink/core/common/f/v;->d:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/anythink/core/common/f/az;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    new-instance v6, Lcom/anythink/core/common/f/aw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p3}, Lcom/anythink/core/common/f/az;->n()J

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/anythink/core/common/f/aw;-><init>(JJ)V

    invoke-virtual {v0, v6, v5}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f/aw;Lcom/anythink/core/d/e;)V

    .line 130
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/anythink/core/common/f;->d()V

    .line 2217
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/anythink/core/d/f;->a(Landroid/content/Context;)Lcom/anythink/core/d/f;

    move-result-object v5

    iget-object v6, p0, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/anythink/core/d/f;->a(Ljava/lang/String;)Lcom/anythink/core/d/e;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2219
    invoke-virtual {v5}, Lcom/anythink/core/d/e;->f()I

    move-result v6

    if-ne v6, v4, :cond_3

    invoke-virtual {v0}, Lcom/anythink/core/common/f;->c()I

    move-result v6

    invoke-virtual {v5}, Lcom/anythink/core/d/e;->g()I

    move-result v5

    if-ge v6, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 135
    :goto_2
    iget-object v6, p0, Lcom/anythink/core/common/n;->f:Lcom/anythink/core/common/b/a;

    invoke-interface {v6}, Lcom/anythink/core/common/b/a;->onAdLoaded()V

    .line 144
    iget v6, p2, Lcom/anythink/core/common/f/v;->d:I

    const/16 v7, 0x9

    if-eq v6, v7, :cond_4

    const/4 v6, 0x3

    if-eq p1, v6, :cond_4

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/anythink/core/common/f/v;->d:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "::StartToFilledToLoad::callbackType::"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/anythink/core/common/f/az;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p2}, Lcom/anythink/core/common/f/v;->b()Lcom/anythink/core/common/f/v;

    move-result-object v10

    .line 150
    iput v7, v10, Lcom/anythink/core/common/f/v;->d:I

    const/4 p2, 0x0

    .line 151
    iput-object p2, v10, Lcom/anythink/core/common/f/v;->f:Lcom/anythink/core/common/n;

    .line 152
    iput-object p2, v10, Lcom/anythink/core/common/f/v;->e:Lcom/anythink/core/common/b/b;

    .line 153
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/anythink/core/common/n;->b:Ljava/lang/String;

    iget-object v9, p0, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/b/a;)V

    :cond_4
    if-ne p1, v4, :cond_5

    if-eqz v0, :cond_5

    .line 2248
    iget-object p1, v0, Lcom/anythink/core/common/f;->k:Lcom/anythink/core/common/j/d;

    if-eqz p1, :cond_5

    .line 2249
    iget-object p1, v0, Lcom/anythink/core/common/f;->k:Lcom/anythink/core/common/j/d;

    invoke-interface {p1}, Lcom/anythink/core/common/j/d;->b()V

    :cond_5
    return-void
.end method

.method public final a(ILcom/anythink/core/common/f/v;Lcom/anythink/core/common/f/az;Lcom/anythink/core/api/AdError;)V
    .locals 7

    .line 167
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/n;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "::requestId::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "::callbackLoadFail::loadType::"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lcom/anythink/core/common/f/v;->d:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "::callbackFailType::"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "::"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/anythink/core/common/f/az;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 174
    invoke-virtual {p3}, Lcom/anythink/core/common/f/az;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_5

    .line 175
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v1

    iget-object v6, p0, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/anythink/core/common/u;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/anythink/core/common/f/v;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "::delayToStartRetryLoad::callbackFailType::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/anythink/core/common/f/az;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    new-instance p1, Lcom/anythink/core/common/n$2;

    invoke-direct {p1, p0, p2, v0}, Lcom/anythink/core/common/n$2;-><init>(Lcom/anythink/core/common/n;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/f;)V

    .line 188
    invoke-virtual {p3}, Lcom/anythink/core/common/f/az;->c()J

    move-result-wide p2

    .line 179
    invoke-static {p1, p2, p3}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 191
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/anythink/core/common/f/v;->d:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "::noReTry::callbackFailType::"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/anythink/core/common/f/az;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    if-eqz v0, :cond_4

    .line 196
    invoke-virtual {v0}, Lcom/anythink/core/common/f;->e()V

    .line 201
    :cond_4
    iget-object p1, p0, Lcom/anythink/core/common/n;->f:Lcom/anythink/core/common/b/a;

    invoke-interface {p1, p4}, Lcom/anythink/core/common/b/a;->onAdLoadFail(Lcom/anythink/core/api/AdError;)V

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 206
    invoke-virtual {v0, p4}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/api/AdError;)V

    :cond_6
    return-void
.end method

.method public final a(Lcom/anythink/core/common/b/a;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/anythink/core/common/n;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/n;->e:Ljava/util/List;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/anythink/core/common/n;->e:Ljava/util/List;

    :cond_0
    if-nez p1, :cond_1

    .line 81
    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 84
    iget-object v2, p0, Lcom/anythink/core/common/n;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/b/a;

    if-ne v3, p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 90
    iget-object v1, p0, Lcom/anythink/core/common/n;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b(Lcom/anythink/core/common/b/a;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/anythink/core/common/n;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/n;->e:Ljava/util/List;

    if-nez v1, :cond_0

    .line 98
    monitor-exit v0

    return-void

    .line 100
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
