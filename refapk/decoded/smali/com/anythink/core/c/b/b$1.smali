.class final Lcom/anythink/core/c/b/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/c/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/au;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/anythink/core/common/f/au;

.field final synthetic d:Lcom/anythink/core/c/b/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/c/b/b;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/au;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/anythink/core/c/b/b$1;->d:Lcom/anythink/core/c/b/b;

    iput-object p2, p0, Lcom/anythink/core/c/b/b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/c/b/b$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/c/b/b$1;->c:Lcom/anythink/core/common/f/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/anythink/core/c/b/b$1;->d:Lcom/anythink/core/c/b/b;

    invoke-static {v0}, Lcom/anythink/core/c/b/b;->a(Lcom/anythink/core/c/b/b;)Lcom/anythink/core/c/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/b/b$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/c/b/b$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/c/b/b$1;->c:Lcom/anythink/core/common/f/au;

    invoke-interface {v0, v1, v2, v3}, Lcom/anythink/core/c/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/au;)V

    return-void
.end method
