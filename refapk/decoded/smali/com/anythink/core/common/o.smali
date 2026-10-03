.class public final Lcom/anythink/core/common/o;
.super Ljava/lang/Object;


# static fields
.field public static final b:Ljava/lang/String; = "Y29tLnhpYW9taS5tYXJrZXQuRE1fUEFHRV9PUEVORUQ="

.field public static final c:Ljava/lang/String; = "Y29tLnhpYW9taS5tYXJrZXQuRE1fUEFHRV9DTE9TRUQ="

.field public static final d:Ljava/lang/String; = "Y29tLnhpYW9taS5tYXJrZXQuRElSRUNUX01BSUxfU1RBVFVT"

.field public static final e:Ljava/lang/String; = "Y29udGVudDovL2NvbS54aWFvbWkubWFya2V0LnByb3ZpZGVyLkRpcmVjdE1haWxQcm92aWRlcg=="

.field private static final f:Ljava/lang/String; = "code"

.field private static final g:Ljava/lang/String; = "packageName"

.field private static volatile j:Ljava/lang/String;

.field private static volatile n:Lcom/anythink/core/common/o;


# instance fields
.field a:Landroid/content/BroadcastReceiver;

.field private h:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/anythink/core/common/f/l;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile k:Ljava/lang/Boolean;

.field private l:Lcom/anythink/core/common/f/l;

.field private m:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/o;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/anythink/core/common/o;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/o;)Lcom/anythink/core/common/f/l;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/anythink/core/common/o;->l:Lcom/anythink/core/common/f/l;

    return-object p0
.end method

.method public static a()Lcom/anythink/core/common/o;
    .locals 2

    .line 53
    sget-object v0, Lcom/anythink/core/common/o;->n:Lcom/anythink/core/common/o;

    if-nez v0, :cond_1

    .line 54
    const-class v0, Lcom/anythink/core/common/o;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/anythink/core/common/o;->n:Lcom/anythink/core/common/o;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/anythink/core/common/o;

    invoke-direct {v1}, Lcom/anythink/core/common/o;-><init>()V

    sput-object v1, Lcom/anythink/core/common/o;->n:Lcom/anythink/core/common/o;

    .line 57
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/core/common/o;->n:Lcom/anythink/core/common/o;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 241
    :try_start_0
    sget-object v1, Lcom/anythink/core/common/o;->j:Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/anythink/core/common/o;->j:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method static synthetic b(Lcom/anythink/core/common/o;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/anythink/core/common/o;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/anythink/core/common/o;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 187
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :catchall_0
    iput-object v1, p0, Lcom/anythink/core/common/o;->l:Lcom/anythink/core/common/f/l;

    .line 191
    iget-object p1, p0, Lcom/anythink/core/common/o;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 192
    iput-object v1, p0, Lcom/anythink/core/common/o;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 193
    iput-object v1, p0, Lcom/anythink/core/common/o;->a:Landroid/content/BroadcastReceiver;

    .line 194
    iput-object v1, p0, Lcom/anythink/core/common/o;->m:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private d()Lcom/anythink/core/common/f/l;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/anythink/core/common/o;->l:Lcom/anythink/core/common/f/l;

    return-object v0
.end method

.method private e()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/anythink/core/common/o;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/o;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/o;->m:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    new-instance v0, Lcom/anythink/core/common/o$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/o$1;-><init>(Lcom/anythink/core/common/o;)V

    iput-object v0, p0, Lcom/anythink/core/common/o;->a:Landroid/content/BroadcastReceiver;

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "Y29tLnhpYW9taS5tYXJrZXQuRE1fUEFHRV9PUEVORUQ="

    .line 175
    invoke-static {v1}, Lcom/anythink/core/common/o/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "Y29tLnhpYW9taS5tYXJrZXQuRE1fUEFHRV9DTE9TRUQ="

    .line 176
    invoke-static {v1}, Lcom/anythink/core/common/o/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "Y29tLnhpYW9taS5tYXJrZXQuRElSRUNUX01BSUxfU1RBVFVT"

    .line 177
    invoke-static {v1}, Lcom/anythink/core/common/o/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/anythink/core/common/o;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/core/common/o;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private static f()Ljava/lang/Boolean;
    .locals 9

    .line 203
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 204
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 207
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v0, "Y29udGVudDovL2NvbS54aWFvbWkubWFya2V0LnByb3ZpZGVyLkRpcmVjdE1haWxQcm92aWRlcg=="

    invoke-static {v0}, Lcom/anythink/core/common/o/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 212
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_1
    const-string v2, "support"

    .line 214
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 215
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1
    :try_start_2
    const-string v2, "detailStyle"

    .line 223
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 224
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/anythink/core/common/o;->j:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    .line 229
    :cond_2
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :cond_3
    return-object v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 106
    iput-object p1, p0, Lcom/anythink/core/common/o;->m:Landroid/content/Context;

    .line 107
    iget-object p1, p0, Lcom/anythink/core/common/o;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/o;->f()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/o;->k:Ljava/lang/Boolean;

    .line 1117
    iget-object p1, p0, Lcom/anythink/core/common/o;->k:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/core/common/o;->k:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/core/common/o;->m:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1119
    :try_start_1
    new-instance p1, Lcom/anythink/core/common/o$1;

    invoke-direct {p1, p0}, Lcom/anythink/core/common/o$1;-><init>(Lcom/anythink/core/common/o;)V

    iput-object p1, p0, Lcom/anythink/core/common/o;->a:Landroid/content/BroadcastReceiver;

    .line 1174
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "Y29tLnhpYW9taS5tYXJrZXQuRE1fUEFHRV9PUEVORUQ="

    .line 1175
    invoke-static {v0}, Lcom/anythink/core/common/o/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "Y29tLnhpYW9taS5tYXJrZXQuRE1fUEFHRV9DTE9TRUQ="

    .line 1176
    invoke-static {v0}, Lcom/anythink/core/common/o/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "Y29tLnhpYW9taS5tYXJrZXQuRElSRUNUX01BSUxfU1RBVFVT"

    .line 1177
    invoke-static {v0}, Lcom/anythink/core/common/o/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1178
    iget-object v0, p0, Lcom/anythink/core/common/o;->m:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/core/common/o;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/l;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/anythink/core/common/o;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/o;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iput-object p1, p0, Lcom/anythink/core/common/o;->l:Lcom/anythink/core/common/f/l;

    .line 65
    iget-object v0, p0, Lcom/anythink/core/common/o;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/anythink/core/common/f/l;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/anythink/core/common/o;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/o;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/anythink/core/common/o;->l:Lcom/anythink/core/common/f/l;

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/o;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/anythink/core/common/o;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/anythink/core/common/o;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method
