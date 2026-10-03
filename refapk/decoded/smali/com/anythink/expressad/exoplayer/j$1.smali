.class final Lcom/anythink/expressad/exoplayer/j$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/exoplayer/j;-><init>([Lcom/anythink/expressad/exoplayer/y;Lcom/anythink/expressad/exoplayer/i/h;Lcom/anythink/expressad/exoplayer/p;Lcom/anythink/expressad/exoplayer/k/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/exoplayer/j;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/exoplayer/j;Landroid/os/Looper;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j$1;->a:Lcom/anythink/expressad/exoplayer/j;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j$1;->a:Lcom/anythink/expressad/exoplayer/j;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/j;->a(Landroid/os/Message;)V

    return-void
.end method
