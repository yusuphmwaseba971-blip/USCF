.class public Lcom/anythink/expressad/splash/view/ATSplashNativeView;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static final a:Ljava/lang/String; = "MBSplashNativeView"


# instance fields
.field private A:I

.field private B:I

.field private C:F

.field private D:F

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Lcom/anythink/expressad/splash/view/ATSplashView;

.field private M:Lcom/anythink/expressad/foundation/d/c;

.field private N:Lcom/anythink/expressad/shake/MBShakeView;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Lcom/anythink/expressad/shake/b;

.field private b:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

.field private c:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/anythink/expressad/widget/FeedBackButton;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->H:Z

    .line 79
    iput-boolean p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->I:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->H:Z

    .line 79
    iput-boolean p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->I:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/expressad/splash/view/ATSplashView;Lcom/anythink/expressad/splash/a/b;)V
    .locals 8

    const-string v0, "string"

    const-string v1, "id"

    .line 105
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->H:Z

    .line 79
    iput-boolean p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->I:Z

    if-eqz p3, :cond_9

    .line 109
    invoke-virtual {p3}, Lcom/anythink/expressad/splash/a/b;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->J:Ljava/lang/String;

    .line 110
    invoke-virtual {p3}, Lcom/anythink/expressad/splash/a/b;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->K:Ljava/lang/String;

    .line 111
    invoke-virtual {p3}, Lcom/anythink/expressad/splash/a/b;->c()Lcom/anythink/expressad/foundation/d/c;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    .line 112
    iput-object p2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->L:Lcom/anythink/expressad/splash/view/ATSplashView;

    .line 113
    invoke-virtual {p3}, Lcom/anythink/expressad/splash/a/b;->e()I

    move-result p2

    iput p2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->s:I

    .line 114
    invoke-virtual {p3}, Lcom/anythink/expressad/splash/a/b;->f()I

    move-result p2

    iput p2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->v:I

    .line 115
    invoke-virtual {p3}, Lcom/anythink/expressad/splash/a/b;->g()I

    move-result p2

    iput p2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->u:I

    .line 116
    invoke-virtual {p3}, Lcom/anythink/expressad/splash/a/b;->h()I

    move-result p2

    iput p2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->w:I

    .line 117
    invoke-virtual {p3}, Lcom/anythink/expressad/splash/a/b;->i()I

    move-result p2

    iput p2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->x:I

    .line 118
    invoke-virtual {p3}, Lcom/anythink/expressad/splash/a/b;->j()I

    move-result p2

    iput p2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->y:I

    .line 119
    invoke-virtual {p3}, Lcom/anythink/expressad/splash/a/b;->k()I

    move-result p2

    iput p2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->z:I

    .line 120
    invoke-virtual {p3}, Lcom/anythink/expressad/splash/a/b;->l()I

    move-result p2

    iput p2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->A:I

    .line 121
    invoke-virtual {p3}, Lcom/anythink/expressad/splash/a/b;->d()Z

    move-result p2

    iput-boolean p2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->G:Z

    .line 122
    invoke-virtual {p3}, Lcom/anythink/expressad/splash/a/b;->m()I

    move-result p2

    iput p2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->B:I

    const/4 p2, 0x1

    .line 1131
    :try_start_0
    iget p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->A:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "layout"

    if-ne p3, p2, :cond_0

    .line 1132
    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-string v3, "anythink_splash_portrait"

    invoke-static {p3, v3, v2}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    .line 1135
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-string v3, "anythink_splash_landscape"

    invoke-static {p3, v3, v2}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 1137
    :goto_0
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 1138
    invoke-virtual {p0, p3}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->addView(Landroid/view/View;)V

    .line 1140
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_iv_image_bg"

    invoke-static {v2, v3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    iput-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->b:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    .line 1141
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_iv_image"

    invoke-static {v2, v3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    iput-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->c:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    .line 1142
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_topcontroller"

    invoke-static {v2, v3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->d:Landroid/widget/RelativeLayout;

    .line 1143
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_iv_link"

    invoke-static {v2, v3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->e:Landroid/widget/ImageView;

    .line 1144
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_feedback"

    invoke-static {v2, v3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/widget/FeedBackButton;

    iput-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->f:Lcom/anythink/expressad/widget/FeedBackButton;

    .line 1145
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_tv_skip"

    invoke-static {v2, v3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->g:Landroid/widget/TextView;

    .line 1146
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_landscape_foreground"

    invoke-static {v2, v3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->h:Landroid/widget/RelativeLayout;

    .line 1147
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_iv_icon"

    invoke-static {v2, v3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    iput-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->i:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    .line 1148
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_tv_title"

    invoke-static {v2, v3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->j:Landroid/widget/TextView;

    .line 1149
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_iv_foregroundimage"

    invoke-static {v2, v3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    iput-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->k:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    .line 1150
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_tv_adrect"

    invoke-static {v2, v3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->l:Landroid/widget/TextView;

    .line 1151
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_layout_appinfo"

    invoke-static {v2, v3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->n:Landroid/widget/RelativeLayout;

    .line 1152
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_tv_appinfo"

    invoke-static {v2, v3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->o:Landroid/widget/TextView;

    .line 1153
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_tv_privacy"

    invoke-static {v2, v3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->p:Landroid/widget/TextView;

    .line 1154
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_tv_permission"

    invoke-static {v2, v3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->q:Landroid/widget/TextView;

    .line 1155
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_tv_click"

    invoke-static {v2, v3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/splash/view/MBSplashClickView;

    iput-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    .line 1156
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_tv_adcircle"

    invoke-static {v2, v3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->m:Landroid/widget/TextView;

    .line 1158
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-string v1, "anythink_splash_count_time_can_skip"

    invoke-static {p3, v1, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 1159
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "anythink_splash_count_time_can_skip_not"

    invoke-static {v1, v2, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1160
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_count_time_can_skip_s"

    invoke-static {v2, v3, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1162
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->P:Ljava/lang/String;

    .line 1163
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->Q:Ljava/lang/String;

    .line 1164
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->O:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p3

    .line 1166
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1502
    :goto_1
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/anythink/expressad/foundation/f/b;->b()Z

    move-result p3

    const/16 v1, 0x8

    if-eqz p3, :cond_1

    .line 1503
    iget-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    iget-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->J:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    .line 1504
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object p3

    iget-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->J:Ljava/lang/String;

    new-instance v3, Lcom/anythink/expressad/splash/view/ATSplashNativeView$11;

    invoke-direct {v3, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$11;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {p3, v2, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/f/a;)V

    .line 1523
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object p3

    iget-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->J:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->f:Lcom/anythink/expressad/widget/FeedBackButton;

    invoke-virtual {p3, v2, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/widget/FeedBackButton;)V

    .line 1524
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object p3

    iget-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->J:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p3, v2, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)V

    goto :goto_2

    .line 1526
    :cond_1
    iget-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->f:Lcom/anythink/expressad/widget/FeedBackButton;

    if-eqz p3, :cond_2

    .line 1527
    invoke-virtual {p3, v1}, Lcom/anythink/expressad/widget/FeedBackButton;->setVisibility(I)V

    .line 2190
    :cond_2
    :goto_2
    iget-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p3}, Lcom/anythink/expressad/foundation/d/c;->be()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v2, 0x4

    if-nez p3, :cond_3

    .line 2191
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object p3

    invoke-virtual {p3}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object p3

    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->be()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/anythink/expressad/splash/view/ATSplashNativeView$1;

    invoke-direct {v4, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$1;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {p3, v3, v4}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    goto :goto_3

    .line 2279
    :cond_3
    iget-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->c:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    invoke-virtual {p3, v2}, Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;->setVisibility(I)V

    .line 1181
    :goto_3
    invoke-direct {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->e()V

    .line 2360
    iget-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p3}, Lcom/anythink/expressad/foundation/d/c;->aG()Lcom/anythink/expressad/foundation/d/a;

    move-result-object p3

    if-eqz p3, :cond_4

    iget p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->w:I

    if-nez p3, :cond_4

    .line 2361
    iget-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p3}, Lcom/anythink/expressad/foundation/d/c;->aG()Lcom/anythink/expressad/foundation/d/a;

    move-result-object p3

    .line 2362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2363
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "anythink_cm_app_info_app_name"

    invoke-static {v5, v6, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/anythink/expressad/foundation/d/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    .line 2364
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2365
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "anythink_cm_app_info_version"

    invoke-static {v6, v7, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/anythink/expressad/foundation/d/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2366
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2367
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "anythink_cm_app_info_publish"

    invoke-static {v6, v7, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/anythink/expressad/foundation/d/a;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2368
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2369
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "anythink_cm_app_info_update_time"

    invoke-static {v5, v6, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/anythink/expressad/foundation/d/a;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2371
    iget-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->o:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2373
    :cond_4
    iget-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2378
    :goto_4
    iget p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->v:I

    if-ne p3, p2, :cond_5

    .line 2379
    iget-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    invoke-virtual {p3, v1}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->setVisibility(I)V

    goto :goto_5

    .line 2381
    :cond_5
    iget p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->x:I

    if-ne p3, p2, :cond_6

    .line 2382
    iget-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    invoke-virtual {p3, v1}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->setVisibility(I)V

    goto :goto_5

    .line 2384
    :cond_6
    iget-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    .line 3175
    iget-object v0, v0, Lcom/anythink/expressad/out/j;->cU:Ljava/lang/String;

    .line 2384
    invoke-virtual {p3, v0}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->initView(Ljava/lang/String;)V

    .line 3390
    :goto_5
    iget p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->u:I

    if-ne p3, p2, :cond_7

    .line 3391
    new-instance p3, Lcom/anythink/expressad/splash/view/ATSplashNativeView$6;

    invoke-direct {p3, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$6;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {p0, p3}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 3398
    :cond_7
    iget-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    new-instance v0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$7;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$7;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {p3, v0}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3406
    :goto_6
    iget-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->p:Landroid/widget/TextView;

    new-instance v0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$8;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$8;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3418
    iget-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->q:Landroid/widget/TextView;

    new-instance v0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$9;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$9;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3451
    iget-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->g:Landroid/widget/TextView;

    new-instance v0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$10;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$10;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3533
    iget p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->x:I

    if-ne p3, p2, :cond_8

    .line 3534
    new-instance p2, Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/anythink/expressad/shake/MBShakeView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->N:Lcom/anythink/expressad/shake/MBShakeView;

    .line 3535
    iget-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    .line 4175
    iget-object p3, p3, Lcom/anythink/expressad/out/j;->cU:Ljava/lang/String;

    .line 3535
    invoke-virtual {p2, p3}, Lcom/anythink/expressad/shake/MBShakeView;->initView(Ljava/lang/String;)V

    .line 3537
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0xd

    .line 3538
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3539
    iget-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->N:Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {p3, p2}, Lcom/anythink/expressad/shake/MBShakeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3541
    iget-object p2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->N:Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {p0, p2}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->addView(Landroid/view/View;)V

    .line 3543
    iget-object p2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    invoke-virtual {p2, v2}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->setVisibility(I)V

    .line 3544
    iget-object p2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->setEnabled(Z)V

    .line 3546
    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->N:Lcom/anythink/expressad/shake/MBShakeView;

    new-instance p2, Lcom/anythink/expressad/splash/view/ATSplashNativeView$2;

    invoke-direct {p2, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$2;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/shake/MBShakeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3553
    new-instance p1, Lcom/anythink/expressad/splash/view/ATSplashNativeView$3;

    iget p2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->y:I

    iget p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->z:I

    mul-int/lit16 p3, p3, 0x3e8

    invoke-direct {p1, p0, p2, p3}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$3;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;II)V

    iput-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->R:Lcom/anythink/expressad/shake/b;

    .line 1186
    :cond_8
    iget p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->s:I

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->updateCountDown(I)V

    return-void

    .line 107
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters is NULL, can\'t gen view."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()V
    .locals 5

    const-string v0, "string"

    const-string v1, "id"

    .line 131
    :try_start_0
    iget v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->A:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    const-string v4, "layout"

    if-ne v2, v3, :cond_0

    .line 132
    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_portrait"

    invoke-static {v2, v3, v4}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_landscape"

    invoke-static {v2, v3, v4}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 137
    :goto_0
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 138
    invoke-virtual {p0, v2}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->addView(Landroid/view/View;)V

    .line 140
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_splash_iv_image_bg"

    invoke-static {v3, v4, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    iput-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->b:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    .line 141
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_splash_iv_image"

    invoke-static {v3, v4, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    iput-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->c:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    .line 142
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_splash_topcontroller"

    invoke-static {v3, v4, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->d:Landroid/widget/RelativeLayout;

    .line 143
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_splash_iv_link"

    invoke-static {v3, v4, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->e:Landroid/widget/ImageView;

    .line 144
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_splash_feedback"

    invoke-static {v3, v4, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/widget/FeedBackButton;

    iput-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->f:Lcom/anythink/expressad/widget/FeedBackButton;

    .line 145
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_splash_tv_skip"

    invoke-static {v3, v4, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->g:Landroid/widget/TextView;

    .line 146
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_splash_landscape_foreground"

    invoke-static {v3, v4, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->h:Landroid/widget/RelativeLayout;

    .line 147
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_splash_iv_icon"

    invoke-static {v3, v4, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    iput-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->i:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    .line 148
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_splash_tv_title"

    invoke-static {v3, v4, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->j:Landroid/widget/TextView;

    .line 149
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_splash_iv_foregroundimage"

    invoke-static {v3, v4, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    iput-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->k:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    .line 150
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_splash_tv_adrect"

    invoke-static {v3, v4, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->l:Landroid/widget/TextView;

    .line 151
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_splash_layout_appinfo"

    invoke-static {v3, v4, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->n:Landroid/widget/RelativeLayout;

    .line 152
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_splash_tv_appinfo"

    invoke-static {v3, v4, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->o:Landroid/widget/TextView;

    .line 153
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_splash_tv_privacy"

    invoke-static {v3, v4, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->p:Landroid/widget/TextView;

    .line 154
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_splash_tv_permission"

    invoke-static {v3, v4, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->q:Landroid/widget/TextView;

    .line 155
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_splash_tv_click"

    invoke-static {v3, v4, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/splash/view/MBSplashClickView;

    iput-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    .line 156
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_splash_tv_adcircle"

    invoke-static {v3, v4, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->m:Landroid/widget/TextView;

    .line 158
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "anythink_splash_count_time_can_skip"

    invoke-static {v1, v2, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 159
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_splash_count_time_can_skip_not"

    invoke-static {v2, v3, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 160
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_splash_count_time_can_skip_s"

    invoke-static {v3, v4, v0}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 162
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->P:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->Q:Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->O:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->L:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->getSplashJSBridgeImpl()Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->L:Lcom/anythink/expressad/splash/view/ATSplashView;

    .line 468
    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->getSplashJSBridgeImpl()Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;->getSplashBridgeListener()Lcom/anythink/expressad/splash/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    :try_start_0
    iget v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->C:F

    iget v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->D:F

    invoke-static {p1, v0, v1}, Lcom/anythink/expressad/splash/a/a/a;->a(IFF)Ljava/lang/String;

    move-result-object p1

    .line 471
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {p1, v0}, Lcom/anythink/expressad/splash/a/a/a;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    .line 472
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->L:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->getSplashJSBridgeImpl()Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;->getSplashBridgeListener()Lcom/anythink/expressad/splash/d/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/splash/d/a;->a(Lcom/anythink/expressad/foundation/d/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 474
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 475
    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->L:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {p1}, Lcom/anythink/expressad/splash/view/ATSplashView;->getSplashJSBridgeImpl()Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;->getSplashBridgeListener()Lcom/anythink/expressad/splash/d/a;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-interface {p1, v0}, Lcom/anythink/expressad/splash/d/a;->a(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/anythink/expressad/splash/view/ATSplashNativeView;I)V
    .locals 2

    .line 9467
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->L:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->getSplashJSBridgeImpl()Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->L:Lcom/anythink/expressad/splash/view/ATSplashView;

    .line 9468
    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->getSplashJSBridgeImpl()Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;->getSplashBridgeListener()Lcom/anythink/expressad/splash/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9470
    :try_start_0
    iget v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->C:F

    iget v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->D:F

    invoke-static {p1, v0, v1}, Lcom/anythink/expressad/splash/a/a/a;->a(IFF)Ljava/lang/String;

    move-result-object p1

    .line 9471
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {p1, v0}, Lcom/anythink/expressad/splash/a/a/a;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    .line 9472
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->L:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->getSplashJSBridgeImpl()Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;->getSplashBridgeListener()Lcom/anythink/expressad/splash/d/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/splash/d/a;->a(Lcom/anythink/expressad/foundation/d/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 9474
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 9475
    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->L:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {p1}, Lcom/anythink/expressad/splash/view/ATSplashView;->getSplashJSBridgeImpl()Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;->getSplashBridgeListener()Lcom/anythink/expressad/splash/d/a;

    move-result-object p1

    iget-object p0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-interface {p1, p0}, Lcom/anythink/expressad/splash/d/a;->a(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->L:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->getSplashJSBridgeImpl()Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->L:Lcom/anythink/expressad/splash/view/ATSplashView;

    .line 582
    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->getSplashJSBridgeImpl()Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;->getSplashBridgeListener()Lcom/anythink/expressad/splash/d/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->L:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->getSplashJSBridgeImpl()Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;->getSplashBridgeListener()Lcom/anythink/expressad/splash/d/a;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iget v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->t:I

    invoke-interface {v0, p1, v1}, Lcom/anythink/expressad/splash/d/a;->a(II)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Z
    .locals 1

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->F:Z

    return v0
.end method

.method static synthetic a(Lcom/anythink/expressad/splash/view/ATSplashNativeView;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->I:Z

    return p1
.end method

.method static synthetic b(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->h:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private b()V
    .locals 9

    .line 4502
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/f/b;->b()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 4503
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    iget-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->J:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    .line 4504
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->J:Ljava/lang/String;

    new-instance v3, Lcom/anythink/expressad/splash/view/ATSplashNativeView$11;

    invoke-direct {v3, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$11;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {v0, v2, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/f/a;)V

    .line 4523
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->J:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->f:Lcom/anythink/expressad/widget/FeedBackButton;

    invoke-virtual {v0, v2, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/widget/FeedBackButton;)V

    .line 4524
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->J:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v2, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)V

    goto :goto_0

    .line 4526
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->f:Lcom/anythink/expressad/widget/FeedBackButton;

    if-eqz v0, :cond_1

    .line 4527
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/widget/FeedBackButton;->setVisibility(I)V

    .line 5190
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->be()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x4

    if-nez v0, :cond_2

    .line 5191
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->be()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/anythink/expressad/splash/view/ATSplashNativeView$1;

    invoke-direct {v4, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$1;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {v0, v3, v4}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    goto :goto_1

    .line 5279
    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->c:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;->setVisibility(I)V

    .line 181
    :goto_1
    invoke-direct {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->e()V

    .line 5360
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aG()Lcom/anythink/expressad/foundation/d/a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->w:I

    if-nez v0, :cond_3

    .line 5361
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aG()Lcom/anythink/expressad/foundation/d/a;

    move-result-object v0

    .line 5362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5363
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "anythink_cm_app_info_app_name"

    const-string v7, "string"

    invoke-static {v5, v6, v7}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    .line 5364
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5365
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "anythink_cm_app_info_version"

    invoke-static {v6, v8, v7}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5366
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5367
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "anythink_cm_app_info_publish"

    invoke-static {v6, v8, v7}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/a;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5368
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5369
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "anythink_cm_app_info_update_time"

    invoke-static {v5, v6, v7}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5371
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 5373
    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5378
    :goto_2
    iget v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->v:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 5379
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->setVisibility(I)V

    goto :goto_3

    .line 5381
    :cond_4
    iget v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->x:I

    if-ne v0, v3, :cond_5

    .line 5382
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->setVisibility(I)V

    goto :goto_3

    .line 5384
    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    .line 6175
    iget-object v1, v1, Lcom/anythink/expressad/out/j;->cU:Ljava/lang/String;

    .line 5384
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->initView(Ljava/lang/String;)V

    .line 6390
    :goto_3
    iget v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->u:I

    if-ne v0, v3, :cond_6

    .line 6391
    new-instance v0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$6;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$6;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 6398
    :cond_6
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    new-instance v1, Lcom/anythink/expressad/splash/view/ATSplashNativeView$7;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$7;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6406
    :goto_4
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->p:Landroid/widget/TextView;

    new-instance v1, Lcom/anythink/expressad/splash/view/ATSplashNativeView$8;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$8;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6418
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->q:Landroid/widget/TextView;

    new-instance v1, Lcom/anythink/expressad/splash/view/ATSplashNativeView$9;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$9;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6451
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/anythink/expressad/splash/view/ATSplashNativeView$10;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$10;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6533
    iget v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->x:I

    if-ne v0, v3, :cond_7

    .line 6534
    new-instance v0, Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/expressad/shake/MBShakeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->N:Lcom/anythink/expressad/shake/MBShakeView;

    .line 6535
    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    .line 7175
    iget-object v1, v1, Lcom/anythink/expressad/out/j;->cU:Ljava/lang/String;

    .line 6535
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/shake/MBShakeView;->initView(Ljava/lang/String;)V

    .line 6537
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 6538
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 6539
    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->N:Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/shake/MBShakeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6541
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->N:Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->addView(Landroid/view/View;)V

    .line 6543
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->setVisibility(I)V

    .line 6544
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->setEnabled(Z)V

    .line 6546
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->N:Lcom/anythink/expressad/shake/MBShakeView;

    new-instance v1, Lcom/anythink/expressad/splash/view/ATSplashNativeView$2;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$2;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/shake/MBShakeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6553
    new-instance v0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$3;

    iget v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->y:I

    iget v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->z:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-direct {v0, p0, v1, v2}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$3;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;II)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->R:Lcom/anythink/expressad/shake/b;

    .line 186
    :cond_7
    iget v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->s:I

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->updateCountDown(I)V

    return-void
.end method

.method static synthetic b(Lcom/anythink/expressad/splash/view/ATSplashNativeView;Z)V
    .locals 1

    .line 9581
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->L:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->getSplashJSBridgeImpl()Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->L:Lcom/anythink/expressad/splash/view/ATSplashView;

    .line 9582
    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->getSplashJSBridgeImpl()Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;->getSplashBridgeListener()Lcom/anythink/expressad/splash/d/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9583
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->L:Lcom/anythink/expressad/splash/view/ATSplashView;

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/view/ATSplashView;->getSplashJSBridgeImpl()Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/js/SplashJSBridgeImpl;->getSplashBridgeListener()Lcom/anythink/expressad/splash/d/a;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iget p0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->t:I

    invoke-interface {v0, p1, p0}, Lcom/anythink/expressad/splash/d/a;->a(II)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->c:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->be()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->be()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/splash/view/ATSplashNativeView$1;

    invoke-direct {v2, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$1;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->c:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic d(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->A:I

    return p0
.end method

.method private d()V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->bd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->bd()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/splash/view/ATSplashNativeView$4;

    invoke-direct {v2, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$4;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->i:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic e(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->k:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    return-object p0
.end method

.method private e()V
    .locals 7

    .line 318
    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    .line 319
    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/d/b;->b()Lcom/anythink/expressad/d/a;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->J()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->e:Landroid/widget/ImageView;

    new-instance v2, Lcom/anythink/expressad/splash/view/ATSplashNativeView$5;

    invoke-direct {v2, p0, v0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$5;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    :goto_0
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "anythink_splash_m_circle"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 338
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 339
    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v0, v1

    .line 341
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 344
    :goto_2
    iget v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->A:I

    const/4 v3, 0x1

    const/4 v4, 0x4

    const-string v5, "string"

    const-string v6, "anythink_cm_app_info_app_label"

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->F:Z

    if-eqz v2, :cond_3

    .line 345
    iget v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->B:I

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 346
    iget-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6, v5}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 351
    :cond_3
    iget v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->B:I

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 352
    iget-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 354
    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6, v5}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic f(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Lcom/anythink/expressad/foundation/d/c;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    return-object p0
.end method

.method private f()V
    .locals 7

    .line 360
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aG()Lcom/anythink/expressad/foundation/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->w:I

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aG()Lcom/anythink/expressad/foundation/d/a;

    move-result-object v0

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_cm_app_info_app_name"

    const-string v5, "string"

    invoke-static {v3, v4, v5}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "anythink_cm_app_info_version"

    invoke-static {v4, v6, v5}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "anythink_cm_app_info_publish"

    invoke-static {v4, v6, v5}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "anythink_cm_app_info_update_time"

    invoke-static {v3, v4, v5}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->n:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic g(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Landroid/widget/TextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method private g()V
    .locals 3

    .line 378
    iget v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->v:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 379
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->setVisibility(I)V

    return-void

    .line 381
    :cond_0
    iget v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->x:I

    if-ne v0, v2, :cond_1

    .line 382
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->setVisibility(I)V

    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    .line 8175
    iget-object v1, v1, Lcom/anythink/expressad/out/j;->cU:Ljava/lang/String;

    .line 384
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->initView(Ljava/lang/String;)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 390
    iget v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 391
    new-instance v0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$6;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$6;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    new-instance v1, Lcom/anythink/expressad/splash/view/ATSplashNativeView$7;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$7;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->p:Landroid/widget/TextView;

    new-instance v1, Lcom/anythink/expressad/splash/view/ATSplashNativeView$8;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$8;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->q:Landroid/widget/TextView;

    new-instance v1, Lcom/anythink/expressad/splash/view/ATSplashNativeView$9;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$9;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/anythink/expressad/splash/view/ATSplashNativeView$10;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$10;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic h(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V
    .locals 3

    .line 9284
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->bd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9285
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->bd()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/splash/view/ATSplashNativeView$4;

    invoke-direct {v2, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$4;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    return-void

    .line 9313
    :cond_0
    iget-object p0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->i:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic i(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->b:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    return-object p0
.end method

.method private i()V
    .locals 3

    .line 502
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    .line 504
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->J:Ljava/lang/String;

    new-instance v2, Lcom/anythink/expressad/splash/view/ATSplashNativeView$11;

    invoke-direct {v2, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$11;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/f/a;)V

    .line 523
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->J:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->f:Lcom/anythink/expressad/widget/FeedBackButton;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/widget/FeedBackButton;)V

    .line 524
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->J:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)V

    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->f:Lcom/anythink/expressad/widget/FeedBackButton;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 527
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/widget/FeedBackButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic j(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->i:Lcom/anythink/expressad/splash/view/MBNoRecycledCrashImageView;

    return-object p0
.end method

.method private j()V
    .locals 3

    .line 533
    iget v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->x:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 534
    new-instance v0, Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/expressad/shake/MBShakeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->N:Lcom/anythink/expressad/shake/MBShakeView;

    .line 535
    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->M:Lcom/anythink/expressad/foundation/d/c;

    .line 9175
    iget-object v1, v1, Lcom/anythink/expressad/out/j;->cU:Ljava/lang/String;

    .line 535
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/shake/MBShakeView;->initView(Ljava/lang/String;)V

    .line 537
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 538
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 539
    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->N:Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/shake/MBShakeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->N:Lcom/anythink/expressad/shake/MBShakeView;

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->addView(Landroid/view/View;)V

    .line 543
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->r:Lcom/anythink/expressad/splash/view/MBSplashClickView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/view/MBSplashClickView;->setEnabled(Z)V

    .line 546
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->N:Lcom/anythink/expressad/shake/MBShakeView;

    new-instance v1, Lcom/anythink/expressad/splash/view/ATSplashNativeView$2;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$2;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/shake/MBShakeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    new-instance v0, Lcom/anythink/expressad/splash/view/ATSplashNativeView$3;

    iget v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->y:I

    iget v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->z:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-direct {v0, p0, v1, v2}, Lcom/anythink/expressad/splash/view/ATSplashNativeView$3;-><init>(Lcom/anythink/expressad/splash/view/ATSplashNativeView;II)V

    iput-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->R:Lcom/anythink/expressad/shake/b;

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->G:Z

    return p0
.end method

.method static synthetic l(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Lcom/anythink/expressad/splash/view/ATSplashView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->L:Lcom/anythink/expressad/splash/view/ATSplashView;

    return-object p0
.end method

.method static synthetic m(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Landroid/widget/TextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic n(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->I:Z

    return p0
.end method

.method static synthetic o(Lcom/anythink/expressad/splash/view/ATSplashNativeView;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->H:Z

    return p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 589
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 591
    :try_start_0
    iget v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->x:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 592
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->N:Lcom/anythink/expressad/shake/MBShakeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->R:Lcom/anythink/expressad/shake/b;

    if-eqz v0, :cond_0

    .line 593
    invoke-static {}, Lcom/anythink/expressad/shake/a;->a()Lcom/anythink/expressad/shake/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->R:Lcom/anythink/expressad/shake/b;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/shake/a;->a(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 597
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 603
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 604
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->release()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 609
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->C:F

    .line 610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->D:F

    .line 611
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 616
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 617
    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 618
    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 619
    instance-of p2, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p2, :cond_0

    .line 620
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 621
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/anythink/core/common/o/i;->b(Landroid/content/Context;)I

    move-result p2

    add-int/2addr p1, p2

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 624
    iget-object p3, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->g:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    const/4 p3, 0x1

    .line 625
    aget p4, p2, p3

    if-ge p4, p1, :cond_0

    .line 627
    aget p2, p2, p3

    sub-int/2addr p1, p2

    .line 628
    iget-object p2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->g:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 629
    instance-of p3, p2, Landroid/view/ViewGroup;

    if-eqz p3, :cond_0

    .line 630
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    .line 631
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p4

    add-int/2addr p4, p1

    .line 632
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p5

    .line 633
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, p1

    .line 630
    invoke-virtual {p2, p3, p4, p5, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 642
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->R:Lcom/anythink/expressad/shake/b;

    if-eqz v0, :cond_0

    .line 643
    invoke-static {}, Lcom/anythink/expressad/shake/a;->a()Lcom/anythink/expressad/shake/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->R:Lcom/anythink/expressad/shake/b;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/shake/a;->b(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 644
    iput-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->R:Lcom/anythink/expressad/shake/b;

    .line 646
    :cond_0
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/f/b;->c(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->detachAllViewsFromParent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 649
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public setIsPause(Z)V
    .locals 0

    .line 494
    iput-boolean p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->H:Z

    return-void
.end method

.method public setNotchPadding(IIII)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, p3, p2, p4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public updateCountDown(I)V
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 482
    iput p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->t:I

    .line 484
    iget-boolean v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->G:Z

    const-string v1, " "

    if-eqz v0, :cond_0

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->P:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->O:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 487
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->O:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->Q:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 489
    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/splash/view/ATSplashNativeView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
