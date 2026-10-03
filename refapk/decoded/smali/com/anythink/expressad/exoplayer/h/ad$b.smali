.class final Lcom/anythink/expressad/exoplayer/h/ad$b;
.super Lcom/anythink/expressad/exoplayer/h/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/anythink/expressad/exoplayer/h/ad$a;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/ad$a;I)V
    .locals 0

    .line 315
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/k;-><init>()V

    .line 316
    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/ad$a;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/ad$b;->a:Lcom/anythink/expressad/exoplayer/h/ad$a;

    .line 317
    iput p2, p0, Lcom/anythink/expressad/exoplayer/h/ad$b;->b:I

    return-void
.end method


# virtual methods
.method public final a(ILcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;Ljava/io/IOException;Z)V
    .locals 0

    return-void
.end method
