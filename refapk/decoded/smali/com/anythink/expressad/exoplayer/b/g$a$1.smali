.class final Lcom/anythink/expressad/exoplayer/b/g$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/b/g$a;->a(Lcom/anythink/expressad/exoplayer/c/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/exoplayer/c/d;

.field final synthetic b:Lcom/anythink/expressad/exoplayer/b/g$a;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/exoplayer/b/g$a;Lcom/anythink/expressad/exoplayer/c/d;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/g$a$1;->b:Lcom/anythink/expressad/exoplayer/b/g$a;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/b/g$a$1;->a:Lcom/anythink/expressad/exoplayer/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/g$a$1;->b:Lcom/anythink/expressad/exoplayer/b/g$a;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/b/g$a;->a(Lcom/anythink/expressad/exoplayer/b/g$a;)Lcom/anythink/expressad/exoplayer/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/b/g$a$1;->a:Lcom/anythink/expressad/exoplayer/c/d;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/exoplayer/b/g;->c(Lcom/anythink/expressad/exoplayer/c/d;)V

    return-void
.end method
