.class final Lcom/anythink/core/common/a/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/a/c;->c(Lcom/anythink/core/common/f/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/f/j;

.field final synthetic b:Lcom/anythink/core/common/a/c;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/a/c;Lcom/anythink/core/common/f/j;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/anythink/core/common/a/c$4;->b:Lcom/anythink/core/common/a/c;

    iput-object p2, p0, Lcom/anythink/core/common/a/c$4;->a:Lcom/anythink/core/common/f/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "insertDspOfferInstallRecord dspOfferId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/a/c$4;->a:Lcom/anythink/core/common/f/j;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/j;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    new-instance v0, Lcom/anythink/core/common/a/f;

    invoke-direct {v0}, Lcom/anythink/core/common/a/f;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/anythink/core/common/a/c$4;->a:Lcom/anythink/core/common/f/j;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/j;->Z()Ljava/lang/String;

    move-result-object v1

    .line 1012
    iput-object v1, v0, Lcom/anythink/core/common/a/e;->a:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/anythink/core/common/a/c$4;->a:Lcom/anythink/core/common/f/j;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/j;->aa()Ljava/lang/String;

    move-result-object v1

    .line 1020
    iput-object v1, v0, Lcom/anythink/core/common/a/e;->b:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/anythink/core/common/a/c$4;->a:Lcom/anythink/core/common/f/j;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/j;->E()Ljava/lang/String;

    move-result-object v1

    .line 2012
    iput-object v1, v0, Lcom/anythink/core/common/a/f;->c:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/anythink/core/common/a/c$4;->b:Lcom/anythink/core/common/a/c;

    invoke-static {v1}, Lcom/anythink/core/common/a/c;->b(Lcom/anythink/core/common/a/c;)Lcom/anythink/core/common/c/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/c/e;->a(Lcom/anythink/core/common/a/f;)J

    return-void
.end method
