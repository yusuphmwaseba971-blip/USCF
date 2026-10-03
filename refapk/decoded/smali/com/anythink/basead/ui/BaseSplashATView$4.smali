.class final Lcom/anythink/basead/ui/BaseSplashATView$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseSplashATView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/BaseSplashATView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/BaseSplashATView;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/anythink/basead/ui/BaseSplashATView$4;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseSplashATView$4;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseSplashATView;->I:Lcom/anythink/basead/ui/b;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/b;->c()V

    return-void
.end method
