.class final Lcom/anythink/core/common/b/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/b/e;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/e;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/anythink/core/common/b/e$1;->a:Lcom/anythink/core/common/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/anythink/core/common/b/e$1;->a:Lcom/anythink/core/common/b/e;

    invoke-static {v0}, Lcom/anythink/core/common/b/e;->a(Lcom/anythink/core/common/b/e;)V

    return-void
.end method
