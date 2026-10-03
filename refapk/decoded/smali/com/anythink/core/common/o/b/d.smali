.class public abstract Lcom/anythink/core/common/o/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field protected g:Z

.field protected h:Lcom/anythink/core/common/o/b/e;

.field protected i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/anythink/core/common/o/b/d;->g:Z

    .line 20
    iput v0, p0, Lcom/anythink/core/common/o/b/d;->i:I

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/anythink/core/common/o/b/d;->a:J

    const-string v0, "anythink_default_thread"

    .line 23
    iput-object v0, p0, Lcom/anythink/core/common/o/b/d;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/anythink/core/common/o/b/e;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/anythink/core/common/o/b/d;->h:Lcom/anythink/core/common/o/b/e;

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/anythink/core/common/o/b/d;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(J)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/anythink/core/common/o/b/d;->a:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/anythink/core/common/o/b/d;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/anythink/core/common/o/b/d;->a:J

    return-wide v0
.end method

.method public run()V
    .locals 2

    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/o/b/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/anythink/core/common/o/b/d;->a()V

    return-void
.end method
