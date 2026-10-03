.class final Lcom/anythink/expressad/exoplayer/l/h$a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/l/h$a;->a(Lcom/anythink/expressad/exoplayer/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/exoplayer/m;

.field final synthetic b:Lcom/anythink/expressad/exoplayer/l/h$a;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/exoplayer/l/h$a;Lcom/anythink/expressad/exoplayer/m;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/l/h$a$3;->b:Lcom/anythink/expressad/exoplayer/l/h$a;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/l/h$a$3;->a:Lcom/anythink/expressad/exoplayer/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/h$a$3;->b:Lcom/anythink/expressad/exoplayer/l/h$a;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/l/h$a;->a(Lcom/anythink/expressad/exoplayer/l/h$a;)Lcom/anythink/expressad/exoplayer/l/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/l/h$a$3;->a:Lcom/anythink/expressad/exoplayer/m;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/exoplayer/l/h;->a(Lcom/anythink/expressad/exoplayer/m;)V

    return-void
.end method
