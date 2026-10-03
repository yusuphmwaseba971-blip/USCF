.class final Lcom/anythink/core/common/b/o$9;
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/core/common/b/o;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/o;Landroid/content/Context;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/anythink/core/common/b/o$9;->b:Lcom/anythink/core/common/b/o;

    iput-object p2, p0, Lcom/anythink/core/common/b/o$9;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/anythink/core/common/b/o$9;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/o/e;->q(Landroid/content/Context;)V

    return-void
.end method
