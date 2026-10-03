.class final Lcom/anythink/core/common/o/a/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/o/a/f;-><init>(Ljava/util/Map;Lcom/anythink/core/common/o/a/f$b;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/o/a/f;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/o/a/f;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/anythink/core/common/o/a/f$1;->a:Lcom/anythink/core/common/o/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/anythink/core/common/o/a/f$1;->a:Lcom/anythink/core/common/o/a/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/o/a/f;->c()V

    const/4 v0, 0x1

    return v0
.end method
