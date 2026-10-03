.class final Lcom/anythink/core/basead/ui/web/WebLandPageActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->onWebPageLoadError(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;


# direct methods
.method constructor <init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$1;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 292
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$1;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/o/w;->a(Landroid/view/View;)V

    .line 293
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$1;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->b(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 294
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$1;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->b(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    :cond_0
    return-void
.end method
