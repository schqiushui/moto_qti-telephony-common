.class public Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;
.super Lcom/android/internal/telephony/data/DataConfigManager;
.source "QtiDataConfigManager.java"


# static fields
.field private static final EVENT_CARRIER_CONFIG_CHANGED:I = 0x1


# instance fields
.field protected mApnsWithSameGID:[Ljava/lang/String;

.field protected mIsApnFilteringRequired:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataConfigManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V

    .line 48
    const-string v0, "QtiDataConfigManager: constructor"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->log(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getApnsWithSameGID()[Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mApnsWithSameGID:[Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierNrAvailabilities()[I
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "carrier_nr_availabilities_int_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getPdpRejectCauseSamePdnNotAllowed()Ljava/lang/String;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x10402a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdpRejectCauseServiceNotSubscribed()Ljava/lang/String;
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x10402a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdpRejectCauseUserAuthentication()Ljava/lang/String;
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x10402a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdpRejectDialogTitle()Ljava/lang/String;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x10402a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdpRejectRetryDelay()J
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x10e00d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public isApnFilteringWithRadioCapabilityRequired()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mIsApnFilteringRequired:Z

    return v0
.end method

.method public isPdpRejectConfigEnabled()Z
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x11101e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onCarrierConfigLoadedForEssentialRecords()V
    .locals 1

    .line 52
    const-string v0, "QtiDCM onCarrierConfigLoadedForEssentialRecords"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->log(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->sendEmptyMessage(I)Z

    .line 54
    return-void
.end method

.method protected updateOtherConfigs()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "multi_apn_array_for_same_gid"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mApnsWithSameGID:[Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "require_apn_filtering_with_radio_capability_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mIsApnFilteringRequired:Z

    .line 64
    return-void
.end method
