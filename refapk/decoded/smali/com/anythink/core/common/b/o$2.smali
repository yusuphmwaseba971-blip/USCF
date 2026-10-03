.class final Lcom/anythink/core/common/b/o$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/o;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/core/common/b/o;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/o;Landroid/content/Context;)V
    .locals 0

    .line 1217
    iput-object p1, p0, Lcom/anythink/core/common/b/o$2;->b:Lcom/anythink/core/common/b/o;

    iput-object p2, p0, Lcom/anythink/core/common/b/o$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "********************************** Network Integration Status *************************************"

    const/4 v3, 0x0

    .line 1226
    :try_start_0
    const-class v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    goto :goto_0

    :catchall_0
    const/4 v4, 0x0

    .line 1231
    :goto_0
    :try_start_1
    const-class v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x1

    goto :goto_1

    :catchall_1
    nop

    :goto_1
    const-string v5, "anythink"

    if-nez v4, :cond_0

    :try_start_2
    const-string v4, "Missing: LocalBroadcastManager"

    .line 1237
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "com.anythink.network"

    .line 1243
    new-instance v7, Ldalvik/system/DexFile;

    iget-object v8, v0, Lcom/anythink/core/common/b/o$2;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {v7}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    .line 1245
    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1246
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1248
    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "InitManager"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "$"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1249
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1253
    :cond_2
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v7, "----------------------------------------"

    if-eqz v6, :cond_3

    .line 1255
    :try_start_3
    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :catchall_2
    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1259
    :try_start_4
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v8, "getInstance"

    new-array v9, v3, [Ljava/lang/Class;

    .line 1260
    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v9, 0x0

    :try_start_5
    new-array v10, v3, [Ljava/lang/Object;

    .line 1263
    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    .line 1265
    :catchall_3
    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Cannot instantiate "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", please check if a third-party SDK is imported"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-eqz v9, :cond_4

    .line 1269
    instance-of v6, v9, Lcom/anythink/core/api/ATInitMediation;

    if-eqz v6, :cond_4

    .line 1271
    check-cast v9, Lcom/anythink/core/api/ATInitMediation;

    .line 1272
    invoke-virtual {v9}, Lcom/anythink/core/api/ATInitMediation;->getNetworkName()Ljava/lang/String;

    move-result-object v6

    .line 1273
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    .line 1277
    :cond_5
    invoke-virtual {v9}, Lcom/anythink/core/api/ATInitMediation;->getNetworkVersion()Ljava/lang/String;

    move-result-object v8

    .line 1278
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const-string v11, "NetworkName: "

    if-nez v10, :cond_6

    .line 1279
    :try_start_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  (v"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1281
    :cond_6
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :goto_5
    invoke-virtual {v9}, Lcom/anythink/core/api/ATInitMediation;->getNetworkSDKClass()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/anythink/core/common/b/o;->i(Ljava/lang/String;)Z

    move-result v6

    .line 1284
    invoke-virtual {v9}, Lcom/anythink/core/api/ATInitMediation;->getPluginClassStatus()Ljava/util/Map;

    move-result-object v8

    invoke-static {v8}, Lcom/anythink/core/common/b/o;->b(Ljava/util/Map;)Z

    move-result v8

    .line 1285
    iget-object v10, v0, Lcom/anythink/core/common/b/o$2;->a:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/anythink/core/api/ATInitMediation;->getActivityStatus()Ljava/util/List;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/anythink/core/common/b/o;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v10

    .line 1286
    iget-object v11, v0, Lcom/anythink/core/common/b/o$2;->a:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/anythink/core/api/ATInitMediation;->getServiceStatus()Ljava/util/List;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/anythink/core/common/b/o;->b(Landroid/content/Context;Ljava/util/List;)Z

    move-result v11

    .line 1287
    iget-object v12, v0, Lcom/anythink/core/common/b/o$2;->a:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/anythink/core/api/ATInitMediation;->getProviderStatus()Ljava/util/List;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/anythink/core/common/b/o;->c(Landroid/content/Context;Ljava/util/List;)Z

    move-result v12

    .line 1288
    iget-object v13, v0, Lcom/anythink/core/common/b/o$2;->a:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/anythink/core/api/ATInitMediation;->getMetaValutStatus()Ljava/util/List;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/anythink/core/common/b/o;->d(Landroid/content/Context;Ljava/util/List;)Z

    move-result v13

    .line 1289
    iget-object v14, v0, Lcom/anythink/core/common/b/o$2;->a:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/anythink/core/api/ATInitMediation;->getPermissionStatus()Ljava/util/List;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/anythink/core/common/b/o;->e(Landroid/content/Context;Ljava/util/List;)Z

    move-result v14

    .line 1290
    iget-object v15, v0, Lcom/anythink/core/common/b/o$2;->a:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/anythink/core/api/ATInitMediation;->getResourceStatus()Ljava/util/List;

    move-result-object v2

    invoke-static {v15, v2, v3}, Lcom/anythink/core/common/b/o;->a(Landroid/content/Context;Ljava/util/List;Z)Z

    move-result v2

    .line 1291
    invoke-virtual {v9}, Lcom/anythink/core/api/ATInitMediation;->getAdapterVersion()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/anythink/core/common/b/o;->r(Ljava/lang/String;)Z

    move-result v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1294
    :try_start_8
    invoke-virtual {v9}, Lcom/anythink/core/api/ATInitMediation;->needCheckAdapterVersion()Z

    move-result v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-nez v9, :cond_7

    const/4 v15, 0x1

    goto :goto_6

    :catchall_4
    nop

    :cond_7
    :goto_6
    if-eqz v6, :cond_8

    if-eqz v8, :cond_8

    if-eqz v10, :cond_8

    if-eqz v11, :cond_8

    if-eqz v12, :cond_8

    if-eqz v13, :cond_8

    if-eqz v14, :cond_8

    if-eqz v2, :cond_8

    if-eqz v15, :cond_8

    const/4 v2, 0x1

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_9

    :try_start_9
    const-string v2, "Status: Success"

    .line 1304
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_9
    const-string v2, "Status: Fail"

    .line 1306
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :goto_8
    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_3

    .line 1317
    :cond_a
    :try_start_a
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    return-void
.end method
