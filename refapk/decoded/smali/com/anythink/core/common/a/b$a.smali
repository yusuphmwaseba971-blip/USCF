.class public final Lcom/anythink/core/common/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/a/b;

.field private b:Lcom/anythink/core/common/f/au;

.field private c:Lcom/anythink/core/api/ATBaseAdAdapter;

.field private d:Lcom/anythink/core/api/BaseAd;

.field private e:Lcom/anythink/core/common/f/b;

.field private f:Ljava/lang/String;

.field private g:Lcom/anythink/core/common/f/h;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/a/b;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/anythink/core/common/a/b$a;->a:Lcom/anythink/core/common/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/a/b$a;)Lcom/anythink/core/api/ATBaseAdAdapter;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/anythink/core/common/a/b$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    return-object p0
.end method

.method static synthetic a(Lcom/anythink/core/common/a/b$a;Lcom/anythink/core/api/ATBaseAdAdapter;)Lcom/anythink/core/api/ATBaseAdAdapter;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/anythink/core/common/a/b$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/anythink/core/common/a/b$a;Lcom/anythink/core/common/f/au;)Lcom/anythink/core/common/f/au;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/anythink/core/common/a/b$a;->b:Lcom/anythink/core/common/f/au;

    return-object p1
.end method

.method private a(Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/anythink/core/common/a/b$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    return-void
.end method

.method private a(Lcom/anythink/core/api/BaseAd;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/anythink/core/common/a/b$a;->d:Lcom/anythink/core/api/BaseAd;

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/au;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/anythink/core/common/a/b$a;->b:Lcom/anythink/core/common/f/au;

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/b;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/anythink/core/common/a/b$a;->e:Lcom/anythink/core/common/f/b;

    return-void
.end method

.method static synthetic b(Lcom/anythink/core/common/a/b$a;)Lcom/anythink/core/common/f/b;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/anythink/core/common/a/b$a;->e:Lcom/anythink/core/common/f/b;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/core/common/a/b$a;)Lcom/anythink/core/common/f/au;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/anythink/core/common/a/b$a;->b:Lcom/anythink/core/common/f/au;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/anythink/core/common/f/b;
    .locals 6

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->a:Lcom/anythink/core/common/a/b;

    invoke-static {v0}, Lcom/anythink/core/common/a/b;->a(Lcom/anythink/core/common/a/b;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdxDefaultInternal generateAdxAdCacheInfo has release:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/a/b$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",initTrackingInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/a/b$a;->g:Lcom/anythink/core/common/f/h;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 162
    monitor-exit p0

    return-object v1

    .line 165
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->g:Lcom/anythink/core/common/f/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    .line 166
    monitor-exit p0

    return-object v1

    .line 169
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/anythink/core/common/a/b$a;->e:Lcom/anythink/core/common/f/b;

    if-eqz v4, :cond_4

    .line 170
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->a:Lcom/anythink/core/common/a/b;

    invoke-static {v0}, Lcom/anythink/core/common/a/b;->a(Lcom/anythink/core/common/a/b;)Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->e:Lcom/anythink/core/common/f/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 175
    :cond_4
    :try_start_3
    iput-object v1, p0, Lcom/anythink/core/common/a/b$a;->d:Lcom/anythink/core/api/BaseAd;

    const/16 v1, 0xc

    .line 176
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->E(I)V

    .line 177
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->g:Lcom/anythink/core/common/f/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->ae()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 178
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getBaseAdObject(Landroid/content/Context;)Lcom/anythink/core/api/BaseAd;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/a/b$a;->d:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 180
    :cond_6
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalIsAdReady()Z

    move-result v0

    .line 182
    :goto_2
    iget-object v1, p0, Lcom/anythink/core/common/a/b$a;->a:Lcom/anythink/core/common/a/b;

    invoke-static {v1}, Lcom/anythink/core/common/a/b;->a(Lcom/anythink/core/common/a/b;)Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 185
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    iget-object v1, p0, Lcom/anythink/core/common/a/b$a;->g:Lcom/anythink/core/common/f/h;

    iget-object v4, p0, Lcom/anythink/core/common/a/b$a;->b:Lcom/anythink/core/common/f/au;

    invoke-static {v0, v1, v4}, Lcom/anythink/core/common/o/u;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/au;)Lcom/anythink/core/common/f/h;

    .line 186
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->d:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_7

    .line 187
    iget-object v1, p0, Lcom/anythink/core/common/a/b$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/f/h;->S()Lcom/anythink/core/common/f/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/api/BaseAd;->setTrackingInfo(Lcom/anythink/core/common/f/h;)V

    .line 189
    :cond_7
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->b:Lcom/anythink/core/common/f/au;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->M()Lcom/anythink/core/common/f/q;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/anythink/core/common/a/b$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/q;->b(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    iget-object v1, p0, Lcom/anythink/core/common/a/b$a;->b:Lcom/anythink/core/common/f/au;

    iget-object v4, p0, Lcom/anythink/core/common/a/b$a;->g:Lcom/anythink/core/common/f/h;

    new-array v2, v2, [Lcom/anythink/core/api/BaseAd;

    iget-object v5, p0, Lcom/anythink/core/common/a/b$a;->d:Lcom/anythink/core/api/BaseAd;

    aput-object v5, v2, v3

    invoke-static {v0, v1, v4, v2}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/h;[Lcom/anythink/core/api/BaseAd;)V

    .line 195
    new-instance v0, Lcom/anythink/core/common/f/b;

    invoke-direct {v0}, Lcom/anythink/core/common/f/b;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/a/b$a;->e:Lcom/anythink/core/common/f/b;

    .line 196
    iget-object v1, p0, Lcom/anythink/core/common/a/b$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/api/ATBaseAdAdapter;)V

    .line 197
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->e:Lcom/anythink/core/common/f/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/f/b;->c(J)V

    .line 198
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->e:Lcom/anythink/core/common/f/b;

    iget-object v1, p0, Lcom/anythink/core/common/a/b$a;->b:Lcom/anythink/core/common/f/au;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->q()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/f/b;->b(J)V

    .line 199
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->e:Lcom/anythink/core/common/f/b;

    iget-object v1, p0, Lcom/anythink/core/common/a/b$a;->b:Lcom/anythink/core/common/f/au;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/au;->B()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/f/b;->a(J)V

    .line 200
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->e:Lcom/anythink/core/common/f/b;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/b;->a(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->d:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_8

    .line 202
    iget-object v1, p0, Lcom/anythink/core/common/a/b$a;->e:Lcom/anythink/core/common/f/b;

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/api/BaseAd;)V

    .line 205
    :cond_8
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->e:Lcom/anythink/core/common/f/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/anythink/core/common/f/h;)V
    .locals 1

    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->a:Lcom/anythink/core/common/a/b;

    invoke-static {v0}, Lcom/anythink/core/common/a/b;->a(Lcom/anythink/core/common/a/b;)Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lcom/anythink/core/common/a/b$a;->f:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/anythink/core/common/a/b$a;->g:Lcom/anythink/core/common/f/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->a:Lcom/anythink/core/common/a/b;

    invoke-static {v0}, Lcom/anythink/core/common/a/b;->a(Lcom/anythink/core/common/a/b;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdxDefaultInternal generateAdxAdCacheInfo has release:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/a/b$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",initTrackingInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/a/b$a;->g:Lcom/anythink/core/common/f/h;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p0}, Lcom/anythink/core/common/a/b$a;->a()Lcom/anythink/core/common/f/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->a:Lcom/anythink/core/common/a/b;

    invoke-static {v0}, Lcom/anythink/core/common/a/b;->a(Lcom/anythink/core/common/a/b;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/anythink/core/common/a/b$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    .line 229
    iput-object v0, p0, Lcom/anythink/core/common/a/b$a;->d:Lcom/anythink/core/api/BaseAd;

    .line 230
    iput-object v0, p0, Lcom/anythink/core/common/a/b$a;->e:Lcom/anythink/core/common/f/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()D
    .locals 2

    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->b:Lcom/anythink/core/common/f/au;

    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/au;)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Lcom/anythink/core/common/f/au;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->b:Lcom/anythink/core/common/f/au;

    return-object v0
.end method

.method public final f()Lcom/anythink/core/common/f/b;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/anythink/core/common/a/b$a;->e:Lcom/anythink/core/common/f/b;

    return-object v0
.end method
