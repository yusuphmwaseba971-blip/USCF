.class Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$3;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->startBufferIngTimer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

.field final synthetic val$bufferMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;Ljava/lang/String;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$3;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    iput-object p2, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$3;->val$bufferMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$3;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$900(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$3;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$600(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$3;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    iget-object v1, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$3;->val$bufferMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$1000(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method
