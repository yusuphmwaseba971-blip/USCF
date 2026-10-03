.class final Lcom/anythink/core/common/k/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/k/c;->b(Lcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/k/c;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/k/c;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/anythink/core/common/k/c$1;->a:Lcom/anythink/core/common/k/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/anythink/core/common/k/c$1;->a:Lcom/anythink/core/common/k/c;

    invoke-static {v0}, Lcom/anythink/core/common/k/c;->a(Lcom/anythink/core/common/k/c;)Lcom/anythink/core/common/h/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/anythink/core/common/k/c;->a(ILcom/anythink/core/common/h/k;)V

    return-void
.end method
