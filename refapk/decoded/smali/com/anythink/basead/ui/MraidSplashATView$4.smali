.class final Lcom/anythink/basead/ui/MraidSplashATView$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/MraidSplashATView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/MraidSplashATView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/MraidSplashATView;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/anythink/basead/ui/MraidSplashATView$4;->a:Lcom/anythink/basead/ui/MraidSplashATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidSplashATView$4;->a:Lcom/anythink/basead/ui/MraidSplashATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/MraidSplashATView;->H:Lcom/anythink/basead/e/a;

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/MraidSplashATView$4;->a:Lcom/anythink/basead/ui/MraidSplashATView;

    invoke-static {v0}, Lcom/anythink/basead/ui/MraidSplashATView;->b(Lcom/anythink/basead/ui/MraidSplashATView;)V

    return-void
.end method
