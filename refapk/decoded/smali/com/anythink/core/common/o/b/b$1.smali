.class final Lcom/anythink/core/common/o/b/b$1;
.super Lcom/anythink/core/common/o/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/anythink/core/common/o/b/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/o/b/b;JLjava/lang/Runnable;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/anythink/core/common/o/b/b$1;->c:Lcom/anythink/core/common/o/b/b;

    iput-wide p2, p0, Lcom/anythink/core/common/o/b/b$1;->a:J

    iput-object p4, p0, Lcom/anythink/core/common/o/b/b$1;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/anythink/core/common/o/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 176
    iget-wide v0, p0, Lcom/anythink/core/common/o/b/b$1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 178
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :catch_0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "thread-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/anythink/core/common/o/b/b$1;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 186
    iget-object v0, p0, Lcom/anythink/core/common/o/b/b$1;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
