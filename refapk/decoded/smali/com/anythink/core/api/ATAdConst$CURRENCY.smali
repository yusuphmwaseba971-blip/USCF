.class public final enum Lcom/anythink/core/api/ATAdConst$CURRENCY;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/api/ATAdConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CURRENCY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/anythink/core/api/ATAdConst$CURRENCY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/anythink/core/api/ATAdConst$CURRENCY;

.field public static final enum RMB:Lcom/anythink/core/api/ATAdConst$CURRENCY;

.field public static final enum RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

.field public static final enum USD:Lcom/anythink/core/api/ATAdConst$CURRENCY;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lcom/anythink/core/api/ATAdConst$CURRENCY;

    const-string v1, "RMB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/api/ATAdConst$CURRENCY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 22
    new-instance v1, Lcom/anythink/core/api/ATAdConst$CURRENCY;

    const-string v3, "RMB_CENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/anythink/core/api/ATAdConst$CURRENCY;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 23
    new-instance v3, Lcom/anythink/core/api/ATAdConst$CURRENCY;

    const-string v5, "USD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/anythink/core/api/ATAdConst$CURRENCY;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/anythink/core/api/ATAdConst$CURRENCY;->USD:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/anythink/core/api/ATAdConst$CURRENCY;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 20
    sput-object v5, Lcom/anythink/core/api/ATAdConst$CURRENCY;->$VALUES:[Lcom/anythink/core/api/ATAdConst$CURRENCY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/anythink/core/api/ATAdConst$CURRENCY;
    .locals 1

    .line 20
    const-class v0, Lcom/anythink/core/api/ATAdConst$CURRENCY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/anythink/core/api/ATAdConst$CURRENCY;

    return-object p0
.end method

.method public static values()[Lcom/anythink/core/api/ATAdConst$CURRENCY;
    .locals 1

    .line 20
    sget-object v0, Lcom/anythink/core/api/ATAdConst$CURRENCY;->$VALUES:[Lcom/anythink/core/api/ATAdConst$CURRENCY;

    invoke-virtual {v0}, [Lcom/anythink/core/api/ATAdConst$CURRENCY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/anythink/core/api/ATAdConst$CURRENCY;

    return-object v0
.end method
