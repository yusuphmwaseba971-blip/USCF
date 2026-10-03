.class final Lcom/anythink/core/common/w$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/w;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/core/common/w;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/w;Ljava/lang/String;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/anythink/core/common/w$3;->b:Lcom/anythink/core/common/w;

    iput-object p2, p0, Lcom/anythink/core/common/w$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/anythink/core/common/w$3;->b:Lcom/anythink/core/common/w;

    iget-object v1, p0, Lcom/anythink/core/common/w$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-static {}, Lcom/anythink/core/common/w;->c()Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lcom/anythink/core/common/w$3;->b:Lcom/anythink/core/common/w;

    invoke-static {v0}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/w;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/w$3;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/l/e;

    .line 463
    iget-object v1, p0, Lcom/anythink/core/common/w$3;->b:Lcom/anythink/core/common/w;

    invoke-static {v1, v0}, Lcom/anythink/core/common/w;->b(Lcom/anythink/core/common/w;Lcom/anythink/core/common/l/e;)V

    return-void

    .line 465
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/w;->c()Ljava/lang/String;

    return-void
.end method
