.class Lcom/bnminfo/bibliatakatifu/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bnminfo/bibliatakatifu/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bnminfo/bibliatakatifu/SplashActivity;


# direct methods
.method constructor <init>(Lcom/bnminfo/bibliatakatifu/SplashActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity$1;->this$0:Lcom/bnminfo/bibliatakatifu/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 78
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity$1;->this$0:Lcom/bnminfo/bibliatakatifu/SplashActivity;

    invoke-static {p1}, Lcom/bnminfo/bibliatakatifu/SplashActivity;->access$000(Lcom/bnminfo/bibliatakatifu/SplashActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity$1;->this$0:Lcom/bnminfo/bibliatakatifu/SplashActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity$1;->this$0:Lcom/bnminfo/bibliatakatifu/SplashActivity;

    const-class v2, Lcom/bnminfo/bibliatakatifu/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/bnminfo/bibliatakatifu/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 81
    iget-object p1, p0, Lcom/bnminfo/bibliatakatifu/SplashActivity$1;->this$0:Lcom/bnminfo/bibliatakatifu/SplashActivity;

    invoke-static {p1}, Lcom/bnminfo/bibliatakatifu/SplashActivity;->access$100(Lcom/bnminfo/bibliatakatifu/SplashActivity;)V

    :cond_0
    return-void
.end method
