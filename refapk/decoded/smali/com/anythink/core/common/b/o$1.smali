.class final Lcom/anythink/core/common/b/o$1;
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/anythink/core/common/b/o;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/o;Landroid/content/Context;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/anythink/core/common/b/o$1;->d:Lcom/anythink/core/common/b/o;

    iput-object p2, p0, Lcom/anythink/core/common/b/o$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/core/common/b/o$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/common/b/o$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 671
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/n/b;->a()Lcom/anythink/core/common/n/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/b/o$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/n/b;->a(Landroid/content/Context;)V

    .line 672
    iget-object v0, p0, Lcom/anythink/core/common/b/o$1;->d:Lcom/anythink/core/common/b/o;

    iget-object v1, p0, Lcom/anythink/core/common/b/o$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/core/common/b/o$1;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/b/o;->a(Landroid/content/Context;Ljava/lang/String;I)J

    .line 673
    iget-object v0, p0, Lcom/anythink/core/common/b/o$1;->d:Lcom/anythink/core/common/b/o;

    iget-object v1, p0, Lcom/anythink/core/common/b/o$1;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/anythink/core/common/b/o;->a(Lcom/anythink/core/common/b/o;Landroid/content/Context;)V

    .line 676
    iget-object v0, p0, Lcom/anythink/core/common/b/o$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/b/i;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/i;->a()V

    .line 679
    iget-object v0, p0, Lcom/anythink/core/common/b/o$1;->d:Lcom/anythink/core/common/b/o;

    invoke-static {v0}, Lcom/anythink/core/common/b/o;->a(Lcom/anythink/core/common/b/o;)V

    .line 682
    iget-object v0, p0, Lcom/anythink/core/common/b/o$1;->d:Lcom/anythink/core/common/b/o;

    iget-object v1, p0, Lcom/anythink/core/common/b/o$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/anythink/core/common/b/o;->b(Lcom/anythink/core/common/b/o;Landroid/content/Context;)V

    .line 685
    invoke-static {}, Lcom/anythink/core/common/a/k;->a()Lcom/anythink/core/common/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/a/k;->b()V

    .line 688
    iget-object v0, p0, Lcom/anythink/core/common/b/o$1;->d:Lcom/anythink/core/common/b/o;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/res/d;->b()V

    .line 691
    iget-object v0, p0, Lcom/anythink/core/common/b/o$1;->d:Lcom/anythink/core/common/b/o;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    invoke-static {}, Lcom/anythink/core/common/res/d;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
