.class final Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/expressad/video/dynview/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView$1;->a:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView$1;->a:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;->a(Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView$1;->a:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    .line 63
    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView$1;->a:Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;

    invoke-static {v0, p1, p2}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;->a(Lcom/anythink/expressad/video/dynview/widget/AnyThinkOrderCampView;Lcom/anythink/expressad/foundation/d/c;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method
