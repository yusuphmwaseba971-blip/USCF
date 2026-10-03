.class final Lcom/anythink/basead/ui/BaseATView$4;
.super Lcom/anythink/core/common/o/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseATView;->a(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:I

.field final synthetic c:Lcom/anythink/basead/ui/BaseATView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/BaseATView;Ljava/lang/Runnable;I)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/anythink/basead/ui/BaseATView$4;->c:Lcom/anythink/basead/ui/BaseATView;

    iput-object p2, p0, Lcom/anythink/basead/ui/BaseATView$4;->a:Ljava/lang/Runnable;

    iput p3, p0, Lcom/anythink/basead/ui/BaseATView$4;->b:I

    invoke-direct {p0}, Lcom/anythink/core/common/o/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getImpressionMinTimeViewed()I
    .locals 1

    .line 320
    iget v0, p0, Lcom/anythink/basead/ui/BaseATView$4;->b:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x32

    return v0
.end method

.method public final recordImpression(Landroid/view/View;)V
    .locals 0

    .line 313
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseATView$4;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 314
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
