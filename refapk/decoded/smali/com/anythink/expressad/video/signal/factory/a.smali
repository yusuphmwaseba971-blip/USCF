.class public Lcom/anythink/expressad/video/signal/factory/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/expressad/video/signal/factory/IJSFactory;


# instance fields
.field protected a:Lcom/anythink/expressad/video/signal/a;

.field protected b:Lcom/anythink/expressad/video/signal/c;

.field protected c:Lcom/anythink/expressad/video/signal/j;

.field protected d:Lcom/anythink/expressad/video/signal/g;

.field protected e:Lcom/anythink/expressad/video/signal/e;

.field protected f:Lcom/anythink/expressad/video/signal/i;

.field protected g:Lcom/anythink/expressad/video/signal/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityProxy()Lcom/anythink/expressad/video/signal/a;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->a:Lcom/anythink/expressad/video/signal/a;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/anythink/expressad/video/signal/a/a;

    invoke-direct {v0}, Lcom/anythink/expressad/video/signal/a/a;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->a:Lcom/anythink/expressad/video/signal/a;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->a:Lcom/anythink/expressad/video/signal/a;

    return-object v0
.end method

.method public getIJSRewardVideoV1()Lcom/anythink/expressad/video/signal/i;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->f:Lcom/anythink/expressad/video/signal/i;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/anythink/expressad/video/signal/a/f;

    invoke-direct {v0}, Lcom/anythink/expressad/video/signal/a/f;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->f:Lcom/anythink/expressad/video/signal/i;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->f:Lcom/anythink/expressad/video/signal/i;

    return-object v0
.end method

.method public getJSBTModule()Lcom/anythink/expressad/video/signal/b;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->g:Lcom/anythink/expressad/video/signal/b;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/anythink/expressad/video/signal/a/b;

    invoke-direct {v0}, Lcom/anythink/expressad/video/signal/a/b;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->g:Lcom/anythink/expressad/video/signal/b;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->g:Lcom/anythink/expressad/video/signal/b;

    return-object v0
.end method

.method public getJSCommon()Lcom/anythink/expressad/video/signal/c;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->b:Lcom/anythink/expressad/video/signal/c;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/anythink/expressad/video/signal/a/c;

    invoke-direct {v0}, Lcom/anythink/expressad/video/signal/a/c;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->b:Lcom/anythink/expressad/video/signal/c;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->b:Lcom/anythink/expressad/video/signal/c;

    return-object v0
.end method

.method public getJSContainerModule()Lcom/anythink/expressad/video/signal/e;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->e:Lcom/anythink/expressad/video/signal/e;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/anythink/expressad/video/signal/a/d;

    invoke-direct {v0}, Lcom/anythink/expressad/video/signal/a/d;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->e:Lcom/anythink/expressad/video/signal/e;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->e:Lcom/anythink/expressad/video/signal/e;

    return-object v0
.end method

.method public getJSNotifyProxy()Lcom/anythink/expressad/video/signal/g;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->d:Lcom/anythink/expressad/video/signal/g;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/anythink/expressad/video/signal/a/e;

    invoke-direct {v0}, Lcom/anythink/expressad/video/signal/a/e;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->d:Lcom/anythink/expressad/video/signal/g;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->d:Lcom/anythink/expressad/video/signal/g;

    return-object v0
.end method

.method public getJSVideoModule()Lcom/anythink/expressad/video/signal/j;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->c:Lcom/anythink/expressad/video/signal/j;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/anythink/expressad/video/signal/a/g;

    invoke-direct {v0}, Lcom/anythink/expressad/video/signal/a/g;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->c:Lcom/anythink/expressad/video/signal/j;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/factory/a;->c:Lcom/anythink/expressad/video/signal/j;

    return-object v0
.end method
