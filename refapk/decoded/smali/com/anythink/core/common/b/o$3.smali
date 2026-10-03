.class final Lcom/anythink/core/common/b/o$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/anythink/core/common/b/o;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/o;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1779
    iput-object p1, p0, Lcom/anythink/core/common/b/o$3;->d:Lcom/anythink/core/common/b/o;

    iput-object p2, p0, Lcom/anythink/core/common/b/o$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/common/b/o$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/common/b/o$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1782
    iget-object v0, p0, Lcom/anythink/core/common/b/o$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/b/o$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/anythink/core/common/b/o$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/b/o$3;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/b/o$3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
