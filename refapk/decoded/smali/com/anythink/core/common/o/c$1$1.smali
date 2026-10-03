.class final Lcom/anythink/core/common/o/c$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/o/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/anythink/core/common/o/c$1;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/o/c$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/anythink/core/common/o/c$1$1;->b:Lcom/anythink/core/common/o/c$1;

    iput-object p2, p0, Lcom/anythink/core/common/o/c$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/anythink/core/common/o/c$1$1;->b:Lcom/anythink/core/common/o/c$1;

    iget-object v0, v0, Lcom/anythink/core/common/o/c$1;->c:Lcom/anythink/core/common/o/c$a;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/anythink/core/common/o/c$1$1;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/anythink/core/common/o/c$1$1;->b:Lcom/anythink/core/common/o/c$1;

    iget-object v0, v0, Lcom/anythink/core/common/o/c$1;->c:Lcom/anythink/core/common/o/c$a;

    iget-object v1, p0, Lcom/anythink/core/common/o/c$1$1;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/o/c$a;->a(Landroid/graphics/Bitmap;)V

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/o/c$1$1;->b:Lcom/anythink/core/common/o/c$1;

    iget-object v0, v0, Lcom/anythink/core/common/o/c$1;->c:Lcom/anythink/core/common/o/c$a;

    invoke-interface {v0}, Lcom/anythink/core/common/o/c$a;->a()V

    :cond_1
    return-void
.end method
