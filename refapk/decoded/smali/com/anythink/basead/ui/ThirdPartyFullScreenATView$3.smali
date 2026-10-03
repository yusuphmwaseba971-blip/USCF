.class final Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;I)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;->b:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iput p2, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 185
    iget v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;->a:I

    mul-int/lit16 v0, v0, 0x3e8

    .line 186
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;->b:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->P:Lcom/anythink/basead/ui/CountDownView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;->b:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->P:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/CountDownView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;->b:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iget-object v1, v1, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->P:Lcom/anythink/basead/ui/CountDownView;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/anythink/basead/ui/CountDownView;->refresh(J)V

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;->b:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iget v1, v1, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->C:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;->b:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iget v1, v1, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->C:I

    if-lt v0, v1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$3;->b:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->J()V

    :cond_1
    return-void
.end method
