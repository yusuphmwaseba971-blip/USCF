.class final Lcom/anythink/core/common/a/k$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/a/k;->a(Lcom/anythink/core/common/a/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/a/j;

.field final synthetic b:Lcom/anythink/core/common/a/k;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/a/k;Lcom/anythink/core/common/a/j;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/anythink/core/common/a/k$2;->b:Lcom/anythink/core/common/a/k;

    iput-object p2, p0, Lcom/anythink/core/common/a/k$2;->a:Lcom/anythink/core/common/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 92
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/anythink/core/common/a/k$2;->a:Lcom/anythink/core/common/a/j;

    invoke-virtual {v1}, Lcom/anythink/core/common/a/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :catchall_0
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/a/k$2;->b:Lcom/anythink/core/common/a/k;

    invoke-static {v0}, Lcom/anythink/core/common/a/k;->a(Lcom/anythink/core/common/a/k;)Lcom/anythink/core/common/c/m;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/a/k$2;->a:Lcom/anythink/core/common/a/j;

    invoke-virtual {v1}, Lcom/anythink/core/common/a/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/c/m;->c(Ljava/lang/String;)V

    return-void
.end method
