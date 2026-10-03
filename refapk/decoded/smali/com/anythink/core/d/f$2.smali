.class final Lcom/anythink/core/d/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/d/f;->a(Ljava/lang/Object;Lcom/anythink/core/common/f/al;Lcom/anythink/core/d/f$c;[ZLcom/anythink/core/d/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/d/e;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/anythink/core/d/f;


# direct methods
.method constructor <init>(Lcom/anythink/core/d/f;Lcom/anythink/core/d/e;Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/anythink/core/d/f$2;->c:Lcom/anythink/core/d/f;

    iput-object p2, p0, Lcom/anythink/core/d/f$2;->a:Lcom/anythink/core/d/e;

    iput-object p3, p0, Lcom/anythink/core/d/f$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/anythink/core/d/f$2;->c:Lcom/anythink/core/d/f;

    invoke-static {v0}, Lcom/anythink/core/d/f;->a(Lcom/anythink/core/d/f;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/d/f$2;->a:Lcom/anythink/core/d/e;

    invoke-static {v0, v1}, Lcom/anythink/core/d/f;->a(Landroid/content/Context;Lcom/anythink/core/d/e;)V

    .line 316
    iget-object v0, p0, Lcom/anythink/core/d/f$2;->a:Lcom/anythink/core/d/e;

    invoke-virtual {v0}, Lcom/anythink/core/d/e;->X()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 317
    invoke-static {}, Lcom/anythink/core/common/r;->a()Lcom/anythink/core/common/r;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/d/f$2;->c:Lcom/anythink/core/d/f;

    invoke-static {v1}, Lcom/anythink/core/d/f;->a(Lcom/anythink/core/d/f;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/d/f$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/r;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
