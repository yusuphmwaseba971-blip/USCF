.class final Lcom/anythink/basead/a/b$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/a/b;->a(Ljava/lang/String;ILcom/anythink/basead/c/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/a/b;


# direct methods
.method constructor <init>(Lcom/anythink/basead/a/b;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcom/anythink/basead/a/b$8;->a:Lcom/anythink/basead/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/anythink/basead/a/b$8;->a:Lcom/anythink/basead/a/b;

    iget-object v0, v0, Lcom/anythink/basead/a/b;->aa:Lcom/anythink/basead/a/b$b;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/anythink/basead/a/b$8;->a:Lcom/anythink/basead/a/b;

    iget-object v0, v0, Lcom/anythink/basead/a/b;->aa:Lcom/anythink/basead/a/b$b;

    invoke-interface {v0}, Lcom/anythink/basead/a/b$b;->c()V

    :cond_0
    return-void
.end method
