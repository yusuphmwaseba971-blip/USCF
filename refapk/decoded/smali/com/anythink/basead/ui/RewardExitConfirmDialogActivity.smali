.class public Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;
.super Landroid/app/Activity;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static c:Ljava/lang/Runnable; = null

.field private static d:Ljava/lang/String; = null

.field private static e:I = 0x1


# instance fields
.field private f:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/Runnable;
    .locals 1

    .line 22
    sget-object v0, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;I)V
    .locals 0

    .line 33
    sput-object p1, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->d:Ljava/lang/String;

    .line 34
    sput-object p2, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->c:Ljava/lang/Runnable;

    .line 35
    sput p3, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->e:I

    .line 36
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private b()V
    .locals 10

    const-string v0, "id"

    const-string v1, "string"

    .line 51
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const-string v3, "myoffer_confirm_dialog"

    const-string v4, "layout"

    invoke-static {p0, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const-string v3, "myoffer_confirm_msg"

    .line 53
    invoke-static {p0, v3, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "myoffer_confirm_give_up"

    .line 54
    invoke-static {p0, v4, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v6, "myoffer_confirm_continue"

    .line 55
    invoke-static {p0, v6, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    invoke-virtual {p0}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "myoffer_reward_exit_confirm_give_up"

    .line 58
    invoke-static {p0, v7, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 57
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    sget v6, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->e:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v6, v7, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "myoffer_reward_exit_confirm_msg"

    .line 74
    invoke-static {p0, v7, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    new-array v8, v8, [Ljava/lang/Object;

    sget-object v9, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->d:Ljava/lang/String;

    aput-object v9, v8, v5

    .line 73
    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p0}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v6, "myoffer_reward_exit_confirm_continue"

    .line 78
    invoke-static {p0, v6, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 77
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "myoffer_anim_reward_exit_confirm_msg"

    .line 63
    invoke-static {p0, v7, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    new-array v8, v8, [Ljava/lang/Object;

    sget-object v9, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->d:Ljava/lang/String;

    aput-object v9, v8, v5

    .line 62
    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v6, "myoffer_anim_reward_exit_confirm_continue"

    .line 68
    invoke-static {p0, v6, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 67
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_0
    new-instance v1, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity$1;-><init>(Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v1, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity$2;-><init>(Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "style_full_screen_translucent_dialog"

    const-string v3, "style"

    invoke-static {p0, v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->f:Landroid/app/Dialog;

    .line 104
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->f:Landroid/app/Dialog;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 107
    iget-object v0, p0, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 110
    :catchall_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "id"

    const-string v1, "string"

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1051
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v2, "myoffer_confirm_dialog"

    const-string v3, "layout"

    invoke-static {p0, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v2, "myoffer_confirm_msg"

    .line 1053
    invoke-static {p0, v2, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "myoffer_confirm_give_up"

    .line 1054
    invoke-static {p0, v3, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v5, "myoffer_confirm_continue"

    .line 1055
    invoke-static {p0, v5, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1057
    invoke-virtual {p0}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "myoffer_reward_exit_confirm_give_up"

    .line 1058
    invoke-static {p0, v6, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1057
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    sget v5, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->e:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v6, :cond_0

    .line 1073
    invoke-virtual {p0}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "myoffer_reward_exit_confirm_msg"

    .line 1074
    invoke-static {p0, v6, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->d:Ljava/lang/String;

    aput-object v8, v7, v4

    .line 1073
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    invoke-virtual {p0}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v5, "myoffer_reward_exit_confirm_continue"

    .line 1078
    invoke-static {p0, v5, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1077
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1062
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "myoffer_anim_reward_exit_confirm_msg"

    .line 1063
    invoke-static {p0, v6, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->d:Ljava/lang/String;

    aput-object v8, v7, v4

    .line 1062
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    invoke-virtual {p0}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v5, "myoffer_anim_reward_exit_confirm_continue"

    .line 1068
    invoke-static {p0, v5, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1067
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    :goto_0
    new-instance v1, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity$1;-><init>(Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    new-instance v1, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity$2;-><init>(Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1103
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "style_full_screen_translucent_dialog"

    const-string v2, "style"

    invoke-static {p0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->f:Landroid/app/Dialog;

    .line 1104
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1105
    iget-object p1, p0, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->f:Landroid/app/Dialog;

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1107
    iget-object p1, p0, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->f:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1110
    :catchall_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->f:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 129
    iput-object v1, p0, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->f:Landroid/app/Dialog;

    .line 132
    :cond_0
    sput-object v1, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->c:Ljava/lang/Runnable;

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 121
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
