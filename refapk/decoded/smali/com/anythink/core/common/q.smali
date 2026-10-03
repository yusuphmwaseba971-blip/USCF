.class public Lcom/anythink/core/common/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "q"

.field private static volatile b:Lcom/anythink/core/common/q;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/q;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/q;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/anythink/core/common/q;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/core/common/q;
    .locals 2

    .line 42
    sget-object v0, Lcom/anythink/core/common/q;->b:Lcom/anythink/core/common/q;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/anythink/core/common/q;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/anythink/core/common/q;->b:Lcom/anythink/core/common/q;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/anythink/core/common/q;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/q;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/core/common/q;->b:Lcom/anythink/core/common/q;

    .line 47
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 49
    :cond_1
    :goto_0
    sget-object p0, Lcom/anythink/core/common/q;->b:Lcom/anythink/core/common/q;

    return-object p0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/h;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/anythink/core/common/q;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "common"

    .line 156
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "data"

    .line 157
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "adsourceId"

    .line 158
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "networkType"

    .line 159
    invoke-virtual {p6}, Lcom/anythink/core/common/f/h;->M()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "format"

    .line 160
    invoke-virtual {p6}, Lcom/anythink/core/common/f/h;->ae()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "showid"

    .line 161
    invoke-virtual {p6}, Lcom/anythink/core/common/f/h;->q()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "tktype"

    .line 162
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    iget-object p1, p0, Lcom/anythink/core/common/q;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object p1, p0, Lcom/anythink/core/common/q;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/core/common/b/l;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/l;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/b/l;->a(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/q;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/h;)V
    .locals 1

    .line 1150
    iget-object v0, p0, Lcom/anythink/core/common/q;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1155
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "common"

    .line 1156
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "data"

    .line 1157
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "adsourceId"

    .line 1158
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "networkType"

    .line 1159
    invoke-virtual {p6}, Lcom/anythink/core/common/f/h;->M()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "format"

    .line 1160
    invoke-virtual {p6}, Lcom/anythink/core/common/f/h;->ae()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "showid"

    .line 1161
    invoke-virtual {p6}, Lcom/anythink/core/common/f/h;->q()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "tktype"

    .line 1162
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1164
    iget-object p1, p0, Lcom/anythink/core/common/q;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    iget-object p0, p0, Lcom/anythink/core/common/q;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/anythink/core/common/b/l;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/l;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/b/l;->a(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILcom/anythink/core/common/f/i;Lcom/anythink/core/d/a;)V
    .locals 2

    .line 53
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/q$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/anythink/core/common/q$1;-><init>(Lcom/anythink/core/common/q;Lcom/anythink/core/common/f/i;ILcom/anythink/core/d/a;)V

    const/16 p1, 0xd

    const/4 p2, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public final a(Lcom/anythink/core/d/a;)V
    .locals 4

    .line 120
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/q$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/q$2;-><init>(Lcom/anythink/core/common/q;Lcom/anythink/core/d/a;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
