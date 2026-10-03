.class final Lcom/anythink/network/facebook/FacebookATBaseNativeAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/MediaViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/facebook/FacebookATBaseNativeAd;


# direct methods
.method constructor <init>(Lcom/anythink/network/facebook/FacebookATBaseNativeAd;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd$1;->a:Lcom/anythink/network/facebook/FacebookATBaseNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/facebook/ads/MediaView;)V
    .locals 0

    .line 236
    iget-object p1, p0, Lcom/anythink/network/facebook/FacebookATBaseNativeAd$1;->a:Lcom/anythink/network/facebook/FacebookATBaseNativeAd;

    invoke-virtual {p1}, Lcom/anythink/network/facebook/FacebookATBaseNativeAd;->notifyAdVideoEnd()V

    return-void
.end method

.method public final onEnterFullscreen(Lcom/facebook/ads/MediaView;)V
    .locals 0

    return-void
.end method

.method public final onExitFullscreen(Lcom/facebook/ads/MediaView;)V
    .locals 0

    return-void
.end method

.method public final onFullscreenBackground(Lcom/facebook/ads/MediaView;)V
    .locals 0

    return-void
.end method

.method public final onFullscreenForeground(Lcom/facebook/ads/MediaView;)V
    .locals 0

    return-void
.end method

.method public final onPause(Lcom/facebook/ads/MediaView;)V
    .locals 0

    return-void
.end method

.method public final onPlay(Lcom/facebook/ads/MediaView;)V
    .locals 0

    return-void
.end method

.method public final onVolumeChange(Lcom/facebook/ads/MediaView;F)V
    .locals 0

    return-void
.end method
