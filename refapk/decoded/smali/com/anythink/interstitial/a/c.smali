.class public Lcom/anythink/interstitial/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/j/b;


# static fields
.field private static volatile c:Lcom/anythink/interstitial/a/c;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/anythink/interstitial/api/ATInterstitialAutoLoadListener;

.field private d:Lcom/anythink/interstitial/api/ATInterstitialAutoLoadListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "InterstitialAuto"

    .line 26
    iput-object v0, p0, Lcom/anythink/interstitial/a/c;->a:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/anythink/interstitial/a/c$1;

    invoke-direct {v0, p0}, Lcom/anythink/interstitial/a/c$1;-><init>(Lcom/anythink/interstitial/a/c;)V

    iput-object v0, p0, Lcom/anythink/interstitial/a/c;->b:Lcom/anythink/interstitial/api/ATInterstitialAutoLoadListener;

    return-void
.end method

.method public static a()Lcom/anythink/interstitial/a/c;
    .locals 2

    .line 32
    sget-object v0, Lcom/anythink/interstitial/a/c;->c:Lcom/anythink/interstitial/a/c;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/anythink/interstitial/a/c;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/anythink/interstitial/a/c;->c:Lcom/anythink/interstitial/a/c;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/anythink/interstitial/a/c;

    invoke-direct {v1}, Lcom/anythink/interstitial/a/c;-><init>()V

    sput-object v1, Lcom/anythink/interstitial/a/c;->c:Lcom/anythink/interstitial/a/c;

    .line 36
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/interstitial/a/c;->c:Lcom/anythink/interstitial/a/c;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/interstitial/a/c;)Lcom/anythink/interstitial/api/ATInterstitialAutoLoadListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/anythink/interstitial/a/c;->d:Lcom/anythink/interstitial/api/ATInterstitialAutoLoadListener;

    return-object p0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/interstitial/api/ATInterstitialAutoEventListener;)V
    .locals 1

    const-string v0, ""

    .line 157
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/anythink/interstitial/a/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/interstitial/api/ATInterstitialAutoEventListener;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 222
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/anythink/core/common/b/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private b()Lcom/anythink/interstitial/api/ATInterstitialAutoLoadListener;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/anythink/interstitial/a/c;->b:Lcom/anythink/interstitial/api/ATInterstitialAutoLoadListener;

    return-object v0
.end method

.method public static varargs b([Ljava/lang/String;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 134
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 135
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 138
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Z)V

    .line 140
    invoke-static {v3}, Lcom/anythink/interstitial/a/c;->f(Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v3

    .line 141
    invoke-virtual {v3}, Lcom/anythink/core/common/f;->a()Lcom/anythink/core/common/j/d;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    .line 143
    invoke-interface {v3, v4}, Lcom/anythink/core/common/j/d;->a(Lcom/anythink/core/common/j/b;)V

    .line 144
    invoke-interface {v3}, Lcom/anythink/core/common/j/d;->c()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/api/ATAdInfo;",
            ">;"
        }
    .end annotation

    .line 214
    invoke-static {p0}, Lcom/anythink/interstitial/a/c;->f(Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 216
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->E()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private e(Ljava/lang/String;)Lcom/anythink/core/api/ATAdStatusInfo;
    .locals 2

    .line 230
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 231
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-static {p1}, Lcom/anythink/interstitial/a/c;->f(Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 237
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->E()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/util/Map;)Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1

    .line 233
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/anythink/interstitial/a/c;->a:Ljava/lang/String;

    const-string v0, "SDK init error!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static f(Ljava/lang/String;)Lcom/anythink/core/common/f;
    .locals 2

    .line 247
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "3"

    invoke-static {v0, p0, v1}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/interstitial/api/ATInterstitialAutoEventListener;)V
    .locals 8

    .line 161
    sget-object v0, Lcom/anythink/core/common/b/h$m;->t:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/h$m;->y:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$m;->n:Ljava/lang/String;

    const-string v3, ""

    invoke-static {p2, v0, v1, v2, v3}, Lcom/anythink/core/common/o/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object p1, p0, Lcom/anythink/interstitial/a/c;->a:Ljava/lang/String;

    const-string p2, "PlacementId is Empty!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 167
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 168
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 169
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 179
    iget-object v0, p0, Lcom/anythink/interstitial/a/c;->a:Ljava/lang/String;

    const-string v1, "Interstitial Show Activity is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2
    invoke-static {p1, p2}, Lcom/anythink/interstitial/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/interstitial/a/a;

    move-result-object v2

    new-instance v5, Lcom/anythink/interstitial/a/d;

    invoke-direct {v5, p4}, Lcom/anythink/interstitial/a/d;-><init>(Lcom/anythink/interstitial/api/ATInterstitialAutoEventListener;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/anythink/interstitial/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/interstitial/api/ATInterstitialListener;Lcom/anythink/core/api/ATEventInterface;Ljava/util/Map;)V

    return-void

    .line 170
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/anythink/interstitial/a/c;->a:Ljava/lang/String;

    const-string p2, "Show error: SDK init error!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Landroid/content/Context;[Ljava/lang/String;Lcom/anythink/interstitial/api/ATInterstitialAutoLoadListener;)V
    .locals 5

    .line 69
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->a(Landroid/app/Activity;)V

    :cond_0
    if-eqz p2, :cond_3

    .line 74
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    .line 76
    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "anythink"

    const-string v3, "Forbidden placement"

    .line 78
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 82
    :cond_1
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/anythink/core/common/u;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 84
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Z)V

    .line 86
    invoke-static {v2}, Lcom/anythink/interstitial/a/c;->f(Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/anythink/core/common/f;->a()Lcom/anythink/core/common/j/d;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 89
    invoke-interface {v2, p0}, Lcom/anythink/core/common/j/d;->a(Lcom/anythink/core/common/j/b;)V

    const/4 v3, 0x3

    .line 91
    invoke-interface {v2, p1, v3}, Lcom/anythink/core/common/j/d;->a(Landroid/content/Context;I)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_3
    iput-object p3, p0, Lcom/anythink/interstitial/a/c;->d:Lcom/anythink/interstitial/api/ATInterstitialAutoLoadListener;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 252
    invoke-static {}, Lcom/anythink/interstitial/a/c;->a()Lcom/anythink/interstitial/a/c;

    move-result-object v0

    .line 1242
    iget-object v0, v0, Lcom/anythink/interstitial/a/c;->b:Lcom/anythink/interstitial/api/ATInterstitialAutoLoadListener;

    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v0, p1}, Lcom/anythink/interstitial/api/ATInterstitialAutoLoadListener;->onInterstitialAutoLoaded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .locals 1

    .line 260
    invoke-static {}, Lcom/anythink/interstitial/a/c;->a()Lcom/anythink/interstitial/a/c;

    move-result-object v0

    .line 2242
    iget-object v0, v0, Lcom/anythink/interstitial/a/c;->b:Lcom/anythink/interstitial/api/ATInterstitialAutoLoadListener;

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0, p1, p2}, Lcom/anythink/interstitial/api/ATInterstitialAutoLoadListener;->onInterstitialAutoLoadFail(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    :cond_0
    return-void
.end method

.method public final varargs a([Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 104
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 109
    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "anythink"

    const-string v3, "Forbidden placement"

    .line 111
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 115
    :cond_1
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/anythink/core/common/u;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 117
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Z)V

    .line 119
    invoke-static {v2}, Lcom/anythink/interstitial/a/c;->f(Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lcom/anythink/core/common/f;->a()Lcom/anythink/core/common/j/d;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 122
    invoke-interface {v2, p0}, Lcom/anythink/core/common/j/d;->a(Lcom/anythink/core/common/j/b;)V

    .line 123
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/o;->E()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Lcom/anythink/core/common/j/d;->a(Landroid/content/Context;I)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 5

    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 188
    invoke-direct {p0, p1}, Lcom/anythink/interstitial/a/c;->e(Ljava/lang/String;)Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 192
    :cond_0
    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdStatusInfo;->isReady()Z

    move-result v1

    .line 195
    :cond_1
    sget-object v0, Lcom/anythink/core/common/b/h$m;->t:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$m;->z:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {p1, v0, v2, v3, v4}, Lcom/anythink/core/common/o/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final c(Ljava/lang/String;)Lcom/anythink/core/api/ATAdStatusInfo;
    .locals 5

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 202
    invoke-direct {p0, p1}, Lcom/anythink/interstitial/a/c;->e(Ljava/lang/String;)Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 204
    new-instance v0, Lcom/anythink/core/api/ATAdStatusInfo;

    invoke-direct {v0, v2, v2, v1}, Lcom/anythink/core/api/ATAdStatusInfo;-><init>(ZZLcom/anythink/core/api/ATAdInfo;)V

    goto :goto_0

    .line 207
    :cond_0
    new-instance v0, Lcom/anythink/core/api/ATAdStatusInfo;

    invoke-direct {v0, v2, v2, v1}, Lcom/anythink/core/api/ATAdStatusInfo;-><init>(ZZLcom/anythink/core/api/ATAdInfo;)V

    .line 209
    :cond_1
    :goto_0
    sget-object v1, Lcom/anythink/core/common/b/h$m;->t:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/h$m;->A:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdStatusInfo;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {p1, v1, v2, v3, v4}, Lcom/anythink/core/common/o/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
