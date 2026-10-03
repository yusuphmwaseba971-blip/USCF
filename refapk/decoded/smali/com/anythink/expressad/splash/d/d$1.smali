.class final Lcom/anythink/expressad/splash/d/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/splash/d/d;-><init>(Lcom/anythink/expressad/splash/d/c;Lcom/anythink/expressad/out/e;DLcom/anythink/expressad/foundation/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/splash/d/d;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/splash/d/d;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/anythink/expressad/splash/d/d$1;->a:Lcom/anythink/expressad/splash/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/anythink/expressad/splash/d/d$1;->a:Lcom/anythink/expressad/splash/d/d;

    const-string v1, "show timeout!"

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/d/d;->a(Ljava/lang/String;)V

    return-void
.end method
