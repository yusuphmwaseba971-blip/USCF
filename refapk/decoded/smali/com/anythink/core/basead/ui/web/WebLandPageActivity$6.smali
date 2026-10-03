.class final Lcom/anythink/core/basead/ui/web/WebLandPageActivity$6;
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

    .line 623
    iput-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$6;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 626
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 627
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$6;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    .line 628
    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->d(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/f/m;

    move-result-object p1

    iget-object v0, p1, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$6;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    .line 629
    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->d(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/f/m;

    move-result-object p1

    iget-object v1, p1, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$6;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    .line 630
    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->c(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/f/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->d()I

    move-result v2

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$6;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    .line 631
    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->c(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/f/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->s()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$6;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    iget-object v4, p1, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->b:Lorg/json/JSONArray;

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$6;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 627
    invoke-static/range {v0 .. v6}, Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;I)V

    .line 633
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$6;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->g(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    return-void
.end method
