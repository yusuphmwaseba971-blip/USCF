.class final Lcom/anythink/expressad/video/module/AnythinkVastEndCardView$2;
.super Lcom/anythink/expressad/widget/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVastEndCardView$2;->a:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    invoke-direct {p0}, Lcom/anythink/expressad/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 2

    .line 63
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVastEndCardView$2;->a:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    iget-object p1, p1, Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;->e:Lcom/anythink/expressad/video/module/a/a;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVastEndCardView$2;->a:Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVastEndCardView;->d()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-interface {p1, v1, v0}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void
.end method
