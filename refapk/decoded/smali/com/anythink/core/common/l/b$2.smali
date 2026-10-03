.class final Lcom/anythink/core/common/l/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/l/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/l/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/l/b;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/anythink/core/common/l/b$2;->a:Lcom/anythink/core/common/l/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/anythink/core/common/l/b$2;->a:Lcom/anythink/core/common/l/b;

    invoke-static {v0, p1}, Lcom/anythink/core/common/l/b;->a(Lcom/anythink/core/common/l/b;Lcom/anythink/core/api/AdError;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/anythink/core/common/l/b$2;->a:Lcom/anythink/core/common/l/b;

    invoke-static {v0}, Lcom/anythink/core/common/l/b;->b(Lcom/anythink/core/common/l/b;)V

    return-void
.end method
