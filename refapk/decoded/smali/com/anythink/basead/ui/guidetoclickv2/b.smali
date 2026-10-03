.class public final Lcom/anythink/basead/ui/guidetoclickv2/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/guidetoclickv2/b$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/RelativeLayout;

.field c:Landroid/view/View;

.field d:Ljava/lang/Runnable;

.field private e:Lcom/anythink/core/common/f/l;

.field private f:Lcom/anythink/core/common/f/m;

.field private g:I

.field private h:I

.field private i:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;

.field private j:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

.field private k:J

.field private l:J

.field private m:J

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Lcom/anythink/basead/ui/b/b$a;

.field private q:Z

.field private r:I

.field private s:J

.field private t:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ILcom/anythink/basead/ui/guidetoclickv2/b$a;Landroid/widget/RelativeLayout;Landroid/view/View;Lcom/anythink/basead/ui/b/b$a;Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->l:J

    const-wide/16 v0, 0x1388

    .line 42
    iput-wide v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->m:J

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->n:Ljava/lang/String;

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->o:I

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->q:Z

    .line 72
    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->a:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->e:Lcom/anythink/core/common/f/l;

    .line 74
    iput-object p3, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->f:Lcom/anythink/core/common/f/m;

    .line 75
    iput-object p6, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    .line 76
    iput-object p7, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->c:Landroid/view/View;

    .line 77
    iput p4, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->g:I

    .line 78
    iput-object p8, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->p:Lcom/anythink/basead/ui/b/b$a;

    .line 79
    iput-object p9, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->i:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;

    .line 80
    iget p1, p5, Lcom/anythink/basead/ui/guidetoclickv2/b$a;->b:I

    iput p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->h:I

    .line 81
    iget-wide p1, p5, Lcom/anythink/basead/ui/guidetoclickv2/b$a;->c:J

    iput-wide p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->m:J

    .line 82
    iget-wide p1, p5, Lcom/anythink/basead/ui/guidetoclickv2/b$a;->d:J

    iput-wide p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->l:J

    .line 83
    invoke-static {p5}, Lcom/anythink/basead/ui/guidetoclickv2/b$a;->a(Lcom/anythink/basead/ui/guidetoclickv2/b$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->n:Ljava/lang/String;

    .line 84
    invoke-static {p5}, Lcom/anythink/basead/ui/guidetoclickv2/b$a;->b(Lcom/anythink/basead/ui/guidetoclickv2/b$a;)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->o:I

    .line 85
    iget p1, p5, Lcom/anythink/basead/ui/guidetoclickv2/b$a;->a:I

    iput p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->r:I

    .line 86
    new-instance p1, Lcom/anythink/basead/ui/guidetoclickv2/b$1;

    invoke-direct {p1, p0, p4}, Lcom/anythink/basead/ui/guidetoclickv2/b$1;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/b;I)V

    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->d:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/guidetoclickv2/b;J)J
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->s:J

    return-wide p1
.end method

.method static synthetic a(Lcom/anythink/basead/ui/guidetoclickv2/b;)Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->j:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    return-object p0
.end method

.method static synthetic a(Lcom/anythink/basead/ui/guidetoclickv2/b;I)Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;
    .locals 4

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_3

    .line 3236
    :pswitch_0
    new-instance v0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;-><init>(Landroid/content/Context;)V

    .line 3237
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/b;->c(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 3175
    :pswitch_1
    new-instance v0, Lcom/anythink/basead/ui/guidetoclickv2/FingerG2CV2View;

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/FingerG2CV2View;-><init>(Landroid/content/Context;)V

    .line 3178
    iget v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->g:I

    const/16 v2, 0x1f5

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x1f8

    goto :goto_0

    :pswitch_3
    const/16 v2, 0x1f9

    .line 3187
    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/anythink/basead/ui/guidetoclickv2/b$2;

    invoke-direct {v3, p0, v0}, Lcom/anythink/basead/ui/guidetoclickv2/b$2;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/b;Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_4
    const/16 v2, 0x1fb

    goto :goto_0

    :pswitch_5
    const/16 v2, 0x1f6

    .line 3202
    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->c:Landroid/view/View;

    if-nez v1, :cond_0

    const/16 v2, 0x1f7

    .line 3211
    :cond_0
    :goto_0
    :pswitch_6
    move-object v1, v0

    check-cast v1, Lcom/anythink/basead/ui/guidetoclickv2/FingerG2CV2View;

    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/guidetoclickv2/FingerG2CV2View;->setFingerViewMode(I)V

    .line 3212
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/b;->c(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 3220
    :pswitch_7
    new-instance v0, Lcom/anythink/basead/ui/guidetoclickv2/JumpConfirmG2CV2View;

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/JumpConfirmG2CV2View;-><init>(Landroid/content/Context;)V

    .line 3221
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/b;->c(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 3171
    :pswitch_8
    new-instance v0, Lcom/anythink/basead/ui/guidetoclickv2/HintTextG2CV2View;

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/HintTextG2CV2View;-><init>(Landroid/content/Context;)V

    .line 3172
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/b;->c(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 3224
    :pswitch_9
    new-instance v0, Lcom/anythink/basead/ui/guidetoclickv2/QuestionDialogG2CV2View;

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/QuestionDialogG2CV2View;-><init>(Landroid/content/Context;)V

    .line 3225
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/b;->c(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3227
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->e:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3228
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->e:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 3229
    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->e:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3230
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->e:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    .line 3232
    :goto_1
    move-object v1, v0

    check-cast v1, Lcom/anythink/basead/ui/guidetoclickv2/QuestionDialogG2CV2View;

    iget-object v2, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->n:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/anythink/basead/ui/guidetoclickv2/QuestionDialogG2CV2View;->setQuestionAnswer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3215
    :pswitch_a
    new-instance v0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;-><init>(Landroid/content/Context;)V

    .line 3216
    move-object v1, v0

    check-cast v1, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object v2, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->e:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->loadImage(Ljava/lang/String;)V

    .line 3217
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/b;->c(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 3165
    :pswitch_b
    new-instance v0, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;-><init>(Landroid/content/Context;)V

    .line 3166
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/b;->c(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3168
    move-object p1, v0

    check-cast p1, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->c:Landroid/view/View;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1, v1}, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;->setVerticalLandscape(Z)V

    .line 3250
    :goto_3
    iget p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->g:I

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x6

    if-ne p1, v1, :cond_5

    .line 3252
    :cond_4
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/anythink/basead/ui/guidetoclickv2/b$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/guidetoclickv2/b$3;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/b;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/anythink/basead/ui/guidetoclickv2/b;Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;)Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->j:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    return-object p1
.end method

.method private a(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 155
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/anythink/basead/ui/guidetoclickv2/b;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->h:I

    return p0
.end method

.method private b(I)Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;
    .locals 4

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_3

    .line 236
    :pswitch_0
    new-instance v0, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/FullOrientationG2CV2View;-><init>(Landroid/content/Context;)V

    .line 237
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/b;->c(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 175
    :pswitch_1
    new-instance v0, Lcom/anythink/basead/ui/guidetoclickv2/FingerG2CV2View;

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/FingerG2CV2View;-><init>(Landroid/content/Context;)V

    .line 178
    iget v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->g:I

    const/16 v2, 0x1f5

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x1f8

    goto :goto_0

    :pswitch_3
    const/16 v2, 0x1f9

    .line 187
    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/anythink/basead/ui/guidetoclickv2/b$2;

    invoke-direct {v3, p0, v0}, Lcom/anythink/basead/ui/guidetoclickv2/b$2;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/b;Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_4
    const/16 v2, 0x1fb

    goto :goto_0

    :pswitch_5
    const/16 v2, 0x1f6

    .line 202
    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->c:Landroid/view/View;

    if-nez v1, :cond_0

    const/16 v2, 0x1f7

    .line 211
    :cond_0
    :goto_0
    :pswitch_6
    move-object v1, v0

    check-cast v1, Lcom/anythink/basead/ui/guidetoclickv2/FingerG2CV2View;

    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/guidetoclickv2/FingerG2CV2View;->setFingerViewMode(I)V

    .line 212
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/b;->c(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 220
    :pswitch_7
    new-instance v0, Lcom/anythink/basead/ui/guidetoclickv2/JumpConfirmG2CV2View;

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/JumpConfirmG2CV2View;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/b;->c(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 171
    :pswitch_8
    new-instance v0, Lcom/anythink/basead/ui/guidetoclickv2/HintTextG2CV2View;

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/HintTextG2CV2View;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/b;->c(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 224
    :pswitch_9
    new-instance v0, Lcom/anythink/basead/ui/guidetoclickv2/QuestionDialogG2CV2View;

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/QuestionDialogG2CV2View;-><init>(Landroid/content/Context;)V

    .line 225
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/b;->c(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->e:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 228
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->e:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 229
    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->e:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 230
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->e:Lcom/anythink/core/common/f/l;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->v()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    .line 232
    :goto_1
    move-object v1, v0

    check-cast v1, Lcom/anythink/basead/ui/guidetoclickv2/QuestionDialogG2CV2View;

    iget-object v2, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->n:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/anythink/basead/ui/guidetoclickv2/QuestionDialogG2CV2View;->setQuestionAnswer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 215
    :pswitch_a
    new-instance v0, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;-><init>(Landroid/content/Context;)V

    .line 216
    move-object v1, v0

    check-cast v1, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;

    iget-object v2, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->e:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/guidetoclickv2/PicVerifyG2CV2View;->loadImage(Ljava/lang/String;)V

    .line 217
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/b;->c(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 165
    :pswitch_b
    new-instance v0, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/b;->c(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    move-object p1, v0

    check-cast p1, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->c:Landroid/view/View;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1, v1}, Lcom/anythink/basead/ui/guidetoclickv2/GestureG2CV2View;->setVerticalLandscape(Z)V

    .line 2250
    :goto_3
    iget p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->g:I

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x6

    if-ne p1, v1, :cond_5

    .line 2252
    :cond_4
    iget-object p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/anythink/basead/ui/guidetoclickv2/b$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/guidetoclickv2/b$3;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/b;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static synthetic b(Lcom/anythink/basead/ui/guidetoclickv2/b;I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 4155
    iget-object p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->c:Landroid/view/View;

    if-eqz p0, :cond_1

    const/16 p1, 0x8

    .line 4156
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4150
    :cond_0
    iget-object p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->c:Landroid/view/View;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 4151
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/anythink/basead/ui/guidetoclickv2/b;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->m:J

    return-wide v0
.end method

.method private c(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 7

    const/high16 v0, 0x43910000    # 290.0f

    const/16 v1, 0xc

    const/4 v2, 0x2

    const/16 v3, 0xd

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    packed-switch p1, :pswitch_data_0

    .line 330
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    .line 327
    :pswitch_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    .line 291
    :pswitch_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    .line 297
    :pswitch_2
    iget p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->g:I

    const/high16 v4, 0x42400000    # 48.0f

    if-ne p1, v2, :cond_0

    .line 298
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    .line 299
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 300
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v2, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    .line 301
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    .line 300
    invoke-virtual {p1, v0, v5, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 302
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_0

    .line 304
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    .line 305
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v6, 0x43960000    # 300.0f

    invoke-static {v3, v6}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iget-object v6, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    .line 306
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {p1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 308
    iget v3, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->o:I

    if-ne v3, v2, :cond_1

    .line 309
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    .line 310
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v0, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v2, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    .line 311
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42c00000    # 96.0f

    invoke-static {v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    .line 309
    invoke-virtual {p1, v5, v5, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0xb

    .line 312
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 313
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v2, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    .line 316
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    .line 315
    invoke-virtual {p1, v5, v5, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0xe

    .line 317
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 318
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 280
    :pswitch_3
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 281
    iget v4, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->g:I

    if-eq v4, v2, :cond_2

    iget v2, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->o:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 282
    iget-object v2, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    .line 283
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    .line 282
    invoke-virtual {p1, v5, v5, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 284
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 323
    :pswitch_4
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 324
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 294
    :pswitch_5
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 276
    :pswitch_6
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcom/anythink/basead/ui/guidetoclickv2/b;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->o:I

    return p0
.end method

.method private d()V
    .locals 2

    .line 250
    iget v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->g:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/anythink/basead/ui/guidetoclickv2/b$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/guidetoclickv2/b$3;-><init>(Lcom/anythink/basead/ui/guidetoclickv2/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/anythink/basead/ui/guidetoclickv2/b;)Lcom/anythink/basead/ui/b/b$a;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->p:Lcom/anythink/basead/ui/b/b$a;

    return-object p0
.end method

.method private e()V
    .locals 14

    .line 339
    iget-wide v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->s:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 340
    iget-object v5, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->f:Lcom/anythink/core/common/f/m;

    iget-object v6, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->e:Lcom/anythink/core/common/f/l;

    .line 341
    invoke-static {v6, v5}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)Z

    move-result v7

    iget v8, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->r:I

    iget v9, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->h:I

    iget-wide v10, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->s:J

    iget-wide v12, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->t:J

    .line 340
    invoke-static/range {v5 .. v13}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;ZIIJJ)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/anythink/basead/ui/guidetoclickv2/b;)Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->i:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View$b;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 109
    iget-boolean v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->q:Z

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->k:J

    .line 112
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->d:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->l:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/b/o;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 8

    .line 117
    iget-boolean v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->q:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->q:Z

    .line 120
    iget-wide v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->k:J

    sub-long/2addr v4, v6

    sub-long/2addr v0, v4

    .line 121
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->l:J

    .line 125
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->d(Ljava/lang/Runnable;)V

    .line 126
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->j:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->pauseAnimPlay()V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 14

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->s:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->t:J

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 1340
    iget-object v5, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->f:Lcom/anythink/core/common/f/m;

    iget-object v6, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->e:Lcom/anythink/core/common/f/l;

    .line 1341
    invoke-static {v6, v5}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)Z

    move-result v7

    iget v8, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->r:I

    iget v9, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->h:I

    iget-wide v10, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->s:J

    iget-wide v12, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->t:J

    .line 1340
    invoke-static/range {v5 .. v13}, Lcom/anythink/core/common/n/c;->a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;ZIIJJ)V

    .line 135
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/o;->d(Ljava/lang/Runnable;)V

    .line 136
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->j:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;->release()V

    .line 138
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->j:Lcom/anythink/basead/ui/guidetoclickv2/BaseG2CV2View;

    invoke-static {v0}, Lcom/anythink/core/common/o/w;->a(Landroid/view/View;)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
