.class Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;
.super Ljava/lang/Object;
.source "QtiPhoneUtils.java"

# interfaces
.implements Lcom/qti/extphone/ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    .line 138
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmContext(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Landroid/content/Context;

    move-result-object v2

    .line 143
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    iget-object v3, v3, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtPhoneCallback:Lcom/qti/extphone/IExtPhoneCallback;

    .line 142
    invoke-virtual {v1, v2, v3}, Lcom/qti/extphone/ExtTelephonyManager;->registerCallback(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;)Lcom/qti/extphone/Client;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;Lcom/qti/extphone/Client;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mExtTelManagerServiceCallback: service connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Lcom/qti/extphone/Client;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiPhoneUtils"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$sfgetsReadyListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$OnQtiPhoneReadyListener;

    .line 146
    .local v1, "listener":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$OnQtiPhoneReadyListener;
    invoke-interface {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$OnQtiPhoneReadyListener;->onQtiPhoneReady()V

    .line 147
    .end local v1    # "listener":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$OnQtiPhoneReadyListener;
    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .line 152
    const-string v0, "QtiPhoneUtils"

    const-string v1, "mExtTelManagerServiceCallback: service disconnected"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method
