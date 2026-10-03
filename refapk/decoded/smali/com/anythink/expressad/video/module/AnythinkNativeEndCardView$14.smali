.class final Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$14;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 465
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$14;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->g(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 466
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$14;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->a(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;I)V

    :cond_0
    return-void
.end method
