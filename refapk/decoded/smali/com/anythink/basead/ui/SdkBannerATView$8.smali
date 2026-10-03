.class final Lcom/anythink/basead/ui/SdkBannerATView$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/ui/SdkBannerATView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/SdkBannerATView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/SdkBannerATView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/anythink/basead/ui/SdkBannerATView$8;->a:Lcom/anythink/basead/ui/SdkBannerATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/anythink/basead/ui/SdkBannerATView$8;->a:Lcom/anythink/basead/ui/SdkBannerATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/SdkBannerATView;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/SdkBannerATView$8;->a:Lcom/anythink/basead/ui/SdkBannerATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/SdkBannerATView;->s:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/anythink/basead/ui/SdkBannerATView$8;->a:Lcom/anythink/basead/ui/SdkBannerATView;

    invoke-static {p1}, Lcom/anythink/basead/ui/SdkBannerATView;->d(Lcom/anythink/basead/ui/SdkBannerATView;)V

    return-void

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/SdkBannerATView$8;->a:Lcom/anythink/basead/ui/SdkBannerATView;

    invoke-static {p1}, Lcom/anythink/basead/ui/SdkBannerATView;->e(Lcom/anythink/basead/ui/SdkBannerATView;)V

    return-void
.end method
