.class public Lcom/anythink/core/common/h;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/anythink/core/common/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/anythink/core/common/h;
    .locals 2

    .line 29
    sget-object v0, Lcom/anythink/core/common/h;->a:Lcom/anythink/core/common/h;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/anythink/core/common/h;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/anythink/core/common/h;->a:Lcom/anythink/core/common/h;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/anythink/core/common/h;

    invoke-direct {v1}, Lcom/anythink/core/common/h;-><init>()V

    sput-object v1, Lcom/anythink/core/common/h;->a:Lcom/anythink/core/common/h;

    .line 33
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/core/common/h;->a:Lcom/anythink/core/common/h;

    return-object v0
.end method

.method public static a(Lcom/anythink/core/d/e;)Ljava/lang/String;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->D()Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static a(Lcom/anythink/core/d/e;Z)Ljava/lang/String;
    .locals 1

    .line 61
    invoke-static {}, Lcom/anythink/core/common/e/c;->a()Lcom/anythink/core/common/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/e/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->H()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/anythink/core/d/e;->aw()Ljava/lang/String;

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    .line 71
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object p0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/anythink/core/d/a;->z()Lcom/anythink/core/common/f/t;

    move-result-object p0

    .line 73
    invoke-static {}, Lcom/anythink/core/common/h;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/anythink/core/common/b/h$d;->y:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/anythink/core/common/b/h$d;->k:Ljava/lang/String;

    :goto_0
    if-eqz p0, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/anythink/core/common/f/t;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/anythink/core/common/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 178
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 39
    invoke-static {}, Lcom/anythink/core/common/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anythink/core/common/b/h$d;->t:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/anythink/core/common/b/h$d;->f:Ljava/lang/String;

    .line 40
    :goto_0
    invoke-static {}, Lcom/anythink/core/common/e/c;->a()Lcom/anythink/core/common/e/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/anythink/core/d/e;)Ljava/lang/String;
    .locals 0

    .line 99
    invoke-virtual {p0}, Lcom/anythink/core/d/e;->C()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 44
    invoke-static {}, Lcom/anythink/core/common/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anythink/core/common/b/h$d;->u:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/anythink/core/common/b/h$d;->g:Ljava/lang/String;

    .line 45
    :goto_0
    invoke-static {}, Lcom/anythink/core/common/e/c;->a()Lcom/anythink/core/common/e/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-static {}, Lcom/anythink/core/common/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anythink/core/common/b/h$d;->x:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcom/anythink/core/common/b/h$d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 55
    invoke-static {}, Lcom/anythink/core/common/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anythink/core/common/b/h$d;->D:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcom/anythink/core/common/b/h$d;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    .line 105
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->z()Lcom/anythink/core/common/f/t;

    move-result-object v0

    .line 107
    invoke-static {}, Lcom/anythink/core/common/h;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/anythink/core/common/b/h$d;->z:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/anythink/core/common/b/h$d;->l:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Lcom/anythink/core/common/f/t;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/anythink/core/common/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    .line 116
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->z()Lcom/anythink/core/common/f/t;

    move-result-object v0

    .line 118
    invoke-static {}, Lcom/anythink/core/common/h;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/anythink/core/common/b/h$d;->A:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/anythink/core/common/b/h$d;->m:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0}, Lcom/anythink/core/common/f/t;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/anythink/core/common/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    .line 126
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->z()Lcom/anythink/core/common/f/t;

    move-result-object v0

    .line 128
    invoke-static {}, Lcom/anythink/core/common/h;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/anythink/core/common/b/h$d;->B:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/anythink/core/common/b/h$d;->n:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Lcom/anythink/core/common/f/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/anythink/core/common/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    .line 136
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/anythink/core/common/h;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/anythink/core/common/b/h$d;->C:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/anythink/core/common/b/h$d;->p:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/anythink/core/common/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    .line 145
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/anythink/core/common/h;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/anythink/core/common/b/h$d;->w:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/anythink/core/common/b/h$d;->i:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->ah()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/anythink/core/common/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public static k()Ljava/lang/String;
    .locals 2

    .line 154
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    .line 155
    invoke-static {}, Lcom/anythink/core/common/h;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/anythink/core/common/b/h$d;->v:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/anythink/core/common/b/h$d;->h:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->am()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/anythink/core/common/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public static l()Ljava/lang/String;
    .locals 2

    .line 163
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    const-string v1, "https://img.anythinktech.com/gdpr/PrivacyPolicySetting.html"

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/anythink/core/common/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private static m()Z
    .locals 1

    .line 195
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
