.class final Lcom/anythink/core/c/b/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/c/b/c;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/core/c/b/c;


# direct methods
.method constructor <init>(Lcom/anythink/core/c/b/c;Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/anythink/core/c/b/c$1;->b:Lcom/anythink/core/c/b/c;

    iput-object p2, p0, Lcom/anythink/core/c/b/c$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/anythink/core/c/b/c$1;->b:Lcom/anythink/core/c/b/c;

    invoke-static {v0}, Lcom/anythink/core/c/b/c;->a(Lcom/anythink/core/c/b/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/b/c$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/anythink/core/c/b/c$1;->b:Lcom/anythink/core/c/b/c;

    invoke-static {v0}, Lcom/anythink/core/c/b/c;->b(Lcom/anythink/core/c/b/c;)Lcom/anythink/core/c/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/b/c$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b/d;->a(Ljava/lang/String;)V

    return-void
.end method
