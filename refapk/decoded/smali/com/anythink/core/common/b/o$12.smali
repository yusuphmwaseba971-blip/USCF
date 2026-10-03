.class final Lcom/anythink/core/common/b/o$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/o;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/b/o;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/o;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/anythink/core/common/b/o$12;->a:Lcom/anythink/core/common/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 796
    iget-object v0, p0, Lcom/anythink/core/common/b/o$12;->a:Lcom/anythink/core/common/b/o;

    invoke-static {v0}, Lcom/anythink/core/common/b/o;->b(Lcom/anythink/core/common/b/o;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "There is a problem with the integrated resources of AnyThink SDK, please check whether you have followed the steps of the integration document."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
