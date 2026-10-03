.class final Lcom/anythink/core/common/w$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/w;->b(Lcom/anythink/core/common/l/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/w;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/w;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/anythink/core/common/w$2;->a:Lcom/anythink/core/common/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/anythink/core/common/w$2;->a:Lcom/anythink/core/common/w;

    invoke-static {v0}, Lcom/anythink/core/common/w;->b(Lcom/anythink/core/common/w;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/core/common/w$2;->a:Lcom/anythink/core/common/w;

    invoke-static {v0}, Lcom/anythink/core/common/w;->b(Lcom/anythink/core/common/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/w$2;->a:Lcom/anythink/core/common/w;

    invoke-static {v0}, Lcom/anythink/core/common/w;->d(Lcom/anythink/core/common/w;)V

    return-void

    .line 297
    :cond_1
    :goto_0
    invoke-static {}, Lcom/anythink/core/common/w;->c()Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/anythink/core/common/w$2;->a:Lcom/anythink/core/common/w;

    invoke-static {v0}, Lcom/anythink/core/common/w;->c(Lcom/anythink/core/common/w;)I

    return-void
.end method
