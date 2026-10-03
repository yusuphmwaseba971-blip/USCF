.class final Lcom/anythink/core/common/w$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/l/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/l/d;

.field final synthetic b:Lcom/anythink/core/common/w;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/w;Lcom/anythink/core/common/l/d;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/anythink/core/common/w$1;->b:Lcom/anythink/core/common/w;

    iput-object p2, p0, Lcom/anythink/core/common/w$1;->a:Lcom/anythink/core/common/l/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/anythink/core/common/w$1;->b:Lcom/anythink/core/common/w;

    iget-object v1, p0, Lcom/anythink/core/common/w$1;->a:Lcom/anythink/core/common/l/d;

    invoke-static {v0, v1}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/w;Lcom/anythink/core/common/l/d;)V

    return-void
.end method
