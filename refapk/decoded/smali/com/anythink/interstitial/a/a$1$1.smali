.class final Lcom/anythink/interstitial/a/a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/interstitial/a/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/interstitial/a/a$1;


# direct methods
.method constructor <init>(Lcom/anythink/interstitial/a/a$1;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/anythink/interstitial/a/a$1$1;->a:Lcom/anythink/interstitial/a/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/anythink/interstitial/a/a$1$1;->a:Lcom/anythink/interstitial/a/a$1;

    iget-object v0, v0, Lcom/anythink/interstitial/a/a$1;->i:Lcom/anythink/interstitial/a/a;

    iget-object v1, p0, Lcom/anythink/interstitial/a/a$1$1;->a:Lcom/anythink/interstitial/a/a$1;

    iget-object v1, v1, Lcom/anythink/interstitial/a/a$1;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/anythink/interstitial/a/a;->a(Lcom/anythink/interstitial/a/a;Landroid/app/Activity;)V

    return-void
.end method
