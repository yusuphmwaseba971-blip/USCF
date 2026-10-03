.class public abstract Lcom/anythink/basead/ui/animplayerview/BasePlayerView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;
    }
.end annotation


# instance fields
.field protected h:J

.field protected i:J

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:Z

.field protected n:Z

.field protected o:Z

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field protected s:Z

.field protected t:Ljava/lang/Thread;

.field protected u:Landroid/os/Handler;

.field protected v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

.field protected w:Lcom/anythink/core/common/f/l;

.field protected x:Lcom/anythink/core/common/f/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x1388

    .line 23
    iput-wide v0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->h:J

    const-wide/16 v0, -0x1

    .line 24
    iput-wide v0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->i:J

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->q:Z

    .line 35
    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->r:Z

    .line 36
    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->s:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x1388

    .line 23
    iput-wide p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->h:J

    const-wide/16 p1, -0x1

    .line 24
    iput-wide p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->i:J

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->q:Z

    .line 35
    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->r:Z

    .line 36
    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->s:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x1388

    .line 23
    iput-wide p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->h:J

    const-wide/16 p1, -0x1

    .line 24
    iput-wide p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->i:J

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->q:Z

    .line 35
    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->r:Z

    .line 36
    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->s:Z

    return-void
.end method


# virtual methods
.method protected a(Lcom/anythink/basead/c/e;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->a(Lcom/anythink/basead/c/e;)V

    :cond_0
    const/4 p1, 0x0

    .line 1098
    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-void
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getVideoLength()J
.end method

.method public abstract hasVideo()Z
.end method

.method protected final i()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->v:Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    return-void
.end method

.method public init(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/l;",
            "Lcom/anythink/core/common/f/m;",
            "Z",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->w:Lcom/anythink/core/common/f/l;

    .line 60
    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->x:Lcom/anythink/core/common/f/m;

    return-void
.end method

.method public abstract isMute()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract setListener(Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
