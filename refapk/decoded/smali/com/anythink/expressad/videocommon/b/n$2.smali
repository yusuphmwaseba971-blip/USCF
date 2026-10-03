.class final Lcom/anythink/expressad/videocommon/b/n$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/expressad/videocommon/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/videocommon/b/n;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/expressad/foundation/d/c;

.field final synthetic b:Lcom/anythink/expressad/videocommon/b/n;


# direct methods
.method constructor <init>(Lcom/anythink/expressad/videocommon/b/n;Lcom/anythink/expressad/foundation/d/c;)V
    .locals 0

    .line 1187
    iput-object p1, p0, Lcom/anythink/expressad/videocommon/b/n$2;->b:Lcom/anythink/expressad/videocommon/b/n;

    iput-object p2, p0, Lcom/anythink/expressad/videocommon/b/n$2;->a:Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1190
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n$2;->b:Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {v0}, Lcom/anythink/expressad/videocommon/b/n;->b(Lcom/anythink/expressad/videocommon/b/n;)Lcom/anythink/expressad/videocommon/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n$2;->b:Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {v0}, Lcom/anythink/expressad/videocommon/b/n;->b(Lcom/anythink/expressad/videocommon/b/n;)Lcom/anythink/expressad/videocommon/d/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/videocommon/d/b;->a(Ljava/lang/String;)V

    .line 1194
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n$2;->b:Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {v0}, Lcom/anythink/expressad/videocommon/b/n;->c(Lcom/anythink/expressad/videocommon/b/n;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n$2;->b:Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {v0}, Lcom/anythink/expressad/videocommon/b/n;->c(Lcom/anythink/expressad/videocommon/b/n;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n$2;->a:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_1

    .line 1195
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n$2;->b:Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {v0}, Lcom/anythink/expressad/videocommon/b/n;->c(Lcom/anythink/expressad/videocommon/b/n;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/videocommon/b/n$2;->a:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/videocommon/d/b;

    if-eqz v0, :cond_1

    .line 1197
    invoke-interface {v0, p1}, Lcom/anythink/expressad/videocommon/d/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1204
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n$2;->a:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_0

    .line 1205
    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n$2;->a:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n$2;->a:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->aB()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n$2;->b:Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {v0}, Lcom/anythink/expressad/videocommon/b/n;->b(Lcom/anythink/expressad/videocommon/b/n;)Lcom/anythink/expressad/videocommon/d/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1214
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n$2;->b:Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {v0}, Lcom/anythink/expressad/videocommon/b/n;->b(Lcom/anythink/expressad/videocommon/b/n;)Lcom/anythink/expressad/videocommon/d/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n$2;->b:Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {v0}, Lcom/anythink/expressad/videocommon/b/n;->c(Lcom/anythink/expressad/videocommon/b/n;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n$2;->b:Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {v0}, Lcom/anythink/expressad/videocommon/b/n;->c(Lcom/anythink/expressad/videocommon/b/n;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n$2;->a:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_2

    .line 1218
    iget-object v0, p0, Lcom/anythink/expressad/videocommon/b/n$2;->b:Lcom/anythink/expressad/videocommon/b/n;

    invoke-static {v0}, Lcom/anythink/expressad/videocommon/b/n;->c(Lcom/anythink/expressad/videocommon/b/n;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/videocommon/b/n$2;->a:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/videocommon/d/b;

    if-eqz v0, :cond_2

    .line 1220
    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
