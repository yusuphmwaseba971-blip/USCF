.class final Lcom/anythink/core/b/b$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/b$1;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/b$1;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/anythink/core/b/b$1$1;->a:Lcom/anythink/core/b/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/anythink/core/b/b$1$1;->a:Lcom/anythink/core/b/b$1;

    iget-object v0, v0, Lcom/anythink/core/b/b$1;->a:Lcom/anythink/core/b/b;

    invoke-static {v0}, Lcom/anythink/core/b/b;->a(Lcom/anythink/core/b/b;)V

    return-void
.end method
