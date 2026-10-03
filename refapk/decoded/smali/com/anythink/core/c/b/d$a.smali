.class public final Lcom/anythink/core/c/b/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/c/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "user_value_placement"

.field public static final b:Ljava/lang/String; = "type"

.field public static final c:Ljava/lang/String; = "placement_id"

.field public static final d:Ljava/lang/String; = "request_id"

.field public static final e:Ljava/lang/String; = "network_firm_id"

.field public static final f:Ljava/lang/String; = "ad_source_id"

.field public static final g:Ljava/lang/String; = "dsp_id"

.field public static final h:Ljava/lang/String; = "price"

.field public static final i:Ljava/lang/String; = "record_time"

.field public static final j:Ljava/lang/String; = "ps_id"

.field public static final k:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS user_value_placement(type INTEGER, placement_id TEXT, request_id TEXT, network_firm_id INTEGER, ad_source_id TEXT, dsp_id TEXT, price DOUBLE, record_time INTEGER, ps_id TEXT )"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
