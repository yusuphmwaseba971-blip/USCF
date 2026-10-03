.class final Lcom/anythink/core/common/b/o$13;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/o;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/b/o;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/o;)V
    .locals 0

    .line 1053
    iput-object p1, p0, Lcom/anythink/core/common/b/o$13;->a:Lcom/anythink/core/common/b/o;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1056
    invoke-static {p1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    new-instance v0, Lcom/anythink/core/common/b/o$13$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/b/o$13$1;-><init>(Lcom/anythink/core/common/b/o$13;)V

    invoke-static {v0}, Lcom/anythink/core/common/b/o;->a(Ljava/lang/Runnable;)V

    .line 1064
    invoke-static {}, Lcom/anythink/core/common/n/b;->a()Lcom/anythink/core/common/n/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/n/b;->b()V

    .line 1065
    iget-object v0, p0, Lcom/anythink/core/common/b/o$13;->a:Lcom/anythink/core/common/b/o;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/b/o$13;->a:Lcom/anythink/core/common/b/o;

    invoke-virtual {v2}, Lcom/anythink/core/common/b/o;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/anythink/core/common/b/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "anythink_log_agent"

    .line 1069
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "anythink_log_agent_data"

    .line 1070
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1071
    invoke-static {p1}, Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
