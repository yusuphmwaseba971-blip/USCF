.class final Lcom/anythink/basead/f/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/a/b/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/f/c;->a(Lcom/anythink/basead/e/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/e/c;

.field final synthetic b:Lcom/anythink/basead/f/c;


# direct methods
.method constructor <init>(Lcom/anythink/basead/f/c;Lcom/anythink/basead/e/c;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/anythink/basead/f/c$1;->b:Lcom/anythink/basead/f/c;

    iput-object p2, p0, Lcom/anythink/basead/f/c$1;->a:Lcom/anythink/basead/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/anythink/basead/f/c$1;->a:Lcom/anythink/basead/e/c;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Lcom/anythink/basead/e/c;->onAdCacheLoaded()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/e;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/anythink/basead/f/c$1;->a:Lcom/anythink/basead/e/c;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p1}, Lcom/anythink/basead/e/c;->onAdLoadFailed(Lcom/anythink/basead/c/e;)V

    :cond_0
    return-void
.end method
