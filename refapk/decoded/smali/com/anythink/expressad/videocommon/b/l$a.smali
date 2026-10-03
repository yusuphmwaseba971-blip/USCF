.class final Lcom/anythink/expressad/videocommon/b/l$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/videocommon/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/anythink/expressad/videocommon/b/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/anythink/expressad/videocommon/b/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anythink/expressad/videocommon/b/l;-><init>(B)V

    sput-object v0, Lcom/anythink/expressad/videocommon/b/l$a;->a:Lcom/anythink/expressad/videocommon/b/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
