.class final Lcom/anythink/expressad/foundation/g/f/g/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/foundation/g/f/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/anythink/expressad/foundation/g/f/g/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lcom/anythink/expressad/foundation/g/f/g/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anythink/expressad/foundation/g/f/g/e;-><init>(B)V

    sput-object v0, Lcom/anythink/expressad/foundation/g/f/g/e$a;->a:Lcom/anythink/expressad/foundation/g/f/g/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/anythink/expressad/foundation/g/f/g/e;
    .locals 1

    .line 7
    sget-object v0, Lcom/anythink/expressad/foundation/g/f/g/e$a;->a:Lcom/anythink/expressad/foundation/g/f/g/e;

    return-object v0
.end method
