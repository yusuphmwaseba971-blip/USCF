.class final Lcom/anythink/core/common/o/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/o/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/anythink/core/common/o/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/anythink/core/common/o/c$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/anythink/core/common/o/c$a;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/anythink/core/common/o/c$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/anythink/core/common/o/c$1;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/anythink/core/common/o/c$1;->c:Lcom/anythink/core/common/o/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/anythink/core/common/o/c$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/core/common/o/c$1;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/common/o/c$1$1;

    invoke-direct {v2, p0, v0}, Lcom/anythink/core/common/o/c$1$1;-><init>(Lcom/anythink/core/common/o/c$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/o;->b(Ljava/lang/Runnable;)V

    return-void
.end method
