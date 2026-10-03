.class final Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$5;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$5;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->j(Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;)Lcom/anythink/expressad/widget/FeedBackButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/widget/FeedBackButton;->setVisibility(I)V

    return-void
.end method
