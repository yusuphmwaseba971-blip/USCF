.class final Lcom/anythink/core/common/b/o$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATNetworkConfig;)V
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

    .line 705
    iput-object p1, p0, Lcom/anythink/core/common/b/o$8;->a:Lcom/anythink/core/common/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 708
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/b/o$8;->a:Lcom/anythink/core/common/b/o;

    invoke-static {v1}, Lcom/anythink/core/common/b/o;->b(Lcom/anythink/core/common/b/o;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o;->a(Landroid/content/Context;)V

    return-void
.end method
