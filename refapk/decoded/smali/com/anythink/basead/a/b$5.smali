.class final Lcom/anythink/basead/a/b$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/b;->b(Lcom/anythink/basead/c/i;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/anythink/basead/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/basead/a/b;Z)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/anythink/basead/a/b$5;->b:Lcom/anythink/basead/a/b;

    iput-boolean p2, p0, Lcom/anythink/basead/a/b$5;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/anythink/basead/a/b$5;->b:Lcom/anythink/basead/a/b;

    iget-object v0, v0, Lcom/anythink/basead/a/b;->aa:Lcom/anythink/basead/a/b$b;

    if-eqz v0, :cond_0

    .line 382
    iget-boolean v0, p0, Lcom/anythink/basead/a/b$5;->a:Z

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/anythink/basead/a/b$5;->b:Lcom/anythink/basead/a/b;

    iget-object v0, v0, Lcom/anythink/basead/a/b;->aa:Lcom/anythink/basead/a/b$b;

    invoke-interface {v0}, Lcom/anythink/basead/a/b$b;->b()V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/a/b$5;->b:Lcom/anythink/basead/a/b;

    iget-object v0, v0, Lcom/anythink/basead/a/b;->aa:Lcom/anythink/basead/a/b$b;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/anythink/basead/a/b$5;->b:Lcom/anythink/basead/a/b;

    iget-object v0, v0, Lcom/anythink/basead/a/b;->aa:Lcom/anythink/basead/a/b$b;

    invoke-interface {v0}, Lcom/anythink/basead/a/b$b;->c()V

    :cond_1
    return-void
.end method
