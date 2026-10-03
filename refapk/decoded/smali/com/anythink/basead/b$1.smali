.class final Lcom/anythink/basead/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/f/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/b;->a(Lcom/anythink/core/common/f/l;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/l;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f/l;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/anythink/basead/b$1;->a:Lcom/anythink/core/common/f/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/anythink/basead/b$1;->a:Lcom/anythink/core/common/f/l;

    new-instance v1, Lcom/anythink/basead/c/i;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->m()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-static {v2, v0, v1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    .line 61
    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/b$1;->a:Lcom/anythink/core/common/f/l;

    check-cast v1, Lcom/anythink/core/common/f/j;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/a/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
