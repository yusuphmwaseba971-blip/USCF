.class public Lcom/anythink/core/common/c/l;
.super Lcom/anythink/core/common/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/c/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/c/a<",
        "Lcom/anythink/core/common/f/an;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:Lcom/anythink/core/common/c/l;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/anythink/core/common/c/b;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/anythink/core/common/c/a;-><init>(Lcom/anythink/core/common/c/b;)V

    .line 24
    const-class p1, Lcom/anythink/core/common/c/l;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/c/l;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/l;
    .locals 2

    .line 33
    sget-object v0, Lcom/anythink/core/common/c/l;->c:Lcom/anythink/core/common/c/l;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/anythink/core/common/c/l;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/anythink/core/common/c/l;->c:Lcom/anythink/core/common/c/l;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/anythink/core/common/c/l;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/c/l;-><init>(Lcom/anythink/core/common/c/b;)V

    sput-object v1, Lcom/anythink/core/common/c/l;->c:Lcom/anythink/core/common/c/l;

    .line 38
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 40
    :cond_1
    :goto_0
    sget-object p0, Lcom/anythink/core/common/c/l;->c:Lcom/anythink/core/common/c/l;

    return-object p0
.end method

.method private static a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f/an;
    .locals 7

    if-eqz p0, :cond_4

    .line 232
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 233
    new-instance v0, Lcom/anythink/core/common/f/an;

    invoke-direct {v0}, Lcom/anythink/core/common/f/an;-><init>()V

    .line 234
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/anythink/core/common/f/an;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 235
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "format"

    .line 237
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/anythink/core/common/f/an;->a:I

    const-string v1, "placement_id"

    .line 238
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/f/an;->b:Ljava/lang/String;

    .line 240
    new-instance v1, Lcom/anythink/core/common/f/an$a;

    invoke-direct {v1}, Lcom/anythink/core/common/f/an$a;-><init>()V

    const-string v2, "adsource_id"

    .line 241
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/f/an$a;->a:Ljava/lang/String;

    const-string v2, "hour_time"

    .line 242
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/f/an$a;->b:Ljava/lang/String;

    const-string v2, "date_time"

    .line 243
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/f/an$a;->c:Ljava/lang/String;

    .line 246
    iget-object v2, v1, Lcom/anythink/core/common/f/an$a;->b:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 247
    iput v3, v1, Lcom/anythink/core/common/f/an$a;->e:I

    goto :goto_1

    :cond_0
    const-string v2, "hour_imp"

    .line 249
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/anythink/core/common/f/an$a;->e:I

    .line 251
    :goto_1
    iget v2, v0, Lcom/anythink/core/common/f/an;->d:I

    iget v4, v1, Lcom/anythink/core/common/f/an$a;->e:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/anythink/core/common/f/an;->d:I

    .line 254
    iget-object v2, v1, Lcom/anythink/core/common/f/an$a;->c:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 255
    iput v3, v1, Lcom/anythink/core/common/f/an$a;->d:I

    goto :goto_2

    :cond_1
    const-string v2, "date_imp"

    .line 257
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/anythink/core/common/f/an$a;->d:I

    .line 259
    :goto_2
    iget v2, v0, Lcom/anythink/core/common/f/an;->c:I

    iget v3, v1, Lcom/anythink/core/common/f/an$a;->d:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/anythink/core/common/f/an;->c:I

    const-string v2, "show_time"

    .line 262
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/core/common/f/an$a;->f:J

    .line 263
    iget-wide v2, v1, Lcom/anythink/core/common/f/an$a;->f:J

    iget-wide v4, v0, Lcom/anythink/core/common/f/an;->e:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    .line 264
    iget-wide v2, v1, Lcom/anythink/core/common/f/an$a;->f:J

    iput-wide v2, v0, Lcom/anythink/core/common/f/an;->e:J

    .line 267
    :cond_2
    iget-object v2, v0, Lcom/anythink/core/common/f/an;->h:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Lcom/anythink/core/common/f/an$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 10

    .line 206
    invoke-virtual {p0}, Lcom/anythink/core/common/c/l;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "adsource_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v4, v9

    const-string v1, "placement_ad_impression"

    const-string v3, "adsource_id=?"

    const-string v5, "adsource_id"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 211
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 212
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v8

    :cond_0
    if-eqz p1, :cond_1

    .line 216
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return v9
.end method


# virtual methods
.method public final declared-synchronized a(ILjava/lang/String;Lcom/anythink/core/common/f/an$a;)J
    .locals 12

    monitor-enter p0

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/core/common/c/l;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_4

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 177
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "format"

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "placement_id"

    .line 179
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "adsource_id"

    .line 180
    iget-object p2, p3, Lcom/anythink/core/common/f/an$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hour_time"

    .line 181
    iget-object p2, p3, Lcom/anythink/core/common/f/an$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hour_imp"

    .line 182
    iget p2, p3, Lcom/anythink/core/common/f/an$a;->e:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "date_time"

    .line 183
    iget-object p2, p3, Lcom/anythink/core/common/f/an$a;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "date_imp"

    .line 184
    iget p2, p3, Lcom/anythink/core/common/f/an$a;->d:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "show_time"

    .line 185
    iget-wide v3, p3, Lcom/anythink/core/common/f/an$a;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 187
    iget-object p1, p3, Lcom/anythink/core/common/f/an$a;->a:Ljava/lang/String;

    .line 2206
    invoke-virtual {p0}, Lcom/anythink/core/common/c/l;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "placement_ad_impression"

    const-string p2, "adsource_id"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "adsource_id=?"

    const/4 p2, 0x1

    new-array v7, p2, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v7, v11

    const-string v8, "adsource_id"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2211
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 2212
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 2216
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    const-string p1, "adsource_id = ? "

    .line 190
    invoke-virtual {p0}, Lcom/anythink/core/common/c/l;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "placement_ad_impression"

    new-array p2, p2, [Ljava/lang/String;

    iget-object p3, p3, Lcom/anythink/core/common/f/an$a;->a:Ljava/lang/String;

    aput-object p3, p2, v11

    invoke-virtual {v3, v4, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long p1, p1

    monitor-exit p0

    return-wide p1

    .line 193
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/anythink/core/common/c/l;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "placement_ad_impression"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 200
    :catch_0
    monitor-exit p0

    return-wide v1

    .line 174
    :cond_4
    :goto_1
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f/an;
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/core/common/c/l;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "placement_ad_impression"

    const/4 v3, 0x0

    const-string v4, "placement_id=? AND date_time=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v5, v9

    const/4 p1, 0x1

    aput-object p2, v5, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_3

    .line 1232
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 1233
    new-instance v1, Lcom/anythink/core/common/f/an;

    invoke-direct {v1}, Lcom/anythink/core/common/f/an;-><init>()V

    .line 1234
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v1, Lcom/anythink/core/common/f/an;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1235
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "format"

    .line 1237
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/anythink/core/common/f/an;->a:I

    const-string v2, "placement_id"

    .line 1238
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/f/an;->b:Ljava/lang/String;

    .line 1240
    new-instance v2, Lcom/anythink/core/common/f/an$a;

    invoke-direct {v2}, Lcom/anythink/core/common/f/an$a;-><init>()V

    const-string v3, "adsource_id"

    .line 1241
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/anythink/core/common/f/an$a;->a:Ljava/lang/String;

    const-string v3, "hour_time"

    .line 1242
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/anythink/core/common/f/an$a;->b:Ljava/lang/String;

    const-string v3, "date_time"

    .line 1243
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/anythink/core/common/f/an$a;->c:Ljava/lang/String;

    .line 1246
    iget-object v3, v2, Lcom/anythink/core/common/f/an$a;->b:Ljava/lang/String;

    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1247
    iput v9, v2, Lcom/anythink/core/common/f/an$a;->e:I

    goto :goto_1

    :cond_0
    const-string v3, "hour_imp"

    .line 1249
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/anythink/core/common/f/an$a;->e:I

    .line 1251
    :goto_1
    iget v3, v1, Lcom/anythink/core/common/f/an;->d:I

    iget v4, v2, Lcom/anythink/core/common/f/an$a;->e:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/anythink/core/common/f/an;->d:I

    .line 1254
    iget-object v3, v2, Lcom/anythink/core/common/f/an$a;->c:Ljava/lang/String;

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1255
    iput v9, v2, Lcom/anythink/core/common/f/an$a;->d:I

    goto :goto_2

    :cond_1
    const-string v3, "date_imp"

    .line 1257
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/anythink/core/common/f/an$a;->d:I

    .line 1259
    :goto_2
    iget v3, v1, Lcom/anythink/core/common/f/an;->c:I

    iget v4, v2, Lcom/anythink/core/common/f/an$a;->d:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/anythink/core/common/f/an;->c:I

    const-string v3, "show_time"

    .line 1262
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/anythink/core/common/f/an$a;->f:J

    .line 1263
    iget-wide v3, v2, Lcom/anythink/core/common/f/an$a;->f:J

    iget-wide v5, v1, Lcom/anythink/core/common/f/an;->e:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    .line 1264
    iget-wide v3, v2, Lcom/anythink/core/common/f/an$a;->f:J

    iput-wide v3, v1, Lcom/anythink/core/common/f/an;->e:J

    .line 1267
    :cond_2
    iget-object v3, v1, Lcom/anythink/core/common/f/an;->h:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v2, Lcom/anythink/core/common/f/an$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catchall_0
    nop

    goto :goto_3

    :catch_0
    nop

    goto :goto_5

    :cond_3
    move-object v1, v0

    .line 123
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_5

    .line 137
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 124
    :cond_5
    monitor-exit p0

    return-object v1

    :catchall_1
    move-object p1, v0

    :goto_3
    if-eqz p1, :cond_7

    goto :goto_6

    :catch_1
    move-object p1, v0

    .line 130
    :catch_2
    :try_start_3
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_7

    .line 137
    :goto_4
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_6
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catch_3
    move-object p1, v0

    :goto_5
    if-eqz p1, :cond_7

    :goto_6
    goto :goto_4

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1

    .line 140
    :cond_7
    :goto_7
    monitor-exit p0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 318
    monitor-enter p0

    .line 320
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "date_time!=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 321
    invoke-virtual {p0}, Lcom/anythink/core/common/c/l;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 322
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 324
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/anythink/core/common/c/l;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "placement_ad_impression"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 327
    :catch_0
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(ILjava/lang/String;Ljava/lang/String;)[I
    .locals 13

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 49
    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/core/common/c/l;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "placement_ad_impression"

    const-string v7, "sum(date_imp)"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "format=? AND date_time=?"

    new-array v9, v1, [Ljava/lang/String;

    .line 52
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    aput-object p2, v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 49
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 56
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 57
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v2, v4

    goto :goto_0

    :catchall_0
    nop

    goto :goto_2

    :catch_0
    nop

    goto :goto_3

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 59
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 60
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v0, :cond_4

    .line 74
    :goto_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto :goto_4

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_1

    :catch_1
    move-object v5, v0

    .line 67
    :try_start_3
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_2

    .line 74
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v5

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_3
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_3
    if-eqz v0, :cond_4

    goto :goto_1

    .line 80
    :cond_4
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lcom/anythink/core/common/c/l;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "placement_ad_impression"

    const-string v7, "sum(hour_imp)"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "format=? AND hour_time=?"

    new-array v9, v1, [Ljava/lang/String;

    .line 83
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v4

    aput-object p3, v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 80
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 87
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 88
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v2, v3

    goto :goto_5

    :catchall_2
    nop

    goto :goto_7

    :catch_2
    nop

    goto :goto_8

    :cond_5
    :goto_5
    if-eqz v0, :cond_6

    .line 90
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 91
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_6
    if-eqz v0, :cond_8

    .line 105
    :goto_6
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_9

    :goto_7
    if-eqz v0, :cond_8

    goto :goto_6

    :catch_3
    move-object v1, v0

    .line 98
    :try_start_7
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v1, :cond_8

    .line 105
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_7
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :goto_8
    if-eqz v0, :cond_8

    goto :goto_6

    .line 108
    :cond_8
    :goto_9
    monitor-exit p0

    return-object v2

    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0
.end method
