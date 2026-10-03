.class final Lcom/anythink/core/common/p/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/p/d;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/p/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/ATBaseAdAdapter;

.field final synthetic b:Lcom/anythink/core/common/p/d;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/p/d;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lcom/anythink/core/common/p/d$3;->b:Lcom/anythink/core/common/p/d;

    iput-object p2, p0, Lcom/anythink/core/common/p/d$3;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 727
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/p/d$3;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalDestory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 731
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
