.class final Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/expressad/video/dynview/f/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;->createView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;Landroid/view/ViewGroup;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView$2;->b:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    iput-object p2, p0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView$2;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/video/dynview/a;)V
    .locals 2

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView$2;->b:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;->b(Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;)Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/expressad/video/dynview/a;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;->addView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView$2;->b:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/dynview/a;->c()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;->a(Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;Z)Z

    .line 110
    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView$2;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 111
    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView$2;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView$2;->b:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;->b(Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;)Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView$2;->b:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;->setViewStatus()V

    .line 115
    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView$2;->b:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;->c(Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;)Lcom/anythink/expressad/video/dynview/f/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView$2;->b:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;->c(Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;)Lcom/anythink/expressad/video/dynview/f/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/video/dynview/f/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/anythink/expressad/video/dynview/c/b;)V
    .locals 0

    .line 128
    :try_start_0
    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView$2;->b:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;->c(Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;)Lcom/anythink/expressad/video/dynview/f/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView$2;->b:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;->c(Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;)Lcom/anythink/expressad/video/dynview/f/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/video/dynview/f/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method
