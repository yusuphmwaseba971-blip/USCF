.class final Lcom/anythink/expressad/splash/c/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/expressad/splash/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/splash/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/splash/c/d;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/splash/c/d;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {v0}, Lcom/anythink/expressad/splash/c/d;->b(Lcom/anythink/expressad/splash/c/d;)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {v0}, Lcom/anythink/expressad/splash/c/d;->d(Lcom/anythink/expressad/splash/c/d;)Lcom/anythink/expressad/splash/view/ATSplashView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {v0}, Lcom/anythink/expressad/splash/c/d;->d(Lcom/anythink/expressad/splash/c/d;)Lcom/anythink/expressad/splash/view/ATSplashView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/splash/view/ATSplashView;->changeCloseBtnState(I)V

    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    iget-object v1, v1, Lcom/anythink/expressad/splash/c/d;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 256
    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {p1, p2}, Lcom/anythink/expressad/splash/c/d;->b(Lcom/anythink/expressad/splash/c/d;I)I

    .line 257
    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    iget-object p1, p1, Lcom/anythink/expressad/splash/c/d;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    iget-object p1, p1, Lcom/anythink/expressad/splash/c/d;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/splash/c/d;->a(Lcom/anythink/expressad/foundation/d/c;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {v0, p1}, Lcom/anythink/expressad/splash/c/d;->a(Lcom/anythink/expressad/splash/c/d;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 276
    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    iget-object p1, p1, Lcom/anythink/expressad/splash/c/d;->a:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {v0}, Lcom/anythink/expressad/splash/c/d;->i(Lcom/anythink/expressad/splash/c/d;)Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {v0, p1}, Lcom/anythink/expressad/splash/c/d;->b(Lcom/anythink/expressad/splash/c/d;I)I

    .line 243
    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    iget-object p1, p1, Lcom/anythink/expressad/splash/c/d;->a:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    iget-object p1, p1, Lcom/anythink/expressad/splash/c/d;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {v0}, Lcom/anythink/expressad/splash/c/d;->j(Lcom/anythink/expressad/splash/c/d;)Lcom/anythink/expressad/splash/d/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {p1}, Lcom/anythink/expressad/splash/c/d;->j(Lcom/anythink/expressad/splash/c/d;)Lcom/anythink/expressad/splash/d/d;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {v0}, Lcom/anythink/expressad/splash/c/d;->h(Lcom/anythink/expressad/splash/c/d;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/splash/d/d;->a(Lcom/anythink/expressad/foundation/d/c;)V

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    .line 291
    invoke-static {v0}, Lcom/anythink/expressad/splash/c/d;->h(Lcom/anythink/expressad/splash/c/d;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/d/c;->a(Lcom/anythink/expressad/foundation/d/c;)Lorg/json/JSONObject;

    move-result-object v0

    .line 290
    invoke-static {v0}, Lcom/anythink/expressad/foundation/d/c;->b(Lorg/json/JSONObject;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object v0

    .line 292
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/c;->p(Ljava/lang/String;)V

    .line 293
    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/splash/c/d;->a(Lcom/anythink/expressad/foundation/d/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 297
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {v0}, Lcom/anythink/expressad/splash/c/d;->i(Lcom/anythink/expressad/splash/c/d;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public final c()V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/anythink/expressad/splash/c/d$3;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {v0}, Lcom/anythink/expressad/splash/c/d;->b(Lcom/anythink/expressad/splash/c/d;)V

    return-void
.end method
