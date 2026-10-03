.class public final Lcom/anythink/core/common/o/e;
.super Ljava/lang/Object;


# static fields
.field private static A:I

.field private static B:I

.field private static C:I

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/s;",
            ">;"
        }
    .end annotation
.end field

.field static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static final h:Lorg/json/JSONObject;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Z

.field private static l:I

.field private static m:Z

.field private static n:Ljava/lang/String;

.field private static volatile o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:I

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/anythink/core/common/o/e;->h:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/anythink/core/common/o/e;->i:Ljava/lang/String;

    const-string v1, ""

    .line 68
    sput-object v1, Lcom/anythink/core/common/o/e;->c:Ljava/lang/String;

    .line 499
    sput-object v0, Lcom/anythink/core/common/o/e;->o:Ljava/lang/String;

    .line 500
    sput-object v1, Lcom/anythink/core/common/o/e;->p:Ljava/lang/String;

    .line 501
    sput-object v1, Lcom/anythink/core/common/o/e;->q:Ljava/lang/String;

    .line 502
    sput-object v1, Lcom/anythink/core/common/o/e;->r:Ljava/lang/String;

    .line 503
    sput-object v1, Lcom/anythink/core/common/o/e;->s:Ljava/lang/String;

    const/4 v2, 0x0

    .line 504
    sput v2, Lcom/anythink/core/common/o/e;->t:I

    .line 505
    sput-object v1, Lcom/anythink/core/common/o/e;->u:Ljava/lang/String;

    .line 506
    sput-object v1, Lcom/anythink/core/common/o/e;->v:Ljava/lang/String;

    .line 507
    sput-object v0, Lcom/anythink/core/common/o/e;->w:Ljava/lang/String;

    .line 508
    sput-object v1, Lcom/anythink/core/common/o/e;->x:Ljava/lang/String;

    .line 509
    sput-object v1, Lcom/anythink/core/common/o/e;->y:Ljava/lang/String;

    const/4 v0, -0x1

    .line 1063
    sput v0, Lcom/anythink/core/common/o/e;->z:I

    .line 1064
    sput v0, Lcom/anythink/core/common/o/e;->A:I

    .line 1065
    sput v0, Lcom/anythink/core/common/o/e;->B:I

    .line 1066
    sput v0, Lcom/anythink/core/common/o/e;->C:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0xd

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x10

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 250
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "model"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 256
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/r;->b()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return-object v1

    .line 262
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0

    :catch_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 1510
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 1515
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1516
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static a(ILjava/lang/String;)V
    .locals 2

    .line 810
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 813
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/o/e$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/o/e$1;-><init>(ILjava/lang/String;)V

    const/16 p0, 0xd

    const/4 p1, 0x1

    .line 4137
    invoke-virtual {v0, v1, p0, p1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 12

    const-string v0, "det_hw_time"

    const-string v1, "anythink_sdk"

    .line 88
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/o/e;->d()Ljava/lang/String;

    .line 89
    invoke-static {p0}, Lcom/anythink/core/common/o/e;->l(Landroid/content/Context;)Ljava/lang/String;

    .line 90
    invoke-static {p0}, Lcom/anythink/core/common/o/e;->j(Landroid/content/Context;)Ljava/lang/String;

    .line 91
    invoke-static {p0}, Lcom/anythink/core/common/o/e;->i(Landroid/content/Context;)Ljava/lang/String;

    .line 92
    invoke-static {p0}, Lcom/anythink/core/common/o/e;->g(Landroid/content/Context;)I

    .line 93
    invoke-static {}, Lcom/anythink/core/common/o/e;->a()Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/anythink/core/common/o/e;->b()Ljava/lang/String;

    .line 95
    invoke-static {p0}, Lcom/anythink/core/common/o/e;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/anythink/core/common/o/e;->f()Ljava/lang/String;

    .line 97
    invoke-static {p0}, Lcom/anythink/core/common/o/e;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/anythink/core/common/o/e;->c()Ljava/lang/String;

    .line 99
    invoke-static {p0}, Lcom/anythink/core/common/o/e;->o(Landroid/content/Context;)Ljava/lang/String;

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 100
    invoke-static {v2, p0}, Lcom/anythink/core/common/o/i;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "phone"

    .line 101
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 102
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {v2}, Lcom/anythink/core/common/o/i;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    const/4 v3, 0x0

    .line 104
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/anythink/core/common/o/e;->x:Ljava/lang/String;

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/anythink/core/common/o/e;->y:Ljava/lang/String;

    .line 2489
    :cond_0
    sget-object v2, Lcom/anythink/core/common/o/e;->d:Ljava/util/List;

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    .line 2490
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 2491
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2492
    sput-object v2, Lcom/anythink/core/common/o/e;->d:Ljava/util/List;

    new-instance v11, Lcom/anythink/core/common/f/s;

    const-string v7, "hw_ver"

    const-string v8, "com.huawei.appmarket"

    move-object v3, v11

    move-object v4, p0

    move-wide v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/anythink/core/common/f/s;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2493
    sget-object v2, Lcom/anythink/core/common/o/e;->d:Ljava/util/List;

    new-instance v11, Lcom/anythink/core/common/f/s;

    const-string v7, "hw_hms_ver"

    const-string v8, "com.huawei.hwid"

    move-object v3, v11

    move-object v4, p0

    move-wide v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/anythink/core/common/f/s;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2494
    sget-object v2, Lcom/anythink/core/common/o/e;->d:Ljava/util/List;

    new-instance v11, Lcom/anythink/core/common/f/s;

    const-string v7, "honor_ver"

    const-string v8, "com.huawei.appmarket"

    move-object v3, v11

    move-object v4, p0

    move-wide v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/anythink/core/common/f/s;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v1, v0, v2, v3}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .line 704
    sput-object p0, Lcom/anythink/core/common/o/e;->g:Ljava/lang/String;

    .line 705
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/anythink/core/common/o/e;->g:Ljava/lang/String;

    const-string v1, "anythink_sdk"

    const-string v2, "anythink_gaid"

    invoke-static {p0, v1, v2, v0}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .locals 4

    .line 1135
    sget v0, Lcom/anythink/core/common/o/e;->C:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1138
    sput v0, Lcom/anythink/core/common/o/e;->C:I

    .line 1140
    :try_start_0
    invoke-static {p0}, Lcom/anythink/core/common/o/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "com.tencent.mm.opensdk.openapi.IWXAPI"

    .line 1141
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getWXAppSupportAPI"

    new-array v3, v0, [Ljava/lang/Class;

    .line 1142
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1143
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lcom/anythink/core/common/o/e;->C:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    :catchall_0
    sget p0, Lcom/anythink/core/common/o/e;->C:I

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 273
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "brand"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 278
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/r;->b()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return-object v1

    .line 284
    :cond_1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0

    :catch_0
    return-object v1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 132
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "mcc"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    .line 137
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    .line 142
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/r;->b()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    return-object v1

    .line 149
    :cond_2
    sget-object p0, Lcom/anythink/core/common/o/e;->x:Ljava/lang/String;

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .line 1153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "com.tencent.mm.opensdk.openapi.WXAPIFactory"

    .line 1157
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "createWXAPI"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 1158
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 1159
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p0, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v1
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .line 629
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "timezone"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 635
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/r;->b()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return-object v1

    .line 642
    :cond_1
    :try_start_1
    sget-object v0, Lcom/anythink/core/common/o/e;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 643
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 644
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 645
    sput-object v0, Lcom/anythink/core/common/o/e;->v:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 653
    :catchall_0
    :cond_2
    sget-object v0, Lcom/anythink/core/common/o/e;->v:Ljava/lang/String;

    return-object v0

    :catch_0
    return-object v1
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 158
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "mnc"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    .line 163
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    .line 168
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/r;->b()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    return-object v1

    .line 175
    :cond_2
    sget-object p0, Lcom/anythink/core/common/o/e;->y:Ljava/lang/String;

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .line 662
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "os_vc"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 667
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/r;->b()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return-object v1

    .line 674
    :cond_1
    sget-object v0, Lcom/anythink/core/common/o/e;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3699
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 676
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/o/e;->q:Ljava/lang/String;

    .line 679
    :cond_2
    sget-object v0, Lcom/anythink/core/common/o/e;->q:Ljava/lang/String;

    return-object v0

    :catch_0
    return-object v1
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/anythink/core/common/o/e;

    monitor-enter v0

    .line 187
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    const-string v2, "android_id"

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit v0

    return-object p0

    .line 191
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/r;->b()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    monitor-exit v0

    return-object p0

    .line 195
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v1

    if-eqz v1, :cond_5

    if-nez p0, :cond_2

    .line 198
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p0

    .line 201
    :cond_2
    sget-object v2, Lcom/anythink/core/common/o/e;->n:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, "anythink_sdk"

    const-string v3, "anythink_aid"

    const-string v4, ""

    .line 202
    invoke-static {p0, v2, v3, v4}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/anythink/core/common/o/e;->n:Ljava/lang/String;

    .line 205
    :cond_3
    sget-object v2, Lcom/anythink/core/common/o/e;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 206
    sget-object p0, Lcom/anythink/core/common/o/e;->n:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 209
    :cond_4
    :try_start_3
    invoke-interface {v1, p0}, Lcom/anythink/core/api/IExHandler;->getAid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 211
    sput-object v1, Lcom/anythink/core/common/o/e;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "anythink_sdk"

    const-string v2, "anythink_aid"

    .line 212
    sget-object v3, Lcom/anythink/core/common/o/e;->n:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object p0, Lcom/anythink/core/common/o/e;->n:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_5
    :try_start_4
    const-string p0, ""

    .line 216
    sput-object p0, Lcom/anythink/core/common/o/e;->n:Ljava/lang/String;

    .line 219
    :cond_6
    sget-object p0, Lcom/anythink/core/common/o/e;->n:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    sput-object p0, Lcom/anythink/core/common/o/e;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .line 683
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "os_vn"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 687
    :cond_0
    sget-object v0, Lcom/anythink/core/common/o/e;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/anythink/core/common/o/e;->p:Ljava/lang/String;

    .line 690
    :cond_1
    sget-object v0, Lcom/anythink/core/common/o/e;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 230
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/anythink/core/common/o/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 231
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 235
    :cond_1
    sget-object v0, Lcom/anythink/core/common/o/e;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    invoke-static {p0}, Lcom/anythink/core/common/o/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/anythink/core/common/o/e;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :catchall_0
    :cond_2
    sget-object p0, Lcom/anythink/core/common/o/e;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[0-]+$"

    .line 6025
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static f()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 716
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/r;->b()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    .line 723
    :cond_0
    sget-object v1, Lcom/anythink/core/common/o/e;->g:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 724
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "anythink_sdk"

    const-string v3, "anythink_gaid"

    invoke-static {v1, v2, v3, v0}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/o/e;->g:Ljava/lang/String;

    .line 726
    :cond_1
    sget-object v0, Lcom/anythink/core/common/o/e;->g:Ljava/lang/String;

    :catch_0
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 293
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    .line 298
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p0

    .line 302
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/r;->b()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    return-object v1

    .line 308
    :cond_2
    sget-object v0, Lcom/anythink/core/common/o/e;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 310
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    .line 311
    sput-object p0, Lcom/anythink/core/common/o/e;->u:Ljava/lang/String;

    return-object p0

    .line 313
    :cond_3
    sget-object p0, Lcom/anythink/core/common/o/e;->u:Ljava/lang/String;

    return-object p0

    :catch_0
    return-object v1
.end method

.method private static f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[0-]+$"

    .line 1025
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 2

    .line 324
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "orient"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    .line 329
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p0

    .line 332
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 334
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    :cond_3
    return v0
.end method

.method public static g()Ljava/lang/String;
    .locals 6

    .line 775
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 780
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 781
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 785
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v2, 0x6

    const/4 v3, 0x4

    .line 786
    invoke-virtual {v0, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 788
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public static h()Lorg/json/JSONObject;
    .locals 2

    .line 801
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/anythink/core/common/o/e;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 805
    :catchall_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 1

    .line 346
    invoke-static {p0}, Lcom/anythink/core/common/o/e;->g(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized i()Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/anythink/core/common/o/e;

    monitor-enter v0

    .line 834
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    const-string v2, "ua"

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    monitor-exit v0

    return-object v1

    .line 839
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/r;->b()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 840
    monitor-exit v0

    return-object v1

    .line 846
    :cond_1
    :try_start_2
    sget-object v1, Lcom/anythink/core/common/o/e;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 847
    sget-object v1, Lcom/anythink/core/common/o/e;->o:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 850
    :cond_2
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/o/e;->o:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 851
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "anythink_sdk"

    const-string v3, "local_ua"

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 852
    sput-object v1, Lcom/anythink/core/common/o/e;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 853
    sget-object v1, Lcom/anythink/core/common/o/e;->o:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v1

    .line 857
    :cond_3
    :try_start_4
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 858
    invoke-static {}, Lcom/anythink/core/common/o/e;->a()Ljava/lang/String;

    move-result-object v2

    .line 859
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 860
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 861
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Mozilla/5.0 (Linux; Android "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Build/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.133 Mobile Safari/535.19"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_4
    :try_start_5
    const-string v1, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 864
    monitor-exit v0

    return-object v1

    :catch_0
    :try_start_6
    const-string v1, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 843
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 357
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "app_vc"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    .line 362
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p0

    .line 365
    :cond_1
    sget v0, Lcom/anythink/core/common/o/e;->t:I

    if-nez v0, :cond_2

    .line 367
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 368
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput p0, Lcom/anythink/core/common/o/e;->t:I

    .line 369
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/anythink/core/common/o/e;->t:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 371
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1

    .line 375
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/anythink/core/common/o/e;->t:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    .line 1029
    sget-object v0, Lcom/anythink/core/common/o/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1030
    sget-object v0, Lcom/anythink/core/common/o/e;->c:Ljava/lang/String;

    return-object v0

    .line 1032
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->G()Ljava/lang/String;

    move-result-object v0

    .line 1033
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1035
    sput-object v0, Lcom/anythink/core/common/o/e;->c:Ljava/lang/String;

    return-object v0

    .line 1037
    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->G()Ljava/lang/String;

    move-result-object v0

    .line 1038
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    const-string v0, "com.unity3d.player.UnityPlayer"

    .line 1041
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "2"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "1"

    :goto_0
    :try_start_1
    const-string v1, "org.cocos2dx.lib.Cocos2dxActivity"

    .line 1046
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "3"

    const-string v1, "org.cocos2dx.lib.Cocos2dxJavascriptJavaBridge"

    .line 1049
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "4"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1057
    :catchall_1
    :cond_2
    sput-object v0, Lcom/anythink/core/common/o/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 384
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "app_vn"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    .line 389
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p0

    .line 393
    :cond_1
    :try_start_0
    sget-object v0, Lcom/anythink/core/common/o/e;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 395
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 396
    sput-object p0, Lcom/anythink/core/common/o/e;->s:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 402
    :cond_2
    sget-object p0, Lcom/anythink/core/common/o/e;->s:Ljava/lang/String;

    return-object p0

    :catch_0
    move-exception p0

    .line 399
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public static k()I
    .locals 2

    .line 1076
    sget v0, Lcom/anythink/core/common/o/e;->A:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1078
    invoke-static {}, Lcom/anythink/core/common/o/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1079
    sput v1, Lcom/anythink/core/common/o/e;->A:I

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "com.tencent.mm.opensdk.openapi.WXAPIFactory"

    .line 1082
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram"

    .line 1083
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 1084
    sput v0, Lcom/anythink/core/common/o/e;->A:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1089
    :catchall_0
    sput v1, Lcom/anythink/core/common/o/e;->A:I

    .line 1093
    :cond_1
    :goto_0
    sget v0, Lcom/anythink/core/common/o/e;->A:I

    return v0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 423
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "screen"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    .line 428
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p0

    .line 432
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/r;->b()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    return-object v1

    .line 438
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_3

    .line 3408
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, p0

    .line 3410
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3411
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_4

    .line 3416
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p0

    .line 3418
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 3419
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 438
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static l()Ljava/lang/String;
    .locals 2

    .line 1097
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->c()Ljava/lang/String;

    move-result-object v0

    .line 1098
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 1102
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->l()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "wechat_app_id"

    .line 1104
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1106
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1110
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 445
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    .line 450
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p0

    .line 454
    :cond_1
    :try_start_0
    sget-object v0, Lcom/anythink/core/common/o/e;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 456
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 457
    sput-object p0, Lcom/anythink/core/common/o/e;->r:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 464
    :cond_2
    sget-object p0, Lcom/anythink/core/common/o/e;->r:Ljava/lang/String;

    return-object p0

    :catch_0
    move-exception p0

    .line 460
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public static m()I
    .locals 2

    .line 1116
    sget v0, Lcom/anythink/core/common/o/e;->B:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1119
    sput v0, Lcom/anythink/core/common/o/e;->B:I

    :try_start_0
    const-string v0, "com.tencent.mm.opensdk.constants.Build"

    .line 1122
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "SDK_INT"

    .line 1123
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 1124
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/anythink/core/common/o/e;->B:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1130
    :catchall_0
    sget v0, Lcom/anythink/core/common/o/e;->B:I

    return v0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 475
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "it_src"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    .line 480
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p0

    .line 484
    :cond_1
    :try_start_0
    sget-object v0, Lcom/anythink/core/common/o/e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 485
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lcom/anythink/core/common/o/e;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 486
    sput-object p0, Lcom/anythink/core/common/o/e;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 495
    :cond_2
    sget-object p0, Lcom/anythink/core/common/o/e;->a:Ljava/lang/String;

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 554
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "network_type"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 559
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/r;->b()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "-1"

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    :try_start_1
    const-string v1, "connectivity"

    .line 572
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 576
    invoke-static {v2, p0}, Lcom/anythink/core/common/o/i;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 578
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_4

    return-object v0

    .line 582
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const-string p0, "-2"

    return-object p0

    :cond_5
    const-string v1, "phone"

    .line 585
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_6

    return-object v0

    .line 589
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x14

    if-eq p0, v3, :cond_7

    packed-switch p0, :pswitch_data_0

    const/4 v2, -0x1

    goto :goto_0

    :pswitch_0
    const/16 v2, 0xd

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x3

    goto :goto_0

    :cond_7
    const/16 v2, 0x10

    :goto_0
    :pswitch_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :cond_8
    return-object v0

    :catch_0
    move-exception p0

    .line 593
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/s;",
            ">;"
        }
    .end annotation

    .line 1500
    sget-object v0, Lcom/anythink/core/common/o/e;->d:Ljava/util/List;

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 5

    .line 1529
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "amazon_id"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 1533
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object v0

    .line 1534
    invoke-virtual {v0}, Lcom/anythink/core/common/b/r;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 1538
    :cond_1
    sget-object v0, Lcom/anythink/core/common/o/e;->j:Ljava/lang/String;

    const-string v2, "anythink_amazon_id"

    const-string v3, "anythink_sdk"

    if-nez v0, :cond_2

    .line 1539
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v2, v1}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/o/e;->j:Ljava/lang/String;

    .line 1543
    :cond_2
    sget-object v0, Lcom/anythink/core/common/o/e;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/anythink/core/common/o/e;->k:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 1545
    :try_start_0
    sput-boolean v0, Lcom/anythink/core/common/o/e;->k:Z

    .line 1546
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "advertising_id"

    .line 1552
    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1554
    sput-object v0, Lcom/anythink/core/common/o/e;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1555
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/anythink/core/common/o/e;->j:Ljava/lang/String;

    invoke-static {v0, v3, v2, v1}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1558
    :cond_3
    sput-object v1, Lcom/anythink/core/common/o/e;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1565
    :catchall_0
    :cond_4
    :goto_0
    sget-object v0, Lcom/anythink/core/common/o/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 734
    sget-object v0, Lcom/anythink/core/common/o/e;->w:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_1

    .line 736
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.vending"

    const/4 v2, 0x0

    .line 737
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 738
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 739
    sput-object p0, Lcom/anythink/core/common/o/e;->w:Ljava/lang/String;

    if-nez p0, :cond_0

    .line 740
    sput-object v1, Lcom/anythink/core/common/o/e;->w:Ljava/lang/String;

    .line 742
    :cond_0
    sget-object p0, Lcom/anythink/core/common/o/e;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 745
    :catch_0
    sput-object v1, Lcom/anythink/core/common/o/e;->w:Ljava/lang/String;

    return-object v1

    :cond_1
    if-nez v0, :cond_2

    .line 750
    sput-object v1, Lcom/anythink/core/common/o/e;->w:Ljava/lang/String;

    .line 752
    :cond_2
    sget-object p0, Lcom/anythink/core/common/o/e;->w:Ljava/lang/String;

    return-object p0
.end method

.method public static p()I
    .locals 4

    .line 1569
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object v0

    .line 1570
    invoke-virtual {v0}, Lcom/anythink/core/common/b/r;->b()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1574
    :cond_0
    sget v0, Lcom/anythink/core/common/o/e;->l:I

    if-gtz v0, :cond_3

    sget-boolean v0, Lcom/anythink/core/common/o/e;->m:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 1576
    :try_start_0
    sput-boolean v0, Lcom/anythink/core/common/o/e;->m:Z

    .line 1577
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "limit_ad_tracking"

    .line 1580
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    const/4 v0, 0x2

    .line 1582
    :cond_2
    sput v0, Lcom/anythink/core/common/o/e;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1587
    :catchall_0
    sput v1, Lcom/anythink/core/common/o/e;->l:I

    .line 1591
    :cond_3
    :goto_1
    sget v0, Lcom/anythink/core/common/o/e;->l:I

    return v0
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 757
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 761
    :cond_0
    sget-object v0, Lcom/anythink/core/common/o/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "window"

    .line 762
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 763
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 764
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 765
    iget p0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/anythink/core/common/o/e;->b:Ljava/lang/String;

    .line 768
    :cond_1
    sget-object p0, Lcom/anythink/core/common/o/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q()Lorg/json/JSONObject;
    .locals 1

    .line 54
    sget-object v0, Lcom/anythink/core/common/o/e;->h:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static q(Landroid/content/Context;)V
    .locals 5

    .line 874
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    const-string v1, "ua"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 879
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/r;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/r;->b()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return-void

    .line 886
    :cond_1
    sget-object v0, Lcom/anythink/core/common/o/e;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "local_ua"

    const-string v2, ""

    const-string v3, "anythink_sdk"

    if-eqz v0, :cond_2

    .line 887
    invoke-static {p0, v3, v1, v2}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/o/e;->o:Ljava/lang/String;

    :cond_2
    const-string v0, "local_os"

    .line 890
    invoke-static {p0, v3, v0, v2}, Lcom/anythink/core/common/o/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 892
    sget-object v4, Lcom/anythink/core/common/o/e;->o:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 895
    :cond_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v2, v4, :cond_5

    .line 896
    sget-object p0, Lcom/anythink/core/common/o/e;->o:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_4
    return-void

    .line 903
    :cond_5
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v2, v4, :cond_6

    .line 904
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/anythink/core/common/o/e;->o:Ljava/lang/String;

    goto :goto_0

    .line 906
    :cond_6
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 907
    invoke-static {v2}, Lcom/anythink/core/common/o/h;->a(Landroid/webkit/WebView;)V

    .line 908
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/anythink/core/common/o/e;->o:Ljava/lang/String;

    .line 911
    :goto_0
    sget-object v2, Lcom/anythink/core/common/o/e;->o:Ljava/lang/String;

    invoke-static {p0, v3, v1, v2}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p0, v3, v0, v1}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :catchall_0
    return-void
.end method

.method private static r()I
    .locals 1

    .line 699
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static declared-synchronized r(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lcom/anythink/core/common/o/e;

    monitor-enter v0

    .line 927
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 928
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, ""

    .line 933
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 935
    invoke-interface {v2, p0}, Lcom/anythink/core/api/IExHandler;->getUniqueId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 938
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 939
    invoke-static {p0}, Lcom/anythink/core/common/o/e;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 942
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "^[0-]+$"

    .line 5025
    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 943
    :cond_3
    invoke-static {p0}, Lcom/anythink/core/common/o/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 945
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 947
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 949
    :cond_5
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-static {v1}, Lcom/anythink/core/common/o/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/b/o;->l(Ljava/lang/String;)V

    const-string p0, ""

    const-string v1, "3"

    const-string v2, ""

    .line 952
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 953
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized s(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/anythink/core/common/o/e;

    monitor-enter v0

    .line 963
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    const-string v2, "gaid"

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/o;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 964
    monitor-exit v0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    .line 967
    :try_start_1
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 970
    new-instance v3, Lcom/anythink/core/common/o/e$2;

    invoke-direct {v3, p0, v2, v1}, Lcom/anythink/core/common/o/e$2;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1010
    :try_start_2
    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v3, 0x7d0

    .line 1011
    :try_start_3
    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 1012
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1013
    :try_start_4
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 p0, 0x0

    .line 1014
    aget-object v1, v2, p0

    if-eqz v1, :cond_1

    aget-object p0, v2, p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_5
    const-string p0, ""
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1012
    :try_start_6
    monitor-exit v1

    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_0
    :try_start_7
    const-string p0, ""
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1020
    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static t(Landroid/content/Context;)I
    .locals 2

    .line 1069
    sget v0, Lcom/anythink/core/common/o/e;->z:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "com.tencent.mm"

    .line 1070
    invoke-static {p0, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    sput p0, Lcom/anythink/core/common/o/e;->z:I

    .line 1072
    :cond_0
    sget p0, Lcom/anythink/core/common/o/e;->z:I

    return p0
.end method

.method private static u(Landroid/content/Context;)I
    .locals 0

    if-nez p0, :cond_0

    .line 408
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p0

    .line 410
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 411
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method private static v(Landroid/content/Context;)I
    .locals 0

    if-nez p0, :cond_0

    .line 416
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p0

    .line 418
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 419
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method private static w(Landroid/content/Context;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "connectivity"

    .line 522
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 526
    invoke-static {v2, p0}, Lcom/anythink/core/common/o/i;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 528
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 532
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 p0, -0x2

    return p0

    :cond_3
    const-string v1, "phone"

    .line 535
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_4

    return v0

    .line 539
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_5
    return v0

    :catch_0
    move-exception p0

    .line 543
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private static x(Landroid/content/Context;)V
    .locals 12

    .line 1489
    sget-object v0, Lcom/anythink/core/common/o/e;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 1490
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "anythink_sdk"

    const-string v2, "det_hw_time"

    invoke-static {p0, v1, v2, v0}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1492
    sput-object v0, Lcom/anythink/core/common/o/e;->d:Ljava/util/List;

    new-instance v11, Lcom/anythink/core/common/f/s;

    const-string v7, "hw_ver"

    const-string v8, "com.huawei.appmarket"

    move-object v3, v11

    move-object v4, p0

    move-wide v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/anythink/core/common/f/s;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1493
    sget-object v0, Lcom/anythink/core/common/o/e;->d:Ljava/util/List;

    new-instance v11, Lcom/anythink/core/common/f/s;

    const-string v7, "hw_hms_ver"

    const-string v8, "com.huawei.hwid"

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lcom/anythink/core/common/f/s;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1494
    sget-object v0, Lcom/anythink/core/common/o/e;->d:Ljava/util/List;

    new-instance v11, Lcom/anythink/core/common/f/s;

    const-string v7, "honor_ver"

    const-string v8, "com.huawei.appmarket"

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lcom/anythink/core/common/f/s;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p0, v1, v2, v3, v4}, Lcom/anythink/core/common/o/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
