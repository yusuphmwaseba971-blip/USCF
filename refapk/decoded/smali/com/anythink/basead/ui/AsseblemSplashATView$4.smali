.class final Lcom/anythink/basead/ui/AsseblemSplashATView$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/AsseblemSplashATView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/AsseblemSplashATView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/AsseblemSplashATView;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$4;->a:Lcom/anythink/basead/ui/AsseblemSplashATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$4;->a:Lcom/anythink/basead/ui/AsseblemSplashATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/AsseblemSplashATView;->H:Lcom/anythink/basead/e/a;

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$4;->a:Lcom/anythink/basead/ui/AsseblemSplashATView;

    invoke-static {v0}, Lcom/anythink/basead/ui/AsseblemSplashATView;->a(Lcom/anythink/basead/ui/AsseblemSplashATView;)V

    return-void
.end method
