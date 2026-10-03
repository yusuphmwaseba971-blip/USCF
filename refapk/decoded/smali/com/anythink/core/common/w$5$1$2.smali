.class final Lcom/anythink/core/common/w$5$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/w$5$1;->a(Ljava/lang/String;Lcom/anythink/core/common/l/e;Lcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/core/common/l/e;

.field final synthetic c:Lcom/anythink/core/api/AdError;

.field final synthetic d:Lcom/anythink/core/common/w$5$1;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/w$5$1;Ljava/lang/String;Lcom/anythink/core/common/l/e;Lcom/anythink/core/api/AdError;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/anythink/core/common/w$5$1$2;->d:Lcom/anythink/core/common/w$5$1;

    iput-object p2, p0, Lcom/anythink/core/common/w$5$1$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/w$5$1$2;->b:Lcom/anythink/core/common/l/e;

    iput-object p4, p0, Lcom/anythink/core/common/w$5$1$2;->c:Lcom/anythink/core/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 562
    iget-object v0, p0, Lcom/anythink/core/common/w$5$1$2;->d:Lcom/anythink/core/common/w$5$1;

    iget-object v0, v0, Lcom/anythink/core/common/w$5$1;->a:Lcom/anythink/core/common/w$5;

    iget-object v0, v0, Lcom/anythink/core/common/w$5;->d:Lcom/anythink/core/common/w;

    iget-object v1, p0, Lcom/anythink/core/common/w$5$1$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/w$5$1$2;->b:Lcom/anythink/core/common/l/e;

    iget-object v3, p0, Lcom/anythink/core/common/w$5$1$2;->c:Lcom/anythink/core/api/AdError;

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/w;Ljava/lang/String;Lcom/anythink/core/common/l/e;Lcom/anythink/core/api/AdError;)V

    return-void
.end method
