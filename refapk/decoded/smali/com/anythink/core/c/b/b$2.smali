.class final Lcom/anythink/core/c/b/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/c/b/b;->a(Lcom/anythink/core/common/f/at;Lcom/anythink/core/common/f/au;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/at;

.field final synthetic b:Lcom/anythink/core/common/f/au;

.field final synthetic c:Lcom/anythink/core/c/b/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/c/b/b;Lcom/anythink/core/common/f/at;Lcom/anythink/core/common/f/au;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/anythink/core/c/b/b$2;->c:Lcom/anythink/core/c/b/b;

    iput-object p2, p0, Lcom/anythink/core/c/b/b$2;->a:Lcom/anythink/core/common/f/at;

    iput-object p3, p0, Lcom/anythink/core/c/b/b$2;->b:Lcom/anythink/core/common/f/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/anythink/core/c/b/b$2;->c:Lcom/anythink/core/c/b/b;

    invoke-static {v0}, Lcom/anythink/core/c/b/b;->a(Lcom/anythink/core/c/b/b;)Lcom/anythink/core/c/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/b/b$2;->a:Lcom/anythink/core/common/f/at;

    iget-object v2, p0, Lcom/anythink/core/c/b/b$2;->b:Lcom/anythink/core/common/f/au;

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/c/b/a;->a(Lcom/anythink/core/common/f/at;Lcom/anythink/core/common/f/au;)V

    return-void
.end method
