.class final Lcom/anythink/core/basead/ui/web/WebLandPageActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->finish()V
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

    .line 610
    iput-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$7;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 613
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 614
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$7;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    .line 615
    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->d(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/f/m;

    move-result-object p1

    iget-object v0, p1, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$7;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    .line 616
    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->d(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/f/m;

    move-result-object p1

    iget-object v1, p1, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$7;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    .line 617
    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->c(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/f/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->d()I

    move-result v2

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$7;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    .line 618
    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->c(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/f/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->s()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$7;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    iget-object v4, p1, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->b:Lorg/json/JSONArray;

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$7;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 614
    invoke-static/range {v0 .. v6}, Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;I)V

    return-void
.end method
