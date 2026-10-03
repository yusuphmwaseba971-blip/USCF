.class final Lcom/anythink/basead/d/f$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/f$1;->a(Lcom/anythink/expressad/foundation/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/foundation/d/c;

.field final synthetic b:Lcom/anythink/basead/d/f$1;


# direct methods
.method constructor <init>(Lcom/anythink/basead/d/f$1;Lcom/anythink/expressad/foundation/d/c;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/anythink/basead/d/f$1$1;->b:Lcom/anythink/basead/d/f$1;

    iput-object p2, p0, Lcom/anythink/basead/d/f$1$1;->a:Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/anythink/basead/d/f$1$1;->b:Lcom/anythink/basead/d/f$1;

    iget-object v0, v0, Lcom/anythink/basead/d/f$1;->b:Lcom/anythink/basead/d/f;

    iget-object v1, p0, Lcom/anythink/basead/d/f$1$1;->a:Lcom/anythink/expressad/foundation/d/c;

    iget-object v2, p0, Lcom/anythink/basead/d/f$1$1;->b:Lcom/anythink/basead/d/f$1;

    iget-object v2, v2, Lcom/anythink/basead/d/f$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/d/f;->a(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V

    return-void
.end method
