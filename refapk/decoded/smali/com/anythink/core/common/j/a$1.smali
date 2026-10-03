.class final Lcom/anythink/core/common/j/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/m/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/j/a;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/j/a;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/anythink/core/common/j/a$1;->a:Lcom/anythink/core/common/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/anythink/core/common/j/a$1;->a:Lcom/anythink/core/common/j/a;

    invoke-virtual {v0}, Lcom/anythink/core/common/j/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/j/a$1;->a:Lcom/anythink/core/common/j/a;

    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/o;->E()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/j/a;->a(Landroid/content/Context;I)V

    return-void
.end method
