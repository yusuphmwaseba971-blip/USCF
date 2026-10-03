.class final Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;Ljava/lang/String;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$13;->b:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    iput-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$13;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 382
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$13;->b:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    iget-object p1, p1, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$13;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/anythink/core/common/o/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
