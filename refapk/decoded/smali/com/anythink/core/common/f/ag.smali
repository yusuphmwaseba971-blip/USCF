.class public final Lcom/anythink/core/common/f/ag;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/anythink/core/common/f/ag;->a:Ljava/lang/String;

    .line 10
    iput-wide p2, p0, Lcom/anythink/core/common/f/ag;->b:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/anythink/core/common/f/ag;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/anythink/core/common/f/ag;->b:J

    return-wide v0
.end method
