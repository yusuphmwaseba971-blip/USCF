.class public Lcom/anythink/expressad/video/module/AnythinkVideoView;
.super Lcom/anythink/expressad/video/module/AnythinkBaseView;

# interfaces
.implements Lcom/anythink/expressad/video/signal/f;
.implements Lcom/anythink/expressad/video/signal/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/video/module/AnythinkVideoView$a;,
        Lcom/anythink/expressad/video/module/AnythinkVideoView$b;
    }
.end annotation


# static fields
.field private static A:I = 0x0

.field private static B:I = 0x0

.field private static C:I = 0x0

.field private static final D:Ljava/lang/String; = "2"

.field public static final TAG:Ljava/lang/String; = "AnythinkVideoView"

.field private static aw:Z = false

.field private static final t:Ljava/lang/String; = "anythink_reward_videoview_item"

.field private static final u:I = 0x1

.field private static final v:F = 1280.0f

.field private static final w:F = 720.0f

.field private static final x:F = 0.1f

.field private static y:I

.field private static z:I


# instance fields
.field private E:Lcom/anythink/expressad/playercommon/PlayerView;

.field private F:Lcom/anythink/expressad/video/widget/SoundImageView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/view/View;

.field private I:Landroid/widget/RelativeLayout;

.field private J:Landroid/widget/ImageView;

.field private K:Landroid/widget/ProgressBar;

.field private L:Lcom/anythink/expressad/widget/FeedBackButton;

.field private M:Z

.field private N:Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;

.field private O:Lcom/anythink/expressad/video/dynview/f/a;

.field private P:I

.field private Q:Landroid/widget/FrameLayout;

.field private R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

.field private S:Lcom/anythink/expressad/video/signal/factory/b;

.field private T:I

.field private U:Landroid/widget/RelativeLayout;

.field private V:Lcom/anythink/expressad/video/module/a/a;

.field private W:Z

.field private aA:I

.field private aB:I

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Z

.field private aG:Z

.field private aH:Z

.field private aI:Z

.field private aJ:Z

.field private aK:Landroid/view/animation/AlphaAnimation;

.field private aL:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

.field private aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

.field private aN:Z

.field private aO:Ljava/lang/Runnable;

.field private aa:Z

.field private ab:Ljava/lang/String;

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:Lcom/anythink/expressad/widget/a/a;

.field private ah:Lcom/anythink/expressad/widget/a/b;

.field private ai:Ljava/lang/String;

.field private aj:D

.field private ak:D

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:I

.field private av:Z

.field private ax:I

.field private ay:Ljava/lang/String;

.field private az:I

.field public mCampOrderViewData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field public mCampaignSize:I

.field public mCurrPlayNum:I

.field public mCurrentPlayProgressTime:I

.field public mMuteSwitch:I

.field n:Lcom/anythink/expressad/reward/player/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 334
    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 128
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mMuteSwitch:I

    .line 131
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->P:I

    const/4 v0, 0x1

    .line 132
    iput v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampaignSize:I

    .line 133
    iput v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrPlayNum:I

    .line 134
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrentPlayProgressTime:I

    .line 196
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    .line 197
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aa:Z

    const-string v1, ""

    .line 222
    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    .line 244
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->al:Z

    .line 249
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->am:Z

    .line 254
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->an:Z

    .line 263
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ao:Z

    .line 268
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ap:Z

    .line 272
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aq:Z

    .line 276
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ar:Z

    .line 281
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->as:Z

    .line 292
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->at:Z

    .line 301
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->av:Z

    const/4 v1, 0x2

    .line 305
    iput v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ax:I

    .line 315
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aC:Z

    .line 316
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aD:Z

    .line 317
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aE:Z

    .line 318
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aF:Z

    .line 319
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aG:Z

    .line 320
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aH:Z

    .line 321
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aI:Z

    .line 322
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    .line 331
    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    .line 1439
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aN:Z

    .line 2278
    new-instance p1, Lcom/anythink/expressad/video/module/AnythinkVideoView$3;

    invoke-direct {p1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$3;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aO:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 338
    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/video/module/AnythinkBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 128
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mMuteSwitch:I

    .line 131
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->P:I

    const/4 p2, 0x1

    .line 132
    iput p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampaignSize:I

    .line 133
    iput p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrPlayNum:I

    .line 134
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrentPlayProgressTime:I

    .line 196
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    .line 197
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aa:Z

    const-string v0, ""

    .line 222
    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    .line 244
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->al:Z

    .line 249
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->am:Z

    .line 254
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->an:Z

    .line 263
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ao:Z

    .line 268
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ap:Z

    .line 272
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aq:Z

    .line 276
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ar:Z

    .line 281
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->as:Z

    .line 292
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->at:Z

    .line 301
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->av:Z

    const/4 v0, 0x2

    .line 305
    iput v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ax:I

    .line 315
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aC:Z

    .line 316
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aD:Z

    .line 317
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aE:Z

    .line 318
    iput-boolean p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aF:Z

    .line 319
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aG:Z

    .line 320
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aH:Z

    .line 321
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aI:Z

    .line 322
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    .line 331
    new-instance p2, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    invoke-direct {p2, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    iput-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    .line 1439
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aN:Z

    .line 2278
    new-instance p1, Lcom/anythink/expressad/video/module/AnythinkVideoView$3;

    invoke-direct {p1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$3;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aO:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic A(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/video/dynview/f/a;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->O:Lcom/anythink/expressad/video/dynview/f/a;

    return-object p0
.end method

.method static synthetic B(Lcom/anythink/expressad/video/module/AnythinkVideoView;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->P:I

    return p0
.end method

.method static synthetic C(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aH:Z

    return p0
.end method

.method static synthetic D(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aC:Z

    return p0
.end method

.method static synthetic E(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->N:Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;

    return-object p0
.end method

.method static synthetic F(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aK:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method static synthetic G(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ImageView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->J:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic H(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private a(Lcom/anythink/expressad/foundation/d/c;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2182
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ao()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2183
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ao()I

    move-result p1

    goto :goto_0

    .line 2185
    :cond_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object p1

    .line 2186
    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/d;->v()I

    move-result p1

    goto :goto_0

    .line 2189
    :cond_1
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object p1

    .line 2190
    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/d;->v()I

    move-result p1

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/anythink/expressad/video/module/AnythinkVideoView;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->T:I

    return p1
.end method

.method static synthetic a(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/video/module/a/a;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->V:Lcom/anythink/expressad/video/module/a/a;

    return-object p0
.end method

.method private static a(II)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    int-to-float p0, p0

    int-to-float v0, p1

    div-float/2addr p0, v0

    float-to-double v0, p0

    .line 1198
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/t;->a(Ljava/lang/Double;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1200
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1203
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 2

    const-string v0, "anythink_reward_videoview_item"

    .line 366
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->findLayout(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 368
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 369
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 371
    sput-boolean v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aw:Z

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Lcom/anythink/expressad/foundation/d/c;)V
    .locals 1

    .line 380
    new-instance v0, Lcom/anythink/expressad/video/dynview/j/c;

    invoke-direct {v0}, Lcom/anythink/expressad/video/dynview/j/c;-><init>()V

    invoke-static {p1, p2}, Lcom/anythink/expressad/video/dynview/j/c;->a(Landroid/view/View;Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/video/dynview/c;

    move-result-object p2

    .line 381
    invoke-static {}, Lcom/anythink/expressad/video/dynview/b;->a()Lcom/anythink/expressad/video/dynview/b;

    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/expressad/video/module/AnythinkVideoView$1;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;Landroid/view/ViewGroup;Lcom/anythink/expressad/video/dynview/c;)V

    invoke-static {p2, v0}, Lcom/anythink/expressad/video/dynview/b;->a(Lcom/anythink/expressad/video/dynview/c;Lcom/anythink/expressad/video/dynview/f/h;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 2201
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkVideoView$2;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$2;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    invoke-virtual {v0, p1, v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/expressad/video/module/AnythinkVideoView;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    return p1
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 77
    sput-boolean p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aw:Z

    return p0
.end method

.method static synthetic b(Lcom/anythink/expressad/video/module/AnythinkVideoView;Z)Ljava/lang/String;
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Z)Ljava/lang/String;
    .locals 4

    .line 2101
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->av:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 2105
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2106
    iget-boolean v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aC:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Alert_window_status"

    if-nez v2, :cond_1

    .line 2107
    :try_start_1
    sget v2, Lcom/anythink/expressad/foundation/g/a;->cv:I

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2110
    :cond_1
    iget-boolean v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aE:Z

    if-eqz v2, :cond_2

    .line 2111
    sget v2, Lcom/anythink/expressad/foundation/g/a;->cx:I

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2114
    :cond_2
    iget-boolean v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aD:Z

    if-eqz v2, :cond_3

    .line 2115
    sget v2, Lcom/anythink/expressad/foundation/g/a;->cw:I

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    const-string v2, "complete_info"

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    .line 2118
    :goto_0
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2120
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method private b()V
    .locals 3

    .line 458
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->f:Z

    .line 462
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->c()V

    .line 463
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aK:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xc8

    .line 464
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-void
.end method

.method private b(I)V
    .locals 3

    if-lez p1, :cond_1

    .line 923
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 924
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 p1, -0x1

    .line 925
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 926
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 927
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt p1, v2, :cond_0

    .line 928
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 929
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/playercommon/PlayerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 931
    :cond_0
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 932
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/playercommon/PlayerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 934
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    .line 935
    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setClipToOutline(Z)V

    .line 936
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/playercommon/PlayerView;->setClipToOutline(Z)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b()V

    return-void
.end method

.method private b(II)Z
    .locals 2

    .line 1209
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/t;->f(Landroid/content/Context;)I

    move-result v0

    .line 1210
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->e(Landroid/content/Context;)I

    move-result v1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-lt v0, p1, :cond_0

    if-lt v1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/playercommon/PlayerView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->av:Z

    return p0
.end method

.method private e()V
    .locals 9

    .line 566
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->av:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x8

    const-string v2, ""

    const/4 v3, 0x2

    if-eqz v0, :cond_e

    :try_start_1
    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    sget v4, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    sget v4, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v0, v4, :cond_e

    .line 567
    :cond_0
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aC:Z

    if-eqz v0, :cond_2

    .line 568
    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    sget v1, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v0, v1, :cond_1

    .line 570
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aG:Z

    invoke-direct {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_1
    return-void

    .line 576
    :cond_2
    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    sget v4, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v0, v4, :cond_4

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aI:Z

    if-eqz v0, :cond_4

    .line 577
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_3

    .line 578
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aG:Z

    invoke-direct {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_3
    return-void

    .line 584
    :cond_4
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aF:Z

    if-eqz v0, :cond_d

    .line 585
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->getCurPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 586
    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v4}, Lcom/anythink/expressad/playercommon/PlayerView;->getDuration()I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/d/c;->bi()I

    move-result v4

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v4}, Lcom/anythink/expressad/playercommon/PlayerView;->getDuration()I

    move-result v4

    :goto_0
    int-to-float v5, v0

    int-to-float v4, v4

    div-float/2addr v5, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v5, v5, v4

    float-to-int v4, v5

    .line 590
    iget v5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    sget v6, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-ne v5, v6, :cond_a

    .line 591
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->h()V

    .line 594
    iget v5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aA:I

    sget v6, Lcom/anythink/expressad/foundation/g/a;->ct:I

    if-ne v5, v6, :cond_7

    iget v5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aB:I

    if-lt v4, v5, :cond_7

    .line 595
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_6

    .line 596
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aG:Z

    invoke-direct {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_6
    return-void

    .line 602
    :cond_7
    iget v5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aA:I

    sget v6, Lcom/anythink/expressad/foundation/g/a;->cu:I

    if-ne v5, v6, :cond_9

    iget v5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aB:I

    if-lt v0, v5, :cond_9

    .line 603
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_8

    .line 604
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aG:Z

    invoke-direct {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_8
    return-void

    .line 608
    :cond_9
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v3, :cond_a

    .line 609
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-interface {v3, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 614
    :cond_a
    iget v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    sget v5, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne v3, v5, :cond_d

    .line 616
    iget v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aA:I

    sget v5, Lcom/anythink/expressad/foundation/g/a;->ct:I

    if-ne v3, v5, :cond_c

    iget v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aB:I

    if-lt v4, v3, :cond_c

    .line 617
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->h()V

    .line 618
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_b

    .line 619
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_b
    return-void

    .line 625
    :cond_c
    iget v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aA:I

    sget v4, Lcom/anythink/expressad/foundation/g/a;->cu:I

    if-ne v3, v4, :cond_d

    iget v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aB:I

    if-lt v0, v3, :cond_d

    .line 626
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->h()V

    .line 627
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_d

    .line 628
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_d
    return-void

    .line 641
    :cond_e
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result v0

    if-eq v0, v3, :cond_15

    .line 642
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->i()I

    move-result v0

    .line 643
    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v4}, Lcom/anythink/expressad/playercommon/PlayerView;->getCurPosition()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    .line 646
    iget-object v5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_10

    iget v5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrPlayNum:I

    if-le v5, v8, :cond_10

    if-eqz v0, :cond_12

    if-lez v0, :cond_12

    if-ge v4, v0, :cond_12

    :cond_f
    :goto_1
    const/4 v7, 0x1

    goto :goto_2

    :cond_10
    if-lez v0, :cond_11

    if-lt v4, v0, :cond_f

    :cond_11
    if-nez v0, :cond_12

    goto :goto_1

    :cond_12
    :goto_2
    if-eqz v7, :cond_13

    .line 655
    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ae:I

    if-ne v0, v8, :cond_13

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->at:Z

    if-nez v0, :cond_13

    .line 656
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->h()V

    .line 657
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_14

    .line 658
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void

    .line 661
    :cond_13
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_14

    .line 662
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-interface {v0, v3, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_14
    return-void

    .line 666
    :cond_15
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_16

    .line 667
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-interface {v0, v3, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_16
    return-void

    :catch_0
    move-exception v0

    .line 671
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aI:Z

    return v0
.end method

.method private f()Z
    .locals 5

    const/4 v0, 0x0

    .line 1245
    :try_start_0
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v2, "anythink_vfpv"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/playercommon/PlayerView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    .line 1246
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v2, "anythink_sound_switch"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/video/widget/SoundImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->F:Lcom/anythink/expressad/video/widget/SoundImageView;

    .line 1247
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v2, "anythink_tv_count"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->G:Landroid/widget/TextView;

    .line 1248
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v2, "anythink_rl_playing_close"

    invoke-virtual {p0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    const/4 v2, 0x4

    .line 1249
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1250
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v3, "anythink_top_control"

    invoke-virtual {p0, v1, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->I:Landroid/widget/RelativeLayout;

    .line 1251
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v3, "anythink_videoview_bg"

    invoke-virtual {p0, v1, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->J:Landroid/widget/ImageView;

    .line 1252
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v3, "anythink_video_progress_bar"

    invoke-virtual {p0, v1, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->K:Landroid/widget/ProgressBar;

    .line 1253
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v3, "anythink_native_endcard_feed_btn"

    invoke-virtual {p0, v1, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/widget/FeedBackButton;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->L:Lcom/anythink/expressad/widget/FeedBackButton;

    .line 1256
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v3, "anythink_reward_segment_progressbar"

    invoke-virtual {p0, v1, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->N:Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;

    .line 1257
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v3, "anythink_reward_cta_layout"

    invoke-virtual {p0, v1, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    .line 1258
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v3, "anythink_animation_click_view"

    invoke-virtual {p0, v1, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aL:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    .line 1259
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aJ:Z

    const-string v3, "anythink_reward_moreoffer_layout"

    invoke-virtual {p0, v1, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->U:Landroid/widget/RelativeLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    :try_start_1
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->aE()Ljava/lang/String;

    move-result-object v1

    .line 1263
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "https://mores.toponad.com/image/default/mintegral_logo.png"

    .line 1266
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1268
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v3

    new-instance v4, Lcom/anythink/expressad/video/module/AnythinkVideoView$10;

    invoke-direct {v4, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$10;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    invoke-virtual {v3, v1, v4}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1295
    :try_start_2
    sget-boolean v3, Lcom/anythink/expressad/a;->a:Z

    if-eqz v3, :cond_1

    .line 1296
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :cond_1
    :goto_0
    new-array v1, v2, [Landroid/view/View;

    .line 1299
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->F:Lcom/anythink/expressad/video/widget/SoundImageView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->G:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->isNotNULL([Landroid/view/View;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    .line 1301
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return v0
.end method

.method static synthetic f(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aF:Z

    return p0
.end method

.method private g()V
    .locals 7

    .line 1307
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->U()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1308
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->U()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x"

    .line 1310
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1311
    array-length v1, v0

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 1312
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->b(Ljava/lang/String;)D

    move-result-wide v5

    cmpl-double v2, v5, v3

    if-lez v2, :cond_0

    .line 1313
    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->b(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    :cond_0
    const/4 v1, 0x1

    .line 1315
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->b(Ljava/lang/String;)D

    move-result-wide v5

    cmpl-double v2, v5, v3

    if-lez v2, :cond_1

    .line 1316
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/t;->b(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    .line 1318
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnythinkBaseView mVideoW:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "  mVideoH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1320
    :cond_2
    iget-wide v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    cmpg-double v2, v0, v3

    if-gtz v2, :cond_3

    const-wide/high16 v0, 0x4094000000000000L    # 1280.0

    .line 1321
    iput-wide v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    .line 1323
    :cond_3
    iget-wide v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    cmpg-double v2, v0, v3

    if-gtz v2, :cond_4

    const-wide v0, 0x4086800000000000L    # 720.0

    .line 1324
    iput-wide v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    :cond_4
    return-void
.end method

.method static synthetic g(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e()V

    return-void
.end method

.method private h()V
    .locals 5

    .line 1349
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    if-eqz v0, :cond_2

    .line 1350
    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aa:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/playercommon/PlayerView;->setIsCovered(Z)V

    .line 1351
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->onPause()V

    .line 1353
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->L()Lcom/anythink/expressad/foundation/d/n;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aw()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1354
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->ax()V

    .line 1355
    invoke-static {}, Lcom/anythink/core/common/b/o;->a()Lcom/anythink/core/common/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/o;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/d/c;->L()Lcom/anythink/expressad/foundation/d/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/d/n;->m()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4, v2}, Lcom/anythink/expressad/a/a;->a(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;[Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 1363
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method static synthetic h(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    return v0
.end method

.method private i()V
    .locals 3

    .line 1369
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->am:Z

    if-nez v0, :cond_1

    .line 1382
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->playVideo()Z

    move-result v0

    .line 1390
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->J()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    if-eqz v0, :cond_0

    const-string v1, "play video failed"

    .line 1394
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->onPlayError(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 1398
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->am:Z

    return-void

    .line 1400
    :cond_1
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aa:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    if-nez v0, :cond_2

    .line 1401
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/playercommon/PlayerView;->setIsCovered(Z)V

    .line 1402
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 1414
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method static synthetic i(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    return p0
.end method

.method static synthetic j(Lcom/anythink/expressad/video/module/AnythinkVideoView;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    return p0
.end method

.method private j()V
    .locals 2

    .line 1419
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1420
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->i:Z

    if-eqz v0, :cond_0

    .line 1421
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->M:Z

    if-eqz v0, :cond_1

    .line 1425
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    .line 1427
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ap:Z

    :cond_2
    return-void
.end method

.method private k()V
    .locals 4

    .line 1442
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aN:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->as:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aq:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1445
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aN:Z

    .line 1446
    iget v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ac:I

    if-ltz v1, :cond_2

    if-nez v1, :cond_1

    .line 1448
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->as:Z

    return-void

    .line 1450
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkVideoView$11;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$11;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    iget v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ac:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic k(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aD:Z

    return v0
.end method

.method private l()V
    .locals 14

    .line 1461
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/t;->f(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 1462
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->e(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 1464
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    .line 1466
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$c;->c()I

    move-result v5

    if-ne v5, v3, :cond_0

    cmpl-float v5, v0, v1

    if-gtz v5, :cond_1

    .line 1467
    :cond_0
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c$c;->c()I

    move-result v2

    if-ne v2, v4, :cond_2

    cmpl-float v2, v1, v0

    if-lez v2, :cond_2

    :cond_1
    add-float/2addr v0, v1

    sub-float v1, v0, v1

    sub-float/2addr v0, v1

    .line 1474
    :cond_2
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v5, 0x42680000    # 58.0f

    invoke-static {v2, v5}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v2

    .line 1475
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x42d00000    # 104.0f

    invoke-static {v5, v6}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v5

    .line 1477
    iget-object v6, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v6}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result v6

    if-ne v6, v4, :cond_6

    .line 1478
    iget-object v6, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v6}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anythink/expressad/foundation/d/c$c;->c()I

    move-result v6

    if-ne v6, v3, :cond_3

    mul-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    sub-float/2addr v0, v7

    mul-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    sub-float/2addr v1, v7

    :cond_3
    if-ne v6, v4, :cond_4

    mul-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    sub-float/2addr v0, v7

    mul-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    sub-float/2addr v1, v7

    :cond_4
    if-nez v6, :cond_6

    .line 1490
    iget v6, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->d:I

    if-ne v6, v3, :cond_5

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    mul-int/lit8 v5, v5, 0x2

    int-to-float v2, v5

    goto :goto_0

    :cond_5
    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v0, v5

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    :goto_0
    sub-float/2addr v1, v2

    .line 1500
    :cond_6
    iget-wide v4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    const-wide/16 v6, 0x0

    cmpg-double v2, v4, v6

    if-lez v2, :cond_11

    iget-wide v8, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    cmpg-double v2, v8, v6

    if-lez v2, :cond_11

    const/4 v2, 0x0

    cmpg-float v6, v0, v2

    if-lez v6, :cond_11

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_7

    goto/16 :goto_4

    :cond_7
    div-double/2addr v4, v8

    div-float v2, v0, v1

    float-to-double v6, v2

    .line 1507
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "videoWHDivide:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, "  screenWHDivide:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1508
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->a(Ljava/lang/Double;)D

    move-result-wide v8

    .line 1509
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->a(Ljava/lang/Double;)D

    move-result-wide v6

    .line 1510
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "videoWHDivideFinal:"

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, "  screenWHDivideFinal:"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1512
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v2}, Lcom/anythink/expressad/playercommon/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v10, 0x11

    const/4 v11, -0x1

    cmpl-double v12, v8, v6

    if-lez v12, :cond_8

    float-to-double v6, v0

    .line 1514
    iget-wide v8, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    mul-double v6, v6, v8

    iget-wide v8, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    div-double/2addr v6, v8

    .line 1515
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    double-to-int v6, v6

    .line 1516
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1517
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_8
    cmpg-double v12, v8, v6

    if-gez v12, :cond_9

    float-to-double v6, v1

    mul-double v6, v6, v4

    double-to-int v6, v6

    .line 1521
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1522
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1523
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 1526
    :cond_9
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1527
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1530
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v6}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1531
    iget-object v6, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v6}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anythink/expressad/foundation/d/c$c;->b()I

    move-result v6

    .line 1532
    iget-object v7, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v7}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/expressad/foundation/d/c$c;->c()I

    move-result v7

    const/16 v8, 0x66

    const/16 v9, 0xca

    if-eq v6, v8, :cond_a

    if-ne v6, v9, :cond_c

    :cond_a
    if-ne v7, v3, :cond_b

    .line 1537
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1538
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1539
    iget-wide v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    iget-wide v7, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    float-to-double v12, v0

    div-double/2addr v7, v12

    div-double/2addr v3, v7

    double-to-int v1, v3

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    .line 1542
    :cond_b
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1543
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    float-to-double v7, v1

    mul-double v7, v7, v4

    double-to-int v1, v7

    .line 1544
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_c
    :goto_2
    if-ne v6, v9, :cond_d

    .line 1548
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->be()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1549
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->be()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a(Ljava/lang/String;)V

    :cond_d
    const/16 v1, 0x12e

    if-eq v6, v1, :cond_e

    const/16 v1, 0x322

    if-ne v6, v1, :cond_10

    .line 1553
    :cond_e
    iget-wide v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    iget-wide v5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_f

    .line 1554
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1555
    iget-wide v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    float-to-double v0, v0

    mul-double v3, v3, v0

    iget-wide v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    div-double/2addr v3, v0

    double-to-int v0, v3

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_3

    .line 1557
    :cond_f
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x435c0000    # 220.0f

    invoke-static {v0, v1}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v0

    .line 1558
    iget-wide v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    int-to-double v5, v0

    mul-double v3, v3, v5

    iget-wide v5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    div-double/2addr v3, v5

    double-to-int v1, v3

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1559
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 1564
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1567
    :cond_10
    :goto_3
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/playercommon/PlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1568
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setMatchParent()V

    return-void

    .line 1501
    :cond_11
    :goto_4
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->m()V

    return-void
.end method

.method static synthetic l(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aH:Z

    return v0
.end method

.method private m()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1574
    :try_start_0
    invoke-virtual {p0, v0, v0, v1, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setLayoutParam(IIII)V

    .line 1576
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->f:Z

    if-eqz v0, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1579
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->f(Landroid/content/Context;)I

    move-result v2

    .line 1580
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    mul-int/lit8 v2, v2, 0x9

    .line 1581
    div-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 1582
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 1586
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic m(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->i()V

    return-void
.end method

.method private n()V
    .locals 4

    .line 2168
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2169
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/c;->l(Ljava/lang/String;)V

    .line 2170
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1, v3}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)V

    .line 2171
    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->L:Lcom/anythink/expressad/widget/FeedBackButton;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/f/b;->a(Ljava/lang/String;Lcom/anythink/expressad/widget/FeedBackButton;)V

    return-void

    .line 2173
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->L:Lcom/anythink/expressad/widget/FeedBackButton;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 2174
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/widget/FeedBackButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic n(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aE:Z

    return v0
.end method

.method private o()I
    .locals 4

    .line 2196
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v0

    .line 2197
    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/videocommon/e/d;->x()I

    move-result v0

    return v0
.end method

.method static synthetic o(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aG:Z

    return p0
.end method

.method private p()V
    .locals 3

    .line 2224
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 2228
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    if-nez v0, :cond_2

    .line 2229
    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    .line 2230
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    .line 2231
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;->setUnitId(Ljava/lang/String;)V

    .line 2232
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->V:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_1

    .line 2233
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    new-instance v2, Lcom/anythink/expressad/video/module/a/a/i;

    invoke-direct {v2, v0}, Lcom/anythink/expressad/video/module/a/a/i;-><init>(Lcom/anythink/expressad/video/module/a/a;)V

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    .line 2235
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->S:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    .line 2238
    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic p(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->as:Z

    return v0
.end method

.method static synthetic q(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->M:Z

    return v0
.end method

.method static synthetic r(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->K:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic s(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->I:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic t(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/widget/TextView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->G:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic u(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->n()V

    return-void
.end method

.method static synthetic v(Lcom/anythink/expressad/video/module/AnythinkVideoView;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->T:I

    return p0
.end method

.method static synthetic w(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Z
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aG:Z

    return v0
.end method

.method static synthetic x(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Landroid/view/View;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    return-object p0
.end method

.method static synthetic y(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/widget/FeedBackButton;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->L:Lcom/anythink/expressad/widget/FeedBackButton;

    return-object p0
.end method

.method static synthetic z(Lcom/anythink/expressad/video/module/AnythinkVideoView;)Lcom/anythink/expressad/video/widget/SoundImageView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->F:Lcom/anythink/expressad/video/widget/SoundImageView;

    return-object p0
.end method


# virtual methods
.method public alertWebViewShowed()V
    .locals 1

    const/4 v0, 0x1

    .line 725
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    .line 726
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setShowingAlertViewCover(Z)V

    return-void
.end method

.method protected final c()V
    .locals 2

    .line 490
    invoke-super {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->c()V

    .line 491
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->f:Z

    if-eqz v0, :cond_4

    .line 493
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->i:Z

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/i/c;->a(Lcom/anythink/expressad/foundation/d/c;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/i/c;->a(Lcom/anythink/expressad/foundation/d/c;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkVideoView$5;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$5;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/playercommon/PlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkVideoView$6;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$6;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/playercommon/PlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->F:Lcom/anythink/expressad/video/widget/SoundImageView;

    if-eqz v0, :cond_3

    .line 520
    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkVideoView$7;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$7;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/widget/SoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkVideoView$8;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$8;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public closeVideoOperate(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1040
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aI:Z

    .line 1042
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 1043
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e()V

    :cond_0
    if-ne p2, v0, :cond_1

    .line 1047
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->gonePlayingCloseView()V

    return-void

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_5

    .line 1049
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aH:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    .line 7419
    :cond_2
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->f:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    .line 7420
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->i:Z

    if-eqz p1, :cond_3

    .line 7421
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->M:Z

    if-eqz p1, :cond_4

    .line 7425
    :cond_3
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 7427
    :cond_4
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ap:Z

    :cond_5
    return-void
.end method

.method public defaultShow()V
    .locals 12

    .line 851
    invoke-super {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->defaultShow()V

    const/4 v0, 0x1

    .line 852
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->al:Z

    .line 854
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->f(Landroid/content/Context;)I

    move-result v5

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a:Landroid/content/Context;

    .line 855
    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->e(Landroid/content/Context;)I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    .line 854
    invoke-virtual/range {v2 .. v11}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->showVideoLocation(IIIIIIIII)V

    .line 856
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->videoOperate(I)V

    .line 857
    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ac:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x2

    .line 858
    invoke-virtual {p0, v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->closeVideoOperate(II)V

    :cond_0
    return-void
.end method

.method public dismissAllAlert()V
    .locals 3

    .line 731
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ag:Lcom/anythink/expressad/widget/a/a;

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {v0}, Lcom/anythink/expressad/widget/a/a;->dismiss()V

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v1, 0x7d

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public getBorderViewHeight()I
    .locals 1

    .line 1159
    sget v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->C:I

    return v0
.end method

.method public getBorderViewLeft()I
    .locals 1

    .line 1169
    sget v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->A:I

    return v0
.end method

.method public getBorderViewRadius()I
    .locals 1

    .line 1179
    sget v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->y:I

    return v0
.end method

.method public getBorderViewTop()I
    .locals 1

    .line 1174
    sget v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->z:I

    return v0
.end method

.method public getBorderViewWidth()I
    .locals 1

    .line 1164
    sget v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->B:I

    return v0
.end method

.method public getCloseAlert()I
    .locals 1

    .line 1220
    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ae:I

    return v0
.end method

.method public getCurrentProgress()Ljava/lang/String;
    .locals 5

    .line 1098
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a()I

    move-result v0

    const/4 v1, 0x0

    .line 1100
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_0

    .line 1101
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->bi()I

    move-result v1

    .line 1103
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "progress"

    .line 1105
    invoke-static {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "time"

    .line 1106
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "duration"

    .line 1107
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1108
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1110
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const-string v0, "{}"

    return-object v0
.end method

.method public getMute()I
    .locals 1

    .line 2075
    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ax:I

    return v0
.end method

.method public getUnitId()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSkipTime()I
    .locals 1

    .line 1228
    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ac:I

    return v0
.end method

.method public gonePlayingCloseView()V
    .locals 4

    .line 1432
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->H:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 1434
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ap:Z

    .line 7442
    :cond_0
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aN:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->as:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aq:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 7445
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aN:Z

    .line 7446
    iget v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ac:I

    if-ltz v1, :cond_3

    if-nez v1, :cond_2

    .line 7448
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->as:Z

    return-void

    .line 7450
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkVideoView$11;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$11;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    iget v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ac:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public hideAlertView(I)V
    .locals 5

    .line 681
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 682
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    const/4 v1, 0x1

    .line 683
    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aC:Z

    .line 684
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setShowingAlertViewCover(Z)V

    .line 685
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v2

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    const-string v0, ""

    if-nez p1, :cond_2

    .line 689
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->i()V

    .line 691
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->av:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-eq p1, v2, :cond_0

    iget p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-ne p1, v2, :cond_6

    .line 693
    :cond_0
    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aD:Z

    .line 694
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz p1, :cond_1

    .line 695
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v2, 0x7c

    invoke-interface {p1, v2, v0}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 697
    :cond_1
    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aH:Z

    .line 698
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->gonePlayingCloseView()V

    return-void

    .line 702
    :cond_2
    iput-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aE:Z

    .line 704
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->av:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    sget v1, Lcom/anythink/expressad/foundation/g/a;->cs:I

    if-ne p1, v1, :cond_3

    .line 706
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->i()V

    return-void

    .line 710
    :cond_3
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->av:Z

    const/4 v1, 0x2

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    sget v2, Lcom/anythink/expressad/foundation/g/a;->cr:I

    if-ne p1, v2, :cond_5

    .line 711
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz p1, :cond_4

    .line 712
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aG:Z

    invoke-direct {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_4
    return-void

    .line 716
    :cond_5
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz p1, :cond_6

    .line 717
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    invoke-interface {p1, v1, v0}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public isH5Canvas()Z
    .locals 2

    .line 1150
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->e(Landroid/content/Context;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isInstallDialogShowing()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aa:Z

    return v0
.end method

.method public isMiniCardShowing()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ao:Z

    return v0
.end method

.method public isShowingAlertView()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    return v0
.end method

.method public isShowingTransparent()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->at:Z

    return v0
.end method

.method public isfront()Z
    .locals 7

    .line 1331
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1333
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1334
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v3, -0x1

    if-gt v2, v6, :cond_1

    .line 1337
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ao:Z

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v1, v5

    :cond_2
    :goto_1
    return v1
.end method

.method public notifyCloseBtn(I)V
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2049
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aq:Z

    const/4 p1, 0x0

    .line 2050
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->as:Z

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    .line 2052
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ar:Z

    :cond_1
    return-void
.end method

.method public notifyVideoClose()V
    .locals 3

    .line 2062
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/4 v1, 0x2

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public onBackPress()V
    .locals 2

    .line 2025
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ao:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2029
    :cond_0
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aD:Z

    if-eqz v0, :cond_1

    return-void

    .line 2032
    :cond_1
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ap:Z

    if-eqz v0, :cond_2

    .line 2033
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e()V

    return-void

    .line 2037
    :cond_2
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aq:Z

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ar:Z

    if-eqz v1, :cond_3

    .line 2038
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e()V

    return-void

    :cond_3
    if-nez v0, :cond_4

    .line 2041
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->as:Z

    if-eqz v0, :cond_4

    .line 2042
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1184
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1185
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1189
    :cond_0
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->f:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->al:Z

    if-eqz p1, :cond_1

    .line 1190
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->l()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 2364
    invoke-super {p0}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->onDetachedFromWindow()V

    .line 2366
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aO:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2367
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aO:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 2370
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V
    .locals 7

    .line 819
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->S:Lcom/anythink/expressad/video/signal/factory/b;

    .line 820
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->f:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 821
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ab:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_7

    .line 5307
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->U()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5308
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->U()Ljava/lang/String;

    move-result-object p1

    const-string v1, "x"

    .line 5310
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 5311
    array-length v1, p1

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 5312
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->b(Ljava/lang/String;)D

    move-result-wide v1

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    .line 5313
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/t;->b(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    :cond_0
    const/4 v1, 0x1

    .line 5315
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->b(Ljava/lang/String;)D

    move-result-wide v5

    cmpl-double v2, v5, v3

    if-lez v2, :cond_1

    .line 5316
    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/t;->b(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    .line 5318
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "AnythinkBaseView mVideoW:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "  mVideoH:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 5320
    :cond_2
    iget-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_3

    const-wide/high16 v1, 0x4094000000000000L    # 1280.0

    .line 5321
    iput-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    .line 5323
    :cond_3
    iget-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_4

    const-wide v1, 0x4086800000000000L    # 720.0

    .line 5324
    iput-wide v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D

    .line 831
    :cond_4
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->n:Lcom/anythink/expressad/reward/player/c;

    if-eqz p1, :cond_5

    .line 832
    invoke-interface {p1}, Lcom/anythink/expressad/reward/player/c;->c()V

    .line 834
    :cond_5
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->n:Lcom/anythink/expressad/reward/player/c;

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/playercommon/PlayerView;->setTempEventListener(Lcom/anythink/expressad/reward/player/c;)V

    .line 836
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    iget v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ad:I

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/playercommon/PlayerView;->initBufferIngParam(I)V

    .line 837
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ab:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->ao()I

    move-result v3

    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/anythink/expressad/playercommon/PlayerView;->initVFPData(Ljava/lang/String;Ljava/lang/String;ILcom/anythink/expressad/playercommon/VideoPlayerStatusListener;)Z

    .line 839
    iget p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ax:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->soundOperate(IILjava/lang/String;)V

    goto :goto_0

    .line 842
    :cond_6
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz p1, :cond_7

    .line 843
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v1, 0xc

    const-string v2, "AnyThinkVideoView initSuccess false"

    invoke-interface {p1, v1, v2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 846
    :cond_7
    :goto_0
    sput-boolean v0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aw:Z

    return-void
.end method

.method public progressBarOperate(I)V
    .locals 1

    .line 1057
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1059
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->K:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 1060
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1063
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->K:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1064
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public progressOperate(II)V
    .locals 2

    .line 1072
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->f:Z

    if-eqz v0, :cond_4

    .line 1075
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->bi()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez p1, :cond_1

    if-gt p1, v0, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    if-eqz v0, :cond_1

    mul-int/lit16 p1, p1, 0x3e8

    .line 1081
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/playercommon/PlayerView;->seekTo(I)V

    :cond_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    .line 1085
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->G:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    .line 1087
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->G:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1089
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->G:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 1090
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->n()V

    :cond_4
    return-void
.end method

.method public releasePlayer()V
    .locals 2

    .line 2376
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->an:Z

    if-nez v1, :cond_0

    .line 2377
    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->release()V

    .line 2380
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    if-eqz v0, :cond_1

    .line 2381
    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->b()V

    .line 2384
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->V:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2385
    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->V:Lcom/anythink/expressad/video/module/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 2389
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public setBufferTimeout(I)V
    .locals 0

    .line 1240
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ad:I

    return-void
.end method

.method public setCTALayoutVisibleOrGone()V
    .locals 4

    .line 2242
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-nez v0, :cond_0

    return-void

    .line 2246
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2250
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2

    return-void

    .line 2254
    :cond_2
    iget v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->T:I

    const/4 v2, -0x1

    if-ge v1, v2, :cond_3

    return-void

    .line 2258
    :cond_3
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    if-nez v1, :cond_5

    .line 8229
    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    .line 8230
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    .line 8231
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;->setUnitId(Ljava/lang/String;)V

    .line 8232
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->V:Lcom/anythink/expressad/video/module/a/a;

    if-eqz v0, :cond_4

    .line 8233
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    new-instance v3, Lcom/anythink/expressad/video/module/a/a/i;

    invoke-direct {v3, v0}, Lcom/anythink/expressad/video/module/a/a/i;-><init>(Lcom/anythink/expressad/video/module/a/a;)V

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;->setNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V

    .line 8235
    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->S:Lcom/anythink/expressad/video/signal/factory/b;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    .line 8238
    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->R:Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2262
    :cond_6
    iget v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->T:I

    const/4 v1, 0x0

    if-ltz v0, :cond_7

    .line 2263
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_7
    if-ne v0, v2, :cond_9

    .line 2268
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    .line 2269
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2270
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aO:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 2272
    :cond_8
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->Q:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2273
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aO:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method

.method public setCamPlayOrderCallback(Lcom/anythink/expressad/video/dynview/f/a;Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/video/dynview/f/a;",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;II)V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->O:Lcom/anythink/expressad/video/dynview/f/a;

    .line 156
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampaignSize:I

    .line 157
    iput p3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCurrPlayNum:I

    .line 158
    iput p4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->P:I

    .line 159
    iput-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    .line 161
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-nez p1, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->k()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_5

    .line 165
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->N:Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    if-nez p2, :cond_1

    goto :goto_1

    .line 169
    :cond_1
    iget p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampaignSize:I

    const/4 p3, 0x1

    if-le p2, p3, :cond_4

    const/4 p2, 0x0

    .line 170
    invoke-virtual {p1, p2}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;->setVisibility(I)V

    .line 171
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->N:Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;

    iget p3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampaignSize:I

    const/4 p4, 0x2

    invoke-virtual {p1, p3, p4}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;->init(II)V

    .line 172
    :goto_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_3

    .line 173
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->mCampOrderViewData:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aF()I

    move-result p1

    if-lez p1, :cond_2

    .line 175
    iget-object p3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->N:Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;

    invoke-virtual {p3, p1, p2}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;->setProgress(II)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    const/16 p2, 0x8

    .line 179
    invoke-virtual {p1, p2}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;->setVisibility(I)V

    nop

    :cond_5
    :goto_1
    return-void
.end method

.method public setCampaign(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 5

    .line 477
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkBaseView;->setCampaign(Lcom/anythink/expressad/foundation/d/c;)V

    .line 478
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    if-eqz v0, :cond_2

    .line 479
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a(Lcom/anythink/expressad/foundation/d/c;)V

    .line 480
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 5182
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ao()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 5183
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ao()I

    move-result p1

    goto :goto_0

    .line 5185
    :cond_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object p1

    .line 5186
    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v1}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/d;->v()I

    move-result p1

    goto :goto_0

    .line 5189
    :cond_1
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object p1

    .line 5190
    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v1}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/d;->v()I

    move-result p1

    .line 5196
    :goto_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v2

    .line 5197
    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/videocommon/e/d;->x()I

    move-result v1

    .line 480
    invoke-virtual {v0, p1, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a(II)V

    :cond_2
    return-void
.end method

.method public setCloseAlert(I)V
    .locals 0

    .line 1224
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ae:I

    return-void
.end method

.method public setContainerViewOnNotifyListener(Lcom/anythink/expressad/video/module/a/a;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->V:Lcom/anythink/expressad/video/module/a/a;

    return-void
.end method

.method public setCover(Z)V
    .locals 1

    .line 1133
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->f:Z

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/playercommon/PlayerView;->setIsCovered(Z)V

    :cond_0
    return-void
.end method

.method public setDialogRole(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2096
    :goto_0
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aF:Z

    .line 2097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aF:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void
.end method

.method public setIVRewardEnable(III)V
    .locals 0

    .line 2085
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    .line 2086
    iput p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aA:I

    .line 2087
    iput p3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aB:I

    return-void
.end method

.method public setInstallDialogState(Z)V
    .locals 1

    .line 1127
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aa:Z

    .line 1128
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/playercommon/PlayerView;->setIsCovered(Z)V

    return-void
.end method

.method public setIsIV(Z)V
    .locals 1

    .line 468
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->av:Z

    .line 469
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a(Z)V

    :cond_0
    return-void
.end method

.method public setMiniEndCardState(Z)V
    .locals 0

    .line 1140
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ao:Z

    return-void
.end method

.method public setNotchPadding(IIII)V
    .locals 8

    .line 2131
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NOTCH VideoView "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%1s-%2s-%3s-%4s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2133
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2134
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2135
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2136
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2137
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2139
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2140
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le v0, v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-nez v4, :cond_1

    .line 2143
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->I:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 2144
    new-instance v7, Lcom/anythink/expressad/video/module/AnythinkVideoView$12;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p3

    move v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/anythink/expressad/video/module/AnythinkVideoView$12;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;IIII)V

    const-wide/16 p1, 0xc8

    invoke-virtual {v0, v7, p1, p2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2159
    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->G:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 2160
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 2163
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public setPlayURL(Ljava/lang/String;)V
    .locals 0

    .line 1236
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ab:Ljava/lang/String;

    return-void
.end method

.method public setScaleFitXY(I)V
    .locals 0

    .line 1117
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->au:I

    return-void
.end method

.method public setShowingAlertViewCover(Z)V
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/playercommon/PlayerView;->setIsCovered(Z)V

    return-void
.end method

.method public setShowingTransparent(Z)V
    .locals 0

    .line 288
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->at:Z

    return-void
.end method

.method public setSoundState(I)V
    .locals 0

    .line 485
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ax:I

    return-void
.end method

.method public setTempEventListener(Lcom/anythink/expressad/reward/player/c;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->n:Lcom/anythink/expressad/reward/player/c;

    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .locals 1

    .line 225
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aM:Lcom/anythink/expressad/video/module/AnythinkVideoView$b;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVideoLayout(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 351
    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    .line 352
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->i:Z

    .line 354
    :cond_0
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->i:Z

    if-eqz v0, :cond_1

    .line 3380
    new-instance v0, Lcom/anythink/expressad/video/dynview/j/c;

    invoke-direct {v0}, Lcom/anythink/expressad/video/dynview/j/c;-><init>()V

    invoke-static {p0, p1}, Lcom/anythink/expressad/video/dynview/j/c;->a(Landroid/view/View;Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/video/dynview/c;

    move-result-object p1

    .line 3381
    invoke-static {}, Lcom/anythink/expressad/video/dynview/b;->a()Lcom/anythink/expressad/video/dynview/b;

    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView$1;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;Landroid/view/ViewGroup;Lcom/anythink/expressad/video/dynview/c;)V

    invoke-static {p1, v0}, Lcom/anythink/expressad/video/dynview/b;->a(Lcom/anythink/expressad/video/dynview/c;Lcom/anythink/expressad/video/dynview/f/h;)V

    return-void

    :cond_1
    const-string p1, "anythink_reward_videoview_item"

    .line 4366
    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->findLayout(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2

    .line 4368
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4369
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b()V

    :cond_2
    const/4 p1, 0x0

    .line 4371
    sput-boolean p1, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aw:Z

    return-void
.end method

.method public setVideoSkipTime(I)V
    .locals 0

    .line 1232
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ac:I

    return-void
.end method

.method public setVisible(I)V
    .locals 0

    .line 1122
    invoke-virtual {p0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setVisibility(I)V

    return-void
.end method

.method public showAlertView()V
    .locals 4

    .line 741
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ao:Z

    if-eqz v0, :cond_0

    return-void

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ah:Lcom/anythink/expressad/widget/a/b;

    if-nez v0, :cond_1

    .line 746
    new-instance v0, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$9;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ah:Lcom/anythink/expressad/widget/a/b;

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ag:Lcom/anythink/expressad/widget/a/a;

    if-nez v0, :cond_2

    .line 794
    new-instance v0, Lcom/anythink/expressad/widget/a/a;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ah:Lcom/anythink/expressad/widget/a/b;

    invoke-direct {v0, v1, v2}, Lcom/anythink/expressad/widget/a/a;-><init>(Landroid/content/Context;Lcom/anythink/expressad/widget/a/b;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ag:Lcom/anythink/expressad/widget/a/a;

    .line 800
    :cond_2
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->av:Z

    if-eqz v0, :cond_3

    .line 801
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ag:Lcom/anythink/expressad/widget/a/a;

    iget v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->az:I

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/widget/a/a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 803
    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ag:Lcom/anythink/expressad/widget/a/a;

    invoke-virtual {v0}, Lcom/anythink/expressad/widget/a/a;->b()V

    .line 806
    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/PlayerView;->isComplete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 807
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ag:Lcom/anythink/expressad/widget/a/a;

    invoke-virtual {v0}, Lcom/anythink/expressad/widget/a/a;->show()V

    const/4 v0, 0x1

    .line 808
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aC:Z

    .line 809
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    .line 810
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setShowingAlertViewCover(Z)V

    .line 811
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v0

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->b()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/b/a;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ai:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    .line 812
    invoke-static {}, Lcom/anythink/expressad/videocommon/e/d;->J()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ay:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public showBaitClickView()V
    .locals 3

    .line 2321
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-nez v0, :cond_0

    return-void

    .line 2325
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2329
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 2333
    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v0

    .line 2334
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    :try_start_0
    const-string v1, "bait_click"

    .line 2339
    invoke-static {v0, v1}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2341
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2342
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 2343
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aL:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 2344
    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->setVisibility(I)V

    .line 2345
    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aL:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->init(I)V

    .line 2346
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aL:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->startAnimation()V

    .line 2347
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aL:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    new-instance v1, Lcom/anythink/expressad/video/module/AnythinkVideoView$4;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView$4;-><init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    .line 2358
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public showIVRewardAlertView(Ljava/lang/String;)V
    .locals 2

    .line 2058
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 v0, 0x8

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public showMoreOfferInPlayTemplate()V
    .locals 1

    .line 2289
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->U:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2293
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2297
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 2301
    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v0

    .line 2302
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_3
    :goto_0
    return-void
.end method

.method public showVideoLocation(IIIIIIIII)V
    .locals 6

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showVideoLocation marginTop:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " marginLeft:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " radius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " borderTop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " borderLeft:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " borderWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " borderHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 870
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->f:Z

    if-eqz v0, :cond_a

    .line 871
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->I:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 872
    invoke-virtual {p0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->G:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 877
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->n()V

    .line 6209
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/t;->f(Landroid/content/Context;)I

    move-result v0

    .line 6210
    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->e(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-lez p3, :cond_2

    if-lez p4, :cond_2

    if-lt v0, p3, :cond_2

    if-lt v2, p4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_9

    .line 879
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->al:Z

    if-nez v0, :cond_9

    .line 880
    sput p6, Lcom/anythink/expressad/video/module/AnythinkVideoView;->z:I

    .line 881
    sput p7, Lcom/anythink/expressad/video/module/AnythinkVideoView;->A:I

    add-int/lit8 p8, p8, 0x4

    .line 883
    sput p8, Lcom/anythink/expressad/video/module/AnythinkVideoView;->B:I

    add-int/lit8 p9, p9, 0x4

    .line 884
    sput p9, Lcom/anythink/expressad/video/module/AnythinkVideoView;->C:I

    int-to-float p6, p3

    int-to-float p7, p4

    div-float/2addr p6, p7

    const/4 p7, 0x0

    .line 888
    :try_start_0
    iget-wide p8, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aj:D

    iget-wide v4, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ak:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    div-double/2addr p8, v4

    double-to-float p7, p8

    goto :goto_1

    :catchall_0
    move-exception p8

    .line 890
    invoke-virtual {p8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_1
    if-lez p5, :cond_4

    .line 893
    sput p5, Lcom/anythink/expressad/video/module/AnythinkVideoView;->y:I

    if-lez p5, :cond_4

    .line 6923
    new-instance p8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 6924
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getContext()Landroid/content/Context;

    move-result-object p9

    int-to-float p5, p5

    invoke-static {p9, p5}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p8, p5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 p5, -0x1

    .line 6925
    invoke-virtual {p8, p5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 6926
    invoke-virtual {p8, v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 6927
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p9, 0x10

    if-lt p5, p9, :cond_3

    .line 6928
    invoke-virtual {p0, p8}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6929
    iget-object p5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {p5, p8}, Lcom/anythink/expressad/playercommon/PlayerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 6931
    :cond_3
    invoke-virtual {p0, p8}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6932
    iget-object p5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {p5, p8}, Lcom/anythink/expressad/playercommon/PlayerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6934
    :goto_2
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p8, 0x15

    if-lt p5, p8, :cond_4

    .line 6935
    invoke-virtual {p0, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setClipToOutline(Z)V

    .line 6936
    iget-object p5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {p5, v3}, Lcom/anythink/expressad/playercommon/PlayerView;->setClipToOutline(Z)V

    :cond_4
    sub-float/2addr p6, p7

    .line 897
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p5

    const p6, 0x3dcccccd    # 0.1f

    cmpg-float p5, p5, p6

    if-lez p5, :cond_6

    iget p5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->au:I

    if-ne p5, v3, :cond_5

    goto :goto_3

    .line 911
    :cond_5
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->l()V

    .line 912
    invoke-virtual {p0, v3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->videoOperate(I)V

    return-void

    .line 898
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->l()V

    .line 899
    iget-boolean p5, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->at:Z

    if-eqz p5, :cond_8

    .line 900
    invoke-virtual {p0, p3, p4}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setLayoutCenter(II)V

    .line 901
    sget-boolean p1, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aw:Z

    const-string p2, ""

    if-eqz p1, :cond_7

    .line 902
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 p3, 0x72

    invoke-interface {p1, p3, p2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void

    .line 904
    :cond_7
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 p3, 0x74

    invoke-interface {p1, p3, p2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    return-void

    .line 907
    :cond_8
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setLayoutParam(IIII)V

    return-void

    .line 916
    :cond_9
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->l()V

    :cond_a
    return-void
.end method

.method public soundOperate(II)V
    .locals 1

    const-string v0, "2"

    .line 943
    invoke-virtual {p0, p1, p2, v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->soundOperate(IILjava/lang/String;)V

    return-void
.end method

.method public soundOperate(IILjava/lang/String;)V
    .locals 4

    .line 948
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->f:Z

    if-eqz v0, :cond_6

    .line 949
    iput p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ax:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 951
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->F:Lcom/anythink/expressad/video/widget/SoundImageView;

    if-eqz v3, :cond_0

    .line 952
    invoke-virtual {v3, v1}, Lcom/anythink/expressad/video/widget/SoundImageView;->setSoundStatus(Z)V

    .line 954
    :cond_0
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v3}, Lcom/anythink/expressad/playercommon/PlayerView;->closeSound()V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_3

    .line 963
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->F:Lcom/anythink/expressad/video/widget/SoundImageView;

    if-eqz v3, :cond_2

    .line 964
    invoke-virtual {v3, v2}, Lcom/anythink/expressad/video/widget/SoundImageView;->setSoundStatus(Z)V

    .line 966
    :cond_2
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {v3}, Lcom/anythink/expressad/playercommon/PlayerView;->openSound()V

    .line 976
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 977
    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->F:Lcom/anythink/expressad/video/widget/SoundImageView;

    if-eqz p2, :cond_6

    .line 978
    invoke-virtual {p2, v1}, Lcom/anythink/expressad/video/widget/SoundImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    if-ne p2, v2, :cond_5

    .line 982
    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->F:Lcom/anythink/expressad/video/widget/SoundImageView;

    if-eqz p2, :cond_6

    const/16 v0, 0x8

    .line 983
    invoke-virtual {p2, v0}, Lcom/anythink/expressad/video/widget/SoundImageView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    if-ne p2, v0, :cond_6

    .line 986
    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->F:Lcom/anythink/expressad/video/widget/SoundImageView;

    if-eqz p2, :cond_6

    .line 987
    invoke-virtual {p2, v1}, Lcom/anythink/expressad/video/widget/SoundImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    if-eqz p3, :cond_7

    const-string p2, "2"

    .line 993
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 994
    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    if-eqz p2, :cond_7

    .line 995
    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/4 p3, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public videoOperate(I)V
    .locals 2

    .line 1003
    iget-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->f:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1005
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->isfront()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1007
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->W:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->ao:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aa:Z

    if-nez p1, :cond_4

    sget-boolean p1, Lcom/anythink/expressad/foundation/f/b;->c:Z

    if-nez p1, :cond_4

    .line 1008
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->i()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1012
    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 1014
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->h()V

    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 1017
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->an:Z

    if-nez p1, :cond_4

    .line 1018
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->E:Lcom/anythink/expressad/playercommon/PlayerView;

    invoke-virtual {p1}, Lcom/anythink/expressad/playercommon/PlayerView;->release()V

    .line 1019
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->an:Z

    return-void

    :cond_2
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 1022
    iput-boolean v0, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aa:Z

    .line 1023
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->an:Z

    if-nez p1, :cond_4

    .line 1024
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->h()V

    return-void

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    .line 1027
    iput-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->aa:Z

    .line 1028
    iget-boolean p1, p0, Lcom/anythink/expressad/video/module/AnythinkVideoView;->an:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->isMiniCardShowing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1029
    invoke-direct {p0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->i()V

    :cond_4
    return-void
.end method
