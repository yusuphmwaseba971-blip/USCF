.class final Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView$3;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 267
    iget-object p1, p0, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView$3;->a:Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/bt/module/AnythinkBTWebView;->close()V

    return-void
.end method
