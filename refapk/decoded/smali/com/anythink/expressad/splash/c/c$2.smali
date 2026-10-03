.class final Lcom/anythink/expressad/splash/c/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/splash/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/splash/c/c;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/splash/c/c;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/anythink/expressad/splash/c/c$2;->a:Lcom/anythink/expressad/splash/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c$2;->a:Lcom/anythink/expressad/splash/c/c;

    invoke-static {v0}, Lcom/anythink/expressad/splash/c/c;->a(Lcom/anythink/expressad/splash/c/c;)Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c$2;->a:Lcom/anythink/expressad/splash/c/c;

    invoke-static {v1}, Lcom/anythink/expressad/splash/c/c;->b(Lcom/anythink/expressad/splash/c/c;)I

    const-string v1, "load timeout"

    invoke-static {v0, v1}, Lcom/anythink/expressad/splash/c/c;->a(Lcom/anythink/expressad/splash/c/c;Ljava/lang/String;)V

    return-void
.end method
