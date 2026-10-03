.class final Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$5;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 295
    iget-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$5;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iget-object p1, p1, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->ad:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$5;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iget-object p1, p1, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$5;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    invoke-static {p1}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->c(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;)Lcom/anythink/core/api/BaseAd;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$5;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iget-boolean v0, p1, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->I:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->I:Z

    .line 301
    iget-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$5;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iget-object p1, p1, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$5;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iget-boolean v0, v0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->I:Z

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/MuteImageView;->setMute(Z)V

    .line 302
    iget-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$5;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    invoke-static {p1}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->c(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;)Lcom/anythink/core/api/BaseAd;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$5;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iget-boolean v0, v0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->I:Z

    invoke-virtual {p1, v0}, Lcom/anythink/core/api/BaseAd;->setVideoMute(Z)V

    :cond_1
    :goto_0
    return-void
.end method
