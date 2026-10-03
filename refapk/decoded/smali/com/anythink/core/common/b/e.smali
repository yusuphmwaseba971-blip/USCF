.class public Lcom/anythink/core/common/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final a:Ljava/lang/String; = "start_time"

.field public static final b:Ljava/lang/String; = "end_time"

.field public static final c:Ljava/lang/String; = "psid"

.field public static final d:Ljava/lang/String; = "launch_mode"

.field public static final e:I = 0x0

.field public static final f:I = 0x1


# instance fields
.field g:J

.field h:I

.field i:Lorg/json/JSONObject;

.field j:Ljava/lang/Runnable;

.field private final k:Ljava/lang/String;

.field private final l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Lcom/anythink/core/common/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/e;->k:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/anythink/core/common/b/e$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/b/e$1;-><init>(Lcom/anythink/core/common/b/e;)V

    iput-object v0, p0, Lcom/anythink/core/common/b/e;->j:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/anythink/core/common/b/e;->h:I

    .line 77
    iput-wide p1, p0, Lcom/anythink/core/common/b/e;->g:J

    .line 78
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object p1

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/o/b/b;->a(I)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/b/e;->l:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 12

    .line 56
    iget-object v0, p0, Lcom/anythink/core/common/b/e;->i:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "playRecord"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "anythink_sdk"

    const-string v3, ""

    invoke-static {v0, v2, v1, v3}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/anythink/core/common/b/e;->g:J

    .line 60
    iget-object v0, p0, Lcom/anythink/core/common/b/e;->i:Lorg/json/JSONObject;

    const-string v1, "start_time"

    .line 61
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v1, "end_time"

    .line 62
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v1, "psid"

    .line 63
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "launch_mode"

    .line 64
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/anythink/core/common/b/e;->i:Lorg/json/JSONObject;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move-wide v3, v8

    move-wide v5, v10

    .line 68
    invoke-static/range {v2 .. v7}, Lcom/anythink/core/common/n/c;->a(IJJLjava/lang/String;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Time up to send application playTime, reset playStartTime and send agent, playtime:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v10, v8

    const-wide/16 v1, 0x3e8

    div-long/2addr v10, v1

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private a(J)V
    .locals 16

    move-object/from16 v0, p0

    .line 113
    iget-object v1, v0, Lcom/anythink/core/common/b/e;->l:Landroid/os/Handler;

    iget-object v2, v0, Lcom/anythink/core/common/b/e;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v1

    .line 116
    iget-object v2, v0, Lcom/anythink/core/common/b/e;->i:Lorg/json/JSONObject;

    const-string v3, ""

    const-string v4, "playRecord"

    const-string v5, "anythink_sdk"

    const/4 v8, 0x1

    if-eqz v2, :cond_1

    const-string v9, "start_time"

    .line 119
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v9, "end_time"

    .line 120
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v13

    const-string v9, "psid"

    .line 121
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v9, "launch_mode"

    .line 122
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v13

    invoke-virtual {v1}, Lcom/anythink/core/d/a;->J()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v9, v6

    if-lez v1, :cond_1

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "onActivityResumed : Time countdown is closed, time up to send agent and create new psid, playtime:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v6, v13, v11

    const-wide/16 v9, 0x3e8

    div-long/2addr v6, v9

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 127
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6, v3}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ne v2, v8, :cond_0

    const/4 v1, 0x3

    const/4 v10, 0x3

    goto :goto_0

    :cond_0
    const/4 v10, 0x1

    .line 129
    :goto_0
    invoke-static/range {v10 .. v15}, Lcom/anythink/core/common/n/c;->a(IJJLjava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 130
    iput-wide v1, v0, Lcom/anythink/core/common/b/e;->g:J

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    const/4 v6, 0x0

    .line 137
    iput-object v6, v0, Lcom/anythink/core/common/b/e;->i:Lorg/json/JSONObject;

    .line 139
    iget-wide v6, v0, Lcom/anythink/core/common/b/e;->g:J

    cmp-long v9, v6, v1

    if-nez v9, :cond_2

    .line 140
    iput v8, v0, Lcom/anythink/core/common/b/e;->h:I

    .line 143
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v8}, Lcom/anythink/core/common/b/o;->a(Landroid/content/Context;Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/core/common/b/e;->g:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    .line 152
    :cond_2
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v5, v1, v3}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_2
    iget-wide v1, v0, Lcom/anythink/core/common/b/e;->g:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/core/common/b/e;->g:J

    .line 161
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResumed: Method use time:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/b/e;)V
    .locals 12

    .line 1056
    iget-object v0, p0, Lcom/anythink/core/common/b/e;->i:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 1058
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "playRecord"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "anythink_sdk"

    const-string v3, ""

    invoke-static {v0, v2, v1, v3}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1059
    iput-wide v0, p0, Lcom/anythink/core/common/b/e;->g:J

    .line 1060
    iget-object v0, p0, Lcom/anythink/core/common/b/e;->i:Lorg/json/JSONObject;

    const-string v1, "start_time"

    .line 1061
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v1, "end_time"

    .line 1062
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v1, "psid"

    .line 1063
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "launch_mode"

    .line 1064
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 1066
    iput-object v1, p0, Lcom/anythink/core/common/b/e;->i:Lorg/json/JSONObject;

    const/4 p0, 0x1

    if-ne v0, p0, :cond_0

    const/4 p0, 0x3

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move-wide v3, v8

    move-wide v5, v10

    .line 1068
    invoke-static/range {v2 .. v7}, Lcom/anythink/core/common/n/c;->a(IJJLjava/lang/String;)V

    .line 1069
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Time up to send application playTime, reset playStartTime and send agent, playtime:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v10, v8

    const-wide/16 v0, 0x3e8

    div-long/2addr v10, v0

    invoke-virtual {p0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/b/e;J)V
    .locals 16

    move-object/from16 v0, p0

    .line 1113
    iget-object v1, v0, Lcom/anythink/core/common/b/e;->l:Landroid/os/Handler;

    iget-object v2, v0, Lcom/anythink/core/common/b/e;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1115
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v1

    .line 1116
    iget-object v2, v0, Lcom/anythink/core/common/b/e;->i:Lorg/json/JSONObject;

    const-string v3, ""

    const-string v4, "playRecord"

    const-string v5, "anythink_sdk"

    const/4 v8, 0x1

    if-eqz v2, :cond_1

    const-string v9, "start_time"

    .line 1119
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v9, "end_time"

    .line 1120
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v13

    const-string v9, "psid"

    .line 1121
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v9, "launch_mode"

    .line 1122
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 1124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v13

    invoke-virtual {v1}, Lcom/anythink/core/d/a;->J()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v9, v6

    if-lez v1, :cond_1

    .line 1125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "onActivityResumed : Time countdown is closed, time up to send agent and create new psid, playtime:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v6, v13, v11

    const-wide/16 v9, 0x3e8

    div-long/2addr v6, v9

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1127
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6, v3}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ne v2, v8, :cond_0

    const/4 v1, 0x3

    const/4 v10, 0x3

    goto :goto_0

    :cond_0
    const/4 v10, 0x1

    .line 1129
    :goto_0
    invoke-static/range {v10 .. v15}, Lcom/anythink/core/common/n/c;->a(IJJLjava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 1130
    iput-wide v1, v0, Lcom/anythink/core/common/b/e;->g:J

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    const/4 v6, 0x0

    .line 1137
    iput-object v6, v0, Lcom/anythink/core/common/b/e;->i:Lorg/json/JSONObject;

    .line 1139
    iget-wide v6, v0, Lcom/anythink/core/common/b/e;->g:J

    cmp-long v9, v6, v1

    if-nez v9, :cond_2

    .line 1140
    iput v8, v0, Lcom/anythink/core/common/b/e;->h:I

    .line 1143
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v8}, Lcom/anythink/core/common/b/o;->a(Landroid/content/Context;Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/core/common/b/e;->g:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    .line 1152
    :cond_2
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v1

    .line 1153
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v5, v1, v3}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    :goto_2
    iget-wide v1, v0, Lcom/anythink/core/common/b/e;->g:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    .line 1158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/anythink/core/common/b/e;->g:J

    .line 1161
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResumed: Method use time:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method private b(J)V
    .locals 6

    .line 165
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v0

    .line 167
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "psid"

    .line 168
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/o;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "start_time"

    .line 169
    iget-wide v3, p0, Lcom/anythink/core/common/b/e;->g:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "end_time"

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "launch_mode"

    .line 171
    iget v3, p0, Lcom/anythink/core/common/b/e;->h:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    iput-object v1, p0, Lcom/anythink/core/common/b/e;->i:Lorg/json/JSONObject;

    .line 173
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "playRecord"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityPaused: record leave time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 181
    :goto_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->L()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 183
    iget-object v1, p0, Lcom/anythink/core/common/b/e;->l:Landroid/os/Handler;

    iget-object v2, p0, Lcom/anythink/core/common/b/e;->j:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lcom/anythink/core/d/a;->J()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityPaused: Method use time:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic b(Lcom/anythink/core/common/b/e;J)V
    .locals 6

    .line 1165
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v0

    .line 1167
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "psid"

    .line 1168
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/o;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "start_time"

    .line 1169
    iget-wide v3, p0, Lcom/anythink/core/common/b/e;->g:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "end_time"

    .line 1170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "launch_mode"

    .line 1171
    iget v3, p0, Lcom/anythink/core/common/b/e;->h:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1172
    iput-object v1, p0, Lcom/anythink/core/common/b/e;->i:Lorg/json/JSONObject;

    .line 1173
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "playRecord"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityPaused: record leave time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1181
    :goto_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    .line 1182
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->L()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1183
    iget-object v1, p0, Lcom/anythink/core/common/b/e;->l:Landroid/os/Handler;

    iget-object p0, p0, Lcom/anythink/core/common/b/e;->j:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lcom/anythink/core/d/a;->J()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1187
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onActivityPaused: Method use time:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 104
    iget-object p1, p0, Lcom/anythink/core/common/b/e;->l:Landroid/os/Handler;

    new-instance v2, Lcom/anythink/core/common/b/e$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/anythink/core/common/b/e$3;-><init>(Lcom/anythink/core/common/b/e;J)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    iget-object p1, p0, Lcom/anythink/core/common/b/e;->l:Landroid/os/Handler;

    new-instance v2, Lcom/anythink/core/common/b/e$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/anythink/core/common/b/e$2;-><init>(Lcom/anythink/core/common/b/e;J)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
