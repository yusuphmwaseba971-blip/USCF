.class final Lcom/anythink/expressad/reward/a/d$i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/expressad/videocommon/b/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/reward/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# static fields
.field public static final a:I = 0x1f1

.field public static final b:I = 0x35b

.field public static final c:I = 0x139

.field public static final d:I = 0x1f6


# instance fields
.field private e:Lcom/anythink/expressad/foundation/d/c;

.field private f:Lcom/anythink/expressad/reward/a/d;

.field private g:J

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Lcom/anythink/expressad/videocommon/e/d;

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;ILcom/anythink/expressad/videocommon/e/d;Z)V
    .locals 2

    .line 3085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3077
    iput v0, p0, Lcom/anythink/expressad/reward/a/d$i;->i:I

    const/4 v0, 0x1

    .line 3083
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d$i;->k:Z

    .line 3086
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/expressad/reward/a/d$i;->g:J

    .line 3087
    iput-object p3, p0, Lcom/anythink/expressad/reward/a/d$i;->h:Ljava/lang/String;

    .line 3088
    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    .line 3089
    iput p4, p0, Lcom/anythink/expressad/reward/a/d$i;->i:I

    .line 3090
    iput-object p5, p0, Lcom/anythink/expressad/reward/a/d$i;->j:Lcom/anythink/expressad/videocommon/e/d;

    .line 3092
    iput-object p2, p0, Lcom/anythink/expressad/reward/a/d$i;->f:Lcom/anythink/expressad/reward/a/d;

    .line 3094
    iput-boolean p6, p0, Lcom/anythink/expressad/reward/a/d$i;->k:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 13

    .line 3100
    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/anythink/expressad/videocommon/b/l;->b(Ljava/lang/String;Z)V

    .line 3101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/anythink/expressad/reward/a/d$i;->g:J

    sub-long/2addr v2, v4

    .line 3104
    iget v0, p0, Lcom/anythink/expressad/reward/a/d$i;->i:I

    const/16 v4, 0x1f1

    if-ne v0, v4, :cond_1

    .line 3105
    iget-boolean v0, p0, Lcom/anythink/expressad/reward/a/d$i;->k:Z

    if-eqz v0, :cond_9

    .line 3106
    new-instance v0, Lcom/anythink/expressad/foundation/d/r;

    const-string v5, "2000043"

    const/16 v6, 0xe

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/anythink/expressad/reward/a/d$i;->h:Ljava/lang/String;

    const-string v11, ""

    const-string v12, "1"

    move-object v4, v0

    move-object v8, p1

    invoke-direct/range {v4 .. v12}, Lcom/anythink/expressad/foundation/d/r;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3108
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->d(Ljava/lang/String;)V

    .line 3109
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aa()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->e(Ljava/lang/String;)V

    .line 3110
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->g(Ljava/lang/String;)V

    .line 3111
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->b(I)V

    .line 3112
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result p1

    const/16 v1, 0x11f

    if-ne p1, v1, :cond_0

    const-string p1, "3"

    .line 3113
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3114
    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result p1

    const/16 v1, 0x5e

    if-ne p1, v1, :cond_9

    const-string p1, "1"

    .line 3115
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x35b

    if-ne v0, v2, :cond_5

    .line 3120
    new-instance v0, Lcom/anythink/expressad/foundation/d/r;

    invoke-direct {v0}, Lcom/anythink/expressad/foundation/d/r;-><init>()V

    const-string v2, "2000045"

    .line 3121
    invoke-virtual {v0, v2}, Lcom/anythink/expressad/foundation/d/r;->h(Ljava/lang/String;)V

    .line 3122
    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d$i;->f:Lcom/anythink/expressad/reward/a/d;

    if-eqz v2, :cond_3

    .line 3124
    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3125
    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d$i;->f:Lcom/anythink/expressad/reward/a/d;

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    iget-object v4, p0, Lcom/anythink/expressad/reward/a/d$i;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/d$i;->j:Lcom/anythink/expressad/videocommon/e/d;

    invoke-static {v2, v3, p1, v4, v5}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V

    .line 3127
    :cond_2
    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d$i;->f:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->q(Lcom/anythink/expressad/reward/a/d;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3129
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/anythink/expressad/foundation/h/k;->a()I

    move-result v2

    .line 3130
    invoke-virtual {v0, v2}, Lcom/anythink/expressad/foundation/d/r;->c(I)V

    .line 3133
    :cond_3
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/r;->d(I)V

    .line 3134
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_4

    .line 3135
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/r;->g(Ljava/lang/String;)V

    .line 3136
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/r;->d(Ljava/lang/String;)V

    .line 3137
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/r;->e(Ljava/lang/String;)V

    .line 3139
    :cond_4
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->b(Ljava/lang/String;)V

    const-string p1, ""

    .line 3140
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->i(Ljava/lang/String;)V

    .line 3141
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$i;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 v2, 0x1f6

    if-ne v0, v2, :cond_8

    .line 3145
    new-instance v0, Lcom/anythink/expressad/foundation/d/r;

    invoke-direct {v0}, Lcom/anythink/expressad/foundation/d/r;-><init>()V

    const-string v2, "2000045"

    .line 3146
    invoke-virtual {v0, v2}, Lcom/anythink/expressad/foundation/d/r;->h(Ljava/lang/String;)V

    .line 3147
    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d$i;->f:Lcom/anythink/expressad/reward/a/d;

    if-eqz v2, :cond_6

    .line 3148
    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->q(Lcom/anythink/expressad/reward/a/d;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3150
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/anythink/expressad/foundation/h/k;->a()I

    move-result v2

    .line 3151
    invoke-virtual {v0, v2}, Lcom/anythink/expressad/foundation/d/r;->c(I)V

    .line 3155
    :cond_6
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/r;->d(I)V

    .line 3157
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_7

    .line 3158
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/r;->g(Ljava/lang/String;)V

    .line 3159
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/r;->d(Ljava/lang/String;)V

    .line 3160
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/r;->e(Ljava/lang/String;)V

    .line 3163
    :cond_7
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->b(Ljava/lang/String;)V

    const-string p1, ""

    .line 3164
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->i(Ljava/lang/String;)V

    .line 3165
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$i;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const/16 p1, 0x139

    if-ne v0, p1, :cond_9

    return-void

    .line 3177
    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$i;->f:Lcom/anythink/expressad/reward/a/d;

    if-eqz p1, :cond_b

    .line 3178
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3180
    :try_start_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$i;->f:Lcom/anythink/expressad/reward/a/d;

    invoke-virtual {v0}, Lcom/anythink/expressad/reward/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3181
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$i;->f:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v0}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 3183
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$i;->f:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v0}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3184
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$i;->f:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v0}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 3185
    iput-object v0, p0, Lcom/anythink/expressad/reward/a/d$i;->f:Lcom/anythink/expressad/reward/a/d;

    .line 3188
    :cond_a
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_b
    return-void

    :catchall_1
    move-exception p1

    .line 3192
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 3201
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/expressad/reward/a/d$i;->g:J

    sub-long/2addr v0, v2

    .line 3205
    iget v2, p0, Lcom/anythink/expressad/reward/a/d$i;->i:I

    const/16 v3, 0x1f1

    if-ne v2, v3, :cond_1

    .line 3206
    iget-boolean v2, p0, Lcom/anythink/expressad/reward/a/d$i;->k:Z

    if-eqz v2, :cond_5

    .line 3207
    new-instance v2, Lcom/anythink/expressad/foundation/d/r;

    const-string v4, "2000043"

    const/4 v5, 0x3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/anythink/expressad/reward/a/d$i;->h:Ljava/lang/String;

    const-string v10, "zip download failed"

    const-string v11, "1"

    move-object v3, v2

    move-object v7, p2

    invoke-direct/range {v3 .. v11}, Lcom/anythink/expressad/foundation/d/r;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3209
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/d/r;->d(Ljava/lang/String;)V

    .line 3210
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/d/r;->e(Ljava/lang/String;)V

    .line 3211
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/d/r;->g(Ljava/lang/String;)V

    .line 3212
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/d/r;->b(I)V

    .line 3213
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v0

    const/16 v1, 0x11f

    if-ne v0, v1, :cond_0

    const-string v0, "3"

    .line 3214
    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/d/r;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3215
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v0

    const/16 v1, 0x5e

    if-ne v0, v1, :cond_5

    const-string v0, "1"

    .line 3216
    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/d/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x35b

    if-ne v2, v0, :cond_4

    .line 3220
    new-instance v0, Lcom/anythink/expressad/foundation/d/r;

    invoke-direct {v0}, Lcom/anythink/expressad/foundation/d/r;-><init>()V

    const-string v1, "2000045"

    .line 3221
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/r;->h(Ljava/lang/String;)V

    .line 3222
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$i;->f:Lcom/anythink/expressad/reward/a/d;

    if-eqz v1, :cond_2

    .line 3223
    invoke-static {v1}, Lcom/anythink/expressad/reward/a/d;->q(Lcom/anythink/expressad/reward/a/d;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3225
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/anythink/expressad/foundation/h/k;->a()I

    move-result v1

    .line 3226
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/r;->c(I)V

    :cond_2
    const/4 v1, 0x3

    .line 3229
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/r;->d(I)V

    .line 3230
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_3

    .line 3231
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/r;->g(Ljava/lang/String;)V

    .line 3232
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/r;->d(Ljava/lang/String;)V

    .line 3233
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$i;->e:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/r;->e(Ljava/lang/String;)V

    .line 3235
    :cond_3
    invoke-virtual {v0, p2}, Lcom/anythink/expressad/foundation/d/r;->b(Ljava/lang/String;)V

    .line 3236
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/r;->i(Ljava/lang/String;)V

    .line 3237
    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$i;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/r;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x139

    if-ne v2, v0, :cond_5

    return-void

    .line 3251
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/d$i;->f:Lcom/anythink/expressad/reward/a/d;

    if-eqz v0, :cond_7

    .line 3253
    invoke-static {v0, p1, p2}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3257
    :try_start_1
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$i;->f:Lcom/anythink/expressad/reward/a/d;

    if-eqz p2, :cond_6

    const-string v0, "clear error info failed"

    .line 3258
    invoke-static {p2, v0}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 3261
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 3263
    :cond_6
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 3265
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$i;->f:Lcom/anythink/expressad/reward/a/d;

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 3266
    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d$i;->f:Lcom/anythink/expressad/reward/a/d;

    :cond_8
    return-void
.end method
