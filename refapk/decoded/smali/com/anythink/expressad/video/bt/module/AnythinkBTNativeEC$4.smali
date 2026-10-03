.class final Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$4;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$4;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->d(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$4;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->a(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;I)V

    .line 321
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC$4;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;->a(Lcom/anythink/expressad/video/bt/module/AnythinkBTNativeEC;FF)V

    :cond_0
    return-void
.end method
