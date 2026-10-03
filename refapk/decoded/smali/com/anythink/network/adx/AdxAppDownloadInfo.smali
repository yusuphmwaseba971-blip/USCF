.class public Lcom/anythink/network/adx/AdxAppDownloadInfo;
.super Lcom/anythink/core/api/ATAdAppInfo;


# instance fields
.field public appName:Ljava/lang/String;

.field public appPrivacyLink:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public apppermissionLink:Ljava/lang/String;

.field public functionLink:Ljava/lang/String;

.field public publisher:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/d/h;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/anythink/core/api/ATAdAppInfo;-><init>()V

    .line 16
    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->publisher:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->appVersion:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->appPrivacyLink:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->apppermissionLink:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->appName:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->m()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->functionLink:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppDownloadCount()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getAppPermissonUrl()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->apppermissionLink:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPrivacyUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->appPrivacyLink:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFunctionUrl()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->functionLink:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->publisher:Ljava/lang/String;

    return-object v0
.end method
