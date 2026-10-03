.class final Lcom/anythink/core/common/n/c$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/n/c;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1917
    iput-object p1, p0, Lcom/anythink/core/common/n/c$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1920
    iget-object v0, p0, Lcom/anythink/core/common/n/c$6;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1923
    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/n/c$6;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/core/common/f/k;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/k;

    move-result-object v0

    .line 1925
    iget-object v1, v0, Lcom/anythink/core/common/f/k;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1926
    invoke-static {v0}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/k;)V

    :cond_1
    return-void
.end method
