.class public abstract Lcom/anythink/expressad/activity/ATBaseActivity;
.super Landroid/app/Activity;


# static fields
.field private static final a:Ljava/lang/String; = "ATBaseActivity"


# instance fields
.field private b:Landroid/view/OrientationEventListener;

.field private c:Landroid/view/Display;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->d:I

    return-void
.end method

.method static synthetic a(Lcom/anythink/expressad/activity/ATBaseActivity;)I
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->d()I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/anythink/expressad/activity/ATBaseActivity;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->d:I

    return p1
.end method

.method static synthetic b(Lcom/anythink/expressad/activity/ATBaseActivity;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->d:I

    return p0
.end method

.method private b()V
    .locals 2

    .line 71
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mCalled"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 76
    :catchall_0
    invoke-virtual {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->finish()V

    return-void
.end method

.method static synthetic c(Lcom/anythink/expressad/activity/ATBaseActivity;)Landroid/view/OrientationEventListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 160
    new-instance v0, Lcom/anythink/expressad/activity/ATBaseActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/anythink/expressad/activity/ATBaseActivity$2;-><init>(Lcom/anythink/expressad/activity/ATBaseActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    .line 199
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    return-void
.end method

.method private d()I
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->c:Landroid/view/Display;

    if-nez v0, :cond_1

    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->c:Landroid/view/Display;

    goto :goto_0

    :cond_0
    const-string v0, "window"

    .line 212
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/activity/ATBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->c:Landroid/view/Display;

    .line 216
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->c:Landroid/view/Display;

    if-eqz v0, :cond_2

    .line 218
    :try_start_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method static synthetic d(Lcom/anythink/expressad/activity/ATBaseActivity;)V
    .locals 1

    .line 1160
    new-instance v0, Lcom/anythink/expressad/activity/ATBaseActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/anythink/expressad/activity/ATBaseActivity$2;-><init>(Lcom/anythink/expressad/activity/ATBaseActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    .line 1199
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    iget-object p0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    return-void

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    .line 1203
    iput-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    return-void
.end method

.method private e()V
    .locals 2

    .line 228
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 231
    invoke-virtual {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 96
    invoke-virtual {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/activity/ATBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/activity/ATBaseActivity$1;-><init>(Lcom/anythink/expressad/activity/ATBaseActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public abstract a(IIIII)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 33
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/anythink/expressad/activity/ATBaseActivity;->requestWindowFeature(I)Z

    .line 34
    invoke-virtual {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 35
    invoke-virtual {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 37
    invoke-direct {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->e()V

    .line 38
    invoke-direct {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->d()I

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 42
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 43
    invoke-virtual {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 89
    iget-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/anythink/expressad/activity/ATBaseActivity;->b:Landroid/view/OrientationEventListener;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 55
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1071
    :catchall_0
    :try_start_1
    const-class v0, Landroid/app/Activity;

    const-string v1, "mCalled"

    .line 1072
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 1073
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1074
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1076
    :catchall_1
    invoke-virtual {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->finish()V

    goto :goto_0

    .line 60
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    :goto_0
    sget-boolean v0, Lcom/anythink/expressad/foundation/f/b;->c:Z

    if-eqz v0, :cond_1

    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->a()V

    .line 66
    invoke-direct {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->e()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 83
    invoke-direct {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->e()V

    return-void
.end method
