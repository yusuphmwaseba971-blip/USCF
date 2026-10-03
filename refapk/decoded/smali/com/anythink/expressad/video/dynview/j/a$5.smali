.class final Lcom/anythink/expressad/video/dynview/j/a$5;
.super Lcom/anythink/expressad/widget/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/anythink/expressad/video/dynview/j/a;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/video/dynview/j/a;Ljava/util/Map;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/j/a$5;->b:Lcom/anythink/expressad/video/dynview/j/a;

    iput-object p2, p0, Lcom/anythink/expressad/video/dynview/j/a$5;->a:Ljava/util/Map;

    invoke-direct {p0}, Lcom/anythink/expressad/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 1

    .line 481
    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/j/a$5;->b:Lcom/anythink/expressad/video/dynview/j/a;

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/j/a;->e(Lcom/anythink/expressad/video/dynview/j/a;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 482
    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/j/a$5;->b:Lcom/anythink/expressad/video/dynview/j/a;

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/j/a;->f(Lcom/anythink/expressad/video/dynview/j/a;)Z

    .line 483
    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/j/a$5;->b:Lcom/anythink/expressad/video/dynview/j/a;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a$5;->a:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/anythink/expressad/video/dynview/j/a;->a(Lcom/anythink/expressad/video/dynview/j/a;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
