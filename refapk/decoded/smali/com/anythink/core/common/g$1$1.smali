.class final Lcom/anythink/core/common/g$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/g$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/g$1;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/g$1;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/anythink/core/common/g$1$1;->a:Lcom/anythink/core/common/g$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/anythink/core/common/g$1$1;->a:Lcom/anythink/core/common/g$1;

    iget-object v0, v0, Lcom/anythink/core/common/g$1;->a:Lcom/anythink/core/common/g;

    invoke-virtual {v0}, Lcom/anythink/core/common/g;->a()V

    return-void
.end method
