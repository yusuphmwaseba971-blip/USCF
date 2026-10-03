.class final Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/expressad/video/dynview/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$1;->a:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mute"

    .line 122
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$1;->a:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    invoke-static {v1, v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;I)I

    :cond_0
    const-string v0, "position"

    .line 126
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 128
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$1;->a:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    invoke-static {v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$1;->a:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    invoke-static {v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-lez p1, :cond_2

    .line 129
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$1;->a:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    invoke-static {v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    invoke-static {v0, v1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/foundation/d/c;

    .line 130
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$1;->a:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    invoke-static {v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)I

    .line 131
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$1;->a:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    invoke-static {v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$1;->a:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    invoke-static {v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->bi()I

    move-result p1

    invoke-static {v0, p1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;I)I

    .line 135
    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$1;->a:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    invoke-static {p1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->c(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->i()I

    move-result v0

    iget-object v1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$1;->a:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    invoke-static {v1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->d(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->a(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;II)I

    move-result p1

    .line 136
    iget-object v0, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$1;->a:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    invoke-static {v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->c(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/foundation/d/c;->b(I)V

    .line 137
    iget-object p1, p0, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity$1;->a:Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;

    invoke-static {p1}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->c(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;->b(Lcom/anythink/expressad/reward/player/ATRewardVideoActivity;Lcom/anythink/expressad/foundation/d/c;)V

    :cond_2
    return-void
.end method
