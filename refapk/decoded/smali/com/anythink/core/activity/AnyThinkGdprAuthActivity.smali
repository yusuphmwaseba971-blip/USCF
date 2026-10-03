.class public Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;
.super Landroid/app/Activity;


# static fields
.field public static mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/anythink/core/activity/component/PrivacyPolicyView;

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->c:Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->c:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {}, Lcom/anythink/core/common/h;->a()Lcom/anythink/core/common/h;

    invoke-static {}, Lcom/anythink/core/common/h;->l()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->a:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x6

    .line 36
    invoke-virtual {p0, p1}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    .line 38
    invoke-virtual {p0, p1}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->setRequestedOrientation(I)V

    .line 41
    :goto_0
    :try_start_0
    new-instance p1, Lcom/anythink/core/activity/component/PrivacyPolicyView;

    invoke-direct {p1, p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->b:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    .line 42
    new-instance v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity$1;-><init>(Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;)V

    invoke-virtual {p1, v0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->setResultCallbackListener(Lcom/anythink/core/activity/component/PrivacyPolicyView$a;)V

    .line 65
    iget-object p1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->b:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    invoke-virtual {p0, p1}, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->setContentView(Landroid/view/View;)V

    .line 66
    iget-object p1, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->b:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    iget-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->loadPolicyUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->b:Lcom/anythink/core/activity/component/PrivacyPolicyView;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->destory()V

    :cond_0
    const/4 v0, 0x0

    .line 87
    sput-object v0, Lcom/anythink/core/activity/AnyThinkGdprAuthActivity;->mCallback:Lcom/anythink/core/api/ATGDPRAuthCallback;

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
