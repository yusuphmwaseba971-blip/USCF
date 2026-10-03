.class final Lcom/anythink/core/common/b/b$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/b;->b(Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/ATAdInfo;

.field final synthetic b:Lcom/anythink/core/api/AdError;

.field final synthetic c:Lcom/anythink/core/common/b/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/b;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/AdError;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/anythink/core/common/b/b$6;->c:Lcom/anythink/core/common/b/b;

    iput-object p2, p0, Lcom/anythink/core/common/b/b$6;->a:Lcom/anythink/core/api/ATAdInfo;

    iput-object p3, p0, Lcom/anythink/core/common/b/b$6;->b:Lcom/anythink/core/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/anythink/core/common/b/b$6;->c:Lcom/anythink/core/common/b/b;

    invoke-static {v0}, Lcom/anythink/core/common/b/b;->a(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdSourceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/anythink/core/common/b/b$6;->a:Lcom/anythink/core/api/ATAdInfo;

    iget-object v2, p0, Lcom/anythink/core/common/b/b$6;->b:Lcom/anythink/core/api/AdError;

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATAdSourceStatusListener;->onAdSourceLoadFail(Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/AdError;)V

    :cond_0
    return-void
.end method
