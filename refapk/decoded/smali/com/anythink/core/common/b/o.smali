.class public Lcom/anythink/core/common/b/o;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field private static volatile j:Lcom/anythink/core/common/b/o;


# instance fields
.field private A:Lcom/anythink/core/api/IExHandler;

.field private final B:Ljava/lang/String;

.field private C:Z

.field private D:Z

.field private E:J

.field private F:J

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Lcom/anythink/core/common/g/c;

.field private M:Landroid/location/Location;

.field private N:Ljava/lang/String;

.field private O:Lorg/json/JSONArray;

.field private P:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private R:Ljava/lang/String;

.field private S:Lcom/anythink/core/api/ATDebuggerConfig;

.field private T:Z

.field private U:I

.field private V:Z

.field private W:Z

.field private X:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/api/IATAdFilter;",
            ">;"
        }
    .end annotation
.end field

.field private Y:Ljava/lang/String;

.field private Z:Lcom/anythink/core/api/ATPrivacyConfig;

.field private aa:I

.field private ab:Lcom/anythink/core/common/f/ax;

.field private ac:J

.field private final ad:Ljava/lang/Object;

.field c:Ljava/lang/Boolean;

.field d:J

.field e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Z

.field private k:Landroid/content/Context;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/os/Handler;

.field private o:Ljava/lang/String;

.field private p:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private r:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/api/ATCustomAdapterConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/String;

.field private u:Lorg/json/JSONObject;

.field private final v:Ljava/lang/Object;

.field private w:Landroid/content/BroadcastReceiver;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SDK.init"

    .line 111
    iput-object v0, p0, Lcom/anythink/core/common/b/o;->g:Ljava/lang/String;

    const-string v0, "com.anythink.pd.ExHandler"

    .line 112
    iput-object v0, p0, Lcom/anythink/core/common/b/o;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/anythink/core/common/b/o;->i:Z

    .line 134
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/anythink/core/common/b/o;->v:Ljava/lang/Object;

    .line 145
    iput-boolean v0, p0, Lcom/anythink/core/common/b/o;->C:Z

    .line 146
    iput-boolean v0, p0, Lcom/anythink/core/common/b/o;->D:Z

    const-wide/16 v1, 0x0

    .line 148
    iput-wide v1, p0, Lcom/anythink/core/common/b/o;->E:J

    .line 149
    iput-wide v1, p0, Lcom/anythink/core/common/b/o;->F:J

    .line 157
    iput-boolean v0, p0, Lcom/anythink/core/common/b/o;->K:Z

    const-string v3, ""

    .line 162
    iput-object v3, p0, Lcom/anythink/core/common/b/o;->N:Ljava/lang/String;

    const/4 v4, 0x1

    .line 171
    iput v4, p0, Lcom/anythink/core/common/b/o;->U:I

    .line 173
    iput-boolean v0, p0, Lcom/anythink/core/common/b/o;->V:Z

    .line 174
    iput-boolean v0, p0, Lcom/anythink/core/common/b/o;->W:Z

    .line 179
    iput-object v3, p0, Lcom/anythink/core/common/b/o;->Y:Ljava/lang/String;

    .line 185
    iput v4, p0, Lcom/anythink/core/common/b/o;->aa:I

    .line 191
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->ad:Ljava/lang/Object;

    .line 1088
    iput-wide v1, p0, Lcom/anythink/core/common/b/o;->d:J

    .line 238
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->n:Landroid/os/Handler;

    .line 239
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 240
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "anythink.test"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->B:Ljava/lang/String;

    .line 244
    iput-boolean v4, p0, Lcom/anythink/core/common/b/o;->I:Z

    .line 245
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->Q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 246
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->u:Lorg/json/JSONObject;

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/b/o;->ac:J

    .line 250
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->s:Ljava/util/Map;

    return-void
.end method

.method private N()V
    .locals 3

    .line 1043
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->w:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v1, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1045
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/b/l;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/l;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/b/o;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/l;->a(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 1047
    iput-object v0, p0, Lcom/anythink/core/common/b/o;->w:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    :catchall_0
    :try_start_1
    new-instance v0, Lcom/anythink/core/common/b/o$13;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/b/o$13;-><init>(Lcom/anythink/core/common/b/o;)V

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->w:Landroid/content/BroadcastReceiver;

    .line 1076
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 1077
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "anythink_log_agent"

    .line 1078
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1079
    iget-object v1, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/core/common/b/o;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1081
    iget-object v1, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/common/b/l;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/l;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/b/o;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/b/l;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method private O()V
    .locals 4

    .line 1862
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1864
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/b/o;->B:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 1866
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/b/o;->B:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    .line 1869
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    move v1, v0

    .line 1873
    :cond_1
    iput-boolean v1, p0, Lcom/anythink/core/common/b/o;->C:Z

    return-void
.end method

.method private P()Z
    .locals 1

    .line 1897
    iget-boolean v0, p0, Lcom/anythink/core/common/b/o;->I:Z

    return v0
.end method

.method private Q()J
    .locals 2

    .line 2367
    iget-wide v0, p0, Lcom/anythink/core/common/b/o;->ac:J

    return-wide v0
.end method

.method private static a(J)J
    .locals 2

    .line 1881
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 1882
    new-instance p0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result p1

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Ljava/util/Date;-><init>(III)V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    return-wide p0
.end method

.method public static a()Lcom/anythink/core/common/b/o;
    .locals 2

    .line 194
    sget-object v0, Lcom/anythink/core/common/b/o;->j:Lcom/anythink/core/common/b/o;

    if-nez v0, :cond_1

    .line 195
    const-class v0, Lcom/anythink/core/common/b/o;

    monitor-enter v0

    .line 196
    :try_start_0
    sget-object v1, Lcom/anythink/core/common/b/o;->j:Lcom/anythink/core/common/b/o;

    if-nez v1, :cond_0

    .line 197
    new-instance v1, Lcom/anythink/core/common/b/o;

    invoke-direct {v1}, Lcom/anythink/core/common/b/o;-><init>()V

    sput-object v1, Lcom/anythink/core/common/b/o;->j:Lcom/anythink/core/common/b/o;

    .line 198
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 200
    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/core/common/b/o;->j:Lcom/anythink/core/common/b/o;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/anythink/core/api/ATNetworkConfig;)V
    .locals 6

    if-nez p2, :cond_0

    .line 2104
    new-instance p2, Lcom/anythink/core/api/ATNetworkConfig;

    invoke-direct {p2}, Lcom/anythink/core/api/ATNetworkConfig;-><init>()V

    .line 2107
    :cond_0
    invoke-virtual {p2}, Lcom/anythink/core/api/ATNetworkConfig;->getATInitConfigList()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x2

    if-nez p2, :cond_1

    .line 2109
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2113
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->v()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2114
    invoke-interface {p2}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 2118
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2119
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2122
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/anythink/core/common/b/o;->K:Z

    .line 2127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const/4 v4, 0x0

    if-eq v0, v3, :cond_4

    :try_start_1
    const-string v0, "com.anythink.network.facebook.FacebookATInitConfig"

    .line 2132
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/anythink/core/api/ATInitConfig;

    .line 2133
    invoke-virtual {v0, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 2135
    move-object v3, v4

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 2136
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v3, v2, [Ljava/lang/Object;

    .line 2137
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/api/ATInitConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2139
    :try_start_2
    invoke-interface {p2, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-object v4, v0

    .line 2152
    :catchall_2
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/api/ATInitConfig;

    if-eqz v0, :cond_5

    if-eqz v4, :cond_6

    .line 2158
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v2, :cond_5

    const/4 v2, 0x1

    .line 2165
    :cond_6
    new-instance v3, Lcom/anythink/core/common/b/o$6;

    invoke-direct {v3, p0, v0, p1}, Lcom/anythink/core/common/b/o$6;-><init>(Lcom/anythink/core/common/b/o;Lcom/anythink/core/api/ATInitConfig;Landroid/content/Context;)V

    invoke-static {v3}, Lcom/anythink/core/common/b/o;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 2380
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2384
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/anythink/core/d/f;->a(Landroid/content/Context;)Lcom/anythink/core/d/f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/anythink/core/d/f;->h(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "SDK.init"

    const-string p1, "setPrePlacementStrategy failed: path is null or empty."

    .line 2381
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a(Lcom/anythink/core/api/ATSharedPlacementConfig;)V
    .locals 1

    .line 2388
    invoke-static {}, Lcom/anythink/core/common/w;->a()Lcom/anythink/core/common/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/api/ATSharedPlacementConfig;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/b/o;)V
    .locals 4

    .line 16862
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 16864
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/b/o;->B:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 16866
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/b/o;->B:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    .line 16869
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    move v1, v0

    .line 16873
    :cond_1
    iput-boolean v1, p0, Lcom/anythink/core/common/b/o;->C:Z

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/b/o;Landroid/content/Context;)V
    .locals 21

    const-string v0, ""

    const-string v1, "playRecord"

    const-string v2, "anythink_sdk"

    move-object/from16 v3, p0

    .line 13957
    iget-wide v3, v3, Lcom/anythink/core/common/b/o;->d:J

    const-wide/16 v5, 0x0

    .line 13959
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v7

    .line 14353
    iget-object v7, v7, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    .line 13959
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v9

    invoke-virtual {v9}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v2, v8, v0}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 13961
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 13962
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "start_time"

    .line 13963
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    const-string v7, "end_time"

    .line 13964
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v17

    const-string v7, "psid"

    .line 13965
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v7, "launch_mode"

    .line 13966
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-wide/16 v19, 0x3e8

    cmp-long v8, v3, v5

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    const/4 v7, 0x4

    const/4 v9, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    const/4 v9, 0x2

    :goto_0
    move-wide v10, v15

    move-wide/from16 v12, v17

    .line 13969
    invoke-static/range {v9 .. v14}, Lcom/anythink/core/common/n/c;->a(IJJLjava/lang/String;)V

    .line 13970
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Create new psid, SDKContext.init to send playTime:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v17, v17, v15

    div-long v8, v17, v19

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 13973
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Psid is old, use pervioud statime,close before:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v17, v17, v15

    div-long v7, v17, v19

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v3, v15

    .line 13975
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v7

    .line 15353
    iget-object v7, v7, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    .line 13975
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v9

    invoke-virtual {v9}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v2, v8, v0}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-wide v3, v15

    .line 13979
    :catch_1
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v7

    .line 16353
    iget-object v7, v7, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    .line 13979
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v9

    invoke-virtual {v9}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v2, v1, v0}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    .line 13983
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "SPU_INIT_TIME_KEY"

    move-object/from16 v7, p1

    invoke-static {v7, v2, v1, v0}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_3

    :cond_3
    move-object/from16 v7, p1

    :goto_3
    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    .line 13987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 13991
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/anythink/core/common/b/e;

    invoke-direct {v1, v3, v4}, Lcom/anythink/core/common/b/e;-><init>(J)V

    .line 13992
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/b/o;Landroid/content/Context;Lcom/anythink/core/api/ATNetworkConfig;)V
    .locals 6

    if-nez p2, :cond_0

    .line 18104
    new-instance p2, Lcom/anythink/core/api/ATNetworkConfig;

    invoke-direct {p2}, Lcom/anythink/core/api/ATNetworkConfig;-><init>()V

    .line 18107
    :cond_0
    invoke-virtual {p2}, Lcom/anythink/core/api/ATNetworkConfig;->getATInitConfigList()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x2

    if-nez p2, :cond_1

    .line 18109
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 18113
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->v()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18114
    invoke-interface {p2}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 18118
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18119
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 18122
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/anythink/core/common/b/o;->K:Z

    .line 18127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const/4 v4, 0x0

    if-eq v0, v3, :cond_4

    :try_start_1
    const-string v0, "com.anythink.network.facebook.FacebookATInitConfig"

    .line 18132
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/anythink/core/api/ATInitConfig;

    .line 18133
    invoke-virtual {v0, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 18135
    move-object v3, v4

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 18136
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v3, v2, [Ljava/lang/Object;

    .line 18137
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/api/ATInitConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 18139
    :try_start_2
    invoke-interface {p2, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-object v4, v0

    .line 18152
    :catchall_2
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/api/ATInitConfig;

    if-eqz v0, :cond_5

    if-eqz v4, :cond_6

    .line 18158
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v2, :cond_5

    const/4 v2, 0x1

    .line 18165
    :cond_6
    new-instance v3, Lcom/anythink/core/common/b/o$6;

    invoke-direct {v3, p0, v0, p1}, Lcom/anythink/core/common/b/o$6;-><init>(Lcom/anythink/core/common/b/o;Lcom/anythink/core/api/ATInitConfig;Landroid/content/Context;)V

    invoke-static {v3}, Lcom/anythink/core/common/b/o;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 3

    .line 767
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    .line 6137
    invoke-virtual {v0, p0, v1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1427
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1428
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1430
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x20000

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    const-string v0, ", "

    .line 1434
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v3, ", error: "

    .line 1438
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1441
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 p1, 0x2

    if-le p0, p1, :cond_3

    .line 1442
    invoke-virtual {v1, v2, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_3
    const-string p0, "anythink"

    if-eqz v0, :cond_4

    const-string p1, "Activities : VERIFIED"

    .line 1446
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1448
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Activities : Missing "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " declare in AndroidManifest"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v0
.end method

.method static a(Landroid/content/Context;Ljava/util/List;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    .line 1673
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v1, ""

    const/4 v2, 0x0

    .line 1681
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v3, :cond_8

    .line 1683
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1686
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1687
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1691
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "layout"

    .line 1692
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1691
    invoke-virtual {v7, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-gtz v6, :cond_2

    goto :goto_4

    :cond_2
    const/4 v7, 0x0

    .line 1701
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 1705
    :cond_3
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-eq v6, v0, :cond_5

    const/4 v8, 0x2

    if-ne v6, v8, :cond_3

    const-string v6, "x"

    .line 1710
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1711
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v6

    if-nez v6, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    .line 1716
    :cond_4
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ltz v6, :cond_3

    :cond_5
    :goto_1
    if-eqz v7, :cond_6

    .line 1725
    :goto_2
    :try_start_3
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v6

    .line 1722
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_1
    move-exception p0

    if-eqz v7, :cond_7

    .line 1725
    :try_start_5
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1727
    :cond_7
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    nop

    goto :goto_4

    :cond_8
    move v2, v5

    goto :goto_4

    :catchall_3
    move-exception p0

    .line 1736
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    const-string p0, "anythink"

    if-eqz v2, :cond_9

    if-nez p2, :cond_a

    const-string p1, "Resource: VERIFIED"

    .line 1742
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1745
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Resource: The "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " resources are missing. If shrinkResources is enabled, the "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " resources must be added to the whitelist (keep.xml)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_5
    return v2

    :cond_b
    :goto_6
    return v0
.end method

.method static synthetic b(Lcom/anythink/core/common/b/o;)Landroid/content/Context;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    return-object p0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1190
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/anythink/core/common/b/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    new-instance p3, Lcom/anythink/core/common/b/o$14;

    invoke-direct {p3, p0, p1, p2}, Lcom/anythink/core/common/b/o$14;-><init>(Lcom/anythink/core/common/b/o;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/anythink/core/common/b/o;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/core/common/b/o;Landroid/content/Context;)V
    .locals 5

    :try_start_0
    const-string v0, "com.anythink.network.adx.AdxATInitManager"

    .line 17774
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 17775
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 17778
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    const-string v1, "anythink"

    .line 17780
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Cannot instantiate "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", please check if SDK is imported"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v3, :cond_0

    .line 17783
    instance-of v0, v3, Lcom/anythink/core/api/ATInitMediation;

    if-eqz v0, :cond_0

    .line 17786
    check-cast v3, Lcom/anythink/core/api/ATInitMediation;

    .line 17788
    invoke-virtual {v3}, Lcom/anythink/core/api/ATInitMediation;->getResourceStatus()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 17790
    invoke-static {p1, v0, v1}, Lcom/anythink/core/common/b/o;->a(Landroid/content/Context;Ljava/util/List;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 17792
    sget-boolean p1, Lcom/anythink/core/api/ATCommonConfig;->isShowInitErrorTips:Z

    if-eqz p1, :cond_0

    .line 17793
    new-instance p1, Lcom/anythink/core/common/b/o$12;

    invoke-direct {p1, p0}, Lcom/anythink/core/common/b/o$12;-><init>(Lcom/anythink/core/common/b/o;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lcom/anythink/core/common/b/o;->a(Ljava/lang/Runnable;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1814
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static b(Landroid/content/Context;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1460
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1461
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1462
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1464
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x20000

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    const-string v0, ", "

    .line 1467
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v4, ", error: "

    .line 1471
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1474
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 p1, 0x2

    if-le p0, p1, :cond_3

    .line 1475
    invoke-virtual {v1, v3, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_3
    const-string p0, "anythink"

    if-eqz v0, :cond_4

    const-string p1, "Services : VERIFIED"

    .line 1479
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1481
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Services : Missing "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " declare in AndroidManifest"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v0
.end method

.method static b(Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1402
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1403
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1404
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v0, ", "

    .line 1406
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_0

    .line 1409
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v2, 0x2

    if-le p0, v2, :cond_3

    .line 1410
    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_3
    const-string p0, "anythink"

    if-eqz v0, :cond_4

    const-string v1, "Dependence Plugin: VERIFIED"

    .line 1414
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1416
    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dependence Plugin: Missing "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method

.method static synthetic c(Lcom/anythink/core/common/b/o;)Lcom/anythink/core/api/IExHandler;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/anythink/core/common/b/o;->A:Lcom/anythink/core/api/IExHandler;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    const-string v0, "com.anythink.network.adx.AdxATInitManager"

    .line 774
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 775
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 778
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    const-string v1, "anythink"

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Cannot instantiate "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", please check if SDK is imported"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v3, :cond_0

    .line 783
    instance-of v0, v3, Lcom/anythink/core/api/ATInitMediation;

    if-eqz v0, :cond_0

    .line 786
    check-cast v3, Lcom/anythink/core/api/ATInitMediation;

    .line 788
    invoke-virtual {v3}, Lcom/anythink/core/api/ATInitMediation;->getResourceStatus()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 790
    invoke-static {p1, v0, v1}, Lcom/anythink/core/common/b/o;->a(Landroid/content/Context;Ljava/util/List;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 792
    sget-boolean p1, Lcom/anythink/core/api/ATCommonConfig;->isShowInitErrorTips:Z

    if-eqz p1, :cond_0

    .line 793
    new-instance p1, Lcom/anythink/core/common/b/o$12;

    invoke-direct {p1, p0}, Lcom/anythink/core/common/b/o$12;-><init>(Lcom/anythink/core/common/b/o;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lcom/anythink/core/common/b/o;->a(Ljava/lang/Runnable;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 3

    .line 1798
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 11137
    invoke-virtual {v0, p0, v1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method static c(Landroid/content/Context;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1492
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1494
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1498
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v5, 0x8

    invoke-virtual {v2, p0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v2, ", error: "

    .line 1502
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    :goto_0
    if-nez v3, :cond_1

    return v4

    .line 1509
    :cond_1
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 1511
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1513
    array-length v5, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v7, v2, v6

    .line 1514
    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_2

    const-string p0, ", "

    .line 1521
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    goto :goto_1

    .line 1524
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_6

    .line 1525
    invoke-virtual {v1, v4, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_6
    const-string p1, "anythink"

    if-eqz p0, :cond_7

    const-string v0, "Providers : VERIFIED"

    .line 1529
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1531
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Providers : Missing "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " declare in AndroidManifest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return p0
.end method

.method static synthetic d(Lcom/anythink/core/common/b/o;)Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/anythink/core/common/b/o;->l:Ljava/lang/String;

    return-object p0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "activity"

    .line 819
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 820
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 821
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 822
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 823
    iget p0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x64

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    .line 832
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method static d(Landroid/content/Context;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 1539
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 1545
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 1550
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1551
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v4, 0x80

    .line 1550
    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1553
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 1557
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1558
    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1560
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v0, ", \""

    .line 1563
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    .line 1566
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1570
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 p1, 0x2

    if-le p0, p1, :cond_3

    .line 1571
    invoke-virtual {v1, v2, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    move v2, v0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1575
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const-string p0, "anythink"

    if-eqz v2, :cond_4

    const-string p1, "meta-data: VERIFIED"

    .line 1580
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1582
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "meta-data: Missing "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " declare in AndroidManifest"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v2

    :cond_5
    :goto_3
    return v0
.end method

.method private e(Z)V
    .locals 0

    .line 1918
    iput-boolean p1, p0, Lcom/anythink/core/common/b/o;->V:Z

    return-void
.end method

.method private e(Landroid/content/Context;)Z
    .locals 3

    .line 899
    invoke-static {p1}, Lcom/anythink/core/common/o/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 900
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/anythink/core/common/b/o;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 906
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/o/e;->f()Ljava/lang/String;

    move-result-object v0

    .line 907
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 908
    iget-object v1, p0, Lcom/anythink/core/common/b/o;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 913
    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 915
    iget-object v1, p0, Lcom/anythink/core/common/b/o;->R:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/anythink/core/api/IExHandler;->checkDebuggerDevice(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static e(Landroid/content/Context;Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1594
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1601
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 1606
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v5, 0x1000

    invoke-virtual {v4, p0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1608
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, ", "

    if-eqz p0, :cond_7

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    if-ge v5, v1, :cond_6

    .line 1615
    :try_start_1
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1619
    array-length v8, p0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, p0, v9

    .line 1620
    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_5

    .line 1632
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 1633
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1635
    :cond_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v6, 0x0

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    move v3, v6

    goto :goto_6

    :cond_7
    const/4 p0, 0x0

    :goto_4
    if-ge p0, v1, :cond_9

    .line 1644
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez p0, :cond_8

    .line 1647
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1649
    :cond_8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 1656
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_6
    const-string p0, "anythink"

    if-eqz v3, :cond_a

    const-string p1, "Permission: VERIFIED"

    .line 1661
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1663
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Permission: Missing "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " declare in AndroidManifest"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return v3
.end method

.method private f(Landroid/content/Context;)V
    .locals 22

    const-string v0, ""

    const-string v1, "playRecord"

    const-string v2, "anythink_sdk"

    move-object/from16 v3, p0

    .line 957
    iget-wide v4, v3, Lcom/anythink/core/common/b/o;->d:J

    const-wide/16 v6, 0x0

    .line 959
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v8

    .line 7353
    iget-object v8, v8, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    .line 959
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v10

    invoke-virtual {v10}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v2, v9, v0}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 961
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 962
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "start_time"

    .line 963
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v8, "end_time"

    .line 964
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v18

    const-string v8, "psid"

    .line 965
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v8, "launch_mode"

    .line 966
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-wide/16 v20, 0x3e8

    cmp-long v9, v4, v6

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    const/4 v8, 0x4

    const/4 v10, 0x4

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    const/4 v10, 0x2

    :goto_0
    move-wide/from16 v11, v16

    move-wide/from16 v13, v18

    .line 969
    invoke-static/range {v10 .. v15}, Lcom/anythink/core/common/n/c;->a(IJJLjava/lang/String;)V

    .line 970
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Create new psid, SDKContext.init to send playTime:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v18, v18, v16

    div-long v9, v18, v20

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 973
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Psid is old, use pervioud statime,close before:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v18, v18, v16

    div-long v8, v18, v20

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-wide/from16 v4, v16

    .line 975
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v8

    .line 8353
    iget-object v8, v8, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    .line 975
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v10

    invoke-virtual {v10}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v2, v9, v0}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-wide/from16 v4, v16

    .line 979
    :catch_1
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v8

    .line 9353
    iget-object v8, v8, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    .line 979
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v10

    invoke-virtual {v10}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v2, v1, v0}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 983
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "SPU_INIT_TIME_KEY"

    move-object/from16 v8, p1

    invoke-static {v8, v2, v1, v0}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_3

    :cond_3
    move-object/from16 v8, p1

    :goto_3
    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 991
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/anythink/core/common/b/e;

    invoke-direct {v1, v4, v5}, Lcom/anythink/core/common/b/e;-><init>(J)V

    .line 992
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private static g(Landroid/content/Context;)V
    .locals 1

    .line 2376
    invoke-static {}, Lcom/anythink/core/common/e/c;->a()Lcom/anythink/core/common/e/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/e/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method static i(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "anythink"

    .line 1386
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string p0, "SDK: VERIFIED"

    .line 1387
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const-string p0, "SDK: NOT VERIFIED"

    .line 1392
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static o(Ljava/lang/String;)V
    .locals 6

    .line 1979
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "anythink"

    if-eqz v0, :cond_0

    const-string p0, "AdSourceId is empty"

    .line 1980
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1984
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const-string v0, "AdSourceId can\'t set 0"

    .line 1986
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 1989
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AdSourceId \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' is not compliant"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic r(Ljava/lang/String;)Z
    .locals 6

    .line 18758
    invoke-static {}, Lcom/anythink/core/common/o/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 18759
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "anythink"

    if-nez v1, :cond_1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object v0, v5, v2

    const-string p0, "Adapter Version: The current Adapter version(%s) does not apply to the SDK version(%s)."

    .line 18761
    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 18762
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string p0, "Adapter Version: VERIFIED"

    .line 18764
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method

.method private s(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->q:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private t(Ljava/lang/String;)V
    .locals 3

    .line 499
    iput-object p1, p0, Lcom/anythink/core/common/b/o;->l:Ljava/lang/String;

    .line 500
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    const-string v1, "anythink_sdk"

    const-string v2, "anythink_appid"

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private u(Ljava/lang/String;)V
    .locals 3

    .line 511
    iput-object p1, p0, Lcom/anythink/core/common/b/o;->m:Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    const-string v1, "anythink_sdk"

    const-string v2, "anythink_appkey"

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private v(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 848
    iput-object p1, p0, Lcom/anythink/core/common/b/o;->R:Ljava/lang/String;

    return-void
.end method

.method private w(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1159
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->v:Ljava/lang/Object;

    monitor-enter v0

    .line 1160
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/b/o;->u:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1161
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1162
    monitor-exit v0

    return-object v1

    .line 1165
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": sessionid is empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->x()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 1168
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/common/o/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/o/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const v4, 0x989680

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1172
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/o/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    :try_start_1
    iget-object v5, p0, Lcom/anythink/core/common/b/o;->u:Lorg/json/JSONObject;

    invoke-virtual {v5, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1179
    :catch_0
    :try_start_2
    iget-object v5, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    const-string v6, "anythink_sdk"

    const-string v7, "SPU_SESSIONID_KEY"

    iget-object v8, p0, Lcom/anythink/core/common/b/o;->u:Lorg/json/JSONObject;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "2"

    .line 1182
    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->x()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v5, v2, v3}, Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 1184
    monitor-exit v0

    throw p1
.end method

.method private static x(Ljava/lang/String;)Z
    .locals 6

    .line 1758
    invoke-static {}, Lcom/anythink/core/common/o/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 1759
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "anythink"

    if-nez v1, :cond_1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object v0, v5, v2

    const-string p0, "Adapter Version: The current Adapter version(%s) does not apply to the SDK version(%s)."

    .line 1761
    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1762
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string p0, "Adapter Version: VERIFIED"

    .line 1764
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 1877
    iget-boolean v0, p0, Lcom/anythink/core/common/b/o;->C:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/core/common/b/o;->D:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final B()Lcom/anythink/core/common/g/c;
    .locals 1

    .line 1886
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->L:Lcom/anythink/core/common/g/c;

    if-nez v0, :cond_0

    .line 1887
    new-instance v0, Lcom/anythink/core/common/k/d;

    invoke-direct {v0}, Lcom/anythink/core/common/k/d;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->L:Lcom/anythink/core/common/g/c;

    .line 1889
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->L:Lcom/anythink/core/common/g/c;

    return-object v0
.end method

.method public final C()Z
    .locals 1

    .line 1922
    iget-boolean v0, p0, Lcom/anythink/core/common/b/o;->V:Z

    return v0
.end method

.method public final D()Z
    .locals 1

    .line 1930
    iget-boolean v0, p0, Lcom/anythink/core/common/b/o;->W:Z

    return v0
.end method

.method public final E()Landroid/content/Context;
    .locals 1

    .line 2073
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2074
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    .line 2076
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    return-object v0
.end method

.method public final F()Landroid/app/Activity;
    .locals 1

    .line 2094
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2095
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    .line 2286
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public final H()Z
    .locals 1

    .line 2295
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2296
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    :try_start_0
    const-string v0, "com.reyun.mobdna.MobDNA"

    .line 2300
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2301
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->c:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2303
    :catchall_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->c:Ljava/lang/Boolean;

    .line 2305
    :goto_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final I()Z
    .locals 1

    .line 2309
    iget-boolean v0, p0, Lcom/anythink/core/common/b/o;->K:Z

    return v0
.end method

.method public final J()Lcom/anythink/core/api/ATPrivacyConfig;
    .locals 1

    .line 2317
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->Z:Lcom/anythink/core/api/ATPrivacyConfig;

    return-object v0
.end method

.method public final K()I
    .locals 1

    .line 2321
    iget v0, p0, Lcom/anythink/core/common/b/o;->aa:I

    return v0
.end method

.method public final L()Lcom/anythink/core/common/f/ax;
    .locals 2

    .line 2329
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->ab:Lcom/anythink/core/common/f/ax;

    if-nez v0, :cond_0

    .line 2330
    new-instance v0, Lcom/anythink/core/common/f/ax;

    invoke-direct {v0}, Lcom/anythink/core/common/f/ax;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->ab:Lcom/anythink/core/common/f/ax;

    .line 2333
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->ab:Lcom/anythink/core/common/f/ax;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    .line 13353
    iget-object v1, v1, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    .line 2333
    invoke-static {v1}, Lcom/anythink/core/common/o/e;->t(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/ax;->a(I)V

    .line 2334
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->ab:Lcom/anythink/core/common/f/ax;

    invoke-static {}, Lcom/anythink/core/common/o/e;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/ax;->b(I)V

    .line 2335
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->ab:Lcom/anythink/core/common/f/ax;

    invoke-static {}, Lcom/anythink/core/common/o/e;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/ax;->c(I)V

    .line 2336
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->ab:Lcom/anythink/core/common/f/ax;

    invoke-static {}, Lcom/anythink/core/common/o/e;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/o/e;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/ax;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2341
    :catchall_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->ab:Lcom/anythink/core/common/f/ax;

    return-object v0
.end method

.method public final M()V
    .locals 2

    .line 2363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/b/o;->ac:J

    return-void
.end method

.method protected final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;I)J
    .locals 12

    monitor-enter p0

    .line 1099
    :try_start_0
    invoke-static {p1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    const-string v1, "anythink_sdk"

    const-string v2, "SPU_PSID_KEY"

    const-string v3, ""

    .line 1101
    invoke-static {p1, v1, v2, v3}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "anythink_sdk"

    const-string v3, "SPU_SESSIONID_KEY"

    const-string v4, ""

    .line 1102
    invoke-static {p1, v2, v3, v4}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "anythink_sdk"

    const-string v4, "SPU_INIT_TIME_KEY"

    const-wide/16 v5, 0x0

    .line 1103
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p1, v3, v4, v7}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v9, v7, v3

    cmp-long v11, v9, v5

    if-gez v11, :cond_0

    move-wide v3, v5

    :cond_0
    sub-long v3, v7, v3

    if-nez p3, :cond_1

    .line 1113
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->X()J

    move-result-wide v9

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->J()I

    move-result v9

    int-to-long v9, v9

    :goto_0
    cmp-long v11, v3, v9

    if-gtz v11, :cond_3

    .line 1114
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "psid updataTime<="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/core/d/a;->X()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1115
    iput-object v1, p0, Lcom/anythink/core/common/b/o;->t:Ljava/lang/String;

    .line 1116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1117
    iget-object p1, p0, Lcom/anythink/core/common/b/o;->v:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1118
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/anythink/core/common/b/o;->u:Lorg/json/JSONObject;

    .line 1119
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_2
    monitor-exit p1

    throw p2

    .line 1121
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "psid :"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/core/common/b/o;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1122
    monitor-exit p0

    return-wide v5

    .line 1124
    :cond_3
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "psid updataTime>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/core/d/a;->X()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1125
    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->x()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 1127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/anythink/core/common/o/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/o/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1129
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x989680

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1132
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/anythink/core/common/o/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/core/common/b/o;->t:Ljava/lang/String;

    .line 1135
    iget-object p2, p0, Lcom/anythink/core/common/b/o;->v:Ljava/lang/Object;

    monitor-enter p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1136
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->u:Lorg/json/JSONObject;

    .line 1137
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string p2, "anythink_sdk"

    const-string v0, "SPU_PSID_KEY"

    .line 1139
    iget-object v2, p0, Lcom/anythink/core/common/b/o;->t:Ljava/lang/String;

    invoke-static {p1, p2, v0, v2}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "anythink_sdk"

    const-string v0, "SPU_SESSIONID_KEY"

    const-string v2, ""

    .line 1140
    invoke-static {p1, p2, v0, v2}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "anythink_sdk"

    const-string v0, "SPU_INIT_TIME_KEY"

    .line 1141
    invoke-static {p1, p2, v0, v7, v8}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1143
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "psid :"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/core/common/b/o;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    const-string p2, "1"

    .line 1144
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v1, v0}, Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_5

    .line 1146
    iput-wide v7, p0, Lcom/anythink/core/common/b/o;->d:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1148
    :cond_5
    monitor-exit p0

    return-wide v7

    :catchall_1
    move-exception p1

    .line 1137
    :try_start_6
    monitor-exit p2

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 301
    iput v0, p0, Lcom/anythink/core/common/b/o;->U:I

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 303
    iput p1, p0, Lcom/anythink/core/common/b/o;->U:I

    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 1

    .line 2066
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2067
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->e:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "SDK.init"

    const-string v0, "ATSDK.setContext() is null!"

    .line 346
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 349
    :cond_0
    iput-object p1, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/anythink/core/api/DeviceInfoCallback;)V
    .locals 2

    .line 1934
    iget-boolean v0, p0, Lcom/anythink/core/common/b/o;->J:Z

    if-nez v0, :cond_1

    const-string p1, "anythink"

    const-string v0, "You should init SDK first."

    .line 1935
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 1937
    invoke-interface {p2, v0}, Lcom/anythink/core/api/DeviceInfoCallback;->deviceInfo(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1942
    :cond_1
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b/o$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/core/common/b/o$4;-><init>(Lcom/anythink/core/common/b/o;Landroid/content/Context;Lcom/anythink/core/api/DeviceInfoCallback;)V

    const/4 p1, 0x2

    const/4 p2, 0x1

    .line 12137
    invoke-virtual {v0, v1, p1, p2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/api/ATDebuggerConfig;)V
    .locals 3

    const-string v0, "SDK.init"

    if-nez p1, :cond_1

    .line 857
    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "setDebuggerConfig fail, because context is null."

    .line 858
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 863
    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    .line 6353
    iget-object v1, v1, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 864
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/o;->a(Landroid/content/Context;)V

    .line 867
    :cond_2
    iput-object p2, p0, Lcom/anythink/core/common/b/o;->R:Ljava/lang/String;

    .line 868
    iput-object p3, p0, Lcom/anythink/core/common/b/o;->S:Lcom/anythink/core/api/ATDebuggerConfig;

    .line 6899
    invoke-static {p1}, Lcom/anythink/core/common/o/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 6900
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_3

    .line 6901
    iget-object p3, p0, Lcom/anythink/core/common/b/o;->R:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 6906
    :cond_3
    invoke-static {}, Lcom/anythink/core/common/o/e;->f()Ljava/lang/String;

    move-result-object p2

    .line 6907
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 6908
    iget-object p3, p0, Lcom/anythink/core/common/b/o;->R:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    .line 6913
    :cond_4
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/o;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 6915
    iget-object p3, p0, Lcom/anythink/core/common/b/o;->R:Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/anythink/core/api/IExHandler;->checkDebuggerDevice(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    .line 870
    :goto_0
    iput-boolean v2, p0, Lcom/anythink/core/common/b/o;->T:Z

    .line 872
    iget-object p1, p0, Lcom/anythink/core/common/b/o;->R:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 873
    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->A()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Setting Debugger\'s device fail, because deviceId is empty."

    .line 874
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_6
    iput-boolean v1, p0, Lcom/anythink/core/common/b/o;->T:Z

    return-void

    .line 880
    :cond_7
    iget-boolean p1, p0, Lcom/anythink/core/common/b/o;->T:Z

    if-eqz p1, :cond_a

    .line 881
    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->A()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "Setting Debugger\'s device success."

    .line 882
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_8
    iget-object p1, p0, Lcom/anythink/core/common/b/o;->S:Lcom/anythink/core/api/ATDebuggerConfig;

    if-eqz p1, :cond_9

    .line 892
    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->A()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "Debugger config is in effect now."

    .line 893
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    .line 885
    :cond_a
    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->A()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "The incoming device id does not match the current device id, and the debugger mode cannot take effect."

    .line 886
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1779
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b/o$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/core/common/b/o$3;-><init>(Lcom/anythink/core/common/b/o;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xd

    .line 10156
    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATNetworkConfig;)V
    .locals 8

    monitor-enter p0

    if-nez p1, :cond_0

    .line 622
    monitor-exit p0

    return-void

    .line 625
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    .line 627
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 631
    :cond_1
    iget-boolean v0, p0, Lcom/anythink/core/common/b/o;->J:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_2

    .line 632
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 635
    :try_start_1
    iput-boolean v0, p0, Lcom/anythink/core/common/b/o;->J:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 638
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "anythink_sdk"

    const-string v4, "AT_INIT_TIME"

    const-wide/16 v5, 0x0

    .line 639
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p1, v3, v4, v7}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/anythink/core/common/b/o;->E:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    .line 642
    iput-wide v1, p0, Lcom/anythink/core/common/b/o;->E:J

    const-string v3, "anythink_sdk"

    const-string v4, "AT_INIT_TIME"

    .line 643
    invoke-static {p1, v3, v4, v1, v2}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 646
    :cond_3
    invoke-static {v1, v2}, Lcom/anythink/core/common/b/o;->a(J)J

    move-result-wide v1

    .line 647
    iget-wide v3, p0, Lcom/anythink/core/common/b/o;->E:J

    invoke-static {v3, v4}, Lcom/anythink/core/common/b/o;->a(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    .line 650
    div-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/anythink/core/common/b/o;->F:J

    .line 652
    iput-wide v5, p0, Lcom/anythink/core/common/b/o;->d:J

    .line 653
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/a/a;->a()V

    const-string v1, "anythink_sdk"

    const-string v2, "r"

    .line 656
    invoke-static {p1, v1, v2, v0}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/anythink/core/common/b/o;->aa:I

    .line 658
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 659
    invoke-virtual {p0, v0}, Lcom/anythink/core/common/b/o;->a(Landroid/content/Context;)V

    .line 3499
    iput-object p2, p0, Lcom/anythink/core/common/b/o;->l:Ljava/lang/String;

    .line 3500
    iget-object v1, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    const-string v2, "anythink_sdk"

    const-string v3, "anythink_appid"

    invoke-static {v1, v2, v3, p2}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3511
    iput-object p3, p0, Lcom/anythink/core/common/b/o;->m:Ljava/lang/String;

    .line 3512
    iget-object v1, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    const-string v2, "anythink_sdk"

    const-string v3, "anythink_appkey"

    invoke-static {v1, v2, v3, p3}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-static {}, Lcom/anythink/core/common/o/i;->a()Z

    move-result v1

    .line 3918
    iput-boolean v1, p0, Lcom/anythink/core/common/b/o;->V:Z

    .line 4376
    invoke-static {}, Lcom/anythink/core/common/e/c;->a()Lcom/anythink/core/common/e/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/anythink/core/common/e/c;->a(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5043
    :try_start_3
    iget-object v1, p0, Lcom/anythink/core/common/b/o;->w:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_4

    .line 5044
    iget-object v2, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5045
    iget-object v1, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/common/b/l;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/l;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/b/o;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/l;->a(Landroid/content/BroadcastReceiver;)V

    :cond_4
    const/4 v1, 0x0

    .line 5047
    iput-object v1, p0, Lcom/anythink/core/common/b/o;->w:Landroid/content/BroadcastReceiver;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5053
    :catchall_0
    :try_start_4
    new-instance v1, Lcom/anythink/core/common/b/o$13;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/b/o$13;-><init>(Lcom/anythink/core/common/b/o;)V

    iput-object v1, p0, Lcom/anythink/core/common/b/o;->w:Landroid/content/BroadcastReceiver;

    .line 5076
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 5077
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "anythink_log_agent"

    .line 5078
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5079
    iget-object v2, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/core/common/b/o;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5081
    iget-object v2, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/common/b/l;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/l;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/b/o;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Lcom/anythink/core/common/b/l;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 667
    :catchall_1
    :try_start_5
    new-instance v1, Lcom/anythink/core/common/b/o$1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/anythink/core/common/b/o$1;-><init>(Lcom/anythink/core/common/b/o;Landroid/content/Context;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/anythink/core/common/b/o;->a(Ljava/lang/Runnable;)V

    .line 699
    new-instance v1, Lcom/anythink/core/common/b/o$7;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/b/o$7;-><init>(Lcom/anythink/core/common/b/o;)V

    invoke-static {v1}, Lcom/anythink/core/common/b/o;->a(Ljava/lang/Runnable;)V

    .line 705
    new-instance v1, Lcom/anythink/core/common/b/o$8;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/b/o$8;-><init>(Lcom/anythink/core/common/b/o;)V

    invoke-static {v1}, Lcom/anythink/core/common/b/o;->a(Ljava/lang/Runnable;)V

    .line 712
    iget-object v1, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/common/b/o;->d(Landroid/content/Context;)Z

    move-result v1

    .line 714
    iget-object v2, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    check-cast v2, Landroid/app/Application;

    new-instance v3, Lcom/anythink/core/common/b/f;

    invoke-direct {v3, v1}, Lcom/anythink/core/common/b/f;-><init>(Z)V

    invoke-virtual {v2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 717
    new-instance v1, Lcom/anythink/core/common/b/o$9;

    invoke-direct {v1, p0, v0}, Lcom/anythink/core/common/b/o$9;-><init>(Lcom/anythink/core/common/b/o;Landroid/content/Context;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/anythink/core/common/b/o;->a(Ljava/lang/Runnable;J)V

    .line 731
    new-instance v1, Lcom/anythink/core/common/b/o$10;

    invoke-direct {v1, p0, p1, v0}, Lcom/anythink/core/common/b/o$10;-><init>(Lcom/anythink/core/common/b/o;Landroid/content/Context;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/anythink/core/common/b/o;->a(Ljava/lang/Runnable;)V

    .line 754
    new-instance v0, Lcom/anythink/core/common/b/o$11;

    invoke-direct {v0, p0, p4}, Lcom/anythink/core/common/b/o$11;-><init>(Lcom/anythink/core/common/b/o;Lcom/anythink/core/api/ATNetworkConfig;)V

    invoke-static {v0}, Lcom/anythink/core/common/b/o;->a(Ljava/lang/Runnable;)V

    .line 5190
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p0, p4, p2, p3}, Lcom/anythink/core/common/b/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5191
    new-instance p3, Lcom/anythink/core/common/b/o$14;

    invoke-direct {p3, p0, p1, p2}, Lcom/anythink/core/common/b/o$14;-><init>(Lcom/anythink/core/common/b/o;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/anythink/core/common/b/o;->a(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 763
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_6
    const-string p2, "SDK.init"

    .line 762
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "init failed: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 764
    monitor-exit p0

    return-void

    .line 628
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Landroid/location/Location;)V
    .locals 0

    monitor-enter p0

    .line 556
    :try_start_0
    iput-object p1, p0, Lcom/anythink/core/common/b/o;->M:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/anythink/core/api/ATPrivacyConfig;)V
    .locals 0

    .line 2313
    iput-object p1, p0, Lcom/anythink/core/common/b/o;->Z:Lcom/anythink/core/api/ATPrivacyConfig;

    return-void
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 1802
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1803
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1805
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->n:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/anythink/core/common/b/o;->o:Ljava/lang/String;

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/anythink/core/api/ATCustomAdapterConfig;)V
    .locals 1

    monitor-enter p0

    .line 271
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 272
    monitor-exit p0

    return-void

    .line 275
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->r:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 276
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->r:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_1
    if-nez p2, :cond_2

    .line 281
    iget-object p2, p0, Lcom/anythink/core/common/b/o;->r:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 285
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->r:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v2, p1

    .line 1994
    iget-boolean v0, v9, Lcom/anythink/core/common/b/o;->J:Z

    const-string v1, "SDK.init"

    if-nez v0, :cond_0

    const-string v0, "SDK should be inited first!"

    .line 1995
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1998
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Please put placementId!"

    .line 1999
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2003
    :cond_1
    invoke-static {}, Lcom/anythink/core/common/u;->a()Lcom/anythink/core/common/u;

    move-result-object v0

    move-object/from16 v8, p3

    invoke-virtual {v0, v2, v8}, Lcom/anythink/core/common/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2005
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "The \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" object has not been created yet!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2009
    :cond_2
    invoke-virtual {v3}, Lcom/anythink/core/common/f;->f()Z

    move-result v7

    .line 2010
    iget-object v11, v9, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v10, v3

    move-object/from16 v14, p4

    invoke-virtual/range {v10 .. v15}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLjava/util/Map;Lcom/anythink/core/common/f/c;)Lcom/anythink/core/common/f/b;

    move-result-object v5

    .line 2012
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v10

    new-instance v11, Lcom/anythink/core/common/b/o$5;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/anythink/core/common/b/o$5;-><init>(Lcom/anythink/core/common/b/o;Ljava/lang/String;Lcom/anythink/core/common/f;Ljava/lang/String;Lcom/anythink/core/common/f/b;Ljava/util/Map;ZLjava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 13137
    invoke-virtual {v10, v11, v0, v1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1901
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->Q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
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

    if-eqz p2, :cond_0

    .line 405
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final varargs a(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "anythink_tracking_info"

    if-eqz p2, :cond_2

    const-string v1, "anythink_local"

    .line 2219
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 2225
    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/f/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v2, v1

    .line 2229
    :goto_0
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2231
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Mismatched initialization parameters! server params: ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "anythink"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    const-string v3, "anythink_network_init_data"

    invoke-static {v0, v3, p1, p2}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    const/4 p1, 0x0

    .line 2241
    :try_start_1
    aget-object p1, p3, p1

    .line 2244
    array-length p2, p3

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 2245
    aget-object v1, p3, v0

    .line 2248
    :cond_1
    invoke-static {v2, p1, v1}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/h;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 2251
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 418
    :try_start_0
    iput-object p1, p0, Lcom/anythink/core/common/b/o;->P:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 419
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->O:Lorg/json/JSONArray;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 422
    iput-object p1, p0, Lcom/anythink/core/common/b/o;->O:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, ""

    const-string v2, "channel"

    if-eqz p1, :cond_1

    .line 370
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 372
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    iput-object v3, p0, Lcom/anythink/core/common/b/o;->G:Ljava/lang/String;

    .line 374
    invoke-static {v3}, Lcom/anythink/core/common/o/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 375
    iput-object v0, p0, Lcom/anythink/core/common/b/o;->G:Ljava/lang/String;

    .line 376
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v3, "sub_channel"

    if-eqz p1, :cond_3

    .line 380
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 381
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 382
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/anythink/core/common/b/o;->H:Ljava/lang/String;

    .line 384
    invoke-static {v1}, Lcom/anythink/core/common/o/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 385
    iput-object v0, p0, Lcom/anythink/core/common/b/o;->H:Ljava/lang/String;

    .line 386
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_3
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    if-eqz p1, :cond_4

    .line 392
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 395
    :cond_4
    iget-object p1, p0, Lcom/anythink/core/common/b/o;->G:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 396
    iget-object p1, p0, Lcom/anythink/core/common/b/o;->p:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/anythink/core/common/b/o;->G:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_5
    iget-object p1, p0, Lcom/anythink/core/common/b/o;->H:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 399
    iget-object p1, p0, Lcom/anythink/core/common/b/o;->p:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/anythink/core/common/b/o;->H:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "2"

    .line 560
    :goto_0
    iput-object p1, p0, Lcom/anythink/core/common/b/o;->N:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final varargs a([Ljava/lang/String;)V
    .locals 6

    .line 312
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->s:Ljava/util/Map;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 314
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 315
    iget-object v4, p0, Lcom/anythink/core/common/b/o;->s:Ljava/util/Map;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/anythink/core/common/b/o;->s:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 320
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a([Ljava/lang/String;Lcom/anythink/core/api/IATAdFilter;)V
    .locals 4

    .line 2257
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->X:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 2258
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    if-eqz p1, :cond_3

    .line 2260
    array-length v0, p1

    if-gtz v0, :cond_1

    goto :goto_1

    .line 2264
    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->X:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_2

    .line 2265
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->X:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2267
    :cond_2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 2268
    iget-object v3, p0, Lcom/anythink/core/common/b/o;->X:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/anythink/core/api/ATCustomAdapterConfig;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->r:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->r:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/api/ATCustomAdapterConfig;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Lcom/anythink/core/api/IExHandler;
    .locals 4

    .line 204
    iget-boolean v0, p0, Lcom/anythink/core/common/b/o;->i:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->A:Lcom/anythink/core/api/IExHandler;

    return-object v0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->ad:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-boolean v1, p0, Lcom/anythink/core/common/b/o;->i:Z

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/anythink/core/common/b/o;->A:Lcom/anythink/core/api/IExHandler;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    const-string v2, "com.anythink.pd.ExHandler"

    .line 214
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/anythink/core/api/IExHandler;

    .line 215
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    .line 216
    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 217
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 218
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/api/IExHandler;

    iput-object v2, p0, Lcom/anythink/core/common/b/o;->A:Lcom/anythink/core/api/IExHandler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :catch_0
    :try_start_2
    iput-boolean v1, p0, Lcom/anythink/core/common/b/o;->i:Z

    .line 224
    iget-object v1, p0, Lcom/anythink/core/common/b/o;->A:Lcom/anythink/core/api/IExHandler;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 225
    monitor-exit v0

    throw v1
.end method

.method public final b(I)V
    .locals 0

    .line 840
    iput p1, p0, Lcom/anythink/core/common/b/o;->f:I

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3

    .line 1214
    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->A()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1217
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b/o$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/b/o$2;-><init>(Lcom/anythink/core/common/b/o;Landroid/content/Context;)V

    const/4 p1, 0x2

    const/4 v2, 0x1

    .line 10137
    invoke-virtual {v0, v1, p1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 2

    .line 1790
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1791
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1793
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->n:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1909
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->Q:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_network_firm"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 1857
    iput-boolean p1, p0, Lcom/anythink/core/common/b/o;->D:Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)V
    .locals 0

    .line 2325
    iput p1, p0, Lcom/anythink/core/common/b/o;->aa:I

    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 1893
    iput-boolean p1, p0, Lcom/anythink/core/common/b/o;->I:Z

    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->s:Ljava/util/Map;

    monitor-enter v0

    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/b/o;->s:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 326
    monitor-exit v0

    throw p1
.end method

.method public final d()I
    .locals 1

    .line 308
    iget v0, p0, Lcom/anythink/core/common/b/o;->U:I

    return v0
.end method

.method public final d(I)J
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-wide/32 v0, 0x1900000

    return-wide v0

    .line 2354
    :cond_0
    iget-object p1, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    invoke-static {}, Lcom/anythink/core/d/b;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public final d(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 445
    iget-object v1, p0, Lcom/anythink/core/common/b/o;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 446
    iget-object v1, p0, Lcom/anythink/core/common/b/o;->p:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    .line 447
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 450
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    const-string p1, "channel"

    .line 454
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sub_channel"

    .line 455
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v2, p0, Lcom/anythink/core/common/b/o;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 458
    iget-object v3, p0, Lcom/anythink/core/common/b/o;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 461
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v3, :cond_3

    .line 465
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public final d(Ljava/lang/Runnable;)V
    .locals 1

    .line 1810
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->n:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 1926
    iput-boolean p1, p0, Lcom/anythink/core/common/b/o;->W:Z

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 477
    iput-object p1, p0, Lcom/anythink/core/common/b/o;->G:Ljava/lang/String;

    .line 478
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->p:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "channel"

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e()[Ljava/lang/String;
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->s:Ljava/util/Map;

    monitor-enter v0

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/b/o;->s:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 332
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 335
    new-array v2, v2, [Ljava/lang/String;

    .line 336
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 338
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    .line 340
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 341
    monitor-exit v0

    throw v1
.end method

.method public final f()Landroid/content/Context;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .line 487
    iput-object p1, p0, Lcom/anythink/core/common/b/o;->H:Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->p:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "sub_channel"

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g()J
    .locals 2

    .line 357
    iget-wide v0, p0, Lcom/anythink/core/common/b/o;->E:J

    return-wide v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 535
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->v:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/b/o;->u:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 542
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    invoke-direct {p0, p1}, Lcom/anythink/core/common/b/o;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 548
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": sessionid exists."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object v1

    :catchall_0
    move-exception p1

    .line 542
    monitor-exit v0

    throw p1
.end method

.method public final h()J
    .locals 2

    .line 361
    iget-wide v0, p0, Lcom/anythink/core/common/b/o;->F:J

    return-wide v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->R:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->R:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 931
    iput-boolean p1, p0, Lcom/anythink/core/common/b/o;->T:Z

    .line 934
    :cond_1
    iget-boolean p1, p0, Lcom/anythink/core/common/b/o;->T:Z

    if-eqz p1, :cond_2

    .line 935
    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->A()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "SDK.init"

    const-string v0, "Update Setting Debugger\'s device success."

    .line 936
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final i()I
    .locals 1

    .line 365
    iget v0, p0, Lcom/anythink/core/common/b/o;->f:I

    return v0
.end method

.method public final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->P:Ljava/util/List;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 3

    .line 1841
    iput-object p1, p0, Lcom/anythink/core/common/b/o;->y:Ljava/lang/String;

    .line 1842
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    const-string v1, "exc_log"

    const-string v2, "exc_sys"

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final k()Lorg/json/JSONArray;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->O:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 3

    .line 1846
    iput-object p1, p0, Lcom/anythink/core/common/b/o;->z:Ljava/lang/String;

    .line 1847
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    const-string v1, "exc_log"

    const-string v2, "exc_bk"

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->p:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 3

    .line 1852
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    const-string v1, "anythink_sdk"

    const-string v2, "UP_ID"

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    iput-object p1, p0, Lcom/anythink/core/common/b/o;->x:Ljava/lang/String;

    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->p:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final m(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1905
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->Q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->p:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "sub_channel"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final n(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1913
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->Q:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_network_firm"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final o()Ljava/lang/String;
    .locals 4

    .line 492
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    const-string v1, "anythink_sdk"

    const-string v2, "anythink_appid"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->l:Ljava/lang/String;

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final p(Ljava/lang/String;)Lcom/anythink/core/api/IATAdFilter;
    .locals 2

    .line 2273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2277
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->X:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    return-object v1

    .line 2281
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/api/IATAdFilter;

    return-object p1
.end method

.method public final p()Ljava/lang/String;
    .locals 4

    .line 504
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    const-string v1, "anythink_sdk"

    const-string v2, "anythink_appkey"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->m:Ljava/lang/String;

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 3

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3353
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    .line 519
    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/anythink/core/common/b/o;->a(Landroid/content/Context;Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final q(Ljava/lang/String;)V
    .locals 0

    .line 2290
    iput-object p1, p0, Lcom/anythink/core/common/b/o;->Y:Ljava/lang/String;

    return-void
.end method

.method public final r()Landroid/location/Location;
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->M:Landroid/location/Location;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final t()V
    .locals 6

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/o/e;->a(Landroid/content/Context;)V

    .line 575
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/o/e;->r(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 600
    :goto_0
    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/o/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "********************************** "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/o/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " *************************************"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "anythink"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "GAID(ADID): "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/o/e;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , AndroidID: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/o/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You can use \"ATSDK.setDebuggerConfig(context, \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",new ATDebuggerConfig.Builder(the NetworkFirmId you want to test).build());\" to open the debugger mode."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final u()Z
    .locals 1

    .line 852
    iget-boolean v0, p0, Lcom/anythink/core/common/b/o;->T:Z

    return v0
.end method

.method public final v()Z
    .locals 1

    .line 943
    iget-boolean v0, p0, Lcom/anythink/core/common/b/o;->T:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/b/o;->S:Lcom/anythink/core/api/ATDebuggerConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()Lcom/anythink/core/api/ATDebuggerConfig;
    .locals 1

    .line 947
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->S:Lcom/anythink/core/api/ATDebuggerConfig;

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 4

    .line 1819
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1820
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    const-string v1, "anythink_sdk"

    const-string v2, "UP_ID"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->x:Ljava/lang/String;

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 4

    .line 1827
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    const-string v1, "exc_log"

    const-string v2, "exc_sys"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->y:Ljava/lang/String;

    .line 1830
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .locals 4

    .line 1834
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->k:Landroid/content/Context;

    const-string v1, "exc_log"

    const-string v2, "exc_bk"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/b/o;->z:Ljava/lang/String;

    .line 1837
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/b/o;->z:Ljava/lang/String;

    return-object v0
.end method
