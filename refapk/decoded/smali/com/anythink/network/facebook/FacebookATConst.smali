.class public Lcom/anythink/network/facebook/FacebookATConst;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/network/facebook/FacebookATConst$DEBUGGER_CONFIG;
    }
.end annotation


# static fields
.field public static final NETWORK_FIRM_ID:I = 0x1

.field protected static final a:Ljava/lang/String; = "encrypted_cpm"

.field static b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkVersion()Ljava/lang/String;
    .locals 2

    .line 30
    sget-object v0, Lcom/anythink/network/facebook/FacebookATConst;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 34
    :cond_0
    :try_start_0
    const-class v0, Lcom/facebook/ads/BuildConfig;

    const-string v1, "VERSION_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    sput-object v0, Lcom/anythink/network/facebook/FacebookATConst;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string v0, ""

    .line 42
    sput-object v0, Lcom/anythink/network/facebook/FacebookATConst;->b:Ljava/lang/String;

    return-object v0
.end method
