.class final Lcom/anythink/basead/ui/BaseScreenATView$5$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseScreenATView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/anythink/basead/ui/BaseScreenATView$5;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/BaseScreenATView$5;Ljava/util/List;)V
    .locals 0

    .line 1490
    iput-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView$5$2;->b:Lcom/anythink/basead/ui/BaseScreenATView$5;

    iput-object p2, p0, Lcom/anythink/basead/ui/BaseScreenATView$5$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1493
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$5$2;->b:Lcom/anythink/basead/ui/BaseScreenATView$5;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView$5;->a:Lcom/anythink/basead/ui/BaseScreenATView$a;

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView$5$2;->b:Lcom/anythink/basead/ui/BaseScreenATView$5;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView$5;->a:Lcom/anythink/basead/ui/BaseScreenATView$a;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView$5$2;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/anythink/basead/ui/BaseScreenATView$a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
