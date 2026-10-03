.class final Lcom/anythink/core/common/f/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f/b;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f/b;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/anythink/core/common/f/b$1;->a:Lcom/anythink/core/common/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/f/b$1;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v0}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/common/f/b;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/anythink/core/common/f/b$1;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v0}, Lcom/anythink/core/common/f/b;->b(Lcom/anythink/core/common/f/b;)Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/anythink/core/common/f/b$1;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v0}, Lcom/anythink/core/common/f/b;->b(Lcom/anythink/core/common/f/b;)Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalDestory()V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/f/b$1;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v0}, Lcom/anythink/core/common/f/b;->c(Lcom/anythink/core/common/f/b;)Lcom/anythink/core/api/BaseAd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/anythink/core/common/f/b$1;->a:Lcom/anythink/core/common/f/b;

    invoke-static {v0}, Lcom/anythink/core/common/f/b;->c(Lcom/anythink/core/common/f/b;)Lcom/anythink/core/api/BaseAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/api/BaseAd;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
