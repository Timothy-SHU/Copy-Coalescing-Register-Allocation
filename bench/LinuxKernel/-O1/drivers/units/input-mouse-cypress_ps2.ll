; ModuleID = 'drivers/input/mouse/cypress_ps2.c'
source_filename = "drivers/input/mouse/cypress_ps2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_call_key = type { ptr, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i64, i64, i64, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i64, [8 x i8], i8, i8, ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.cytp_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [12 x i64], [1 x i64], [1 x i64], [1 x i64], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.cytp_report_data = type { i32, [2 x %struct.cytp_contact], i8 }
%struct.cytp_contact = type { i32, i32, i32 }
%struct.input_mt_pos = type { i16, i16 }

@.str = private unnamed_addr constant [8 x i8] c"Cypress\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"Trackpad\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [49 x i8] c"cypress_ps2: Unable to query Trackpad hardware.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [64 x i8] c"cypress_ps2: init: Unable to initialize Cypress absolute mode.\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [48 x i8] c"cypress_ps2: init: Unable to set input params.\0A\00", align 1, !dbg !22
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !27
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@cytp_resolution = internal constant [4 x i8] c"\00\01\02\03", align 1, !dbg !232
@cytp_rate = internal constant [6 x i8] c"\0A\14(<d\C8", align 1, !dbg !238
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !243
@.str.6 = private unnamed_addr constant [52 x i8] c"cypress_ps2: Reconnect: unable to detect trackpad.\0A\00", align 1, !dbg !248
@.str.7 = private unnamed_addr constant [69 x i8] c"cypress_ps2: Reconnect: Unable to initialize Cypress absolute mode.\0A\00", align 1, !dbg !253
@llvm.compiler.used = appending global [1 x ptr] [ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cypress_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) #0 align 16 !dbg !267 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %set_properties.addr = alloca i8, align 1
  %param = alloca [3 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !4829, metadata !DIExpression()), !dbg !4833
  %frombool = zext i1 %set_properties to i8
  store i8 %frombool, ptr %set_properties.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %set_properties.addr, metadata !4830, metadata !DIExpression()), !dbg !4834
  call void @llvm.lifetime.start.p0(i64 3, ptr %param) #16, !dbg !4835
  call void @llvm.dbg.declare(metadata ptr %param, metadata !4831, metadata !DIExpression()), !dbg !4836
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !4837
  %arraydecay = getelementptr inbounds [3 x i8], ptr %param, i64 0, i64 0, !dbg !4839
  %call = call i32 @cypress_send_ext_cmd(ptr noundef %0, i8 noundef zeroext 0, ptr noundef %arraydecay) #17, !dbg !4840
  %tobool = icmp ne i32 %call, 0, !dbg !4840
  br i1 %tobool, label %if.then, label %if.end, !dbg !4841

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !4842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4842

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [3 x i8], ptr %param, i64 0, i64 0, !dbg !4843
  %1 = load i8, ptr %arrayidx, align 1, !dbg !4843
  %conv = zext i8 %1 to i32, !dbg !4843
  %cmp = icmp ne i32 %conv, 51, !dbg !4845
  br i1 %cmp, label %if.then6, label %lor.lhs.false, !dbg !4846

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx2 = getelementptr [3 x i8], ptr %param, i64 0, i64 1, !dbg !4847
  %2 = load i8, ptr %arrayidx2, align 1, !dbg !4847
  %conv3 = zext i8 %2 to i32, !dbg !4847
  %cmp4 = icmp ne i32 %conv3, 204, !dbg !4848
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !4849

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -19, ptr %retval, align 4, !dbg !4850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4850

if.end7:                                          ; preds = %lor.lhs.false
  %3 = load i8, ptr %set_properties.addr, align 1, !dbg !4851, !range !4853, !noundef !1567
  %tobool8 = trunc i8 %3 to i1, !dbg !4851
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4854

if.then9:                                         ; preds = %if.end7
  %4 = load ptr, ptr %psmouse.addr, align 8, !dbg !4855
  %vendor = getelementptr inbounds %struct.psmouse, ptr %4, i32 0, i32 4, !dbg !4857
  store ptr @.str, ptr %vendor, align 8, !dbg !4858
  %5 = load ptr, ptr %psmouse.addr, align 8, !dbg !4859
  %name = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 5, !dbg !4860
  store ptr @.str.1, ptr %name, align 8, !dbg !4861
  br label %if.end10, !dbg !4862

if.end10:                                         ; preds = %if.then9, %if.end7
  store i32 0, ptr %retval, align 4, !dbg !4863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4863

cleanup:                                          ; preds = %if.end10, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 3, ptr %param) #16, !dbg !4864
  %6 = load i32, ptr %retval, align 4, !dbg !4864
  ret i32 %6, !dbg !4864
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cypress_send_ext_cmd(ptr noundef %psmouse, i8 noundef zeroext %cmd, ptr noundef %param) #0 align 16 !dbg !4865 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %cmd.addr = alloca i8, align 1
  %param.addr = alloca ptr, align 8
  %tries = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !4869, metadata !DIExpression()), !dbg !4874
  store i8 %cmd, ptr %cmd.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !4870, metadata !DIExpression()), !dbg !4875
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !4871, metadata !DIExpression()), !dbg !4876
  call void @llvm.lifetime.start.p0(i64 4, ptr %tries) #16, !dbg !4877
  call void @llvm.dbg.declare(metadata ptr %tries, metadata !4872, metadata !DIExpression()), !dbg !4878
  store i32 3, ptr %tries, align 4, !dbg !4878
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !4879
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !4873, metadata !DIExpression()), !dbg !4880
  br label %do.body, !dbg !4881

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !4882
  %1 = load i8, ptr %cmd.addr, align 1, !dbg !4884
  %conv = zext i8 %1 to i32, !dbg !4884
  %and = and i32 %conv, 3, !dbg !4884
  %conv1 = trunc i32 %and to i8, !dbg !4884
  %call = call i32 @cypress_ps2_ext_cmd(ptr noundef %0, i16 noundef zeroext 4328, i8 noundef zeroext %conv1) #17, !dbg !4885
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !4886
  %3 = load i8, ptr %cmd.addr, align 1, !dbg !4887
  %conv2 = zext i8 %3 to i32, !dbg !4887
  %shr = ashr i32 %conv2, 2, !dbg !4887
  %and3 = and i32 %shr, 3, !dbg !4887
  %conv4 = trunc i32 %and3 to i8, !dbg !4887
  %call5 = call i32 @cypress_ps2_ext_cmd(ptr noundef %2, i16 noundef zeroext 4328, i8 noundef zeroext %conv4) #17, !dbg !4888
  %4 = load ptr, ptr %psmouse.addr, align 8, !dbg !4889
  %5 = load i8, ptr %cmd.addr, align 1, !dbg !4890
  %conv6 = zext i8 %5 to i32, !dbg !4890
  %shr7 = ashr i32 %conv6, 4, !dbg !4890
  %and8 = and i32 %shr7, 3, !dbg !4890
  %conv9 = trunc i32 %and8 to i8, !dbg !4890
  %call10 = call i32 @cypress_ps2_ext_cmd(ptr noundef %4, i16 noundef zeroext 4328, i8 noundef zeroext %conv9) #17, !dbg !4891
  %6 = load ptr, ptr %psmouse.addr, align 8, !dbg !4892
  %7 = load i8, ptr %cmd.addr, align 1, !dbg !4893
  %conv11 = zext i8 %7 to i32, !dbg !4893
  %shr12 = ashr i32 %conv11, 6, !dbg !4893
  %and13 = and i32 %shr12, 3, !dbg !4893
  %conv14 = trunc i32 %and13 to i8, !dbg !4893
  %call15 = call i32 @cypress_ps2_ext_cmd(ptr noundef %6, i16 noundef zeroext 4328, i8 noundef zeroext %conv14) #17, !dbg !4894
  %8 = load ptr, ptr %psmouse.addr, align 8, !dbg !4895
  %9 = load i8, ptr %cmd.addr, align 1, !dbg !4896
  %10 = load ptr, ptr %param.addr, align 8, !dbg !4897
  %call16 = call i32 @cypress_ps2_read_cmd_status(ptr noundef %8, i8 noundef zeroext %9, ptr noundef %10) #17, !dbg !4898
  store i32 %call16, ptr %rc, align 4, !dbg !4899
  %11 = load i32, ptr %rc, align 4, !dbg !4900
  %tobool = icmp ne i32 %11, 0, !dbg !4900
  br i1 %tobool, label %if.then, label %if.end, !dbg !4902

if.then:                                          ; preds = %do.body
  br label %do.cond, !dbg !4903

if.end:                                           ; preds = %do.body
  %12 = load ptr, ptr %psmouse.addr, align 8, !dbg !4904
  %13 = load i8, ptr %cmd.addr, align 1, !dbg !4906
  %14 = load ptr, ptr %param.addr, align 8, !dbg !4907
  %call17 = call zeroext i1 @cypress_verify_cmd_state(ptr noundef %12, i8 noundef zeroext %13, ptr noundef %14) #17, !dbg !4908
  br i1 %call17, label %if.then18, label %if.end19, !dbg !4909

if.then18:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4910
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4910

if.end19:                                         ; preds = %if.end
  br label %do.cond, !dbg !4911

do.cond:                                          ; preds = %if.end19, %if.then
  %15 = load i32, ptr %tries, align 4, !dbg !4912
  %dec = add i32 %15, -1, !dbg !4912
  store i32 %dec, ptr %tries, align 4, !dbg !4912
  %cmp = icmp sgt i32 %dec, 0, !dbg !4913
  br i1 %cmp, label %do.body, label %do.end, !dbg !4911, !llvm.loop !4914

do.end:                                           ; preds = %do.cond
  store i32 -5, ptr %retval, align 4, !dbg !4918
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4918

cleanup:                                          ; preds = %do.end, %if.then18
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !4919
  call void @llvm.lifetime.end.p0(i64 4, ptr %tries) #16, !dbg !4919
  %16 = load i32, ptr %retval, align 4, !dbg !4919
  ret i32 %16, !dbg !4919
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cypress_init(ptr noundef %psmouse) #0 align 16 !dbg !4920 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %cytp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !4922, metadata !DIExpression()), !dbg !4941
  call void @llvm.lifetime.start.p0(i64 8, ptr %cytp) #16, !dbg !4942
  call void @llvm.dbg.declare(metadata ptr %cytp, metadata !4923, metadata !DIExpression()), !dbg !4943
  %call = call noalias ptr @kzalloc(i64 noundef 48, i32 noundef 3264) #18, !dbg !4944
  store ptr %call, ptr %cytp, align 8, !dbg !4945
  %0 = load ptr, ptr %cytp, align 8, !dbg !4946
  %tobool = icmp ne ptr %0, null, !dbg !4946
  br i1 %tobool, label %if.end, label %if.then, !dbg !4948

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4949
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26, !dbg !4949

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cytp, align 8, !dbg !4950
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !4951
  %private = getelementptr inbounds %struct.psmouse, ptr %2, i32 0, i32 0, !dbg !4952
  store ptr %1, ptr %private, align 8, !dbg !4953
  %3 = load ptr, ptr %psmouse.addr, align 8, !dbg !4954
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 10, !dbg !4955
  store i8 8, ptr %pktsize, align 2, !dbg !4956
  %4 = load ptr, ptr %psmouse.addr, align 8, !dbg !4957
  call void @cypress_reset(ptr noundef %4) #17, !dbg !4958
  %5 = load ptr, ptr %psmouse.addr, align 8, !dbg !4959
  %call1 = call i32 @cypress_query_hardware(ptr noundef %5) #17, !dbg !4961
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4961
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4962

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !4963

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !4966

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4966

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %psmouse.addr, align 8, !dbg !4963
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 2, !dbg !4963
  %serio = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 0, !dbg !4963
  %7 = load ptr, ptr %serio, align 8, !dbg !4963
  %dev = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 18, !dbg !4963
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.2) #19, !dbg !4963
  br label %err_exit, !dbg !4968

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %psmouse.addr, align 8, !dbg !4969
  %call5 = call i32 @cypress_set_absolute_mode(ptr noundef %8) #17, !dbg !4971
  %tobool6 = icmp ne i32 %call5, 0, !dbg !4971
  br i1 %tobool6, label %if.then7, label %if.end14, !dbg !4972

if.then7:                                         ; preds = %if.end4
  br label %do.body8, !dbg !4973

do.body8:                                         ; preds = %if.then7
  br label %do.cond9, !dbg !4976

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !4976

do.end10:                                         ; preds = %do.cond9
  %9 = load ptr, ptr %psmouse.addr, align 8, !dbg !4973
  %ps2dev11 = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 2, !dbg !4973
  %serio12 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev11, i32 0, i32 0, !dbg !4973
  %10 = load ptr, ptr %serio12, align 8, !dbg !4973
  %dev13 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 18, !dbg !4973
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef @.str.3) #19, !dbg !4973
  br label %err_exit, !dbg !4978

if.end14:                                         ; preds = %if.end4
  %11 = load ptr, ptr %psmouse.addr, align 8, !dbg !4979
  %dev15 = getelementptr inbounds %struct.psmouse, ptr %11, i32 0, i32 1, !dbg !4981
  %12 = load ptr, ptr %dev15, align 8, !dbg !4981
  %13 = load ptr, ptr %cytp, align 8, !dbg !4982
  %call16 = call i32 @cypress_set_input_params(ptr noundef %12, ptr noundef %13) #17, !dbg !4983
  %cmp = icmp slt i32 %call16, 0, !dbg !4984
  br i1 %cmp, label %if.then17, label %if.end24, !dbg !4985

if.then17:                                        ; preds = %if.end14
  br label %do.body18, !dbg !4986

do.body18:                                        ; preds = %if.then17
  br label %do.cond19, !dbg !4989

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !4989

do.end20:                                         ; preds = %do.cond19
  %14 = load ptr, ptr %psmouse.addr, align 8, !dbg !4986
  %ps2dev21 = getelementptr inbounds %struct.psmouse, ptr %14, i32 0, i32 2, !dbg !4986
  %serio22 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev21, i32 0, i32 0, !dbg !4986
  %15 = load ptr, ptr %serio22, align 8, !dbg !4986
  %dev23 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 18, !dbg !4986
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef @.str.4) #19, !dbg !4986
  br label %err_exit, !dbg !4991

if.end24:                                         ; preds = %if.end14
  %16 = load ptr, ptr %psmouse.addr, align 8, !dbg !4992
  %model = getelementptr inbounds %struct.psmouse, ptr %16, i32 0, i32 14, !dbg !4993
  store i32 1, ptr %model, align 8, !dbg !4994
  %17 = load ptr, ptr %psmouse.addr, align 8, !dbg !4995
  %protocol_handler = getelementptr inbounds %struct.psmouse, ptr %17, i32 0, i32 26, !dbg !4996
  store ptr @cypress_protocol_handler, ptr %protocol_handler, align 8, !dbg !4997
  %18 = load ptr, ptr %psmouse.addr, align 8, !dbg !4998
  %set_rate = getelementptr inbounds %struct.psmouse, ptr %18, i32 0, i32 27, !dbg !4999
  store ptr @cypress_set_rate, ptr %set_rate, align 8, !dbg !5000
  %19 = load ptr, ptr %psmouse.addr, align 8, !dbg !5001
  %disconnect = getelementptr inbounds %struct.psmouse, ptr %19, i32 0, i32 32, !dbg !5002
  store ptr @cypress_disconnect, ptr %disconnect, align 8, !dbg !5003
  %20 = load ptr, ptr %psmouse.addr, align 8, !dbg !5004
  %reconnect = getelementptr inbounds %struct.psmouse, ptr %20, i32 0, i32 30, !dbg !5005
  store ptr @cypress_reconnect, ptr %reconnect, align 8, !dbg !5006
  %21 = load ptr, ptr %psmouse.addr, align 8, !dbg !5007
  %cleanup = getelementptr inbounds %struct.psmouse, ptr %21, i32 0, i32 33, !dbg !5008
  store ptr @cypress_reset, ptr %cleanup, align 8, !dbg !5009
  %22 = load ptr, ptr %psmouse.addr, align 8, !dbg !5010
  %resync_time = getelementptr inbounds %struct.psmouse, ptr %22, i32 0, i32 24, !dbg !5011
  store i32 0, ptr %resync_time, align 8, !dbg !5012
  store i32 0, ptr %retval, align 4, !dbg !5013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26, !dbg !5013

err_exit:                                         ; preds = %do.end20, %do.end10, %do.end
  call void @llvm.dbg.label(metadata !4940), !dbg !5014
  %23 = load ptr, ptr %psmouse.addr, align 8, !dbg !5015
  call void @cypress_reset(ptr noundef %23) #17, !dbg !5016
  %24 = load ptr, ptr %psmouse.addr, align 8, !dbg !5017
  %private25 = getelementptr inbounds %struct.psmouse, ptr %24, i32 0, i32 0, !dbg !5018
  store ptr null, ptr %private25, align 8, !dbg !5019
  %25 = load ptr, ptr %cytp, align 8, !dbg !5020
  call void @kfree(ptr noundef %25) #17, !dbg !5021
  store i32 -1, ptr %retval, align 4, !dbg !5022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26, !dbg !5022

cleanup26:                                        ; preds = %err_exit, %if.end24, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cytp) #16, !dbg !5023
  %26 = load i32, ptr %retval, align 4, !dbg !5023
  ret i32 %26, !dbg !5023
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !5024 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5028, metadata !DIExpression()), !dbg !5030
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5029, metadata !DIExpression()), !dbg !5031
  %0 = load i64, ptr %size.addr, align 8, !dbg !5032
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5033
  %or = or i32 %1, 256, !dbg !5034
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !5035
  ret ptr %call, !dbg !5036
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cypress_reset(ptr noundef %psmouse) #0 align 16 !dbg !5037 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %cytp = alloca ptr, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5039, metadata !DIExpression()), !dbg !5041
  call void @llvm.lifetime.start.p0(i64 8, ptr %cytp) #16, !dbg !5042
  call void @llvm.dbg.declare(metadata ptr %cytp, metadata !5040, metadata !DIExpression()), !dbg !5043
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5044
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !5045
  %1 = load ptr, ptr %private, align 8, !dbg !5045
  store ptr %1, ptr %cytp, align 8, !dbg !5043
  %2 = load ptr, ptr %cytp, align 8, !dbg !5046
  %mode = getelementptr inbounds %struct.cytp_data, ptr %2, i32 0, i32 2, !dbg !5047
  store i32 0, ptr %mode, align 4, !dbg !5048
  %3 = load ptr, ptr %psmouse.addr, align 8, !dbg !5049
  %call = call i32 @psmouse_reset(ptr noundef %3) #17, !dbg !5050
  call void @llvm.lifetime.end.p0(i64 8, ptr %cytp) #16, !dbg !5051
  ret void, !dbg !5051
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cypress_query_hardware(ptr noundef %psmouse) #0 align 16 !dbg !5052 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5054, metadata !DIExpression()), !dbg !5056
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5057
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5055, metadata !DIExpression()), !dbg !5058
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5059
  %call = call i32 @cypress_read_fw_version(ptr noundef %0) #17, !dbg !5060
  store i32 %call, ptr %ret, align 4, !dbg !5061
  %1 = load i32, ptr %ret, align 4, !dbg !5062
  %tobool = icmp ne i32 %1, 0, !dbg !5062
  br i1 %tobool, label %if.then, label %if.end, !dbg !5064

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !5065
  store i32 %2, ptr %retval, align 4, !dbg !5066
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5066

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %psmouse.addr, align 8, !dbg !5067
  %call1 = call i32 @cypress_read_tp_metrics(ptr noundef %3) #17, !dbg !5068
  store i32 %call1, ptr %ret, align 4, !dbg !5069
  %4 = load i32, ptr %ret, align 4, !dbg !5070
  %tobool2 = icmp ne i32 %4, 0, !dbg !5070
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5072

if.then3:                                         ; preds = %if.end
  %5 = load i32, ptr %ret, align 4, !dbg !5073
  store i32 %5, ptr %retval, align 4, !dbg !5074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5074

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5075

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5076
  %6 = load i32, ptr %retval, align 4, !dbg !5076
  ret i32 %6, !dbg !5076
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5077 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cypress_set_absolute_mode(ptr noundef %psmouse) #0 align 16 !dbg !5081 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %cytp = alloca ptr, align 8
  %param = alloca [3 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5083, metadata !DIExpression()), !dbg !5086
  call void @llvm.lifetime.start.p0(i64 8, ptr %cytp) #16, !dbg !5087
  call void @llvm.dbg.declare(metadata ptr %cytp, metadata !5084, metadata !DIExpression()), !dbg !5088
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5089
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !5090
  %1 = load ptr, ptr %private, align 8, !dbg !5090
  store ptr %1, ptr %cytp, align 8, !dbg !5088
  call void @llvm.lifetime.start.p0(i64 3, ptr %param) #16, !dbg !5091
  call void @llvm.dbg.declare(metadata ptr %param, metadata !5085, metadata !DIExpression()), !dbg !5092
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !5093
  %arraydecay = getelementptr inbounds [3 x i8], ptr %param, i64 0, i64 0, !dbg !5095
  %call = call i32 @cypress_send_ext_cmd(ptr noundef %2, i8 noundef zeroext 17, ptr noundef %arraydecay) #17, !dbg !5096
  %cmp = icmp slt i32 %call, 0, !dbg !5097
  br i1 %cmp, label %if.then, label %if.end, !dbg !5098

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5099
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5099

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %cytp, align 8, !dbg !5100
  %mode = getelementptr inbounds %struct.cytp_data, ptr %3, i32 0, i32 2, !dbg !5101
  %4 = load i32, ptr %mode, align 4, !dbg !5101
  %and = and i32 %4, -16, !dbg !5102
  %or = or i32 %and, 8, !dbg !5103
  %5 = load ptr, ptr %cytp, align 8, !dbg !5104
  %mode1 = getelementptr inbounds %struct.cytp_data, ptr %5, i32 0, i32 2, !dbg !5105
  store i32 %or, ptr %mode1, align 4, !dbg !5106
  %6 = load ptr, ptr %psmouse.addr, align 8, !dbg !5107
  call void @cypress_set_packet_size(ptr noundef %6, i32 noundef 5) #17, !dbg !5108
  store i32 0, ptr %retval, align 4, !dbg !5109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5109

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 3, ptr %param) #16, !dbg !5110
  call void @llvm.lifetime.end.p0(i64 8, ptr %cytp) #16, !dbg !5110
  %7 = load i32, ptr %retval, align 4, !dbg !5110
  ret i32 %7, !dbg !5110
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cypress_set_input_params(ptr noundef %input, ptr noundef %cytp) #0 align 16 !dbg !5111 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca ptr, align 8
  %cytp.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %input, ptr %input.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !5115, metadata !DIExpression()), !dbg !5118
  store ptr %cytp, ptr %cytp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cytp.addr, metadata !5116, metadata !DIExpression()), !dbg !5119
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5120
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5117, metadata !DIExpression()), !dbg !5121
  %0 = load ptr, ptr %cytp.addr, align 8, !dbg !5122
  %tp_res_x = getelementptr inbounds %struct.cytp_data, ptr %0, i32 0, i32 9, !dbg !5124
  %1 = load i32, ptr %tp_res_x, align 4, !dbg !5124
  %tobool = icmp ne i32 %1, 0, !dbg !5122
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5125

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %cytp.addr, align 8, !dbg !5126
  %tp_res_y = getelementptr inbounds %struct.cytp_data, ptr %2, i32 0, i32 10, !dbg !5127
  %3 = load i32, ptr %tp_res_y, align 4, !dbg !5127
  %tobool1 = icmp ne i32 %3, 0, !dbg !5126
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5128

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !5129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5129

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %input.addr, align 8, !dbg !5130
  %evbit = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 5, !dbg !5130
  %arraydecay = getelementptr inbounds [1 x i64], ptr %evbit, i64 0, i64 0, !dbg !5130
  %5 = ptrtoint ptr %arraydecay to i64, !dbg !5130
  %cmp = icmp ne i64 %5, 0, !dbg !5130
  %conv = zext i1 %cmp to i32, !dbg !5130
  %6 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5130
  br i1 %6, label %land.lhs.true, label %cond.false, !dbg !5130

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %input.addr, align 8, !dbg !5130
  %evbit2 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 5, !dbg !5130
  %arraydecay3 = getelementptr inbounds [1 x i64], ptr %evbit2, i64 0, i64 0, !dbg !5130
  %8 = ptrtoint ptr %arraydecay3 to i64, !dbg !5130
  %cmp4 = icmp ne i64 %8, 0, !dbg !5130
  br i1 %cmp4, label %land.lhs.true6, label %cond.false, !dbg !5130

land.lhs.true6:                                   ; preds = %land.lhs.true
  %9 = load ptr, ptr %input.addr, align 8, !dbg !5130
  %evbit7 = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 5, !dbg !5130
  %arraydecay8 = getelementptr inbounds [1 x i64], ptr %evbit7, i64 0, i64 0, !dbg !5130
  %10 = load i64, ptr %arraydecay8, align 8, !dbg !5130
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !5130
  br i1 %11, label %cond.true, label %cond.false, !dbg !5130

cond.true:                                        ; preds = %land.lhs.true6
  %12 = load ptr, ptr %input.addr, align 8, !dbg !5130
  %evbit9 = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 5, !dbg !5130
  %arraydecay10 = getelementptr inbounds [1 x i64], ptr %evbit9, i64 0, i64 0, !dbg !5130
  call void @generic___set_bit(i64 noundef 3, ptr noundef %arraydecay10) #17, !dbg !5130
  br label %cond.end, !dbg !5130

cond.false:                                       ; preds = %land.lhs.true6, %land.lhs.true, %if.end
  %13 = load ptr, ptr %input.addr, align 8, !dbg !5130
  %evbit11 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 5, !dbg !5130
  %arraydecay12 = getelementptr inbounds [1 x i64], ptr %evbit11, i64 0, i64 0, !dbg !5130
  call void @___set_bit(i64 noundef 3, ptr noundef %arraydecay12) #17, !dbg !5130
  br label %cond.end, !dbg !5130

cond.end:                                         ; preds = %cond.false, %cond.true
  %14 = load ptr, ptr %input.addr, align 8, !dbg !5131
  %15 = load ptr, ptr %cytp.addr, align 8, !dbg !5132
  %tp_max_abs_x = getelementptr inbounds %struct.cytp_data, ptr %15, i32 0, i32 7, !dbg !5133
  %16 = load i32, ptr %tp_max_abs_x, align 4, !dbg !5133
  call void @input_set_abs_params(ptr noundef %14, i32 noundef 0, i32 noundef 0, i32 noundef %16, i32 noundef 0, i32 noundef 0) #17, !dbg !5134
  %17 = load ptr, ptr %input.addr, align 8, !dbg !5135
  %18 = load ptr, ptr %cytp.addr, align 8, !dbg !5136
  %tp_max_abs_y = getelementptr inbounds %struct.cytp_data, ptr %18, i32 0, i32 8, !dbg !5137
  %19 = load i32, ptr %tp_max_abs_y, align 4, !dbg !5137
  call void @input_set_abs_params(ptr noundef %17, i32 noundef 1, i32 noundef 0, i32 noundef %19, i32 noundef 0, i32 noundef 0) #17, !dbg !5138
  %20 = load ptr, ptr %input.addr, align 8, !dbg !5139
  %21 = load ptr, ptr %cytp.addr, align 8, !dbg !5140
  %tp_min_pressure = getelementptr inbounds %struct.cytp_data, ptr %21, i32 0, i32 3, !dbg !5141
  %22 = load i32, ptr %tp_min_pressure, align 4, !dbg !5141
  %23 = load ptr, ptr %cytp.addr, align 8, !dbg !5142
  %tp_max_pressure = getelementptr inbounds %struct.cytp_data, ptr %23, i32 0, i32 4, !dbg !5143
  %24 = load i32, ptr %tp_max_pressure, align 4, !dbg !5143
  call void @input_set_abs_params(ptr noundef %20, i32 noundef 24, i32 noundef %22, i32 noundef %24, i32 noundef 0, i32 noundef 0) #17, !dbg !5144
  %25 = load ptr, ptr %input.addr, align 8, !dbg !5145
  call void @input_set_abs_params(ptr noundef %25, i32 noundef 28, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #17, !dbg !5146
  %26 = load ptr, ptr %input.addr, align 8, !dbg !5147
  %27 = load ptr, ptr %cytp.addr, align 8, !dbg !5148
  %tp_max_abs_x13 = getelementptr inbounds %struct.cytp_data, ptr %27, i32 0, i32 7, !dbg !5149
  %28 = load i32, ptr %tp_max_abs_x13, align 4, !dbg !5149
  call void @input_set_abs_params(ptr noundef %26, i32 noundef 53, i32 noundef 0, i32 noundef %28, i32 noundef 0, i32 noundef 0) #17, !dbg !5150
  %29 = load ptr, ptr %input.addr, align 8, !dbg !5151
  %30 = load ptr, ptr %cytp.addr, align 8, !dbg !5152
  %tp_max_abs_y14 = getelementptr inbounds %struct.cytp_data, ptr %30, i32 0, i32 8, !dbg !5153
  %31 = load i32, ptr %tp_max_abs_y14, align 4, !dbg !5153
  call void @input_set_abs_params(ptr noundef %29, i32 noundef 54, i32 noundef 0, i32 noundef %31, i32 noundef 0, i32 noundef 0) #17, !dbg !5154
  %32 = load ptr, ptr %input.addr, align 8, !dbg !5155
  call void @input_set_abs_params(ptr noundef %32, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #17, !dbg !5156
  %33 = load ptr, ptr %input.addr, align 8, !dbg !5157
  %call = call i32 @input_mt_init_slots(ptr noundef %33, i32 noundef 2, i32 noundef 12) #17, !dbg !5158
  store i32 %call, ptr %ret, align 4, !dbg !5159
  %34 = load i32, ptr %ret, align 4, !dbg !5160
  %cmp15 = icmp slt i32 %34, 0, !dbg !5162
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !5163

if.then17:                                        ; preds = %cond.end
  %35 = load i32, ptr %ret, align 4, !dbg !5164
  store i32 %35, ptr %retval, align 4, !dbg !5165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5165

if.end18:                                         ; preds = %cond.end
  %36 = load ptr, ptr %input.addr, align 8, !dbg !5166
  %propbit = getelementptr inbounds %struct.input_dev, ptr %36, i32 0, i32 4, !dbg !5166
  %arraydecay19 = getelementptr inbounds [1 x i64], ptr %propbit, i64 0, i64 0, !dbg !5166
  %37 = ptrtoint ptr %arraydecay19 to i64, !dbg !5166
  %cmp20 = icmp ne i64 %37, 0, !dbg !5166
  %conv21 = zext i1 %cmp20 to i32, !dbg !5166
  %38 = call i1 @llvm.is.constant.i32(i32 %conv21), !dbg !5166
  br i1 %38, label %land.lhs.true22, label %cond.false33, !dbg !5166

land.lhs.true22:                                  ; preds = %if.end18
  %39 = load ptr, ptr %input.addr, align 8, !dbg !5166
  %propbit23 = getelementptr inbounds %struct.input_dev, ptr %39, i32 0, i32 4, !dbg !5166
  %arraydecay24 = getelementptr inbounds [1 x i64], ptr %propbit23, i64 0, i64 0, !dbg !5166
  %40 = ptrtoint ptr %arraydecay24 to i64, !dbg !5166
  %cmp25 = icmp ne i64 %40, 0, !dbg !5166
  br i1 %cmp25, label %land.lhs.true27, label %cond.false33, !dbg !5166

land.lhs.true27:                                  ; preds = %land.lhs.true22
  %41 = load ptr, ptr %input.addr, align 8, !dbg !5166
  %propbit28 = getelementptr inbounds %struct.input_dev, ptr %41, i32 0, i32 4, !dbg !5166
  %arraydecay29 = getelementptr inbounds [1 x i64], ptr %propbit28, i64 0, i64 0, !dbg !5166
  %42 = load i64, ptr %arraydecay29, align 8, !dbg !5166
  %43 = call i1 @llvm.is.constant.i64(i64 %42), !dbg !5166
  br i1 %43, label %cond.true30, label %cond.false33, !dbg !5166

cond.true30:                                      ; preds = %land.lhs.true27
  %44 = load ptr, ptr %input.addr, align 8, !dbg !5166
  %propbit31 = getelementptr inbounds %struct.input_dev, ptr %44, i32 0, i32 4, !dbg !5166
  %arraydecay32 = getelementptr inbounds [1 x i64], ptr %propbit31, i64 0, i64 0, !dbg !5166
  call void @generic___set_bit(i64 noundef 3, ptr noundef %arraydecay32) #17, !dbg !5166
  br label %cond.end36, !dbg !5166

cond.false33:                                     ; preds = %land.lhs.true27, %land.lhs.true22, %if.end18
  %45 = load ptr, ptr %input.addr, align 8, !dbg !5166
  %propbit34 = getelementptr inbounds %struct.input_dev, ptr %45, i32 0, i32 4, !dbg !5166
  %arraydecay35 = getelementptr inbounds [1 x i64], ptr %propbit34, i64 0, i64 0, !dbg !5166
  call void @___set_bit(i64 noundef 3, ptr noundef %arraydecay35) #17, !dbg !5166
  br label %cond.end36, !dbg !5166

cond.end36:                                       ; preds = %cond.false33, %cond.true30
  %46 = load ptr, ptr %input.addr, align 8, !dbg !5167
  %47 = load ptr, ptr %cytp.addr, align 8, !dbg !5168
  %tp_res_x37 = getelementptr inbounds %struct.cytp_data, ptr %47, i32 0, i32 9, !dbg !5169
  %48 = load i32, ptr %tp_res_x37, align 4, !dbg !5169
  call void @input_abs_set_res(ptr noundef %46, i32 noundef 0, i32 noundef %48) #17, !dbg !5170
  %49 = load ptr, ptr %input.addr, align 8, !dbg !5171
  %50 = load ptr, ptr %cytp.addr, align 8, !dbg !5172
  %tp_res_y38 = getelementptr inbounds %struct.cytp_data, ptr %50, i32 0, i32 10, !dbg !5173
  %51 = load i32, ptr %tp_res_y38, align 4, !dbg !5173
  call void @input_abs_set_res(ptr noundef %49, i32 noundef 1, i32 noundef %51) #17, !dbg !5174
  %52 = load ptr, ptr %input.addr, align 8, !dbg !5175
  %53 = load ptr, ptr %cytp.addr, align 8, !dbg !5176
  %tp_res_x39 = getelementptr inbounds %struct.cytp_data, ptr %53, i32 0, i32 9, !dbg !5177
  %54 = load i32, ptr %tp_res_x39, align 4, !dbg !5177
  call void @input_abs_set_res(ptr noundef %52, i32 noundef 53, i32 noundef %54) #17, !dbg !5178
  %55 = load ptr, ptr %input.addr, align 8, !dbg !5179
  %56 = load ptr, ptr %cytp.addr, align 8, !dbg !5180
  %tp_res_y40 = getelementptr inbounds %struct.cytp_data, ptr %56, i32 0, i32 10, !dbg !5181
  %57 = load i32, ptr %tp_res_y40, align 4, !dbg !5181
  call void @input_abs_set_res(ptr noundef %55, i32 noundef 54, i32 noundef %57) #17, !dbg !5182
  %58 = load ptr, ptr %input.addr, align 8, !dbg !5183
  %keybit = getelementptr inbounds %struct.input_dev, ptr %58, i32 0, i32 6, !dbg !5183
  %arraydecay41 = getelementptr inbounds [12 x i64], ptr %keybit, i64 0, i64 0, !dbg !5183
  %59 = ptrtoint ptr %arraydecay41 to i64, !dbg !5183
  %cmp42 = icmp ne i64 %59, 0, !dbg !5183
  %conv43 = zext i1 %cmp42 to i32, !dbg !5183
  %60 = call i1 @llvm.is.constant.i32(i32 %conv43), !dbg !5183
  br i1 %60, label %land.lhs.true44, label %cond.false55, !dbg !5183

land.lhs.true44:                                  ; preds = %cond.end36
  %61 = load ptr, ptr %input.addr, align 8, !dbg !5183
  %keybit45 = getelementptr inbounds %struct.input_dev, ptr %61, i32 0, i32 6, !dbg !5183
  %arraydecay46 = getelementptr inbounds [12 x i64], ptr %keybit45, i64 0, i64 0, !dbg !5183
  %62 = ptrtoint ptr %arraydecay46 to i64, !dbg !5183
  %cmp47 = icmp ne i64 %62, 0, !dbg !5183
  br i1 %cmp47, label %land.lhs.true49, label %cond.false55, !dbg !5183

land.lhs.true49:                                  ; preds = %land.lhs.true44
  %63 = load ptr, ptr %input.addr, align 8, !dbg !5183
  %keybit50 = getelementptr inbounds %struct.input_dev, ptr %63, i32 0, i32 6, !dbg !5183
  %arraydecay51 = getelementptr inbounds [12 x i64], ptr %keybit50, i64 0, i64 0, !dbg !5183
  %64 = load i64, ptr %arraydecay51, align 8, !dbg !5183
  %65 = call i1 @llvm.is.constant.i64(i64 %64), !dbg !5183
  br i1 %65, label %cond.true52, label %cond.false55, !dbg !5183

cond.true52:                                      ; preds = %land.lhs.true49
  %66 = load ptr, ptr %input.addr, align 8, !dbg !5183
  %keybit53 = getelementptr inbounds %struct.input_dev, ptr %66, i32 0, i32 6, !dbg !5183
  %arraydecay54 = getelementptr inbounds [12 x i64], ptr %keybit53, i64 0, i64 0, !dbg !5183
  call void @generic___set_bit(i64 noundef 330, ptr noundef %arraydecay54) #17, !dbg !5183
  br label %cond.end58, !dbg !5183

cond.false55:                                     ; preds = %land.lhs.true49, %land.lhs.true44, %cond.end36
  %67 = load ptr, ptr %input.addr, align 8, !dbg !5183
  %keybit56 = getelementptr inbounds %struct.input_dev, ptr %67, i32 0, i32 6, !dbg !5183
  %arraydecay57 = getelementptr inbounds [12 x i64], ptr %keybit56, i64 0, i64 0, !dbg !5183
  call void @___set_bit(i64 noundef 330, ptr noundef %arraydecay57) #17, !dbg !5183
  br label %cond.end58, !dbg !5183

cond.end58:                                       ; preds = %cond.false55, %cond.true52
  %68 = load ptr, ptr %input.addr, align 8, !dbg !5184
  %keybit59 = getelementptr inbounds %struct.input_dev, ptr %68, i32 0, i32 6, !dbg !5184
  %arraydecay60 = getelementptr inbounds [12 x i64], ptr %keybit59, i64 0, i64 0, !dbg !5184
  %69 = ptrtoint ptr %arraydecay60 to i64, !dbg !5184
  %cmp61 = icmp ne i64 %69, 0, !dbg !5184
  %conv62 = zext i1 %cmp61 to i32, !dbg !5184
  %70 = call i1 @llvm.is.constant.i32(i32 %conv62), !dbg !5184
  br i1 %70, label %land.lhs.true63, label %cond.false74, !dbg !5184

land.lhs.true63:                                  ; preds = %cond.end58
  %71 = load ptr, ptr %input.addr, align 8, !dbg !5184
  %keybit64 = getelementptr inbounds %struct.input_dev, ptr %71, i32 0, i32 6, !dbg !5184
  %arraydecay65 = getelementptr inbounds [12 x i64], ptr %keybit64, i64 0, i64 0, !dbg !5184
  %72 = ptrtoint ptr %arraydecay65 to i64, !dbg !5184
  %cmp66 = icmp ne i64 %72, 0, !dbg !5184
  br i1 %cmp66, label %land.lhs.true68, label %cond.false74, !dbg !5184

land.lhs.true68:                                  ; preds = %land.lhs.true63
  %73 = load ptr, ptr %input.addr, align 8, !dbg !5184
  %keybit69 = getelementptr inbounds %struct.input_dev, ptr %73, i32 0, i32 6, !dbg !5184
  %arraydecay70 = getelementptr inbounds [12 x i64], ptr %keybit69, i64 0, i64 0, !dbg !5184
  %74 = load i64, ptr %arraydecay70, align 8, !dbg !5184
  %75 = call i1 @llvm.is.constant.i64(i64 %74), !dbg !5184
  br i1 %75, label %cond.true71, label %cond.false74, !dbg !5184

cond.true71:                                      ; preds = %land.lhs.true68
  %76 = load ptr, ptr %input.addr, align 8, !dbg !5184
  %keybit72 = getelementptr inbounds %struct.input_dev, ptr %76, i32 0, i32 6, !dbg !5184
  %arraydecay73 = getelementptr inbounds [12 x i64], ptr %keybit72, i64 0, i64 0, !dbg !5184
  call void @generic___set_bit(i64 noundef 325, ptr noundef %arraydecay73) #17, !dbg !5184
  br label %cond.end77, !dbg !5184

cond.false74:                                     ; preds = %land.lhs.true68, %land.lhs.true63, %cond.end58
  %77 = load ptr, ptr %input.addr, align 8, !dbg !5184
  %keybit75 = getelementptr inbounds %struct.input_dev, ptr %77, i32 0, i32 6, !dbg !5184
  %arraydecay76 = getelementptr inbounds [12 x i64], ptr %keybit75, i64 0, i64 0, !dbg !5184
  call void @___set_bit(i64 noundef 325, ptr noundef %arraydecay76) #17, !dbg !5184
  br label %cond.end77, !dbg !5184

cond.end77:                                       ; preds = %cond.false74, %cond.true71
  %78 = load ptr, ptr %input.addr, align 8, !dbg !5185
  %keybit78 = getelementptr inbounds %struct.input_dev, ptr %78, i32 0, i32 6, !dbg !5185
  %arraydecay79 = getelementptr inbounds [12 x i64], ptr %keybit78, i64 0, i64 0, !dbg !5185
  %79 = ptrtoint ptr %arraydecay79 to i64, !dbg !5185
  %cmp80 = icmp ne i64 %79, 0, !dbg !5185
  %conv81 = zext i1 %cmp80 to i32, !dbg !5185
  %80 = call i1 @llvm.is.constant.i32(i32 %conv81), !dbg !5185
  br i1 %80, label %land.lhs.true82, label %cond.false93, !dbg !5185

land.lhs.true82:                                  ; preds = %cond.end77
  %81 = load ptr, ptr %input.addr, align 8, !dbg !5185
  %keybit83 = getelementptr inbounds %struct.input_dev, ptr %81, i32 0, i32 6, !dbg !5185
  %arraydecay84 = getelementptr inbounds [12 x i64], ptr %keybit83, i64 0, i64 0, !dbg !5185
  %82 = ptrtoint ptr %arraydecay84 to i64, !dbg !5185
  %cmp85 = icmp ne i64 %82, 0, !dbg !5185
  br i1 %cmp85, label %land.lhs.true87, label %cond.false93, !dbg !5185

land.lhs.true87:                                  ; preds = %land.lhs.true82
  %83 = load ptr, ptr %input.addr, align 8, !dbg !5185
  %keybit88 = getelementptr inbounds %struct.input_dev, ptr %83, i32 0, i32 6, !dbg !5185
  %arraydecay89 = getelementptr inbounds [12 x i64], ptr %keybit88, i64 0, i64 0, !dbg !5185
  %84 = load i64, ptr %arraydecay89, align 8, !dbg !5185
  %85 = call i1 @llvm.is.constant.i64(i64 %84), !dbg !5185
  br i1 %85, label %cond.true90, label %cond.false93, !dbg !5185

cond.true90:                                      ; preds = %land.lhs.true87
  %86 = load ptr, ptr %input.addr, align 8, !dbg !5185
  %keybit91 = getelementptr inbounds %struct.input_dev, ptr %86, i32 0, i32 6, !dbg !5185
  %arraydecay92 = getelementptr inbounds [12 x i64], ptr %keybit91, i64 0, i64 0, !dbg !5185
  call void @generic___set_bit(i64 noundef 333, ptr noundef %arraydecay92) #17, !dbg !5185
  br label %cond.end96, !dbg !5185

cond.false93:                                     ; preds = %land.lhs.true87, %land.lhs.true82, %cond.end77
  %87 = load ptr, ptr %input.addr, align 8, !dbg !5185
  %keybit94 = getelementptr inbounds %struct.input_dev, ptr %87, i32 0, i32 6, !dbg !5185
  %arraydecay95 = getelementptr inbounds [12 x i64], ptr %keybit94, i64 0, i64 0, !dbg !5185
  call void @___set_bit(i64 noundef 333, ptr noundef %arraydecay95) #17, !dbg !5185
  br label %cond.end96, !dbg !5185

cond.end96:                                       ; preds = %cond.false93, %cond.true90
  %88 = load ptr, ptr %input.addr, align 8, !dbg !5186
  %keybit97 = getelementptr inbounds %struct.input_dev, ptr %88, i32 0, i32 6, !dbg !5186
  %arraydecay98 = getelementptr inbounds [12 x i64], ptr %keybit97, i64 0, i64 0, !dbg !5186
  %89 = ptrtoint ptr %arraydecay98 to i64, !dbg !5186
  %cmp99 = icmp ne i64 %89, 0, !dbg !5186
  %conv100 = zext i1 %cmp99 to i32, !dbg !5186
  %90 = call i1 @llvm.is.constant.i32(i32 %conv100), !dbg !5186
  br i1 %90, label %land.lhs.true101, label %cond.false112, !dbg !5186

land.lhs.true101:                                 ; preds = %cond.end96
  %91 = load ptr, ptr %input.addr, align 8, !dbg !5186
  %keybit102 = getelementptr inbounds %struct.input_dev, ptr %91, i32 0, i32 6, !dbg !5186
  %arraydecay103 = getelementptr inbounds [12 x i64], ptr %keybit102, i64 0, i64 0, !dbg !5186
  %92 = ptrtoint ptr %arraydecay103 to i64, !dbg !5186
  %cmp104 = icmp ne i64 %92, 0, !dbg !5186
  br i1 %cmp104, label %land.lhs.true106, label %cond.false112, !dbg !5186

land.lhs.true106:                                 ; preds = %land.lhs.true101
  %93 = load ptr, ptr %input.addr, align 8, !dbg !5186
  %keybit107 = getelementptr inbounds %struct.input_dev, ptr %93, i32 0, i32 6, !dbg !5186
  %arraydecay108 = getelementptr inbounds [12 x i64], ptr %keybit107, i64 0, i64 0, !dbg !5186
  %94 = load i64, ptr %arraydecay108, align 8, !dbg !5186
  %95 = call i1 @llvm.is.constant.i64(i64 %94), !dbg !5186
  br i1 %95, label %cond.true109, label %cond.false112, !dbg !5186

cond.true109:                                     ; preds = %land.lhs.true106
  %96 = load ptr, ptr %input.addr, align 8, !dbg !5186
  %keybit110 = getelementptr inbounds %struct.input_dev, ptr %96, i32 0, i32 6, !dbg !5186
  %arraydecay111 = getelementptr inbounds [12 x i64], ptr %keybit110, i64 0, i64 0, !dbg !5186
  call void @generic___set_bit(i64 noundef 334, ptr noundef %arraydecay111) #17, !dbg !5186
  br label %cond.end115, !dbg !5186

cond.false112:                                    ; preds = %land.lhs.true106, %land.lhs.true101, %cond.end96
  %97 = load ptr, ptr %input.addr, align 8, !dbg !5186
  %keybit113 = getelementptr inbounds %struct.input_dev, ptr %97, i32 0, i32 6, !dbg !5186
  %arraydecay114 = getelementptr inbounds [12 x i64], ptr %keybit113, i64 0, i64 0, !dbg !5186
  call void @___set_bit(i64 noundef 334, ptr noundef %arraydecay114) #17, !dbg !5186
  br label %cond.end115, !dbg !5186

cond.end115:                                      ; preds = %cond.false112, %cond.true109
  %98 = load ptr, ptr %input.addr, align 8, !dbg !5187
  %keybit116 = getelementptr inbounds %struct.input_dev, ptr %98, i32 0, i32 6, !dbg !5187
  %arraydecay117 = getelementptr inbounds [12 x i64], ptr %keybit116, i64 0, i64 0, !dbg !5187
  %99 = ptrtoint ptr %arraydecay117 to i64, !dbg !5187
  %cmp118 = icmp ne i64 %99, 0, !dbg !5187
  %conv119 = zext i1 %cmp118 to i32, !dbg !5187
  %100 = call i1 @llvm.is.constant.i32(i32 %conv119), !dbg !5187
  br i1 %100, label %land.lhs.true120, label %cond.false131, !dbg !5187

land.lhs.true120:                                 ; preds = %cond.end115
  %101 = load ptr, ptr %input.addr, align 8, !dbg !5187
  %keybit121 = getelementptr inbounds %struct.input_dev, ptr %101, i32 0, i32 6, !dbg !5187
  %arraydecay122 = getelementptr inbounds [12 x i64], ptr %keybit121, i64 0, i64 0, !dbg !5187
  %102 = ptrtoint ptr %arraydecay122 to i64, !dbg !5187
  %cmp123 = icmp ne i64 %102, 0, !dbg !5187
  br i1 %cmp123, label %land.lhs.true125, label %cond.false131, !dbg !5187

land.lhs.true125:                                 ; preds = %land.lhs.true120
  %103 = load ptr, ptr %input.addr, align 8, !dbg !5187
  %keybit126 = getelementptr inbounds %struct.input_dev, ptr %103, i32 0, i32 6, !dbg !5187
  %arraydecay127 = getelementptr inbounds [12 x i64], ptr %keybit126, i64 0, i64 0, !dbg !5187
  %104 = load i64, ptr %arraydecay127, align 8, !dbg !5187
  %105 = call i1 @llvm.is.constant.i64(i64 %104), !dbg !5187
  br i1 %105, label %cond.true128, label %cond.false131, !dbg !5187

cond.true128:                                     ; preds = %land.lhs.true125
  %106 = load ptr, ptr %input.addr, align 8, !dbg !5187
  %keybit129 = getelementptr inbounds %struct.input_dev, ptr %106, i32 0, i32 6, !dbg !5187
  %arraydecay130 = getelementptr inbounds [12 x i64], ptr %keybit129, i64 0, i64 0, !dbg !5187
  call void @generic___set_bit(i64 noundef 335, ptr noundef %arraydecay130) #17, !dbg !5187
  br label %cond.end134, !dbg !5187

cond.false131:                                    ; preds = %land.lhs.true125, %land.lhs.true120, %cond.end115
  %107 = load ptr, ptr %input.addr, align 8, !dbg !5187
  %keybit132 = getelementptr inbounds %struct.input_dev, ptr %107, i32 0, i32 6, !dbg !5187
  %arraydecay133 = getelementptr inbounds [12 x i64], ptr %keybit132, i64 0, i64 0, !dbg !5187
  call void @___set_bit(i64 noundef 335, ptr noundef %arraydecay133) #17, !dbg !5187
  br label %cond.end134, !dbg !5187

cond.end134:                                      ; preds = %cond.false131, %cond.true128
  %108 = load ptr, ptr %input.addr, align 8, !dbg !5188
  %keybit135 = getelementptr inbounds %struct.input_dev, ptr %108, i32 0, i32 6, !dbg !5188
  %arraydecay136 = getelementptr inbounds [12 x i64], ptr %keybit135, i64 0, i64 0, !dbg !5188
  %109 = ptrtoint ptr %arraydecay136 to i64, !dbg !5188
  %cmp137 = icmp ne i64 %109, 0, !dbg !5188
  %conv138 = zext i1 %cmp137 to i32, !dbg !5188
  %110 = call i1 @llvm.is.constant.i32(i32 %conv138), !dbg !5188
  br i1 %110, label %land.lhs.true139, label %cond.false150, !dbg !5188

land.lhs.true139:                                 ; preds = %cond.end134
  %111 = load ptr, ptr %input.addr, align 8, !dbg !5188
  %keybit140 = getelementptr inbounds %struct.input_dev, ptr %111, i32 0, i32 6, !dbg !5188
  %arraydecay141 = getelementptr inbounds [12 x i64], ptr %keybit140, i64 0, i64 0, !dbg !5188
  %112 = ptrtoint ptr %arraydecay141 to i64, !dbg !5188
  %cmp142 = icmp ne i64 %112, 0, !dbg !5188
  br i1 %cmp142, label %land.lhs.true144, label %cond.false150, !dbg !5188

land.lhs.true144:                                 ; preds = %land.lhs.true139
  %113 = load ptr, ptr %input.addr, align 8, !dbg !5188
  %keybit145 = getelementptr inbounds %struct.input_dev, ptr %113, i32 0, i32 6, !dbg !5188
  %arraydecay146 = getelementptr inbounds [12 x i64], ptr %keybit145, i64 0, i64 0, !dbg !5188
  %114 = load i64, ptr %arraydecay146, align 8, !dbg !5188
  %115 = call i1 @llvm.is.constant.i64(i64 %114), !dbg !5188
  br i1 %115, label %cond.true147, label %cond.false150, !dbg !5188

cond.true147:                                     ; preds = %land.lhs.true144
  %116 = load ptr, ptr %input.addr, align 8, !dbg !5188
  %keybit148 = getelementptr inbounds %struct.input_dev, ptr %116, i32 0, i32 6, !dbg !5188
  %arraydecay149 = getelementptr inbounds [12 x i64], ptr %keybit148, i64 0, i64 0, !dbg !5188
  call void @generic___set_bit(i64 noundef 328, ptr noundef %arraydecay149) #17, !dbg !5188
  br label %cond.end153, !dbg !5188

cond.false150:                                    ; preds = %land.lhs.true144, %land.lhs.true139, %cond.end134
  %117 = load ptr, ptr %input.addr, align 8, !dbg !5188
  %keybit151 = getelementptr inbounds %struct.input_dev, ptr %117, i32 0, i32 6, !dbg !5188
  %arraydecay152 = getelementptr inbounds [12 x i64], ptr %keybit151, i64 0, i64 0, !dbg !5188
  call void @___set_bit(i64 noundef 328, ptr noundef %arraydecay152) #17, !dbg !5188
  br label %cond.end153, !dbg !5188

cond.end153:                                      ; preds = %cond.false150, %cond.true147
  %118 = load ptr, ptr %input.addr, align 8, !dbg !5189
  %evbit154 = getelementptr inbounds %struct.input_dev, ptr %118, i32 0, i32 5, !dbg !5189
  %arraydecay155 = getelementptr inbounds [1 x i64], ptr %evbit154, i64 0, i64 0, !dbg !5189
  %119 = ptrtoint ptr %arraydecay155 to i64, !dbg !5189
  %cmp156 = icmp ne i64 %119, 0, !dbg !5189
  %conv157 = zext i1 %cmp156 to i32, !dbg !5189
  %120 = call i1 @llvm.is.constant.i32(i32 %conv157), !dbg !5189
  br i1 %120, label %land.lhs.true158, label %cond.false169, !dbg !5189

land.lhs.true158:                                 ; preds = %cond.end153
  %121 = load ptr, ptr %input.addr, align 8, !dbg !5189
  %evbit159 = getelementptr inbounds %struct.input_dev, ptr %121, i32 0, i32 5, !dbg !5189
  %arraydecay160 = getelementptr inbounds [1 x i64], ptr %evbit159, i64 0, i64 0, !dbg !5189
  %122 = ptrtoint ptr %arraydecay160 to i64, !dbg !5189
  %cmp161 = icmp ne i64 %122, 0, !dbg !5189
  br i1 %cmp161, label %land.lhs.true163, label %cond.false169, !dbg !5189

land.lhs.true163:                                 ; preds = %land.lhs.true158
  %123 = load ptr, ptr %input.addr, align 8, !dbg !5189
  %evbit164 = getelementptr inbounds %struct.input_dev, ptr %123, i32 0, i32 5, !dbg !5189
  %arraydecay165 = getelementptr inbounds [1 x i64], ptr %evbit164, i64 0, i64 0, !dbg !5189
  %124 = load i64, ptr %arraydecay165, align 8, !dbg !5189
  %125 = call i1 @llvm.is.constant.i64(i64 %124), !dbg !5189
  br i1 %125, label %cond.true166, label %cond.false169, !dbg !5189

cond.true166:                                     ; preds = %land.lhs.true163
  %126 = load ptr, ptr %input.addr, align 8, !dbg !5189
  %evbit167 = getelementptr inbounds %struct.input_dev, ptr %126, i32 0, i32 5, !dbg !5189
  %arraydecay168 = getelementptr inbounds [1 x i64], ptr %evbit167, i64 0, i64 0, !dbg !5189
  call void @generic___clear_bit(i64 noundef 2, ptr noundef %arraydecay168) #17, !dbg !5189
  br label %cond.end172, !dbg !5189

cond.false169:                                    ; preds = %land.lhs.true163, %land.lhs.true158, %cond.end153
  %127 = load ptr, ptr %input.addr, align 8, !dbg !5189
  %evbit170 = getelementptr inbounds %struct.input_dev, ptr %127, i32 0, i32 5, !dbg !5189
  %arraydecay171 = getelementptr inbounds [1 x i64], ptr %evbit170, i64 0, i64 0, !dbg !5189
  call void @___clear_bit(i64 noundef 2, ptr noundef %arraydecay171) #17, !dbg !5189
  br label %cond.end172, !dbg !5189

cond.end172:                                      ; preds = %cond.false169, %cond.true166
  %128 = load ptr, ptr %input.addr, align 8, !dbg !5190
  %relbit = getelementptr inbounds %struct.input_dev, ptr %128, i32 0, i32 7, !dbg !5190
  %arraydecay173 = getelementptr inbounds [1 x i64], ptr %relbit, i64 0, i64 0, !dbg !5190
  %129 = ptrtoint ptr %arraydecay173 to i64, !dbg !5190
  %cmp174 = icmp ne i64 %129, 0, !dbg !5190
  %conv175 = zext i1 %cmp174 to i32, !dbg !5190
  %130 = call i1 @llvm.is.constant.i32(i32 %conv175), !dbg !5190
  br i1 %130, label %land.lhs.true176, label %cond.false187, !dbg !5190

land.lhs.true176:                                 ; preds = %cond.end172
  %131 = load ptr, ptr %input.addr, align 8, !dbg !5190
  %relbit177 = getelementptr inbounds %struct.input_dev, ptr %131, i32 0, i32 7, !dbg !5190
  %arraydecay178 = getelementptr inbounds [1 x i64], ptr %relbit177, i64 0, i64 0, !dbg !5190
  %132 = ptrtoint ptr %arraydecay178 to i64, !dbg !5190
  %cmp179 = icmp ne i64 %132, 0, !dbg !5190
  br i1 %cmp179, label %land.lhs.true181, label %cond.false187, !dbg !5190

land.lhs.true181:                                 ; preds = %land.lhs.true176
  %133 = load ptr, ptr %input.addr, align 8, !dbg !5190
  %relbit182 = getelementptr inbounds %struct.input_dev, ptr %133, i32 0, i32 7, !dbg !5190
  %arraydecay183 = getelementptr inbounds [1 x i64], ptr %relbit182, i64 0, i64 0, !dbg !5190
  %134 = load i64, ptr %arraydecay183, align 8, !dbg !5190
  %135 = call i1 @llvm.is.constant.i64(i64 %134), !dbg !5190
  br i1 %135, label %cond.true184, label %cond.false187, !dbg !5190

cond.true184:                                     ; preds = %land.lhs.true181
  %136 = load ptr, ptr %input.addr, align 8, !dbg !5190
  %relbit185 = getelementptr inbounds %struct.input_dev, ptr %136, i32 0, i32 7, !dbg !5190
  %arraydecay186 = getelementptr inbounds [1 x i64], ptr %relbit185, i64 0, i64 0, !dbg !5190
  call void @generic___clear_bit(i64 noundef 0, ptr noundef %arraydecay186) #17, !dbg !5190
  br label %cond.end190, !dbg !5190

cond.false187:                                    ; preds = %land.lhs.true181, %land.lhs.true176, %cond.end172
  %137 = load ptr, ptr %input.addr, align 8, !dbg !5190
  %relbit188 = getelementptr inbounds %struct.input_dev, ptr %137, i32 0, i32 7, !dbg !5190
  %arraydecay189 = getelementptr inbounds [1 x i64], ptr %relbit188, i64 0, i64 0, !dbg !5190
  call void @___clear_bit(i64 noundef 0, ptr noundef %arraydecay189) #17, !dbg !5190
  br label %cond.end190, !dbg !5190

cond.end190:                                      ; preds = %cond.false187, %cond.true184
  %138 = load ptr, ptr %input.addr, align 8, !dbg !5191
  %relbit191 = getelementptr inbounds %struct.input_dev, ptr %138, i32 0, i32 7, !dbg !5191
  %arraydecay192 = getelementptr inbounds [1 x i64], ptr %relbit191, i64 0, i64 0, !dbg !5191
  %139 = ptrtoint ptr %arraydecay192 to i64, !dbg !5191
  %cmp193 = icmp ne i64 %139, 0, !dbg !5191
  %conv194 = zext i1 %cmp193 to i32, !dbg !5191
  %140 = call i1 @llvm.is.constant.i32(i32 %conv194), !dbg !5191
  br i1 %140, label %land.lhs.true195, label %cond.false206, !dbg !5191

land.lhs.true195:                                 ; preds = %cond.end190
  %141 = load ptr, ptr %input.addr, align 8, !dbg !5191
  %relbit196 = getelementptr inbounds %struct.input_dev, ptr %141, i32 0, i32 7, !dbg !5191
  %arraydecay197 = getelementptr inbounds [1 x i64], ptr %relbit196, i64 0, i64 0, !dbg !5191
  %142 = ptrtoint ptr %arraydecay197 to i64, !dbg !5191
  %cmp198 = icmp ne i64 %142, 0, !dbg !5191
  br i1 %cmp198, label %land.lhs.true200, label %cond.false206, !dbg !5191

land.lhs.true200:                                 ; preds = %land.lhs.true195
  %143 = load ptr, ptr %input.addr, align 8, !dbg !5191
  %relbit201 = getelementptr inbounds %struct.input_dev, ptr %143, i32 0, i32 7, !dbg !5191
  %arraydecay202 = getelementptr inbounds [1 x i64], ptr %relbit201, i64 0, i64 0, !dbg !5191
  %144 = load i64, ptr %arraydecay202, align 8, !dbg !5191
  %145 = call i1 @llvm.is.constant.i64(i64 %144), !dbg !5191
  br i1 %145, label %cond.true203, label %cond.false206, !dbg !5191

cond.true203:                                     ; preds = %land.lhs.true200
  %146 = load ptr, ptr %input.addr, align 8, !dbg !5191
  %relbit204 = getelementptr inbounds %struct.input_dev, ptr %146, i32 0, i32 7, !dbg !5191
  %arraydecay205 = getelementptr inbounds [1 x i64], ptr %relbit204, i64 0, i64 0, !dbg !5191
  call void @generic___clear_bit(i64 noundef 1, ptr noundef %arraydecay205) #17, !dbg !5191
  br label %cond.end209, !dbg !5191

cond.false206:                                    ; preds = %land.lhs.true200, %land.lhs.true195, %cond.end190
  %147 = load ptr, ptr %input.addr, align 8, !dbg !5191
  %relbit207 = getelementptr inbounds %struct.input_dev, ptr %147, i32 0, i32 7, !dbg !5191
  %arraydecay208 = getelementptr inbounds [1 x i64], ptr %relbit207, i64 0, i64 0, !dbg !5191
  call void @___clear_bit(i64 noundef 1, ptr noundef %arraydecay208) #17, !dbg !5191
  br label %cond.end209, !dbg !5191

cond.end209:                                      ; preds = %cond.false206, %cond.true203
  %148 = load ptr, ptr %input.addr, align 8, !dbg !5192
  %evbit210 = getelementptr inbounds %struct.input_dev, ptr %148, i32 0, i32 5, !dbg !5192
  %arraydecay211 = getelementptr inbounds [1 x i64], ptr %evbit210, i64 0, i64 0, !dbg !5192
  %149 = ptrtoint ptr %arraydecay211 to i64, !dbg !5192
  %cmp212 = icmp ne i64 %149, 0, !dbg !5192
  %conv213 = zext i1 %cmp212 to i32, !dbg !5192
  %150 = call i1 @llvm.is.constant.i32(i32 %conv213), !dbg !5192
  br i1 %150, label %land.lhs.true214, label %cond.false225, !dbg !5192

land.lhs.true214:                                 ; preds = %cond.end209
  %151 = load ptr, ptr %input.addr, align 8, !dbg !5192
  %evbit215 = getelementptr inbounds %struct.input_dev, ptr %151, i32 0, i32 5, !dbg !5192
  %arraydecay216 = getelementptr inbounds [1 x i64], ptr %evbit215, i64 0, i64 0, !dbg !5192
  %152 = ptrtoint ptr %arraydecay216 to i64, !dbg !5192
  %cmp217 = icmp ne i64 %152, 0, !dbg !5192
  br i1 %cmp217, label %land.lhs.true219, label %cond.false225, !dbg !5192

land.lhs.true219:                                 ; preds = %land.lhs.true214
  %153 = load ptr, ptr %input.addr, align 8, !dbg !5192
  %evbit220 = getelementptr inbounds %struct.input_dev, ptr %153, i32 0, i32 5, !dbg !5192
  %arraydecay221 = getelementptr inbounds [1 x i64], ptr %evbit220, i64 0, i64 0, !dbg !5192
  %154 = load i64, ptr %arraydecay221, align 8, !dbg !5192
  %155 = call i1 @llvm.is.constant.i64(i64 %154), !dbg !5192
  br i1 %155, label %cond.true222, label %cond.false225, !dbg !5192

cond.true222:                                     ; preds = %land.lhs.true219
  %156 = load ptr, ptr %input.addr, align 8, !dbg !5192
  %evbit223 = getelementptr inbounds %struct.input_dev, ptr %156, i32 0, i32 5, !dbg !5192
  %arraydecay224 = getelementptr inbounds [1 x i64], ptr %evbit223, i64 0, i64 0, !dbg !5192
  call void @generic___set_bit(i64 noundef 1, ptr noundef %arraydecay224) #17, !dbg !5192
  br label %cond.end228, !dbg !5192

cond.false225:                                    ; preds = %land.lhs.true219, %land.lhs.true214, %cond.end209
  %157 = load ptr, ptr %input.addr, align 8, !dbg !5192
  %evbit226 = getelementptr inbounds %struct.input_dev, ptr %157, i32 0, i32 5, !dbg !5192
  %arraydecay227 = getelementptr inbounds [1 x i64], ptr %evbit226, i64 0, i64 0, !dbg !5192
  call void @___set_bit(i64 noundef 1, ptr noundef %arraydecay227) #17, !dbg !5192
  br label %cond.end228, !dbg !5192

cond.end228:                                      ; preds = %cond.false225, %cond.true222
  %158 = load ptr, ptr %input.addr, align 8, !dbg !5193
  %keybit229 = getelementptr inbounds %struct.input_dev, ptr %158, i32 0, i32 6, !dbg !5193
  %arraydecay230 = getelementptr inbounds [12 x i64], ptr %keybit229, i64 0, i64 0, !dbg !5193
  %159 = ptrtoint ptr %arraydecay230 to i64, !dbg !5193
  %cmp231 = icmp ne i64 %159, 0, !dbg !5193
  %conv232 = zext i1 %cmp231 to i32, !dbg !5193
  %160 = call i1 @llvm.is.constant.i32(i32 %conv232), !dbg !5193
  br i1 %160, label %land.lhs.true233, label %cond.false244, !dbg !5193

land.lhs.true233:                                 ; preds = %cond.end228
  %161 = load ptr, ptr %input.addr, align 8, !dbg !5193
  %keybit234 = getelementptr inbounds %struct.input_dev, ptr %161, i32 0, i32 6, !dbg !5193
  %arraydecay235 = getelementptr inbounds [12 x i64], ptr %keybit234, i64 0, i64 0, !dbg !5193
  %162 = ptrtoint ptr %arraydecay235 to i64, !dbg !5193
  %cmp236 = icmp ne i64 %162, 0, !dbg !5193
  br i1 %cmp236, label %land.lhs.true238, label %cond.false244, !dbg !5193

land.lhs.true238:                                 ; preds = %land.lhs.true233
  %163 = load ptr, ptr %input.addr, align 8, !dbg !5193
  %keybit239 = getelementptr inbounds %struct.input_dev, ptr %163, i32 0, i32 6, !dbg !5193
  %arraydecay240 = getelementptr inbounds [12 x i64], ptr %keybit239, i64 0, i64 0, !dbg !5193
  %164 = load i64, ptr %arraydecay240, align 8, !dbg !5193
  %165 = call i1 @llvm.is.constant.i64(i64 %164), !dbg !5193
  br i1 %165, label %cond.true241, label %cond.false244, !dbg !5193

cond.true241:                                     ; preds = %land.lhs.true238
  %166 = load ptr, ptr %input.addr, align 8, !dbg !5193
  %keybit242 = getelementptr inbounds %struct.input_dev, ptr %166, i32 0, i32 6, !dbg !5193
  %arraydecay243 = getelementptr inbounds [12 x i64], ptr %keybit242, i64 0, i64 0, !dbg !5193
  call void @generic___set_bit(i64 noundef 272, ptr noundef %arraydecay243) #17, !dbg !5193
  br label %cond.end247, !dbg !5193

cond.false244:                                    ; preds = %land.lhs.true238, %land.lhs.true233, %cond.end228
  %167 = load ptr, ptr %input.addr, align 8, !dbg !5193
  %keybit245 = getelementptr inbounds %struct.input_dev, ptr %167, i32 0, i32 6, !dbg !5193
  %arraydecay246 = getelementptr inbounds [12 x i64], ptr %keybit245, i64 0, i64 0, !dbg !5193
  call void @___set_bit(i64 noundef 272, ptr noundef %arraydecay246) #17, !dbg !5193
  br label %cond.end247, !dbg !5193

cond.end247:                                      ; preds = %cond.false244, %cond.true241
  %168 = load ptr, ptr %input.addr, align 8, !dbg !5194
  %keybit248 = getelementptr inbounds %struct.input_dev, ptr %168, i32 0, i32 6, !dbg !5194
  %arraydecay249 = getelementptr inbounds [12 x i64], ptr %keybit248, i64 0, i64 0, !dbg !5194
  %169 = ptrtoint ptr %arraydecay249 to i64, !dbg !5194
  %cmp250 = icmp ne i64 %169, 0, !dbg !5194
  %conv251 = zext i1 %cmp250 to i32, !dbg !5194
  %170 = call i1 @llvm.is.constant.i32(i32 %conv251), !dbg !5194
  br i1 %170, label %land.lhs.true252, label %cond.false263, !dbg !5194

land.lhs.true252:                                 ; preds = %cond.end247
  %171 = load ptr, ptr %input.addr, align 8, !dbg !5194
  %keybit253 = getelementptr inbounds %struct.input_dev, ptr %171, i32 0, i32 6, !dbg !5194
  %arraydecay254 = getelementptr inbounds [12 x i64], ptr %keybit253, i64 0, i64 0, !dbg !5194
  %172 = ptrtoint ptr %arraydecay254 to i64, !dbg !5194
  %cmp255 = icmp ne i64 %172, 0, !dbg !5194
  br i1 %cmp255, label %land.lhs.true257, label %cond.false263, !dbg !5194

land.lhs.true257:                                 ; preds = %land.lhs.true252
  %173 = load ptr, ptr %input.addr, align 8, !dbg !5194
  %keybit258 = getelementptr inbounds %struct.input_dev, ptr %173, i32 0, i32 6, !dbg !5194
  %arraydecay259 = getelementptr inbounds [12 x i64], ptr %keybit258, i64 0, i64 0, !dbg !5194
  %174 = load i64, ptr %arraydecay259, align 8, !dbg !5194
  %175 = call i1 @llvm.is.constant.i64(i64 %174), !dbg !5194
  br i1 %175, label %cond.true260, label %cond.false263, !dbg !5194

cond.true260:                                     ; preds = %land.lhs.true257
  %176 = load ptr, ptr %input.addr, align 8, !dbg !5194
  %keybit261 = getelementptr inbounds %struct.input_dev, ptr %176, i32 0, i32 6, !dbg !5194
  %arraydecay262 = getelementptr inbounds [12 x i64], ptr %keybit261, i64 0, i64 0, !dbg !5194
  call void @generic___set_bit(i64 noundef 273, ptr noundef %arraydecay262) #17, !dbg !5194
  br label %cond.end266, !dbg !5194

cond.false263:                                    ; preds = %land.lhs.true257, %land.lhs.true252, %cond.end247
  %177 = load ptr, ptr %input.addr, align 8, !dbg !5194
  %keybit264 = getelementptr inbounds %struct.input_dev, ptr %177, i32 0, i32 6, !dbg !5194
  %arraydecay265 = getelementptr inbounds [12 x i64], ptr %keybit264, i64 0, i64 0, !dbg !5194
  call void @___set_bit(i64 noundef 273, ptr noundef %arraydecay265) #17, !dbg !5194
  br label %cond.end266, !dbg !5194

cond.end266:                                      ; preds = %cond.false263, %cond.true260
  %178 = load ptr, ptr %input.addr, align 8, !dbg !5195
  %keybit267 = getelementptr inbounds %struct.input_dev, ptr %178, i32 0, i32 6, !dbg !5195
  %arraydecay268 = getelementptr inbounds [12 x i64], ptr %keybit267, i64 0, i64 0, !dbg !5195
  %179 = ptrtoint ptr %arraydecay268 to i64, !dbg !5195
  %cmp269 = icmp ne i64 %179, 0, !dbg !5195
  %conv270 = zext i1 %cmp269 to i32, !dbg !5195
  %180 = call i1 @llvm.is.constant.i32(i32 %conv270), !dbg !5195
  br i1 %180, label %land.lhs.true271, label %cond.false282, !dbg !5195

land.lhs.true271:                                 ; preds = %cond.end266
  %181 = load ptr, ptr %input.addr, align 8, !dbg !5195
  %keybit272 = getelementptr inbounds %struct.input_dev, ptr %181, i32 0, i32 6, !dbg !5195
  %arraydecay273 = getelementptr inbounds [12 x i64], ptr %keybit272, i64 0, i64 0, !dbg !5195
  %182 = ptrtoint ptr %arraydecay273 to i64, !dbg !5195
  %cmp274 = icmp ne i64 %182, 0, !dbg !5195
  br i1 %cmp274, label %land.lhs.true276, label %cond.false282, !dbg !5195

land.lhs.true276:                                 ; preds = %land.lhs.true271
  %183 = load ptr, ptr %input.addr, align 8, !dbg !5195
  %keybit277 = getelementptr inbounds %struct.input_dev, ptr %183, i32 0, i32 6, !dbg !5195
  %arraydecay278 = getelementptr inbounds [12 x i64], ptr %keybit277, i64 0, i64 0, !dbg !5195
  %184 = load i64, ptr %arraydecay278, align 8, !dbg !5195
  %185 = call i1 @llvm.is.constant.i64(i64 %184), !dbg !5195
  br i1 %185, label %cond.true279, label %cond.false282, !dbg !5195

cond.true279:                                     ; preds = %land.lhs.true276
  %186 = load ptr, ptr %input.addr, align 8, !dbg !5195
  %keybit280 = getelementptr inbounds %struct.input_dev, ptr %186, i32 0, i32 6, !dbg !5195
  %arraydecay281 = getelementptr inbounds [12 x i64], ptr %keybit280, i64 0, i64 0, !dbg !5195
  call void @generic___set_bit(i64 noundef 274, ptr noundef %arraydecay281) #17, !dbg !5195
  br label %cond.end285, !dbg !5195

cond.false282:                                    ; preds = %land.lhs.true276, %land.lhs.true271, %cond.end266
  %187 = load ptr, ptr %input.addr, align 8, !dbg !5195
  %keybit283 = getelementptr inbounds %struct.input_dev, ptr %187, i32 0, i32 6, !dbg !5195
  %arraydecay284 = getelementptr inbounds [12 x i64], ptr %keybit283, i64 0, i64 0, !dbg !5195
  call void @___set_bit(i64 noundef 274, ptr noundef %arraydecay284) #17, !dbg !5195
  br label %cond.end285, !dbg !5195

cond.end285:                                      ; preds = %cond.false282, %cond.true279
  store i32 0, ptr %retval, align 4, !dbg !5196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5196

cleanup:                                          ; preds = %cond.end285, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5197
  %188 = load i32, ptr %retval, align 4, !dbg !5197
  ret i32 %188, !dbg !5197
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cypress_protocol_handler(ptr noundef %psmouse) #0 align 16 !dbg !5198 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %cytp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5200, metadata !DIExpression()), !dbg !5202
  call void @llvm.lifetime.start.p0(i64 8, ptr %cytp) #16, !dbg !5203
  call void @llvm.dbg.declare(metadata ptr %cytp, metadata !5201, metadata !DIExpression()), !dbg !5204
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5205
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !5206
  %1 = load ptr, ptr %private, align 8, !dbg !5206
  store ptr %1, ptr %cytp, align 8, !dbg !5204
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !5207
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %2, i32 0, i32 9, !dbg !5209
  %3 = load i8, ptr %pktcnt, align 1, !dbg !5209
  %conv = zext i8 %3 to i32, !dbg !5207
  %4 = load ptr, ptr %cytp, align 8, !dbg !5210
  %pkt_size = getelementptr inbounds %struct.cytp_data, ptr %4, i32 0, i32 1, !dbg !5211
  %5 = load i32, ptr %pkt_size, align 4, !dbg !5211
  %cmp = icmp sge i32 %conv, %5, !dbg !5212
  br i1 %cmp, label %if.then, label %if.end, !dbg !5213

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %psmouse.addr, align 8, !dbg !5214
  call void @cypress_process_packet(ptr noundef %6, i1 noundef zeroext false) #17, !dbg !5216
  store i32 2, ptr %retval, align 4, !dbg !5217
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5217

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %psmouse.addr, align 8, !dbg !5218
  %call = call i32 @cypress_validate_byte(ptr noundef %7) #17, !dbg !5219
  store i32 %call, ptr %retval, align 4, !dbg !5220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5220

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cytp) #16, !dbg !5221
  %8 = load i32, ptr %retval, align 4, !dbg !5221
  ret i32 %8, !dbg !5221
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cypress_set_rate(ptr noundef %psmouse, i32 noundef %rate) #0 align 16 !dbg !5222 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %rate.addr = alloca i32, align 4
  %cytp = alloca ptr, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5224, metadata !DIExpression()), !dbg !5227
  store i32 %rate, ptr %rate.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rate.addr, metadata !5225, metadata !DIExpression()), !dbg !5228
  call void @llvm.lifetime.start.p0(i64 8, ptr %cytp) #16, !dbg !5229
  call void @llvm.dbg.declare(metadata ptr %cytp, metadata !5226, metadata !DIExpression()), !dbg !5230
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5231
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !5232
  %1 = load ptr, ptr %private, align 8, !dbg !5232
  store ptr %1, ptr %cytp, align 8, !dbg !5230
  %2 = load i32, ptr %rate.addr, align 4, !dbg !5233
  %cmp = icmp uge i32 %2, 80, !dbg !5235
  br i1 %cmp, label %if.then, label %if.else, !dbg !5236

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %psmouse.addr, align 8, !dbg !5237
  %rate1 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 21, !dbg !5239
  store i32 80, ptr %rate1, align 4, !dbg !5240
  %4 = load ptr, ptr %cytp, align 8, !dbg !5241
  %mode = getelementptr inbounds %struct.cytp_data, ptr %4, i32 0, i32 2, !dbg !5242
  %5 = load i32, ptr %mode, align 4, !dbg !5243
  %or = or i32 %5, 16, !dbg !5243
  store i32 %or, ptr %mode, align 4, !dbg !5243
  br label %if.end, !dbg !5244

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %psmouse.addr, align 8, !dbg !5245
  %rate2 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 21, !dbg !5247
  store i32 40, ptr %rate2, align 4, !dbg !5248
  %7 = load ptr, ptr %cytp, align 8, !dbg !5249
  %mode3 = getelementptr inbounds %struct.cytp_data, ptr %7, i32 0, i32 2, !dbg !5250
  %8 = load i32, ptr %mode3, align 4, !dbg !5251
  %and = and i32 %8, -17, !dbg !5251
  store i32 %and, ptr %mode3, align 4, !dbg !5251
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load ptr, ptr %psmouse.addr, align 8, !dbg !5252
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 2, !dbg !5253
  %10 = load ptr, ptr %psmouse.addr, align 8, !dbg !5254
  %rate4 = getelementptr inbounds %struct.psmouse, ptr %10, i32 0, i32 21, !dbg !5255
  %call = call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef %rate4, i32 noundef 4339) #17, !dbg !5256
  call void @llvm.lifetime.end.p0(i64 8, ptr %cytp) #16, !dbg !5257
  ret void, !dbg !5257
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cypress_disconnect(ptr noundef %psmouse) #0 align 16 !dbg !5258 {
entry:
  %psmouse.addr = alloca ptr, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5260, metadata !DIExpression()), !dbg !5261
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5262
  call void @cypress_reset(ptr noundef %0) #17, !dbg !5263
  %1 = load ptr, ptr %psmouse.addr, align 8, !dbg !5264
  %private = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 0, !dbg !5265
  %2 = load ptr, ptr %private, align 8, !dbg !5265
  call void @kfree(ptr noundef %2) #17, !dbg !5266
  %3 = load ptr, ptr %psmouse.addr, align 8, !dbg !5267
  %private1 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 0, !dbg !5268
  store ptr null, ptr %private1, align 8, !dbg !5269
  ret void, !dbg !5270
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cypress_reconnect(ptr noundef %psmouse) #0 align 16 !dbg !5271 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %tries = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5273, metadata !DIExpression()), !dbg !5276
  call void @llvm.lifetime.start.p0(i64 4, ptr %tries) #16, !dbg !5277
  call void @llvm.dbg.declare(metadata ptr %tries, metadata !5274, metadata !DIExpression()), !dbg !5278
  store i32 3, ptr %tries, align 4, !dbg !5278
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !5279
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5275, metadata !DIExpression()), !dbg !5280
  br label %do.body, !dbg !5281

do.body:                                          ; preds = %land.end, %entry
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5282
  call void @cypress_reset(ptr noundef %0) #17, !dbg !5284
  %1 = load ptr, ptr %psmouse.addr, align 8, !dbg !5285
  %call = call i32 @cypress_detect(ptr noundef %1, i1 noundef zeroext false) #17, !dbg !5286
  store i32 %call, ptr %rc, align 4, !dbg !5287
  br label %do.cond, !dbg !5288

do.cond:                                          ; preds = %do.body
  %2 = load i32, ptr %rc, align 4, !dbg !5289
  %tobool = icmp ne i32 %2, 0, !dbg !5289
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5290

land.rhs:                                         ; preds = %do.cond
  %3 = load i32, ptr %tries, align 4, !dbg !5291
  %dec = add i32 %3, -1, !dbg !5291
  store i32 %dec, ptr %tries, align 4, !dbg !5291
  %cmp = icmp sgt i32 %dec, 0, !dbg !5292
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %4 = phi i1 [ false, %do.cond ], [ %cmp, %land.rhs ], !dbg !5293
  br i1 %4, label %do.body, label %do.end, !dbg !5288, !llvm.loop !5294

do.end:                                           ; preds = %land.end
  %5 = load i32, ptr %rc, align 4, !dbg !5296
  %tobool1 = icmp ne i32 %5, 0, !dbg !5296
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5298

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !5299

do.body2:                                         ; preds = %if.then
  br label %do.cond3, !dbg !5302

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !5302

do.end4:                                          ; preds = %do.cond3
  %6 = load ptr, ptr %psmouse.addr, align 8, !dbg !5299
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 2, !dbg !5299
  %serio = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 0, !dbg !5299
  %7 = load ptr, ptr %serio, align 8, !dbg !5299
  %dev = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 18, !dbg !5299
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.6) #19, !dbg !5299
  store i32 -1, ptr %retval, align 4, !dbg !5304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5304

if.end:                                           ; preds = %do.end
  %8 = load ptr, ptr %psmouse.addr, align 8, !dbg !5305
  %call5 = call i32 @cypress_set_absolute_mode(ptr noundef %8) #17, !dbg !5307
  %tobool6 = icmp ne i32 %call5, 0, !dbg !5307
  br i1 %tobool6, label %if.then7, label %if.end14, !dbg !5308

if.then7:                                         ; preds = %if.end
  br label %do.body8, !dbg !5309

do.body8:                                         ; preds = %if.then7
  br label %do.cond9, !dbg !5312

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5312

do.end10:                                         ; preds = %do.cond9
  %9 = load ptr, ptr %psmouse.addr, align 8, !dbg !5309
  %ps2dev11 = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 2, !dbg !5309
  %serio12 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev11, i32 0, i32 0, !dbg !5309
  %10 = load ptr, ptr %serio12, align 8, !dbg !5309
  %dev13 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 18, !dbg !5309
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef @.str.7) #19, !dbg !5309
  store i32 -1, ptr %retval, align 4, !dbg !5314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5314

if.end14:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5315
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5315

cleanup:                                          ; preds = %if.end14, %do.end10, %do.end4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !5316
  call void @llvm.lifetime.end.p0(i64 4, ptr %tries) #16, !dbg !5316
  %11 = load i32, ptr %retval, align 4, !dbg !5316
  ret i32 %11, !dbg !5316
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5317 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cypress_ps2_ext_cmd(ptr noundef %psmouse, i16 noundef zeroext %cmd, i8 noundef zeroext %data) #0 align 16 !dbg !5320 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %cmd.addr = alloca i16, align 2
  %data.addr = alloca i8, align 1
  %ps2dev = alloca ptr, align 8
  %tries = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5324, metadata !DIExpression()), !dbg !5330
  store i16 %cmd, ptr %cmd.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5325, metadata !DIExpression()), !dbg !5331
  store i8 %data, ptr %data.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5326, metadata !DIExpression()), !dbg !5332
  call void @llvm.lifetime.start.p0(i64 8, ptr %ps2dev) #16, !dbg !5333
  call void @llvm.dbg.declare(metadata ptr %ps2dev, metadata !5327, metadata !DIExpression()), !dbg !5334
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5335
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, !dbg !5336
  store ptr %ps2dev1, ptr %ps2dev, align 8, !dbg !5334
  call void @llvm.lifetime.start.p0(i64 4, ptr %tries) #16, !dbg !5337
  call void @llvm.dbg.declare(metadata ptr %tries, metadata !5328, metadata !DIExpression()), !dbg !5338
  store i32 3, ptr %tries, align 4, !dbg !5338
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !5339
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5329, metadata !DIExpression()), !dbg !5340
  %1 = load ptr, ptr %ps2dev, align 8, !dbg !5341
  call void @ps2_begin_command(ptr noundef %1) #17, !dbg !5342
  br label %do.body, !dbg !5343

do.body:                                          ; preds = %do.cond, %entry
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !5344
  %3 = load i16, ptr %cmd.addr, align 2, !dbg !5346
  %conv = zext i16 %3 to i32, !dbg !5346
  %and = and i32 %conv, 255, !dbg !5347
  %call = call i32 @cypress_ps2_sendbyte(ptr noundef %2, i32 noundef %and) #17, !dbg !5348
  store i32 %call, ptr %rc, align 4, !dbg !5349
  %4 = load i32, ptr %rc, align 4, !dbg !5350
  %cmp = icmp eq i32 %4, 254, !dbg !5352
  br i1 %cmp, label %if.then, label %if.end8, !dbg !5353

if.then:                                          ; preds = %do.body
  %5 = load ptr, ptr %psmouse.addr, align 8, !dbg !5354
  %call3 = call i32 @cypress_ps2_sendbyte(ptr noundef %5, i32 noundef 0) #17, !dbg !5356
  store i32 %call3, ptr %rc, align 4, !dbg !5357
  %6 = load i32, ptr %rc, align 4, !dbg !5358
  %cmp4 = icmp eq i32 %6, 254, !dbg !5360
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !5361

if.then6:                                         ; preds = %if.then
  %7 = load ptr, ptr %psmouse.addr, align 8, !dbg !5362
  %call7 = call i32 @cypress_ps2_sendbyte(ptr noundef %7, i32 noundef 10) #17, !dbg !5363
  store i32 %call7, ptr %rc, align 4, !dbg !5364
  br label %if.end, !dbg !5365

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end8, !dbg !5366

if.end8:                                          ; preds = %if.end, %do.body
  %8 = load i32, ptr %rc, align 4, !dbg !5367
  %cmp9 = icmp eq i32 %8, 252, !dbg !5369
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5370

if.then11:                                        ; preds = %if.end8
  br label %do.cond, !dbg !5371

if.end12:                                         ; preds = %if.end8
  %9 = load ptr, ptr %psmouse.addr, align 8, !dbg !5372
  %10 = load i8, ptr %data.addr, align 1, !dbg !5373
  %conv13 = zext i8 %10 to i32, !dbg !5373
  %call14 = call i32 @cypress_ps2_sendbyte(ptr noundef %9, i32 noundef %conv13) #17, !dbg !5374
  store i32 %call14, ptr %rc, align 4, !dbg !5375
  %11 = load i32, ptr %rc, align 4, !dbg !5376
  %cmp15 = icmp eq i32 %11, 254, !dbg !5378
  br i1 %cmp15, label %if.then17, label %if.end20, !dbg !5379

if.then17:                                        ; preds = %if.end12
  %12 = load ptr, ptr %psmouse.addr, align 8, !dbg !5380
  %13 = load i8, ptr %data.addr, align 1, !dbg !5381
  %conv18 = zext i8 %13 to i32, !dbg !5381
  %call19 = call i32 @cypress_ps2_sendbyte(ptr noundef %12, i32 noundef %conv18) #17, !dbg !5382
  store i32 %call19, ptr %rc, align 4, !dbg !5383
  br label %if.end20, !dbg !5384

if.end20:                                         ; preds = %if.then17, %if.end12
  %14 = load i32, ptr %rc, align 4, !dbg !5385
  %cmp21 = icmp eq i32 %14, 252, !dbg !5387
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !5388

if.then23:                                        ; preds = %if.end20
  br label %do.cond, !dbg !5389

if.else:                                          ; preds = %if.end20
  br label %do.end, !dbg !5390

do.cond:                                          ; preds = %if.then23, %if.then11
  %15 = load i32, ptr %tries, align 4, !dbg !5391
  %dec = add i32 %15, -1, !dbg !5391
  store i32 %dec, ptr %tries, align 4, !dbg !5391
  %cmp24 = icmp sgt i32 %dec, 0, !dbg !5392
  br i1 %cmp24, label %do.body, label %do.end, !dbg !5393, !llvm.loop !5394

do.end:                                           ; preds = %do.cond, %if.else
  %16 = load ptr, ptr %ps2dev, align 8, !dbg !5396
  call void @ps2_end_command(ptr noundef %16) #17, !dbg !5397
  %17 = load i32, ptr %rc, align 4, !dbg !5398
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !5399
  call void @llvm.lifetime.end.p0(i64 4, ptr %tries) #16, !dbg !5399
  call void @llvm.lifetime.end.p0(i64 8, ptr %ps2dev) #16, !dbg !5399
  ret i32 %17, !dbg !5400
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cypress_ps2_read_cmd_status(ptr noundef %psmouse, i8 noundef zeroext %cmd, ptr noundef %param) #0 align 16 !dbg !5401 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %cmd.addr = alloca i8, align 1
  %param.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %ps2dev = alloca ptr, align 8
  %old_state = alloca i32, align 4
  %pktsize = alloca i32, align 4
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret21 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond24 = alloca i8, align 1
  %tmp36 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp49 = alloca i64, align 8
  %tmp51 = alloca i64, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5403, metadata !DIExpression()), !dbg !5438
  store i8 %cmd, ptr %cmd.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5404, metadata !DIExpression()), !dbg !5439
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5405, metadata !DIExpression()), !dbg !5440
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !5441
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5406, metadata !DIExpression()), !dbg !5442
  call void @llvm.lifetime.start.p0(i64 8, ptr %ps2dev) #16, !dbg !5443
  call void @llvm.dbg.declare(metadata ptr %ps2dev, metadata !5407, metadata !DIExpression()), !dbg !5444
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5445
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, !dbg !5446
  store ptr %ps2dev1, ptr %ps2dev, align 8, !dbg !5444
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_state) #16, !dbg !5447
  call void @llvm.dbg.declare(metadata ptr %old_state, metadata !5408, metadata !DIExpression()), !dbg !5448
  call void @llvm.lifetime.start.p0(i64 4, ptr %pktsize) #16, !dbg !5449
  call void @llvm.dbg.declare(metadata ptr %pktsize, metadata !5409, metadata !DIExpression()), !dbg !5450
  %1 = load ptr, ptr %ps2dev, align 8, !dbg !5451
  call void @ps2_begin_command(ptr noundef %1) #17, !dbg !5452
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !5453
  %state = getelementptr inbounds %struct.psmouse, ptr %2, i32 0, i32 18, !dbg !5454
  %3 = load i32, ptr %state, align 8, !dbg !5454
  store i32 %3, ptr %old_state, align 4, !dbg !5455
  %4 = load ptr, ptr %psmouse.addr, align 8, !dbg !5456
  %state2 = getelementptr inbounds %struct.psmouse, ptr %4, i32 0, i32 18, !dbg !5457
  store i32 3, ptr %state2, align 8, !dbg !5458
  %5 = load ptr, ptr %psmouse.addr, align 8, !dbg !5459
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 9, !dbg !5460
  store i8 0, ptr %pktcnt, align 1, !dbg !5461
  %6 = load i8, ptr %cmd.addr, align 1, !dbg !5462
  %conv = zext i8 %6 to i32, !dbg !5462
  %cmp = icmp eq i32 %conv, 1, !dbg !5463
  %7 = zext i1 %cmp to i64, !dbg !5464
  %cond = select i1 %cmp, i32 8, i32 3, !dbg !5464
  store i32 %cond, ptr %pktsize, align 4, !dbg !5465
  %8 = load ptr, ptr %param.addr, align 8, !dbg !5466
  %9 = load i32, ptr %pktsize, align 4, !dbg !5467
  %conv4 = sext i32 %9 to i64, !dbg !5467
  call void @llvm.memset.p0.i64(ptr align 1 %8, i8 0, i64 %conv4, i1 false), !dbg !5468
  %10 = load ptr, ptr %psmouse.addr, align 8, !dbg !5469
  %call = call i32 @cypress_ps2_sendbyte(ptr noundef %10, i32 noundef 233) #17, !dbg !5470
  store i32 %call, ptr %rc, align 4, !dbg !5471
  %11 = load i32, ptr %rc, align 4, !dbg !5472
  %cmp5 = icmp slt i32 %11, 0, !dbg !5474
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5475

if.then:                                          ; preds = %entry
  br label %out, !dbg !5476

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #16, !dbg !5477
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5410, metadata !DIExpression()), !dbg !5477
  %call7 = call i64 @msecs_to_jiffies(i32 noundef 200) #17, !dbg !5477
  store i64 %call7, ptr %__ret, align 8, !dbg !5477
  br label %do.body, !dbg !5477

do.body:                                          ; preds = %if.end
  call void @might_resched() #17, !dbg !5478
  br label %do.cond, !dbg !5478

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5478

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cond) #16, !dbg !5480
  call void @llvm.dbg.declare(metadata ptr %__cond, metadata !5412, metadata !DIExpression()), !dbg !5480
  %12 = load ptr, ptr %psmouse.addr, align 8, !dbg !5480
  %pktcnt8 = getelementptr inbounds %struct.psmouse, ptr %12, i32 0, i32 9, !dbg !5480
  %13 = load i8, ptr %pktcnt8, align 1, !dbg !5480
  %conv9 = zext i8 %13 to i32, !dbg !5480
  %14 = load i32, ptr %pktsize, align 4, !dbg !5480
  %cmp10 = icmp sge i32 %conv9, %14, !dbg !5480
  %frombool = zext i1 %cmp10 to i8, !dbg !5480
  store i8 %frombool, ptr %__cond, align 1, !dbg !5480
  %15 = load i8, ptr %__cond, align 1, !dbg !5481, !range !4853, !noundef !1567
  %tobool = trunc i8 %15 to i1, !dbg !5481
  br i1 %tobool, label %land.lhs.true, label %if.end15, !dbg !5481

land.lhs.true:                                    ; preds = %do.end
  %16 = load i64, ptr %__ret, align 8, !dbg !5481
  %tobool13 = icmp ne i64 %16, 0, !dbg !5481
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !5480

if.then14:                                        ; preds = %land.lhs.true
  store i64 1, ptr %__ret, align 8, !dbg !5481
  br label %if.end15, !dbg !5481

if.end15:                                         ; preds = %if.then14, %land.lhs.true, %do.end
  %17 = load i8, ptr %__cond, align 1, !dbg !5480, !range !4853, !noundef !1567
  %tobool16 = trunc i8 %17 to i1, !dbg !5480
  br i1 %tobool16, label %lor.end, label %lor.rhs, !dbg !5480

lor.rhs:                                          ; preds = %if.end15
  %18 = load i64, ptr %__ret, align 8, !dbg !5480
  %tobool18 = icmp ne i64 %18, 0, !dbg !5480
  %lnot = xor i1 %tobool18, true, !dbg !5480
  br label %lor.end, !dbg !5480

lor.end:                                          ; preds = %lor.rhs, %if.end15
  %19 = phi i1 [ true, %if.end15 ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %19 to i32, !dbg !5480
  store i32 %lor.ext, ptr %tmp, align 4, !dbg !5481
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cond) #16, !dbg !5483
  %20 = load i32, ptr %tmp, align 4, !dbg !5480
  %tobool19 = icmp ne i32 %20, 0, !dbg !5483
  br i1 %tobool19, label %if.end50, label %if.then20, !dbg !5477

if.then20:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #16, !dbg !5484
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !5415, metadata !DIExpression()), !dbg !5484
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret21) #16, !dbg !5484
  call void @llvm.dbg.declare(metadata ptr %__ret21, metadata !5428, metadata !DIExpression()), !dbg !5484
  %call22 = call i64 @msecs_to_jiffies(i32 noundef 200) #17, !dbg !5484
  store i64 %call22, ptr %__ret21, align 8, !dbg !5484
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #17, !dbg !5484
  br label %for.cond, !dbg !5484

for.cond:                                         ; preds = %cleanup.cont, %if.then20
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #16, !dbg !5485
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !5429, metadata !DIExpression()), !dbg !5485
  %21 = load ptr, ptr %ps2dev, align 8, !dbg !5485
  %wait = getelementptr inbounds %struct.ps2dev, ptr %21, i32 0, i32 2, !dbg !5485
  %call23 = call i64 @prepare_to_wait_event(ptr noundef %wait, ptr noundef %__wq_entry, i32 noundef 2) #17, !dbg !5485
  store i64 %call23, ptr %__int, align 8, !dbg !5485
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cond24) #16, !dbg !5486
  call void @llvm.dbg.declare(metadata ptr %__cond24, metadata !5433, metadata !DIExpression()), !dbg !5486
  %22 = load ptr, ptr %psmouse.addr, align 8, !dbg !5486
  %pktcnt25 = getelementptr inbounds %struct.psmouse, ptr %22, i32 0, i32 9, !dbg !5486
  %23 = load i8, ptr %pktcnt25, align 1, !dbg !5486
  %conv26 = zext i8 %23 to i32, !dbg !5486
  %24 = load i32, ptr %pktsize, align 4, !dbg !5486
  %cmp27 = icmp sge i32 %conv26, %24, !dbg !5486
  %frombool29 = zext i1 %cmp27 to i8, !dbg !5486
  store i8 %frombool29, ptr %__cond24, align 1, !dbg !5486
  %25 = load i8, ptr %__cond24, align 1, !dbg !5487, !range !4853, !noundef !1567
  %tobool30 = trunc i8 %25 to i1, !dbg !5487
  br i1 %tobool30, label %land.lhs.true32, label %if.end35, !dbg !5487

land.lhs.true32:                                  ; preds = %for.cond
  %26 = load i64, ptr %__ret21, align 8, !dbg !5487
  %tobool33 = icmp ne i64 %26, 0, !dbg !5487
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !5486

if.then34:                                        ; preds = %land.lhs.true32
  store i64 1, ptr %__ret21, align 8, !dbg !5487
  br label %if.end35, !dbg !5487

if.end35:                                         ; preds = %if.then34, %land.lhs.true32, %for.cond
  %27 = load i8, ptr %__cond24, align 1, !dbg !5486, !range !4853, !noundef !1567
  %tobool37 = trunc i8 %27 to i1, !dbg !5486
  br i1 %tobool37, label %lor.end42, label %lor.rhs39, !dbg !5486

lor.rhs39:                                        ; preds = %if.end35
  %28 = load i64, ptr %__ret21, align 8, !dbg !5486
  %tobool40 = icmp ne i64 %28, 0, !dbg !5486
  %lnot41 = xor i1 %tobool40, true, !dbg !5486
  br label %lor.end42, !dbg !5486

lor.end42:                                        ; preds = %lor.rhs39, %if.end35
  %29 = phi i1 [ true, %if.end35 ], [ %lnot41, %lor.rhs39 ]
  %lor.ext43 = zext i1 %29 to i32, !dbg !5486
  store i32 %lor.ext43, ptr %tmp36, align 4, !dbg !5487
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cond24) #16, !dbg !5489
  %30 = load i32, ptr %tmp36, align 4, !dbg !5486
  %tobool44 = icmp ne i32 %30, 0, !dbg !5489
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !5485

if.then45:                                        ; preds = %lor.end42
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5489

if.end46:                                         ; preds = %lor.end42
  %31 = load i64, ptr %__ret21, align 8, !dbg !5485
  %call47 = call i64 @schedule_timeout(i64 noundef %31) #17, !dbg !5485
  store i64 %call47, ptr %__ret21, align 8, !dbg !5485
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5490
  br label %cleanup, !dbg !5490

cleanup:                                          ; preds = %if.end46, %if.then45
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #16, !dbg !5490
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !5490, !llvm.loop !5491

for.end:                                          ; preds = %cleanup
  %32 = load ptr, ptr %ps2dev, align 8, !dbg !5484
  %wait48 = getelementptr inbounds %struct.ps2dev, ptr %32, i32 0, i32 2, !dbg !5484
  call void @finish_wait(ptr noundef %wait48, ptr noundef %__wq_entry) #17, !dbg !5484
  br label %__out, !dbg !5484

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !5436), !dbg !5484
  %33 = load i64, ptr %__ret21, align 8, !dbg !5484
  store i64 %33, ptr %tmp49, align 8, !dbg !5484
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret21) #16, !dbg !5483
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #16, !dbg !5483
  %34 = load i64, ptr %tmp49, align 8, !dbg !5484
  store i64 %34, ptr %__ret, align 8, !dbg !5483
  br label %if.end50, !dbg !5483

if.end50:                                         ; preds = %__out, %lor.end
  %35 = load i64, ptr %__ret, align 8, !dbg !5477
  store i64 %35, ptr %tmp51, align 8, !dbg !5483
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #16, !dbg !5493
  %36 = load i64, ptr %tmp51, align 8, !dbg !5477
  %37 = load ptr, ptr %param.addr, align 8, !dbg !5494
  %38 = load ptr, ptr %psmouse.addr, align 8, !dbg !5495
  %packet = getelementptr inbounds %struct.psmouse, ptr %38, i32 0, i32 7, !dbg !5496
  %arraydecay = getelementptr inbounds [8 x i8], ptr %packet, i64 0, i64 0, !dbg !5497
  %39 = load i32, ptr %pktsize, align 4, !dbg !5498
  %conv52 = sext i32 %39 to i64, !dbg !5498
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr align 8 %arraydecay, i64 %conv52, i1 false), !dbg !5497
  br label %out, !dbg !5499

out:                                              ; preds = %if.end50, %if.then
  call void @llvm.dbg.label(metadata !5437), !dbg !5500
  %40 = load i32, ptr %old_state, align 4, !dbg !5501
  %41 = load ptr, ptr %psmouse.addr, align 8, !dbg !5502
  %state53 = getelementptr inbounds %struct.psmouse, ptr %41, i32 0, i32 18, !dbg !5503
  store i32 %40, ptr %state53, align 8, !dbg !5504
  %42 = load ptr, ptr %psmouse.addr, align 8, !dbg !5505
  %pktcnt54 = getelementptr inbounds %struct.psmouse, ptr %42, i32 0, i32 9, !dbg !5506
  store i8 0, ptr %pktcnt54, align 1, !dbg !5507
  %43 = load ptr, ptr %ps2dev, align 8, !dbg !5508
  call void @ps2_end_command(ptr noundef %43) #17, !dbg !5509
  %44 = load i32, ptr %rc, align 4, !dbg !5510
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pktsize) #16, !dbg !5511
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_state) #16, !dbg !5511
  call void @llvm.lifetime.end.p0(i64 8, ptr %ps2dev) #16, !dbg !5511
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !5511
  ret i32 %44, !dbg !5512

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cypress_verify_cmd_state(ptr noundef %psmouse, i8 noundef zeroext %cmd, ptr noundef %param) #0 align 16 !dbg !5513 {
entry:
  %retval = alloca i1, align 1
  %psmouse.addr = alloca ptr, align 8
  %cmd.addr = alloca i8, align 1
  %param.addr = alloca ptr, align 8
  %rate_match = alloca i8, align 1
  %resolution_match = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5517, metadata !DIExpression()), !dbg !5523
  store i8 %cmd, ptr %cmd.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5518, metadata !DIExpression()), !dbg !5524
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5519, metadata !DIExpression()), !dbg !5525
  call void @llvm.lifetime.start.p0(i64 1, ptr %rate_match) #16, !dbg !5526
  call void @llvm.dbg.declare(metadata ptr %rate_match, metadata !5520, metadata !DIExpression()), !dbg !5527
  store i8 0, ptr %rate_match, align 1, !dbg !5527
  call void @llvm.lifetime.start.p0(i64 1, ptr %resolution_match) #16, !dbg !5528
  call void @llvm.dbg.declare(metadata ptr %resolution_match, metadata !5521, metadata !DIExpression()), !dbg !5529
  store i8 0, ptr %resolution_match, align 1, !dbg !5529
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5530
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5522, metadata !DIExpression()), !dbg !5531
  %0 = load i8, ptr %cmd.addr, align 1, !dbg !5532
  %conv = zext i8 %0 to i32, !dbg !5532
  %cmp = icmp eq i32 %conv, 0, !dbg !5534
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5535

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr %cmd.addr, align 1, !dbg !5536
  %conv2 = zext i8 %1 to i32, !dbg !5536
  %cmp3 = icmp eq i32 %conv2, 32, !dbg !5537
  br i1 %cmp3, label %if.then, label %lor.lhs.false5, !dbg !5538

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load i8, ptr %cmd.addr, align 1, !dbg !5539
  %conv6 = zext i8 %2 to i32, !dbg !5539
  %cmp7 = icmp eq i32 %conv6, 1, !dbg !5540
  br i1 %cmp7, label %if.then, label %if.end, !dbg !5541

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %entry
  store i1 true, ptr %retval, align 1, !dbg !5542
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5542

if.end:                                           ; preds = %lor.lhs.false5
  %3 = load ptr, ptr %param.addr, align 8, !dbg !5543
  %arrayidx = getelementptr i8, ptr %3, i64 0, !dbg !5543
  %4 = load i8, ptr %arrayidx, align 1, !dbg !5543
  %conv9 = zext i8 %4 to i32, !dbg !5543
  %not = xor i32 %conv9, -1, !dbg !5545
  %and = and i32 %not, 136, !dbg !5546
  %cmp10 = icmp eq i32 %and, 136, !dbg !5547
  br i1 %cmp10, label %land.lhs.true, label %if.end52, !dbg !5548

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %param.addr, align 8, !dbg !5549
  %arrayidx12 = getelementptr i8, ptr %5, i64 0, !dbg !5549
  %6 = load i8, ptr %arrayidx12, align 1, !dbg !5549
  %conv13 = zext i8 %6 to i32, !dbg !5549
  %and14 = and i32 %conv13, 64, !dbg !5550
  %cmp15 = icmp eq i32 %and14, 0, !dbg !5551
  br i1 %cmp15, label %if.then17, label %if.end52, !dbg !5552

if.then17:                                        ; preds = %land.lhs.true
  store i32 0, ptr %i, align 4, !dbg !5553
  br label %for.cond, !dbg !5556

for.cond:                                         ; preds = %for.inc, %if.then17
  %7 = load i32, ptr %i, align 4, !dbg !5557
  %conv18 = sext i32 %7 to i64, !dbg !5557
  %cmp19 = icmp ult i64 %conv18, 4, !dbg !5559
  br i1 %cmp19, label %for.body, label %for.end, !dbg !5560

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %i, align 4, !dbg !5561
  %idxprom = sext i32 %8 to i64, !dbg !5563
  %arrayidx21 = getelementptr [4 x i8], ptr @cytp_resolution, i64 0, i64 %idxprom, !dbg !5563
  %9 = load i8, ptr %arrayidx21, align 1, !dbg !5563
  %conv22 = zext i8 %9 to i32, !dbg !5563
  %10 = load ptr, ptr %param.addr, align 8, !dbg !5564
  %arrayidx23 = getelementptr i8, ptr %10, i64 1, !dbg !5564
  %11 = load i8, ptr %arrayidx23, align 1, !dbg !5564
  %conv24 = zext i8 %11 to i32, !dbg !5564
  %cmp25 = icmp eq i32 %conv22, %conv24, !dbg !5565
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !5566

if.then27:                                        ; preds = %for.body
  store i8 1, ptr %resolution_match, align 1, !dbg !5567
  br label %if.end28, !dbg !5568

if.end28:                                         ; preds = %if.then27, %for.body
  br label %for.inc, !dbg !5569

for.inc:                                          ; preds = %if.end28
  %12 = load i32, ptr %i, align 4, !dbg !5570
  %inc = add i32 %12, 1, !dbg !5570
  store i32 %inc, ptr %i, align 4, !dbg !5570
  br label %for.cond, !dbg !5571, !llvm.loop !5572

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !5574
  br label %for.cond29, !dbg !5576

for.cond29:                                       ; preds = %for.inc43, %for.end
  %13 = load i32, ptr %i, align 4, !dbg !5577
  %conv30 = sext i32 %13 to i64, !dbg !5577
  %cmp31 = icmp ult i64 %conv30, 6, !dbg !5579
  br i1 %cmp31, label %for.body33, label %for.end45, !dbg !5580

for.body33:                                       ; preds = %for.cond29
  %14 = load i32, ptr %i, align 4, !dbg !5581
  %idxprom34 = sext i32 %14 to i64, !dbg !5583
  %arrayidx35 = getelementptr [6 x i8], ptr @cytp_rate, i64 0, i64 %idxprom34, !dbg !5583
  %15 = load i8, ptr %arrayidx35, align 1, !dbg !5583
  %conv36 = zext i8 %15 to i32, !dbg !5583
  %16 = load ptr, ptr %param.addr, align 8, !dbg !5584
  %arrayidx37 = getelementptr i8, ptr %16, i64 2, !dbg !5584
  %17 = load i8, ptr %arrayidx37, align 1, !dbg !5584
  %conv38 = zext i8 %17 to i32, !dbg !5584
  %cmp39 = icmp eq i32 %conv36, %conv38, !dbg !5585
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !5586

if.then41:                                        ; preds = %for.body33
  store i8 1, ptr %rate_match, align 1, !dbg !5587
  br label %if.end42, !dbg !5588

if.end42:                                         ; preds = %if.then41, %for.body33
  br label %for.inc43, !dbg !5589

for.inc43:                                        ; preds = %if.end42
  %18 = load i32, ptr %i, align 4, !dbg !5590
  %inc44 = add i32 %18, 1, !dbg !5590
  store i32 %inc44, ptr %i, align 4, !dbg !5590
  br label %for.cond29, !dbg !5591, !llvm.loop !5592

for.end45:                                        ; preds = %for.cond29
  %19 = load i8, ptr %resolution_match, align 1, !dbg !5594, !range !4853, !noundef !1567
  %tobool = trunc i8 %19 to i1, !dbg !5594
  br i1 %tobool, label %land.lhs.true47, label %if.end51, !dbg !5596

land.lhs.true47:                                  ; preds = %for.end45
  %20 = load i8, ptr %rate_match, align 1, !dbg !5597, !range !4853, !noundef !1567
  %tobool48 = trunc i8 %20 to i1, !dbg !5597
  br i1 %tobool48, label %if.then50, label %if.end51, !dbg !5598

if.then50:                                        ; preds = %land.lhs.true47
  store i1 true, ptr %retval, align 1, !dbg !5599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5599

if.end51:                                         ; preds = %land.lhs.true47, %for.end45
  br label %if.end52, !dbg !5600

if.end52:                                         ; preds = %if.end51, %land.lhs.true, %if.end
  store i1 false, ptr %retval, align 1, !dbg !5601
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5601

cleanup:                                          ; preds = %if.end52, %if.then50, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5602
  call void @llvm.lifetime.end.p0(i64 1, ptr %resolution_match) #16, !dbg !5602
  call void @llvm.lifetime.end.p0(i64 1, ptr %rate_match) #16, !dbg !5602
  %21 = load i1, ptr %retval, align 1, !dbg !5602
  ret i1 %21, !dbg !5602
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5603 dso_local void @ps2_begin_command(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cypress_ps2_sendbyte(ptr noundef %psmouse, i32 noundef %value) #0 align 16 !dbg !5606 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %ps2dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5610, metadata !DIExpression()), !dbg !5613
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5611, metadata !DIExpression()), !dbg !5614
  call void @llvm.lifetime.start.p0(i64 8, ptr %ps2dev) #16, !dbg !5615
  call void @llvm.dbg.declare(metadata ptr %ps2dev, metadata !5612, metadata !DIExpression()), !dbg !5616
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5617
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, !dbg !5618
  store ptr %ps2dev1, ptr %ps2dev, align 8, !dbg !5616
  %1 = load ptr, ptr %ps2dev, align 8, !dbg !5619
  %2 = load i32, ptr %value.addr, align 4, !dbg !5621
  %and = and i32 %2, 255, !dbg !5622
  %conv = trunc i32 %and to i8, !dbg !5621
  %call = call i32 @ps2_sendbyte(ptr noundef %1, i8 noundef zeroext %conv, i32 noundef 200) #17, !dbg !5623
  %cmp = icmp slt i32 %call, 0, !dbg !5624
  br i1 %cmp, label %if.then, label %if.end, !dbg !5625

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %ps2dev, align 8, !dbg !5626
  %nak = getelementptr inbounds %struct.ps2dev, ptr %3, i32 0, i32 6, !dbg !5629
  %4 = load i8, ptr %nak, align 1, !dbg !5629
  %conv3 = zext i8 %4 to i32, !dbg !5626
  %cmp4 = icmp eq i32 %conv3, 254, !dbg !5630
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !5631

if.then6:                                         ; preds = %if.then
  store i32 254, ptr %retval, align 4, !dbg !5632
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5632

if.else:                                          ; preds = %if.then
  store i32 252, ptr %retval, align 4, !dbg !5633
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5633

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5634

cleanup:                                          ; preds = %if.end, %if.else, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ps2dev) #16, !dbg !5635
  %5 = load i32, ptr %retval, align 4, !dbg !5635
  ret i32 %5, !dbg !5635
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5636 dso_local void @ps2_end_command(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5637 dso_local i32 @ps2_sendbyte(ptr noundef, i8 noundef zeroext, i32 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msecs_to_jiffies(i32 noundef %m) #7 align 16 !dbg !5640 {
entry:
  %retval = alloca i64, align 8
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5645, metadata !DIExpression()), !dbg !5646
  %0 = load i32, ptr %m.addr, align 4, !dbg !5647
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5649
  br i1 %1, label %if.then, label %if.else, !dbg !5650

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %m.addr, align 4, !dbg !5651
  %cmp = icmp slt i32 %2, 0, !dbg !5654
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5655

if.then1:                                         ; preds = %if.then
  store i64 4611686018427387902, ptr %retval, align 8, !dbg !5656
  br label %return, !dbg !5656

if.end:                                           ; preds = %if.then
  %3 = load i32, ptr %m.addr, align 4, !dbg !5657
  %call = call i64 @_msecs_to_jiffies(i32 noundef %3) #17, !dbg !5658
  store i64 %call, ptr %retval, align 8, !dbg !5659
  br label %return, !dbg !5659

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %m.addr, align 4, !dbg !5660
  %call2 = call i64 @__msecs_to_jiffies(i32 noundef %4) #17, !dbg !5662
  store i64 %call2, ptr %retval, align 8, !dbg !5663
  br label %return, !dbg !5663

return:                                           ; preds = %if.else, %if.end, %if.then1
  %5 = load i64, ptr %retval, align 8, !dbg !5664
  ret i64 %5, !dbg !5664
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #7 align 16 !dbg !29 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !5665
  %0 = load ptr, ptr %tmp, align 8, !dbg !5665
  %call = call i32 %0() #17, !dbg !5667
  ret void, !dbg !5668
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5669 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5672 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5676 dso_local i64 @schedule_timeout(i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5679 dso_local void @finish_wait(ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_msecs_to_jiffies(i32 noundef %m) #10 align 16 !dbg !5682 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5684, metadata !DIExpression()), !dbg !5685
  %0 = load i32, ptr %m.addr, align 4, !dbg !5686
  %conv = zext i32 %0 to i64, !dbg !5686
  %add = add i64 %conv, 1, !dbg !5687
  %sub = sub i64 %add, 1, !dbg !5688
  %div = sdiv i64 %sub, 1, !dbg !5689
  ret i64 %div, !dbg !5690
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5691 dso_local i64 @__msecs_to_jiffies(i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !5692 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5694, metadata !DIExpression()), !dbg !5699
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5695, metadata !DIExpression()), !dbg !5700
  %0 = load i64, ptr %size.addr, align 8, !dbg !5701
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5702
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5703

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5704
  %tobool = icmp ne i64 %2, 0, !dbg !5704
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5705

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5706
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5696, metadata !DIExpression()), !dbg !5707
  %3 = load i64, ptr %size.addr, align 8, !dbg !5708
  %cmp = icmp ugt i64 %3, 8192, !dbg !5710
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5711

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5712
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5713
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !5714
  store ptr %call, ptr %retval, align 8, !dbg !5715
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5715

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5716
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5716
  store i32 %call2, ptr %index, align 4, !dbg !5717
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5718
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5719
  %9 = ptrtoint ptr %8 to i64, !dbg !5719
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5720
  %idxprom = zext i32 %call3 to i64, !dbg !5721
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5721
  %10 = load i32, ptr %index, align 4, !dbg !5722
  %idxprom4 = zext i32 %10 to i64, !dbg !5721
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5721
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5721
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5723
  %13 = load i64, ptr %size.addr, align 8, !dbg !5724
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !5725
  store ptr %call6, ptr %retval, align 8, !dbg !5726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5726

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5727
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5728
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5729
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !5730
  store ptr %call8, ptr %retval, align 8, !dbg !5731
  br label %return, !dbg !5731

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5732
  ret ptr %16, !dbg !5732
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5733 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !5734 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5738, metadata !DIExpression()), !dbg !5740
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5739, metadata !DIExpression()), !dbg !5741
  %0 = load i64, ptr %size.addr, align 8, !dbg !5742
  %tobool = icmp ne i64 %0, 0, !dbg !5742
  br i1 %tobool, label %if.end, label %if.then, !dbg !5744

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5745
  br label %return, !dbg !5745

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5746
  %cmp = icmp ule i64 %1, 8, !dbg !5748
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5749

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5750
  br label %return, !dbg !5750

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5751
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5753
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5754

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5755
  %cmp4 = icmp ule i64 %3, 96, !dbg !5756
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5757

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5758
  br label %return, !dbg !5758

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5759
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5761
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5762

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5763
  %cmp9 = icmp ule i64 %5, 192, !dbg !5764
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5765

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5766
  br label %return, !dbg !5766

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5767
  %cmp12 = icmp ule i64 %6, 8, !dbg !5769
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5770

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5771
  br label %return, !dbg !5771

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5772
  %cmp15 = icmp ule i64 %7, 16, !dbg !5774
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5775

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5776
  br label %return, !dbg !5776

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5777
  %cmp18 = icmp ule i64 %8, 32, !dbg !5779
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5780

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5781
  br label %return, !dbg !5781

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5782
  %cmp21 = icmp ule i64 %9, 64, !dbg !5784
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5785

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5786
  br label %return, !dbg !5786

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5787
  %cmp24 = icmp ule i64 %10, 128, !dbg !5789
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5790

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5791
  br label %return, !dbg !5791

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5792
  %cmp27 = icmp ule i64 %11, 256, !dbg !5794
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5795

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5796
  br label %return, !dbg !5796

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5797
  %cmp30 = icmp ule i64 %12, 512, !dbg !5799
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5800

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5801
  br label %return, !dbg !5801

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5802
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5804
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5805

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5806
  br label %return, !dbg !5806

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5807
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5809
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5810

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5811
  br label %return, !dbg !5811

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5812
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5814
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5815

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5816
  br label %return, !dbg !5816

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5817
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5819
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5820

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5821
  br label %return, !dbg !5821

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5822
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5824
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5825

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5826
  br label %return, !dbg !5826

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5827
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5829
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5830

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5831
  br label %return, !dbg !5831

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5832
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5834
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5835

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5836
  br label %return, !dbg !5836

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5837
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5839
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5840

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5841
  br label %return, !dbg !5841

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5842
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5844
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5845

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5846
  br label %return, !dbg !5846

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5847
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5849
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5850

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5851
  br label %return, !dbg !5851

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5852
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5854
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5855

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5856
  br label %return, !dbg !5856

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5857
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5859
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5860

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5861
  br label %return, !dbg !5861

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5862, !range !4853, !noundef !1567
  %tobool69 = trunc i8 %25 to i1, !dbg !5862
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5864

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5865

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_196() #21, !dbg !5866, !srcloc !5869
  unreachable, !dbg !5866

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5870

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5871

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5872

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5874

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5872

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #16, !dbg !5876, !srcloc !5878
  br label %do.end75, !dbg !5876

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5872

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5879
  br label %return, !dbg !5879

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5880
  ret i32 %26, !dbg !5880
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5881 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !5887 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5891, metadata !DIExpression()), !dbg !5893
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5892, metadata !DIExpression()), !dbg !5894
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5895
  %and = and i32 %0, 17, !dbg !5895
  %cmp = icmp eq i32 %and, 0, !dbg !5895
  %lnot = xor i1 %cmp, true, !dbg !5895
  %lnot1 = xor i1 %lnot, true, !dbg !5895
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5895
  %conv = sext i32 %lnot.ext to i64, !dbg !5895
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5895
  %tobool = icmp ne i64 %expval, 0, !dbg !5895
  br i1 %tobool, label %if.then, label %if.end, !dbg !5897

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5898
  br label %return, !dbg !5898

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5899
  %and2 = and i32 %1, 1, !dbg !5901
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5901
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5902

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5903
  br label %return, !dbg !5903

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5904
  br label %return, !dbg !5904

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5906
  ret i32 %2, !dbg !5906
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5907 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5908 dso_local void @__compiletime_assert_196() #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5909 dso_local i32 @psmouse_reset(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cypress_read_fw_version(ptr noundef %psmouse) #0 align 16 !dbg !5910 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %cytp = alloca ptr, align 8
  %param = alloca [3 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5912, metadata !DIExpression()), !dbg !5915
  call void @llvm.lifetime.start.p0(i64 8, ptr %cytp) #16, !dbg !5916
  call void @llvm.dbg.declare(metadata ptr %cytp, metadata !5913, metadata !DIExpression()), !dbg !5917
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5918
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !5919
  %1 = load ptr, ptr %private, align 8, !dbg !5919
  store ptr %1, ptr %cytp, align 8, !dbg !5917
  call void @llvm.lifetime.start.p0(i64 3, ptr %param) #16, !dbg !5920
  call void @llvm.dbg.declare(metadata ptr %param, metadata !5914, metadata !DIExpression()), !dbg !5921
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !5922
  %arraydecay = getelementptr inbounds [3 x i8], ptr %param, i64 0, i64 0, !dbg !5924
  %call = call i32 @cypress_send_ext_cmd(ptr noundef %2, i8 noundef zeroext 0, ptr noundef %arraydecay) #17, !dbg !5925
  %tobool = icmp ne i32 %call, 0, !dbg !5925
  br i1 %tobool, label %if.then, label %if.end, !dbg !5926

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5927
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5927

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [3 x i8], ptr %param, i64 0, i64 0, !dbg !5928
  %3 = load i8, ptr %arrayidx, align 1, !dbg !5928
  %conv = zext i8 %3 to i32, !dbg !5928
  %cmp = icmp ne i32 %conv, 51, !dbg !5930
  br i1 %cmp, label %if.then6, label %lor.lhs.false, !dbg !5931

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx2 = getelementptr [3 x i8], ptr %param, i64 0, i64 1, !dbg !5932
  %4 = load i8, ptr %arrayidx2, align 1, !dbg !5932
  %conv3 = zext i8 %4 to i32, !dbg !5932
  %cmp4 = icmp ne i32 %conv3, 204, !dbg !5933
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !5934

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -19, ptr %retval, align 4, !dbg !5935
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5935

if.end7:                                          ; preds = %lor.lhs.false
  %arrayidx8 = getelementptr [3 x i8], ptr %param, i64 0, i64 2, !dbg !5936
  %5 = load i8, ptr %arrayidx8, align 1, !dbg !5936
  %conv9 = zext i8 %5 to i32, !dbg !5936
  %and = and i32 %conv9, 127, !dbg !5937
  %6 = load ptr, ptr %cytp, align 8, !dbg !5938
  %fw_version = getelementptr inbounds %struct.cytp_data, ptr %6, i32 0, i32 0, !dbg !5939
  store i32 %and, ptr %fw_version, align 4, !dbg !5940
  %arrayidx10 = getelementptr [3 x i8], ptr %param, i64 0, i64 2, !dbg !5941
  %7 = load i8, ptr %arrayidx10, align 1, !dbg !5941
  %conv11 = zext i8 %7 to i32, !dbg !5941
  %and12 = and i32 %conv11, 128, !dbg !5942
  %tobool13 = icmp ne i32 %and12, 0, !dbg !5943
  %8 = zext i1 %tobool13 to i64, !dbg !5943
  %cond = select i1 %tobool13, i32 1, i32 0, !dbg !5943
  %9 = load ptr, ptr %cytp, align 8, !dbg !5944
  %tp_metrics_supported = getelementptr inbounds %struct.cytp_data, ptr %9, i32 0, i32 11, !dbg !5945
  store i32 %cond, ptr %tp_metrics_supported, align 4, !dbg !5946
  %10 = load ptr, ptr %cytp, align 8, !dbg !5947
  %fw_version14 = getelementptr inbounds %struct.cytp_data, ptr %10, i32 0, i32 0, !dbg !5949
  %11 = load i32, ptr %fw_version14, align 4, !dbg !5949
  %cmp15 = icmp sge i32 %11, 11, !dbg !5950
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !5951

if.then17:                                        ; preds = %if.end7
  %12 = load ptr, ptr %cytp, align 8, !dbg !5952
  %tp_metrics_supported18 = getelementptr inbounds %struct.cytp_data, ptr %12, i32 0, i32 11, !dbg !5953
  store i32 0, ptr %tp_metrics_supported18, align 4, !dbg !5954
  br label %if.end19, !dbg !5952

if.end19:                                         ; preds = %if.then17, %if.end7
  store i32 0, ptr %retval, align 4, !dbg !5955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5955

cleanup:                                          ; preds = %if.end19, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 3, ptr %param) #16, !dbg !5956
  call void @llvm.lifetime.end.p0(i64 8, ptr %cytp) #16, !dbg !5956
  %13 = load i32, ptr %retval, align 4, !dbg !5956
  ret i32 %13, !dbg !5956
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cypress_read_tp_metrics(ptr noundef %psmouse) #0 align 16 !dbg !5957 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %cytp = alloca ptr, align 8
  %param = alloca [8 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5959, metadata !DIExpression()), !dbg !5962
  call void @llvm.lifetime.start.p0(i64 8, ptr %cytp) #16, !dbg !5963
  call void @llvm.dbg.declare(metadata ptr %cytp, metadata !5960, metadata !DIExpression()), !dbg !5964
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5965
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !5966
  %1 = load ptr, ptr %private, align 8, !dbg !5966
  store ptr %1, ptr %cytp, align 8, !dbg !5964
  call void @llvm.lifetime.start.p0(i64 8, ptr %param) #16, !dbg !5967
  call void @llvm.dbg.declare(metadata ptr %param, metadata !5961, metadata !DIExpression()), !dbg !5968
  %2 = load ptr, ptr %cytp, align 8, !dbg !5969
  %tp_width = getelementptr inbounds %struct.cytp_data, ptr %2, i32 0, i32 5, !dbg !5970
  store i32 97, ptr %tp_width, align 4, !dbg !5971
  %3 = load ptr, ptr %cytp, align 8, !dbg !5972
  %tp_high = getelementptr inbounds %struct.cytp_data, ptr %3, i32 0, i32 6, !dbg !5973
  store i32 59, ptr %tp_high, align 4, !dbg !5974
  %4 = load ptr, ptr %cytp, align 8, !dbg !5975
  %tp_max_abs_x = getelementptr inbounds %struct.cytp_data, ptr %4, i32 0, i32 7, !dbg !5976
  store i32 1600, ptr %tp_max_abs_x, align 4, !dbg !5977
  %5 = load ptr, ptr %cytp, align 8, !dbg !5978
  %tp_max_abs_y = getelementptr inbounds %struct.cytp_data, ptr %5, i32 0, i32 8, !dbg !5979
  store i32 900, ptr %tp_max_abs_y, align 4, !dbg !5980
  %6 = load ptr, ptr %cytp, align 8, !dbg !5981
  %tp_min_pressure = getelementptr inbounds %struct.cytp_data, ptr %6, i32 0, i32 3, !dbg !5982
  store i32 0, ptr %tp_min_pressure, align 4, !dbg !5983
  %7 = load ptr, ptr %cytp, align 8, !dbg !5984
  %tp_max_pressure = getelementptr inbounds %struct.cytp_data, ptr %7, i32 0, i32 4, !dbg !5985
  store i32 255, ptr %tp_max_pressure, align 4, !dbg !5986
  %8 = load ptr, ptr %cytp, align 8, !dbg !5987
  %tp_max_abs_x1 = getelementptr inbounds %struct.cytp_data, ptr %8, i32 0, i32 7, !dbg !5988
  %9 = load i32, ptr %tp_max_abs_x1, align 4, !dbg !5988
  %10 = load ptr, ptr %cytp, align 8, !dbg !5989
  %tp_width2 = getelementptr inbounds %struct.cytp_data, ptr %10, i32 0, i32 5, !dbg !5990
  %11 = load i32, ptr %tp_width2, align 4, !dbg !5990
  %div = sdiv i32 %9, %11, !dbg !5991
  %12 = load ptr, ptr %cytp, align 8, !dbg !5992
  %tp_res_x = getelementptr inbounds %struct.cytp_data, ptr %12, i32 0, i32 9, !dbg !5993
  store i32 %div, ptr %tp_res_x, align 4, !dbg !5994
  %13 = load ptr, ptr %cytp, align 8, !dbg !5995
  %tp_max_abs_y3 = getelementptr inbounds %struct.cytp_data, ptr %13, i32 0, i32 8, !dbg !5996
  %14 = load i32, ptr %tp_max_abs_y3, align 4, !dbg !5996
  %15 = load ptr, ptr %cytp, align 8, !dbg !5997
  %tp_high4 = getelementptr inbounds %struct.cytp_data, ptr %15, i32 0, i32 6, !dbg !5998
  %16 = load i32, ptr %tp_high4, align 4, !dbg !5998
  %div5 = sdiv i32 %14, %16, !dbg !5999
  %17 = load ptr, ptr %cytp, align 8, !dbg !6000
  %tp_res_y = getelementptr inbounds %struct.cytp_data, ptr %17, i32 0, i32 10, !dbg !6001
  store i32 %div5, ptr %tp_res_y, align 4, !dbg !6002
  %18 = load ptr, ptr %cytp, align 8, !dbg !6003
  %tp_metrics_supported = getelementptr inbounds %struct.cytp_data, ptr %18, i32 0, i32 11, !dbg !6005
  %19 = load i32, ptr %tp_metrics_supported, align 4, !dbg !6005
  %tobool = icmp ne i32 %19, 0, !dbg !6003
  br i1 %tobool, label %if.end, label %if.then, !dbg !6006

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6007
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6007

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [8 x i8], ptr %param, i64 0, i64 0, !dbg !6008
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay, i8 0, i64 8, i1 false), !dbg !6008
  %20 = load ptr, ptr %psmouse.addr, align 8, !dbg !6009
  %arraydecay6 = getelementptr inbounds [8 x i8], ptr %param, i64 0, i64 0, !dbg !6011
  %call = call i32 @cypress_send_ext_cmd(ptr noundef %20, i8 noundef zeroext 1, ptr noundef %arraydecay6) #17, !dbg !6012
  %cmp = icmp eq i32 %call, 0, !dbg !6013
  br i1 %cmp, label %if.then7, label %if.end24, !dbg !6014

if.then7:                                         ; preds = %if.end
  %arrayidx = getelementptr [8 x i8], ptr %param, i64 0, i64 1, !dbg !6015
  %21 = load i8, ptr %arrayidx, align 1, !dbg !6015
  %conv = zext i8 %21 to i32, !dbg !6015
  %shl = shl i32 %conv, 8, !dbg !6017
  %arrayidx8 = getelementptr [8 x i8], ptr %param, i64 0, i64 0, !dbg !6018
  %22 = load i8, ptr %arrayidx8, align 1, !dbg !6018
  %conv9 = zext i8 %22 to i32, !dbg !6018
  %or = or i32 %shl, %conv9, !dbg !6019
  %23 = load ptr, ptr %cytp, align 8, !dbg !6020
  %tp_max_abs_x10 = getelementptr inbounds %struct.cytp_data, ptr %23, i32 0, i32 7, !dbg !6021
  store i32 %or, ptr %tp_max_abs_x10, align 4, !dbg !6022
  %arrayidx11 = getelementptr [8 x i8], ptr %param, i64 0, i64 3, !dbg !6023
  %24 = load i8, ptr %arrayidx11, align 1, !dbg !6023
  %conv12 = zext i8 %24 to i32, !dbg !6023
  %shl13 = shl i32 %conv12, 8, !dbg !6024
  %arrayidx14 = getelementptr [8 x i8], ptr %param, i64 0, i64 2, !dbg !6025
  %25 = load i8, ptr %arrayidx14, align 1, !dbg !6025
  %conv15 = zext i8 %25 to i32, !dbg !6025
  %or16 = or i32 %shl13, %conv15, !dbg !6026
  %26 = load ptr, ptr %cytp, align 8, !dbg !6027
  %tp_max_abs_y17 = getelementptr inbounds %struct.cytp_data, ptr %26, i32 0, i32 8, !dbg !6028
  store i32 %or16, ptr %tp_max_abs_y17, align 4, !dbg !6029
  %arrayidx18 = getelementptr [8 x i8], ptr %param, i64 0, i64 4, !dbg !6030
  %27 = load i8, ptr %arrayidx18, align 1, !dbg !6030
  %conv19 = zext i8 %27 to i32, !dbg !6030
  %28 = load ptr, ptr %cytp, align 8, !dbg !6031
  %tp_min_pressure20 = getelementptr inbounds %struct.cytp_data, ptr %28, i32 0, i32 3, !dbg !6032
  store i32 %conv19, ptr %tp_min_pressure20, align 4, !dbg !6033
  %arrayidx21 = getelementptr [8 x i8], ptr %param, i64 0, i64 5, !dbg !6034
  %29 = load i8, ptr %arrayidx21, align 1, !dbg !6034
  %conv22 = zext i8 %29 to i32, !dbg !6034
  %30 = load ptr, ptr %cytp, align 8, !dbg !6035
  %tp_max_pressure23 = getelementptr inbounds %struct.cytp_data, ptr %30, i32 0, i32 4, !dbg !6036
  store i32 %conv22, ptr %tp_max_pressure23, align 4, !dbg !6037
  br label %if.end24, !dbg !6038

if.end24:                                         ; preds = %if.then7, %if.end
  %31 = load ptr, ptr %cytp, align 8, !dbg !6039
  %tp_max_pressure25 = getelementptr inbounds %struct.cytp_data, ptr %31, i32 0, i32 4, !dbg !6041
  %32 = load i32, ptr %tp_max_pressure25, align 4, !dbg !6041
  %tobool26 = icmp ne i32 %32, 0, !dbg !6039
  br i1 %tobool26, label %lor.lhs.false, label %if.then53, !dbg !6042

lor.lhs.false:                                    ; preds = %if.end24
  %33 = load ptr, ptr %cytp, align 8, !dbg !6043
  %tp_max_pressure27 = getelementptr inbounds %struct.cytp_data, ptr %33, i32 0, i32 4, !dbg !6044
  %34 = load i32, ptr %tp_max_pressure27, align 4, !dbg !6044
  %35 = load ptr, ptr %cytp, align 8, !dbg !6045
  %tp_min_pressure28 = getelementptr inbounds %struct.cytp_data, ptr %35, i32 0, i32 3, !dbg !6046
  %36 = load i32, ptr %tp_min_pressure28, align 4, !dbg !6046
  %cmp29 = icmp slt i32 %34, %36, !dbg !6047
  br i1 %cmp29, label %if.then53, label %lor.lhs.false31, !dbg !6048

lor.lhs.false31:                                  ; preds = %lor.lhs.false
  %37 = load ptr, ptr %cytp, align 8, !dbg !6049
  %tp_width32 = getelementptr inbounds %struct.cytp_data, ptr %37, i32 0, i32 5, !dbg !6050
  %38 = load i32, ptr %tp_width32, align 4, !dbg !6050
  %tobool33 = icmp ne i32 %38, 0, !dbg !6049
  br i1 %tobool33, label %lor.lhs.false34, label %if.then53, !dbg !6051

lor.lhs.false34:                                  ; preds = %lor.lhs.false31
  %39 = load ptr, ptr %cytp, align 8, !dbg !6052
  %tp_high35 = getelementptr inbounds %struct.cytp_data, ptr %39, i32 0, i32 6, !dbg !6053
  %40 = load i32, ptr %tp_high35, align 4, !dbg !6053
  %tobool36 = icmp ne i32 %40, 0, !dbg !6052
  br i1 %tobool36, label %lor.lhs.false37, label %if.then53, !dbg !6054

lor.lhs.false37:                                  ; preds = %lor.lhs.false34
  %41 = load ptr, ptr %cytp, align 8, !dbg !6055
  %tp_max_abs_x38 = getelementptr inbounds %struct.cytp_data, ptr %41, i32 0, i32 7, !dbg !6056
  %42 = load i32, ptr %tp_max_abs_x38, align 4, !dbg !6056
  %tobool39 = icmp ne i32 %42, 0, !dbg !6055
  br i1 %tobool39, label %lor.lhs.false40, label %if.then53, !dbg !6057

lor.lhs.false40:                                  ; preds = %lor.lhs.false37
  %43 = load ptr, ptr %cytp, align 8, !dbg !6058
  %tp_max_abs_x41 = getelementptr inbounds %struct.cytp_data, ptr %43, i32 0, i32 7, !dbg !6059
  %44 = load i32, ptr %tp_max_abs_x41, align 4, !dbg !6059
  %45 = load ptr, ptr %cytp, align 8, !dbg !6060
  %tp_width42 = getelementptr inbounds %struct.cytp_data, ptr %45, i32 0, i32 5, !dbg !6061
  %46 = load i32, ptr %tp_width42, align 4, !dbg !6061
  %cmp43 = icmp slt i32 %44, %46, !dbg !6062
  br i1 %cmp43, label %if.then53, label %lor.lhs.false45, !dbg !6063

lor.lhs.false45:                                  ; preds = %lor.lhs.false40
  %47 = load ptr, ptr %cytp, align 8, !dbg !6064
  %tp_max_abs_y46 = getelementptr inbounds %struct.cytp_data, ptr %47, i32 0, i32 8, !dbg !6065
  %48 = load i32, ptr %tp_max_abs_y46, align 4, !dbg !6065
  %tobool47 = icmp ne i32 %48, 0, !dbg !6064
  br i1 %tobool47, label %lor.lhs.false48, label %if.then53, !dbg !6066

lor.lhs.false48:                                  ; preds = %lor.lhs.false45
  %49 = load ptr, ptr %cytp, align 8, !dbg !6067
  %tp_max_abs_y49 = getelementptr inbounds %struct.cytp_data, ptr %49, i32 0, i32 8, !dbg !6068
  %50 = load i32, ptr %tp_max_abs_y49, align 4, !dbg !6068
  %51 = load ptr, ptr %cytp, align 8, !dbg !6069
  %tp_high50 = getelementptr inbounds %struct.cytp_data, ptr %51, i32 0, i32 6, !dbg !6070
  %52 = load i32, ptr %tp_high50, align 4, !dbg !6070
  %cmp51 = icmp slt i32 %50, %52, !dbg !6071
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !6072

if.then53:                                        ; preds = %lor.lhs.false48, %lor.lhs.false45, %lor.lhs.false40, %lor.lhs.false37, %lor.lhs.false34, %lor.lhs.false31, %lor.lhs.false, %if.end24
  store i32 -22, ptr %retval, align 4, !dbg !6073
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6073

if.end54:                                         ; preds = %lor.lhs.false48
  %53 = load ptr, ptr %cytp, align 8, !dbg !6074
  %tp_max_abs_x55 = getelementptr inbounds %struct.cytp_data, ptr %53, i32 0, i32 7, !dbg !6075
  %54 = load i32, ptr %tp_max_abs_x55, align 4, !dbg !6075
  %55 = load ptr, ptr %cytp, align 8, !dbg !6076
  %tp_width56 = getelementptr inbounds %struct.cytp_data, ptr %55, i32 0, i32 5, !dbg !6077
  %56 = load i32, ptr %tp_width56, align 4, !dbg !6077
  %div57 = sdiv i32 %54, %56, !dbg !6078
  %57 = load ptr, ptr %cytp, align 8, !dbg !6079
  %tp_res_x58 = getelementptr inbounds %struct.cytp_data, ptr %57, i32 0, i32 9, !dbg !6080
  store i32 %div57, ptr %tp_res_x58, align 4, !dbg !6081
  %58 = load ptr, ptr %cytp, align 8, !dbg !6082
  %tp_max_abs_y59 = getelementptr inbounds %struct.cytp_data, ptr %58, i32 0, i32 8, !dbg !6083
  %59 = load i32, ptr %tp_max_abs_y59, align 4, !dbg !6083
  %60 = load ptr, ptr %cytp, align 8, !dbg !6084
  %tp_high60 = getelementptr inbounds %struct.cytp_data, ptr %60, i32 0, i32 6, !dbg !6085
  %61 = load i32, ptr %tp_high60, align 4, !dbg !6085
  %div61 = sdiv i32 %59, %61, !dbg !6086
  %62 = load ptr, ptr %cytp, align 8, !dbg !6087
  %tp_res_y62 = getelementptr inbounds %struct.cytp_data, ptr %62, i32 0, i32 10, !dbg !6088
  store i32 %div61, ptr %tp_res_y62, align 4, !dbg !6089
  store i32 0, ptr %retval, align 4, !dbg !6090
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6090

cleanup:                                          ; preds = %if.end54, %if.then53, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %param) #16, !dbg !6091
  call void @llvm.lifetime.end.p0(i64 8, ptr %cytp) #16, !dbg !6091
  %63 = load i32, ptr %retval, align 4, !dbg !6091
  ret i32 %63, !dbg !6091
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cypress_set_packet_size(ptr noundef %psmouse, i32 noundef %n) #0 align 16 !dbg !6092 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %cytp = alloca ptr, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !6094, metadata !DIExpression()), !dbg !6097
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6095, metadata !DIExpression()), !dbg !6098
  call void @llvm.lifetime.start.p0(i64 8, ptr %cytp) #16, !dbg !6099
  call void @llvm.dbg.declare(metadata ptr %cytp, metadata !6096, metadata !DIExpression()), !dbg !6100
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !6101
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !6102
  %1 = load ptr, ptr %private, align 8, !dbg !6102
  store ptr %1, ptr %cytp, align 8, !dbg !6100
  %2 = load i32, ptr %n.addr, align 4, !dbg !6103
  %3 = load ptr, ptr %cytp, align 8, !dbg !6104
  %pkt_size = getelementptr inbounds %struct.cytp_data, ptr %3, i32 0, i32 1, !dbg !6105
  store i32 %2, ptr %pkt_size, align 4, !dbg !6106
  call void @llvm.lifetime.end.p0(i64 8, ptr %cytp) #16, !dbg !6107
  ret void, !dbg !6107
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6108 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6115, metadata !DIExpression()), !dbg !6119
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6116, metadata !DIExpression()), !dbg !6120
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !6121
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6117, metadata !DIExpression()), !dbg !6122
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6123
  %rem = urem i64 %0, 64, !dbg !6123
  %shl = shl i64 1, %rem, !dbg !6123
  store i64 %shl, ptr %mask, align 8, !dbg !6122
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !6124
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6118, metadata !DIExpression()), !dbg !6125
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6126
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6127
  %div = udiv i64 %2, 64, !dbg !6127
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !6128
  store ptr %add.ptr, ptr %p, align 8, !dbg !6125
  %3 = load i64, ptr %mask, align 8, !dbg !6129
  %4 = load ptr, ptr %p, align 8, !dbg !6130
  %5 = load i64, ptr %4, align 8, !dbg !6131
  %or = or i64 %5, %3, !dbg !6131
  store i64 %or, ptr %4, align 8, !dbg !6131
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6132
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !6132
  ret void, !dbg !6132
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6133 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6136, metadata !DIExpression()), !dbg !6138
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6137, metadata !DIExpression()), !dbg !6139
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6140
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6141
  %div = udiv i64 %1, 64, !dbg !6141
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6142
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !6143
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6144
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6145
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !6146
  ret void, !dbg !6147
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6148 dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6151 dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_abs_set_res(ptr noundef %dev, i32 noundef %axis, i32 noundef %val) #10 align 16 !dbg !6154 {
entry:
  %dev.addr = alloca ptr, align 8
  %axis.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6158, metadata !DIExpression()), !dbg !6161
  store i32 %axis, ptr %axis.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %axis.addr, metadata !6159, metadata !DIExpression()), !dbg !6161
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6160, metadata !DIExpression()), !dbg !6161
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6161
  call void @input_alloc_absinfo(ptr noundef %0) #17, !dbg !6161
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6162
  %absinfo = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 26, !dbg !6162
  %2 = load ptr, ptr %absinfo, align 8, !dbg !6162
  %tobool = icmp ne ptr %2, null, !dbg !6162
  br i1 %tobool, label %if.then, label %if.end, !dbg !6161

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %val.addr, align 4, !dbg !6162
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6162
  %absinfo1 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 26, !dbg !6162
  %5 = load ptr, ptr %absinfo1, align 8, !dbg !6162
  %6 = load i32, ptr %axis.addr, align 4, !dbg !6162
  %idxprom = zext i32 %6 to i64, !dbg !6162
  %arrayidx = getelementptr %struct.input_absinfo, ptr %5, i64 %idxprom, !dbg !6162
  %resolution = getelementptr inbounds %struct.input_absinfo, ptr %arrayidx, i32 0, i32 5, !dbg !6162
  store i32 %3, ptr %resolution, align 4, !dbg !6162
  br label %if.end, !dbg !6162

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6161
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6164 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6166, metadata !DIExpression()), !dbg !6170
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6167, metadata !DIExpression()), !dbg !6171
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !6172
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6168, metadata !DIExpression()), !dbg !6173
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6174
  %rem = urem i64 %0, 64, !dbg !6174
  %shl = shl i64 1, %rem, !dbg !6174
  store i64 %shl, ptr %mask, align 8, !dbg !6173
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !6175
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6169, metadata !DIExpression()), !dbg !6176
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6177
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6178
  %div = udiv i64 %2, 64, !dbg !6178
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !6179
  store ptr %add.ptr, ptr %p, align 8, !dbg !6176
  %3 = load i64, ptr %mask, align 8, !dbg !6180
  %not = xor i64 %3, -1, !dbg !6181
  %4 = load ptr, ptr %p, align 8, !dbg !6182
  %5 = load i64, ptr %4, align 8, !dbg !6183
  %and = and i64 %5, %not, !dbg !6183
  store i64 %and, ptr %4, align 8, !dbg !6183
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6184
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !6184
  ret void, !dbg !6184
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6185 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6187, metadata !DIExpression()), !dbg !6189
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6188, metadata !DIExpression()), !dbg !6190
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6191
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6192
  %div = udiv i64 %1, 64, !dbg !6192
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6193
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !6194
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6195
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6196
  call void @arch___clear_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !6197
  ret void, !dbg !6198
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !6199 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6207, metadata !DIExpression()), !dbg !6209
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6208, metadata !DIExpression()), !dbg !6210
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6211
  %1 = load i64, ptr %size.addr, align 8, !dbg !6212
  %conv = trunc i64 %1 to i32, !dbg !6212
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6213
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6214
  %3 = load i64, ptr %size.addr, align 8, !dbg !6214
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #17, !dbg !6214
  ret void, !dbg !6215
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6216 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6219, metadata !DIExpression()), !dbg !6221
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6220, metadata !DIExpression()), !dbg !6222
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6223
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6224
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !6225, !srcloc !6226
  ret void, !dbg !6227
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #10 align 16 !dbg !6228 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6233, metadata !DIExpression()), !dbg !6235
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6234, metadata !DIExpression()), !dbg !6236
  ret i1 true, !dbg !6237
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #10 align 16 !dbg !6238 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6243, metadata !DIExpression()), !dbg !6246
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6244, metadata !DIExpression()), !dbg !6247
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6245, metadata !DIExpression()), !dbg !6248
  ret void, !dbg !6249
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6250 dso_local void @input_alloc_absinfo(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !6251 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6253, metadata !DIExpression()), !dbg !6255
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6254, metadata !DIExpression()), !dbg !6256
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6257
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6258
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !6259, !srcloc !6260
  ret void, !dbg !6261
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cypress_process_packet(ptr noundef %psmouse, i1 noundef zeroext %zero_pkt) #0 align 16 !dbg !6262 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %zero_pkt.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %input = alloca ptr, align 8
  %cytp = alloca ptr, align 8
  %report_data = alloca %struct.cytp_report_data, align 4
  %contact = alloca ptr, align 8
  %pos = alloca [2 x %struct.input_mt_pos], align 2
  %slots = alloca [2 x i32], align 4
  %n = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !6266, metadata !DIExpression()), !dbg !6296
  %frombool = zext i1 %zero_pkt to i8
  store i8 %frombool, ptr %zero_pkt.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %zero_pkt.addr, metadata !6267, metadata !DIExpression()), !dbg !6297
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !6298
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6268, metadata !DIExpression()), !dbg !6299
  call void @llvm.lifetime.start.p0(i64 8, ptr %input) #16, !dbg !6300
  call void @llvm.dbg.declare(metadata ptr %input, metadata !6269, metadata !DIExpression()), !dbg !6301
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !6302
  %dev = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1, !dbg !6303
  %1 = load ptr, ptr %dev, align 8, !dbg !6303
  store ptr %1, ptr %input, align 8, !dbg !6301
  call void @llvm.lifetime.start.p0(i64 8, ptr %cytp) #16, !dbg !6304
  call void @llvm.dbg.declare(metadata ptr %cytp, metadata !6270, metadata !DIExpression()), !dbg !6305
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !6306
  %private = getelementptr inbounds %struct.psmouse, ptr %2, i32 0, i32 0, !dbg !6307
  %3 = load ptr, ptr %private, align 8, !dbg !6307
  store ptr %3, ptr %cytp, align 8, !dbg !6305
  call void @llvm.lifetime.start.p0(i64 32, ptr %report_data) #16, !dbg !6308
  call void @llvm.dbg.declare(metadata ptr %report_data, metadata !6271, metadata !DIExpression()), !dbg !6309
  call void @llvm.lifetime.start.p0(i64 8, ptr %contact) #16, !dbg !6310
  call void @llvm.dbg.declare(metadata ptr %contact, metadata !6286, metadata !DIExpression()), !dbg !6311
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #16, !dbg !6312
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !6288, metadata !DIExpression()), !dbg !6313
  call void @llvm.lifetime.start.p0(i64 8, ptr %slots) #16, !dbg !6314
  call void @llvm.dbg.declare(metadata ptr %slots, metadata !6294, metadata !DIExpression()), !dbg !6315
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #16, !dbg !6316
  call void @llvm.dbg.declare(metadata ptr %n, metadata !6295, metadata !DIExpression()), !dbg !6317
  %4 = load ptr, ptr %psmouse.addr, align 8, !dbg !6318
  %5 = load ptr, ptr %cytp, align 8, !dbg !6319
  %call = call i32 @cypress_parse_packet(ptr noundef %4, ptr noundef %5, ptr noundef %report_data) #17, !dbg !6320
  %contact_cnt = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 0, !dbg !6321
  %6 = load i32, ptr %contact_cnt, align 4, !dbg !6321
  store i32 %6, ptr %n, align 4, !dbg !6322
  %7 = load i32, ptr %n, align 4, !dbg !6323
  %cmp = icmp sgt i32 %7, 2, !dbg !6325
  br i1 %cmp, label %if.then, label %if.end, !dbg !6326

if.then:                                          ; preds = %entry
  store i32 2, ptr %n, align 4, !dbg !6327
  br label %if.end, !dbg !6328

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4, !dbg !6329
  br label %for.cond, !dbg !6331

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, ptr %i, align 4, !dbg !6332
  %9 = load i32, ptr %n, align 4, !dbg !6334
  %cmp1 = icmp slt i32 %8, %9, !dbg !6335
  br i1 %cmp1, label %for.body, label %for.end, !dbg !6336

for.body:                                         ; preds = %for.cond
  %contacts = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, !dbg !6337
  %10 = load i32, ptr %i, align 4, !dbg !6339
  %idxprom = sext i32 %10 to i64, !dbg !6340
  %arrayidx = getelementptr [2 x %struct.cytp_contact], ptr %contacts, i64 0, i64 %idxprom, !dbg !6340
  store ptr %arrayidx, ptr %contact, align 8, !dbg !6341
  %11 = load ptr, ptr %contact, align 8, !dbg !6342
  %x = getelementptr inbounds %struct.cytp_contact, ptr %11, i32 0, i32 0, !dbg !6343
  %12 = load i32, ptr %x, align 4, !dbg !6343
  %conv = trunc i32 %12 to i16, !dbg !6342
  %13 = load i32, ptr %i, align 4, !dbg !6344
  %idxprom2 = sext i32 %13 to i64, !dbg !6345
  %arrayidx3 = getelementptr [2 x %struct.input_mt_pos], ptr %pos, i64 0, i64 %idxprom2, !dbg !6345
  %x4 = getelementptr inbounds %struct.input_mt_pos, ptr %arrayidx3, i32 0, i32 0, !dbg !6346
  store i16 %conv, ptr %x4, align 2, !dbg !6347
  %14 = load ptr, ptr %contact, align 8, !dbg !6348
  %y = getelementptr inbounds %struct.cytp_contact, ptr %14, i32 0, i32 1, !dbg !6349
  %15 = load i32, ptr %y, align 4, !dbg !6349
  %conv5 = trunc i32 %15 to i16, !dbg !6348
  %16 = load i32, ptr %i, align 4, !dbg !6350
  %idxprom6 = sext i32 %16 to i64, !dbg !6351
  %arrayidx7 = getelementptr [2 x %struct.input_mt_pos], ptr %pos, i64 0, i64 %idxprom6, !dbg !6351
  %y8 = getelementptr inbounds %struct.input_mt_pos, ptr %arrayidx7, i32 0, i32 1, !dbg !6352
  store i16 %conv5, ptr %y8, align 2, !dbg !6353
  br label %for.inc, !dbg !6354

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4, !dbg !6355
  %inc = add i32 %17, 1, !dbg !6355
  store i32 %inc, ptr %i, align 4, !dbg !6355
  br label %for.cond, !dbg !6356, !llvm.loop !6357

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %input, align 8, !dbg !6359
  %arraydecay = getelementptr inbounds [2 x i32], ptr %slots, i64 0, i64 0, !dbg !6360
  %arraydecay9 = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %pos, i64 0, i64 0, !dbg !6361
  %19 = load i32, ptr %n, align 4, !dbg !6362
  %call10 = call i32 @input_mt_assign_slots(ptr noundef %18, ptr noundef %arraydecay, ptr noundef %arraydecay9, i32 noundef %19, i32 noundef 0) #17, !dbg !6363
  store i32 0, ptr %i, align 4, !dbg !6364
  br label %for.cond11, !dbg !6366

for.cond11:                                       ; preds = %for.inc23, %for.end
  %20 = load i32, ptr %i, align 4, !dbg !6367
  %21 = load i32, ptr %n, align 4, !dbg !6369
  %cmp12 = icmp slt i32 %20, %21, !dbg !6370
  br i1 %cmp12, label %for.body14, label %for.end25, !dbg !6371

for.body14:                                       ; preds = %for.cond11
  %contacts15 = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 1, !dbg !6372
  %22 = load i32, ptr %i, align 4, !dbg !6374
  %idxprom16 = sext i32 %22 to i64, !dbg !6375
  %arrayidx17 = getelementptr [2 x %struct.cytp_contact], ptr %contacts15, i64 0, i64 %idxprom16, !dbg !6375
  store ptr %arrayidx17, ptr %contact, align 8, !dbg !6376
  %23 = load ptr, ptr %input, align 8, !dbg !6377
  %24 = load i32, ptr %i, align 4, !dbg !6378
  %idxprom18 = sext i32 %24 to i64, !dbg !6379
  %arrayidx19 = getelementptr [2 x i32], ptr %slots, i64 0, i64 %idxprom18, !dbg !6379
  %25 = load i32, ptr %arrayidx19, align 4, !dbg !6379
  call void @input_mt_slot(ptr noundef %23, i32 noundef %25) #17, !dbg !6380
  %26 = load ptr, ptr %input, align 8, !dbg !6381
  %call20 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %26, i32 noundef 0, i1 noundef zeroext true) #17, !dbg !6382
  %27 = load ptr, ptr %input, align 8, !dbg !6383
  %28 = load ptr, ptr %contact, align 8, !dbg !6384
  %x21 = getelementptr inbounds %struct.cytp_contact, ptr %28, i32 0, i32 0, !dbg !6385
  %29 = load i32, ptr %x21, align 4, !dbg !6385
  call void @input_report_abs(ptr noundef %27, i32 noundef 53, i32 noundef %29) #17, !dbg !6386
  %30 = load ptr, ptr %input, align 8, !dbg !6387
  %31 = load ptr, ptr %contact, align 8, !dbg !6388
  %y22 = getelementptr inbounds %struct.cytp_contact, ptr %31, i32 0, i32 1, !dbg !6389
  %32 = load i32, ptr %y22, align 4, !dbg !6389
  call void @input_report_abs(ptr noundef %30, i32 noundef 54, i32 noundef %32) #17, !dbg !6390
  %33 = load ptr, ptr %input, align 8, !dbg !6391
  %34 = load ptr, ptr %contact, align 8, !dbg !6392
  %z = getelementptr inbounds %struct.cytp_contact, ptr %34, i32 0, i32 2, !dbg !6393
  %35 = load i32, ptr %z, align 4, !dbg !6393
  call void @input_report_abs(ptr noundef %33, i32 noundef 58, i32 noundef %35) #17, !dbg !6394
  br label %for.inc23, !dbg !6395

for.inc23:                                        ; preds = %for.body14
  %36 = load i32, ptr %i, align 4, !dbg !6396
  %inc24 = add i32 %36, 1, !dbg !6396
  store i32 %inc24, ptr %i, align 4, !dbg !6396
  br label %for.cond11, !dbg !6397, !llvm.loop !6398

for.end25:                                        ; preds = %for.cond11
  %37 = load ptr, ptr %input, align 8, !dbg !6400
  call void @input_mt_sync_frame(ptr noundef %37) #17, !dbg !6401
  %38 = load ptr, ptr %input, align 8, !dbg !6402
  %contact_cnt26 = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 0, !dbg !6403
  %39 = load i32, ptr %contact_cnt26, align 4, !dbg !6403
  call void @input_mt_report_finger_count(ptr noundef %38, i32 noundef %39) #17, !dbg !6404
  %40 = load ptr, ptr %input, align 8, !dbg !6405
  %left = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 2, !dbg !6406
  %bf.load = load i8, ptr %left, align 4, !dbg !6406
  %bf.clear = and i8 %bf.load, 1, !dbg !6406
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6406
  call void @input_report_key(ptr noundef %40, i32 noundef 272, i32 noundef %bf.cast) #17, !dbg !6407
  %41 = load ptr, ptr %input, align 8, !dbg !6408
  %right = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 2, !dbg !6409
  %bf.load27 = load i8, ptr %right, align 4, !dbg !6409
  %bf.lshr = lshr i8 %bf.load27, 1, !dbg !6409
  %bf.clear28 = and i8 %bf.lshr, 1, !dbg !6409
  %bf.cast29 = zext i8 %bf.clear28 to i32, !dbg !6409
  call void @input_report_key(ptr noundef %41, i32 noundef 273, i32 noundef %bf.cast29) #17, !dbg !6410
  %42 = load ptr, ptr %input, align 8, !dbg !6411
  %middle = getelementptr inbounds %struct.cytp_report_data, ptr %report_data, i32 0, i32 2, !dbg !6412
  %bf.load30 = load i8, ptr %middle, align 4, !dbg !6412
  %bf.lshr31 = lshr i8 %bf.load30, 2, !dbg !6412
  %bf.clear32 = and i8 %bf.lshr31, 1, !dbg !6412
  %bf.cast33 = zext i8 %bf.clear32 to i32, !dbg !6412
  call void @input_report_key(ptr noundef %42, i32 noundef 274, i32 noundef %bf.cast33) #17, !dbg !6413
  %43 = load ptr, ptr %input, align 8, !dbg !6414
  call void @input_sync(ptr noundef %43) #17, !dbg !6415
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #16, !dbg !6416
  call void @llvm.lifetime.end.p0(i64 8, ptr %slots) #16, !dbg !6416
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #16, !dbg !6416
  call void @llvm.lifetime.end.p0(i64 8, ptr %contact) #16, !dbg !6416
  call void @llvm.lifetime.end.p0(i64 32, ptr %report_data) #16, !dbg !6416
  call void @llvm.lifetime.end.p0(i64 8, ptr %cytp) #16, !dbg !6416
  call void @llvm.lifetime.end.p0(i64 8, ptr %input) #16, !dbg !6416
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6416
  ret void, !dbg !6416
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cypress_validate_byte(ptr noundef %psmouse) #0 align 16 !dbg !6417 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %contact_cnt = alloca i32, align 4
  %index = alloca i32, align 4
  %packet = alloca ptr, align 8
  %cytp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !6419, metadata !DIExpression()), !dbg !6424
  call void @llvm.lifetime.start.p0(i64 4, ptr %contact_cnt) #16, !dbg !6425
  call void @llvm.dbg.declare(metadata ptr %contact_cnt, metadata !6420, metadata !DIExpression()), !dbg !6426
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6427
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6421, metadata !DIExpression()), !dbg !6428
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !6429
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9, !dbg !6430
  %1 = load i8, ptr %pktcnt, align 1, !dbg !6430
  %conv = zext i8 %1 to i32, !dbg !6429
  %sub = sub i32 %conv, 1, !dbg !6431
  store i32 %sub, ptr %index, align 4, !dbg !6428
  call void @llvm.lifetime.start.p0(i64 8, ptr %packet) #16, !dbg !6432
  call void @llvm.dbg.declare(metadata ptr %packet, metadata !6422, metadata !DIExpression()), !dbg !6433
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !6434
  %packet1 = getelementptr inbounds %struct.psmouse, ptr %2, i32 0, i32 7, !dbg !6435
  %arraydecay = getelementptr inbounds [8 x i8], ptr %packet1, i64 0, i64 0, !dbg !6434
  store ptr %arraydecay, ptr %packet, align 8, !dbg !6433
  call void @llvm.lifetime.start.p0(i64 8, ptr %cytp) #16, !dbg !6436
  call void @llvm.dbg.declare(metadata ptr %cytp, metadata !6423, metadata !DIExpression()), !dbg !6437
  %3 = load ptr, ptr %psmouse.addr, align 8, !dbg !6438
  %private = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 0, !dbg !6439
  %4 = load ptr, ptr %private, align 8, !dbg !6439
  store ptr %4, ptr %cytp, align 8, !dbg !6437
  %5 = load i32, ptr %index, align 4, !dbg !6440
  %cmp = icmp slt i32 %5, 0, !dbg !6442
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6443

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, ptr %index, align 4, !dbg !6444
  %7 = load ptr, ptr %cytp, align 8, !dbg !6445
  %pkt_size = getelementptr inbounds %struct.cytp_data, ptr %7, i32 0, i32 1, !dbg !6446
  %8 = load i32, ptr %pkt_size, align 4, !dbg !6446
  %cmp3 = icmp sgt i32 %6, %8, !dbg !6447
  br i1 %cmp3, label %if.then, label %if.end, !dbg !6448

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !6449
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6449

if.end:                                           ; preds = %lor.lhs.false
  %9 = load i32, ptr %index, align 4, !dbg !6450
  %cmp5 = icmp eq i32 %9, 0, !dbg !6452
  br i1 %cmp5, label %land.lhs.true, label %if.end11, !dbg !6453

land.lhs.true:                                    ; preds = %if.end
  %10 = load ptr, ptr %packet, align 8, !dbg !6454
  %arrayidx = getelementptr i8, ptr %10, i64 0, !dbg !6454
  %11 = load i8, ptr %arrayidx, align 1, !dbg !6454
  %conv7 = zext i8 %11 to i32, !dbg !6454
  %and = and i32 %conv7, 252, !dbg !6455
  %cmp8 = icmp eq i32 %and, 0, !dbg !6456
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !6457

if.then10:                                        ; preds = %land.lhs.true
  %12 = load ptr, ptr %psmouse.addr, align 8, !dbg !6458
  call void @cypress_process_packet(ptr noundef %12, i1 noundef zeroext true) #17, !dbg !6460
  store i32 2, ptr %retval, align 4, !dbg !6461
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6461

if.end11:                                         ; preds = %land.lhs.true, %if.end
  %13 = load i32, ptr %index, align 4, !dbg !6462
  %cmp12 = icmp ne i32 %13, 0, !dbg !6464
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !6465

if.then14:                                        ; preds = %if.end11
  store i32 1, ptr %retval, align 4, !dbg !6466
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6466

if.end15:                                         ; preds = %if.end11
  %14 = load ptr, ptr %cytp, align 8, !dbg !6467
  %mode = getelementptr inbounds %struct.cytp_data, ptr %14, i32 0, i32 2, !dbg !6469
  %15 = load i32, ptr %mode, align 4, !dbg !6469
  %and16 = and i32 %15, 15, !dbg !6470
  %cmp17 = icmp eq i32 %and16, 0, !dbg !6471
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !6472

if.then19:                                        ; preds = %if.end15
  store i32 1, ptr %retval, align 4, !dbg !6473
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6473

if.end20:                                         ; preds = %if.end15
  %16 = load ptr, ptr %packet, align 8, !dbg !6474
  %arrayidx21 = getelementptr i8, ptr %16, i64 0, !dbg !6474
  %17 = load i8, ptr %arrayidx21, align 1, !dbg !6474
  %conv22 = zext i8 %17 to i32, !dbg !6474
  %and23 = and i32 %conv22, 8, !dbg !6476
  %cmp24 = icmp eq i32 %and23, 8, !dbg !6477
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !6478

if.then26:                                        ; preds = %if.end20
  store i32 0, ptr %retval, align 4, !dbg !6479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6479

if.end27:                                         ; preds = %if.end20
  %18 = load ptr, ptr %packet, align 8, !dbg !6480
  %arrayidx28 = getelementptr i8, ptr %18, i64 0, !dbg !6480
  %19 = load i8, ptr %arrayidx28, align 1, !dbg !6480
  %call = call i32 @cypress_get_finger_count(i8 noundef zeroext %19) #17, !dbg !6481
  store i32 %call, ptr %contact_cnt, align 4, !dbg !6482
  %20 = load ptr, ptr %cytp, align 8, !dbg !6483
  %mode29 = getelementptr inbounds %struct.cytp_data, ptr %20, i32 0, i32 2, !dbg !6485
  %21 = load i32, ptr %mode29, align 4, !dbg !6485
  %and30 = and i32 %21, 4, !dbg !6486
  %tobool = icmp ne i32 %and30, 0, !dbg !6486
  br i1 %tobool, label %if.then31, label %if.else, !dbg !6487

if.then31:                                        ; preds = %if.end27
  %22 = load ptr, ptr %psmouse.addr, align 8, !dbg !6488
  %23 = load i32, ptr %contact_cnt, align 4, !dbg !6489
  %cmp32 = icmp eq i32 %23, 2, !dbg !6490
  %24 = zext i1 %cmp32 to i64, !dbg !6489
  %cond = select i1 %cmp32, i32 7, i32 4, !dbg !6489
  call void @cypress_set_packet_size(ptr noundef %22, i32 noundef %cond) #17, !dbg !6491
  br label %if.end37, !dbg !6491

if.else:                                          ; preds = %if.end27
  %25 = load ptr, ptr %psmouse.addr, align 8, !dbg !6492
  %26 = load i32, ptr %contact_cnt, align 4, !dbg !6493
  %cmp34 = icmp eq i32 %26, 2, !dbg !6494
  %27 = zext i1 %cmp34 to i64, !dbg !6493
  %cond36 = select i1 %cmp34, i32 8, i32 5, !dbg !6493
  call void @cypress_set_packet_size(ptr noundef %25, i32 noundef %cond36) #17, !dbg !6495
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then31
  store i32 1, ptr %retval, align 4, !dbg !6496
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6496

cleanup:                                          ; preds = %if.end37, %if.then26, %if.then19, %if.then14, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cytp) #16, !dbg !6497
  call void @llvm.lifetime.end.p0(i64 8, ptr %packet) #16, !dbg !6497
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6497
  call void @llvm.lifetime.end.p0(i64 4, ptr %contact_cnt) #16, !dbg !6497
  %28 = load i32, ptr %retval, align 4, !dbg !6497
  ret i32 %28, !dbg !6497
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cypress_parse_packet(ptr noundef %psmouse, ptr noundef %cytp, ptr noundef %report_data) #0 align 16 !dbg !6498 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %cytp.addr = alloca ptr, align 8
  %report_data.addr = alloca ptr, align 8
  %packet = alloca ptr, align 8
  %header_byte = alloca i8, align 1
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !6503, metadata !DIExpression()), !dbg !6508
  store ptr %cytp, ptr %cytp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cytp.addr, metadata !6504, metadata !DIExpression()), !dbg !6509
  store ptr %report_data, ptr %report_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %report_data.addr, metadata !6505, metadata !DIExpression()), !dbg !6510
  call void @llvm.lifetime.start.p0(i64 8, ptr %packet) #16, !dbg !6511
  call void @llvm.dbg.declare(metadata ptr %packet, metadata !6506, metadata !DIExpression()), !dbg !6512
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !6513
  %packet1 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7, !dbg !6514
  %arraydecay = getelementptr inbounds [8 x i8], ptr %packet1, i64 0, i64 0, !dbg !6513
  store ptr %arraydecay, ptr %packet, align 8, !dbg !6512
  call void @llvm.lifetime.start.p0(i64 1, ptr %header_byte) #16, !dbg !6515
  call void @llvm.dbg.declare(metadata ptr %header_byte, metadata !6507, metadata !DIExpression()), !dbg !6516
  %1 = load ptr, ptr %packet, align 8, !dbg !6517
  %arrayidx = getelementptr i8, ptr %1, i64 0, !dbg !6517
  %2 = load i8, ptr %arrayidx, align 1, !dbg !6517
  store i8 %2, ptr %header_byte, align 1, !dbg !6516
  %3 = load ptr, ptr %report_data.addr, align 8, !dbg !6518
  call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 32, i1 false), !dbg !6519
  %4 = load i8, ptr %header_byte, align 1, !dbg !6520
  %call = call i32 @cypress_get_finger_count(i8 noundef zeroext %4) #17, !dbg !6521
  %5 = load ptr, ptr %report_data.addr, align 8, !dbg !6522
  %contact_cnt = getelementptr inbounds %struct.cytp_report_data, ptr %5, i32 0, i32 0, !dbg !6523
  store i32 %call, ptr %contact_cnt, align 4, !dbg !6524
  %6 = load i8, ptr %header_byte, align 1, !dbg !6525
  %conv = zext i8 %6 to i32, !dbg !6525
  %and = and i32 %conv, 4, !dbg !6526
  %tobool = icmp ne i32 %and, 0, !dbg !6527
  %7 = zext i1 %tobool to i64, !dbg !6527
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !6527
  %8 = load ptr, ptr %report_data.addr, align 8, !dbg !6528
  %tap = getelementptr inbounds %struct.cytp_report_data, ptr %8, i32 0, i32 2, !dbg !6529
  %9 = trunc i32 %cond to i8, !dbg !6530
  %bf.load = load i8, ptr %tap, align 4, !dbg !6530
  %bf.value = and i8 %9, 1, !dbg !6530
  %bf.shl = shl i8 %bf.value, 3, !dbg !6530
  %bf.clear = and i8 %bf.load, -9, !dbg !6530
  %bf.set = or i8 %bf.clear, %bf.shl, !dbg !6530
  store i8 %bf.set, ptr %tap, align 4, !dbg !6530
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !6530
  %10 = load ptr, ptr %report_data.addr, align 8, !dbg !6531
  %contact_cnt2 = getelementptr inbounds %struct.cytp_report_data, ptr %10, i32 0, i32 0, !dbg !6533
  %11 = load i32, ptr %contact_cnt2, align 4, !dbg !6533
  %cmp = icmp eq i32 %11, 1, !dbg !6534
  br i1 %cmp, label %if.then, label %if.else, !dbg !6535

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %packet, align 8, !dbg !6536
  %arrayidx4 = getelementptr i8, ptr %12, i64 1, !dbg !6536
  %13 = load i8, ptr %arrayidx4, align 1, !dbg !6536
  %conv5 = zext i8 %13 to i32, !dbg !6536
  %and6 = and i32 %conv5, 112, !dbg !6538
  %shl = shl i32 %and6, 4, !dbg !6539
  %14 = load ptr, ptr %packet, align 8, !dbg !6540
  %arrayidx7 = getelementptr i8, ptr %14, i64 2, !dbg !6540
  %15 = load i8, ptr %arrayidx7, align 1, !dbg !6540
  %conv8 = zext i8 %15 to i32, !dbg !6540
  %or = or i32 %shl, %conv8, !dbg !6541
  %16 = load ptr, ptr %report_data.addr, align 8, !dbg !6542
  %contacts = getelementptr inbounds %struct.cytp_report_data, ptr %16, i32 0, i32 1, !dbg !6543
  %arrayidx9 = getelementptr [2 x %struct.cytp_contact], ptr %contacts, i64 0, i64 0, !dbg !6542
  %x = getelementptr inbounds %struct.cytp_contact, ptr %arrayidx9, i32 0, i32 0, !dbg !6544
  store i32 %or, ptr %x, align 4, !dbg !6545
  %17 = load ptr, ptr %packet, align 8, !dbg !6546
  %arrayidx10 = getelementptr i8, ptr %17, i64 1, !dbg !6546
  %18 = load i8, ptr %arrayidx10, align 1, !dbg !6546
  %conv11 = zext i8 %18 to i32, !dbg !6546
  %and12 = and i32 %conv11, 7, !dbg !6547
  %shl13 = shl i32 %and12, 8, !dbg !6548
  %19 = load ptr, ptr %packet, align 8, !dbg !6549
  %arrayidx14 = getelementptr i8, ptr %19, i64 3, !dbg !6549
  %20 = load i8, ptr %arrayidx14, align 1, !dbg !6549
  %conv15 = zext i8 %20 to i32, !dbg !6549
  %or16 = or i32 %shl13, %conv15, !dbg !6550
  %21 = load ptr, ptr %report_data.addr, align 8, !dbg !6551
  %contacts17 = getelementptr inbounds %struct.cytp_report_data, ptr %21, i32 0, i32 1, !dbg !6552
  %arrayidx18 = getelementptr [2 x %struct.cytp_contact], ptr %contacts17, i64 0, i64 0, !dbg !6551
  %y = getelementptr inbounds %struct.cytp_contact, ptr %arrayidx18, i32 0, i32 1, !dbg !6553
  store i32 %or16, ptr %y, align 4, !dbg !6554
  %22 = load ptr, ptr %cytp.addr, align 8, !dbg !6555
  %mode = getelementptr inbounds %struct.cytp_data, ptr %22, i32 0, i32 2, !dbg !6557
  %23 = load i32, ptr %mode, align 4, !dbg !6557
  %and19 = and i32 %23, 8, !dbg !6558
  %tobool20 = icmp ne i32 %and19, 0, !dbg !6558
  br i1 %tobool20, label %if.then21, label %if.end, !dbg !6559

if.then21:                                        ; preds = %if.then
  %24 = load ptr, ptr %packet, align 8, !dbg !6560
  %arrayidx22 = getelementptr i8, ptr %24, i64 4, !dbg !6560
  %25 = load i8, ptr %arrayidx22, align 1, !dbg !6560
  %conv23 = zext i8 %25 to i32, !dbg !6560
  %26 = load ptr, ptr %report_data.addr, align 8, !dbg !6561
  %contacts24 = getelementptr inbounds %struct.cytp_report_data, ptr %26, i32 0, i32 1, !dbg !6562
  %arrayidx25 = getelementptr [2 x %struct.cytp_contact], ptr %contacts24, i64 0, i64 0, !dbg !6561
  %z = getelementptr inbounds %struct.cytp_contact, ptr %arrayidx25, i32 0, i32 2, !dbg !6563
  store i32 %conv23, ptr %z, align 4, !dbg !6564
  br label %if.end, !dbg !6561

if.end:                                           ; preds = %if.then21, %if.then
  br label %if.end92, !dbg !6565

if.else:                                          ; preds = %entry
  %27 = load ptr, ptr %report_data.addr, align 8, !dbg !6566
  %contact_cnt26 = getelementptr inbounds %struct.cytp_report_data, ptr %27, i32 0, i32 0, !dbg !6568
  %28 = load i32, ptr %contact_cnt26, align 4, !dbg !6568
  %cmp27 = icmp sge i32 %28, 2, !dbg !6569
  br i1 %cmp27, label %if.then29, label %if.end91, !dbg !6570

if.then29:                                        ; preds = %if.else
  %29 = load ptr, ptr %packet, align 8, !dbg !6571
  %arrayidx30 = getelementptr i8, ptr %29, i64 1, !dbg !6571
  %30 = load i8, ptr %arrayidx30, align 1, !dbg !6571
  %conv31 = zext i8 %30 to i32, !dbg !6571
  %and32 = and i32 %conv31, 112, !dbg !6573
  %shl33 = shl i32 %and32, 4, !dbg !6574
  %31 = load ptr, ptr %packet, align 8, !dbg !6575
  %arrayidx34 = getelementptr i8, ptr %31, i64 2, !dbg !6575
  %32 = load i8, ptr %arrayidx34, align 1, !dbg !6575
  %conv35 = zext i8 %32 to i32, !dbg !6575
  %or36 = or i32 %shl33, %conv35, !dbg !6576
  %33 = load ptr, ptr %report_data.addr, align 8, !dbg !6577
  %contacts37 = getelementptr inbounds %struct.cytp_report_data, ptr %33, i32 0, i32 1, !dbg !6578
  %arrayidx38 = getelementptr [2 x %struct.cytp_contact], ptr %contacts37, i64 0, i64 0, !dbg !6577
  %x39 = getelementptr inbounds %struct.cytp_contact, ptr %arrayidx38, i32 0, i32 0, !dbg !6579
  store i32 %or36, ptr %x39, align 4, !dbg !6580
  %34 = load ptr, ptr %packet, align 8, !dbg !6581
  %arrayidx40 = getelementptr i8, ptr %34, i64 1, !dbg !6581
  %35 = load i8, ptr %arrayidx40, align 1, !dbg !6581
  %conv41 = zext i8 %35 to i32, !dbg !6581
  %and42 = and i32 %conv41, 7, !dbg !6582
  %shl43 = shl i32 %and42, 8, !dbg !6583
  %36 = load ptr, ptr %packet, align 8, !dbg !6584
  %arrayidx44 = getelementptr i8, ptr %36, i64 3, !dbg !6584
  %37 = load i8, ptr %arrayidx44, align 1, !dbg !6584
  %conv45 = zext i8 %37 to i32, !dbg !6584
  %or46 = or i32 %shl43, %conv45, !dbg !6585
  %38 = load ptr, ptr %report_data.addr, align 8, !dbg !6586
  %contacts47 = getelementptr inbounds %struct.cytp_report_data, ptr %38, i32 0, i32 1, !dbg !6587
  %arrayidx48 = getelementptr [2 x %struct.cytp_contact], ptr %contacts47, i64 0, i64 0, !dbg !6586
  %y49 = getelementptr inbounds %struct.cytp_contact, ptr %arrayidx48, i32 0, i32 1, !dbg !6588
  store i32 %or46, ptr %y49, align 4, !dbg !6589
  %39 = load ptr, ptr %cytp.addr, align 8, !dbg !6590
  %mode50 = getelementptr inbounds %struct.cytp_data, ptr %39, i32 0, i32 2, !dbg !6592
  %40 = load i32, ptr %mode50, align 4, !dbg !6592
  %and51 = and i32 %40, 8, !dbg !6593
  %tobool52 = icmp ne i32 %and51, 0, !dbg !6593
  br i1 %tobool52, label %if.then53, label %if.end59, !dbg !6594

if.then53:                                        ; preds = %if.then29
  %41 = load ptr, ptr %packet, align 8, !dbg !6595
  %arrayidx54 = getelementptr i8, ptr %41, i64 4, !dbg !6595
  %42 = load i8, ptr %arrayidx54, align 1, !dbg !6595
  %conv55 = zext i8 %42 to i32, !dbg !6595
  %43 = load ptr, ptr %report_data.addr, align 8, !dbg !6596
  %contacts56 = getelementptr inbounds %struct.cytp_report_data, ptr %43, i32 0, i32 1, !dbg !6597
  %arrayidx57 = getelementptr [2 x %struct.cytp_contact], ptr %contacts56, i64 0, i64 0, !dbg !6596
  %z58 = getelementptr inbounds %struct.cytp_contact, ptr %arrayidx57, i32 0, i32 2, !dbg !6598
  store i32 %conv55, ptr %z58, align 4, !dbg !6599
  br label %if.end59, !dbg !6596

if.end59:                                         ; preds = %if.then53, %if.then29
  %44 = load ptr, ptr %packet, align 8, !dbg !6600
  %arrayidx60 = getelementptr i8, ptr %44, i64 5, !dbg !6600
  %45 = load i8, ptr %arrayidx60, align 1, !dbg !6600
  %conv61 = zext i8 %45 to i32, !dbg !6600
  %and62 = and i32 %conv61, 240, !dbg !6601
  %shl63 = shl i32 %and62, 4, !dbg !6602
  %46 = load ptr, ptr %packet, align 8, !dbg !6603
  %arrayidx64 = getelementptr i8, ptr %46, i64 6, !dbg !6603
  %47 = load i8, ptr %arrayidx64, align 1, !dbg !6603
  %conv65 = zext i8 %47 to i32, !dbg !6603
  %or66 = or i32 %shl63, %conv65, !dbg !6604
  %48 = load ptr, ptr %report_data.addr, align 8, !dbg !6605
  %contacts67 = getelementptr inbounds %struct.cytp_report_data, ptr %48, i32 0, i32 1, !dbg !6606
  %arrayidx68 = getelementptr [2 x %struct.cytp_contact], ptr %contacts67, i64 0, i64 1, !dbg !6605
  %x69 = getelementptr inbounds %struct.cytp_contact, ptr %arrayidx68, i32 0, i32 0, !dbg !6607
  store i32 %or66, ptr %x69, align 4, !dbg !6608
  %49 = load ptr, ptr %packet, align 8, !dbg !6609
  %arrayidx70 = getelementptr i8, ptr %49, i64 5, !dbg !6609
  %50 = load i8, ptr %arrayidx70, align 1, !dbg !6609
  %conv71 = zext i8 %50 to i32, !dbg !6609
  %and72 = and i32 %conv71, 15, !dbg !6610
  %shl73 = shl i32 %and72, 8, !dbg !6611
  %51 = load ptr, ptr %packet, align 8, !dbg !6612
  %arrayidx74 = getelementptr i8, ptr %51, i64 7, !dbg !6612
  %52 = load i8, ptr %arrayidx74, align 1, !dbg !6612
  %conv75 = zext i8 %52 to i32, !dbg !6612
  %or76 = or i32 %shl73, %conv75, !dbg !6613
  %53 = load ptr, ptr %report_data.addr, align 8, !dbg !6614
  %contacts77 = getelementptr inbounds %struct.cytp_report_data, ptr %53, i32 0, i32 1, !dbg !6615
  %arrayidx78 = getelementptr [2 x %struct.cytp_contact], ptr %contacts77, i64 0, i64 1, !dbg !6614
  %y79 = getelementptr inbounds %struct.cytp_contact, ptr %arrayidx78, i32 0, i32 1, !dbg !6616
  store i32 %or76, ptr %y79, align 4, !dbg !6617
  %54 = load ptr, ptr %cytp.addr, align 8, !dbg !6618
  %mode80 = getelementptr inbounds %struct.cytp_data, ptr %54, i32 0, i32 2, !dbg !6620
  %55 = load i32, ptr %mode80, align 4, !dbg !6620
  %and81 = and i32 %55, 8, !dbg !6621
  %tobool82 = icmp ne i32 %and81, 0, !dbg !6621
  br i1 %tobool82, label %if.then83, label %if.end90, !dbg !6622

if.then83:                                        ; preds = %if.end59
  %56 = load ptr, ptr %report_data.addr, align 8, !dbg !6623
  %contacts84 = getelementptr inbounds %struct.cytp_report_data, ptr %56, i32 0, i32 1, !dbg !6624
  %arrayidx85 = getelementptr [2 x %struct.cytp_contact], ptr %contacts84, i64 0, i64 0, !dbg !6623
  %z86 = getelementptr inbounds %struct.cytp_contact, ptr %arrayidx85, i32 0, i32 2, !dbg !6625
  %57 = load i32, ptr %z86, align 4, !dbg !6625
  %58 = load ptr, ptr %report_data.addr, align 8, !dbg !6626
  %contacts87 = getelementptr inbounds %struct.cytp_report_data, ptr %58, i32 0, i32 1, !dbg !6627
  %arrayidx88 = getelementptr [2 x %struct.cytp_contact], ptr %contacts87, i64 0, i64 1, !dbg !6626
  %z89 = getelementptr inbounds %struct.cytp_contact, ptr %arrayidx88, i32 0, i32 2, !dbg !6628
  store i32 %57, ptr %z89, align 4, !dbg !6629
  br label %if.end90, !dbg !6626

if.end90:                                         ; preds = %if.then83, %if.end59
  br label %if.end91, !dbg !6630

if.end91:                                         ; preds = %if.end90, %if.else
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.end
  %59 = load i8, ptr %header_byte, align 1, !dbg !6631
  %conv93 = zext i8 %59 to i32, !dbg !6631
  %and94 = and i32 %conv93, 1, !dbg !6632
  %tobool95 = icmp ne i32 %and94, 0, !dbg !6633
  %60 = zext i1 %tobool95 to i64, !dbg !6633
  %cond96 = select i1 %tobool95, i32 1, i32 0, !dbg !6633
  %61 = load ptr, ptr %report_data.addr, align 8, !dbg !6634
  %left = getelementptr inbounds %struct.cytp_report_data, ptr %61, i32 0, i32 2, !dbg !6635
  %62 = trunc i32 %cond96 to i8, !dbg !6636
  %bf.load97 = load i8, ptr %left, align 4, !dbg !6636
  %bf.value98 = and i8 %62, 1, !dbg !6636
  %bf.clear99 = and i8 %bf.load97, -2, !dbg !6636
  %bf.set100 = or i8 %bf.clear99, %bf.value98, !dbg !6636
  store i8 %bf.set100, ptr %left, align 4, !dbg !6636
  %bf.result.cast101 = zext i8 %bf.value98 to i32, !dbg !6636
  %63 = load i8, ptr %header_byte, align 1, !dbg !6637
  %conv102 = zext i8 %63 to i32, !dbg !6637
  %and103 = and i32 %conv102, 2, !dbg !6638
  %tobool104 = icmp ne i32 %and103, 0, !dbg !6639
  %64 = zext i1 %tobool104 to i64, !dbg !6639
  %cond105 = select i1 %tobool104, i32 1, i32 0, !dbg !6639
  %65 = load ptr, ptr %report_data.addr, align 8, !dbg !6640
  %right = getelementptr inbounds %struct.cytp_report_data, ptr %65, i32 0, i32 2, !dbg !6641
  %66 = trunc i32 %cond105 to i8, !dbg !6642
  %bf.load106 = load i8, ptr %right, align 4, !dbg !6642
  %bf.value107 = and i8 %66, 1, !dbg !6642
  %bf.shl108 = shl i8 %bf.value107, 1, !dbg !6642
  %bf.clear109 = and i8 %bf.load106, -3, !dbg !6642
  %bf.set110 = or i8 %bf.clear109, %bf.shl108, !dbg !6642
  store i8 %bf.set110, ptr %right, align 4, !dbg !6642
  %bf.result.cast111 = zext i8 %bf.value107 to i32, !dbg !6642
  %67 = load ptr, ptr %report_data.addr, align 8, !dbg !6643
  %tap112 = getelementptr inbounds %struct.cytp_report_data, ptr %67, i32 0, i32 2, !dbg !6645
  %bf.load113 = load i8, ptr %tap112, align 4, !dbg !6645
  %bf.lshr = lshr i8 %bf.load113, 3, !dbg !6645
  %bf.clear114 = and i8 %bf.lshr, 1, !dbg !6645
  %bf.cast = zext i8 %bf.clear114 to i32, !dbg !6645
  %tobool115 = icmp ne i32 %bf.cast, 0, !dbg !6643
  br i1 %tobool115, label %if.then116, label %if.end121, !dbg !6646

if.then116:                                       ; preds = %if.end92
  %68 = load ptr, ptr %report_data.addr, align 8, !dbg !6647
  %left117 = getelementptr inbounds %struct.cytp_report_data, ptr %68, i32 0, i32 2, !dbg !6648
  %bf.load118 = load i8, ptr %left117, align 4, !dbg !6649
  %bf.clear119 = and i8 %bf.load118, -2, !dbg !6649
  %bf.set120 = or i8 %bf.clear119, 0, !dbg !6649
  store i8 %bf.set120, ptr %left117, align 4, !dbg !6649
  br label %if.end121, !dbg !6647

if.end121:                                        ; preds = %if.then116, %if.end92
  call void @llvm.lifetime.end.p0(i64 1, ptr %header_byte) #16, !dbg !6650
  call void @llvm.lifetime.end.p0(i64 8, ptr %packet) #16, !dbg !6650
  ret i32 0, !dbg !6651
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6652 dso_local i32 @input_mt_assign_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_mt_slot(ptr noundef %dev, i32 noundef %slot) #10 align 16 !dbg !6657 {
entry:
  %dev.addr = alloca ptr, align 8
  %slot.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6661, metadata !DIExpression()), !dbg !6663
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !6662, metadata !DIExpression()), !dbg !6664
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6665
  %1 = load i32, ptr %slot.addr, align 4, !dbg !6666
  call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 47, i32 noundef %1) #17, !dbg !6667
  ret void, !dbg !6668
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6669 dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_report_abs(ptr noundef %dev, i32 noundef %code, i32 noundef %value) #10 align 16 !dbg !6672 {
entry:
  %dev.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6674, metadata !DIExpression()), !dbg !6677
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !6675, metadata !DIExpression()), !dbg !6678
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6676, metadata !DIExpression()), !dbg !6679
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6680
  %1 = load i32, ptr %code.addr, align 4, !dbg !6681
  %2 = load i32, ptr %value.addr, align 4, !dbg !6682
  call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef %1, i32 noundef %2) #17, !dbg !6683
  ret void, !dbg !6684
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6685 dso_local void @input_mt_sync_frame(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6686 dso_local void @input_mt_report_finger_count(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_report_key(ptr noundef %dev, i32 noundef %code, i32 noundef %value) #10 align 16 !dbg !6687 {
entry:
  %dev.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6689, metadata !DIExpression()), !dbg !6692
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !6690, metadata !DIExpression()), !dbg !6693
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6691, metadata !DIExpression()), !dbg !6694
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6695
  %1 = load i32, ptr %code.addr, align 4, !dbg !6696
  %2 = load i32, ptr %value.addr, align 4, !dbg !6697
  %tobool = icmp ne i32 %2, 0, !dbg !6698
  %lnot = xor i1 %tobool, true, !dbg !6698
  %lnot1 = xor i1 %lnot, true, !dbg !6699
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6699
  call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %lnot.ext) #17, !dbg !6700
  ret void, !dbg !6701
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_sync(ptr noundef %dev) #10 align 16 !dbg !6702 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6704, metadata !DIExpression()), !dbg !6705
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6706
  call void @input_event(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #17, !dbg !6707
  ret void, !dbg !6708
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cypress_get_finger_count(i8 noundef zeroext %header_byte) #0 align 16 !dbg !6709 {
entry:
  %retval = alloca i32, align 4
  %header_byte.addr = alloca i8, align 1
  %bits6_7 = alloca i8, align 1
  %finger_count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %header_byte, ptr %header_byte.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %header_byte.addr, metadata !6713, metadata !DIExpression()), !dbg !6716
  call void @llvm.lifetime.start.p0(i64 1, ptr %bits6_7) #16, !dbg !6717
  call void @llvm.dbg.declare(metadata ptr %bits6_7, metadata !6714, metadata !DIExpression()), !dbg !6718
  call void @llvm.lifetime.start.p0(i64 4, ptr %finger_count) #16, !dbg !6719
  call void @llvm.dbg.declare(metadata ptr %finger_count, metadata !6715, metadata !DIExpression()), !dbg !6720
  %0 = load i8, ptr %header_byte.addr, align 1, !dbg !6721
  %conv = zext i8 %0 to i32, !dbg !6721
  %shr = ashr i32 %conv, 6, !dbg !6722
  %conv1 = trunc i32 %shr to i8, !dbg !6721
  store i8 %conv1, ptr %bits6_7, align 1, !dbg !6723
  %1 = load i8, ptr %bits6_7, align 1, !dbg !6724
  %conv2 = zext i8 %1 to i32, !dbg !6724
  %and = and i32 %conv2, 3, !dbg !6725
  store i32 %and, ptr %finger_count, align 4, !dbg !6726
  %2 = load i32, ptr %finger_count, align 4, !dbg !6727
  %cmp = icmp eq i32 %2, 1, !dbg !6729
  br i1 %cmp, label %if.then, label %if.end, !dbg !6730

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !6731
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6731

if.end:                                           ; preds = %entry
  %3 = load i8, ptr %header_byte.addr, align 1, !dbg !6732
  %conv4 = zext i8 %3 to i32, !dbg !6732
  %and5 = and i32 %conv4, 32, !dbg !6734
  %tobool = icmp ne i32 %and5, 0, !dbg !6734
  br i1 %tobool, label %if.then6, label %if.end8, !dbg !6735

if.then6:                                         ; preds = %if.end
  %4 = load i32, ptr %finger_count, align 4, !dbg !6736
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb7
  ], !dbg !6738

sw.bb:                                            ; preds = %if.then6
  store i32 4, ptr %retval, align 4, !dbg !6739
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6739

sw.bb7:                                           ; preds = %if.then6
  store i32 5, ptr %retval, align 4, !dbg !6741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6741

sw.default:                                       ; preds = %if.then6
  store i32 0, ptr %retval, align 4, !dbg !6742
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6742

if.end8:                                          ; preds = %if.end
  %5 = load i32, ptr %finger_count, align 4, !dbg !6743
  store i32 %5, ptr %retval, align 4, !dbg !6744
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6744

cleanup:                                          ; preds = %if.end8, %sw.default, %sw.bb7, %sw.bb, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %finger_count) #16, !dbg !6745
  call void @llvm.lifetime.end.p0(i64 1, ptr %bits6_7) #16, !dbg !6745
  %6 = load i32, ptr %retval, align 4, !dbg !6745
  ret i32 %6, !dbg !6745
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6746 dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6749 dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!33}
!llvm.module.flags = !{!258, !259, !260, !261, !262, !263, !264, !265}
!llvm.ident = !{!266}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 213, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/input/mouse/cypress_ps2.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b3c985733c8646f8bb212b95c4b9bcc4")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 8)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 214, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 9)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 672, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 49)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 677, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 64)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 682, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 48)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !29, file: !30, line: 112, type: !220, isLocal: true, isDefinition: true)
!29 = distinct !DISubprogram(name: "might_resched", scope: !30, file: !30, line: 110, type: !31, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33)
!30 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!31 = !DISubroutineType(types: !32)
!32 = !{null}
!33 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/input/mouse/.cypress_ps2.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/input/mouse/psmouse\22 -D KBUILD_BASENAME=\22cypress_ps2\22 -D KBUILD_MODNAME=\22psmouse\22 -D __KBUILD_MODNAME=kmod_psmouse -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/input/mouse/cypress_ps2.ll drivers/input/mouse/cypress_ps2.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !34, retainedTypes: !217, globals: !231, splitDebugInlining: false, nameTableKind: None)
!34 = !{!35, !44, !51, !58, !64, !69, !75, !80, !86, !93, !99, !106, !114, !122, !131, !136, !141, !147, !153, !159, !186, !193, !198, !202, !207}
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !36, line: 9, baseType: !37, size: 32, elements: !38)
!36 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !{!39, !40, !41, !42, !43}
!39 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!40 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!41 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!42 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!43 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !45, line: 312, baseType: !37, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!46 = !{!47, !48, !49, !50}
!47 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!48 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!49 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!50 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !52, line: 15, baseType: !37, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!53 = !{!54, !55, !56, !57}
!54 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!55 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!56 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!57 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !59, line: 26, baseType: !37, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!63 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !65, line: 2052, baseType: !37, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!68 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !70, line: 54, baseType: !37, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!71 = !{!72, !73, !74}
!72 = !DIEnumerator(name: "USRQUOTA", value: 0)
!73 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!74 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !76, line: 65, baseType: !37, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!77 = !{!78, !79}
!78 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!79 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !81, line: 16, baseType: !37, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "TT_NONE", value: 0)
!84 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!85 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !87, line: 51, baseType: !37, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!90 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!91 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!92 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !94, line: 45, baseType: !37, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!97 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!98 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !100, line: 487, baseType: !37, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!101 = !{!102, !103, !104, !105}
!102 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!103 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!104 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!105 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !107, line: 620, baseType: !37, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!108 = !{!109, !110, !111, !112, !113}
!109 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!110 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!111 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!112 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!113 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !107, line: 597, baseType: !115, size: 32, elements: !116)
!115 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!118 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!119 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!120 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!121 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !100, line: 547, baseType: !37, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130}
!124 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!125 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!126 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!127 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!128 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!129 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!130 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !100, line: 564, baseType: !37, size: 32, elements: !132)
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!134 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!135 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !100, line: 577, baseType: !37, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!139 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!140 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !100, line: 503, baseType: !37, size: 32, elements: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!144 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!145 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!146 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !148, line: 11, baseType: !37, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!151 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!152 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ps2_disposition", file: !154, line: 24, baseType: !37, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/libps2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "81c7f532c535ab7e59f124f9e08a3713")
!155 = !{!156, !157, !158}
!156 = !DIEnumerator(name: "PS2_PROCESS", value: 0)
!157 = !DIEnumerator(name: "PS2_IGNORE", value: 1)
!158 = !DIEnumerator(name: "PS2_ERROR", value: 2)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_type", file: !160, line: 48, baseType: !37, size: 32, elements: !161)
!160 = !DIFile(filename: "drivers/input/mouse/psmouse.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "365ff56d7a22250c467c4cd08801fb3c")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185}
!162 = !DIEnumerator(name: "PSMOUSE_NONE", value: 0)
!163 = !DIEnumerator(name: "PSMOUSE_PS2", value: 1)
!164 = !DIEnumerator(name: "PSMOUSE_PS2PP", value: 2)
!165 = !DIEnumerator(name: "PSMOUSE_THINKPS", value: 3)
!166 = !DIEnumerator(name: "PSMOUSE_GENPS", value: 4)
!167 = !DIEnumerator(name: "PSMOUSE_IMPS", value: 5)
!168 = !DIEnumerator(name: "PSMOUSE_IMEX", value: 6)
!169 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS", value: 7)
!170 = !DIEnumerator(name: "PSMOUSE_ALPS", value: 8)
!171 = !DIEnumerator(name: "PSMOUSE_LIFEBOOK", value: 9)
!172 = !DIEnumerator(name: "PSMOUSE_TRACKPOINT", value: 10)
!173 = !DIEnumerator(name: "PSMOUSE_TOUCHKIT_PS2", value: 11)
!174 = !DIEnumerator(name: "PSMOUSE_CORTRON", value: 12)
!175 = !DIEnumerator(name: "PSMOUSE_HGPK", value: 13)
!176 = !DIEnumerator(name: "PSMOUSE_ELANTECH", value: 14)
!177 = !DIEnumerator(name: "PSMOUSE_FSP", value: 15)
!178 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS_RELATIVE", value: 16)
!179 = !DIEnumerator(name: "PSMOUSE_CYPRESS", value: 17)
!180 = !DIEnumerator(name: "PSMOUSE_FOCALTECH", value: 18)
!181 = !DIEnumerator(name: "PSMOUSE_VMMOUSE", value: 19)
!182 = !DIEnumerator(name: "PSMOUSE_BYD", value: 20)
!183 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS_SMBUS", value: 21)
!184 = !DIEnumerator(name: "PSMOUSE_ELANTECH_SMBUS", value: 22)
!185 = !DIEnumerator(name: "PSMOUSE_AUTO", value: 23)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_state", file: !160, line: 28, baseType: !37, size: 32, elements: !187)
!187 = !{!188, !189, !190, !191, !192}
!188 = !DIEnumerator(name: "PSMOUSE_IGNORE", value: 0)
!189 = !DIEnumerator(name: "PSMOUSE_INITIALIZING", value: 1)
!190 = !DIEnumerator(name: "PSMOUSE_RESYNCING", value: 2)
!191 = !DIEnumerator(name: "PSMOUSE_CMD_MODE", value: 3)
!192 = !DIEnumerator(name: "PSMOUSE_ACTIVATED", value: 4)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !160, line: 37, baseType: !37, size: 32, elements: !194)
!194 = !{!195, !196, !197}
!195 = !DIEnumerator(name: "PSMOUSE_BAD_DATA", value: 0)
!196 = !DIEnumerator(name: "PSMOUSE_GOOD_DATA", value: 1)
!197 = !DIEnumerator(name: "PSMOUSE_FULL_PACKET", value: 2)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_scale", file: !160, line: 43, baseType: !37, size: 32, elements: !199)
!199 = !{!200, !201}
!200 = !DIEnumerator(name: "PSMOUSE_SCALE11", value: 0)
!201 = !DIEnumerator(name: "PSMOUSE_SCALE21", value: 1)
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !203, line: 10, baseType: !37, size: 32, elements: !204)
!203 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!204 = !{!205, !206}
!205 = !DIEnumerator(name: "false", value: 0)
!206 = !DIEnumerator(name: "true", value: 1)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !208, line: 364, baseType: !37, size: 32, elements: !209)
!208 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!209 = !{!210, !211, !212, !213, !214, !215, !216}
!210 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!211 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!212 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!213 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!214 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!215 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!216 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!217 = !{!218, !220, !115, !221, !222, !223, !224, !226, !227, !229}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !219, line: 154, baseType: !37)
!219 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!221 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!222 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !219, line: 42, baseType: !222)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !221)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!231 = !{!0, !7, !12, !17, !22, !27, !232, !238, !243, !248, !253}
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "cytp_resolution", scope: !33, file: !2, line: 36, type: !234, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 32, elements: !236)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!236 = !{!237}
!237 = !DISubrange(count: 4)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "cytp_rate", scope: !33, file: !2, line: 35, type: !240, isLocal: true, isDefinition: true)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 48, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 6)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !208, line: 480, type: !245, isLocal: true, isDefinition: true)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 21)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !2, line: 646, type: !250, isLocal: true, isDefinition: true)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 52)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !2, line: 651, type: !255, isLocal: true, isDefinition: true)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 69)
!258 = !{i32 7, !"Dwarf Version", i32 5}
!259 = !{i32 2, !"Debug Info Version", i32 3}
!260 = !{i32 1, !"wchar_size", i32 2}
!261 = !{i32 8, !"cf-protection-branch", i32 1}
!262 = !{i32 4, !"function_return_thunk_extern", i32 1}
!263 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!264 = !{i32 1, !"Code Model", i32 2}
!265 = !{i32 1, !"override-stack-alignment", i32 8}
!266 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!267 = distinct !DISubprogram(name: "cypress_detect", scope: !2, file: !2, line: 201, type: !268, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !4828)
!268 = !DISubroutineType(types: !269)
!269 = !{!115, !270, !730}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse", file: !160, line: 89, size: 3904, elements: !272)
!272 = !{!273, !274, !4677, !4763, !4764, !4765, !4766, !4784, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4809, !4813, !4814, !4818, !4819, !4820, !4824, !4825, !4826, !4827}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !271, file: !160, line: 90, baseType: !220, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !271, file: !160, line: 91, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !277, line: 137, size: 10880, elements: !278)
!277 = !DIFile(filename: "./include/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b25fc678586bfd50cf52e415a8b77c9")
!278 = !{!279, !282, !283, !284, !295, !299, !300, !304, !305, !306, !307, !308, !309, !313, !314, !315, !316, !317, !318, !337, !342, !4164, !4167, !4168, !4169, !4171, !4192, !4202, !4203, !4204, !4205, !4206, !4210, !4214, !4218, !4222, !4300, !4301, !4302, !4303, !4304, !4667, !4668, !4669, !4670, !4671, !4673, !4674, !4676}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !276, file: !277, line: 138, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !276, file: !277, line: 139, baseType: !280, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !276, file: !277, line: 140, baseType: !280, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !276, file: !277, line: 141, baseType: !285, size: 64, offset: 192)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !286, line: 59, size: 64, elements: !287)
!286 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48bb23414dcd9e3ab2349c2bc2e9cd2c")
!287 = !{!288, !292, !293, !294}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !285, file: !286, line: 60, baseType: !289, size: 16)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !290, line: 24, baseType: !291)
!290 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!291 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !285, file: !286, line: 61, baseType: !289, size: 16, offset: 16)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !285, file: !286, line: 62, baseType: !289, size: 16, offset: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !285, file: !286, line: 63, baseType: !289, size: 16, offset: 48)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !276, file: !277, line: 143, baseType: !296, size: 64, offset: 256)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 64, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 1)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !276, file: !277, line: 145, baseType: !296, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !276, file: !277, line: 146, baseType: !301, size: 768, offset: 384)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 768, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 12)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !276, file: !277, line: 147, baseType: !296, size: 64, offset: 1152)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !276, file: !277, line: 148, baseType: !296, size: 64, offset: 1216)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !276, file: !277, line: 149, baseType: !296, size: 64, offset: 1280)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !276, file: !277, line: 150, baseType: !296, size: 64, offset: 1344)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !276, file: !277, line: 151, baseType: !296, size: 64, offset: 1408)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !276, file: !277, line: 152, baseType: !310, size: 128, offset: 1472)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 128, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 2)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !276, file: !277, line: 153, baseType: !296, size: 64, offset: 1600)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !276, file: !277, line: 155, baseType: !37, size: 32, offset: 1664)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !276, file: !277, line: 157, baseType: !37, size: 32, offset: 1696)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !276, file: !277, line: 158, baseType: !37, size: 32, offset: 1728)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !276, file: !277, line: 159, baseType: !220, size: 64, offset: 1792)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !276, file: !277, line: 161, baseType: !319, size: 64, offset: 1856)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!115, !275, !322, !336}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !286, line: 117, size: 320, elements: !325)
!325 = !{!326, !328, !329, !330, !332}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !286, line: 119, baseType: !327, size: 8)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !290, line: 21, baseType: !230)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !324, file: !286, line: 120, baseType: !327, size: 8, offset: 8)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !324, file: !286, line: 121, baseType: !289, size: 16, offset: 16)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !324, file: !286, line: 122, baseType: !331, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !290, line: 27, baseType: !37)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !324, file: !286, line: 123, baseType: !333, size: 256, offset: 64)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 256, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 32)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !276, file: !277, line: 164, baseType: !338, size: 64, offset: 1920)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!115, !275, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !276, file: !277, line: 167, baseType: !343, size: 64, offset: 1984)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !277, line: 546, size: 960, elements: !345)
!345 = !{!346, !415, !419, !423, !429, !430, !434, !435, !436, !490, !491, !492}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !344, file: !277, line: 547, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!115, !275, !350, !350}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !286, line: 454, size: 384, elements: !352)
!352 = !{!353, !354, !357, !358, !363, !368}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !351, file: !286, line: 455, baseType: !289, size: 16)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !351, file: !286, line: 456, baseType: !355, size: 16, offset: 16)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !290, line: 23, baseType: !356)
!356 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !351, file: !286, line: 457, baseType: !289, size: 16, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !351, file: !286, line: 458, baseType: !359, size: 32, offset: 48)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !286, line: 320, size: 32, elements: !360)
!360 = !{!361, !362}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !359, file: !286, line: 321, baseType: !289, size: 16)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !359, file: !286, line: 322, baseType: !289, size: 16, offset: 16)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !351, file: !286, line: 459, baseType: !364, size: 32, offset: 80)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !286, line: 310, size: 32, elements: !365)
!365 = !{!366, !367}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !364, file: !286, line: 311, baseType: !289, size: 16)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !364, file: !286, line: 312, baseType: !289, size: 16, offset: 16)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !351, file: !286, line: 467, baseType: !369, size: 256, offset: 128)
!369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !286, line: 461, size: 256, elements: !370)
!370 = !{!371, !382, !388, !400, !410}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !369, file: !286, line: 462, baseType: !372, size: 80)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !286, line: 349, size: 80, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !372, file: !286, line: 350, baseType: !355, size: 16)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !372, file: !286, line: 351, baseType: !376, size: 64, offset: 16)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !286, line: 337, size: 64, elements: !377)
!377 = !{!378, !379, !380, !381}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !376, file: !286, line: 338, baseType: !289, size: 16)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !376, file: !286, line: 339, baseType: !289, size: 16, offset: 16)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !376, file: !286, line: 340, baseType: !289, size: 16, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !376, file: !286, line: 341, baseType: !289, size: 16, offset: 48)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !369, file: !286, line: 463, baseType: !383, size: 96)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !286, line: 360, size: 96, elements: !384)
!384 = !{!385, !386, !387}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !383, file: !286, line: 361, baseType: !355, size: 16)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !383, file: !286, line: 362, baseType: !355, size: 16, offset: 16)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !383, file: !286, line: 363, baseType: !376, size: 64, offset: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !369, file: !286, line: 464, baseType: !389, size: 256)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !286, line: 405, size: 256, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !389, file: !286, line: 406, baseType: !289, size: 16)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !389, file: !286, line: 407, baseType: !289, size: 16, offset: 16)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !389, file: !286, line: 408, baseType: !355, size: 16, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !389, file: !286, line: 409, baseType: !355, size: 16, offset: 48)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !389, file: !286, line: 410, baseType: !289, size: 16, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !389, file: !286, line: 412, baseType: !376, size: 64, offset: 80)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !389, file: !286, line: 414, baseType: !331, size: 32, offset: 160)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !389, file: !286, line: 415, baseType: !399, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !369, file: !286, line: 465, baseType: !401, size: 192)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 192, elements: !311)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !286, line: 376, size: 96, elements: !403)
!403 = !{!404, !405, !406, !407, !408, !409}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !402, file: !286, line: 377, baseType: !289, size: 16)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !402, file: !286, line: 378, baseType: !289, size: 16, offset: 16)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !402, file: !286, line: 380, baseType: !355, size: 16, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !402, file: !286, line: 381, baseType: !355, size: 16, offset: 48)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !402, file: !286, line: 383, baseType: !289, size: 16, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !402, file: !286, line: 384, baseType: !355, size: 16, offset: 80)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !369, file: !286, line: 466, baseType: !411, size: 32)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !286, line: 426, size: 32, elements: !412)
!412 = !{!413, !414}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !411, file: !286, line: 427, baseType: !289, size: 16)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !411, file: !286, line: 428, baseType: !289, size: 16, offset: 16)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !344, file: !277, line: 549, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!115, !275, !115}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !344, file: !277, line: 551, baseType: !420, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!115, !275, !115, !115}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !344, file: !277, line: 552, baseType: !424, size: 64, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !275, !427}
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !428, line: 19, baseType: !289)
!428 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!429 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !344, file: !277, line: 553, baseType: !424, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !344, file: !277, line: 555, baseType: !431, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !343}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !344, file: !277, line: 557, baseType: !220, size: 64, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !344, file: !277, line: 559, baseType: !310, size: 128, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !344, file: !277, line: 561, baseType: !437, size: 256, offset: 576)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !438, line: 66, size: 256, elements: !439)
!438 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!439 = !{!440, !450, !479, !484}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !437, file: !438, line: 67, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !442, line: 13, baseType: !443)
!442 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !219, line: 181, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 179, size: 64, elements: !445)
!445 = !{!446}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !444, file: !219, line: 180, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !428, line: 22, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !290, line: 30, baseType: !449)
!449 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !437, file: !438, line: 68, baseType: !451, size: 32, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !452, line: 23, baseType: !453)
!452 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !452, line: 14, size: 32, elements: !454)
!454 = !{!455}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !453, file: !452, line: 15, baseType: !456, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !457, line: 44, baseType: !458)
!457 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !457, line: 14, size: 32, elements: !459)
!459 = !{!460}
!460 = !DIDerivedType(tag: DW_TAG_member, scope: !458, file: !457, line: 15, baseType: !461, size: 32)
!461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !458, file: !457, line: 15, size: 32, elements: !462)
!462 = !{!463, !468, !474}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !461, file: !457, line: 16, baseType: !464, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !219, line: 174, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 172, size: 32, elements: !466)
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !465, file: !219, line: 173, baseType: !115, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !457, line: 24, baseType: !469, size: 16)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !461, file: !457, line: 24, size: 16, elements: !470)
!470 = !{!471, !473}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !469, file: !457, line: 25, baseType: !472, size: 8)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !428, line: 17, baseType: !327)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !469, file: !457, line: 26, baseType: !472, size: 8, offset: 8)
!474 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !457, line: 28, baseType: !475, size: 32)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !461, file: !457, line: 28, size: 32, elements: !476)
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !475, file: !457, line: 29, baseType: !427, size: 16)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !475, file: !457, line: 30, baseType: !427, size: 16, offset: 16)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !437, file: !438, line: 70, baseType: !480, size: 32, offset: 96)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !481, line: 15, size: 32, elements: !482)
!481 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !480, file: !481, line: 20, baseType: !464, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !437, file: !438, line: 72, baseType: !485, size: 128, offset: 128)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !219, line: 190, size: 128, elements: !486)
!486 = !{!487, !489}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !485, file: !219, line: 191, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !485, file: !219, line: 191, baseType: !488, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !344, file: !277, line: 563, baseType: !115, size: 32, offset: 832)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !344, file: !277, line: 564, baseType: !350, size: 64, offset: 896)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !344, file: !277, line: 565, baseType: !493, offset: 960)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, elements: !600)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !65, line: 994, size: 1856, align: 64, elements: !496)
!496 = !{!497, !516, !525, !527, !528, !529, !533, !534, !613, !833, !842, !4154, !4155, !4156, !4157, !4158, !4159, !4161, !4162, !4163}
!497 = !DIDerivedType(tag: DW_TAG_member, scope: !495, file: !65, line: 995, baseType: !498, size: 128)
!498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !495, file: !65, line: 995, size: 128, elements: !499)
!499 = !{!500, !506, !515}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !498, file: !65, line: 996, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !502, line: 60, size: 64, elements: !503)
!502 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!503 = !{!504}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !501, file: !502, line: 61, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !498, file: !65, line: 997, baseType: !507, size: 128, align: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !219, line: 232, size: 128, align: 64, elements: !508)
!508 = !{!509, !511}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !507, file: !219, line: 233, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !507, file: !219, line: 234, baseType: !512, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !510}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !498, file: !65, line: 998, baseType: !37, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !495, file: !65, line: 1005, baseType: !517, size: 32, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !518, line: 29, baseType: !519)
!518 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !518, line: 17, size: 32, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !518, line: 18, baseType: !522, size: 32)
!522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !518, line: 18, size: 32, elements: !523)
!523 = !{!524}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !522, file: !518, line: 19, baseType: !453, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !495, file: !65, line: 1006, baseType: !526, size: 32, offset: 160)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !219, line: 156, baseType: !37)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !495, file: !65, line: 1007, baseType: !441, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !495, file: !65, line: 1008, baseType: !437, size: 256, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !495, file: !65, line: 1009, baseType: !530, size: 64, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !219, line: 52, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !532, line: 88, baseType: !449)
!532 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!533 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !495, file: !65, line: 1010, baseType: !37, size: 32, offset: 576)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !495, file: !65, line: 1011, baseType: !535, size: 256, offset: 640)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !65, line: 948, size: 256, elements: !536)
!536 = !{!537, !560, !602, !603, !611, !612}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !535, file: !65, line: 949, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !539, line: 34, baseType: !540)
!539 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !539, line: 25, size: 64, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !540, file: !539, line: 26, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !544, line: 27, baseType: !545)
!544 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !544, line: 13, size: 64, elements: !546)
!546 = !{!547, !559}
!547 = !DIDerivedType(tag: DW_TAG_member, scope: !545, file: !544, line: 14, baseType: !548, size: 32)
!548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !545, file: !544, line: 14, size: 32, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !548, file: !544, line: 15, baseType: !464, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, scope: !548, file: !544, line: 16, baseType: !552, size: 32)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !548, file: !544, line: 16, size: 32, elements: !553)
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !552, file: !544, line: 18, baseType: !472, size: 8)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !552, file: !544, line: 19, baseType: !556, size: 24, offset: 8)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 24, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 3)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !545, file: !544, line: 26, baseType: !456, size: 32, offset: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !535, file: !65, line: 950, baseType: !561, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !36, line: 59, size: 768, elements: !563)
!563 = !{!564, !570, !571, !572, !583, !584, !591, !592}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !562, file: !36, line: 61, baseType: !565, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !566, line: 113, baseType: !567)
!566 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !566, line: 111, size: 32, elements: !568)
!568 = !{!569}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !567, file: !566, line: 112, baseType: !464, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !562, file: !36, line: 62, baseType: !37, size: 32, offset: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !562, file: !36, line: 63, baseType: !517, size: 32, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !562, file: !36, line: 65, baseType: !573, size: 256, offset: 128)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 256, elements: !236)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !219, line: 194, size: 64, elements: !575)
!575 = !{!576}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !574, file: !219, line: 195, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !219, line: 198, size: 128, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !578, file: !219, line: 199, baseType: !577, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !578, file: !219, line: 199, baseType: !582, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !562, file: !36, line: 66, baseType: !574, size: 64, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !562, file: !36, line: 68, baseType: !585, size: 192, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !586, line: 41, baseType: !587)
!586 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !586, line: 37, size: 192, elements: !588)
!588 = !{!589, !590}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !587, file: !586, line: 38, baseType: !517, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !587, file: !586, line: 39, baseType: !485, size: 128, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !562, file: !36, line: 69, baseType: !507, size: 128, align: 64, offset: 640)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !562, file: !36, line: 70, baseType: !593, offset: 768)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !594, elements: !600)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !36, line: 54, size: 128, elements: !595)
!595 = !{!596, !597}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !594, file: !36, line: 55, baseType: !115, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !594, file: !36, line: 56, baseType: !598, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !36, line: 56, flags: DIFlagFwdDecl)
!600 = !{!601}
!601 = !DISubrange(count: -1)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !535, file: !65, line: 951, baseType: !35, size: 32, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !535, file: !65, line: 952, baseType: !604, size: 32, offset: 160)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !605, line: 23, baseType: !606)
!605 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !605, line: 21, size: 32, elements: !607)
!607 = !{!608}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !606, file: !605, line: 22, baseType: !609, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !219, line: 37, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !532, line: 49, baseType: !37)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !535, file: !65, line: 952, baseType: !604, size: 32, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !535, file: !65, line: 953, baseType: !115, size: 32, offset: 224)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !495, file: !65, line: 1012, baseType: !614, size: 64, offset: 896)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !617, line: 110, size: 1472, elements: !618)
!617 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!618 = !{!619, !620, !621, !628, !629, !630, !631, !632, !633, !634, !635, !644, !645, !646, !647, !648, !649, !778, !779, !780, !781, !782, !813, !816, !820, !828}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !616, file: !617, line: 111, baseType: !441, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !616, file: !617, line: 112, baseType: !604, size: 32, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !616, file: !617, line: 113, baseType: !622, size: 32, offset: 96)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !605, line: 28, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !605, line: 26, size: 32, elements: !624)
!624 = !{!625}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !623, file: !605, line: 27, baseType: !626, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !219, line: 38, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !532, line: 50, baseType: !37)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !616, file: !617, line: 114, baseType: !604, size: 32, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !616, file: !617, line: 115, baseType: !622, size: 32, offset: 160)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !616, file: !617, line: 116, baseType: !604, size: 32, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !616, file: !617, line: 117, baseType: !622, size: 32, offset: 224)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !616, file: !617, line: 118, baseType: !604, size: 32, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !616, file: !617, line: 119, baseType: !622, size: 32, offset: 288)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !616, file: !617, line: 120, baseType: !37, size: 32, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !616, file: !617, line: 121, baseType: !636, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !637, line: 24, baseType: !638)
!637 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !637, line: 24, size: 64, elements: !639)
!639 = !{!640}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !638, file: !637, line: 24, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !428, line: 23, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !290, line: 31, baseType: !643)
!643 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !616, file: !617, line: 122, baseType: !636, size: 64, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !616, file: !617, line: 123, baseType: !636, size: 64, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !616, file: !617, line: 124, baseType: !636, size: 64, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !616, file: !617, line: 125, baseType: !636, size: 64, offset: 640)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !616, file: !617, line: 127, baseType: !230, size: 8, offset: 704)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !616, file: !617, line: 129, baseType: !650, size: 64, offset: 768)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !652, line: 195, size: 1728, elements: !653)
!652 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!653 = !{!654, !655, !660, !672, !681, !684, !685, !692, !693, !694, !695, !699, !700, !701, !702, !703, !742, !763}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !651, file: !652, line: 196, baseType: !565, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !651, file: !652, line: 197, baseType: !656, size: 32, offset: 32)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !652, line: 28, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !219, line: 104, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !428, line: 20, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !290, line: 26, baseType: !115)
!660 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 198, baseType: !661, size: 192, offset: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 198, size: 192, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !661, file: !652, line: 199, baseType: !485, size: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !661, file: !652, line: 200, baseType: !665, size: 192, align: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !666, line: 5, size: 192, align: 64, elements: !667)
!666 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!667 = !{!668, !669, !671}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !665, file: !666, line: 6, baseType: !222, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !665, file: !666, line: 7, baseType: !670, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !665, file: !666, line: 8, baseType: !670, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !651, file: !652, line: 205, baseType: !673, size: 320, offset: 256)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !674, line: 48, size: 320, elements: !675)
!674 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!675 = !{!676, !677, !678, !679, !680}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !673, file: !674, line: 49, baseType: !441, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !673, file: !674, line: 55, baseType: !441, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !673, file: !674, line: 57, baseType: !480, size: 32, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !673, file: !674, line: 59, baseType: !451, size: 32, offset: 160)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !673, file: !674, line: 60, baseType: !485, size: 128, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !651, file: !652, line: 206, baseType: !682, size: 64, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !652, line: 206, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !651, file: !652, line: 207, baseType: !220, size: 64, offset: 640)
!685 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 208, baseType: !686, size: 64, offset: 704)
!686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 208, size: 64, elements: !687)
!687 = !{!688, !691}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !686, file: !652, line: 209, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !690, line: 8, baseType: !448)
!690 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!691 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !686, file: !652, line: 210, baseType: !689, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !651, file: !652, line: 212, baseType: !689, size: 64, offset: 768)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !651, file: !652, line: 213, baseType: !604, size: 32, offset: 832)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !651, file: !652, line: 214, baseType: !622, size: 32, offset: 864)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !651, file: !652, line: 215, baseType: !696, size: 32, offset: 896)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !652, line: 31, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !219, line: 110, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !428, line: 21, baseType: !331)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !651, file: !652, line: 216, baseType: !291, size: 16, offset: 928)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !651, file: !652, line: 217, baseType: !291, size: 16, offset: 944)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !651, file: !652, line: 221, baseType: !356, size: 16, offset: 960)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !652, line: 228, baseType: !222, size: 64, offset: 1024)
!703 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 245, baseType: !704, size: 320, offset: 1088)
!704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 245, size: 320, elements: !705)
!705 = !{!706, !733}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !704, file: !652, line: 246, baseType: !707, size: 320)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !652, line: 114, size: 320, elements: !708)
!708 = !{!709, !710, !720, !723, !732}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !707, file: !652, line: 116, baseType: !222, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, scope: !707, file: !652, line: 117, baseType: !711, size: 64, offset: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !707, file: !652, line: 117, size: 64, elements: !712)
!712 = !{!713, !719}
!713 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !652, line: 118, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !711, file: !652, line: 118, size: 64, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !714, file: !652, line: 120, baseType: !427, size: 16)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !714, file: !652, line: 121, baseType: !718, size: 48, offset: 16)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !241)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !711, file: !652, line: 127, baseType: !222, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !707, file: !652, line: 129, baseType: !721, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !652, line: 102, flags: DIFlagFwdDecl)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !707, file: !652, line: 130, baseType: !724, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !652, line: 108, size: 192, elements: !726)
!726 = !{!727, !728, !729}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !725, file: !652, line: 109, baseType: !507, size: 128, align: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !725, file: !652, line: 110, baseType: !565, size: 32, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !725, file: !652, line: 111, baseType: !730, size: 8, offset: 160)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !219, line: 35, baseType: !731)
!731 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !707, file: !652, line: 131, baseType: !280, size: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !652, line: 247, baseType: !734, size: 320)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !652, line: 247, size: 320, elements: !735)
!735 = !{!736, !737, !738, !739, !740}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !734, file: !652, line: 248, baseType: !222, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !734, file: !652, line: 249, baseType: !222, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !734, file: !652, line: 250, baseType: !721, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !734, file: !652, line: 251, baseType: !724, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !734, file: !652, line: 252, baseType: !741, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 260, baseType: !743, size: 256, offset: 1408)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 260, size: 256, elements: !744)
!744 = !{!745, !751}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !743, file: !652, line: 261, baseType: !746, size: 256)
!746 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !652, line: 134, size: 256, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !746, file: !652, line: 135, baseType: !220, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !746, file: !652, line: 136, baseType: !750, size: 256)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 256, elements: !236)
!751 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !652, line: 262, baseType: !752, size: 256)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !743, file: !652, line: 262, size: 256, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !752, file: !652, line: 264, baseType: !485, size: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !752, file: !652, line: 265, baseType: !756, size: 128, offset: 128)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !757, line: 22, size: 128, elements: !758)
!757 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!758 = !{!759, !762}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !756, file: !757, line: 23, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !757, line: 23, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !756, file: !757, line: 24, baseType: !222, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !651, file: !652, line: 280, baseType: !764, size: 64, offset: 1664)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !652, line: 176, size: 192, elements: !766)
!766 = !{!767, !776, !777}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !765, file: !652, line: 177, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !652, line: 171, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!115, !650, !772, !774, !650}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !765, file: !652, line: 178, baseType: !650, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !765, file: !652, line: 179, baseType: !721, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !616, file: !617, line: 130, baseType: !650, size: 64, offset: 832)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !616, file: !617, line: 131, baseType: !650, size: 64, offset: 896)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !616, file: !617, line: 132, baseType: !650, size: 64, offset: 960)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !616, file: !617, line: 135, baseType: !220, size: 64, offset: 1024)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !616, file: !617, line: 137, baseType: !783, size: 64, offset: 1088)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !785, line: 14, size: 1088, elements: !786)
!785 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!786 = !{!787, !788, !797, !798, !799, !800, !801, !802}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !784, file: !785, line: 15, baseType: !565, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !784, file: !785, line: 17, baseType: !789, size: 320, offset: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !790, line: 22, size: 320, elements: !791)
!790 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!791 = !{!792, !793, !794, !795}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !789, file: !790, line: 23, baseType: !451, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !789, file: !790, line: 24, baseType: !447, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !789, file: !790, line: 26, baseType: !485, size: 128, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !789, file: !790, line: 28, baseType: !796, size: 64, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !784, file: !785, line: 19, baseType: !222, size: 64, offset: 384)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !784, file: !785, line: 20, baseType: !441, size: 64, offset: 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !784, file: !785, line: 23, baseType: !578, size: 128, offset: 512)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !784, file: !785, line: 24, baseType: !604, size: 32, offset: 640)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !784, file: !785, line: 29, baseType: !441, size: 64, offset: 704)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !784, file: !785, line: 36, baseType: !803, size: 320, offset: 768)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !804, line: 15, size: 320, elements: !805)
!804 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!805 = !{!806, !807, !808, !809, !810, !811, !812}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !803, file: !804, line: 16, baseType: !451, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !803, file: !804, line: 18, baseType: !115, size: 32, offset: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !803, file: !804, line: 19, baseType: !115, size: 32, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !803, file: !804, line: 20, baseType: !115, size: 32, offset: 96)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !803, file: !804, line: 21, baseType: !115, size: 32, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !803, file: !804, line: 22, baseType: !222, size: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !803, file: !804, line: 23, baseType: !222, size: 64, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !616, file: !617, line: 138, baseType: !814, size: 64, offset: 1152)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !605, line: 18, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !616, file: !617, line: 139, baseType: !817, size: 64, offset: 1216)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !819, line: 16, flags: DIFlagFwdDecl)
!819 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!820 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !616, file: !617, line: 140, baseType: !821, size: 64, offset: 1280)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !617, line: 25, size: 64, elements: !823)
!823 = !{!824, !825, !826}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !822, file: !617, line: 26, baseType: !464, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !822, file: !617, line: 27, baseType: !115, size: 32, offset: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !822, file: !617, line: 28, baseType: !827, offset: 64)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, elements: !600)
!828 = !DIDerivedType(tag: DW_TAG_member, scope: !616, file: !617, line: 142, baseType: !829, size: 128, offset: 1344)
!829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !616, file: !617, line: 142, size: 128, elements: !830)
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !829, file: !617, line: 143, baseType: !115, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !829, file: !617, line: 144, baseType: !507, size: 128, align: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !495, file: !65, line: 1013, baseType: !834, size: 256, offset: 960)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !65, line: 970, size: 256, elements: !835)
!835 = !{!836, !837, !838, !839, !840, !841}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !834, file: !65, line: 971, baseType: !222, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !834, file: !65, line: 972, baseType: !37, size: 32, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !834, file: !65, line: 973, baseType: !37, size: 32, offset: 96)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !834, file: !65, line: 974, baseType: !37, size: 32, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !834, file: !65, line: 975, baseType: !37, size: 32, offset: 160)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !834, file: !65, line: 976, baseType: !530, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !495, file: !65, line: 1014, baseType: !843, size: 128, offset: 1216)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !844, line: 8, size: 128, elements: !845)
!844 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!845 = !{!846, !4153}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !843, file: !844, line: 9, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !849, line: 70, size: 256, elements: !850)
!849 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!850 = !{!851, !4150, !4151, !4152}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !848, file: !849, line: 71, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !854, line: 82, size: 1536, elements: !855)
!854 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!855 = !{!856, !857, !867, !875, !876, !890, !4117, !4119, !4132, !4133, !4134, !4135, !4136, !4142, !4143, !4144}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !853, file: !854, line: 84, baseType: !37, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !853, file: !854, line: 85, baseType: !858, size: 32, offset: 32)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !859, line: 275, baseType: !860)
!859 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !859, line: 275, size: 32, elements: !861)
!861 = !{!862}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !860, file: !859, line: 275, baseType: !863, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !859, line: 69, baseType: !864)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !859, line: 64, size: 32, elements: !865)
!865 = !{!866}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !864, file: !859, line: 65, baseType: !37, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !853, file: !854, line: 86, baseType: !868, size: 128, offset: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !869, line: 38, size: 128, elements: !870)
!869 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!870 = !{!871, !873}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !868, file: !869, line: 39, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !868, file: !869, line: 39, baseType: !874, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !853, file: !854, line: 87, baseType: !852, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !853, file: !854, line: 88, baseType: !877, size: 128, offset: 256)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !854, line: 49, size: 128, elements: !878)
!878 = !{!879, !888}
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !854, line: 50, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !877, file: !854, line: 50, size: 64, elements: !881)
!881 = !{!882, !887}
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !854, line: 51, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !880, file: !854, line: 51, size: 64, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !883, file: !854, line: 52, baseType: !698, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !883, file: !854, line: 52, baseType: !698, size: 32, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !880, file: !854, line: 54, baseType: !641, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !877, file: !854, line: 56, baseType: !889, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !853, file: !854, line: 89, baseType: !891, size: 64, offset: 384)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !65, line: 641, size: 4800, elements: !893)
!893 = !{!894, !896, !897, !898, !899, !900, !901, !904, !905, !1101, !3933, !3934, !3935, !3936, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !4099, !4102, !4103, !4104, !4113, !4114, !4115, !4116}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !892, file: !65, line: 642, baseType: !895, size: 16)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !219, line: 24, baseType: !291)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !892, file: !65, line: 643, baseType: !291, size: 16, offset: 16)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !892, file: !65, line: 644, baseType: !604, size: 32, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !892, file: !65, line: 645, baseType: !485, size: 128, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !892, file: !65, line: 646, baseType: !622, size: 32, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !892, file: !65, line: 647, baseType: !37, size: 32, offset: 224)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !892, file: !65, line: 650, baseType: !902, size: 64, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !65, line: 607, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !892, file: !65, line: 651, baseType: !902, size: 64, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !892, file: !65, line: 654, baseType: !906, size: 64, offset: 384)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !65, line: 1966, size: 2048, align: 512, elements: !909)
!909 = !{!910, !914, !927, !933, !937, !941, !945, !949, !953, !957, !961, !962, !968, !972, !1009, !1040, !1050, !1056, !1060, !1064, !1068, !1072, !1076, !1082, !1086}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !908, file: !65, line: 1967, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!852, !891, !852, !37}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !908, file: !65, line: 1968, baseType: !915, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!280, !852, !891, !918}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !920, line: 10, size: 128, elements: !921)
!920 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!921 = !{!922, !926}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !919, file: !920, line: 11, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !220}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !919, file: !920, line: 12, baseType: !220, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !908, file: !65, line: 1969, baseType: !928, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!115, !931, !891, !115}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !637, line: 42, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !908, file: !65, line: 1970, baseType: !934, size: 64, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!902, !891, !115, !730}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !908, file: !65, line: 1972, baseType: !938, size: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!115, !852, !741, !115}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !908, file: !65, line: 1974, baseType: !942, size: 64, offset: 320)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!115, !931, !891, !852, !895, !730}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !908, file: !65, line: 1976, baseType: !946, size: 64, offset: 384)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!115, !852, !891, !852}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !908, file: !65, line: 1977, baseType: !950, size: 64, offset: 448)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!115, !891, !852}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !908, file: !65, line: 1978, baseType: !954, size: 64, offset: 512)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!115, !931, !891, !852, !280}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !908, file: !65, line: 1980, baseType: !958, size: 64, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!115, !931, !891, !852, !895}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !908, file: !65, line: 1982, baseType: !950, size: 64, offset: 640)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !908, file: !65, line: 1983, baseType: !963, size: 64, offset: 704)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!115, !931, !891, !852, !895, !966}
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !219, line: 21, baseType: !967)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !219, line: 18, baseType: !698)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !908, file: !65, line: 1985, baseType: !969, size: 64, offset: 768)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!115, !931, !891, !852, !891, !852, !37}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !908, file: !65, line: 1987, baseType: !973, size: 64, offset: 832)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!115, !931, !852, !976}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !65, line: 226, size: 640, elements: !978)
!978 = !{!979, !980, !981, !991, !1000, !1001, !1006, !1007, !1008}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !977, file: !65, line: 227, baseType: !37, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !977, file: !65, line: 228, baseType: !895, size: 16, offset: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !65, line: 241, baseType: !982, size: 32, offset: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !977, file: !65, line: 241, size: 32, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !982, file: !65, line: 242, baseType: !604, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !982, file: !65, line: 243, baseType: !986, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !987, line: 16, baseType: !988)
!987 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !987, line: 14, size: 32, elements: !989)
!989 = !{!990}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !988, file: !987, line: 15, baseType: !609, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !65, line: 245, baseType: !992, size: 32, offset: 96)
!992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !977, file: !65, line: 245, size: 32, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !992, file: !65, line: 246, baseType: !622, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !992, file: !65, line: 247, baseType: !996, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !987, line: 20, baseType: !997)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !987, line: 18, size: 32, elements: !998)
!998 = !{!999}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !997, file: !987, line: 19, baseType: !626, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !977, file: !65, line: 249, baseType: !530, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !977, file: !65, line: 250, baseType: !1002, size: 128, offset: 192)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !690, line: 13, size: 128, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1002, file: !690, line: 14, baseType: !689, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1002, file: !690, line: 15, baseType: !221, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !977, file: !65, line: 251, baseType: !1002, size: 128, offset: 320)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !977, file: !65, line: 252, baseType: !1002, size: 128, offset: 448)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !977, file: !65, line: 259, baseType: !494, size: 64, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !908, file: !65, line: 1988, baseType: !1010, size: 64, offset: 896)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!115, !931, !1013, !1015, !698, !37}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1017, line: 22, size: 1280, elements: !1018)
!1017 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1018 = !{!1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1016, file: !1017, line: 23, baseType: !698, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1016, file: !1017, line: 24, baseType: !895, size: 16, offset: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1016, file: !1017, line: 25, baseType: !37, size: 32, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1016, file: !1017, line: 26, baseType: !697, size: 32, offset: 96)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1016, file: !1017, line: 27, baseType: !641, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1016, file: !1017, line: 28, baseType: !641, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1016, file: !1017, line: 41, baseType: !641, size: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1016, file: !1017, line: 42, baseType: !966, size: 32, offset: 320)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1016, file: !1017, line: 43, baseType: !966, size: 32, offset: 352)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1016, file: !1017, line: 44, baseType: !604, size: 32, offset: 384)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1016, file: !1017, line: 45, baseType: !622, size: 32, offset: 416)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1016, file: !1017, line: 46, baseType: !530, size: 64, offset: 448)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1016, file: !1017, line: 47, baseType: !1002, size: 128, offset: 512)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1016, file: !1017, line: 48, baseType: !1002, size: 128, offset: 640)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1016, file: !1017, line: 49, baseType: !1002, size: 128, offset: 768)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1016, file: !1017, line: 50, baseType: !1002, size: 128, offset: 896)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1016, file: !1017, line: 51, baseType: !641, size: 64, offset: 1024)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1016, file: !1017, line: 52, baseType: !641, size: 64, offset: 1088)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1016, file: !1017, line: 53, baseType: !698, size: 32, offset: 1152)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1016, file: !1017, line: 54, baseType: !698, size: 32, offset: 1184)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1016, file: !1017, line: 55, baseType: !641, size: 64, offset: 1216)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !908, file: !65, line: 1990, baseType: !1041, size: 64, offset: 960)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!1044, !852, !741, !1047}
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !219, line: 66, baseType: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !532, line: 73, baseType: !1046)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !532, line: 15, baseType: !221)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !219, line: 61, baseType: !1048)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !532, line: 72, baseType: !1049)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !532, line: 16, baseType: !222)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !908, file: !65, line: 1991, baseType: !1051, size: 64, offset: 1024)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!115, !891, !1054, !641, !641}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !65, line: 55, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !908, file: !65, line: 1993, baseType: !1057, size: 64, offset: 1088)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!115, !891, !115}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !908, file: !65, line: 1994, baseType: !1061, size: 64, offset: 1152)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!115, !891, !852, !494, !37, !895}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !908, file: !65, line: 1997, baseType: !1065, size: 64, offset: 1216)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!115, !931, !891, !494, !895}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !908, file: !65, line: 1999, baseType: !1069, size: 64, offset: 1280)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!902, !931, !852, !115}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !908, file: !65, line: 2001, baseType: !1073, size: 64, offset: 1344)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!115, !931, !852, !902, !115}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !908, file: !65, line: 2003, baseType: !1077, size: 64, offset: 1408)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!115, !931, !852, !1080}
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !65, line: 76, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !908, file: !65, line: 2005, baseType: !1083, size: 64, offset: 1472)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!115, !852, !1080}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !908, file: !65, line: 2006, baseType: !1087, size: 64, offset: 1536)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!1090, !891}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !65, line: 3192, size: 192, elements: !1092)
!1092 = !{!1093, !1100}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1091, file: !65, line: 3193, baseType: !1094, size: 128)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1095, line: 296, size: 128, elements: !1096)
!1095 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1096 = !{!1097, !1098, !1099}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1094, file: !1095, line: 297, baseType: !517, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1094, file: !1095, line: 299, baseType: !218, size: 32, offset: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1094, file: !1095, line: 300, baseType: !220, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1091, file: !65, line: 3194, baseType: !698, size: 32, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !892, file: !65, line: 655, baseType: !1102, size: 64, offset: 448)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !65, line: 1190, size: 10752, elements: !1104)
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110, !2283, !2415, !2455, !2538, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2555, !2559, !2560, !2563, !2566, !2569, !2572, !2573, !2574, !2615, !3808, !3809, !3810, !3811, !3812, !3813, !3816, !3818, !3825, !3826, !3827, !3828, !3887, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1103, file: !65, line: 1191, baseType: !485, size: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1103, file: !65, line: 1192, baseType: !966, size: 32, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1103, file: !65, line: 1193, baseType: !230, size: 8, offset: 160)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1103, file: !65, line: 1194, baseType: !222, size: 64, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1103, file: !65, line: 1195, baseType: !530, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1103, file: !65, line: 1196, baseType: !1111, size: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !65, line: 2366, size: 576, elements: !1113)
!1113 = !{!1114, !1115, !1116, !1123, !1127, !1131, !1135, !2271, !2272, !2273, !2275, !2276, !2277, !2279, !2280, !2281, !2282}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1112, file: !65, line: 2367, baseType: !280, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1112, file: !65, line: 2368, baseType: !115, size: 32, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1112, file: !65, line: 2376, baseType: !1117, size: 64, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!115, !1120}
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1122, line: 32, flags: DIFlagFwdDecl)
!1122 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1112, file: !65, line: 2377, baseType: !1124, size: 64, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1126)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !65, line: 75, flags: DIFlagFwdDecl)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1112, file: !65, line: 2378, baseType: !1128, size: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!852, !1111, !115, !280, !220}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1112, file: !65, line: 2380, baseType: !1132, size: 64, offset: 320)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null, !1102}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1112, file: !65, line: 2381, baseType: !1136, size: 64, offset: 384)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !45, line: 402, size: 9216, align: 512, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1145, !1933, !1959, !1960, !1961, !1962, !1966, !1969, !1970, !1971, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2038, !2042, !2060, !2078, !2079, !2080, !2081, !2090, !2113, !2114, !2117, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2131, !2132, !2232, !2240, !2241, !2242, !2244, !2248, !2249, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2266, !2267, !2268, !2270}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1137, file: !45, line: 403, baseType: !44, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1137, file: !45, line: 406, baseType: !485, size: 128, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1137, file: !45, line: 409, baseType: !1142, size: 448, offset: 192)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1143)
!1143 = !{!1144}
!1144 = !DISubrange(count: 56)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1137, file: !45, line: 417, baseType: !1146, size: 768, offset: 640)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !45, line: 45, size: 768, elements: !1147)
!1147 = !{!1148, !1916, !1917, !1918, !1921}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1146, file: !45, line: 46, baseType: !1149, size: 512)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1150, line: 64, size: 512, elements: !1151)
!1150 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1151 = !{!1152, !1153, !1154, !1156, !1198, !1795, !1906, !1911, !1912, !1913, !1914, !1915}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1149, file: !1150, line: 65, baseType: !280, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1149, file: !1150, line: 66, baseType: !485, size: 128, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1149, file: !1150, line: 67, baseType: !1155, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1149, file: !1150, line: 68, baseType: !1157, size: 64, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1150, line: 168, size: 768, elements: !1159)
!1159 = !{!1160, !1161, !1162, !1163}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1158, file: !1150, line: 169, baseType: !485, size: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1158, file: !1150, line: 170, baseType: !517, size: 32, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1158, file: !1150, line: 171, baseType: !1149, size: 512, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1158, file: !1150, line: 172, baseType: !1164, size: 64, offset: 704)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1166)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1150, line: 133, size: 192, elements: !1167)
!1167 = !{!1168, !1175, !1180}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1166, file: !1150, line: 134, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1170)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!115, !1173}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1149)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1166, file: !1150, line: 135, baseType: !1176, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1177)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!280, !1173}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1166, file: !1150, line: 136, baseType: !1181, size: 64, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1182)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!115, !1173, !1185}
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1150, line: 125, size: 20736, elements: !1187)
!1187 = !{!1188, !1190, !1192, !1193, !1197}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1186, file: !1150, line: 126, baseType: !1189, size: 192)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 192, elements: !557)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1186, file: !1150, line: 127, baseType: !1191, size: 4096, offset: 192)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 4096, elements: !20)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1186, file: !1150, line: 128, baseType: !115, size: 32, offset: 4288)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1186, file: !1150, line: 129, baseType: !1194, size: 16384, offset: 4320)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1195)
!1195 = !{!1196}
!1196 = !DISubrange(count: 2048)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1186, file: !1150, line: 130, baseType: !115, size: 32, offset: 20704)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1149, file: !1150, line: 69, baseType: !1199, size: 64, offset: 320)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1201)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1150, line: 116, size: 384, elements: !1202)
!1202 = !{!1203, !1207, !1226, !1757, !1785, !1789}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1201, file: !1150, line: 117, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !1155}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1201, file: !1150, line: 118, baseType: !1208, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1210)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1211, line: 254, size: 128, elements: !1212)
!1211 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1212 = !{!1213, !1222}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1210, file: !1211, line: 255, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!1044, !1155, !1217, !741}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1211, line: 30, size: 128, elements: !1219)
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1218, file: !1211, line: 31, baseType: !280, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1218, file: !1211, line: 32, baseType: !895, size: 16, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1210, file: !1211, line: 256, baseType: !1223, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!1044, !1155, !1217, !280, !1047}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1201, file: !1150, line: 119, baseType: !1227, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1230)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1211, line: 84, size: 320, elements: !1231)
!1231 = !{!1232, !1233, !1237, !1753, !1755}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1230, file: !1211, line: 85, baseType: !280, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1230, file: !1211, line: 86, baseType: !1234, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!895, !1155, !1217, !115}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1230, file: !1211, line: 88, baseType: !1238, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!895, !1155, !1241, !115}
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1211, line: 175, size: 512, elements: !1243)
!1243 = !{!1244, !1245, !1246, !1247, !1524, !1528, !1529}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1242, file: !1211, line: 176, baseType: !1218, size: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1242, file: !1211, line: 177, baseType: !1047, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1242, file: !1211, line: 178, baseType: !220, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1242, file: !1211, line: 179, baseType: !1248, size: 64, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!1251}
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !65, line: 472, size: 1536, align: 64, elements: !1253)
!1253 = !{!1254, !1255, !1256, !1257, !1258, !1259, !1267, !1268, !1269, !1516, !1517, !1518, !1521, !1522, !1523}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1252, file: !65, line: 473, baseType: !891, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1252, file: !65, line: 474, baseType: !1094, size: 128, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1252, file: !65, line: 475, baseType: !673, size: 320, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1252, file: !65, line: 476, baseType: !218, size: 32, offset: 512)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1252, file: !65, line: 477, baseType: !464, size: 32, offset: 544)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1252, file: !65, line: 482, baseType: !1260, size: 128, offset: 576)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !666, line: 26, size: 128, elements: !1261)
!1261 = !{!1262, !1266}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1260, file: !666, line: 27, baseType: !1263, size: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !666, line: 12, size: 64, elements: !1264)
!1264 = !{!1265}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1263, file: !666, line: 13, baseType: !670, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1260, file: !666, line: 28, baseType: !670, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1252, file: !65, line: 483, baseType: !222, size: 64, offset: 704)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1252, file: !65, line: 484, baseType: !222, size: 64, offset: 768)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1252, file: !65, line: 485, baseType: !1270, size: 64, offset: 832)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1272)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !65, line: 404, size: 1280, elements: !1273)
!1273 = !{!1274, !1341, !1411, !1415, !1419, !1425, !1431, !1435, !1440, !1444, !1448, !1452, !1480, !1484, !1488, !1492, !1497, !1501, !1508, !1512}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1272, file: !65, line: 405, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!115, !1278, !1339}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1280, line: 74, size: 512, align: 128, elements: !1281)
!1280 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1281 = !{!1282, !1283, !1333, !1338}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1279, file: !1280, line: 75, baseType: !222, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, scope: !1279, file: !1280, line: 83, baseType: !1284, size: 320, offset: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1279, file: !1280, line: 83, size: 320, elements: !1285)
!1285 = !{!1286, !1307, !1321, !1325, !1332}
!1286 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !1280, line: 84, baseType: !1287, size: 320)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1284, file: !1280, line: 84, size: 320, elements: !1288)
!1288 = !{!1289, !1300, !1301, !1306}
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !1280, line: 90, baseType: !1290, size: 128)
!1290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1287, file: !1280, line: 90, size: 128, elements: !1291)
!1291 = !{!1292, !1293, !1298, !1299}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1290, file: !1280, line: 91, baseType: !485, size: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, scope: !1290, file: !1280, line: 94, baseType: !1294, size: 128)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1290, file: !1280, line: 94, size: 128, elements: !1295)
!1295 = !{!1296, !1297}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1294, file: !1280, line: 96, baseType: !220, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1294, file: !1280, line: 98, baseType: !37, size: 32, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1290, file: !1280, line: 102, baseType: !485, size: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1290, file: !1280, line: 103, baseType: !485, size: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1287, file: !1280, line: 106, baseType: !1251, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !1280, line: 107, baseType: !1302, size: 64, offset: 192)
!1302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1287, file: !1280, line: 107, size: 64, elements: !1303)
!1303 = !{!1304, !1305}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1302, file: !1280, line: 108, baseType: !222, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1302, file: !1280, line: 109, baseType: !222, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1287, file: !1280, line: 117, baseType: !222, size: 64, offset: 256)
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !1280, line: 119, baseType: !1308, size: 320)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1284, file: !1280, line: 119, size: 320, elements: !1309)
!1309 = !{!1310, !1311, !1314, !1315, !1316}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1308, file: !1280, line: 124, baseType: !222, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1308, file: !1280, line: 125, baseType: !1312, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1280, line: 125, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1308, file: !1280, line: 126, baseType: !222, size: 64, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1308, file: !1280, line: 127, baseType: !222, size: 64, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !1280, line: 128, baseType: !1317, size: 64, offset: 256)
!1317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1308, file: !1280, line: 128, size: 64, elements: !1318)
!1318 = !{!1319, !1320}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1317, file: !1280, line: 133, baseType: !222, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1317, file: !1280, line: 138, baseType: !441, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !1280, line: 141, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1284, file: !1280, line: 141, size: 64, elements: !1323)
!1323 = !{!1324}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1322, file: !1280, line: 142, baseType: !222, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !1280, line: 144, baseType: !1326, size: 128)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1284, file: !1280, line: 144, size: 128, elements: !1327)
!1327 = !{!1328, !1331}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1326, file: !1280, line: 146, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1280, line: 146, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1326, file: !1280, line: 147, baseType: !220, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1284, file: !1280, line: 161, baseType: !507, size: 128, align: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1279, file: !1280, line: 164, baseType: !1334, size: 32, offset: 384)
!1334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1279, file: !1280, line: 164, size: 32, elements: !1335)
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1334, file: !1280, line: 169, baseType: !464, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1334, file: !1280, line: 177, baseType: !37, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1279, file: !1280, line: 181, baseType: !464, size: 32, offset: 416)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !65, line: 309, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1272, file: !65, line: 406, baseType: !1342, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!115, !494, !1345}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1280, line: 293, size: 1536, elements: !1347)
!1347 = !{!1348, !1378, !1392}
!1348 = !DIDerivedType(tag: DW_TAG_member, scope: !1346, file: !1280, line: 295, baseType: !1349, size: 512)
!1349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1346, file: !1280, line: 295, size: 512, elements: !1350)
!1350 = !{!1351, !1377}
!1351 = !DIDerivedType(tag: DW_TAG_member, scope: !1349, file: !1280, line: 296, baseType: !1352, size: 448)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1349, file: !1280, line: 296, size: 448, elements: !1353)
!1353 = !{!1354, !1355, !1364, !1365, !1366, !1375, !1376}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1352, file: !1280, line: 298, baseType: !222, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, scope: !1352, file: !1280, line: 299, baseType: !1356, size: 128, offset: 64)
!1356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1352, file: !1280, line: 299, size: 128, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1356, file: !1280, line: 300, baseType: !485, size: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, scope: !1356, file: !1280, line: 302, baseType: !1360, size: 128)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1356, file: !1280, line: 302, size: 128, elements: !1361)
!1361 = !{!1362, !1363}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1360, file: !1280, line: 303, baseType: !220, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1360, file: !1280, line: 305, baseType: !37, size: 32, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1352, file: !1280, line: 310, baseType: !1251, size: 64, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1352, file: !1280, line: 311, baseType: !222, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, scope: !1352, file: !1280, line: 312, baseType: !1367, size: 64, offset: 320)
!1367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1352, file: !1280, line: 312, size: 64, elements: !1368)
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1367, file: !1280, line: 313, baseType: !220, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1367, file: !1280, line: 314, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1280, line: 257, baseType: !1372)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1280, line: 255, size: 64, elements: !1373)
!1373 = !{!1374}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1372, file: !1280, line: 256, baseType: !222, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1352, file: !1280, line: 316, baseType: !464, size: 32, offset: 384)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1352, file: !1280, line: 317, baseType: !464, size: 32, offset: 416)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1349, file: !1280, line: 323, baseType: !1279, size: 512, align: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, scope: !1346, file: !1280, line: 325, baseType: !1379, size: 512, offset: 512)
!1379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1346, file: !1280, line: 325, size: 512, elements: !1380)
!1380 = !{!1381, !1391}
!1381 = !DIDerivedType(tag: DW_TAG_member, scope: !1379, file: !1280, line: 326, baseType: !1382, size: 320)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1379, file: !1280, line: 326, size: 320, elements: !1383)
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1389, !1390}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1382, file: !1280, line: 327, baseType: !222, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1382, file: !1280, line: 328, baseType: !222, size: 64, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1382, file: !1280, line: 329, baseType: !222, size: 64, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1382, file: !1280, line: 331, baseType: !464, size: 32, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1382, file: !1280, line: 332, baseType: !464, size: 32, offset: 224)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1382, file: !1280, line: 333, baseType: !464, size: 32, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1382, file: !1280, line: 335, baseType: !37, size: 32, offset: 288)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1379, file: !1280, line: 339, baseType: !1279, size: 512, align: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, scope: !1346, file: !1280, line: 341, baseType: !1393, size: 512, offset: 1024)
!1393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1346, file: !1280, line: 341, size: 512, elements: !1394)
!1394 = !{!1395, !1404, !1410}
!1395 = !DIDerivedType(tag: DW_TAG_member, scope: !1393, file: !1280, line: 342, baseType: !1396, size: 384)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1393, file: !1280, line: 342, size: 384, elements: !1397)
!1397 = !{!1398, !1399, !1400, !1401, !1402, !1403}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1396, file: !1280, line: 343, baseType: !222, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1396, file: !1280, line: 344, baseType: !222, size: 64, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1396, file: !1280, line: 346, baseType: !220, size: 64, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1396, file: !1280, line: 347, baseType: !220, size: 64, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1396, file: !1280, line: 348, baseType: !220, size: 64, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1396, file: !1280, line: 349, baseType: !220, size: 64, offset: 320)
!1404 = !DIDerivedType(tag: DW_TAG_member, scope: !1393, file: !1280, line: 352, baseType: !1405, size: 256)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1393, file: !1280, line: 352, size: 256, elements: !1406)
!1406 = !{!1407, !1408, !1409}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1405, file: !1280, line: 353, baseType: !222, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1405, file: !1280, line: 354, baseType: !222, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1405, file: !1280, line: 356, baseType: !485, size: 128, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1393, file: !1280, line: 359, baseType: !1279, size: 512, align: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1272, file: !65, line: 409, baseType: !1412, size: 64, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!115, !1251, !1339}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1272, file: !65, line: 412, baseType: !1416, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!730, !1251, !1345}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1272, file: !65, line: 414, baseType: !1420, size: 64, offset: 256)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{null, !1423}
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !65, line: 310, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1272, file: !65, line: 416, baseType: !1426, size: 64, offset: 320)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!115, !494, !1251, !530, !37, !1429, !1430}
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1272, file: !65, line: 419, baseType: !1432, size: 64, offset: 384)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!115, !494, !1251, !530, !37, !37, !1278, !220}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1272, file: !65, line: 424, baseType: !1436, size: 64, offset: 448)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!1439, !1251, !1439}
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !219, line: 131, baseType: !641)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1272, file: !65, line: 425, baseType: !1441, size: 64, offset: 512)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{null, !1345, !1047, !1047}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1272, file: !65, line: 426, baseType: !1445, size: 64, offset: 576)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!730, !1345, !218}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1272, file: !65, line: 427, baseType: !1449, size: 64, offset: 640)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{null, !1345}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1272, file: !65, line: 428, baseType: !1453, size: 64, offset: 704)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!1044, !1456, !1478}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !65, line: 373, size: 384, elements: !1458)
!1458 = !{!1459, !1460, !1461, !1465, !1466, !1467, !1468}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1457, file: !65, line: 374, baseType: !494, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1457, file: !65, line: 375, baseType: !530, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1457, file: !65, line: 376, baseType: !1462, size: 64, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{null, !1456, !221}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1457, file: !65, line: 377, baseType: !220, size: 64, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1457, file: !65, line: 378, baseType: !115, size: 32, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1457, file: !65, line: 379, baseType: !427, size: 16, offset: 288)
!1468 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !65, line: 380, baseType: !1469, size: 64, offset: 320)
!1469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1457, file: !65, line: 380, size: 64, elements: !1470)
!1470 = !{!1471, !1474}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1469, file: !65, line: 386, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !65, line: 386, flags: DIFlagFwdDecl)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1469, file: !65, line: 395, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!1044, !220}
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !65, line: 69, flags: DIFlagFwdDecl)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1272, file: !65, line: 433, baseType: !1481, size: 64, offset: 768)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!115, !1251, !1345, !1345, !51}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1272, file: !65, line: 435, baseType: !1485, size: 64, offset: 832)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!115, !1345}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1272, file: !65, line: 436, baseType: !1489, size: 64, offset: 896)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!730, !1345, !1047, !1047}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1272, file: !65, line: 438, baseType: !1493, size: 64, offset: 960)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{null, !1345, !1496, !1496}
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1272, file: !65, line: 439, baseType: !1498, size: 64, offset: 1024)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!115, !1251, !1278}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1272, file: !65, line: 442, baseType: !1502, size: 64, offset: 1088)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!115, !1505, !494, !1507}
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !65, line: 66, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1272, file: !65, line: 444, baseType: !1509, size: 64, offset: 1152)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{null, !494}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1272, file: !65, line: 445, baseType: !1513, size: 64, offset: 1216)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!115, !1456, !1478}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1252, file: !65, line: 486, baseType: !222, size: 64, offset: 896)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1252, file: !65, line: 487, baseType: !673, size: 320, offset: 960)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1252, file: !65, line: 488, baseType: !1519, size: 32, offset: 1280)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1520, line: 8, baseType: !698)
!1520 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1252, file: !65, line: 489, baseType: !517, size: 32, offset: 1312)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1252, file: !65, line: 490, baseType: !485, size: 128, offset: 1344)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1252, file: !65, line: 491, baseType: !220, size: 64, offset: 1472)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1242, file: !1211, line: 180, baseType: !1525, size: 64, offset: 320)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!1044, !494, !1155, !1241, !741, !530, !1047}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1242, file: !1211, line: 182, baseType: !1525, size: 64, offset: 384)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1242, file: !1211, line: 184, baseType: !1530, size: 64, offset: 448)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!115, !494, !1155, !1241, !1533}
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1280, line: 625, size: 1344, elements: !1535)
!1535 = !{!1536, !1545, !1711, !1717, !1724, !1725, !1730, !1731, !1736, !1737, !1740, !1744, !1745, !1746, !1747, !1748, !1751}
!1536 = !DIDerivedType(tag: DW_TAG_member, scope: !1534, file: !1280, line: 628, baseType: !1537, size: 128)
!1537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1534, file: !1280, line: 628, size: 128, elements: !1538)
!1538 = !{!1539, !1544}
!1539 = !DIDerivedType(tag: DW_TAG_member, scope: !1537, file: !1280, line: 629, baseType: !1540, size: 128)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1537, file: !1280, line: 629, size: 128, elements: !1541)
!1541 = !{!1542, !1543}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1540, file: !1280, line: 631, baseType: !222, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1540, file: !1280, line: 632, baseType: !222, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1537, file: !1280, line: 635, baseType: !507, size: 128, align: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1534, file: !1280, line: 639, baseType: !1546, size: 64, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1280, line: 733, size: 10240, elements: !1548)
!1548 = !{!1549, !1709}
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !1280, line: 734, baseType: !1550, size: 10240)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1547, file: !1280, line: 734, size: 10240, elements: !1551)
!1551 = !{!1552, !1556, !1570, !1574, !1575, !1576, !1577, !1578, !1579, !1588, !1589, !1590, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1627, !1629, !1632, !1678, !1679, !1680, !1683, !1684, !1685, !1688, !1689, !1690, !1696, !1697}
!1552 = !DIDerivedType(tag: DW_TAG_member, scope: !1550, file: !1280, line: 739, baseType: !1553, size: 512, align: 512)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1550, file: !1280, line: 739, size: 512, align: 512, elements: !1554)
!1554 = !{!1555}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1553, file: !1280, line: 747, baseType: !464, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1550, file: !1280, line: 750, baseType: !1557, size: 128, offset: 512)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1558, line: 218, size: 128, elements: !1559)
!1558 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1559 = !{!1560, !1568, !1569}
!1560 = !DIDerivedType(tag: DW_TAG_member, scope: !1557, file: !1558, line: 219, baseType: !1561, size: 32)
!1561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1557, file: !1558, line: 219, size: 32, elements: !1562)
!1562 = !{!1563, !1564}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1561, file: !1558, line: 220, baseType: !517, size: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1561, file: !1558, line: 221, baseType: !1565)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1558, line: 197, baseType: !1566)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1558, line: 197, elements: !1567)
!1567 = !{}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1557, file: !1558, line: 223, baseType: !37, size: 32, offset: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1557, file: !1558, line: 224, baseType: !220, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1550, file: !1280, line: 752, baseType: !1571, size: 64, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!222, !494, !222, !222, !222, !222}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1550, file: !1280, line: 756, baseType: !222, size: 64, offset: 704)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1550, file: !1280, line: 757, baseType: !222, size: 64, offset: 768)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1550, file: !1280, line: 760, baseType: !222, size: 64, offset: 832)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1550, file: !1280, line: 761, baseType: !222, size: 64, offset: 896)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1550, file: !1280, line: 763, baseType: !222, size: 64, offset: 960)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1550, file: !1280, line: 764, baseType: !1580, size: 64, offset: 1024)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1582, line: 299, baseType: !1583)
!1582 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1582, line: 299, size: 64, elements: !1584)
!1584 = !{!1585}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1583, file: !1582, line: 299, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1587, line: 18, baseType: !222)
!1587 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1550, file: !1280, line: 773, baseType: !464, size: 32, offset: 1088)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1550, file: !1280, line: 785, baseType: !464, size: 32, offset: 1120)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1550, file: !1280, line: 795, baseType: !1591, size: 64, offset: 1152)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1280, line: 726, size: 128, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1592, file: !1280, line: 727, baseType: !641, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1592, file: !1280, line: 728, baseType: !115, size: 32, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1550, file: !1280, line: 801, baseType: !222, size: 64, offset: 1216)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1550, file: !1280, line: 804, baseType: !441, size: 64, offset: 1280)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1550, file: !1280, line: 806, baseType: !115, size: 32, offset: 1344)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1550, file: !1280, line: 808, baseType: !517, size: 32, offset: 1376)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1550, file: !1280, line: 823, baseType: !673, size: 320, offset: 1408)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1550, file: !1280, line: 825, baseType: !485, size: 128, offset: 1728)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1550, file: !1280, line: 845, baseType: !115, size: 32, offset: 1856)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1550, file: !1280, line: 849, baseType: !222, size: 64, offset: 1920)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1550, file: !1280, line: 850, baseType: !222, size: 64, offset: 1984)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1550, file: !1280, line: 852, baseType: !222, size: 64, offset: 2048)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1550, file: !1280, line: 853, baseType: !222, size: 64, offset: 2112)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1550, file: !1280, line: 854, baseType: !443, size: 64, offset: 2176)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1550, file: !1280, line: 855, baseType: !222, size: 64, offset: 2240)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1550, file: !1280, line: 856, baseType: !222, size: 64, offset: 2304)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1550, file: !1280, line: 857, baseType: !222, size: 64, offset: 2368)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1550, file: !1280, line: 858, baseType: !222, size: 64, offset: 2432)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1550, file: !1280, line: 865, baseType: !863, size: 32, offset: 2496)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1550, file: !1280, line: 867, baseType: !517, size: 32, offset: 2528)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1550, file: !1280, line: 869, baseType: !222, size: 64, offset: 2560)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1550, file: !1280, line: 869, baseType: !222, size: 64, offset: 2624)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1550, file: !1280, line: 869, baseType: !222, size: 64, offset: 2688)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1550, file: !1280, line: 869, baseType: !222, size: 64, offset: 2752)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1550, file: !1280, line: 870, baseType: !222, size: 64, offset: 2816)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1550, file: !1280, line: 870, baseType: !222, size: 64, offset: 2880)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1550, file: !1280, line: 870, baseType: !222, size: 64, offset: 2944)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1550, file: !1280, line: 871, baseType: !222, size: 64, offset: 3008)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1550, file: !1280, line: 871, baseType: !222, size: 64, offset: 3072)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1550, file: !1280, line: 871, baseType: !222, size: 64, offset: 3136)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1550, file: !1280, line: 871, baseType: !222, size: 64, offset: 3200)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1550, file: !1280, line: 873, baseType: !1626, size: 3328, offset: 3264)
!1626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 3328, elements: !251)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1550, file: !1280, line: 875, baseType: !1628, size: 1280, offset: 6592)
!1628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !789, size: 1280, elements: !236)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1550, file: !1280, line: 877, baseType: !1630, size: 64, offset: 7872)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1280, line: 877, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1550, file: !1280, line: 880, baseType: !1633, size: 1088, offset: 7936)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1634, line: 72, baseType: !1635)
!1634 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1634, line: 23, size: 1088, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1640, !1641, !1644, !1645, !1646, !1647, !1674, !1675, !1676}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1635, file: !1634, line: 28, baseType: !641, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1635, file: !1634, line: 38, baseType: !443, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1635, file: !1634, line: 40, baseType: !222, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1635, file: !1634, line: 43, baseType: !673, size: 320, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1635, file: !1634, line: 44, baseType: !1642, size: 64, offset: 512)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1634, line: 44, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1635, file: !1634, line: 48, baseType: !222, size: 64, offset: 576)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1635, file: !1634, line: 59, baseType: !437, size: 256, offset: 640)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1635, file: !1634, line: 60, baseType: !220, size: 64, offset: 896)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1635, file: !1634, line: 61, baseType: !1648, size: 64, offset: 960)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1650)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1651, line: 13, size: 1216, elements: !1652)
!1651 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1652 = !{!1653, !1654, !1655, !1656, !1657, !1658, !1659, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1650, file: !1651, line: 14, baseType: !220, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1650, file: !1651, line: 15, baseType: !222, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1650, file: !1651, line: 17, baseType: !222, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1650, file: !1651, line: 17, baseType: !222, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1650, file: !1651, line: 18, baseType: !222, size: 64, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1650, file: !1651, line: 18, baseType: !222, size: 64, offset: 320)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1650, file: !1651, line: 19, baseType: !1660, size: 64, offset: 384)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1650, file: !1651, line: 21, baseType: !221, size: 64, offset: 448)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1650, file: !1651, line: 23, baseType: !221, size: 64, offset: 512)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1650, file: !1651, line: 24, baseType: !221, size: 64, offset: 576)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1650, file: !1651, line: 25, baseType: !221, size: 64, offset: 640)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1650, file: !1651, line: 26, baseType: !221, size: 64, offset: 704)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1650, file: !1651, line: 27, baseType: !221, size: 64, offset: 768)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1650, file: !1651, line: 28, baseType: !221, size: 64, offset: 832)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1650, file: !1651, line: 29, baseType: !221, size: 64, offset: 896)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1650, file: !1651, line: 30, baseType: !221, size: 64, offset: 960)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1650, file: !1651, line: 31, baseType: !221, size: 64, offset: 1024)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1650, file: !1651, line: 32, baseType: !221, size: 64, offset: 1088)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1650, file: !1651, line: 33, baseType: !221, size: 64, offset: 1152)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1635, file: !1634, line: 63, baseType: !464, size: 32, offset: 1024)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1635, file: !1634, line: 69, baseType: !427, size: 16, offset: 1056)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1635, file: !1634, line: 70, baseType: !1677, size: 16, offset: 1072)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !428, line: 18, baseType: !355)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1550, file: !1280, line: 882, baseType: !222, size: 64, offset: 9024)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1550, file: !1280, line: 885, baseType: !517, size: 32, offset: 9088)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1550, file: !1280, line: 886, baseType: !1681, size: 64, offset: 9152)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1280, line: 732, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1550, file: !1280, line: 901, baseType: !814, size: 64, offset: 9216)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1550, file: !1280, line: 904, baseType: !494, size: 64, offset: 9280)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1550, file: !1280, line: 906, baseType: !1686, size: 64, offset: 9344)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1280, line: 906, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1550, file: !1280, line: 930, baseType: !464, size: 32, offset: 9408)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1550, file: !1280, line: 933, baseType: !464, size: 32, offset: 9440)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1550, file: !1280, line: 935, baseType: !1691, size: 64, offset: 9472)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !87, line: 103, size: 64, elements: !1692)
!1692 = !{!1693}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1691, file: !87, line: 104, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !87, line: 101, flags: DIFlagFwdDecl)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1550, file: !1280, line: 940, baseType: !441, size: 64, offset: 9536)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1550, file: !1280, line: 942, baseType: !1698, size: 256, offset: 9600)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1699, line: 98, size: 256, elements: !1700)
!1699 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1700 = !{!1701, !1702, !1703}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1698, file: !1699, line: 99, baseType: !441, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1698, file: !1699, line: 100, baseType: !485, size: 128, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1698, file: !1699, line: 101, baseType: !1704, size: 64, offset: 192)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1699, line: 21, baseType: !1705)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{null, !1708}
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1547, file: !1280, line: 986, baseType: !1710, offset: 10240)
!1710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, elements: !600)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1534, file: !1280, line: 640, baseType: !1712, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1582, line: 297, baseType: !1713)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1582, line: 297, size: 64, elements: !1714)
!1714 = !{!1715}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1713, file: !1582, line: 297, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1587, line: 19, baseType: !222)
!1717 = !DIDerivedType(tag: DW_TAG_member, scope: !1534, file: !1280, line: 646, baseType: !1718, size: 64, offset: 256)
!1718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1534, file: !1280, line: 646, size: 64, elements: !1719)
!1719 = !{!1720, !1723}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1718, file: !1280, line: 647, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1722)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1280, line: 542, baseType: !222)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1718, file: !1280, line: 648, baseType: !1722, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1534, file: !1280, line: 666, baseType: !115, size: 32, offset: 320)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1534, file: !1280, line: 667, baseType: !1726, size: 64, offset: 384)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1280, line: 579, size: 320, elements: !1728)
!1728 = !{!1729}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1727, file: !1280, line: 580, baseType: !673, size: 320)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1534, file: !1280, line: 670, baseType: !730, size: 8, offset: 448)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1534, file: !1280, line: 681, baseType: !1732, size: 256, offset: 512)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1534, file: !1280, line: 678, size: 256, elements: !1733)
!1733 = !{!1734, !1735}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1732, file: !1280, line: 679, baseType: !665, size: 192, align: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1732, file: !1280, line: 680, baseType: !222, size: 64, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1534, file: !1280, line: 689, baseType: !485, size: 128, offset: 768)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1534, file: !1280, line: 691, baseType: !1738, size: 64, offset: 896)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1280, line: 691, flags: DIFlagFwdDecl)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1534, file: !1280, line: 694, baseType: !1741, size: 64, offset: 960)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1743)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1280, line: 694, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1534, file: !1280, line: 697, baseType: !222, size: 64, offset: 1024)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1534, file: !1280, line: 699, baseType: !494, size: 64, offset: 1088)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1534, file: !1280, line: 700, baseType: !220, size: 64, offset: 1152)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1534, file: !1280, line: 711, baseType: !441, size: 64, offset: 1216)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1534, file: !1280, line: 717, baseType: !1749, size: 64, offset: 1280)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1280, line: 717, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1534, file: !1280, line: 722, baseType: !1752, offset: 1344)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1280, line: 570, elements: !1567)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1230, file: !1211, line: 90, baseType: !1754, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1230, file: !1211, line: 91, baseType: !1756, size: 64, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1201, file: !1150, line: 120, baseType: !1758, size: 64, offset: 192)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!1761, !1173}
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1763)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !59, line: 39, size: 384, elements: !1764)
!1764 = !{!1765, !1766, !1770, !1774, !1780, !1784}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1763, file: !59, line: 40, baseType: !58, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1763, file: !59, line: 41, baseType: !1767, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!730}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1763, file: !59, line: 42, baseType: !1771, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!220}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1763, file: !59, line: 43, baseType: !1775, size: 64, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!1660, !1778}
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !59, line: 19, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1763, file: !59, line: 44, baseType: !1781, size: 64, offset: 256)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!1660}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1763, file: !59, line: 45, baseType: !923, size: 64, offset: 320)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1201, file: !1150, line: 121, baseType: !1786, size: 64, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!1660, !1173}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1201, file: !1150, line: 122, baseType: !1790, size: 64, offset: 320)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{null, !1173, !1793, !1794}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1149, file: !1150, line: 70, baseType: !1796, size: 64, offset: 384)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1122, line: 190, size: 1152, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1898, !1899, !1900, !1901, !1902, !1905}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1797, file: !1122, line: 191, baseType: !464, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1797, file: !1122, line: 192, baseType: !464, size: 32, offset: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1797, file: !1122, line: 202, baseType: !1796, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1797, file: !1122, line: 203, baseType: !280, size: 64, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1797, file: !1122, line: 205, baseType: !665, size: 192, align: 64, offset: 192)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1797, file: !1122, line: 207, baseType: !1660, size: 64, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1797, file: !1122, line: 208, baseType: !37, size: 32, offset: 448)
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1797, file: !1122, line: 209, baseType: !1807, size: 256, offset: 512)
!1807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1797, file: !1122, line: 209, size: 256, elements: !1808)
!1808 = !{!1809, !1818, !1822}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1807, file: !1122, line: 210, baseType: !1810, size: 256)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1122, line: 153, size: 256, elements: !1811)
!1811 = !{!1812, !1813, !1814, !1817}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1810, file: !1122, line: 154, baseType: !222, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1810, file: !1122, line: 156, baseType: !1263, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1810, file: !1122, line: 162, baseType: !1815, size: 64, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1122, line: 162, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1810, file: !1122, line: 167, baseType: !222, size: 64, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1807, file: !1122, line: 211, baseType: !1819, size: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1122, line: 170, size: 64, elements: !1820)
!1820 = !{!1821}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1819, file: !1122, line: 171, baseType: !1796, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1807, file: !1122, line: 212, baseType: !1823, size: 256)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1122, line: 174, size: 256, elements: !1824)
!1824 = !{!1825, !1893, !1896, !1897}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1823, file: !1122, line: 175, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1828)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1122, line: 271, size: 768, elements: !1829)
!1829 = !{!1830, !1853, !1857, !1861, !1866, !1870, !1874, !1878, !1879, !1880, !1881, !1889}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1828, file: !1122, line: 276, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!115, !1834}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1122, line: 251, size: 1216, elements: !1836)
!1836 = !{!1837, !1838, !1839, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1835, file: !1122, line: 253, baseType: !1796, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1835, file: !1122, line: 254, baseType: !494, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1835, file: !1122, line: 255, baseType: !1840, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1842, line: 66, flags: DIFlagFwdDecl)
!1842 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1835, file: !1122, line: 256, baseType: !220, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1835, file: !1122, line: 259, baseType: !437, size: 256, offset: 256)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1835, file: !1122, line: 260, baseType: !437, size: 256, offset: 512)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1835, file: !1122, line: 261, baseType: !115, size: 32, offset: 768)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1835, file: !1122, line: 262, baseType: !485, size: 128, offset: 832)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1835, file: !1122, line: 263, baseType: !741, size: 64, offset: 960)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1835, file: !1122, line: 265, baseType: !1047, size: 64, offset: 1024)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1835, file: !1122, line: 266, baseType: !730, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1835, file: !1122, line: 267, baseType: !730, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1835, file: !1122, line: 268, baseType: !1741, size: 64, offset: 1152)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1828, file: !1122, line: 277, baseType: !1854, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{null, !1834}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1828, file: !1122, line: 290, baseType: !1858, size: 64, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!115, !1840, !220}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1828, file: !1122, line: 292, baseType: !1862, size: 64, offset: 192)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!220, !1840, !1865}
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1828, file: !1122, line: 293, baseType: !1867, size: 64, offset: 256)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!220, !1840, !220, !1865}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1828, file: !1122, line: 294, baseType: !1871, size: 64, offset: 320)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{null, !1840, !220}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1828, file: !1122, line: 296, baseType: !1875, size: 64, offset: 384)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!1044, !1834, !741, !1047, !530}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1828, file: !1122, line: 306, baseType: !1047, size: 64, offset: 448)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1828, file: !1122, line: 313, baseType: !730, size: 8, offset: 512)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1828, file: !1122, line: 314, baseType: !1875, size: 64, offset: 576)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1828, file: !1122, line: 317, baseType: !1882, size: 64, offset: 640)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!1885, !1834, !1887}
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1886, line: 59, baseType: !37)
!1886 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1122, line: 31, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1828, file: !1122, line: 320, baseType: !1890, size: 64, offset: 704)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!115, !1834, !1533}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1823, file: !1122, line: 176, baseType: !1894, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1122, line: 35, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1823, file: !1122, line: 177, baseType: !530, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1823, file: !1122, line: 178, baseType: !1796, size: 64, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1797, file: !1122, line: 215, baseType: !220, size: 64, offset: 768)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1797, file: !1122, line: 221, baseType: !641, size: 64, offset: 832)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1797, file: !1122, line: 223, baseType: !291, size: 16, offset: 896)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1797, file: !1122, line: 224, baseType: !895, size: 16, offset: 912)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1797, file: !1122, line: 225, baseType: !1903, size: 64, offset: 960)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1122, line: 36, flags: DIFlagFwdDecl)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1797, file: !1122, line: 227, baseType: !507, size: 128, align: 64, offset: 1024)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1149, file: !1150, line: 71, baseType: !1907, size: 32, offset: 448)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1908, line: 19, size: 32, elements: !1909)
!1908 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1909 = !{!1910}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1907, file: !1908, line: 20, baseType: !565, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1149, file: !1150, line: 73, baseType: !37, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1149, file: !1150, line: 74, baseType: !37, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1149, file: !1150, line: 75, baseType: !37, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1149, file: !1150, line: 76, baseType: !37, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1149, file: !1150, line: 77, baseType: !37, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1146, file: !45, line: 47, baseType: !1136, size: 64, offset: 512)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1146, file: !45, line: 48, baseType: !1155, size: 64, offset: 576)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1146, file: !45, line: 49, baseType: !1919, size: 64, offset: 640)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !45, line: 49, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1146, file: !45, line: 50, baseType: !1922, size: 64, offset: 704)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1924, line: 26, size: 256, elements: !1925)
!1924 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1925 = !{!1926, !1927}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1923, file: !1924, line: 27, baseType: !37, size: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1923, file: !1924, line: 28, baseType: !1928, size: 192, offset: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1929, line: 43, size: 192, elements: !1930)
!1929 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1928, file: !1929, line: 44, baseType: !451, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1928, file: !1929, line: 45, baseType: !485, size: 128, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1137, file: !45, line: 418, baseType: !1934, size: 64, offset: 1408)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !45, line: 53, size: 448, elements: !1936)
!1936 = !{!1937, !1938, !1943, !1947, !1951, !1955}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1935, file: !45, line: 54, baseType: !1218, size: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1935, file: !45, line: 55, baseType: !1939, size: 64, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!1044, !1934, !1942, !741}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1935, file: !45, line: 57, baseType: !1944, size: 64, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!1044, !1934, !1942, !280, !1047}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1935, file: !45, line: 59, baseType: !1948, size: 64, offset: 256)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !1136, !280}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1935, file: !45, line: 60, baseType: !1952, size: 64, offset: 320)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!115, !1136}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1935, file: !45, line: 61, baseType: !1956, size: 64, offset: 384)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{null, !1136}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1137, file: !45, line: 419, baseType: !280, size: 64, offset: 1472)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1137, file: !45, line: 420, baseType: !280, size: 64, offset: 1536)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1137, file: !45, line: 421, baseType: !1155, size: 64, offset: 1600)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1137, file: !45, line: 424, baseType: !1963, size: 64, offset: 1664)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1965)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !45, line: 424, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1137, file: !45, line: 425, baseType: !1967, size: 64, offset: 1728)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1137, file: !45, line: 426, baseType: !37, size: 32, offset: 1792)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1137, file: !45, line: 435, baseType: !437, size: 256, offset: 1856)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1137, file: !45, line: 437, baseType: !1972, size: 64, offset: 2112)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1974, line: 69, size: 320, elements: !1975)
!1974 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1975 = !{!1976, !1977, !1978, !1995, !1997, !2001, !2002}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1973, file: !1974, line: 70, baseType: !280, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1973, file: !1974, line: 71, baseType: !1136, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1973, file: !1974, line: 72, baseType: !1979, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1981)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1974, line: 47, size: 256, elements: !1982)
!1982 = !{!1983, !1984, !1990, !1994}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1981, file: !1974, line: 49, baseType: !37, size: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1981, file: !1974, line: 51, baseType: !1985, size: 64, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!115, !280, !1988}
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1973)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1981, file: !1974, line: 53, baseType: !1991, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!115, !741, !1988}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1981, file: !1974, line: 55, baseType: !923, size: 64, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1973, file: !1974, line: 73, baseType: !1996, size: 16, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1973, file: !1974, line: 74, baseType: !1998, size: 8, offset: 208)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !428, line: 16, baseType: !1999)
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !290, line: 20, baseType: !2000)
!2000 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1973, file: !1974, line: 75, baseType: !472, size: 8, offset: 216)
!2002 = !DIDerivedType(tag: DW_TAG_member, scope: !1973, file: !1974, line: 76, baseType: !2003, size: 64, offset: 256)
!2003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1973, file: !1974, line: 76, size: 64, elements: !2004)
!2004 = !{!2005, !2006, !2013}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2003, file: !1974, line: 77, baseType: !220, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2003, file: !1974, line: 78, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2009)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1974, line: 86, size: 128, elements: !2010)
!2010 = !{!2011, !2012}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2009, file: !1974, line: 87, baseType: !37, size: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2009, file: !1974, line: 88, baseType: !741, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2003, file: !1974, line: 79, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2016)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1974, line: 92, size: 256, elements: !2017)
!2017 = !{!2018, !2019, !2020, !2021, !2022}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2016, file: !1974, line: 94, baseType: !37, size: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2016, file: !1974, line: 95, baseType: !37, size: 32, offset: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2016, file: !1974, line: 96, baseType: !336, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2016, file: !1974, line: 97, baseType: !1979, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2016, file: !1974, line: 98, baseType: !220, size: 64, offset: 192)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1137, file: !45, line: 438, baseType: !37, size: 32, offset: 2176)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1137, file: !45, line: 441, baseType: !37, size: 32, offset: 2208)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1137, file: !45, line: 442, baseType: !1963, size: 64, offset: 2240)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1137, file: !45, line: 443, baseType: !1967, size: 64, offset: 2304)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1137, file: !45, line: 444, baseType: !730, size: 8, offset: 2368)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1137, file: !45, line: 451, baseType: !730, size: 8, offset: 2376)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1137, file: !45, line: 454, baseType: !37, size: 32, offset: 2400)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1137, file: !45, line: 455, baseType: !2031, size: 64, offset: 2432)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2033, line: 23, size: 96, elements: !2034)
!2033 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2034 = !{!2035, !2036, !2037}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2032, file: !2033, line: 24, baseType: !115, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2032, file: !2033, line: 24, baseType: !115, size: 32, offset: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2032, file: !2033, line: 24, baseType: !115, size: 32, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1137, file: !45, line: 458, baseType: !2039, size: 64, offset: 2496)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!115}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1137, file: !45, line: 460, baseType: !2043, size: 4032, align: 512, offset: 2560)
!2043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2044, size: 4032, elements: !2058)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !45, line: 362, size: 576, elements: !2045)
!2045 = !{!2046, !2047, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2044, file: !45, line: 363, baseType: !220, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2044, file: !45, line: 364, baseType: !37, size: 32, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2044, file: !45, line: 367, baseType: !2049, size: 448, offset: 128)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !45, line: 319, size: 448, elements: !2050)
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2049, file: !45, line: 320, baseType: !1136, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2049, file: !45, line: 321, baseType: !2053, size: 384, offset: 64)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2054, line: 40, size: 384, elements: !2055)
!2054 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2055 = !{!2056}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2053, file: !2054, line: 41, baseType: !2057, size: 384, align: 64)
!2057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 384, align: 64, elements: !311)
!2058 = !{!2059}
!2059 = !DISubrange(count: 7)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1137, file: !45, line: 463, baseType: !2061, size: 192, offset: 6592)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2062, line: 8, size: 192, elements: !2063)
!2062 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2063 = !{!2064, !2065, !2067}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2061, file: !2062, line: 10, baseType: !37, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2061, file: !2062, line: 11, baseType: !2066, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2061, file: !2062, line: 12, baseType: !2068, size: 64, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2070, line: 59, size: 48, elements: !2071)
!2070 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2071 = !{!2072, !2073, !2074, !2075, !2076, !2077}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2069, file: !2070, line: 60, baseType: !1677, size: 16)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2069, file: !2070, line: 61, baseType: !1677, size: 16, offset: 16)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2069, file: !2070, line: 63, baseType: !37, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2069, file: !2070, line: 64, baseType: !37, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2069, file: !2070, line: 65, baseType: !37, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2069, file: !2070, line: 66, baseType: !37, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1137, file: !45, line: 465, baseType: !222, size: 64, offset: 6784)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1137, file: !45, line: 469, baseType: !37, size: 32, offset: 6848)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1137, file: !45, line: 470, baseType: !485, size: 128, offset: 6912)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1137, file: !45, line: 471, baseType: !2082, size: 64, offset: 7040)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2084, line: 33, size: 96, elements: !2085)
!2084 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2085 = !{!2086, !2087, !2088, !2089}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2083, file: !2084, line: 37, baseType: !115, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2083, file: !2084, line: 43, baseType: !115, size: 32, offset: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2083, file: !2084, line: 45, baseType: !291, size: 16, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2083, file: !2084, line: 47, baseType: !291, size: 16, offset: 80)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1137, file: !45, line: 476, baseType: !2091, size: 64, offset: 7104)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !45, line: 378, size: 256, elements: !2093)
!2093 = !{!2094, !2110, !2111, !2112}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2092, file: !45, line: 379, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2097, line: 204, baseType: !2098)
!2097 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2097, line: 197, size: 192, elements: !2099)
!2099 = !{!2100, !2102, !2103, !2104, !2106, !2108}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2098, file: !2097, line: 198, baseType: !2101, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2097, line: 21, baseType: !331)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2098, file: !2097, line: 199, baseType: !230, size: 8, offset: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2098, file: !2097, line: 200, baseType: !230, size: 8, offset: 40)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2098, file: !2097, line: 201, baseType: !2105, size: 16, offset: 48)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2097, line: 17, baseType: !289)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2098, file: !2097, line: 202, baseType: !2107, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2097, line: 16, baseType: !642)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2098, file: !2097, line: 203, baseType: !2109, size: 64, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2097, line: 22, baseType: !642)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2092, file: !45, line: 380, baseType: !37, size: 32, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2092, file: !45, line: 381, baseType: !741, size: 64, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2092, file: !45, line: 382, baseType: !741, size: 64, offset: 192)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1137, file: !45, line: 477, baseType: !2092, size: 256, offset: 7168)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1137, file: !45, line: 480, baseType: !2115, size: 64, offset: 7424)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !45, line: 480, flags: DIFlagFwdDecl)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1137, file: !45, line: 483, baseType: !2118, size: 64, offset: 7488)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !45, line: 483, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1137, file: !45, line: 488, baseType: !741, size: 64, offset: 7552)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1137, file: !45, line: 492, baseType: !220, size: 64, offset: 7616)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1137, file: !45, line: 493, baseType: !37, size: 32, offset: 7680)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1137, file: !45, line: 495, baseType: !220, size: 64, offset: 7744)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1137, file: !45, line: 496, baseType: !37, size: 32, offset: 7808)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1137, file: !45, line: 499, baseType: !37, size: 32, offset: 7840)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1137, file: !45, line: 500, baseType: !2127, size: 64, offset: 7872)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2129, line: 45, baseType: !2130)
!2129 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1137, file: !45, line: 503, baseType: !37, size: 32, offset: 7936)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1137, file: !45, line: 504, baseType: !2133, size: 64, offset: 8000)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2136, line: 96, size: 192, elements: !2137)
!2136 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2137 = !{!2138, !2139, !2193, !2196}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2135, file: !2136, line: 97, baseType: !37, size: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2135, file: !2136, line: 98, baseType: !2140, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2136, line: 24, size: 3072, elements: !2142)
!2142 = !{!2143, !2145, !2146, !2147, !2148, !2162, !2163, !2164, !2165, !2177, !2178, !2179, !2190, !2191, !2192}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2141, file: !2136, line: 26, baseType: !2144, size: 128)
!2144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 128, elements: !311)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2141, file: !2136, line: 27, baseType: !2144, size: 128, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2141, file: !2136, line: 28, baseType: !115, size: 32, offset: 256)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2141, file: !2136, line: 31, baseType: !517, size: 32, align: 512, offset: 512)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2141, file: !2136, line: 32, baseType: !2149, size: 960, offset: 576)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2150, line: 206, size: 960, elements: !2151)
!2150 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2151 = !{!2152, !2153, !2156, !2158, !2159, !2161}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2149, file: !2150, line: 207, baseType: !510, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2149, file: !2150, line: 208, baseType: !2154, size: 256, offset: 64)
!2154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2155, size: 256, elements: !236)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2149, file: !2150, line: 209, baseType: !2157, size: 256, offset: 320)
!2157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 256, elements: !236)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2149, file: !2150, line: 213, baseType: !221, size: 64, offset: 576)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2149, file: !2150, line: 215, baseType: !2160, size: 256, offset: 640)
!2160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 256, elements: !236)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2149, file: !2150, line: 216, baseType: !472, size: 8, offset: 896)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2141, file: !2136, line: 33, baseType: !222, size: 64, offset: 1536)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2141, file: !2136, line: 34, baseType: !222, size: 64, offset: 1600)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2141, file: !2136, line: 35, baseType: !730, size: 8, offset: 1664)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2141, file: !2136, line: 36, baseType: !2166, size: 320, offset: 1728)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2167, line: 11, size: 320, elements: !2168)
!2167 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2168 = !{!2169, !2170, !2171, !2176}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2166, file: !2167, line: 16, baseType: !578, size: 128)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2166, file: !2167, line: 17, baseType: !222, size: 64, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2166, file: !2167, line: 18, baseType: !2172, size: 64, offset: 192)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{null, !2175}
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2166, file: !2167, line: 19, baseType: !698, size: 32, offset: 256)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2141, file: !2136, line: 37, baseType: !1698, size: 256, offset: 2048)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2141, file: !2136, line: 38, baseType: !507, size: 128, align: 64, offset: 2304)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2141, file: !2136, line: 39, baseType: !2180, size: 64, offset: 2432)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2136, line: 49, size: 768, elements: !2182)
!2182 = !{!2183, !2184, !2185, !2186, !2187, !2188, !2189}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2181, file: !2136, line: 50, baseType: !517, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2181, file: !2136, line: 51, baseType: !2157, size: 256, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2181, file: !2136, line: 53, baseType: !2157, size: 256, offset: 320)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2181, file: !2136, line: 54, baseType: !222, size: 64, offset: 576)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2181, file: !2136, line: 55, baseType: !2180, size: 64, offset: 640)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2181, file: !2136, line: 56, baseType: !115, size: 32, offset: 704)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2181, file: !2136, line: 57, baseType: !115, size: 32, offset: 736)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2141, file: !2136, line: 40, baseType: !222, size: 64, offset: 2496)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2141, file: !2136, line: 42, baseType: !115, size: 32, offset: 2560)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2141, file: !2136, line: 43, baseType: !2134, size: 64, offset: 2624)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2135, file: !2136, line: 99, baseType: !2194, offset: 128)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2195, line: 211, elements: !1567)
!2195 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2135, file: !2136, line: 100, baseType: !2197, size: 64, offset: 128)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2136, line: 63, size: 3008, elements: !2199)
!2199 = !{!2200, !2201, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2231}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2198, file: !2136, line: 64, baseType: !2180, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2198, file: !2136, line: 65, baseType: !2202, size: 192, offset: 64)
!2202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2180, size: 192, elements: !557)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2198, file: !2136, line: 67, baseType: !115, size: 32, offset: 256)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2198, file: !2136, line: 68, baseType: !437, size: 256, offset: 320)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2198, file: !2136, line: 69, baseType: !517, size: 32, offset: 576)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2198, file: !2136, line: 70, baseType: !437, size: 256, offset: 640)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2198, file: !2136, line: 71, baseType: !222, size: 64, offset: 896)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2198, file: !2136, line: 72, baseType: !222, size: 64, offset: 960)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2198, file: !2136, line: 73, baseType: !222, size: 64, offset: 1024)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2198, file: !2136, line: 74, baseType: !222, size: 64, offset: 1088)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2198, file: !2136, line: 75, baseType: !222, size: 64, offset: 1152)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2198, file: !2136, line: 76, baseType: !222, size: 64, offset: 1216)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2198, file: !2136, line: 77, baseType: !222, size: 64, offset: 1280)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2198, file: !2136, line: 78, baseType: !222, size: 64, offset: 1344)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2198, file: !2136, line: 79, baseType: !730, size: 8, offset: 1408)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2198, file: !2136, line: 80, baseType: !222, size: 64, offset: 1472)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2198, file: !2136, line: 81, baseType: !437, size: 256, offset: 1536)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2198, file: !2136, line: 82, baseType: !1923, size: 256, offset: 1792)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2198, file: !2136, line: 84, baseType: !464, size: 32, offset: 2048)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2198, file: !2136, line: 87, baseType: !222, size: 64, offset: 2112)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2198, file: !2136, line: 88, baseType: !222, size: 64, offset: 2176)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2198, file: !2136, line: 89, baseType: !2223, size: 704, offset: 2240)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1699, line: 111, size: 704, elements: !2224)
!2224 = !{!2225, !2226, !2227, !2230}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2223, file: !1699, line: 112, baseType: !1698, size: 256)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2223, file: !1699, line: 113, baseType: !2166, size: 320, offset: 256)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2223, file: !1699, line: 116, baseType: !2228, size: 64, offset: 576)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1699, line: 18, flags: DIFlagFwdDecl)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2223, file: !1699, line: 117, baseType: !115, size: 32, offset: 640)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2198, file: !2136, line: 90, baseType: !2134, size: 64, offset: 2944)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1137, file: !45, line: 515, baseType: !2233, size: 64, offset: 8064)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2235, line: 117, size: 128, elements: !2236)
!2235 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2236 = !{!2237, !2238, !2239}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2234, file: !2235, line: 118, baseType: !658, size: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2234, file: !2235, line: 119, baseType: !658, size: 32, offset: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2234, file: !2235, line: 120, baseType: !221, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1137, file: !45, line: 516, baseType: !37, size: 32, offset: 8128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1137, file: !45, line: 519, baseType: !37, size: 32, offset: 8160)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1137, file: !45, line: 520, baseType: !2243, size: 64, offset: 8192)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1137, file: !45, line: 523, baseType: !2245, size: 64, offset: 8256)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !45, line: 523, flags: DIFlagFwdDecl)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1137, file: !45, line: 524, baseType: !37, size: 32, offset: 8320)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1137, file: !45, line: 525, baseType: !2250, size: 64, offset: 8384)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !45, line: 525, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1137, file: !45, line: 526, baseType: !37, size: 32, offset: 8448)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1137, file: !45, line: 533, baseType: !220, size: 64, offset: 8512)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1137, file: !45, line: 534, baseType: !37, size: 32, offset: 8576)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1137, file: !45, line: 535, baseType: !226, size: 64, offset: 8640)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1137, file: !45, line: 536, baseType: !37, size: 32, offset: 8704)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1137, file: !45, line: 539, baseType: !115, size: 32, offset: 8736)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1137, file: !45, line: 540, baseType: !2260, size: 64, offset: 8768)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2262, line: 32, size: 64, elements: !2263)
!2262 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2263 = !{!2264, !2265}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2261, file: !2262, line: 33, baseType: !658, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2261, file: !2262, line: 34, baseType: !658, size: 32, offset: 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1137, file: !45, line: 563, baseType: !485, size: 128, offset: 8832)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1137, file: !45, line: 565, baseType: !485, size: 128, offset: 8960)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1137, file: !45, line: 568, baseType: !2269, size: 64, offset: 9088)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1137, file: !45, line: 570, baseType: !464, size: 32, offset: 9152)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1112, file: !65, line: 2382, baseType: !1111, size: 64, offset: 448)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1112, file: !65, line: 2383, baseType: !574, size: 64, offset: 512)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1112, file: !65, line: 2385, baseType: !2274, offset: 576)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2195, line: 206, elements: !1567)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1112, file: !65, line: 2386, baseType: !2274, offset: 576)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1112, file: !65, line: 2387, baseType: !2274, offset: 576)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1112, file: !65, line: 2388, baseType: !2278, offset: 576)
!2278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2274, elements: !557)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1112, file: !65, line: 2390, baseType: !2274, offset: 576)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1112, file: !65, line: 2391, baseType: !2274, offset: 576)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1112, file: !65, line: 2392, baseType: !2274, offset: 576)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1112, file: !65, line: 2393, baseType: !2274, offset: 576)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1103, file: !65, line: 1197, baseType: !2284, size: 64, offset: 384)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2286)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !65, line: 2057, size: 1664, elements: !2287)
!2287 = !{!2288, !2292, !2296, !2297, !2301, !2305, !2309, !2310, !2311, !2315, !2319, !2323, !2324, !2325, !2331, !2335, !2336, !2340, !2341, !2342, !2343, !2347, !2351, !2398, !2413, !2414}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2286, file: !65, line: 2058, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!891, !1102}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2286, file: !65, line: 2059, baseType: !2293, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{null, !891}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2286, file: !65, line: 2060, baseType: !2293, size: 64, offset: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2286, file: !65, line: 2062, baseType: !2298, size: 64, offset: 192)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{null, !891, !115}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2286, file: !65, line: 2063, baseType: !2302, size: 64, offset: 256)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!115, !891, !1339}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2286, file: !65, line: 2064, baseType: !2306, size: 64, offset: 320)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!115, !891}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2286, file: !65, line: 2065, baseType: !2293, size: 64, offset: 384)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2286, file: !65, line: 2066, baseType: !1132, size: 64, offset: 448)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2286, file: !65, line: 2067, baseType: !2312, size: 64, offset: 512)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!115, !1102, !115}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2286, file: !65, line: 2068, baseType: !2316, size: 64, offset: 576)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!115, !1102, !64}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2286, file: !65, line: 2069, baseType: !2320, size: 64, offset: 640)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!115, !1102}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2286, file: !65, line: 2070, baseType: !2316, size: 64, offset: 704)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2286, file: !65, line: 2071, baseType: !2320, size: 64, offset: 768)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2286, file: !65, line: 2072, baseType: !2326, size: 64, offset: 832)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!115, !852, !2329}
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !65, line: 62, flags: DIFlagFwdDecl)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2286, file: !65, line: 2073, baseType: !2332, size: 64, offset: 896)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!115, !1102, !2066, !741}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2286, file: !65, line: 2074, baseType: !1132, size: 64, offset: 960)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2286, file: !65, line: 2076, baseType: !2337, size: 64, offset: 1024)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!115, !1840, !852}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2286, file: !65, line: 2077, baseType: !2337, size: 64, offset: 1088)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2286, file: !65, line: 2078, baseType: !2337, size: 64, offset: 1152)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2286, file: !65, line: 2079, baseType: !2337, size: 64, offset: 1216)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2286, file: !65, line: 2081, baseType: !2344, size: 64, offset: 1280)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!1044, !1102, !115, !741, !1047, !530}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2286, file: !65, line: 2082, baseType: !2348, size: 64, offset: 1344)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!1044, !1102, !115, !280, !1047, !530}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2286, file: !65, line: 2083, baseType: !2352, size: 64, offset: 1408)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!2355, !891}
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !70, line: 296, size: 1664, elements: !2358)
!2358 = !{!2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2383, !2384, !2385}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2357, file: !70, line: 297, baseType: !578, size: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2357, file: !70, line: 298, baseType: !485, size: 128, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2357, file: !70, line: 299, baseType: !485, size: 128, offset: 256)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2357, file: !70, line: 300, baseType: !485, size: 128, offset: 384)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2357, file: !70, line: 301, baseType: !437, size: 256, offset: 512)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2357, file: !70, line: 302, baseType: !517, size: 32, offset: 768)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2357, file: !70, line: 303, baseType: !464, size: 32, offset: 800)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2357, file: !70, line: 304, baseType: !1102, size: 64, offset: 832)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2357, file: !70, line: 305, baseType: !2368, size: 64, offset: 896)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !70, line: 68, size: 64, elements: !2369)
!2369 = !{!2370, !2382}
!2370 = !DIDerivedType(tag: DW_TAG_member, scope: !2368, file: !70, line: 69, baseType: !2371, size: 32)
!2371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2368, file: !70, line: 69, size: 32, elements: !2372)
!2372 = !{!2373, !2374, !2375}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2371, file: !70, line: 70, baseType: !604, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2371, file: !70, line: 71, baseType: !622, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2371, file: !70, line: 72, baseType: !2376, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2377, line: 24, baseType: !2378)
!2377 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2377, line: 22, size: 32, elements: !2379)
!2379 = !{!2380}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2378, file: !2377, line: 23, baseType: !2381, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2377, line: 20, baseType: !610)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2368, file: !70, line: 74, baseType: !69, size: 32, offset: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2357, file: !70, line: 306, baseType: !530, size: 64, offset: 960)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2357, file: !70, line: 307, baseType: !222, size: 64, offset: 1024)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2357, file: !70, line: 308, baseType: !2386, size: 576, offset: 1088)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !70, line: 205, size: 576, elements: !2387)
!2387 = !{!2388, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2386, file: !70, line: 206, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !70, line: 66, baseType: !449)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2386, file: !70, line: 207, baseType: !2389, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2386, file: !70, line: 208, baseType: !2389, size: 64, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2386, file: !70, line: 209, baseType: !2389, size: 64, offset: 192)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2386, file: !70, line: 210, baseType: !2389, size: 64, offset: 256)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2386, file: !70, line: 211, baseType: !2389, size: 64, offset: 320)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2386, file: !70, line: 212, baseType: !2389, size: 64, offset: 384)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2386, file: !70, line: 213, baseType: !689, size: 64, offset: 448)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2386, file: !70, line: 214, baseType: !689, size: 64, offset: 512)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2286, file: !65, line: 2085, baseType: !2399, size: 64, offset: 1472)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!221, !1102, !2402}
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2404, line: 15, size: 256, elements: !2405)
!2404 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2405 = !{!2406, !2407, !2408, !2409, !2410}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2403, file: !2404, line: 16, baseType: !218, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2403, file: !2404, line: 19, baseType: !115, size: 32, offset: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2403, file: !2404, line: 26, baseType: !222, size: 64, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2403, file: !2404, line: 33, baseType: !222, size: 64, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2403, file: !2404, line: 36, baseType: !2411, size: 64, offset: 192)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1280, line: 33, flags: DIFlagFwdDecl)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2286, file: !65, line: 2087, baseType: !2399, size: 64, offset: 1536)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2286, file: !65, line: 2089, baseType: !1132, size: 64, offset: 1600)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1103, file: !65, line: 1198, baseType: !2416, size: 64, offset: 448)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2418)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !70, line: 324, size: 704, elements: !2419)
!2419 = !{!2420, !2424, !2428, !2432, !2433, !2434, !2435, !2436, !2441, !2446, !2450}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2418, file: !70, line: 325, baseType: !2421, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!115, !2356}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2418, file: !70, line: 326, baseType: !2425, size: 64, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!2356, !1102, !115}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2418, file: !70, line: 327, baseType: !2429, size: 64, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{null, !2356}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2418, file: !70, line: 328, baseType: !2421, size: 64, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2418, file: !70, line: 329, baseType: !2421, size: 64, offset: 256)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2418, file: !70, line: 330, baseType: !2421, size: 64, offset: 320)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2418, file: !70, line: 331, baseType: !2312, size: 64, offset: 384)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2418, file: !70, line: 334, baseType: !2437, size: 64, offset: 448)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!2440, !891}
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2418, file: !70, line: 335, baseType: !2442, size: 64, offset: 512)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!115, !891, !2445}
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2418, file: !70, line: 337, baseType: !2447, size: 64, offset: 576)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!115, !891, !2440}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2418, file: !70, line: 339, baseType: !2451, size: 64, offset: 640)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!115, !1102, !2454}
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1103, file: !65, line: 1199, baseType: !2456, size: 64, offset: 512)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2458)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !70, line: 430, size: 704, elements: !2459)
!2459 = !{!2460, !2464, !2465, !2469, !2470, !2471, !2486, !2509, !2513, !2514, !2537}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2458, file: !70, line: 431, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!115, !1102, !115, !115, !1013}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2458, file: !70, line: 432, baseType: !2312, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2458, file: !70, line: 433, baseType: !2466, size: 64, offset: 128)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!115, !1102, !37}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2458, file: !70, line: 434, baseType: !2466, size: 64, offset: 192)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2458, file: !70, line: 435, baseType: !2312, size: 64, offset: 256)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2458, file: !70, line: 436, baseType: !2472, size: 64, offset: 320)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!115, !1102, !115, !2475}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !70, line: 417, size: 256, elements: !2477)
!2477 = !{!2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2476, file: !70, line: 418, baseType: !115, size: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2476, file: !70, line: 419, baseType: !37, size: 32, offset: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2476, file: !70, line: 420, baseType: !37, size: 32, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2476, file: !70, line: 422, baseType: !37, size: 32, offset: 96)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2476, file: !70, line: 423, baseType: !37, size: 32, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2476, file: !70, line: 424, baseType: !37, size: 32, offset: 160)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2476, file: !70, line: 425, baseType: !37, size: 32, offset: 192)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2476, file: !70, line: 426, baseType: !37, size: 32, offset: 224)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2458, file: !70, line: 437, baseType: !2487, size: 64, offset: 384)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!115, !1102, !2368, !2490}
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !70, line: 345, size: 960, elements: !2492)
!2492 = !{!2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2491, file: !70, line: 346, baseType: !115, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2491, file: !70, line: 347, baseType: !641, size: 64, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2491, file: !70, line: 348, baseType: !641, size: 64, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2491, file: !70, line: 349, baseType: !641, size: 64, offset: 192)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2491, file: !70, line: 350, baseType: !641, size: 64, offset: 256)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2491, file: !70, line: 351, baseType: !641, size: 64, offset: 320)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2491, file: !70, line: 352, baseType: !641, size: 64, offset: 384)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2491, file: !70, line: 353, baseType: !447, size: 64, offset: 448)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2491, file: !70, line: 355, baseType: !447, size: 64, offset: 512)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2491, file: !70, line: 356, baseType: !115, size: 32, offset: 576)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2491, file: !70, line: 357, baseType: !115, size: 32, offset: 608)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2491, file: !70, line: 358, baseType: !641, size: 64, offset: 640)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2491, file: !70, line: 359, baseType: !641, size: 64, offset: 704)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2491, file: !70, line: 360, baseType: !641, size: 64, offset: 768)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2491, file: !70, line: 361, baseType: !447, size: 64, offset: 832)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2491, file: !70, line: 362, baseType: !115, size: 32, offset: 896)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2458, file: !70, line: 438, baseType: !2510, size: 64, offset: 448)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!115, !1102, !2454, !2490}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2458, file: !70, line: 440, baseType: !2487, size: 64, offset: 512)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2458, file: !70, line: 441, baseType: !2515, size: 64, offset: 576)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!115, !1102, !2518}
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !70, line: 411, size: 1408, elements: !2520)
!2520 = !{!2521, !2522}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2519, file: !70, line: 412, baseType: !37, size: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2519, file: !70, line: 413, baseType: !2523, size: 1344, offset: 64)
!2523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2524, size: 1344, elements: !557)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !70, line: 397, size: 448, elements: !2525)
!2525 = !{!2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2536}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2524, file: !70, line: 398, baseType: !37, size: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2524, file: !70, line: 399, baseType: !37, size: 32, offset: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2524, file: !70, line: 401, baseType: !37, size: 32, offset: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2524, file: !70, line: 402, baseType: !37, size: 32, offset: 96)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2524, file: !70, line: 403, baseType: !37, size: 32, offset: 128)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2524, file: !70, line: 404, baseType: !37, size: 32, offset: 160)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2524, file: !70, line: 405, baseType: !37, size: 32, offset: 192)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2524, file: !70, line: 406, baseType: !643, size: 64, offset: 256)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2524, file: !70, line: 407, baseType: !2535, size: 64, offset: 320)
!2535 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !219, line: 132, baseType: !641)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2524, file: !70, line: 408, baseType: !2535, size: 64, offset: 384)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2458, file: !70, line: 442, baseType: !2466, size: 64, offset: 640)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1103, file: !65, line: 1200, baseType: !2539, size: 64, offset: 576)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2541)
!2541 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !65, line: 54, flags: DIFlagFwdDecl)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1103, file: !65, line: 1201, baseType: !222, size: 64, offset: 640)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1103, file: !65, line: 1202, baseType: !222, size: 64, offset: 704)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1103, file: !65, line: 1203, baseType: !222, size: 64, offset: 768)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1103, file: !65, line: 1204, baseType: !852, size: 64, offset: 832)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1103, file: !65, line: 1205, baseType: !673, size: 320, offset: 896)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1103, file: !65, line: 1206, baseType: !115, size: 32, offset: 1216)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1103, file: !65, line: 1207, baseType: !464, size: 32, offset: 1248)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1103, file: !65, line: 1209, baseType: !220, size: 64, offset: 1280)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1103, file: !65, line: 1211, baseType: !2551, size: 64, offset: 1344)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2554)
!2554 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !65, line: 1211, flags: DIFlagFwdDecl)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1103, file: !65, line: 1223, baseType: !2556, size: 64, offset: 1408)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !869, line: 34, size: 64, elements: !2557)
!2557 = !{!2558}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2556, file: !869, line: 35, baseType: !872, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1103, file: !65, line: 1224, baseType: !485, size: 128, offset: 1472)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1103, file: !65, line: 1225, baseType: !2561, size: 64, offset: 1600)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !65, line: 1225, flags: DIFlagFwdDecl)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1103, file: !65, line: 1226, baseType: !2564, size: 64, offset: 1664)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !65, line: 1226, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1103, file: !65, line: 1227, baseType: !2567, size: 64, offset: 1728)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !65, line: 50, flags: DIFlagFwdDecl)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1103, file: !65, line: 1228, baseType: !2570, size: 64, offset: 1792)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !65, line: 1228, flags: DIFlagFwdDecl)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1103, file: !65, line: 1229, baseType: !578, size: 128, offset: 1856)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1103, file: !65, line: 1230, baseType: !37, size: 32, offset: 1984)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1103, file: !65, line: 1231, baseType: !2575, size: 2496, offset: 2048)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !70, line: 521, size: 2496, elements: !2576)
!2576 = !{!2577, !2578, !2579, !2581, !2613}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2575, file: !70, line: 522, baseType: !37, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2575, file: !70, line: 523, baseType: !673, size: 320, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2575, file: !70, line: 524, baseType: !2580, size: 192, offset: 384)
!2580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !891, size: 192, elements: !557)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2575, file: !70, line: 525, baseType: !2582, size: 1728, offset: 576)
!2582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2583, size: 1728, elements: !557)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !70, line: 222, size: 576, elements: !2584)
!2584 = !{!2585, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2583, file: !70, line: 223, baseType: !2586, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !70, line: 445, size: 256, elements: !2588)
!2588 = !{!2589, !2590, !2603, !2604}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2587, file: !70, line: 446, baseType: !115, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2587, file: !70, line: 447, baseType: !2591, size: 64, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2593)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !70, line: 312, size: 512, elements: !2594)
!2594 = !{!2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2593, file: !70, line: 313, baseType: !2312, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2593, file: !70, line: 314, baseType: !2312, size: 64, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2593, file: !70, line: 315, baseType: !2312, size: 64, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2593, file: !70, line: 316, baseType: !2312, size: 64, offset: 192)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2593, file: !70, line: 317, baseType: !2421, size: 64, offset: 256)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2593, file: !70, line: 318, baseType: !2421, size: 64, offset: 320)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2593, file: !70, line: 319, baseType: !2421, size: 64, offset: 384)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2593, file: !70, line: 320, baseType: !2451, size: 64, offset: 448)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2587, file: !70, line: 448, baseType: !1136, size: 64, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2587, file: !70, line: 449, baseType: !2586, size: 64, offset: 192)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2583, file: !70, line: 224, baseType: !115, size: 32, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2583, file: !70, line: 226, baseType: !485, size: 128, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2583, file: !70, line: 227, baseType: !222, size: 64, offset: 256)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2583, file: !70, line: 228, baseType: !37, size: 32, offset: 320)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2583, file: !70, line: 229, baseType: !37, size: 32, offset: 352)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2583, file: !70, line: 230, baseType: !2389, size: 64, offset: 384)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2583, file: !70, line: 231, baseType: !2389, size: 64, offset: 448)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2583, file: !70, line: 232, baseType: !220, size: 64, offset: 512)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2575, file: !70, line: 526, baseType: !2614, size: 192, offset: 2304)
!2614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2591, size: 192, elements: !557)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1103, file: !65, line: 1233, baseType: !2616, size: 2368, offset: 4544)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !65, line: 1184, size: 2368, elements: !2617)
!2617 = !{!2618, !2619, !2620}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2616, file: !65, line: 1185, baseType: !291, size: 16)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2616, file: !65, line: 1186, baseType: !291, size: 16, offset: 16)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2616, file: !65, line: 1187, baseType: !2621, size: 2304, offset: 64)
!2621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2622, size: 2304, elements: !557)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2623, line: 12, size: 768, elements: !2624)
!2623 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2624 = !{!2625, !2633, !2634, !3806, !3807}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2622, file: !2623, line: 13, baseType: !2626, size: 384)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2627, line: 17, size: 384, elements: !2628)
!2627 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2628 = !{!2629, !2630, !2631, !2632}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2626, file: !2627, line: 18, baseType: !115, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2626, file: !2627, line: 19, baseType: !115, size: 32, offset: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2626, file: !2627, line: 20, baseType: !585, size: 192, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2626, file: !2627, line: 22, baseType: !507, size: 128, align: 64, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2622, file: !2623, line: 14, baseType: !336, size: 64, offset: 384)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2622, file: !2623, line: 15, baseType: !2635, size: 64, offset: 448)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2636, line: 16, size: 64, elements: !2637)
!2636 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2637 = !{!2638}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2635, file: !2636, line: 17, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1842, line: 746, size: 58368, elements: !2641)
!2641 = !{!2642, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2722, !2733, !2819, !2823, !2826, !2857, !2858, !2859, !2860, !2868, !2870, !2871, !2872, !2873, !2874, !2875, !2886, !2887, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2904, !2905, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2993, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3041, !3047, !3048, !3049, !3050, !3051, !3055, !3058, !3065, !3070, !3073, !3076, !3079, !3083, !3221, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3259, !3260, !3261, !3270, !3278, !3279, !3280, !3281, !3282, !3287, !3288, !3289, !3292, !3293, !3296, !3299, !3302, !3310, !3313, !3314, !3399, !3400, !3401, !3402, !3403, !3409, !3410, !3411, !3412, !3415, !3416, !3419, !3422, !3423, !3426, !3427, !3428, !3431, !3432, !3433, !3434, !3435, !3436, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3468, !3471, !3477, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3489, !3561, !3563, !3564, !3565, !3566, !3567, !3568, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3585, !3586, !3587}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2640, file: !1842, line: 752, baseType: !2643, size: 192)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2644, line: 56, size: 192, elements: !2645)
!2644 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2645 = !{!2646, !2647, !2648, !2649}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2643, file: !2644, line: 57, baseType: !222, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2643, file: !2644, line: 58, baseType: !222, size: 64, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2643, file: !2644, line: 59, baseType: !698, size: 32, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2643, file: !2644, line: 61, baseType: !698, size: 32, offset: 160)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2640, file: !1842, line: 754, baseType: !37, size: 32, offset: 192)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2640, file: !1842, line: 767, baseType: !220, size: 64, offset: 256)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2640, file: !1842, line: 768, baseType: !565, size: 32, offset: 320)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2640, file: !1842, line: 770, baseType: !37, size: 32, offset: 352)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2640, file: !1842, line: 771, baseType: !37, size: 32, offset: 384)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2640, file: !1842, line: 774, baseType: !115, size: 32, offset: 416)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2640, file: !1842, line: 775, baseType: !2657, size: 128, offset: 448)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2658, line: 58, size: 128, elements: !2659)
!2658 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2659 = !{!2660, !2661, !2666, !2667}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2657, file: !2658, line: 59, baseType: !501, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, scope: !2657, file: !2658, line: 60, baseType: !2662, size: 32, offset: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2657, file: !2658, line: 60, size: 32, elements: !2663)
!2663 = !{!2664, !2665}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2662, file: !2658, line: 61, baseType: !37, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2662, file: !2658, line: 62, baseType: !464, size: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2657, file: !2658, line: 65, baseType: !427, size: 16, offset: 96)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2657, file: !2658, line: 65, baseType: !427, size: 16, offset: 112)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2640, file: !1842, line: 776, baseType: !37, size: 32, offset: 576)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2640, file: !1842, line: 777, baseType: !222, size: 64, offset: 640)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2640, file: !1842, line: 778, baseType: !2639, size: 64, offset: 704)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2640, file: !1842, line: 787, baseType: !115, size: 32, offset: 768)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2640, file: !1842, line: 788, baseType: !115, size: 32, offset: 800)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2640, file: !1842, line: 790, baseType: !115, size: 32, offset: 832)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2640, file: !1842, line: 792, baseType: !115, size: 32, offset: 864)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2640, file: !1842, line: 793, baseType: !115, size: 32, offset: 896)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2640, file: !1842, line: 794, baseType: !115, size: 32, offset: 928)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2640, file: !1842, line: 795, baseType: !37, size: 32, offset: 960)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2640, file: !1842, line: 797, baseType: !2679, size: 2048, offset: 1024)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1842, line: 551, size: 2048, elements: !2680)
!2680 = !{!2681, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2701, !2704, !2705, !2706}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2679, file: !1842, line: 553, baseType: !2682, size: 128)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1842, line: 411, size: 128, elements: !2683)
!2683 = !{!2684, !2685}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2682, file: !1842, line: 412, baseType: !222, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2682, file: !1842, line: 413, baseType: !698, size: 32, offset: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2679, file: !1842, line: 554, baseType: !665, size: 192, align: 64, offset: 128)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2679, file: !1842, line: 555, baseType: !641, size: 64, offset: 320)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2679, file: !1842, line: 556, baseType: !641, size: 64, offset: 384)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2679, file: !1842, line: 558, baseType: !485, size: 128, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2679, file: !1842, line: 559, baseType: !37, size: 32, offset: 576)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2679, file: !1842, line: 561, baseType: !641, size: 64, offset: 640)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2679, file: !1842, line: 562, baseType: !641, size: 64, offset: 704)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2679, file: !1842, line: 563, baseType: !641, size: 64, offset: 768)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2679, file: !1842, line: 564, baseType: !641, size: 64, offset: 832)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2679, file: !1842, line: 565, baseType: !447, size: 64, offset: 896)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2679, file: !1842, line: 566, baseType: !641, size: 64, offset: 960)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2679, file: !1842, line: 568, baseType: !641, size: 64, offset: 1024)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2679, file: !1842, line: 571, baseType: !115, size: 32, offset: 1088)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2679, file: !1842, line: 572, baseType: !2700, size: 64, offset: 1152)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2679, file: !1842, line: 574, baseType: !2702, size: 64, offset: 1216)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1842, line: 49, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2679, file: !1842, line: 576, baseType: !2702, size: 64, offset: 1280)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2679, file: !1842, line: 578, baseType: !222, size: 64, offset: 1344)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2679, file: !1842, line: 588, baseType: !2707, size: 512, align: 512, offset: 1536)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1842, line: 497, size: 512, align: 512, elements: !2708)
!2708 = !{!2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2707, file: !1842, line: 498, baseType: !641, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2707, file: !1842, line: 499, baseType: !641, size: 64, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2707, file: !1842, line: 500, baseType: !641, size: 64, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2707, file: !1842, line: 501, baseType: !698, size: 32, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2707, file: !1842, line: 502, baseType: !698, size: 32, offset: 224)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2707, file: !1842, line: 503, baseType: !222, size: 64, offset: 256)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2707, file: !1842, line: 504, baseType: !222, size: 64, offset: 320)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2707, file: !1842, line: 505, baseType: !222, size: 64, offset: 384)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2707, file: !1842, line: 506, baseType: !2718, size: 64, align: 64, offset: 448)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1842, line: 445, size: 64, align: 64, elements: !2719)
!2719 = !{!2720, !2721}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2718, file: !1842, line: 446, baseType: !37, size: 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2718, file: !1842, line: 447, baseType: !37, size: 32, offset: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2640, file: !1842, line: 798, baseType: !2723, size: 384, offset: 3072)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1842, line: 592, size: 384, elements: !2724)
!2724 = !{!2725, !2726, !2727, !2728, !2729, !2730, !2731}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2723, file: !1842, line: 593, baseType: !485, size: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2723, file: !1842, line: 594, baseType: !222, size: 64, offset: 128)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2723, file: !1842, line: 595, baseType: !222, size: 64, offset: 192)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2723, file: !1842, line: 596, baseType: !37, size: 32, offset: 256)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2723, file: !1842, line: 597, baseType: !291, size: 16, offset: 288)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2723, file: !1842, line: 598, baseType: !291, size: 16, offset: 304)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2723, file: !1842, line: 600, baseType: !2732, size: 64, offset: 320)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2640, file: !1842, line: 799, baseType: !2734, size: 1792, offset: 3456)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1842, line: 610, size: 1792, elements: !2735)
!2735 = !{!2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2816, !2817}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2734, file: !1842, line: 611, baseType: !665, size: 192, align: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2734, file: !1842, line: 618, baseType: !641, size: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2734, file: !1842, line: 619, baseType: !641, size: 64, offset: 256)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2734, file: !1842, line: 620, baseType: !641, size: 64, offset: 320)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2734, file: !1842, line: 621, baseType: !641, size: 64, offset: 384)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2734, file: !1842, line: 622, baseType: !641, size: 64, offset: 448)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2734, file: !1842, line: 629, baseType: !447, size: 64, offset: 512)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2734, file: !1842, line: 630, baseType: !641, size: 64, offset: 576)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2734, file: !1842, line: 631, baseType: !37, size: 32, offset: 640)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2734, file: !1842, line: 653, baseType: !37, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2734, file: !1842, line: 654, baseType: !37, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2734, file: !1842, line: 655, baseType: !37, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2734, file: !1842, line: 656, baseType: !37, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2734, file: !1842, line: 662, baseType: !2750, size: 512, offset: 704)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !76, line: 118, size: 512, elements: !2751)
!2751 = !{!2752, !2760, !2761, !2766, !2812, !2813, !2814, !2815}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2750, file: !76, line: 119, baseType: !2753, size: 256)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2754, line: 9, size: 256, elements: !2755)
!2754 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2755 = !{!2756, !2757}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2753, file: !2754, line: 10, baseType: !665, size: 192, align: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2753, file: !2754, line: 11, baseType: !2758, size: 64, offset: 192)
!2758 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2759, line: 29, baseType: !447)
!2759 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2750, file: !76, line: 120, baseType: !2758, size: 64, offset: 256)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2750, file: !76, line: 121, baseType: !2762, size: 64, offset: 320)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!75, !2765}
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2750, file: !76, line: 122, baseType: !2767, size: 64, offset: 384)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !76, line: 159, size: 512, align: 512, elements: !2769)
!2769 = !{!2770, !2793, !2794, !2797, !2802, !2803, !2807, !2811}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2768, file: !76, line: 160, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !76, line: 215, size: 4608, align: 512, elements: !2773)
!2773 = !{!2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2772, file: !76, line: 216, baseType: !451, size: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2772, file: !76, line: 217, baseType: !37, size: 32, offset: 32)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2772, file: !76, line: 218, baseType: !37, size: 32, offset: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2772, file: !76, line: 219, baseType: !37, size: 32, offset: 96)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2772, file: !76, line: 220, baseType: !37, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2772, file: !76, line: 221, baseType: !37, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2772, file: !76, line: 222, baseType: !37, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2772, file: !76, line: 223, baseType: !37, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2772, file: !76, line: 224, baseType: !37, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2772, file: !76, line: 226, baseType: !37, size: 32, offset: 160)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2772, file: !76, line: 227, baseType: !291, size: 16, offset: 192)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2772, file: !76, line: 228, baseType: !291, size: 16, offset: 208)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2772, file: !76, line: 229, baseType: !37, size: 32, offset: 224)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2772, file: !76, line: 235, baseType: !2758, size: 64, offset: 256)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2772, file: !76, line: 236, baseType: !2765, size: 64, offset: 320)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2772, file: !76, line: 237, baseType: !2758, size: 64, offset: 384)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2772, file: !76, line: 238, baseType: !2765, size: 64, offset: 448)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2772, file: !76, line: 239, baseType: !2792, size: 4096, align: 512, offset: 512)
!2792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2768, size: 4096, align: 512, elements: !5)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2768, file: !76, line: 161, baseType: !37, size: 32, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2768, file: !76, line: 162, baseType: !2795, size: 32, offset: 96)
!2795 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !219, line: 32, baseType: !2796)
!2796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !532, line: 96, baseType: !115)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2768, file: !76, line: 163, baseType: !2798, size: 32, offset: 128)
!2798 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !859, line: 274, baseType: !2799)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !859, line: 274, size: 32, elements: !2800)
!2800 = !{!2801}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2799, file: !859, line: 274, baseType: !863, size: 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2768, file: !76, line: 164, baseType: !2765, size: 64, offset: 192)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2768, file: !76, line: 165, baseType: !2804, size: 128, offset: 256)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2754, line: 14, size: 128, elements: !2805)
!2805 = !{!2806}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2804, file: !2754, line: 15, baseType: !1260, size: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2768, file: !76, line: 166, baseType: !2808, size: 64, offset: 384)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!2758}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2768, file: !76, line: 167, baseType: !2758, size: 64, offset: 448)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2750, file: !76, line: 123, baseType: !472, size: 8, offset: 448)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2750, file: !76, line: 124, baseType: !472, size: 8, offset: 456)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2750, file: !76, line: 125, baseType: !472, size: 8, offset: 464)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2750, file: !76, line: 126, baseType: !472, size: 8, offset: 472)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2734, file: !1842, line: 671, baseType: !2750, size: 512, offset: 1216)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2734, file: !1842, line: 679, baseType: !2818, size: 64, offset: 1728)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2640, file: !1842, line: 800, baseType: !2820, size: 64, offset: 5248)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2822)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1842, line: 800, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2640, file: !1842, line: 809, baseType: !2824, size: 64, offset: 5312)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1842, line: 70, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2640, file: !1842, line: 825, baseType: !2827, size: 2048, align: 512, offset: 5632)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1842, line: 509, size: 2048, align: 512, elements: !2828)
!2828 = !{!2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2827, file: !1842, line: 511, baseType: !641, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2827, file: !1842, line: 512, baseType: !641, size: 64, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2827, file: !1842, line: 513, baseType: !641, size: 64, offset: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2827, file: !1842, line: 514, baseType: !641, size: 64, offset: 192)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2827, file: !1842, line: 515, baseType: !641, size: 64, offset: 256)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2827, file: !1842, line: 516, baseType: !641, size: 64, offset: 320)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2827, file: !1842, line: 518, baseType: !641, size: 64, offset: 384)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2827, file: !1842, line: 519, baseType: !641, size: 64, offset: 448)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2827, file: !1842, line: 520, baseType: !447, size: 64, offset: 512)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2827, file: !1842, line: 522, baseType: !641, size: 64, offset: 576)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2827, file: !1842, line: 523, baseType: !641, size: 64, offset: 640)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2827, file: !1842, line: 524, baseType: !447, size: 64, offset: 704)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2827, file: !1842, line: 526, baseType: !447, size: 64, offset: 768)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2827, file: !1842, line: 527, baseType: !641, size: 64, offset: 832)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2827, file: !1842, line: 529, baseType: !641, size: 64, offset: 896)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2827, file: !1842, line: 530, baseType: !641, size: 64, offset: 960)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2827, file: !1842, line: 531, baseType: !641, size: 64, offset: 1024)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2827, file: !1842, line: 532, baseType: !641, size: 64, offset: 1088)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2827, file: !1842, line: 533, baseType: !641, size: 64, offset: 1152)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2827, file: !1842, line: 535, baseType: !641, size: 64, offset: 1216)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2827, file: !1842, line: 536, baseType: !641, size: 64, offset: 1280)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2827, file: !1842, line: 537, baseType: !641, size: 64, offset: 1344)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2827, file: !1842, line: 538, baseType: !641, size: 64, offset: 1408)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2827, file: !1842, line: 539, baseType: !641, size: 64, offset: 1472)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2827, file: !1842, line: 540, baseType: !641, size: 64, offset: 1536)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2827, file: !1842, line: 541, baseType: !641, size: 64, offset: 1600)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2827, file: !1842, line: 542, baseType: !641, size: 64, offset: 1664)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2827, file: !1842, line: 543, baseType: !641, size: 64, offset: 1728)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2640, file: !1842, line: 833, baseType: !37, size: 32, offset: 7680)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2640, file: !1842, line: 836, baseType: !37, size: 32, offset: 7712)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2640, file: !1842, line: 837, baseType: !115, size: 32, offset: 7744)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2640, file: !1842, line: 838, baseType: !2861, size: 64, offset: 7808)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2863)
!2863 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2864, line: 19, baseType: !2865)
!2864 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2864, line: 19, size: 64, elements: !2866)
!2866 = !{!2867}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2865, file: !2864, line: 19, baseType: !296, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2640, file: !1842, line: 839, baseType: !2869, size: 64, offset: 7872)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2640, file: !1842, line: 840, baseType: !2863, size: 64, offset: 7936)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2640, file: !1842, line: 841, baseType: !220, size: 64, offset: 8000)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2640, file: !1842, line: 843, baseType: !291, size: 16, offset: 8064)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2640, file: !1842, line: 845, baseType: !291, size: 16, offset: 8080)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2640, file: !1842, line: 848, baseType: !115, size: 32, offset: 8096)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2640, file: !1842, line: 849, baseType: !2876, size: 32, offset: 8128)
!2876 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1842, line: 718, size: 32, elements: !2877)
!2877 = !{!2878, !2885}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2876, file: !1842, line: 724, baseType: !2879, size: 32)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2876, file: !1842, line: 719, size: 32, elements: !2880)
!2880 = !{!2881, !2882, !2883, !2884}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2879, file: !1842, line: 720, baseType: !472, size: 8)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2879, file: !1842, line: 721, baseType: !472, size: 8, offset: 8)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2879, file: !1842, line: 722, baseType: !472, size: 8, offset: 16)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2879, file: !1842, line: 723, baseType: !472, size: 8, offset: 24)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2876, file: !1842, line: 725, baseType: !698, size: 32)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2640, file: !1842, line: 850, baseType: !485, size: 128, offset: 8192)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2640, file: !1842, line: 851, baseType: !2888, size: 64, offset: 8320)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1842, line: 60, flags: DIFlagFwdDecl)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2640, file: !1842, line: 855, baseType: !222, size: 64, offset: 8384)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2640, file: !1842, line: 856, baseType: !472, size: 8, offset: 8448)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2640, file: !1842, line: 857, baseType: !472, size: 8, offset: 8456)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2640, file: !1842, line: 858, baseType: !115, size: 32, offset: 8480)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2640, file: !1842, line: 859, baseType: !485, size: 128, offset: 8512)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2640, file: !1842, line: 860, baseType: !115, size: 32, offset: 8640)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2640, file: !1842, line: 861, baseType: !485, size: 128, offset: 8704)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2640, file: !1842, line: 873, baseType: !2898, size: 256, offset: 8832)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1842, line: 376, size: 256, elements: !2899)
!2899 = !{!2900, !2901, !2902, !2903}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2898, file: !1842, line: 381, baseType: !222, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2898, file: !1842, line: 384, baseType: !643, size: 64, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2898, file: !1842, line: 389, baseType: !643, size: 64, offset: 128)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2898, file: !1842, line: 392, baseType: !643, size: 64, offset: 192)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2640, file: !1842, line: 875, baseType: !485, size: 128, offset: 9088)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2640, file: !1842, line: 877, baseType: !2906, size: 320, offset: 9216)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2907, line: 86, size: 320, elements: !2908)
!2907 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2908 = !{!2909, !2910, !2911}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2906, file: !2907, line: 87, baseType: !115, size: 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2906, file: !2907, line: 88, baseType: !485, size: 128, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2906, file: !2907, line: 89, baseType: !485, size: 128, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2640, file: !1842, line: 878, baseType: !665, size: 192, align: 64, offset: 9536)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2640, file: !1842, line: 881, baseType: !1546, size: 64, offset: 9728)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2640, file: !1842, line: 882, baseType: !1546, size: 64, offset: 9792)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2640, file: !1842, line: 884, baseType: !115, size: 32, offset: 9856)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2640, file: !1842, line: 885, baseType: !115, size: 32, offset: 9888)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2640, file: !1842, line: 886, baseType: !115, size: 32, offset: 9920)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2640, file: !1842, line: 888, baseType: !115, size: 32, offset: 9952)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2640, file: !1842, line: 890, baseType: !222, size: 64, offset: 9984)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2640, file: !1842, line: 893, baseType: !37, size: 32, offset: 10048)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2640, file: !1842, line: 896, baseType: !37, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2640, file: !1842, line: 897, baseType: !37, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2640, file: !1842, line: 898, baseType: !37, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2640, file: !1842, line: 899, baseType: !37, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2640, file: !1842, line: 919, baseType: !37, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2640, file: !1842, line: 922, baseType: !37, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2640, file: !1842, line: 923, baseType: !37, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2640, file: !1842, line: 925, baseType: !37, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2640, file: !1842, line: 939, baseType: !37, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2640, file: !1842, line: 941, baseType: !37, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2640, file: !1842, line: 944, baseType: !37, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2640, file: !1842, line: 956, baseType: !37, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2640, file: !1842, line: 962, baseType: !37, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2640, file: !1842, line: 966, baseType: !37, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2640, file: !1842, line: 969, baseType: !222, size: 64, offset: 10176)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2640, file: !1842, line: 971, baseType: !2937, size: 448, offset: 10240)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !81, line: 25, size: 448, elements: !2938)
!2938 = !{!2939, !2940, !2945}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2937, file: !81, line: 26, baseType: !222, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2937, file: !81, line: 27, baseType: !2941, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!221, !2944}
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, scope: !2937, file: !81, line: 28, baseType: !2946, size: 320, offset: 128)
!2946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2937, file: !81, line: 28, size: 320, elements: !2947)
!2947 = !{!2948, !2958, !2983}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2946, file: !81, line: 37, baseType: !2949, size: 320)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2946, file: !81, line: 30, size: 320, elements: !2950)
!2950 = !{!2951, !2953, !2954, !2955, !2956, !2957}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2949, file: !81, line: 31, baseType: !2952, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2949, file: !81, line: 32, baseType: !698, size: 32, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2949, file: !81, line: 33, baseType: !698, size: 32, offset: 96)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2949, file: !81, line: 34, baseType: !698, size: 32, offset: 128)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2949, file: !81, line: 35, baseType: !641, size: 64, offset: 192)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2949, file: !81, line: 36, baseType: !2952, size: 64, offset: 256)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2946, file: !81, line: 47, baseType: !2959, size: 192)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2946, file: !81, line: 39, size: 192, elements: !2960)
!2960 = !{!2961, !2962, !2963, !2982}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2959, file: !81, line: 40, baseType: !2795, size: 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2959, file: !81, line: 41, baseType: !80, size: 32, offset: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, scope: !2959, file: !81, line: 42, baseType: !2964, size: 64, offset: 64)
!2964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2959, file: !81, line: 42, size: 64, elements: !2965)
!2965 = !{!2966, !2974}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2964, file: !81, line: 43, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2969, line: 7, size: 128, elements: !2970)
!2969 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2970 = !{!2971, !2973}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2968, file: !2969, line: 8, baseType: !2972, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !532, line: 93, baseType: !449)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2968, file: !2969, line: 9, baseType: !449, size: 64, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2964, file: !81, line: 44, baseType: !2975, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2977, line: 7, size: 64, elements: !2978)
!2977 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2978 = !{!2979, !2981}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2976, file: !2977, line: 8, baseType: !2980, size: 32)
!2980 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2977, line: 5, baseType: !658)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2976, file: !2977, line: 9, baseType: !658, size: 32, offset: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2959, file: !81, line: 46, baseType: !641, size: 64, offset: 128)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2946, file: !81, line: 55, baseType: !2984, size: 256)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2946, file: !81, line: 49, size: 256, elements: !2985)
!2985 = !{!2986, !2989, !2990, !2991, !2992}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2984, file: !81, line: 50, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !81, line: 14, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2984, file: !81, line: 51, baseType: !115, size: 32, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2984, file: !81, line: 52, baseType: !115, size: 32, offset: 96)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2984, file: !81, line: 53, baseType: !222, size: 64, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2984, file: !81, line: 54, baseType: !222, size: 64, offset: 192)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2640, file: !1842, line: 973, baseType: !2994, size: 32, offset: 10688)
!2994 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !219, line: 27, baseType: !2995)
!2995 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !532, line: 28, baseType: !115)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2640, file: !1842, line: 974, baseType: !2994, size: 32, offset: 10720)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2640, file: !1842, line: 978, baseType: !222, size: 64, offset: 10752)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2640, file: !1842, line: 987, baseType: !2639, size: 64, offset: 10816)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2640, file: !1842, line: 990, baseType: !2639, size: 64, offset: 10880)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2640, file: !1842, line: 995, baseType: !485, size: 128, offset: 10944)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2640, file: !1842, line: 996, baseType: !485, size: 128, offset: 11072)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2640, file: !1842, line: 997, baseType: !2639, size: 64, offset: 11200)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2640, file: !1842, line: 1005, baseType: !485, size: 128, offset: 11264)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2640, file: !1842, line: 1006, baseType: !485, size: 128, offset: 11392)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2640, file: !1842, line: 1009, baseType: !561, size: 64, offset: 11520)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2640, file: !1842, line: 1010, baseType: !3007, size: 512, offset: 11584)
!3007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 512, elements: !236)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2640, file: !1842, line: 1011, baseType: !485, size: 128, offset: 12096)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2640, file: !1842, line: 1012, baseType: !485, size: 128, offset: 12224)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2640, file: !1842, line: 1014, baseType: !1922, size: 64, offset: 12352)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2640, file: !1842, line: 1017, baseType: !2066, size: 64, offset: 12416)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2640, file: !1842, line: 1020, baseType: !2066, size: 64, offset: 12480)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2640, file: !1842, line: 1023, baseType: !220, size: 64, offset: 12544)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2640, file: !1842, line: 1025, baseType: !641, size: 64, offset: 12608)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2640, file: !1842, line: 1026, baseType: !641, size: 64, offset: 12672)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2640, file: !1842, line: 1031, baseType: !641, size: 64, offset: 12736)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2640, file: !1842, line: 1032, baseType: !3018, size: 192, offset: 12800)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1842, line: 324, size: 192, elements: !3019)
!3019 = !{!3020, !3021, !3022}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3018, file: !1842, line: 326, baseType: !641, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3018, file: !1842, line: 327, baseType: !641, size: 64, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3018, file: !1842, line: 328, baseType: !451, size: 32, offset: 128)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2640, file: !1842, line: 1041, baseType: !222, size: 64, offset: 12992)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2640, file: !1842, line: 1042, baseType: !222, size: 64, offset: 13056)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2640, file: !1842, line: 1045, baseType: !641, size: 64, offset: 13120)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2640, file: !1842, line: 1048, baseType: !641, size: 64, offset: 13184)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2640, file: !1842, line: 1051, baseType: !222, size: 64, offset: 13248)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2640, file: !1842, line: 1052, baseType: !222, size: 64, offset: 13312)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2640, file: !1842, line: 1055, baseType: !3030, size: 640, offset: 13376)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3031, line: 132, size: 640, elements: !3032)
!3031 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3032 = !{!3033, !3039, !3040}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3030, file: !3031, line: 133, baseType: !3034, size: 576)
!3034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3035, size: 576, elements: !557)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3031, line: 117, size: 192, elements: !3036)
!3036 = !{!3037, !3038}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3035, file: !3031, line: 118, baseType: !641, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3035, file: !3031, line: 119, baseType: !2804, size: 128, offset: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3030, file: !3031, line: 134, baseType: !37, size: 32, offset: 576)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3030, file: !3031, line: 135, baseType: !37, size: 32, offset: 608)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2640, file: !1842, line: 1058, baseType: !3042, size: 448, offset: 14016)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3031, line: 144, size: 448, elements: !3043)
!3043 = !{!3044, !3045, !3046}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3042, file: !3031, line: 145, baseType: !507, size: 128, align: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3042, file: !3031, line: 146, baseType: !437, size: 256, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3042, file: !3031, line: 147, baseType: !37, size: 32, offset: 384)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2640, file: !1842, line: 1064, baseType: !614, size: 64, offset: 14464)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2640, file: !1842, line: 1067, baseType: !614, size: 64, offset: 14528)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2640, file: !1842, line: 1070, baseType: !614, size: 64, offset: 14592)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2640, file: !1842, line: 1074, baseType: !650, size: 64, offset: 14656)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2640, file: !1842, line: 1084, baseType: !3052, size: 128, offset: 14720)
!3052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3053)
!3053 = !{!3054}
!3054 = !DISubrange(count: 16)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2640, file: !1842, line: 1086, baseType: !3056, size: 64, offset: 14848)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1842, line: 55, flags: DIFlagFwdDecl)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2640, file: !1842, line: 1089, baseType: !3059, size: 64, offset: 14912)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3060, line: 12, size: 64, elements: !3061)
!3060 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3061 = !{!3062}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3059, file: !3060, line: 13, baseType: !3063, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3060, line: 8, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2640, file: !1842, line: 1090, baseType: !3066, size: 128, offset: 14976)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3067, line: 13, size: 128, elements: !3068)
!3067 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3068 = !{!3069}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3066, file: !3067, line: 14, baseType: !485, size: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2640, file: !1842, line: 1097, baseType: !3071, size: 64, offset: 15104)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1842, line: 50, flags: DIFlagFwdDecl)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2640, file: !1842, line: 1100, baseType: !3074, size: 64, offset: 15168)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1842, line: 1100, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2640, file: !1842, line: 1103, baseType: !3077, size: 64, offset: 15232)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1842, line: 53, flags: DIFlagFwdDecl)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2640, file: !1842, line: 1107, baseType: !3080, size: 64, offset: 15296)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3082, line: 35, flags: DIFlagFwdDecl)
!3082 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2640, file: !1842, line: 1110, baseType: !3084, size: 64, offset: 15360)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3086, line: 93, size: 8768, elements: !3087)
!3086 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3087 = !{!3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3135, !3144, !3145, !3147, !3148, !3149, !3152, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3190, !3191, !3198, !3208, !3211, !3212, !3215, !3216, !3217, !3218, !3219, !3220}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3085, file: !3086, line: 94, baseType: !565, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3085, file: !3086, line: 95, baseType: !464, size: 32, offset: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3085, file: !3086, line: 96, baseType: !115, size: 32, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3085, file: !3086, line: 97, baseType: !115, size: 32, offset: 96)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3085, file: !3086, line: 98, baseType: !485, size: 128, offset: 128)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3085, file: !3086, line: 100, baseType: !585, size: 192, offset: 256)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3085, file: !3086, line: 103, baseType: !2639, size: 64, offset: 448)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3085, file: !3086, line: 106, baseType: !3096, size: 192, offset: 512)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !819, line: 32, size: 192, elements: !3097)
!3097 = !{!3098, !3099}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3096, file: !819, line: 33, baseType: !485, size: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3096, file: !819, line: 34, baseType: !3100, size: 64, offset: 128)
!3100 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3101, line: 25, baseType: !3102)
!3101 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3101, line: 23, size: 64, elements: !3103)
!3103 = !{!3104}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3102, file: !3101, line: 24, baseType: !296, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3085, file: !3086, line: 109, baseType: !574, size: 64, offset: 704)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3085, file: !3086, line: 112, baseType: !115, size: 32, offset: 768)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3085, file: !3086, line: 114, baseType: !115, size: 32, offset: 800)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3085, file: !3086, line: 115, baseType: !2639, size: 64, offset: 832)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3085, file: !3086, line: 118, baseType: !115, size: 32, offset: 896)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3085, file: !3086, line: 119, baseType: !37, size: 32, offset: 928)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3085, file: !3086, line: 121, baseType: !3112, size: 64, offset: 960)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3086, line: 80, size: 448, elements: !3114)
!3114 = !{!3115, !3116, !3122}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3113, file: !3086, line: 81, baseType: !464, size: 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3113, file: !3086, line: 82, baseType: !3117, size: 128, offset: 64)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3086, line: 75, size: 128, elements: !3118)
!3118 = !{!3119, !3120}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3117, file: !3086, line: 76, baseType: !2639, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3117, file: !3086, line: 77, baseType: !3121, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3113, file: !3086, line: 83, baseType: !1923, size: 256, offset: 192)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3085, file: !3086, line: 132, baseType: !37, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3085, file: !3086, line: 133, baseType: !37, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3085, file: !3086, line: 138, baseType: !37, size: 32, offset: 1056)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3085, file: !3086, line: 139, baseType: !485, size: 128, offset: 1088)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3085, file: !3086, line: 142, baseType: !2750, size: 512, offset: 1216)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3085, file: !3086, line: 143, baseType: !2758, size: 64, offset: 1728)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3085, file: !3086, line: 150, baseType: !3130, size: 256, offset: 1792)
!3130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3131, size: 256, elements: !311)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3086, line: 38, size: 128, elements: !3132)
!3132 = !{!3133, !3134}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3131, file: !3086, line: 39, baseType: !641, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3131, file: !3086, line: 40, baseType: !641, size: 64, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3085, file: !3086, line: 156, baseType: !3136, size: 192, offset: 2048)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3086, line: 66, size: 192, elements: !3137)
!3137 = !{!3138}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3136, file: !3086, line: 67, baseType: !3139, size: 192)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3086, line: 47, size: 192, elements: !3140)
!3140 = !{!3141, !3142, !3143}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3139, file: !3086, line: 48, baseType: !443, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3139, file: !3086, line: 49, baseType: !443, size: 64, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3139, file: !3086, line: 50, baseType: !443, size: 64, offset: 128)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3085, file: !3086, line: 160, baseType: !3030, size: 640, offset: 2240)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3085, file: !3086, line: 163, baseType: !3146, size: 256, offset: 2880)
!3146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 256, elements: !236)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3085, file: !3086, line: 169, baseType: !561, size: 64, offset: 3136)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3085, file: !3086, line: 172, baseType: !115, size: 32, offset: 3200)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3085, file: !3086, line: 174, baseType: !3150, size: 64, offset: 3264)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3086, line: 174, flags: DIFlagFwdDecl)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3085, file: !3086, line: 185, baseType: !3153, size: 64, offset: 3328)
!3153 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !859, line: 860, baseType: !3154)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !859, line: 853, size: 64, elements: !3155)
!3155 = !{!3156, !3157}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3154, file: !859, line: 858, baseType: !858, size: 32)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3154, file: !859, line: 859, baseType: !517, size: 32, offset: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3085, file: !3086, line: 186, baseType: !641, size: 64, offset: 3392)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3085, file: !3086, line: 186, baseType: !641, size: 64, offset: 3456)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3085, file: !3086, line: 186, baseType: !641, size: 64, offset: 3520)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3085, file: !3086, line: 186, baseType: !641, size: 64, offset: 3584)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3085, file: !3086, line: 187, baseType: !641, size: 64, offset: 3648)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3085, file: !3086, line: 188, baseType: !641, size: 64, offset: 3712)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3085, file: !3086, line: 189, baseType: !3018, size: 192, offset: 3776)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3085, file: !3086, line: 190, baseType: !222, size: 64, offset: 3968)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3085, file: !3086, line: 190, baseType: !222, size: 64, offset: 4032)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3085, file: !3086, line: 190, baseType: !222, size: 64, offset: 4096)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3085, file: !3086, line: 190, baseType: !222, size: 64, offset: 4160)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3085, file: !3086, line: 191, baseType: !222, size: 64, offset: 4224)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3085, file: !3086, line: 191, baseType: !222, size: 64, offset: 4288)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3085, file: !3086, line: 191, baseType: !222, size: 64, offset: 4352)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3085, file: !3086, line: 191, baseType: !222, size: 64, offset: 4416)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3085, file: !3086, line: 192, baseType: !222, size: 64, offset: 4480)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3085, file: !3086, line: 192, baseType: !222, size: 64, offset: 4544)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3085, file: !3086, line: 192, baseType: !222, size: 64, offset: 4608)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3085, file: !3086, line: 192, baseType: !222, size: 64, offset: 4672)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3085, file: !3086, line: 193, baseType: !222, size: 64, offset: 4736)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3085, file: !3086, line: 193, baseType: !222, size: 64, offset: 4800)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3085, file: !3086, line: 194, baseType: !3180, size: 448, offset: 4864)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3181, line: 12, size: 448, elements: !3182)
!3181 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3182 = !{!3183, !3184, !3185, !3186, !3187, !3188, !3189}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3180, file: !3181, line: 15, baseType: !641, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3180, file: !3181, line: 17, baseType: !641, size: 64, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3180, file: !3181, line: 19, baseType: !641, size: 64, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3180, file: !3181, line: 21, baseType: !641, size: 64, offset: 192)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3180, file: !3181, line: 29, baseType: !641, size: 64, offset: 256)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3180, file: !3181, line: 35, baseType: !641, size: 64, offset: 320)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3180, file: !3181, line: 44, baseType: !641, size: 64, offset: 384)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3085, file: !3086, line: 202, baseType: !643, size: 64, offset: 5312)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3085, file: !3086, line: 213, baseType: !3192, size: 2048, offset: 5376)
!3192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3193, size: 2048, elements: !3053)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3194, line: 43, size: 128, elements: !3195)
!3194 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3195 = !{!3196, !3197}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3193, file: !3194, line: 44, baseType: !1049, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3193, file: !3194, line: 45, baseType: !1049, size: 64, offset: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3085, file: !3086, line: 216, baseType: !3199, size: 448, offset: 7424)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3086, line: 30, size: 448, elements: !3200)
!3200 = !{!3201, !3202, !3203, !3204, !3205, !3206, !3207}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3199, file: !3086, line: 31, baseType: !115, size: 32)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3199, file: !3086, line: 32, baseType: !221, size: 64, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3199, file: !3086, line: 33, baseType: !222, size: 64, offset: 128)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3199, file: !3086, line: 34, baseType: !641, size: 64, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3199, file: !3086, line: 34, baseType: !641, size: 64, offset: 256)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3199, file: !3086, line: 35, baseType: !222, size: 64, offset: 320)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3199, file: !3086, line: 35, baseType: !222, size: 64, offset: 384)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3085, file: !3086, line: 219, baseType: !3209, size: 64, offset: 7872)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3086, line: 219, flags: DIFlagFwdDecl)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3085, file: !3086, line: 222, baseType: !37, size: 32, offset: 7936)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3085, file: !3086, line: 223, baseType: !3213, size: 64, offset: 8000)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3086, line: 223, flags: DIFlagFwdDecl)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3085, file: !3086, line: 230, baseType: !730, size: 8, offset: 8064)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3085, file: !3086, line: 231, baseType: !356, size: 16, offset: 8080)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3085, file: !3086, line: 232, baseType: !356, size: 16, offset: 8096)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3085, file: !3086, line: 234, baseType: !1546, size: 64, offset: 8128)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3085, file: !3086, line: 237, baseType: !437, size: 256, offset: 8192)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3085, file: !3086, line: 243, baseType: !673, size: 320, offset: 8448)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2640, file: !1842, line: 1111, baseType: !3222, size: 64, offset: 15424)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3086, line: 20, size: 16640, elements: !3224)
!3224 = !{!3225, !3226, !3227, !3228}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3223, file: !3086, line: 21, baseType: !517, size: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3223, file: !3086, line: 22, baseType: !565, size: 32, offset: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3223, file: !3086, line: 23, baseType: !585, size: 192, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3223, file: !3086, line: 24, baseType: !3229, size: 16384, offset: 256)
!3229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3230, size: 16384, elements: !20)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !819, line: 51, size: 256, elements: !3231)
!3231 = !{!3232}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3230, file: !819, line: 52, baseType: !3233, size: 256)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !819, line: 37, size: 256, elements: !3234)
!3234 = !{!3235, !3242, !3243, !3247}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3233, file: !819, line: 39, baseType: !3236, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3237, line: 83, baseType: !3238)
!3237 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3237, line: 82, baseType: !3240)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{null, !115}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3233, file: !819, line: 40, baseType: !222, size: 64, offset: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3233, file: !819, line: 46, baseType: !3244, size: 64, offset: 128)
!3244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3237, line: 86, baseType: !3245)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3237, line: 85, baseType: !31)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3233, file: !819, line: 48, baseType: !3100, size: 64, offset: 192)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2640, file: !1842, line: 1112, baseType: !3100, size: 64, offset: 15488)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2640, file: !1842, line: 1113, baseType: !3100, size: 64, offset: 15552)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2640, file: !1842, line: 1115, baseType: !3100, size: 64, offset: 15616)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2640, file: !1842, line: 1116, baseType: !3096, size: 192, offset: 15680)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2640, file: !1842, line: 1117, baseType: !222, size: 64, offset: 15872)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2640, file: !1842, line: 1118, baseType: !1047, size: 64, offset: 15936)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2640, file: !1842, line: 1119, baseType: !37, size: 32, offset: 16000)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2640, file: !1842, line: 1121, baseType: !510, size: 64, offset: 16064)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2640, file: !1842, line: 1125, baseType: !3257, size: 64, offset: 16128)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1842, line: 43, flags: DIFlagFwdDecl)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2640, file: !1842, line: 1127, baseType: !604, size: 32, offset: 16192)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2640, file: !1842, line: 1128, baseType: !37, size: 32, offset: 16224)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2640, file: !1842, line: 1130, baseType: !3262, size: 128, offset: 16256)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3263, line: 37, size: 128, elements: !3264)
!3263 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3264 = !{!3265, !3266, !3267}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3262, file: !3263, line: 38, baseType: !115, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3262, file: !3263, line: 39, baseType: !464, size: 32, offset: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3262, file: !3263, line: 40, baseType: !3268, size: 64, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3263, line: 24, flags: DIFlagFwdDecl)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2640, file: !1842, line: 1131, baseType: !3271, size: 256, offset: 16384)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3272, line: 12, size: 256, elements: !3273)
!3272 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3273 = !{!3274, !3275, !3276, !3277}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3271, file: !3272, line: 13, baseType: !741, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3271, file: !3272, line: 14, baseType: !222, size: 64, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3271, file: !3272, line: 15, baseType: !222, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3271, file: !3272, line: 16, baseType: !730, size: 8, offset: 192)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2640, file: !1842, line: 1134, baseType: !641, size: 64, offset: 16640)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2640, file: !1842, line: 1135, baseType: !641, size: 64, offset: 16704)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2640, file: !1842, line: 1138, baseType: !517, size: 32, offset: 16768)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2640, file: !1842, line: 1141, baseType: !451, size: 32, offset: 16800)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2640, file: !1842, line: 1143, baseType: !3283, size: 64, offset: 16832)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1842, line: 735, size: 64, elements: !3284)
!3284 = !{!3285}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3283, file: !1842, line: 736, baseType: !3286, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2640, file: !1842, line: 1147, baseType: !1260, size: 128, offset: 16896)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2640, file: !1842, line: 1149, baseType: !2639, size: 64, offset: 17024)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2640, file: !1842, line: 1151, baseType: !3290, size: 64, offset: 17088)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1842, line: 1151, flags: DIFlagFwdDecl)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2640, file: !1842, line: 1188, baseType: !220, size: 64, offset: 17152)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2640, file: !1842, line: 1191, baseType: !3294, size: 64, offset: 17216)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1842, line: 44, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2640, file: !1842, line: 1194, baseType: !3297, size: 64, offset: 17280)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1842, line: 45, flags: DIFlagFwdDecl)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2640, file: !1842, line: 1197, baseType: !3300, size: 64, offset: 17344)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1842, line: 61, flags: DIFlagFwdDecl)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2640, file: !1842, line: 1199, baseType: !3303, size: 64, offset: 17408)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3305, line: 99, size: 128, elements: !3306)
!3305 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3306 = !{!3307, !3308, !3309}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3304, file: !3305, line: 100, baseType: !441, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3304, file: !3305, line: 101, baseType: !464, size: 32, offset: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3304, file: !3305, line: 103, baseType: !291, size: 16, offset: 96)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2640, file: !1842, line: 1202, baseType: !3311, size: 64, offset: 17472)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1842, line: 48, flags: DIFlagFwdDecl)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2640, file: !1842, line: 1205, baseType: !222, size: 64, offset: 17536)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2640, file: !1842, line: 1206, baseType: !3315, size: 64, offset: 17600)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !819, line: 14, baseType: !3317)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !819, line: 12, size: 384, elements: !3318)
!3318 = !{!3319}
!3319 = !DIDerivedType(tag: DW_TAG_member, scope: !3317, file: !819, line: 13, baseType: !3320, size: 384)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3317, file: !819, line: 13, size: 384, elements: !3321)
!3321 = !{!3322, !3323, !3324, !3325}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3320, file: !819, line: 13, baseType: !115, size: 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3320, file: !819, line: 13, baseType: !115, size: 32, offset: 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3320, file: !819, line: 13, baseType: !115, size: 32, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3320, file: !819, line: 13, baseType: !3326, size: 256, offset: 128)
!3326 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3327, line: 37, size: 256, elements: !3328)
!3327 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3328 = !{!3329, !3334, !3347, !3353, !3362, !3388, !3393}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3326, file: !3327, line: 42, baseType: !3330, size: 64)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3326, file: !3327, line: 39, size: 64, elements: !3331)
!3331 = !{!3332, !3333}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3330, file: !3327, line: 40, baseType: !2995, size: 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3330, file: !3327, line: 41, baseType: !610, size: 32, offset: 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3326, file: !3327, line: 50, baseType: !3335, size: 192)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3326, file: !3327, line: 45, size: 192, elements: !3336)
!3336 = !{!3337, !3339, !3340, !3346}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3335, file: !3327, line: 46, baseType: !3338, size: 32)
!3338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !532, line: 95, baseType: !115)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3335, file: !3327, line: 47, baseType: !115, size: 32, offset: 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3335, file: !3327, line: 48, baseType: !3341, size: 64, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3327, line: 11, baseType: !3342)
!3342 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3327, line: 8, size: 64, elements: !3343)
!3343 = !{!3344, !3345}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3342, file: !3327, line: 9, baseType: !115, size: 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3342, file: !3327, line: 10, baseType: !220, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3335, file: !3327, line: 49, baseType: !115, size: 32, offset: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3326, file: !3327, line: 57, baseType: !3348, size: 128)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3326, file: !3327, line: 53, size: 128, elements: !3349)
!3349 = !{!3350, !3351, !3352}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3348, file: !3327, line: 54, baseType: !2995, size: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3348, file: !3327, line: 55, baseType: !610, size: 32, offset: 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3348, file: !3327, line: 56, baseType: !3341, size: 64, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3326, file: !3327, line: 66, baseType: !3354, size: 256)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3326, file: !3327, line: 60, size: 256, elements: !3355)
!3355 = !{!3356, !3357, !3358, !3359, !3361}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3354, file: !3327, line: 61, baseType: !2995, size: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3354, file: !3327, line: 62, baseType: !610, size: 32, offset: 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3354, file: !3327, line: 63, baseType: !115, size: 32, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3354, file: !3327, line: 64, baseType: !3360, size: 64, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !532, line: 94, baseType: !1046)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3354, file: !3327, line: 65, baseType: !3360, size: 64, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3326, file: !3327, line: 105, baseType: !3363, size: 256)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3326, file: !3327, line: 69, size: 256, elements: !3364)
!3364 = !{!3365, !3366}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3363, file: !3327, line: 70, baseType: !220, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, scope: !3363, file: !3327, line: 79, baseType: !3367, size: 192, offset: 64)
!3367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3363, file: !3327, line: 79, size: 192, elements: !3368)
!3368 = !{!3369, !3370, !3371, !3377, !3382}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3367, file: !3327, line: 81, baseType: !115, size: 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3367, file: !3327, line: 86, baseType: !356, size: 16)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3367, file: !3327, line: 92, baseType: !3372, size: 192)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3367, file: !3327, line: 88, size: 192, elements: !3373)
!3373 = !{!3374, !3375, !3376}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3372, file: !3327, line: 89, baseType: !3, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3372, file: !3327, line: 90, baseType: !220, size: 64, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3372, file: !3327, line: 91, baseType: !220, size: 64, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3367, file: !3327, line: 97, baseType: !3378, size: 96)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3367, file: !3327, line: 94, size: 96, elements: !3379)
!3379 = !{!3380, !3381}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3378, file: !3327, line: 95, baseType: !3, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3378, file: !3327, line: 96, baseType: !331, size: 32, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3367, file: !3327, line: 103, baseType: !3383, size: 128)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3367, file: !3327, line: 99, size: 128, elements: !3384)
!3384 = !{!3385, !3386, !3387}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3383, file: !3327, line: 100, baseType: !222, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3383, file: !3327, line: 101, baseType: !331, size: 32, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3383, file: !3327, line: 102, baseType: !331, size: 32, offset: 96)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3326, file: !3327, line: 111, baseType: !3389, size: 128)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3326, file: !3327, line: 108, size: 128, elements: !3390)
!3390 = !{!3391, !3392}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3389, file: !3327, line: 109, baseType: !221, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3389, file: !3327, line: 110, baseType: !115, size: 32, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3326, file: !3327, line: 118, baseType: !3394, size: 128)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3326, file: !3327, line: 114, size: 128, elements: !3395)
!3395 = !{!3396, !3397, !3398}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3394, file: !3327, line: 115, baseType: !220, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3394, file: !3327, line: 116, baseType: !115, size: 32, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3394, file: !3327, line: 117, baseType: !37, size: 32, offset: 96)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2640, file: !1842, line: 1208, baseType: !3180, size: 448, offset: 17664)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2640, file: !1842, line: 1215, baseType: !641, size: 64, offset: 18112)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2640, file: !1842, line: 1217, baseType: !641, size: 64, offset: 18176)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2640, file: !1842, line: 1219, baseType: !641, size: 64, offset: 18240)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2640, file: !1842, line: 1223, baseType: !3404, size: 64, offset: 18304)
!3404 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3405, line: 99, baseType: !3406)
!3405 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3405, line: 99, size: 64, elements: !3407)
!3407 = !{!3408}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3406, file: !3405, line: 99, baseType: !296, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2640, file: !1842, line: 1225, baseType: !858, size: 32, offset: 18368)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2640, file: !1842, line: 1226, baseType: !115, size: 32, offset: 18400)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2640, file: !1842, line: 1227, baseType: !115, size: 32, offset: 18432)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2640, file: !1842, line: 1231, baseType: !3413, size: 64, offset: 18496)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1842, line: 1231, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2640, file: !1842, line: 1233, baseType: !485, size: 128, offset: 18560)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2640, file: !1842, line: 1240, baseType: !3417, size: 64, offset: 18688)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1842, line: 62, flags: DIFlagFwdDecl)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2640, file: !1842, line: 1242, baseType: !3420, size: 64, offset: 18752)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1842, line: 1242, flags: DIFlagFwdDecl)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2640, file: !1842, line: 1244, baseType: !485, size: 128, offset: 18816)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2640, file: !1842, line: 1245, baseType: !3424, size: 64, offset: 18944)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1842, line: 51, flags: DIFlagFwdDecl)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2640, file: !1842, line: 1246, baseType: !437, size: 256, offset: 19008)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2640, file: !1842, line: 1247, baseType: !37, size: 32, offset: 19264)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2640, file: !1842, line: 1250, baseType: !3429, size: 64, offset: 19328)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1842, line: 57, flags: DIFlagFwdDecl)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2640, file: !1842, line: 1251, baseType: !437, size: 256, offset: 19392)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2640, file: !1842, line: 1252, baseType: !485, size: 128, offset: 19648)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2640, file: !1842, line: 1259, baseType: !1749, size: 64, offset: 19776)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2640, file: !1842, line: 1260, baseType: !356, size: 16, offset: 19840)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2640, file: !1842, line: 1261, baseType: !356, size: 16, offset: 19856)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2640, file: !1842, line: 1314, baseType: !3437, size: 64, offset: 19904)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3439, line: 62, size: 256, align: 256, elements: !3440)
!3439 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3446, !3447}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3438, file: !3439, line: 75, baseType: !331, size: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3438, file: !3439, line: 90, baseType: !331, size: 32, offset: 32)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3438, file: !3439, line: 112, baseType: !642, size: 64, offset: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3438, file: !3439, line: 132, baseType: !331, size: 32, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3438, file: !3439, line: 140, baseType: !331, size: 32, offset: 160)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3438, file: !3439, line: 149, baseType: !331, size: 32, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3438, file: !3439, line: 154, baseType: !3448, offset: 224)
!3448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !600)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2640, file: !1842, line: 1315, baseType: !698, size: 32, offset: 19968)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2640, file: !1842, line: 1316, baseType: !698, size: 32, offset: 20000)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2640, file: !1842, line: 1321, baseType: !222, size: 64, offset: 20032)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2640, file: !1842, line: 1325, baseType: !115, size: 32, offset: 20096)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2640, file: !1842, line: 1326, baseType: !115, size: 32, offset: 20128)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2640, file: !1842, line: 1327, baseType: !115, size: 32, offset: 20160)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2640, file: !1842, line: 1328, baseType: !115, size: 32, offset: 20192)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2640, file: !1842, line: 1329, baseType: !507, size: 128, align: 64, offset: 20224)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2640, file: !1842, line: 1332, baseType: !3458, size: 128, offset: 20352)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3459, line: 51, size: 128, elements: !3460)
!3459 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3460 = !{!3461, !3466, !3467}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3458, file: !3459, line: 60, baseType: !3462, size: 64)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3463, line: 7, size: 64, elements: !3464)
!3463 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3464 = !{!3465}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3462, file: !3463, line: 12, baseType: !2865, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3458, file: !3459, line: 63, baseType: !730, size: 8, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3458, file: !3459, line: 70, baseType: !730, size: 8, offset: 72)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2640, file: !1842, line: 1335, baseType: !3469, size: 64, offset: 20480)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1842, line: 59, flags: DIFlagFwdDecl)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2640, file: !1842, line: 1337, baseType: !3472, size: 128, offset: 20544)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3459, line: 39, size: 128, elements: !3473)
!3473 = !{!3474, !3475, !3476}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3472, file: !3459, line: 40, baseType: !1278, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3472, file: !3459, line: 42, baseType: !331, size: 32, offset: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3472, file: !3459, line: 43, baseType: !331, size: 32, offset: 96)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2640, file: !1842, line: 1340, baseType: !3478, size: 64, offset: 20672)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1842, line: 69, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2640, file: !1842, line: 1351, baseType: !115, size: 32, offset: 20736)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2640, file: !1842, line: 1352, baseType: !115, size: 32, offset: 20768)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2640, file: !1842, line: 1354, baseType: !222, size: 64, offset: 20800)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2640, file: !1842, line: 1364, baseType: !641, size: 64, offset: 20864)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2640, file: !1842, line: 1365, baseType: !641, size: 64, offset: 20928)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2640, file: !1842, line: 1412, baseType: !222, size: 64, offset: 20992)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2640, file: !1842, line: 1453, baseType: !3487, size: 64, offset: 21056)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1842, line: 1453, flags: DIFlagFwdDecl)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2640, file: !1842, line: 1457, baseType: !3490, size: 64, offset: 21120)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !87, line: 61, size: 576, elements: !3492)
!3492 = !{!3493, !3494, !3513, !3516, !3517, !3550, !3560}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3491, file: !87, line: 62, baseType: !86, size: 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, scope: !3491, file: !87, line: 64, baseType: !3495, size: 192, offset: 64)
!3495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3491, file: !87, line: 64, size: 192, elements: !3496)
!3496 = !{!3497, !3508}
!3497 = !DIDerivedType(tag: DW_TAG_member, scope: !3495, file: !87, line: 65, baseType: !3498, size: 192)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3495, file: !87, line: 65, size: 192, elements: !3499)
!3499 = !{!3500, !3507}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3498, file: !87, line: 66, baseType: !3501, size: 128)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3502, line: 50, size: 128, elements: !3503)
!3502 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3503 = !{!3504, !3505, !3506}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3501, file: !3502, line: 52, baseType: !222, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3501, file: !3502, line: 54, baseType: !37, size: 32, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3501, file: !3502, line: 55, baseType: !37, size: 32, offset: 96)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3498, file: !87, line: 67, baseType: !222, size: 64, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, scope: !3495, file: !87, line: 70, baseType: !3509, size: 192)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3495, file: !87, line: 70, size: 192, elements: !3510)
!3510 = !{!3511, !3512}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3509, file: !87, line: 71, baseType: !507, size: 128, align: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3509, file: !87, line: 72, baseType: !222, size: 64, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3491, file: !87, line: 76, baseType: !3514, size: 64, offset: 256)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !87, line: 76, flags: DIFlagFwdDecl)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3491, file: !87, line: 77, baseType: !222, size: 64, offset: 320)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3491, file: !87, line: 79, baseType: !3518, size: 64, offset: 384)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3502, line: 25, size: 256, elements: !3520)
!3520 = !{!3521, !3527, !3531}
!3521 = !DIDerivedType(tag: DW_TAG_member, scope: !3519, file: !3502, line: 26, baseType: !3522, size: 128)
!3522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3519, file: !3502, line: 26, size: 128, elements: !3523)
!3523 = !{!3524, !3526}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3522, file: !3502, line: 27, baseType: !3525, size: 128)
!3525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 128, elements: !3053)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3522, file: !3502, line: 28, baseType: !3525, size: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3519, file: !3502, line: 31, baseType: !3528, size: 64, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3530)
!3530 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3502, line: 23, flags: DIFlagFwdDecl)
!3531 = !DIDerivedType(tag: DW_TAG_member, scope: !3519, file: !3502, line: 33, baseType: !3532, size: 64, offset: 192)
!3532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3519, file: !3502, line: 33, size: 64, elements: !3533)
!3533 = !{!3534, !3540, !3545}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3532, file: !3502, line: 38, baseType: !3535, size: 64)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3532, file: !3502, line: 34, size: 64, elements: !3536)
!3536 = !{!3537, !3538, !3539}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3535, file: !3502, line: 35, baseType: !658, size: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3535, file: !3502, line: 36, baseType: !472, size: 8, offset: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3535, file: !3502, line: 37, baseType: !472, size: 8, offset: 40)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3532, file: !3502, line: 42, baseType: !3541, size: 16)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3532, file: !3502, line: 39, size: 16, elements: !3542)
!3542 = !{!3543, !3544}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3541, file: !3502, line: 40, baseType: !472, size: 8)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3541, file: !3502, line: 41, baseType: !472, size: 8, offset: 8)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3532, file: !3502, line: 46, baseType: !3546, size: 16)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3532, file: !3502, line: 43, size: 16, elements: !3547)
!3547 = !{!3548, !3549}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3546, file: !3502, line: 44, baseType: !472, size: 8)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3546, file: !3502, line: 45, baseType: !472, size: 8, offset: 8)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3491, file: !87, line: 81, baseType: !3551, size: 64, offset: 448)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !87, line: 85, size: 384, elements: !3553)
!3553 = !{!3554, !3555, !3556, !3557, !3558, !3559}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3552, file: !87, line: 86, baseType: !3514, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3552, file: !87, line: 87, baseType: !222, size: 64, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3552, file: !87, line: 88, baseType: !222, size: 64, offset: 128)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3552, file: !87, line: 89, baseType: !222, size: 64, offset: 192)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3552, file: !87, line: 90, baseType: !730, size: 8, offset: 256)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3552, file: !87, line: 92, baseType: !3551, size: 64, offset: 320)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3491, file: !87, line: 82, baseType: !37, size: 32, offset: 512)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2640, file: !1842, line: 1463, baseType: !3562, offset: 21184)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1842, line: 739, elements: !1567)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2640, file: !1842, line: 1470, baseType: !507, size: 128, align: 64, offset: 21184)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2640, file: !1842, line: 1471, baseType: !565, size: 32, offset: 21312)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2640, file: !1842, line: 1472, baseType: !115, size: 32, offset: 21344)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2640, file: !1842, line: 1474, baseType: !2639, size: 64, offset: 21376)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2640, file: !1842, line: 1475, baseType: !2166, size: 320, offset: 21440)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2640, file: !1842, line: 1478, baseType: !3569, size: 64, offset: 21760)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1842, line: 1478, flags: DIFlagFwdDecl)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2640, file: !1842, line: 1482, baseType: !565, size: 32, offset: 21824)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2640, file: !1842, line: 1489, baseType: !220, size: 64, offset: 21888)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2640, file: !1842, line: 1504, baseType: !220, size: 64, offset: 21952)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2640, file: !1842, line: 1505, baseType: !642, size: 64, offset: 22016)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2640, file: !1842, line: 1506, baseType: !641, size: 64, offset: 22080)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2640, file: !1842, line: 1507, baseType: !642, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2640, file: !1842, line: 1508, baseType: !642, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2640, file: !1842, line: 1509, baseType: !642, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2640, file: !1842, line: 1510, baseType: !507, size: 128, align: 64, offset: 22208)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2640, file: !1842, line: 1511, baseType: !115, size: 32, offset: 22336)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2640, file: !1842, line: 1515, baseType: !3582, size: 64, offset: 22400)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !502, line: 56, size: 64, elements: !3583)
!3583 = !{!3584}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3582, file: !502, line: 57, baseType: !505, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2640, file: !1842, line: 1518, baseType: !3582, size: 64, offset: 22464)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2640, file: !1842, line: 1528, baseType: !507, size: 128, align: 64, offset: 22528)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2640, file: !1842, line: 1552, baseType: !3588, size: 35328, offset: 23040)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3589, line: 430, size: 35328, elements: !3590)
!3589 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3590 = !{!3591, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3620, !3621, !3622, !3623, !3624, !3625, !3628, !3629, !3630, !3631}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3588, file: !3589, line: 432, baseType: !3592, size: 192)
!3592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3593, size: 192, elements: !557)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3594, line: 16, size: 64, elements: !3595)
!3594 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3595 = !{!3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3593, file: !3594, line: 17, baseType: !427, size: 16)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3593, file: !3594, line: 18, baseType: !427, size: 16, offset: 16)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3593, file: !3594, line: 19, baseType: !427, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3593, file: !3594, line: 19, baseType: !427, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3593, file: !3594, line: 19, baseType: !427, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3593, file: !3594, line: 19, baseType: !427, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3593, file: !3594, line: 19, baseType: !427, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3593, file: !3594, line: 20, baseType: !427, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3593, file: !3594, line: 20, baseType: !427, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3593, file: !3594, line: 20, baseType: !427, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3593, file: !3594, line: 20, baseType: !427, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3593, file: !3594, line: 20, baseType: !427, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3593, file: !3594, line: 20, baseType: !427, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3588, file: !3589, line: 436, baseType: !222, size: 64, offset: 192)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3588, file: !3589, line: 440, baseType: !291, size: 16, offset: 256)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3588, file: !3589, line: 441, baseType: !291, size: 16, offset: 272)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3588, file: !3589, line: 442, baseType: !291, size: 16, offset: 288)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3588, file: !3589, line: 443, baseType: !291, size: 16, offset: 304)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3588, file: !3589, line: 447, baseType: !222, size: 64, offset: 320)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3588, file: !3589, line: 448, baseType: !222, size: 64, offset: 384)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3588, file: !3589, line: 459, baseType: !3617, size: 256, offset: 448)
!3617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3618, size: 256, elements: !236)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3589, line: 428, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3588, file: !3589, line: 461, baseType: !222, size: 64, offset: 704)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3588, file: !3589, line: 463, baseType: !222, size: 64, offset: 768)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3588, file: !3589, line: 465, baseType: !222, size: 64, offset: 832)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3588, file: !3589, line: 466, baseType: !222, size: 64, offset: 896)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3588, file: !3589, line: 467, baseType: !222, size: 64, offset: 960)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3588, file: !3589, line: 473, baseType: !3626, size: 64, offset: 1024)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3589, line: 10, flags: DIFlagFwdDecl)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3588, file: !3589, line: 480, baseType: !222, size: 64, offset: 1088)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3588, file: !3589, line: 482, baseType: !37, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3588, file: !3589, line: 491, baseType: !698, size: 32, offset: 1184)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3588, file: !3589, line: 501, baseType: !3632, size: 33792, offset: 1536)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3633, line: 448, size: 33792, elements: !3634)
!3633 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3634 = !{!3635, !3636, !3637, !3797, !3798, !3804, !3805}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3632, file: !3633, line: 461, baseType: !37, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3632, file: !3633, line: 468, baseType: !222, size: 64, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3632, file: !3633, line: 476, baseType: !3638, size: 64, offset: 128)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3633, line: 356, size: 33280, align: 512, elements: !3640)
!3640 = !{!3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3639, file: !3633, line: 358, baseType: !37, size: 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3639, file: !3633, line: 361, baseType: !37, size: 32, offset: 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3639, file: !3633, line: 364, baseType: !641, size: 64, offset: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3639, file: !3633, line: 367, baseType: !641, size: 64, offset: 128)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3639, file: !3633, line: 370, baseType: !641, size: 64, offset: 192)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3639, file: !3633, line: 373, baseType: !37, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3639, file: !3633, line: 376, baseType: !37, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3639, file: !3633, line: 391, baseType: !37, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3639, file: !3633, line: 394, baseType: !37, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3639, file: !3633, line: 397, baseType: !3651, size: 32768, offset: 512)
!3651 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3633, line: 348, size: 32768, elements: !3652)
!3652 = !{!3653, !3668, !3703, !3780, !3793}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3651, file: !3633, line: 349, baseType: !3654, size: 896)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3633, line: 12, size: 896, elements: !3655)
!3655 = !{!3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3667}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3654, file: !3633, line: 13, baseType: !698, size: 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3654, file: !3633, line: 14, baseType: !698, size: 32, offset: 32)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3654, file: !3633, line: 15, baseType: !698, size: 32, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3654, file: !3633, line: 16, baseType: !698, size: 32, offset: 96)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3654, file: !3633, line: 17, baseType: !698, size: 32, offset: 128)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3654, file: !3633, line: 18, baseType: !698, size: 32, offset: 160)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3654, file: !3633, line: 19, baseType: !698, size: 32, offset: 192)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3654, file: !3633, line: 22, baseType: !3664, size: 640, offset: 224)
!3664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 640, elements: !3665)
!3665 = !{!3666}
!3666 = !DISubrange(count: 20)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3654, file: !3633, line: 25, baseType: !698, size: 32, offset: 864)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3651, file: !3633, line: 350, baseType: !3669, size: 4096, align: 128)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3633, line: 34, size: 4096, align: 128, elements: !3670)
!3670 = !{!3671, !3672, !3673, !3674, !3675, !3690, !3691, !3692, !3694, !3696, !3698}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3669, file: !3633, line: 35, baseType: !427, size: 16)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3669, file: !3633, line: 36, baseType: !427, size: 16, offset: 16)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3669, file: !3633, line: 37, baseType: !427, size: 16, offset: 32)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3669, file: !3633, line: 38, baseType: !427, size: 16, offset: 48)
!3675 = !DIDerivedType(tag: DW_TAG_member, scope: !3669, file: !3633, line: 39, baseType: !3676, size: 128, offset: 64)
!3676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3669, file: !3633, line: 39, size: 128, elements: !3677)
!3677 = !{!3678, !3683}
!3678 = !DIDerivedType(tag: DW_TAG_member, scope: !3676, file: !3633, line: 40, baseType: !3679, size: 128)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3676, file: !3633, line: 40, size: 128, elements: !3680)
!3680 = !{!3681, !3682}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3679, file: !3633, line: 41, baseType: !641, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3679, file: !3633, line: 42, baseType: !641, size: 64, offset: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, scope: !3676, file: !3633, line: 44, baseType: !3684, size: 128)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3676, file: !3633, line: 44, size: 128, elements: !3685)
!3685 = !{!3686, !3687, !3688, !3689}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3684, file: !3633, line: 45, baseType: !698, size: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3684, file: !3633, line: 46, baseType: !698, size: 32, offset: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3684, file: !3633, line: 47, baseType: !698, size: 32, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3684, file: !3633, line: 48, baseType: !698, size: 32, offset: 96)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3669, file: !3633, line: 51, baseType: !698, size: 32, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3669, file: !3633, line: 52, baseType: !698, size: 32, offset: 224)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3669, file: !3633, line: 55, baseType: !3693, size: 1024, offset: 256)
!3693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 1024, elements: !334)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3669, file: !3633, line: 58, baseType: !3695, size: 2048, offset: 1280)
!3695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 2048, elements: !20)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3669, file: !3633, line: 60, baseType: !3697, size: 384, offset: 3328)
!3697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 384, elements: !302)
!3698 = !DIDerivedType(tag: DW_TAG_member, scope: !3669, file: !3633, line: 62, baseType: !3699, size: 384, offset: 3712)
!3699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3669, file: !3633, line: 62, size: 384, elements: !3700)
!3700 = !{!3701, !3702}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3699, file: !3633, line: 63, baseType: !3697, size: 384)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3699, file: !3633, line: 64, baseType: !3697, size: 384)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3651, file: !3633, line: 351, baseType: !3704, size: 1088)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3633, line: 79, size: 1088, elements: !3705)
!3705 = !{!3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3779}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3704, file: !3633, line: 80, baseType: !698, size: 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3704, file: !3633, line: 81, baseType: !698, size: 32, offset: 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3704, file: !3633, line: 82, baseType: !698, size: 32, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3704, file: !3633, line: 83, baseType: !698, size: 32, offset: 96)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3704, file: !3633, line: 84, baseType: !698, size: 32, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3704, file: !3633, line: 85, baseType: !698, size: 32, offset: 160)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3704, file: !3633, line: 86, baseType: !698, size: 32, offset: 192)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3704, file: !3633, line: 88, baseType: !3664, size: 640, offset: 224)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3704, file: !3633, line: 89, baseType: !472, size: 8, offset: 864)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3704, file: !3633, line: 90, baseType: !472, size: 8, offset: 872)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3704, file: !3633, line: 91, baseType: !472, size: 8, offset: 880)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3704, file: !3633, line: 92, baseType: !472, size: 8, offset: 888)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3704, file: !3633, line: 93, baseType: !472, size: 8, offset: 896)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3704, file: !3633, line: 94, baseType: !472, size: 8, offset: 904)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3704, file: !3633, line: 95, baseType: !3721, size: 64, offset: 960)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3723, line: 11, size: 128, elements: !3724)
!3723 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3724 = !{!3725, !3726}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3722, file: !3723, line: 12, baseType: !221, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3722, file: !3723, line: 13, baseType: !3727, size: 64, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3729, line: 103, size: 1344, elements: !3730)
!3729 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3730 = !{!3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3759, !3760, !3761}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3728, file: !3729, line: 109, baseType: !222, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3728, file: !3729, line: 110, baseType: !222, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3728, file: !3729, line: 111, baseType: !222, size: 64, offset: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3728, file: !3729, line: 112, baseType: !222, size: 64, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3728, file: !3729, line: 113, baseType: !222, size: 64, offset: 256)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3728, file: !3729, line: 114, baseType: !222, size: 64, offset: 320)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3728, file: !3729, line: 117, baseType: !222, size: 64, offset: 384)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3728, file: !3729, line: 118, baseType: !222, size: 64, offset: 448)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3728, file: !3729, line: 119, baseType: !222, size: 64, offset: 512)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3728, file: !3729, line: 120, baseType: !222, size: 64, offset: 576)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3728, file: !3729, line: 121, baseType: !222, size: 64, offset: 640)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3728, file: !3729, line: 122, baseType: !222, size: 64, offset: 704)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3728, file: !3729, line: 123, baseType: !222, size: 64, offset: 768)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3728, file: !3729, line: 124, baseType: !222, size: 64, offset: 832)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3728, file: !3729, line: 125, baseType: !222, size: 64, offset: 896)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3728, file: !3729, line: 139, baseType: !222, size: 64, offset: 960)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3728, file: !3729, line: 142, baseType: !222, size: 64, offset: 1024)
!3748 = !DIDerivedType(tag: DW_TAG_member, scope: !3728, file: !3729, line: 144, baseType: !3749, size: 64, offset: 1088)
!3749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3728, file: !3729, line: 144, size: 64, elements: !3750)
!3750 = !{!3751, !3752, !3753}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3749, file: !3729, line: 146, baseType: !427, size: 16)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3749, file: !3729, line: 148, baseType: !641, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3749, file: !3729, line: 150, baseType: !3754, size: 64)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3729, line: 59, size: 64, elements: !3755)
!3755 = !{!3756, !3757, !3758}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3754, file: !3729, line: 61, baseType: !641, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3754, file: !3729, line: 63, baseType: !641, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3754, file: !3729, line: 65, baseType: !641, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3728, file: !3729, line: 153, baseType: !222, size: 64, offset: 1152)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3728, file: !3729, line: 154, baseType: !222, size: 64, offset: 1216)
!3761 = !DIDerivedType(tag: DW_TAG_member, scope: !3728, file: !3729, line: 156, baseType: !3762, size: 64, offset: 1280)
!3762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3728, file: !3729, line: 156, size: 64, elements: !3763)
!3763 = !{!3764, !3765, !3766}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3762, file: !3729, line: 158, baseType: !427, size: 16)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3762, file: !3729, line: 160, baseType: !641, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3762, file: !3729, line: 162, baseType: !3767, size: 64)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3729, line: 69, size: 64, elements: !3768)
!3768 = !{!3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3767, file: !3729, line: 71, baseType: !641, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3767, file: !3729, line: 73, baseType: !641, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3767, file: !3729, line: 75, baseType: !641, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3767, file: !3729, line: 77, baseType: !641, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3767, file: !3729, line: 80, baseType: !641, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3767, file: !3729, line: 83, baseType: !641, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3767, file: !3729, line: 86, baseType: !641, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3767, file: !3729, line: 88, baseType: !641, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3767, file: !3729, line: 93, baseType: !641, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3767, file: !3729, line: 100, baseType: !641, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3704, file: !3633, line: 96, baseType: !698, size: 32, offset: 1024)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3651, file: !3633, line: 352, baseType: !3781, size: 4608, align: 512)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3633, line: 333, size: 4608, align: 512, elements: !3782)
!3782 = !{!3783, !3784, !3791}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3781, file: !3633, line: 334, baseType: !3669, size: 4096, align: 128)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3781, file: !3633, line: 335, baseType: !3785, size: 512, offset: 4096)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3633, line: 312, size: 512, elements: !3786)
!3786 = !{!3787, !3788, !3789}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3785, file: !3633, line: 313, baseType: !641, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3785, file: !3633, line: 314, baseType: !641, size: 64, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3785, file: !3633, line: 315, baseType: !3790, size: 384, offset: 128)
!3790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 384, elements: !241)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3781, file: !3633, line: 336, baseType: !3792, offset: 4608)
!3792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, elements: !600)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3651, file: !3633, line: 353, baseType: !3794, size: 32768)
!3794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 32768, elements: !3795)
!3795 = !{!3796}
!3796 = !DISubrange(count: 4096)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3632, file: !3633, line: 484, baseType: !3638, size: 64, offset: 192)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3632, file: !3633, line: 491, baseType: !3799, size: 128, offset: 256)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3633, line: 404, size: 128, elements: !3800)
!3800 = !{!3801, !3802, !3803}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3799, file: !3633, line: 424, baseType: !641, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3799, file: !3633, line: 432, baseType: !37, size: 32, offset: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3799, file: !3633, line: 440, baseType: !37, size: 32, offset: 96)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3632, file: !3633, line: 498, baseType: !3799, size: 128, offset: 384)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3632, file: !3633, line: 508, baseType: !3639, size: 33280, align: 512, offset: 512)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2622, file: !2623, line: 16, baseType: !585, size: 192, offset: 512)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2622, file: !2623, line: 17, baseType: !464, size: 32, offset: 704)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1103, file: !65, line: 1240, baseType: !220, size: 64, offset: 6912)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1103, file: !65, line: 1243, baseType: !698, size: 32, offset: 6976)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1103, file: !65, line: 1245, baseType: !689, size: 64, offset: 7040)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1103, file: !65, line: 1246, baseType: !689, size: 64, offset: 7104)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1103, file: !65, line: 1248, baseType: !331, size: 32, offset: 7168)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1103, file: !65, line: 1249, baseType: !3814, size: 64, offset: 7232)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !65, line: 634, flags: DIFlagFwdDecl)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1103, file: !65, line: 1252, baseType: !3817, size: 256, offset: 7296)
!3817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !334)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1103, file: !65, line: 1253, baseType: !3819, size: 128, offset: 7552)
!3819 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3820, line: 21, baseType: !3821)
!3820 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3820, line: 19, size: 128, elements: !3822)
!3822 = !{!3823}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3821, file: !3820, line: 20, baseType: !3824, size: 128)
!3824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 128, elements: !3053)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1103, file: !65, line: 1255, baseType: !37, size: 32, offset: 7680)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1103, file: !65, line: 1261, baseType: !437, size: 256, offset: 7744)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1103, file: !65, line: 1267, baseType: !280, size: 64, offset: 8000)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1103, file: !65, line: 1269, baseType: !3829, size: 64, offset: 8064)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3831)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !854, line: 128, size: 1024, align: 512, elements: !3832)
!3832 = !{!3833, !3837, !3838, !3845, !3851, !3855, !3859, !3863, !3864, !3868, !3872, !3877, !3881}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3831, file: !854, line: 129, baseType: !3834, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!115, !852, !37}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3831, file: !854, line: 130, baseType: !3834, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3831, file: !854, line: 131, baseType: !3839, size: 64, offset: 128)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!115, !3842, !3844}
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3831, file: !854, line: 132, baseType: !3846, size: 64, offset: 192)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!115, !3842, !37, !280, !3849}
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3831, file: !854, line: 134, baseType: !3852, size: 64, offset: 256)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!115, !3842}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3831, file: !854, line: 135, baseType: !3856, size: 64, offset: 320)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!115, !852}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3831, file: !854, line: 136, baseType: !3860, size: 64, offset: 384)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{null, !852}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3831, file: !854, line: 137, baseType: !3860, size: 64, offset: 448)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3831, file: !854, line: 138, baseType: !3865, size: 64, offset: 512)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{null, !852, !891}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3831, file: !854, line: 139, baseType: !3869, size: 64, offset: 576)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!741, !852, !741, !115}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3831, file: !854, line: 140, baseType: !3873, size: 64, offset: 640)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!847, !3876}
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3831, file: !854, line: 141, baseType: !3878, size: 64, offset: 704)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!115, !1013, !730}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3831, file: !854, line: 142, baseType: !3882, size: 64, offset: 768)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!852, !852, !3885}
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !892)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1103, file: !65, line: 1271, baseType: !3888, size: 448, offset: 8128)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2404, line: 63, size: 448, elements: !3889)
!3889 = !{!3890, !3895, !3896, !3897, !3898, !3899, !3900}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3888, file: !2404, line: 64, baseType: !3891, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!222, !3894, !2402}
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3888, file: !2404, line: 66, baseType: !3891, size: 64, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3888, file: !2404, line: 69, baseType: !221, size: 64, offset: 128)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3888, file: !2404, line: 70, baseType: !115, size: 32, offset: 192)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3888, file: !2404, line: 71, baseType: !37, size: 32, offset: 224)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3888, file: !2404, line: 74, baseType: !485, size: 128, offset: 256)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3888, file: !2404, line: 85, baseType: !3901, size: 64, offset: 384)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1103, file: !65, line: 1274, baseType: !441, size: 64, offset: 8576)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1103, file: !65, line: 1280, baseType: !441, size: 64, offset: 8640)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1103, file: !65, line: 1283, baseType: !115, size: 32, offset: 8704)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1103, file: !65, line: 1286, baseType: !1519, size: 32, offset: 8736)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1103, file: !65, line: 1289, baseType: !2228, size: 64, offset: 8768)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1103, file: !65, line: 1290, baseType: !574, size: 64, offset: 8832)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1103, file: !65, line: 1297, baseType: !814, size: 64, offset: 8896)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1103, file: !65, line: 1304, baseType: !3910, size: 64, offset: 8960)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3911, line: 49, size: 64, elements: !3912)
!3911 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3912 = !{!3913}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3910, file: !3911, line: 50, baseType: !3914, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3911, line: 41, size: 512, align: 512, elements: !3916)
!3916 = !{!3917, !3918, !3923}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3915, file: !3911, line: 43, baseType: !517, size: 32)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3915, file: !3911, line: 45, baseType: !3919, size: 192, offset: 64)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3911, line: 29, size: 192, elements: !3920)
!3920 = !{!3921, !3922}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3919, file: !3911, line: 30, baseType: !485, size: 128)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3919, file: !3911, line: 32, baseType: !221, size: 64, offset: 128)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3915, file: !3911, line: 46, baseType: !221, size: 64, offset: 256)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1103, file: !65, line: 1305, baseType: !3910, size: 64, offset: 9024)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1103, file: !65, line: 1306, baseType: !507, size: 128, align: 64, offset: 9088)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1103, file: !65, line: 1307, baseType: !1698, size: 256, offset: 9216)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1103, file: !65, line: 1309, baseType: !437, size: 256, offset: 9472)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1103, file: !65, line: 1314, baseType: !115, size: 32, offset: 9728)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1103, file: !65, line: 1317, baseType: !517, size: 32, align: 512, offset: 10240)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1103, file: !65, line: 1318, baseType: !485, size: 128, offset: 10304)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1103, file: !65, line: 1320, baseType: !517, size: 32, offset: 10432)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1103, file: !65, line: 1321, baseType: !485, size: 128, offset: 10496)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !892, file: !65, line: 656, baseType: !1251, size: 64, offset: 512)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !892, file: !65, line: 659, baseType: !220, size: 64, offset: 576)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !892, file: !65, line: 663, baseType: !222, size: 64, offset: 640)
!3936 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !65, line: 671, baseType: !3937, size: 32, offset: 704)
!3937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !65, line: 671, size: 32, elements: !3938)
!3938 = !{!3939, !3941}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3937, file: !65, line: 672, baseType: !3940, size: 32)
!3940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3937, file: !65, line: 673, baseType: !37, size: 32)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !892, file: !65, line: 675, baseType: !966, size: 32, offset: 736)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !892, file: !65, line: 676, baseType: !530, size: 64, offset: 768)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !892, file: !65, line: 677, baseType: !1002, size: 128, offset: 832)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !892, file: !65, line: 678, baseType: !1002, size: 128, offset: 960)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !892, file: !65, line: 679, baseType: !1002, size: 128, offset: 1088)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !892, file: !65, line: 680, baseType: !517, size: 32, offset: 1216)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !892, file: !65, line: 681, baseType: !291, size: 16, offset: 1248)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !892, file: !65, line: 682, baseType: !472, size: 8, offset: 1264)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !892, file: !65, line: 683, baseType: !472, size: 8, offset: 1272)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !892, file: !65, line: 684, baseType: !2535, size: 64, offset: 1280)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !892, file: !65, line: 691, baseType: !222, size: 64, offset: 1344)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !892, file: !65, line: 692, baseType: !673, size: 320, offset: 1408)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !892, file: !65, line: 694, baseType: !222, size: 64, offset: 1728)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !892, file: !65, line: 695, baseType: !222, size: 64, offset: 1792)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !892, file: !65, line: 697, baseType: !578, size: 128, offset: 1856)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !892, file: !65, line: 698, baseType: !485, size: 128, offset: 1984)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !892, file: !65, line: 707, baseType: !485, size: 128, offset: 2112)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !892, file: !65, line: 708, baseType: !485, size: 128, offset: 2240)
!3960 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !65, line: 709, baseType: !3961, size: 128, offset: 2368)
!3961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !65, line: 709, size: 128, elements: !3962)
!3962 = !{!3963, !3964}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3961, file: !65, line: 710, baseType: !574, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3961, file: !65, line: 711, baseType: !507, size: 128, align: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !892, file: !65, line: 713, baseType: !443, size: 64, offset: 2496)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !892, file: !65, line: 714, baseType: !443, size: 64, offset: 2560)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !892, file: !65, line: 715, baseType: !464, size: 32, offset: 2624)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !892, file: !65, line: 716, baseType: !464, size: 32, offset: 2656)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !892, file: !65, line: 717, baseType: !464, size: 32, offset: 2688)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !892, file: !65, line: 719, baseType: !464, size: 32, offset: 2720)
!3971 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !65, line: 721, baseType: !3972, size: 64, offset: 2752)
!3972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !65, line: 721, size: 64, elements: !3973)
!3973 = !{!3974, !4098}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3972, file: !65, line: 722, baseType: !3975, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3977)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !65, line: 1914, size: 2112, elements: !3978)
!3978 = !{!3979, !3980, !3984, !3988, !3992, !3993, !3994, !4000, !4013, !4017, !4021, !4022, !4026, !4027, !4031, !4036, !4037, !4041, !4045, !4051, !4052, !4056, !4057, !4061, !4065, !4066, !4071, !4075, !4079, !4083, !4087, !4088, !4094}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3977, file: !65, line: 1915, baseType: !1136, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3977, file: !65, line: 1916, baseType: !3981, size: 64, offset: 64)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!530, !494, !530, !115}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3977, file: !65, line: 1917, baseType: !3985, size: 64, offset: 128)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!1044, !494, !741, !1047, !1865}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3977, file: !65, line: 1918, baseType: !3989, size: 64, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!1044, !494, !280, !1047, !1865}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3977, file: !65, line: 1919, baseType: !1453, size: 64, offset: 256)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3977, file: !65, line: 1920, baseType: !1453, size: 64, offset: 320)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3977, file: !65, line: 1921, baseType: !3995, size: 64, offset: 384)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!115, !1456, !3998, !37}
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !65, line: 53, flags: DIFlagFwdDecl)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3977, file: !65, line: 1923, baseType: !4001, size: 64, offset: 448)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!115, !494, !4004}
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !65, line: 1858, size: 128, elements: !4006)
!4006 = !{!4007, !4012}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4005, file: !65, line: 1859, baseType: !4008, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !65, line: 1855, baseType: !4009)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!730, !4004, !280, !115, !530, !641, !37}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4005, file: !65, line: 1860, baseType: !530, size: 64, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3977, file: !65, line: 1924, baseType: !4014, size: 64, offset: 512)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!1885, !494, !1887}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3977, file: !65, line: 1925, baseType: !4018, size: 64, offset: 576)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!221, !494, !37, !222}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3977, file: !65, line: 1926, baseType: !4018, size: 64, offset: 640)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3977, file: !65, line: 1927, baseType: !4023, size: 64, offset: 704)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!115, !494, !1533}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3977, file: !65, line: 1928, baseType: !222, size: 64, offset: 768)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3977, file: !65, line: 1929, baseType: !4028, size: 64, offset: 832)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!115, !891, !494}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3977, file: !65, line: 1930, baseType: !4032, size: 64, offset: 896)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!115, !494, !4035}
!4035 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !65, line: 1061, baseType: !220)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3977, file: !65, line: 1931, baseType: !4028, size: 64, offset: 960)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3977, file: !65, line: 1932, baseType: !4038, size: 64, offset: 1024)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!115, !494, !530, !530, !115}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3977, file: !65, line: 1933, baseType: !4042, size: 64, offset: 1088)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!115, !115, !494, !115}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3977, file: !65, line: 1934, baseType: !4046, size: 64, offset: 1152)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!115, !494, !115, !4049}
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !65, line: 1063, flags: DIFlagFwdDecl)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3977, file: !65, line: 1935, baseType: !1571, size: 64, offset: 1216)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3977, file: !65, line: 1936, baseType: !4053, size: 64, offset: 1280)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!115, !115}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3977, file: !65, line: 1937, baseType: !4046, size: 64, offset: 1344)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3977, file: !65, line: 1938, baseType: !4058, size: 64, offset: 1408)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!1044, !3469, !494, !1865, !1047, !37}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3977, file: !65, line: 1939, baseType: !4062, size: 64, offset: 1472)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!1044, !494, !1865, !3469, !1047, !37}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3977, file: !65, line: 1940, baseType: !1509, size: 64, offset: 1536)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3977, file: !65, line: 1941, baseType: !4067, size: 64, offset: 1600)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!115, !494, !115, !4070, !1430}
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3977, file: !65, line: 1942, baseType: !4072, size: 64, offset: 1664)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!221, !494, !115, !530, !530}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3977, file: !65, line: 1944, baseType: !4076, size: 64, offset: 1728)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{null, !1840, !494}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3977, file: !65, line: 1948, baseType: !4080, size: 64, offset: 1792)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!1044, !494, !530, !494, !530, !1047, !37}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3977, file: !65, line: 1950, baseType: !4084, size: 64, offset: 1856)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!530, !494, !530, !494, !530, !530, !37}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3977, file: !65, line: 1953, baseType: !4038, size: 64, offset: 1920)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3977, file: !65, line: 1954, baseType: !4089, size: 64, offset: 1984)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!115, !4092, !37}
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !65, line: 1911, flags: DIFlagFwdDecl)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3977, file: !65, line: 1955, baseType: !4095, size: 64, offset: 2048)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!115, !4092, !3998, !37}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3972, file: !65, line: 723, baseType: !2293, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !892, file: !65, line: 725, baseType: !4100, size: 64, offset: 2816)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !65, line: 725, flags: DIFlagFwdDecl)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !892, file: !65, line: 726, baseType: !1252, size: 1536, align: 64, offset: 2880)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !892, file: !65, line: 727, baseType: !485, size: 128, offset: 4416)
!4104 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !65, line: 728, baseType: !4105, size: 64, offset: 4544)
!4105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !65, line: 728, size: 64, elements: !4106)
!4106 = !{!4107, !4108, !4111, !4112}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4105, file: !65, line: 729, baseType: !3469, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4105, file: !65, line: 730, baseType: !4109, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !65, line: 730, flags: DIFlagFwdDecl)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4105, file: !65, line: 731, baseType: !741, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4105, file: !65, line: 732, baseType: !37, size: 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !892, file: !65, line: 735, baseType: !331, size: 32, offset: 4608)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !892, file: !65, line: 738, baseType: !331, size: 32, offset: 4640)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !892, file: !65, line: 739, baseType: !3814, size: 64, offset: 4672)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !892, file: !65, line: 750, baseType: !220, size: 64, offset: 4736)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !853, file: !854, line: 91, baseType: !4118, size: 256, offset: 448)
!4118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 256, elements: !334)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !853, file: !854, line: 94, baseType: !4120, size: 64, offset: 704)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4121, line: 25, size: 64, elements: !4122)
!4121 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4122 = !{!4123}
!4123 = !DIDerivedType(tag: DW_TAG_member, scope: !4120, file: !4121, line: 26, baseType: !4124, size: 64)
!4124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4120, file: !4121, line: 26, size: 64, elements: !4125)
!4125 = !{!4126, !4127}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4124, file: !4121, line: 28, baseType: !642, size: 64, align: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, scope: !4124, file: !4121, line: 30, baseType: !4128, size: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4124, file: !4121, line: 30, size: 64, elements: !4129)
!4129 = !{!4130, !4131}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4128, file: !4121, line: 31, baseType: !517, size: 32)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4128, file: !4121, line: 32, baseType: !115, size: 32, offset: 32)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !853, file: !854, line: 95, baseType: !3829, size: 64, offset: 768)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !853, file: !854, line: 96, baseType: !1102, size: 64, offset: 832)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !853, file: !854, line: 97, baseType: !222, size: 64, offset: 896)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !853, file: !854, line: 98, baseType: !220, size: 64, offset: 960)
!4136 = !DIDerivedType(tag: DW_TAG_member, scope: !853, file: !854, line: 100, baseType: !4137, size: 128, offset: 1024)
!4137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !853, file: !854, line: 100, size: 128, elements: !4138)
!4138 = !{!4139, !4140}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4137, file: !854, line: 101, baseType: !485, size: 128)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4137, file: !854, line: 102, baseType: !4141, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !853, file: !854, line: 104, baseType: !485, size: 128, offset: 1152)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !853, file: !854, line: 105, baseType: !485, size: 128, offset: 1280)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !853, file: !854, line: 113, baseType: !4145, size: 128, offset: 1408)
!4145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !853, file: !854, line: 109, size: 128, elements: !4146)
!4146 = !{!4147, !4148, !4149}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4145, file: !854, line: 110, baseType: !578, size: 128)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4145, file: !854, line: 111, baseType: !868, size: 128)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4145, file: !854, line: 112, baseType: !507, size: 128, align: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !848, file: !849, line: 72, baseType: !1102, size: 64, offset: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !848, file: !849, line: 73, baseType: !115, size: 32, offset: 128)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !848, file: !849, line: 74, baseType: !931, size: 64, offset: 192)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !843, file: !844, line: 10, baseType: !852, size: 64, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !495, file: !65, line: 1015, baseType: !891, size: 64, offset: 1344)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !495, file: !65, line: 1016, baseType: !3975, size: 64, offset: 1408)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !495, file: !65, line: 1018, baseType: !641, size: 64, offset: 1472)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !495, file: !65, line: 1020, baseType: !220, size: 64, offset: 1536)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !495, file: !65, line: 1023, baseType: !220, size: 64, offset: 1600)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !495, file: !65, line: 1027, baseType: !4160, size: 64, offset: 1664)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !495, file: !65, line: 1029, baseType: !1251, size: 64, offset: 1728)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !495, file: !65, line: 1030, baseType: !1519, size: 32, offset: 1792)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !495, file: !65, line: 1031, baseType: !1519, size: 32, offset: 1824)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !276, file: !277, line: 169, baseType: !4165, size: 64, offset: 2048)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !277, line: 24, flags: DIFlagFwdDecl)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !276, file: !277, line: 171, baseType: !37, size: 32, offset: 2112)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !276, file: !277, line: 172, baseType: !2166, size: 320, offset: 2176)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !276, file: !277, line: 174, baseType: !4170, size: 64, offset: 2496)
!4170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 64, elements: !311)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !276, file: !277, line: 176, baseType: !4172, size: 64, offset: 2560)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4174, line: 43, size: 256, elements: !4175)
!4174 = !DIFile(filename: "./include/linux/input/mt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2c012cf1730b90d0f045b3aba026b552")
!4175 = !{!4176, !4177, !4178, !4179, !4180, !4181, !4182}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "trkid", scope: !4173, file: !4174, line: 44, baseType: !115, size: 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "num_slots", scope: !4173, file: !4174, line: 45, baseType: !115, size: 32, offset: 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4173, file: !4174, line: 46, baseType: !115, size: 32, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4173, file: !4174, line: 47, baseType: !37, size: 32, offset: 96)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !4173, file: !4174, line: 48, baseType: !37, size: 32, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !4173, file: !4174, line: 49, baseType: !2066, size: 64, offset: 192)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4173, file: !4174, line: 50, baseType: !4183, offset: 256)
!4183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4184, elements: !600)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt_slot", file: !4174, line: 27, size: 512, elements: !4185)
!4185 = !{!4186, !4190, !4191}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "abs", scope: !4184, file: !4174, line: 28, baseType: !4187, size: 448)
!4187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 448, elements: !4188)
!4188 = !{!4189}
!4189 = !DISubrange(count: 14)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !4184, file: !4174, line: 29, baseType: !37, size: 32, offset: 448)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4184, file: !4174, line: 30, baseType: !37, size: 32, offset: 480)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !276, file: !277, line: 178, baseType: !4193, size: 64, offset: 2624)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !286, line: 93, size: 192, elements: !4195)
!4195 = !{!4196, !4197, !4198, !4199, !4200, !4201}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4194, file: !286, line: 94, baseType: !659, size: 32)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4194, file: !286, line: 95, baseType: !659, size: 32, offset: 32)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4194, file: !286, line: 96, baseType: !659, size: 32, offset: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4194, file: !286, line: 97, baseType: !659, size: 32, offset: 96)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4194, file: !286, line: 98, baseType: !659, size: 32, offset: 128)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4194, file: !286, line: 99, baseType: !659, size: 32, offset: 160)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !276, file: !277, line: 180, baseType: !301, size: 768, offset: 2688)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !276, file: !277, line: 181, baseType: !296, size: 64, offset: 3456)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !276, file: !277, line: 182, baseType: !296, size: 64, offset: 3520)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !276, file: !277, line: 183, baseType: !296, size: 64, offset: 3584)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !276, file: !277, line: 185, baseType: !4207, size: 64, offset: 3648)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!115, !275}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !276, file: !277, line: 186, baseType: !4211, size: 64, offset: 3712)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{null, !275}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !276, file: !277, line: 187, baseType: !4215, size: 64, offset: 3776)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!115, !275, !494}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !276, file: !277, line: 188, baseType: !4219, size: 64, offset: 3840)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!115, !275, !37, !37, !115}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !276, file: !277, line: 190, baseType: !4223, size: 64, offset: 3904)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !277, line: 345, size: 576, elements: !4225)
!4225 = !{!4226, !4227, !4228, !4229, !4230, !4298, !4299}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4224, file: !277, line: 347, baseType: !220, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4224, file: !277, line: 349, baseType: !115, size: 32, offset: 64)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4224, file: !277, line: 350, baseType: !280, size: 64, offset: 128)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4224, file: !277, line: 352, baseType: !275, size: 64, offset: 192)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4224, file: !277, line: 353, baseType: !4231, size: 64, offset: 256)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !277, line: 310, size: 960, elements: !4233)
!4233 = !{!4234, !4235, !4239, !4250, !4254, !4258, !4287, !4291, !4292, !4293, !4294, !4295, !4296, !4297}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4232, file: !277, line: 312, baseType: !220, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4232, file: !277, line: 314, baseType: !4236, size: 64, offset: 64)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{null, !4223, !37, !37, !115}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4232, file: !277, line: 315, baseType: !4240, size: 64, offset: 128)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{null, !4223, !4243, !37}
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4245)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !277, line: 32, size: 64, elements: !4246)
!4246 = !{!4247, !4248, !4249}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4245, file: !277, line: 33, baseType: !289, size: 16)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4245, file: !277, line: 34, baseType: !289, size: 16, offset: 16)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4245, file: !277, line: 35, baseType: !659, size: 32, offset: 32)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4232, file: !277, line: 317, baseType: !4251, size: 64, offset: 192)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!730, !4223, !37, !37, !115}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4232, file: !277, line: 318, baseType: !4255, size: 64, offset: 256)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!730, !4231, !275}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4232, file: !277, line: 319, baseType: !4259, size: 64, offset: 320)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!115, !4231, !275, !4262}
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4264)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !4265, line: 362, size: 1600, elements: !4266)
!4265 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4266 = !{!4267, !4269, !4270, !4271, !4272, !4273, !4275, !4277, !4278, !4279, !4280, !4281, !4282, !4284, !4285, !4286}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4264, file: !4265, line: 364, baseType: !4268, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4265, line: 15, baseType: !222)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4264, file: !4265, line: 366, baseType: !289, size: 16, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4264, file: !4265, line: 367, baseType: !289, size: 16, offset: 80)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4264, file: !4265, line: 368, baseType: !289, size: 16, offset: 96)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4264, file: !4265, line: 369, baseType: !289, size: 16, offset: 112)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4264, file: !4265, line: 371, baseType: !4274, size: 64, offset: 128)
!4274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4268, size: 64, elements: !297)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4264, file: !4265, line: 372, baseType: !4276, size: 768, offset: 192)
!4276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4268, size: 768, elements: !302)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4264, file: !4265, line: 373, baseType: !4274, size: 64, offset: 960)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4264, file: !4265, line: 374, baseType: !4274, size: 64, offset: 1024)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4264, file: !4265, line: 375, baseType: !4274, size: 64, offset: 1088)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4264, file: !4265, line: 376, baseType: !4274, size: 64, offset: 1152)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4264, file: !4265, line: 377, baseType: !4274, size: 64, offset: 1216)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4264, file: !4265, line: 378, baseType: !4283, size: 128, offset: 1280)
!4283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4268, size: 128, elements: !311)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4264, file: !4265, line: 379, baseType: !4274, size: 64, offset: 1408)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4264, file: !4265, line: 380, baseType: !4274, size: 64, offset: 1472)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4264, file: !4265, line: 382, baseType: !4268, size: 64, offset: 1536)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4232, file: !277, line: 320, baseType: !4288, size: 64, offset: 384)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{null, !4223}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4232, file: !277, line: 321, baseType: !4288, size: 64, offset: 448)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4232, file: !277, line: 323, baseType: !730, size: 8, offset: 512)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4232, file: !277, line: 324, baseType: !115, size: 32, offset: 544)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4232, file: !277, line: 325, baseType: !280, size: 64, offset: 576)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4232, file: !277, line: 327, baseType: !4262, size: 64, offset: 640)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4232, file: !277, line: 329, baseType: !485, size: 128, offset: 704)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4232, file: !277, line: 330, baseType: !485, size: 128, offset: 832)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4224, file: !277, line: 355, baseType: !485, size: 128, offset: 320)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4224, file: !277, line: 356, baseType: !485, size: 128, offset: 448)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !276, file: !277, line: 192, baseType: !517, size: 32, offset: 3968)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !276, file: !277, line: 193, baseType: !437, size: 256, offset: 4032)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !276, file: !277, line: 195, baseType: !37, size: 32, offset: 4288)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !276, file: !277, line: 196, baseType: !730, size: 8, offset: 4320)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !276, file: !277, line: 198, baseType: !4305, size: 5824, offset: 4352)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !100, line: 705, size: 5824, elements: !4306)
!4306 = !{!4307, !4308, !4310, !4313, !4314, !4367, !4450, !4451, !4452, !4453, !4454, !4461, !4553, !4566, !4576, !4580, !4582, !4583, !4584, !4588, !4595, !4596, !4599, !4602, !4606, !4609, !4610, !4611, !4612, !4613, !4614, !4644, !4645, !4646, !4649, !4652, !4661, !4662, !4663, !4664, !4665, !4666}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4305, file: !100, line: 706, baseType: !1149, size: 512)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4305, file: !100, line: 707, baseType: !4309, size: 64, offset: 512)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4305, file: !100, line: 709, baseType: !4311, size: 64, offset: 576)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !100, line: 37, flags: DIFlagFwdDecl)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4305, file: !100, line: 711, baseType: !280, size: 64, offset: 640)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4305, file: !100, line: 712, baseType: !4315, size: 64, offset: 704)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4317)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !100, line: 89, size: 384, elements: !4318)
!4318 = !{!4319, !4320, !4321, !4327, !4332, !4336}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4317, file: !100, line: 90, baseType: !280, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4317, file: !100, line: 91, baseType: !1227, size: 64, offset: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4317, file: !100, line: 92, baseType: !4322, size: 64, offset: 128)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!115, !4325, !1185}
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4305)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4317, file: !100, line: 93, baseType: !4328, size: 64, offset: 192)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!741, !4325, !4331, !1793, !1794}
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4317, file: !100, line: 95, baseType: !4333, size: 64, offset: 256)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{null, !4309}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4317, file: !100, line: 97, baseType: !4337, size: 64, offset: 320)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4339)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !107, line: 286, size: 1472, elements: !4340)
!4340 = !{!4341, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4339, file: !107, line: 287, baseType: !4342, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!115, !4309}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4339, file: !107, line: 288, baseType: !4333, size: 64, offset: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4339, file: !107, line: 289, baseType: !4342, size: 64, offset: 128)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4339, file: !107, line: 290, baseType: !4342, size: 64, offset: 192)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4339, file: !107, line: 291, baseType: !4342, size: 64, offset: 256)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4339, file: !107, line: 292, baseType: !4342, size: 64, offset: 320)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4339, file: !107, line: 293, baseType: !4342, size: 64, offset: 384)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4339, file: !107, line: 294, baseType: !4342, size: 64, offset: 448)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4339, file: !107, line: 295, baseType: !4342, size: 64, offset: 512)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4339, file: !107, line: 296, baseType: !4342, size: 64, offset: 576)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4339, file: !107, line: 297, baseType: !4342, size: 64, offset: 640)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4339, file: !107, line: 298, baseType: !4342, size: 64, offset: 704)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4339, file: !107, line: 299, baseType: !4342, size: 64, offset: 768)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4339, file: !107, line: 300, baseType: !4342, size: 64, offset: 832)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4339, file: !107, line: 301, baseType: !4342, size: 64, offset: 896)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4339, file: !107, line: 302, baseType: !4342, size: 64, offset: 960)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4339, file: !107, line: 303, baseType: !4342, size: 64, offset: 1024)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4339, file: !107, line: 304, baseType: !4342, size: 64, offset: 1088)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4339, file: !107, line: 305, baseType: !4342, size: 64, offset: 1152)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4339, file: !107, line: 306, baseType: !4342, size: 64, offset: 1216)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4339, file: !107, line: 307, baseType: !4342, size: 64, offset: 1280)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4339, file: !107, line: 308, baseType: !4342, size: 64, offset: 1344)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4339, file: !107, line: 309, baseType: !4342, size: 64, offset: 1408)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4305, file: !100, line: 714, baseType: !4368, size: 64, offset: 768)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4370)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4371, line: 80, size: 1344, elements: !4372)
!4371 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4372 = !{!4373, !4374, !4375, !4376, !4377, !4378, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4449}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4370, file: !4371, line: 81, baseType: !280, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4370, file: !4371, line: 82, baseType: !280, size: 64, offset: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4370, file: !4371, line: 83, baseType: !1227, size: 64, offset: 128)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4370, file: !4371, line: 84, baseType: !1227, size: 64, offset: 192)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4370, file: !4371, line: 85, baseType: !1227, size: 64, offset: 256)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4370, file: !4371, line: 87, baseType: !4379, size: 64, offset: 320)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!115, !4309, !4382}
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !94, line: 96, size: 1152, elements: !4384)
!4384 = !{!4385, !4386, !4387, !4388, !4389, !4390, !4391, !4403, !4412, !4413, !4414, !4415, !4416, !4424, !4425, !4426, !4427, !4428, !4429}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4383, file: !94, line: 97, baseType: !280, size: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4383, file: !94, line: 98, baseType: !4368, size: 64, offset: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4383, file: !94, line: 100, baseType: !1136, size: 64, offset: 128)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4383, file: !94, line: 101, baseType: !280, size: 64, offset: 192)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4383, file: !94, line: 103, baseType: !730, size: 8, offset: 256)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4383, file: !94, line: 104, baseType: !93, size: 32, offset: 288)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4383, file: !94, line: 106, baseType: !4392, size: 64, offset: 320)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4394)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4265, line: 282, size: 1600, elements: !4395)
!4395 = !{!4396, !4397, !4398, !4402}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4394, file: !4265, line: 283, baseType: !3817, size: 256)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4394, file: !4265, line: 284, baseType: !3817, size: 256, offset: 256)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4394, file: !4265, line: 285, baseType: !4399, size: 1024, offset: 512)
!4399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !4400)
!4400 = !{!4401}
!4401 = !DISubrange(count: 128)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4394, file: !4265, line: 286, baseType: !1660, size: 64, offset: 1536)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4383, file: !94, line: 107, baseType: !4404, size: 64, offset: 384)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4406)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4265, line: 217, size: 256, elements: !4407)
!4407 = !{!4408, !4409, !4410, !4411}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4406, file: !4265, line: 218, baseType: !3824, size: 128)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4406, file: !4265, line: 219, baseType: !4268, size: 64, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4406, file: !4265, line: 220, baseType: !331, size: 32, offset: 192)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4406, file: !4265, line: 221, baseType: !331, size: 32, offset: 224)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4383, file: !94, line: 109, baseType: !4342, size: 64, offset: 448)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4383, file: !94, line: 110, baseType: !4333, size: 64, offset: 512)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4383, file: !94, line: 111, baseType: !4342, size: 64, offset: 576)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4383, file: !94, line: 112, baseType: !4333, size: 64, offset: 640)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4383, file: !94, line: 113, baseType: !4417, size: 64, offset: 704)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!115, !4309, !4420}
!4420 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !107, line: 60, baseType: !4421)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !107, line: 58, size: 32, elements: !4422)
!4422 = !{!4423}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4421, file: !107, line: 59, baseType: !115, size: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4383, file: !94, line: 114, baseType: !4342, size: 64, offset: 768)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4383, file: !94, line: 115, baseType: !1227, size: 64, offset: 832)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4383, file: !94, line: 116, baseType: !1227, size: 64, offset: 896)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4383, file: !94, line: 118, baseType: !4337, size: 64, offset: 960)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4383, file: !94, line: 119, baseType: !4333, size: 64, offset: 1024)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4383, file: !94, line: 121, baseType: !4430, size: 64, offset: 1088)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !94, line: 121, flags: DIFlagFwdDecl)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4370, file: !4371, line: 88, baseType: !4322, size: 64, offset: 384)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4370, file: !4371, line: 89, baseType: !4342, size: 64, offset: 448)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4370, file: !4371, line: 90, baseType: !4333, size: 64, offset: 512)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4370, file: !4371, line: 91, baseType: !4333, size: 64, offset: 576)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4370, file: !4371, line: 92, baseType: !4333, size: 64, offset: 640)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4370, file: !4371, line: 94, baseType: !4342, size: 64, offset: 704)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4370, file: !4371, line: 95, baseType: !4342, size: 64, offset: 768)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4370, file: !4371, line: 97, baseType: !4417, size: 64, offset: 832)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4370, file: !4371, line: 98, baseType: !4342, size: 64, offset: 896)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4370, file: !4371, line: 100, baseType: !4342, size: 64, offset: 960)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4370, file: !4371, line: 102, baseType: !4342, size: 64, offset: 1024)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4370, file: !4371, line: 103, baseType: !4333, size: 64, offset: 1088)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4370, file: !4371, line: 105, baseType: !4337, size: 64, offset: 1152)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4370, file: !4371, line: 107, baseType: !4446, size: 64, offset: 1216)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4448)
!4448 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4371, line: 107, flags: DIFlagFwdDecl)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4370, file: !4371, line: 109, baseType: !730, size: 8, offset: 1280)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4305, file: !100, line: 715, baseType: !4382, size: 64, offset: 832)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4305, file: !100, line: 717, baseType: !220, size: 64, offset: 896)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4305, file: !100, line: 719, baseType: !220, size: 64, offset: 960)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4305, file: !100, line: 721, baseType: !437, size: 256, offset: 1024)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4305, file: !100, line: 725, baseType: !4455, size: 448, offset: 1280)
!4455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !100, line: 517, size: 448, elements: !4456)
!4456 = !{!4457, !4458, !4459, !4460}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4455, file: !100, line: 518, baseType: !485, size: 128)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4455, file: !100, line: 519, baseType: !485, size: 128, offset: 128)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4455, file: !100, line: 520, baseType: !485, size: 128, offset: 256)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4455, file: !100, line: 521, baseType: !99, size: 32, offset: 384)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4305, file: !100, line: 726, baseType: !4462, size: 2496, offset: 1728)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !107, line: 663, size: 2496, elements: !4463)
!4463 = !{!4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4546, !4550}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4462, file: !107, line: 664, baseType: !4420, size: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4462, file: !107, line: 665, baseType: !37, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4462, file: !107, line: 666, baseType: !37, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4462, file: !107, line: 667, baseType: !730, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4462, file: !107, line: 668, baseType: !730, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4462, file: !107, line: 669, baseType: !730, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4462, file: !107, line: 670, baseType: !730, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4462, file: !107, line: 671, baseType: !730, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4462, file: !107, line: 672, baseType: !730, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4462, file: !107, line: 673, baseType: !730, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4462, file: !107, line: 674, baseType: !730, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4462, file: !107, line: 675, baseType: !698, size: 32, offset: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4462, file: !107, line: 676, baseType: !517, size: 32, offset: 96)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4462, file: !107, line: 678, baseType: !485, size: 128, offset: 128)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4462, file: !107, line: 679, baseType: !1923, size: 256, offset: 256)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4462, file: !107, line: 680, baseType: !4480, size: 64, offset: 512)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4482, line: 43, size: 1536, elements: !4483)
!4482 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4483 = !{!4484, !4485, !4486, !4487, !4488, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4481, file: !4482, line: 44, baseType: !280, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4481, file: !4482, line: 45, baseType: !115, size: 32, offset: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4481, file: !4482, line: 46, baseType: !485, size: 128, offset: 128)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4481, file: !4482, line: 47, baseType: !517, size: 32, offset: 256)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4481, file: !4482, line: 48, baseType: !4489, size: 64, offset: 320)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !107, line: 629, flags: DIFlagFwdDecl)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4481, file: !4482, line: 49, baseType: !2166, size: 320, offset: 384)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4481, file: !4482, line: 50, baseType: !222, size: 64, offset: 704)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4481, file: !4482, line: 51, baseType: !2758, size: 64, offset: 768)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4481, file: !4482, line: 52, baseType: !2758, size: 64, offset: 832)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4481, file: !4482, line: 53, baseType: !2758, size: 64, offset: 896)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4481, file: !4482, line: 54, baseType: !2758, size: 64, offset: 960)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4481, file: !4482, line: 55, baseType: !2758, size: 64, offset: 1024)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4481, file: !4482, line: 56, baseType: !222, size: 64, offset: 1088)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4481, file: !4482, line: 57, baseType: !222, size: 64, offset: 1152)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4481, file: !4482, line: 58, baseType: !222, size: 64, offset: 1216)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4481, file: !4482, line: 59, baseType: !222, size: 64, offset: 1280)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4481, file: !4482, line: 60, baseType: !222, size: 64, offset: 1344)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4481, file: !4482, line: 61, baseType: !4309, size: 64, offset: 1408)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4481, file: !4482, line: 62, baseType: !730, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4481, file: !4482, line: 63, baseType: !730, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4462, file: !107, line: 681, baseType: !730, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4462, file: !107, line: 682, baseType: !730, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4462, file: !107, line: 683, baseType: !730, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4462, file: !107, line: 684, baseType: !37, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4462, file: !107, line: 685, baseType: !37, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4462, file: !107, line: 690, baseType: !2750, size: 512, offset: 640)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4462, file: !107, line: 691, baseType: !641, size: 64, offset: 1152)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4462, file: !107, line: 692, baseType: !1698, size: 256, offset: 1216)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4462, file: !107, line: 693, baseType: !585, size: 192, offset: 1472)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4462, file: !107, line: 694, baseType: !4489, size: 64, offset: 1664)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4462, file: !107, line: 695, baseType: !464, size: 32, offset: 1728)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4462, file: !107, line: 696, baseType: !464, size: 32, offset: 1760)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4462, file: !107, line: 697, baseType: !37, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4462, file: !107, line: 698, baseType: !37, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4462, file: !107, line: 699, baseType: !37, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4462, file: !107, line: 700, baseType: !37, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4462, file: !107, line: 701, baseType: !37, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4462, file: !107, line: 702, baseType: !37, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4462, file: !107, line: 703, baseType: !730, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4462, file: !107, line: 704, baseType: !37, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4462, file: !107, line: 705, baseType: !37, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4462, file: !107, line: 706, baseType: !37, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4462, file: !107, line: 707, baseType: !37, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4462, file: !107, line: 708, baseType: !37, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4462, file: !107, line: 709, baseType: !37, size: 32, offset: 1824)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4462, file: !107, line: 710, baseType: !106, size: 32, offset: 1856)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4462, file: !107, line: 711, baseType: !114, size: 32, offset: 1888)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4462, file: !107, line: 712, baseType: !114, size: 32, offset: 1920)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4462, file: !107, line: 713, baseType: !115, size: 32, offset: 1952)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4462, file: !107, line: 714, baseType: !115, size: 32, offset: 1984)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4462, file: !107, line: 715, baseType: !641, size: 64, offset: 2048)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4462, file: !107, line: 716, baseType: !641, size: 64, offset: 2112)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4462, file: !107, line: 717, baseType: !641, size: 64, offset: 2176)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4462, file: !107, line: 718, baseType: !641, size: 64, offset: 2240)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4462, file: !107, line: 720, baseType: !4541, size: 64, offset: 2304)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !107, line: 632, size: 64, elements: !4543)
!4543 = !{!4544, !4545}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4542, file: !107, line: 633, baseType: !517, size: 32)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4542, file: !107, line: 634, baseType: !37, size: 32, offset: 32)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4462, file: !107, line: 721, baseType: !4547, size: 64, offset: 2368)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{null, !4309, !658}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4462, file: !107, line: 722, baseType: !4551, size: 64, offset: 2432)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !107, line: 722, flags: DIFlagFwdDecl)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4305, file: !100, line: 727, baseType: !4554, size: 64, offset: 4224)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !107, line: 742, size: 1792, elements: !4556)
!4556 = !{!4557, !4558, !4559, !4563, !4564, !4565}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4555, file: !107, line: 743, baseType: !4339, size: 1472)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4555, file: !107, line: 744, baseType: !4342, size: 64, offset: 1472)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4555, file: !107, line: 745, baseType: !4560, size: 64, offset: 1536)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{null, !4309, !730}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4555, file: !107, line: 746, baseType: !4342, size: 64, offset: 1600)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4555, file: !107, line: 747, baseType: !4333, size: 64, offset: 1664)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4555, file: !107, line: 748, baseType: !4333, size: 64, offset: 1728)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4305, file: !100, line: 736, baseType: !4567, size: 128, offset: 4288)
!4567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !100, line: 529, size: 128, elements: !4568)
!4568 = !{!4569, !4573}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4567, file: !100, line: 531, baseType: !4570, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4572, line: 13, flags: DIFlagFwdDecl)
!4572 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4567, file: !100, line: 532, baseType: !4574, size: 64, offset: 64)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !100, line: 49, flags: DIFlagFwdDecl)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4305, file: !100, line: 738, baseType: !4577, size: 64, offset: 4416)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4579)
!4579 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !100, line: 738, flags: DIFlagFwdDecl)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4305, file: !100, line: 740, baseType: !4581, size: 64, offset: 4480)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4305, file: !100, line: 741, baseType: !641, size: 64, offset: 4544)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4305, file: !100, line: 746, baseType: !641, size: 64, offset: 4608)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4305, file: !100, line: 747, baseType: !4585, size: 64, offset: 4672)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4587)
!4587 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !100, line: 747, flags: DIFlagFwdDecl)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4305, file: !100, line: 749, baseType: !4589, size: 64, offset: 4736)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !100, line: 428, size: 128, elements: !4591)
!4591 = !{!4592, !4593, !4594}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4590, file: !100, line: 433, baseType: !37, size: 32)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4590, file: !100, line: 434, baseType: !37, size: 32, offset: 32)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4590, file: !100, line: 435, baseType: !222, size: 64, offset: 64)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4305, file: !100, line: 751, baseType: !485, size: 128, offset: 4800)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4305, file: !100, line: 762, baseType: !4597, size: 64, offset: 4928)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !100, line: 762, flags: DIFlagFwdDecl)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4305, file: !100, line: 770, baseType: !4600, offset: 4992)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4601, line: 5, elements: !1567)
!4601 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4305, file: !100, line: 772, baseType: !4603, size: 64, offset: 4992)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4605, line: 18, flags: DIFlagFwdDecl)
!4605 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4305, file: !100, line: 773, baseType: !4607, size: 64, offset: 5056)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4371, line: 22, flags: DIFlagFwdDecl)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4305, file: !100, line: 776, baseType: !115, size: 32, offset: 5120)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4305, file: !100, line: 778, baseType: !966, size: 32, offset: 5152)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4305, file: !100, line: 779, baseType: !698, size: 32, offset: 5184)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4305, file: !100, line: 781, baseType: !517, size: 32, offset: 5216)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4305, file: !100, line: 782, baseType: !485, size: 128, offset: 5248)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4305, file: !100, line: 784, baseType: !4615, size: 64, offset: 5376)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4617)
!4617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4618, line: 52, size: 768, elements: !4619)
!4618 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4619 = !{!4620, !4621, !4622, !4623, !4624, !4628, !4632, !4633, !4634, !4635, !4639, !4643}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4617, file: !4618, line: 53, baseType: !280, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4617, file: !4618, line: 55, baseType: !1227, size: 64, offset: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4617, file: !4618, line: 56, baseType: !1227, size: 64, offset: 128)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4617, file: !4618, line: 58, baseType: !4322, size: 64, offset: 192)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4617, file: !4618, line: 59, baseType: !4625, size: 64, offset: 256)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!741, !4325, !4331}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4617, file: !4618, line: 61, baseType: !4629, size: 64, offset: 320)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4630, size: 64)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{null, !4615}
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4617, file: !4618, line: 62, baseType: !4333, size: 64, offset: 384)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4617, file: !4618, line: 64, baseType: !4342, size: 64, offset: 448)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4617, file: !4618, line: 66, baseType: !1761, size: 64, offset: 512)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4617, file: !4618, line: 67, baseType: !4636, size: 64, offset: 576)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!1660, !4325}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4617, file: !4618, line: 69, baseType: !4640, size: 64, offset: 640)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{null, !4325, !1793, !1794}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4617, file: !4618, line: 71, baseType: !4337, size: 64, offset: 704)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4305, file: !100, line: 785, baseType: !1227, size: 64, offset: 5440)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4305, file: !100, line: 787, baseType: !4333, size: 64, offset: 5504)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4305, file: !100, line: 788, baseType: !4647, size: 64, offset: 5568)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !100, line: 46, flags: DIFlagFwdDecl)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4305, file: !100, line: 789, baseType: !4650, size: 64, offset: 5632)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !100, line: 48, flags: DIFlagFwdDecl)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4305, file: !100, line: 791, baseType: !4653, size: 64, offset: 5696)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !100, line: 597, size: 128, elements: !4655)
!4655 = !{!4656, !4657, !4658, !4659, !4660}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4654, file: !100, line: 598, baseType: !122, size: 32)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4654, file: !100, line: 599, baseType: !131, size: 32, offset: 32)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4654, file: !100, line: 600, baseType: !136, size: 32, offset: 64)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4654, file: !100, line: 601, baseType: !730, size: 8, offset: 96)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4654, file: !100, line: 602, baseType: !730, size: 8, offset: 104)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4305, file: !100, line: 793, baseType: !141, size: 32, offset: 5760)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4305, file: !100, line: 795, baseType: !730, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4305, file: !100, line: 796, baseType: !730, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4305, file: !100, line: 797, baseType: !730, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4305, file: !100, line: 798, baseType: !730, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4305, file: !100, line: 799, baseType: !730, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !276, file: !277, line: 200, baseType: !485, size: 128, offset: 10176)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !276, file: !277, line: 201, baseType: !485, size: 128, offset: 10304)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !276, file: !277, line: 203, baseType: !37, size: 32, offset: 10432)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !276, file: !277, line: 204, baseType: !37, size: 32, offset: 10464)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !276, file: !277, line: 205, baseType: !4672, size: 64, offset: 10496)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !276, file: !277, line: 207, baseType: !730, size: 8, offset: 10560)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !276, file: !277, line: 209, baseType: !4675, size: 192, offset: 10624)
!4675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2758, size: 192, elements: !557)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "inhibited", scope: !276, file: !277, line: 211, baseType: !730, size: 8, offset: 10816)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "ps2dev", scope: !271, file: !160, line: 92, baseType: !4678, size: 832, offset: 128)
!4678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ps2dev", file: !154, line: 48, size: 832, elements: !4679)
!4679 = !{!4680, !4745, !4746, !4747, !4748, !4750, !4751, !4752, !4758}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "serio", scope: !4678, file: !154, line: 49, baseType: !4681, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio", file: !4683, line: 21, size: 8768, elements: !4684)
!4683 = !DIFile(filename: "./include/linux/serio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a9b334022147244b132d6aa1a8399b7")
!4684 = !{!4685, !4686, !4687, !4688, !4689, !4690, !4697, !4698, !4702, !4706, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4740, !4741, !4742, !4743}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "port_data", scope: !4682, file: !4683, line: 22, baseType: !220, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4682, file: !4683, line: 24, baseType: !3817, size: 256, offset: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4682, file: !4683, line: 25, baseType: !3817, size: 256, offset: 320)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !4682, file: !4683, line: 26, baseType: !4399, size: 1024, offset: 576)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !4682, file: !4683, line: 28, baseType: !730, size: 8, offset: 1600)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4682, file: !4683, line: 30, baseType: !4691, size: 32, offset: 1608)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_device_id", file: !4265, line: 256, size: 32, elements: !4692)
!4692 = !{!4693, !4694, !4695, !4696}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4691, file: !4265, line: 257, baseType: !327, size: 8)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4691, file: !4265, line: 258, baseType: !327, size: 8, offset: 8)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4691, file: !4265, line: 259, baseType: !327, size: 8, offset: 16)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !4691, file: !4265, line: 260, baseType: !327, size: 8, offset: 24)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4682, file: !4683, line: 33, baseType: !517, size: 32, offset: 1664)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4682, file: !4683, line: 35, baseType: !4699, size: 64, offset: 1728)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DISubroutineType(types: !4701)
!4701 = !{!115, !4681, !230}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4682, file: !4683, line: 36, baseType: !4703, size: 64, offset: 1792)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!115, !4681}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4682, file: !4683, line: 37, baseType: !4707, size: 64, offset: 1856)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{null, !4681}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4682, file: !4683, line: 38, baseType: !4703, size: 64, offset: 1920)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4682, file: !4683, line: 39, baseType: !4707, size: 64, offset: 1984)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4682, file: !4683, line: 41, baseType: !4681, size: 64, offset: 2048)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !4682, file: !4683, line: 43, baseType: !485, size: 128, offset: 2112)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4682, file: !4683, line: 44, baseType: !485, size: 128, offset: 2240)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4682, file: !4683, line: 46, baseType: !37, size: 32, offset: 2368)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !4682, file: !4683, line: 52, baseType: !4717, size: 64, offset: 2432)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_driver", file: !4683, line: 68, size: 1792, elements: !4719)
!4719 = !{!4720, !4721, !4724, !4725, !4726, !4731, !4735, !4736, !4737, !4738, !4739}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4718, file: !4683, line: 69, baseType: !280, size: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4718, file: !4683, line: 71, baseType: !4722, size: 64, offset: 64)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4691)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !4718, file: !4683, line: 72, baseType: !730, size: 8, offset: 128)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4718, file: !4683, line: 74, baseType: !4707, size: 64, offset: 192)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !4718, file: !4683, line: 75, baseType: !4727, size: 64, offset: 256)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!4730, !4681, !230, !37}
!4730 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !148, line: 17, baseType: !147)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4718, file: !4683, line: 76, baseType: !4732, size: 64, offset: 320)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!115, !4681, !4717}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !4718, file: !4683, line: 77, baseType: !4703, size: 64, offset: 384)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !4718, file: !4683, line: 78, baseType: !4703, size: 64, offset: 448)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4718, file: !4683, line: 79, baseType: !4707, size: 64, offset: 512)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4718, file: !4683, line: 80, baseType: !4707, size: 64, offset: 576)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4718, file: !4683, line: 82, baseType: !4383, size: 1152, offset: 640)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "drv_mutex", scope: !4682, file: !4683, line: 54, baseType: !437, size: 256, offset: 2496)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4682, file: !4683, line: 56, baseType: !4305, size: 5824, offset: 2752)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4682, file: !4683, line: 58, baseType: !485, size: 128, offset: 8576)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "ps2_cmd_mutex", scope: !4682, file: !4683, line: 64, baseType: !4744, size: 64, offset: 8704)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !4678, file: !154, line: 50, baseType: !437, size: 256, offset: 64)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4678, file: !154, line: 51, baseType: !585, size: 192, offset: 320)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4678, file: !154, line: 52, baseType: !222, size: 64, offset: 512)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "cmdbuf", scope: !4678, file: !154, line: 53, baseType: !4749, size: 64, offset: 576)
!4749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 64, elements: !5)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcnt", scope: !4678, file: !154, line: 54, baseType: !472, size: 8, offset: 640)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "nak", scope: !4678, file: !154, line: 55, baseType: !472, size: 8, offset: 648)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "pre_receive_handler", scope: !4678, file: !154, line: 57, baseType: !4753, size: 64, offset: 704)
!4753 = !DIDerivedType(tag: DW_TAG_typedef, name: "ps2_pre_receive_handler_t", file: !154, line: 30, baseType: !4754)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!153, !4757, !472, !37}
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "receive_handler", scope: !4678, file: !154, line: 58, baseType: !4759, size: 64, offset: 768)
!4759 = !DIDerivedType(tag: DW_TAG_typedef, name: "ps2_receive_handler_t", file: !154, line: 32, baseType: !4760)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{null, !4757, !472}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "resync_work", scope: !271, file: !160, line: 93, baseType: !2223, size: 704, offset: 960)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !271, file: !160, line: 94, baseType: !280, size: 64, offset: 1664)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !271, file: !160, line: 95, baseType: !280, size: 64, offset: 1728)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !271, file: !160, line: 96, baseType: !4767, size: 64, offset: 1792)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4769)
!4769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse_protocol", file: !160, line: 77, size: 320, elements: !4770)
!4770 = !{!4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4780}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4769, file: !160, line: 78, baseType: !159, size: 32)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "maxproto", scope: !4769, file: !160, line: 79, baseType: !730, size: 8, offset: 32)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parity", scope: !4769, file: !160, line: 80, baseType: !730, size: 8, offset: 40)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "try_passthru", scope: !4769, file: !160, line: 81, baseType: !730, size: 8, offset: 48)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_companion", scope: !4769, file: !160, line: 82, baseType: !730, size: 8, offset: 56)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4769, file: !160, line: 83, baseType: !280, size: 64, offset: 64)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !4769, file: !160, line: 84, baseType: !280, size: 64, offset: 128)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !4769, file: !160, line: 85, baseType: !4779, size: 64, offset: 192)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4769, file: !160, line: 86, baseType: !4781, size: 64, offset: 256)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!115, !270}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !271, file: !160, line: 97, baseType: !4785, size: 64, offset: 1856)
!4785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 64, elements: !5)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "badbyte", scope: !271, file: !160, line: 98, baseType: !230, size: 8, offset: 1920)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "pktcnt", scope: !271, file: !160, line: 99, baseType: !230, size: 8, offset: 1928)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "pktsize", scope: !271, file: !160, line: 100, baseType: !230, size: 8, offset: 1936)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "oob_data_type", scope: !271, file: !160, line: 101, baseType: !230, size: 8, offset: 1944)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "extra_buttons", scope: !271, file: !160, line: 102, baseType: !230, size: 8, offset: 1952)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "acks_disable_command", scope: !271, file: !160, line: 103, baseType: !730, size: 8, offset: 1960)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !271, file: !160, line: 104, baseType: !37, size: 32, offset: 1984)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !271, file: !160, line: 105, baseType: !222, size: 64, offset: 2048)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_sync_cnt", scope: !271, file: !160, line: 106, baseType: !222, size: 64, offset: 2112)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "num_resyncs", scope: !271, file: !160, line: 107, baseType: !222, size: 64, offset: 2176)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !271, file: !160, line: 108, baseType: !186, size: 32, offset: 2240)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "devname", scope: !271, file: !160, line: 109, baseType: !19, size: 512, offset: 2272)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !271, file: !160, line: 110, baseType: !3817, size: 256, offset: 2784)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !271, file: !160, line: 112, baseType: !37, size: 32, offset: 3040)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !271, file: !160, line: 113, baseType: !37, size: 32, offset: 3072)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "resetafter", scope: !271, file: !160, line: 114, baseType: !37, size: 32, offset: 3104)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "resync_time", scope: !271, file: !160, line: 115, baseType: !37, size: 32, offset: 3136)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "smartscroll", scope: !271, file: !160, line: 116, baseType: !730, size: 8, offset: 3168)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_handler", scope: !271, file: !160, line: 118, baseType: !4805, size: 64, offset: 3200)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!4808, !270}
!4808 = !DIDerivedType(tag: DW_TAG_typedef, name: "psmouse_ret_t", file: !160, line: 41, baseType: !193)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !271, file: !160, line: 119, baseType: !4810, size: 64, offset: 3264)
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{null, !270, !37}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "set_resolution", scope: !271, file: !160, line: 120, baseType: !4810, size: 64, offset: 3328)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "set_scale", scope: !271, file: !160, line: 121, baseType: !4815, size: 64, offset: 3392)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{null, !270, !198}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !271, file: !160, line: 123, baseType: !4781, size: 64, offset: 3456)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !271, file: !160, line: 124, baseType: !4781, size: 64, offset: 3520)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !271, file: !160, line: 125, baseType: !4821, size: 64, offset: 3584)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{null, !270}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !271, file: !160, line: 126, baseType: !4821, size: 64, offset: 3648)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !271, file: !160, line: 127, baseType: !4781, size: 64, offset: 3712)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "pt_activate", scope: !271, file: !160, line: 129, baseType: !4821, size: 64, offset: 3776)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "pt_deactivate", scope: !271, file: !160, line: 130, baseType: !4821, size: 64, offset: 3840)
!4828 = !{!4829, !4830, !4831}
!4829 = !DILocalVariable(name: "psmouse", arg: 1, scope: !267, file: !2, line: 201, type: !270)
!4830 = !DILocalVariable(name: "set_properties", arg: 2, scope: !267, file: !2, line: 201, type: !730)
!4831 = !DILocalVariable(name: "param", scope: !267, file: !2, line: 203, type: !4832)
!4832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 24, elements: !557)
!4833 = !DILocation(line: 201, column: 36, scope: !267)
!4834 = !DILocation(line: 201, column: 50, scope: !267)
!4835 = !DILocation(line: 203, column: 2, scope: !267)
!4836 = !DILocation(line: 203, column: 16, scope: !267)
!4837 = !DILocation(line: 205, column: 27, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !267, file: !2, line: 205, column: 6)
!4839 = !DILocation(line: 205, column: 62, scope: !4838)
!4840 = !DILocation(line: 205, column: 6, scope: !4838)
!4841 = !DILocation(line: 205, column: 6, scope: !267)
!4842 = !DILocation(line: 206, column: 3, scope: !4838)
!4843 = !DILocation(line: 209, column: 6, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !267, file: !2, line: 209, column: 6)
!4845 = !DILocation(line: 209, column: 15, scope: !4844)
!4846 = !DILocation(line: 209, column: 23, scope: !4844)
!4847 = !DILocation(line: 209, column: 26, scope: !4844)
!4848 = !DILocation(line: 209, column: 35, scope: !4844)
!4849 = !DILocation(line: 209, column: 6, scope: !267)
!4850 = !DILocation(line: 210, column: 3, scope: !4844)
!4851 = !DILocation(line: 212, column: 6, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !267, file: !2, line: 212, column: 6)
!4853 = !{i8 0, i8 2}
!4854 = !DILocation(line: 212, column: 6, scope: !267)
!4855 = !DILocation(line: 213, column: 3, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4852, file: !2, line: 212, column: 22)
!4857 = !DILocation(line: 213, column: 12, scope: !4856)
!4858 = !DILocation(line: 213, column: 19, scope: !4856)
!4859 = !DILocation(line: 214, column: 3, scope: !4856)
!4860 = !DILocation(line: 214, column: 12, scope: !4856)
!4861 = !DILocation(line: 214, column: 17, scope: !4856)
!4862 = !DILocation(line: 215, column: 2, scope: !4856)
!4863 = !DILocation(line: 217, column: 2, scope: !267)
!4864 = !DILocation(line: 218, column: 1, scope: !267)
!4865 = distinct !DISubprogram(name: "cypress_send_ext_cmd", scope: !2, file: !2, line: 169, type: !4866, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !4868)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!115, !270, !230, !229}
!4868 = !{!4869, !4870, !4871, !4872, !4873}
!4869 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4865, file: !2, line: 169, type: !270)
!4870 = !DILocalVariable(name: "cmd", arg: 2, scope: !4865, file: !2, line: 169, type: !230)
!4871 = !DILocalVariable(name: "param", arg: 3, scope: !4865, file: !2, line: 170, type: !229)
!4872 = !DILocalVariable(name: "tries", scope: !4865, file: !2, line: 172, type: !115)
!4873 = !DILocalVariable(name: "rc", scope: !4865, file: !2, line: 173, type: !115)
!4874 = !DILocation(line: 169, column: 49, scope: !4865)
!4875 = !DILocation(line: 169, column: 72, scope: !4865)
!4876 = !DILocation(line: 170, column: 20, scope: !4865)
!4877 = !DILocation(line: 172, column: 2, scope: !4865)
!4878 = !DILocation(line: 172, column: 6, scope: !4865)
!4879 = !DILocation(line: 173, column: 2, scope: !4865)
!4880 = !DILocation(line: 173, column: 6, scope: !4865)
!4881 = !DILocation(line: 179, column: 2, scope: !4865)
!4882 = !DILocation(line: 180, column: 23, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4865, file: !2, line: 179, column: 5)
!4884 = !DILocation(line: 181, column: 29, scope: !4883)
!4885 = !DILocation(line: 180, column: 3, scope: !4883)
!4886 = !DILocation(line: 182, column: 23, scope: !4883)
!4887 = !DILocation(line: 183, column: 29, scope: !4883)
!4888 = !DILocation(line: 182, column: 3, scope: !4883)
!4889 = !DILocation(line: 184, column: 23, scope: !4883)
!4890 = !DILocation(line: 185, column: 29, scope: !4883)
!4891 = !DILocation(line: 184, column: 3, scope: !4883)
!4892 = !DILocation(line: 186, column: 23, scope: !4883)
!4893 = !DILocation(line: 187, column: 29, scope: !4883)
!4894 = !DILocation(line: 186, column: 3, scope: !4883)
!4895 = !DILocation(line: 189, column: 36, scope: !4883)
!4896 = !DILocation(line: 189, column: 45, scope: !4883)
!4897 = !DILocation(line: 189, column: 50, scope: !4883)
!4898 = !DILocation(line: 189, column: 8, scope: !4883)
!4899 = !DILocation(line: 189, column: 6, scope: !4883)
!4900 = !DILocation(line: 190, column: 7, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4883, file: !2, line: 190, column: 7)
!4902 = !DILocation(line: 190, column: 7, scope: !4883)
!4903 = !DILocation(line: 191, column: 4, scope: !4901)
!4904 = !DILocation(line: 193, column: 32, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4883, file: !2, line: 193, column: 7)
!4906 = !DILocation(line: 193, column: 41, scope: !4905)
!4907 = !DILocation(line: 193, column: 46, scope: !4905)
!4908 = !DILocation(line: 193, column: 7, scope: !4905)
!4909 = !DILocation(line: 193, column: 7, scope: !4883)
!4910 = !DILocation(line: 194, column: 4, scope: !4905)
!4911 = !DILocation(line: 196, column: 2, scope: !4883)
!4912 = !DILocation(line: 196, column: 11, scope: !4865)
!4913 = !DILocation(line: 196, column: 19, scope: !4865)
!4914 = distinct !{!4914, !4881, !4915, !4916, !4917}
!4915 = !DILocation(line: 196, column: 22, scope: !4865)
!4916 = !{!"llvm.loop.mustprogress"}
!4917 = !{!"llvm.loop.unroll.disable"}
!4918 = !DILocation(line: 198, column: 2, scope: !4865)
!4919 = !DILocation(line: 199, column: 1, scope: !4865)
!4920 = distinct !DISubprogram(name: "cypress_init", scope: !2, file: !2, line: 658, type: !4782, scopeLine: 659, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !4921)
!4921 = !{!4922, !4923, !4940}
!4922 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4920, file: !2, line: 658, type: !270)
!4923 = !DILocalVariable(name: "cytp", scope: !4920, file: !2, line: 660, type: !4924)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cytp_data", file: !4926, line: 153, size: 384, elements: !4927)
!4926 = !DIFile(filename: "drivers/input/mouse/cypress_ps2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8c3b4e874f14a9b93aa7fb5c93c057a9")
!4927 = !{!4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "fw_version", scope: !4925, file: !4926, line: 154, baseType: !115, size: 32)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_size", scope: !4925, file: !4926, line: 156, baseType: !115, size: 32, offset: 32)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4925, file: !4926, line: 157, baseType: !115, size: 32, offset: 64)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "tp_min_pressure", scope: !4925, file: !4926, line: 159, baseType: !115, size: 32, offset: 96)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "tp_max_pressure", scope: !4925, file: !4926, line: 160, baseType: !115, size: 32, offset: 128)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "tp_width", scope: !4925, file: !4926, line: 161, baseType: !115, size: 32, offset: 160)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "tp_high", scope: !4925, file: !4926, line: 162, baseType: !115, size: 32, offset: 192)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "tp_max_abs_x", scope: !4925, file: !4926, line: 163, baseType: !115, size: 32, offset: 224)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "tp_max_abs_y", scope: !4925, file: !4926, line: 164, baseType: !115, size: 32, offset: 256)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "tp_res_x", scope: !4925, file: !4926, line: 166, baseType: !115, size: 32, offset: 288)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "tp_res_y", scope: !4925, file: !4926, line: 167, baseType: !115, size: 32, offset: 320)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "tp_metrics_supported", scope: !4925, file: !4926, line: 169, baseType: !115, size: 32, offset: 352)
!4940 = !DILabel(scope: !4920, name: "err_exit", file: !2, line: 696)
!4941 = !DILocation(line: 658, column: 34, scope: !4920)
!4942 = !DILocation(line: 660, column: 2, scope: !4920)
!4943 = !DILocation(line: 660, column: 20, scope: !4920)
!4944 = !DILocation(line: 662, column: 9, scope: !4920)
!4945 = !DILocation(line: 662, column: 7, scope: !4920)
!4946 = !DILocation(line: 663, column: 7, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4920, file: !2, line: 663, column: 6)
!4948 = !DILocation(line: 663, column: 6, scope: !4920)
!4949 = !DILocation(line: 664, column: 3, scope: !4947)
!4950 = !DILocation(line: 666, column: 21, scope: !4920)
!4951 = !DILocation(line: 666, column: 2, scope: !4920)
!4952 = !DILocation(line: 666, column: 11, scope: !4920)
!4953 = !DILocation(line: 666, column: 19, scope: !4920)
!4954 = !DILocation(line: 667, column: 2, scope: !4920)
!4955 = !DILocation(line: 667, column: 11, scope: !4920)
!4956 = !DILocation(line: 667, column: 19, scope: !4920)
!4957 = !DILocation(line: 669, column: 16, scope: !4920)
!4958 = !DILocation(line: 669, column: 2, scope: !4920)
!4959 = !DILocation(line: 671, column: 29, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4920, file: !2, line: 671, column: 6)
!4961 = !DILocation(line: 671, column: 6, scope: !4960)
!4962 = !DILocation(line: 671, column: 6, scope: !4920)
!4963 = !DILocation(line: 672, column: 3, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4965, file: !2, line: 672, column: 3)
!4965 = distinct !DILexicalBlock(scope: !4960, file: !2, line: 671, column: 39)
!4966 = !DILocation(line: 672, column: 3, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4964, file: !2, line: 672, column: 3)
!4968 = !DILocation(line: 673, column: 3, scope: !4965)
!4969 = !DILocation(line: 676, column: 32, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4920, file: !2, line: 676, column: 6)
!4971 = !DILocation(line: 676, column: 6, scope: !4970)
!4972 = !DILocation(line: 676, column: 6, scope: !4920)
!4973 = !DILocation(line: 677, column: 3, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4975, file: !2, line: 677, column: 3)
!4975 = distinct !DILexicalBlock(scope: !4970, file: !2, line: 676, column: 42)
!4976 = !DILocation(line: 677, column: 3, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4974, file: !2, line: 677, column: 3)
!4978 = !DILocation(line: 678, column: 3, scope: !4975)
!4979 = !DILocation(line: 681, column: 31, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4920, file: !2, line: 681, column: 6)
!4981 = !DILocation(line: 681, column: 40, scope: !4980)
!4982 = !DILocation(line: 681, column: 45, scope: !4980)
!4983 = !DILocation(line: 681, column: 6, scope: !4980)
!4984 = !DILocation(line: 681, column: 51, scope: !4980)
!4985 = !DILocation(line: 681, column: 6, scope: !4920)
!4986 = !DILocation(line: 682, column: 3, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4988, file: !2, line: 682, column: 3)
!4988 = distinct !DILexicalBlock(scope: !4980, file: !2, line: 681, column: 56)
!4989 = !DILocation(line: 682, column: 3, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4987, file: !2, line: 682, column: 3)
!4991 = !DILocation(line: 683, column: 3, scope: !4988)
!4992 = !DILocation(line: 686, column: 2, scope: !4920)
!4993 = !DILocation(line: 686, column: 11, scope: !4920)
!4994 = !DILocation(line: 686, column: 17, scope: !4920)
!4995 = !DILocation(line: 687, column: 2, scope: !4920)
!4996 = !DILocation(line: 687, column: 11, scope: !4920)
!4997 = !DILocation(line: 687, column: 28, scope: !4920)
!4998 = !DILocation(line: 688, column: 2, scope: !4920)
!4999 = !DILocation(line: 688, column: 11, scope: !4920)
!5000 = !DILocation(line: 688, column: 20, scope: !4920)
!5001 = !DILocation(line: 689, column: 2, scope: !4920)
!5002 = !DILocation(line: 689, column: 11, scope: !4920)
!5003 = !DILocation(line: 689, column: 22, scope: !4920)
!5004 = !DILocation(line: 690, column: 2, scope: !4920)
!5005 = !DILocation(line: 690, column: 11, scope: !4920)
!5006 = !DILocation(line: 690, column: 21, scope: !4920)
!5007 = !DILocation(line: 691, column: 2, scope: !4920)
!5008 = !DILocation(line: 691, column: 11, scope: !4920)
!5009 = !DILocation(line: 691, column: 19, scope: !4920)
!5010 = !DILocation(line: 692, column: 2, scope: !4920)
!5011 = !DILocation(line: 692, column: 11, scope: !4920)
!5012 = !DILocation(line: 692, column: 23, scope: !4920)
!5013 = !DILocation(line: 694, column: 2, scope: !4920)
!5014 = !DILocation(line: 696, column: 1, scope: !4920)
!5015 = !DILocation(line: 701, column: 16, scope: !4920)
!5016 = !DILocation(line: 701, column: 2, scope: !4920)
!5017 = !DILocation(line: 703, column: 2, scope: !4920)
!5018 = !DILocation(line: 703, column: 11, scope: !4920)
!5019 = !DILocation(line: 703, column: 19, scope: !4920)
!5020 = !DILocation(line: 704, column: 8, scope: !4920)
!5021 = !DILocation(line: 704, column: 2, scope: !4920)
!5022 = !DILocation(line: 706, column: 2, scope: !4920)
!5023 = !DILocation(line: 707, column: 1, scope: !4920)
!5024 = distinct !DISubprogram(name: "kzalloc", scope: !208, file: !208, line: 719, type: !5025, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5027)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!220, !1047, !218}
!5027 = !{!5028, !5029}
!5028 = !DILocalVariable(name: "size", arg: 1, scope: !5024, file: !208, line: 719, type: !1047)
!5029 = !DILocalVariable(name: "flags", arg: 2, scope: !5024, file: !208, line: 719, type: !218)
!5030 = !DILocation(line: 719, column: 52, scope: !5024)
!5031 = !DILocation(line: 719, column: 64, scope: !5024)
!5032 = !DILocation(line: 721, column: 17, scope: !5024)
!5033 = !DILocation(line: 721, column: 23, scope: !5024)
!5034 = !DILocation(line: 721, column: 29, scope: !5024)
!5035 = !DILocation(line: 721, column: 9, scope: !5024)
!5036 = !DILocation(line: 721, column: 2, scope: !5024)
!5037 = distinct !DISubprogram(name: "cypress_reset", scope: !2, file: !2, line: 356, type: !4822, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5038)
!5038 = !{!5039, !5040}
!5039 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5037, file: !2, line: 356, type: !270)
!5040 = !DILocalVariable(name: "cytp", scope: !5037, file: !2, line: 358, type: !4924)
!5041 = !DILocation(line: 356, column: 43, scope: !5037)
!5042 = !DILocation(line: 358, column: 2, scope: !5037)
!5043 = !DILocation(line: 358, column: 20, scope: !5037)
!5044 = !DILocation(line: 358, column: 27, scope: !5037)
!5045 = !DILocation(line: 358, column: 36, scope: !5037)
!5046 = !DILocation(line: 360, column: 2, scope: !5037)
!5047 = !DILocation(line: 360, column: 8, scope: !5037)
!5048 = !DILocation(line: 360, column: 13, scope: !5037)
!5049 = !DILocation(line: 362, column: 16, scope: !5037)
!5050 = !DILocation(line: 362, column: 2, scope: !5037)
!5051 = !DILocation(line: 363, column: 1, scope: !5037)
!5052 = distinct !DISubprogram(name: "cypress_query_hardware", scope: !2, file: !2, line: 322, type: !4782, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5053)
!5053 = !{!5054, !5055}
!5054 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5052, file: !2, line: 322, type: !270)
!5055 = !DILocalVariable(name: "ret", scope: !5052, file: !2, line: 324, type: !115)
!5056 = !DILocation(line: 322, column: 51, scope: !5052)
!5057 = !DILocation(line: 324, column: 2, scope: !5052)
!5058 = !DILocation(line: 324, column: 6, scope: !5052)
!5059 = !DILocation(line: 326, column: 32, scope: !5052)
!5060 = !DILocation(line: 326, column: 8, scope: !5052)
!5061 = !DILocation(line: 326, column: 6, scope: !5052)
!5062 = !DILocation(line: 327, column: 6, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5052, file: !2, line: 327, column: 6)
!5064 = !DILocation(line: 327, column: 6, scope: !5052)
!5065 = !DILocation(line: 328, column: 10, scope: !5063)
!5066 = !DILocation(line: 328, column: 3, scope: !5063)
!5067 = !DILocation(line: 330, column: 32, scope: !5052)
!5068 = !DILocation(line: 330, column: 8, scope: !5052)
!5069 = !DILocation(line: 330, column: 6, scope: !5052)
!5070 = !DILocation(line: 331, column: 6, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5052, file: !2, line: 331, column: 6)
!5072 = !DILocation(line: 331, column: 6, scope: !5052)
!5073 = !DILocation(line: 332, column: 10, scope: !5071)
!5074 = !DILocation(line: 332, column: 3, scope: !5071)
!5075 = !DILocation(line: 334, column: 2, scope: !5052)
!5076 = !DILocation(line: 335, column: 1, scope: !5052)
!5077 = !DISubprogram(name: "_dev_err", scope: !5078, file: !5078, line: 50, type: !5079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5078 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5079 = !DISubroutineType(types: !5080)
!5080 = !{null, !4325, !280, null}
!5081 = distinct !DISubprogram(name: "cypress_set_absolute_mode", scope: !2, file: !2, line: 337, type: !4782, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5082)
!5082 = !{!5083, !5084, !5085}
!5083 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5081, file: !2, line: 337, type: !270)
!5084 = !DILocalVariable(name: "cytp", scope: !5081, file: !2, line: 339, type: !4924)
!5085 = !DILocalVariable(name: "param", scope: !5081, file: !2, line: 340, type: !4832)
!5086 = !DILocation(line: 337, column: 54, scope: !5081)
!5087 = !DILocation(line: 339, column: 2, scope: !5081)
!5088 = !DILocation(line: 339, column: 20, scope: !5081)
!5089 = !DILocation(line: 339, column: 27, scope: !5081)
!5090 = !DILocation(line: 339, column: 36, scope: !5081)
!5091 = !DILocation(line: 340, column: 2, scope: !5081)
!5092 = !DILocation(line: 340, column: 16, scope: !5081)
!5093 = !DILocation(line: 342, column: 27, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5081, file: !2, line: 342, column: 6)
!5095 = !DILocation(line: 342, column: 69, scope: !5094)
!5096 = !DILocation(line: 342, column: 6, scope: !5094)
!5097 = !DILocation(line: 342, column: 76, scope: !5094)
!5098 = !DILocation(line: 342, column: 6, scope: !5081)
!5099 = !DILocation(line: 343, column: 3, scope: !5094)
!5100 = !DILocation(line: 345, column: 16, scope: !5081)
!5101 = !DILocation(line: 345, column: 22, scope: !5081)
!5102 = !DILocation(line: 345, column: 27, scope: !5081)
!5103 = !DILocation(line: 346, column: 4, scope: !5081)
!5104 = !DILocation(line: 345, column: 2, scope: !5081)
!5105 = !DILocation(line: 345, column: 8, scope: !5081)
!5106 = !DILocation(line: 345, column: 13, scope: !5081)
!5107 = !DILocation(line: 347, column: 26, scope: !5081)
!5108 = !DILocation(line: 347, column: 2, scope: !5081)
!5109 = !DILocation(line: 349, column: 2, scope: !5081)
!5110 = !DILocation(line: 350, column: 1, scope: !5081)
!5111 = distinct !DISubprogram(name: "cypress_set_input_params", scope: !2, file: !2, line: 365, type: !5112, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5114)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{!115, !275, !4924}
!5114 = !{!5115, !5116, !5117}
!5115 = !DILocalVariable(name: "input", arg: 1, scope: !5111, file: !2, line: 365, type: !275)
!5116 = !DILocalVariable(name: "cytp", arg: 2, scope: !5111, file: !2, line: 366, type: !4924)
!5117 = !DILocalVariable(name: "ret", scope: !5111, file: !2, line: 368, type: !115)
!5118 = !DILocation(line: 365, column: 55, scope: !5111)
!5119 = !DILocation(line: 366, column: 27, scope: !5111)
!5120 = !DILocation(line: 368, column: 2, scope: !5111)
!5121 = !DILocation(line: 368, column: 6, scope: !5111)
!5122 = !DILocation(line: 370, column: 7, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5111, file: !2, line: 370, column: 6)
!5124 = !DILocation(line: 370, column: 13, scope: !5123)
!5125 = !DILocation(line: 370, column: 22, scope: !5123)
!5126 = !DILocation(line: 370, column: 26, scope: !5123)
!5127 = !DILocation(line: 370, column: 32, scope: !5123)
!5128 = !DILocation(line: 370, column: 6, scope: !5111)
!5129 = !DILocation(line: 371, column: 3, scope: !5123)
!5130 = !DILocation(line: 373, column: 2, scope: !5111)
!5131 = !DILocation(line: 374, column: 23, scope: !5111)
!5132 = !DILocation(line: 374, column: 40, scope: !5111)
!5133 = !DILocation(line: 374, column: 46, scope: !5111)
!5134 = !DILocation(line: 374, column: 2, scope: !5111)
!5135 = !DILocation(line: 375, column: 23, scope: !5111)
!5136 = !DILocation(line: 375, column: 40, scope: !5111)
!5137 = !DILocation(line: 375, column: 46, scope: !5111)
!5138 = !DILocation(line: 375, column: 2, scope: !5111)
!5139 = !DILocation(line: 376, column: 23, scope: !5111)
!5140 = !DILocation(line: 377, column: 9, scope: !5111)
!5141 = !DILocation(line: 377, column: 15, scope: !5111)
!5142 = !DILocation(line: 377, column: 32, scope: !5111)
!5143 = !DILocation(line: 377, column: 38, scope: !5111)
!5144 = !DILocation(line: 376, column: 2, scope: !5111)
!5145 = !DILocation(line: 378, column: 23, scope: !5111)
!5146 = !DILocation(line: 378, column: 2, scope: !5111)
!5147 = !DILocation(line: 381, column: 23, scope: !5111)
!5148 = !DILocation(line: 381, column: 52, scope: !5111)
!5149 = !DILocation(line: 381, column: 58, scope: !5111)
!5150 = !DILocation(line: 381, column: 2, scope: !5111)
!5151 = !DILocation(line: 382, column: 23, scope: !5111)
!5152 = !DILocation(line: 382, column: 52, scope: !5111)
!5153 = !DILocation(line: 382, column: 58, scope: !5111)
!5154 = !DILocation(line: 382, column: 2, scope: !5111)
!5155 = !DILocation(line: 383, column: 23, scope: !5111)
!5156 = !DILocation(line: 383, column: 2, scope: !5111)
!5157 = !DILocation(line: 385, column: 28, scope: !5111)
!5158 = !DILocation(line: 385, column: 8, scope: !5111)
!5159 = !DILocation(line: 385, column: 6, scope: !5111)
!5160 = !DILocation(line: 387, column: 6, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5111, file: !2, line: 387, column: 6)
!5162 = !DILocation(line: 387, column: 10, scope: !5161)
!5163 = !DILocation(line: 387, column: 6, scope: !5111)
!5164 = !DILocation(line: 388, column: 10, scope: !5161)
!5165 = !DILocation(line: 388, column: 3, scope: !5161)
!5166 = !DILocation(line: 390, column: 2, scope: !5111)
!5167 = !DILocation(line: 392, column: 20, scope: !5111)
!5168 = !DILocation(line: 392, column: 34, scope: !5111)
!5169 = !DILocation(line: 392, column: 40, scope: !5111)
!5170 = !DILocation(line: 392, column: 2, scope: !5111)
!5171 = !DILocation(line: 393, column: 20, scope: !5111)
!5172 = !DILocation(line: 393, column: 34, scope: !5111)
!5173 = !DILocation(line: 393, column: 40, scope: !5111)
!5174 = !DILocation(line: 393, column: 2, scope: !5111)
!5175 = !DILocation(line: 395, column: 20, scope: !5111)
!5176 = !DILocation(line: 395, column: 46, scope: !5111)
!5177 = !DILocation(line: 395, column: 52, scope: !5111)
!5178 = !DILocation(line: 395, column: 2, scope: !5111)
!5179 = !DILocation(line: 396, column: 20, scope: !5111)
!5180 = !DILocation(line: 396, column: 46, scope: !5111)
!5181 = !DILocation(line: 396, column: 52, scope: !5111)
!5182 = !DILocation(line: 396, column: 2, scope: !5111)
!5183 = !DILocation(line: 398, column: 2, scope: !5111)
!5184 = !DILocation(line: 399, column: 2, scope: !5111)
!5185 = !DILocation(line: 400, column: 2, scope: !5111)
!5186 = !DILocation(line: 401, column: 2, scope: !5111)
!5187 = !DILocation(line: 402, column: 2, scope: !5111)
!5188 = !DILocation(line: 403, column: 2, scope: !5111)
!5189 = !DILocation(line: 405, column: 2, scope: !5111)
!5190 = !DILocation(line: 406, column: 2, scope: !5111)
!5191 = !DILocation(line: 407, column: 2, scope: !5111)
!5192 = !DILocation(line: 409, column: 2, scope: !5111)
!5193 = !DILocation(line: 410, column: 2, scope: !5111)
!5194 = !DILocation(line: 411, column: 2, scope: !5111)
!5195 = !DILocation(line: 412, column: 2, scope: !5111)
!5196 = !DILocation(line: 414, column: 2, scope: !5111)
!5197 = !DILocation(line: 415, column: 1, scope: !5111)
!5198 = distinct !DISubprogram(name: "cypress_protocol_handler", scope: !2, file: !2, line: 600, type: !4806, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5199)
!5199 = !{!5200, !5201}
!5200 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5198, file: !2, line: 600, type: !270)
!5201 = !DILocalVariable(name: "cytp", scope: !5198, file: !2, line: 602, type: !4924)
!5202 = !DILocation(line: 600, column: 63, scope: !5198)
!5203 = !DILocation(line: 602, column: 2, scope: !5198)
!5204 = !DILocation(line: 602, column: 20, scope: !5198)
!5205 = !DILocation(line: 602, column: 27, scope: !5198)
!5206 = !DILocation(line: 602, column: 36, scope: !5198)
!5207 = !DILocation(line: 604, column: 6, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5198, file: !2, line: 604, column: 6)
!5209 = !DILocation(line: 604, column: 15, scope: !5208)
!5210 = !DILocation(line: 604, column: 25, scope: !5208)
!5211 = !DILocation(line: 604, column: 31, scope: !5208)
!5212 = !DILocation(line: 604, column: 22, scope: !5208)
!5213 = !DILocation(line: 604, column: 6, scope: !5198)
!5214 = !DILocation(line: 605, column: 26, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5208, file: !2, line: 604, column: 41)
!5216 = !DILocation(line: 605, column: 3, scope: !5215)
!5217 = !DILocation(line: 606, column: 3, scope: !5215)
!5218 = !DILocation(line: 609, column: 31, scope: !5198)
!5219 = !DILocation(line: 609, column: 9, scope: !5198)
!5220 = !DILocation(line: 609, column: 2, scope: !5198)
!5221 = !DILocation(line: 610, column: 1, scope: !5198)
!5222 = distinct !DISubprogram(name: "cypress_set_rate", scope: !2, file: !2, line: 612, type: !4811, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5223)
!5223 = !{!5224, !5225, !5226}
!5224 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5222, file: !2, line: 612, type: !270)
!5225 = !DILocalVariable(name: "rate", arg: 2, scope: !5222, file: !2, line: 612, type: !37)
!5226 = !DILocalVariable(name: "cytp", scope: !5222, file: !2, line: 614, type: !4924)
!5227 = !DILocation(line: 612, column: 46, scope: !5222)
!5228 = !DILocation(line: 612, column: 68, scope: !5222)
!5229 = !DILocation(line: 614, column: 2, scope: !5222)
!5230 = !DILocation(line: 614, column: 20, scope: !5222)
!5231 = !DILocation(line: 614, column: 27, scope: !5222)
!5232 = !DILocation(line: 614, column: 36, scope: !5222)
!5233 = !DILocation(line: 616, column: 6, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5222, file: !2, line: 616, column: 6)
!5235 = !DILocation(line: 616, column: 11, scope: !5234)
!5236 = !DILocation(line: 616, column: 6, scope: !5222)
!5237 = !DILocation(line: 617, column: 3, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5234, file: !2, line: 616, column: 18)
!5239 = !DILocation(line: 617, column: 12, scope: !5238)
!5240 = !DILocation(line: 617, column: 17, scope: !5238)
!5241 = !DILocation(line: 618, column: 3, scope: !5238)
!5242 = !DILocation(line: 618, column: 9, scope: !5238)
!5243 = !DILocation(line: 618, column: 14, scope: !5238)
!5244 = !DILocation(line: 619, column: 2, scope: !5238)
!5245 = !DILocation(line: 620, column: 3, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5234, file: !2, line: 619, column: 9)
!5247 = !DILocation(line: 620, column: 12, scope: !5246)
!5248 = !DILocation(line: 620, column: 17, scope: !5246)
!5249 = !DILocation(line: 621, column: 3, scope: !5246)
!5250 = !DILocation(line: 621, column: 9, scope: !5246)
!5251 = !DILocation(line: 621, column: 14, scope: !5246)
!5252 = !DILocation(line: 624, column: 15, scope: !5222)
!5253 = !DILocation(line: 624, column: 24, scope: !5222)
!5254 = !DILocation(line: 624, column: 50, scope: !5222)
!5255 = !DILocation(line: 624, column: 59, scope: !5222)
!5256 = !DILocation(line: 624, column: 2, scope: !5222)
!5257 = !DILocation(line: 626, column: 1, scope: !5222)
!5258 = distinct !DISubprogram(name: "cypress_disconnect", scope: !2, file: !2, line: 628, type: !4822, scopeLine: 629, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5259)
!5259 = !{!5260}
!5260 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5258, file: !2, line: 628, type: !270)
!5261 = !DILocation(line: 628, column: 48, scope: !5258)
!5262 = !DILocation(line: 630, column: 16, scope: !5258)
!5263 = !DILocation(line: 630, column: 2, scope: !5258)
!5264 = !DILocation(line: 631, column: 8, scope: !5258)
!5265 = !DILocation(line: 631, column: 17, scope: !5258)
!5266 = !DILocation(line: 631, column: 2, scope: !5258)
!5267 = !DILocation(line: 632, column: 2, scope: !5258)
!5268 = !DILocation(line: 632, column: 11, scope: !5258)
!5269 = !DILocation(line: 632, column: 19, scope: !5258)
!5270 = !DILocation(line: 633, column: 1, scope: !5258)
!5271 = distinct !DISubprogram(name: "cypress_reconnect", scope: !2, file: !2, line: 635, type: !4782, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5272)
!5272 = !{!5273, !5274, !5275}
!5273 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5271, file: !2, line: 635, type: !270)
!5274 = !DILocalVariable(name: "tries", scope: !5271, file: !2, line: 637, type: !115)
!5275 = !DILocalVariable(name: "rc", scope: !5271, file: !2, line: 638, type: !115)
!5276 = !DILocation(line: 635, column: 46, scope: !5271)
!5277 = !DILocation(line: 637, column: 2, scope: !5271)
!5278 = !DILocation(line: 637, column: 6, scope: !5271)
!5279 = !DILocation(line: 638, column: 2, scope: !5271)
!5280 = !DILocation(line: 638, column: 6, scope: !5271)
!5281 = !DILocation(line: 640, column: 2, scope: !5271)
!5282 = !DILocation(line: 641, column: 17, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5271, file: !2, line: 640, column: 5)
!5284 = !DILocation(line: 641, column: 3, scope: !5283)
!5285 = !DILocation(line: 642, column: 23, scope: !5283)
!5286 = !DILocation(line: 642, column: 8, scope: !5283)
!5287 = !DILocation(line: 642, column: 6, scope: !5283)
!5288 = !DILocation(line: 643, column: 2, scope: !5283)
!5289 = !DILocation(line: 643, column: 11, scope: !5271)
!5290 = !DILocation(line: 643, column: 14, scope: !5271)
!5291 = !DILocation(line: 643, column: 18, scope: !5271)
!5292 = !DILocation(line: 643, column: 26, scope: !5271)
!5293 = !DILocation(line: 0, scope: !5271)
!5294 = distinct !{!5294, !5281, !5295, !4916, !4917}
!5295 = !DILocation(line: 643, column: 30, scope: !5271)
!5296 = !DILocation(line: 645, column: 6, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5271, file: !2, line: 645, column: 6)
!5298 = !DILocation(line: 645, column: 6, scope: !5271)
!5299 = !DILocation(line: 646, column: 3, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5301, file: !2, line: 646, column: 3)
!5301 = distinct !DILexicalBlock(scope: !5297, file: !2, line: 645, column: 10)
!5302 = !DILocation(line: 646, column: 3, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5300, file: !2, line: 646, column: 3)
!5304 = !DILocation(line: 647, column: 3, scope: !5301)
!5305 = !DILocation(line: 650, column: 32, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5271, file: !2, line: 650, column: 6)
!5307 = !DILocation(line: 650, column: 6, scope: !5306)
!5308 = !DILocation(line: 650, column: 6, scope: !5271)
!5309 = !DILocation(line: 651, column: 3, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5311, file: !2, line: 651, column: 3)
!5311 = distinct !DILexicalBlock(scope: !5306, file: !2, line: 650, column: 42)
!5312 = !DILocation(line: 651, column: 3, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5310, file: !2, line: 651, column: 3)
!5314 = !DILocation(line: 652, column: 3, scope: !5311)
!5315 = !DILocation(line: 655, column: 2, scope: !5271)
!5316 = !DILocation(line: 656, column: 1, scope: !5271)
!5317 = !DISubprogram(name: "kfree", scope: !208, file: !208, line: 227, type: !5318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5318 = !DISubroutineType(types: !5319)
!5319 = !{null, !1660}
!5320 = distinct !DISubprogram(name: "cypress_ps2_ext_cmd", scope: !2, file: !2, line: 60, type: !5321, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5323)
!5321 = !DISubroutineType(types: !5322)
!5322 = !{!115, !270, !291, !230}
!5323 = !{!5324, !5325, !5326, !5327, !5328, !5329}
!5324 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5320, file: !2, line: 60, type: !270)
!5325 = !DILocalVariable(name: "cmd", arg: 2, scope: !5320, file: !2, line: 60, type: !291)
!5326 = !DILocalVariable(name: "data", arg: 3, scope: !5320, file: !2, line: 61, type: !230)
!5327 = !DILocalVariable(name: "ps2dev", scope: !5320, file: !2, line: 63, type: !4757)
!5328 = !DILocalVariable(name: "tries", scope: !5320, file: !2, line: 64, type: !115)
!5329 = !DILocalVariable(name: "rc", scope: !5320, file: !2, line: 65, type: !115)
!5330 = !DILocation(line: 60, column: 48, scope: !5320)
!5331 = !DILocation(line: 60, column: 72, scope: !5320)
!5332 = !DILocation(line: 61, column: 25, scope: !5320)
!5333 = !DILocation(line: 63, column: 2, scope: !5320)
!5334 = !DILocation(line: 63, column: 17, scope: !5320)
!5335 = !DILocation(line: 63, column: 27, scope: !5320)
!5336 = !DILocation(line: 63, column: 36, scope: !5320)
!5337 = !DILocation(line: 64, column: 2, scope: !5320)
!5338 = !DILocation(line: 64, column: 6, scope: !5320)
!5339 = !DILocation(line: 65, column: 2, scope: !5320)
!5340 = !DILocation(line: 65, column: 6, scope: !5320)
!5341 = !DILocation(line: 67, column: 20, scope: !5320)
!5342 = !DILocation(line: 67, column: 2, scope: !5320)
!5343 = !DILocation(line: 69, column: 2, scope: !5320)
!5344 = !DILocation(line: 75, column: 29, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5320, file: !2, line: 69, column: 5)
!5346 = !DILocation(line: 75, column: 38, scope: !5345)
!5347 = !DILocation(line: 75, column: 42, scope: !5345)
!5348 = !DILocation(line: 75, column: 8, scope: !5345)
!5349 = !DILocation(line: 75, column: 6, scope: !5345)
!5350 = !DILocation(line: 76, column: 7, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5345, file: !2, line: 76, column: 7)
!5352 = !DILocation(line: 76, column: 10, scope: !5351)
!5353 = !DILocation(line: 76, column: 7, scope: !5345)
!5354 = !DILocation(line: 77, column: 30, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5351, file: !2, line: 76, column: 29)
!5356 = !DILocation(line: 77, column: 9, scope: !5355)
!5357 = !DILocation(line: 77, column: 7, scope: !5355)
!5358 = !DILocation(line: 78, column: 8, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5355, file: !2, line: 78, column: 8)
!5360 = !DILocation(line: 78, column: 11, scope: !5359)
!5361 = !DILocation(line: 78, column: 8, scope: !5355)
!5362 = !DILocation(line: 79, column: 31, scope: !5359)
!5363 = !DILocation(line: 79, column: 10, scope: !5359)
!5364 = !DILocation(line: 79, column: 8, scope: !5359)
!5365 = !DILocation(line: 79, column: 5, scope: !5359)
!5366 = !DILocation(line: 80, column: 3, scope: !5355)
!5367 = !DILocation(line: 81, column: 7, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5345, file: !2, line: 81, column: 7)
!5369 = !DILocation(line: 81, column: 10, scope: !5368)
!5370 = !DILocation(line: 81, column: 7, scope: !5345)
!5371 = !DILocation(line: 82, column: 4, scope: !5368)
!5372 = !DILocation(line: 84, column: 29, scope: !5345)
!5373 = !DILocation(line: 84, column: 38, scope: !5345)
!5374 = !DILocation(line: 84, column: 8, scope: !5345)
!5375 = !DILocation(line: 84, column: 6, scope: !5345)
!5376 = !DILocation(line: 85, column: 7, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5345, file: !2, line: 85, column: 7)
!5378 = !DILocation(line: 85, column: 10, scope: !5377)
!5379 = !DILocation(line: 85, column: 7, scope: !5345)
!5380 = !DILocation(line: 86, column: 30, scope: !5377)
!5381 = !DILocation(line: 86, column: 39, scope: !5377)
!5382 = !DILocation(line: 86, column: 9, scope: !5377)
!5383 = !DILocation(line: 86, column: 7, scope: !5377)
!5384 = !DILocation(line: 86, column: 4, scope: !5377)
!5385 = !DILocation(line: 87, column: 7, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5345, file: !2, line: 87, column: 7)
!5387 = !DILocation(line: 87, column: 10, scope: !5386)
!5388 = !DILocation(line: 87, column: 7, scope: !5345)
!5389 = !DILocation(line: 88, column: 4, scope: !5386)
!5390 = !DILocation(line: 90, column: 4, scope: !5386)
!5391 = !DILocation(line: 91, column: 11, scope: !5320)
!5392 = !DILocation(line: 91, column: 19, scope: !5320)
!5393 = !DILocation(line: 91, column: 2, scope: !5345)
!5394 = distinct !{!5394, !5343, !5395, !4916, !4917}
!5395 = !DILocation(line: 91, column: 22, scope: !5320)
!5396 = !DILocation(line: 93, column: 18, scope: !5320)
!5397 = !DILocation(line: 93, column: 2, scope: !5320)
!5398 = !DILocation(line: 95, column: 9, scope: !5320)
!5399 = !DILocation(line: 96, column: 1, scope: !5320)
!5400 = !DILocation(line: 95, column: 2, scope: !5320)
!5401 = distinct !DISubprogram(name: "cypress_ps2_read_cmd_status", scope: !2, file: !2, line: 98, type: !4866, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5402)
!5402 = !{!5403, !5404, !5405, !5406, !5407, !5408, !5409, !5410, !5412, !5415, !5428, !5429, !5433, !5436, !5437}
!5403 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5401, file: !2, line: 98, type: !270)
!5404 = !DILocalVariable(name: "cmd", arg: 2, scope: !5401, file: !2, line: 99, type: !230)
!5405 = !DILocalVariable(name: "param", arg: 3, scope: !5401, file: !2, line: 100, type: !229)
!5406 = !DILocalVariable(name: "rc", scope: !5401, file: !2, line: 102, type: !115)
!5407 = !DILocalVariable(name: "ps2dev", scope: !5401, file: !2, line: 103, type: !4757)
!5408 = !DILocalVariable(name: "old_state", scope: !5401, file: !2, line: 104, type: !186)
!5409 = !DILocalVariable(name: "pktsize", scope: !5401, file: !2, line: 105, type: !115)
!5410 = !DILocalVariable(name: "__ret", scope: !5411, file: !2, line: 120, type: !221)
!5411 = distinct !DILexicalBlock(scope: !5401, file: !2, line: 120, column: 2)
!5412 = !DILocalVariable(name: "__cond", scope: !5413, file: !2, line: 120, type: !730)
!5413 = distinct !DILexicalBlock(scope: !5414, file: !2, line: 120, column: 2)
!5414 = distinct !DILexicalBlock(scope: !5411, file: !2, line: 120, column: 2)
!5415 = !DILocalVariable(name: "__wq_entry", scope: !5416, file: !2, line: 120, type: !5417)
!5416 = distinct !DILexicalBlock(scope: !5414, file: !2, line: 120, column: 2)
!5417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !586, line: 30, size: 320, elements: !5418)
!5418 = !{!5419, !5420, !5421, !5427}
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5417, file: !586, line: 31, baseType: !37, size: 32)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5417, file: !586, line: 32, baseType: !220, size: 64, offset: 64)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5417, file: !586, line: 33, baseType: !5422, size: 64, offset: 128)
!5422 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !586, line: 16, baseType: !5423)
!5423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5424, size: 64)
!5424 = !DISubroutineType(types: !5425)
!5425 = !{!115, !5426, !37, !115, !220}
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5417, size: 64)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5417, file: !586, line: 34, baseType: !485, size: 128, offset: 192)
!5428 = !DILocalVariable(name: "__ret", scope: !5416, file: !2, line: 120, type: !221)
!5429 = !DILocalVariable(name: "__int", scope: !5430, file: !2, line: 120, type: !221)
!5430 = distinct !DILexicalBlock(scope: !5431, file: !2, line: 120, column: 2)
!5431 = distinct !DILexicalBlock(scope: !5432, file: !2, line: 120, column: 2)
!5432 = distinct !DILexicalBlock(scope: !5416, file: !2, line: 120, column: 2)
!5433 = !DILocalVariable(name: "__cond", scope: !5434, file: !2, line: 120, type: !730)
!5434 = distinct !DILexicalBlock(scope: !5435, file: !2, line: 120, column: 2)
!5435 = distinct !DILexicalBlock(scope: !5430, file: !2, line: 120, column: 2)
!5436 = !DILabel(scope: !5416, name: "__out", file: !2, line: 120)
!5437 = !DILabel(scope: !5401, name: "out", file: !2, line: 129)
!5438 = !DILocation(line: 98, column: 56, scope: !5401)
!5439 = !DILocation(line: 99, column: 26, scope: !5401)
!5440 = !DILocation(line: 100, column: 27, scope: !5401)
!5441 = !DILocation(line: 102, column: 2, scope: !5401)
!5442 = !DILocation(line: 102, column: 6, scope: !5401)
!5443 = !DILocation(line: 103, column: 2, scope: !5401)
!5444 = !DILocation(line: 103, column: 17, scope: !5401)
!5445 = !DILocation(line: 103, column: 27, scope: !5401)
!5446 = !DILocation(line: 103, column: 36, scope: !5401)
!5447 = !DILocation(line: 104, column: 2, scope: !5401)
!5448 = !DILocation(line: 104, column: 21, scope: !5401)
!5449 = !DILocation(line: 105, column: 2, scope: !5401)
!5450 = !DILocation(line: 105, column: 6, scope: !5401)
!5451 = !DILocation(line: 107, column: 20, scope: !5401)
!5452 = !DILocation(line: 107, column: 2, scope: !5401)
!5453 = !DILocation(line: 109, column: 14, scope: !5401)
!5454 = !DILocation(line: 109, column: 23, scope: !5401)
!5455 = !DILocation(line: 109, column: 12, scope: !5401)
!5456 = !DILocation(line: 110, column: 2, scope: !5401)
!5457 = !DILocation(line: 110, column: 11, scope: !5401)
!5458 = !DILocation(line: 110, column: 17, scope: !5401)
!5459 = !DILocation(line: 111, column: 2, scope: !5401)
!5460 = !DILocation(line: 111, column: 11, scope: !5401)
!5461 = !DILocation(line: 111, column: 18, scope: !5401)
!5462 = !DILocation(line: 113, column: 13, scope: !5401)
!5463 = !DILocation(line: 113, column: 17, scope: !5401)
!5464 = !DILocation(line: 113, column: 12, scope: !5401)
!5465 = !DILocation(line: 113, column: 10, scope: !5401)
!5466 = !DILocation(line: 114, column: 9, scope: !5401)
!5467 = !DILocation(line: 114, column: 19, scope: !5401)
!5468 = !DILocation(line: 114, column: 2, scope: !5401)
!5469 = !DILocation(line: 116, column: 28, scope: !5401)
!5470 = !DILocation(line: 116, column: 7, scope: !5401)
!5471 = !DILocation(line: 116, column: 5, scope: !5401)
!5472 = !DILocation(line: 117, column: 6, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5401, file: !2, line: 117, column: 6)
!5474 = !DILocation(line: 117, column: 9, scope: !5473)
!5475 = !DILocation(line: 117, column: 6, scope: !5401)
!5476 = !DILocation(line: 118, column: 3, scope: !5473)
!5477 = !DILocation(line: 120, column: 2, scope: !5411)
!5478 = !DILocation(line: 120, column: 2, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5411, file: !2, line: 120, column: 2)
!5480 = !DILocation(line: 120, column: 2, scope: !5413)
!5481 = !DILocation(line: 120, column: 2, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5413, file: !2, line: 120, column: 2)
!5483 = !DILocation(line: 120, column: 2, scope: !5414)
!5484 = !DILocation(line: 120, column: 2, scope: !5416)
!5485 = !DILocation(line: 120, column: 2, scope: !5430)
!5486 = !DILocation(line: 120, column: 2, scope: !5434)
!5487 = !DILocation(line: 120, column: 2, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5434, file: !2, line: 120, column: 2)
!5489 = !DILocation(line: 120, column: 2, scope: !5435)
!5490 = !DILocation(line: 120, column: 2, scope: !5431)
!5491 = distinct !{!5491, !5492, !5492, !4917}
!5492 = !DILocation(line: 120, column: 2, scope: !5432)
!5493 = !DILocation(line: 120, column: 2, scope: !5401)
!5494 = !DILocation(line: 124, column: 9, scope: !5401)
!5495 = !DILocation(line: 124, column: 16, scope: !5401)
!5496 = !DILocation(line: 124, column: 25, scope: !5401)
!5497 = !DILocation(line: 124, column: 2, scope: !5401)
!5498 = !DILocation(line: 124, column: 33, scope: !5401)
!5499 = !DILocation(line: 126, column: 2, scope: !5401)
!5500 = !DILocation(line: 129, column: 1, scope: !5401)
!5501 = !DILocation(line: 130, column: 19, scope: !5401)
!5502 = !DILocation(line: 130, column: 2, scope: !5401)
!5503 = !DILocation(line: 130, column: 11, scope: !5401)
!5504 = !DILocation(line: 130, column: 17, scope: !5401)
!5505 = !DILocation(line: 131, column: 2, scope: !5401)
!5506 = !DILocation(line: 131, column: 11, scope: !5401)
!5507 = !DILocation(line: 131, column: 18, scope: !5401)
!5508 = !DILocation(line: 133, column: 18, scope: !5401)
!5509 = !DILocation(line: 133, column: 2, scope: !5401)
!5510 = !DILocation(line: 135, column: 9, scope: !5401)
!5511 = !DILocation(line: 136, column: 1, scope: !5401)
!5512 = !DILocation(line: 135, column: 2, scope: !5401)
!5513 = distinct !DISubprogram(name: "cypress_verify_cmd_state", scope: !2, file: !2, line: 138, type: !5514, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5516)
!5514 = !DISubroutineType(types: !5515)
!5515 = !{!730, !270, !230, !229}
!5516 = !{!5517, !5518, !5519, !5520, !5521, !5522}
!5517 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5513, file: !2, line: 138, type: !270)
!5518 = !DILocalVariable(name: "cmd", arg: 2, scope: !5513, file: !2, line: 139, type: !230)
!5519 = !DILocalVariable(name: "param", arg: 3, scope: !5513, file: !2, line: 139, type: !229)
!5520 = !DILocalVariable(name: "rate_match", scope: !5513, file: !2, line: 141, type: !730)
!5521 = !DILocalVariable(name: "resolution_match", scope: !5513, file: !2, line: 142, type: !730)
!5522 = !DILocalVariable(name: "i", scope: !5513, file: !2, line: 143, type: !115)
!5523 = !DILocation(line: 138, column: 54, scope: !5513)
!5524 = !DILocation(line: 139, column: 24, scope: !5513)
!5525 = !DILocation(line: 139, column: 44, scope: !5513)
!5526 = !DILocation(line: 141, column: 2, scope: !5513)
!5527 = !DILocation(line: 141, column: 7, scope: !5513)
!5528 = !DILocation(line: 142, column: 2, scope: !5513)
!5529 = !DILocation(line: 142, column: 7, scope: !5513)
!5530 = !DILocation(line: 143, column: 2, scope: !5513)
!5531 = !DILocation(line: 143, column: 6, scope: !5513)
!5532 = !DILocation(line: 146, column: 6, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5513, file: !2, line: 146, column: 6)
!5534 = !DILocation(line: 146, column: 10, scope: !5533)
!5535 = !DILocation(line: 146, column: 38, scope: !5533)
!5536 = !DILocation(line: 147, column: 6, scope: !5533)
!5537 = !DILocation(line: 147, column: 10, scope: !5533)
!5538 = !DILocation(line: 147, column: 36, scope: !5533)
!5539 = !DILocation(line: 148, column: 6, scope: !5533)
!5540 = !DILocation(line: 148, column: 10, scope: !5533)
!5541 = !DILocation(line: 146, column: 6, scope: !5513)
!5542 = !DILocation(line: 149, column: 3, scope: !5533)
!5543 = !DILocation(line: 151, column: 8, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5513, file: !2, line: 151, column: 6)
!5545 = !DILocation(line: 151, column: 7, scope: !5544)
!5546 = !DILocation(line: 151, column: 17, scope: !5544)
!5547 = !DILocation(line: 151, column: 41, scope: !5544)
!5548 = !DILocation(line: 151, column: 65, scope: !5544)
!5549 = !DILocation(line: 152, column: 7, scope: !5544)
!5550 = !DILocation(line: 152, column: 16, scope: !5544)
!5551 = !DILocation(line: 152, column: 38, scope: !5544)
!5552 = !DILocation(line: 151, column: 6, scope: !5513)
!5553 = !DILocation(line: 153, column: 10, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5555, file: !2, line: 153, column: 3)
!5555 = distinct !DILexicalBlock(scope: !5544, file: !2, line: 152, column: 64)
!5556 = !DILocation(line: 153, column: 8, scope: !5554)
!5557 = !DILocation(line: 153, column: 15, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5554, file: !2, line: 153, column: 3)
!5559 = !DILocation(line: 153, column: 17, scope: !5558)
!5560 = !DILocation(line: 153, column: 3, scope: !5554)
!5561 = !DILocation(line: 154, column: 24, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5558, file: !2, line: 154, column: 8)
!5563 = !DILocation(line: 154, column: 8, scope: !5562)
!5564 = !DILocation(line: 154, column: 30, scope: !5562)
!5565 = !DILocation(line: 154, column: 27, scope: !5562)
!5566 = !DILocation(line: 154, column: 8, scope: !5558)
!5567 = !DILocation(line: 155, column: 22, scope: !5562)
!5568 = !DILocation(line: 155, column: 5, scope: !5562)
!5569 = !DILocation(line: 154, column: 37, scope: !5562)
!5570 = !DILocation(line: 153, column: 45, scope: !5558)
!5571 = !DILocation(line: 153, column: 3, scope: !5558)
!5572 = distinct !{!5572, !5560, !5573, !4916, !4917}
!5573 = !DILocation(line: 155, column: 24, scope: !5554)
!5574 = !DILocation(line: 157, column: 10, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5555, file: !2, line: 157, column: 3)
!5576 = !DILocation(line: 157, column: 8, scope: !5575)
!5577 = !DILocation(line: 157, column: 15, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5575, file: !2, line: 157, column: 3)
!5579 = !DILocation(line: 157, column: 17, scope: !5578)
!5580 = !DILocation(line: 157, column: 3, scope: !5575)
!5581 = !DILocation(line: 158, column: 18, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5578, file: !2, line: 158, column: 8)
!5583 = !DILocation(line: 158, column: 8, scope: !5582)
!5584 = !DILocation(line: 158, column: 24, scope: !5582)
!5585 = !DILocation(line: 158, column: 21, scope: !5582)
!5586 = !DILocation(line: 158, column: 8, scope: !5578)
!5587 = !DILocation(line: 159, column: 16, scope: !5582)
!5588 = !DILocation(line: 159, column: 5, scope: !5582)
!5589 = !DILocation(line: 158, column: 31, scope: !5582)
!5590 = !DILocation(line: 157, column: 39, scope: !5578)
!5591 = !DILocation(line: 157, column: 3, scope: !5578)
!5592 = distinct !{!5592, !5580, !5593, !4916, !4917}
!5593 = !DILocation(line: 159, column: 18, scope: !5575)
!5594 = !DILocation(line: 161, column: 7, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5555, file: !2, line: 161, column: 7)
!5596 = !DILocation(line: 161, column: 24, scope: !5595)
!5597 = !DILocation(line: 161, column: 27, scope: !5595)
!5598 = !DILocation(line: 161, column: 7, scope: !5555)
!5599 = !DILocation(line: 162, column: 4, scope: !5595)
!5600 = !DILocation(line: 163, column: 2, scope: !5555)
!5601 = !DILocation(line: 166, column: 2, scope: !5513)
!5602 = !DILocation(line: 167, column: 1, scope: !5513)
!5603 = !DISubprogram(name: "ps2_begin_command", scope: !154, file: !154, line: 66, type: !5604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5604 = !DISubroutineType(types: !5605)
!5605 = !{null, !4757}
!5606 = distinct !DISubprogram(name: "cypress_ps2_sendbyte", scope: !2, file: !2, line: 38, type: !5607, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5609)
!5607 = !DISubroutineType(types: !5608)
!5608 = !{!115, !270, !115}
!5609 = !{!5610, !5611, !5612}
!5610 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5606, file: !2, line: 38, type: !270)
!5611 = !DILocalVariable(name: "value", arg: 2, scope: !5606, file: !2, line: 38, type: !115)
!5612 = !DILocalVariable(name: "ps2dev", scope: !5606, file: !2, line: 40, type: !4757)
!5613 = !DILocation(line: 38, column: 49, scope: !5606)
!5614 = !DILocation(line: 38, column: 62, scope: !5606)
!5615 = !DILocation(line: 40, column: 2, scope: !5606)
!5616 = !DILocation(line: 40, column: 17, scope: !5606)
!5617 = !DILocation(line: 40, column: 27, scope: !5606)
!5618 = !DILocation(line: 40, column: 36, scope: !5606)
!5619 = !DILocation(line: 42, column: 19, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5606, file: !2, line: 42, column: 6)
!5621 = !DILocation(line: 42, column: 27, scope: !5620)
!5622 = !DILocation(line: 42, column: 33, scope: !5620)
!5623 = !DILocation(line: 42, column: 6, scope: !5620)
!5624 = !DILocation(line: 42, column: 59, scope: !5620)
!5625 = !DILocation(line: 42, column: 6, scope: !5606)
!5626 = !DILocation(line: 46, column: 7, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5628, file: !2, line: 46, column: 7)
!5628 = distinct !DILexicalBlock(scope: !5620, file: !2, line: 42, column: 64)
!5629 = !DILocation(line: 46, column: 15, scope: !5627)
!5630 = !DILocation(line: 46, column: 19, scope: !5627)
!5631 = !DILocation(line: 46, column: 7, scope: !5628)
!5632 = !DILocation(line: 47, column: 4, scope: !5627)
!5633 = !DILocation(line: 49, column: 4, scope: !5627)
!5634 = !DILocation(line: 57, column: 2, scope: !5606)
!5635 = !DILocation(line: 58, column: 1, scope: !5606)
!5636 = !DISubprogram(name: "ps2_end_command", scope: !154, file: !154, line: 67, type: !5604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5637 = !DISubprogram(name: "ps2_sendbyte", scope: !154, file: !154, line: 64, type: !5638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5638 = !DISubroutineType(types: !5639)
!5639 = !{!115, !4757, !472, !37}
!5640 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !5641, file: !5641, line: 515, type: !5642, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5644)
!5641 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!5642 = !DISubroutineType(types: !5643)
!5643 = !{!222, !3940}
!5644 = !{!5645}
!5645 = !DILocalVariable(name: "m", arg: 1, scope: !5640, file: !5641, line: 515, type: !3940)
!5646 = !DILocation(line: 515, column: 74, scope: !5640)
!5647 = !DILocation(line: 517, column: 27, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5640, file: !5641, line: 517, column: 6)
!5649 = !DILocation(line: 517, column: 6, scope: !5648)
!5650 = !DILocation(line: 517, column: 6, scope: !5640)
!5651 = !DILocation(line: 518, column: 12, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5653, file: !5641, line: 518, column: 7)
!5653 = distinct !DILexicalBlock(scope: !5648, file: !5641, line: 517, column: 31)
!5654 = !DILocation(line: 518, column: 14, scope: !5652)
!5655 = !DILocation(line: 518, column: 7, scope: !5653)
!5656 = !DILocation(line: 519, column: 4, scope: !5652)
!5657 = !DILocation(line: 520, column: 28, scope: !5653)
!5658 = !DILocation(line: 520, column: 10, scope: !5653)
!5659 = !DILocation(line: 520, column: 3, scope: !5653)
!5660 = !DILocation(line: 522, column: 29, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5648, file: !5641, line: 521, column: 9)
!5662 = !DILocation(line: 522, column: 10, scope: !5661)
!5663 = !DILocation(line: 522, column: 3, scope: !5661)
!5664 = !DILocation(line: 524, column: 1, scope: !5640)
!5665 = !DILocation(line: 112, column: 2, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !29, file: !30, line: 112, column: 2)
!5667 = !DILocation(line: 112, column: 2, scope: !29)
!5668 = !DILocation(line: 113, column: 1, scope: !29)
!5669 = !DISubprogram(name: "init_wait_entry", scope: !586, file: !586, line: 290, type: !5670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5670 = !DISubroutineType(types: !5671)
!5671 = !{null, !5426, !115}
!5672 = !DISubprogram(name: "prepare_to_wait_event", scope: !586, file: !586, line: 1199, type: !5673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5673 = !DISubroutineType(types: !5674)
!5674 = !{!221, !5675, !5426, !115}
!5675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!5676 = !DISubprogram(name: "schedule_timeout", scope: !1842, file: !1842, line: 298, type: !5677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5677 = !DISubroutineType(types: !5678)
!5678 = !{!221, !221}
!5679 = !DISubprogram(name: "finish_wait", scope: !586, file: !586, line: 1200, type: !5680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5680 = !DISubroutineType(types: !5681)
!5681 = !{null, !5675, !5426}
!5682 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !5641, file: !5641, line: 458, type: !5642, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5683)
!5683 = !{!5684}
!5684 = !DILocalVariable(name: "m", arg: 1, scope: !5682, file: !5641, line: 458, type: !3940)
!5685 = !DILocation(line: 458, column: 66, scope: !5682)
!5686 = !DILocation(line: 460, column: 10, scope: !5682)
!5687 = !DILocation(line: 460, column: 12, scope: !5682)
!5688 = !DILocation(line: 460, column: 34, scope: !5682)
!5689 = !DILocation(line: 460, column: 39, scope: !5682)
!5690 = !DILocation(line: 460, column: 2, scope: !5682)
!5691 = !DISubprogram(name: "__msecs_to_jiffies", scope: !5641, file: !5641, line: 451, type: !5642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5692 = distinct !DISubprogram(name: "kmalloc", scope: !208, file: !208, line: 591, type: !5025, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5693)
!5693 = !{!5694, !5695, !5696}
!5694 = !DILocalVariable(name: "size", arg: 1, scope: !5692, file: !208, line: 591, type: !1047)
!5695 = !DILocalVariable(name: "flags", arg: 2, scope: !5692, file: !208, line: 591, type: !218)
!5696 = !DILocalVariable(name: "index", scope: !5697, file: !208, line: 594, type: !37)
!5697 = distinct !DILexicalBlock(scope: !5698, file: !208, line: 593, column: 42)
!5698 = distinct !DILexicalBlock(scope: !5692, file: !208, line: 593, column: 6)
!5699 = !DILocation(line: 591, column: 61, scope: !5692)
!5700 = !DILocation(line: 591, column: 73, scope: !5692)
!5701 = !DILocation(line: 593, column: 27, scope: !5698)
!5702 = !DILocation(line: 593, column: 6, scope: !5698)
!5703 = !DILocation(line: 593, column: 33, scope: !5698)
!5704 = !DILocation(line: 593, column: 36, scope: !5698)
!5705 = !DILocation(line: 593, column: 6, scope: !5692)
!5706 = !DILocation(line: 594, column: 3, scope: !5697)
!5707 = !DILocation(line: 594, column: 16, scope: !5697)
!5708 = !DILocation(line: 596, column: 7, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5697, file: !208, line: 596, column: 7)
!5710 = !DILocation(line: 596, column: 12, scope: !5709)
!5711 = !DILocation(line: 596, column: 7, scope: !5697)
!5712 = !DILocation(line: 597, column: 25, scope: !5709)
!5713 = !DILocation(line: 597, column: 31, scope: !5709)
!5714 = !DILocation(line: 597, column: 11, scope: !5709)
!5715 = !DILocation(line: 597, column: 4, scope: !5709)
!5716 = !DILocation(line: 599, column: 11, scope: !5697)
!5717 = !DILocation(line: 599, column: 9, scope: !5697)
!5718 = !DILocation(line: 601, column: 33, scope: !5697)
!5719 = !DILocation(line: 601, column: 40, scope: !5697)
!5720 = !DILocation(line: 601, column: 20, scope: !5697)
!5721 = !DILocation(line: 601, column: 5, scope: !5697)
!5722 = !DILocation(line: 601, column: 51, scope: !5697)
!5723 = !DILocation(line: 602, column: 5, scope: !5697)
!5724 = !DILocation(line: 602, column: 12, scope: !5697)
!5725 = !DILocation(line: 600, column: 10, scope: !5697)
!5726 = !DILocation(line: 600, column: 3, scope: !5697)
!5727 = !DILocation(line: 603, column: 2, scope: !5698)
!5728 = !DILocation(line: 604, column: 19, scope: !5692)
!5729 = !DILocation(line: 604, column: 25, scope: !5692)
!5730 = !DILocation(line: 604, column: 9, scope: !5692)
!5731 = !DILocation(line: 604, column: 2, scope: !5692)
!5732 = !DILocation(line: 605, column: 1, scope: !5692)
!5733 = !DISubprogram(name: "kmalloc_large", scope: !208, file: !208, line: 531, type: !5025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5734 = distinct !DISubprogram(name: "__kmalloc_index", scope: !208, file: !208, line: 444, type: !5735, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5737)
!5735 = !DISubroutineType(types: !5736)
!5736 = !{!37, !1047, !730}
!5737 = !{!5738, !5739}
!5738 = !DILocalVariable(name: "size", arg: 1, scope: !5734, file: !208, line: 444, type: !1047)
!5739 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5734, file: !208, line: 445, type: !730)
!5740 = !DILocation(line: 444, column: 60, scope: !5734)
!5741 = !DILocation(line: 445, column: 16, scope: !5734)
!5742 = !DILocation(line: 447, column: 7, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 447, column: 6)
!5744 = !DILocation(line: 447, column: 6, scope: !5734)
!5745 = !DILocation(line: 448, column: 3, scope: !5743)
!5746 = !DILocation(line: 450, column: 6, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 450, column: 6)
!5748 = !DILocation(line: 450, column: 11, scope: !5747)
!5749 = !DILocation(line: 450, column: 6, scope: !5734)
!5750 = !DILocation(line: 451, column: 3, scope: !5747)
!5751 = !DILocation(line: 453, column: 32, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 453, column: 6)
!5753 = !DILocation(line: 453, column: 37, scope: !5752)
!5754 = !DILocation(line: 453, column: 42, scope: !5752)
!5755 = !DILocation(line: 453, column: 45, scope: !5752)
!5756 = !DILocation(line: 453, column: 50, scope: !5752)
!5757 = !DILocation(line: 453, column: 6, scope: !5734)
!5758 = !DILocation(line: 454, column: 3, scope: !5752)
!5759 = !DILocation(line: 455, column: 32, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 455, column: 6)
!5761 = !DILocation(line: 455, column: 37, scope: !5760)
!5762 = !DILocation(line: 455, column: 43, scope: !5760)
!5763 = !DILocation(line: 455, column: 46, scope: !5760)
!5764 = !DILocation(line: 455, column: 51, scope: !5760)
!5765 = !DILocation(line: 455, column: 6, scope: !5734)
!5766 = !DILocation(line: 456, column: 3, scope: !5760)
!5767 = !DILocation(line: 457, column: 6, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 457, column: 6)
!5769 = !DILocation(line: 457, column: 11, scope: !5768)
!5770 = !DILocation(line: 457, column: 6, scope: !5734)
!5771 = !DILocation(line: 457, column: 26, scope: !5768)
!5772 = !DILocation(line: 458, column: 6, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 458, column: 6)
!5774 = !DILocation(line: 458, column: 11, scope: !5773)
!5775 = !DILocation(line: 458, column: 6, scope: !5734)
!5776 = !DILocation(line: 458, column: 26, scope: !5773)
!5777 = !DILocation(line: 459, column: 6, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 459, column: 6)
!5779 = !DILocation(line: 459, column: 11, scope: !5778)
!5780 = !DILocation(line: 459, column: 6, scope: !5734)
!5781 = !DILocation(line: 459, column: 26, scope: !5778)
!5782 = !DILocation(line: 460, column: 6, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 460, column: 6)
!5784 = !DILocation(line: 460, column: 11, scope: !5783)
!5785 = !DILocation(line: 460, column: 6, scope: !5734)
!5786 = !DILocation(line: 460, column: 26, scope: !5783)
!5787 = !DILocation(line: 461, column: 6, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 461, column: 6)
!5789 = !DILocation(line: 461, column: 11, scope: !5788)
!5790 = !DILocation(line: 461, column: 6, scope: !5734)
!5791 = !DILocation(line: 461, column: 26, scope: !5788)
!5792 = !DILocation(line: 462, column: 6, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 462, column: 6)
!5794 = !DILocation(line: 462, column: 11, scope: !5793)
!5795 = !DILocation(line: 462, column: 6, scope: !5734)
!5796 = !DILocation(line: 462, column: 26, scope: !5793)
!5797 = !DILocation(line: 463, column: 6, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 463, column: 6)
!5799 = !DILocation(line: 463, column: 11, scope: !5798)
!5800 = !DILocation(line: 463, column: 6, scope: !5734)
!5801 = !DILocation(line: 463, column: 26, scope: !5798)
!5802 = !DILocation(line: 464, column: 6, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 464, column: 6)
!5804 = !DILocation(line: 464, column: 11, scope: !5803)
!5805 = !DILocation(line: 464, column: 6, scope: !5734)
!5806 = !DILocation(line: 464, column: 26, scope: !5803)
!5807 = !DILocation(line: 465, column: 6, scope: !5808)
!5808 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 465, column: 6)
!5809 = !DILocation(line: 465, column: 11, scope: !5808)
!5810 = !DILocation(line: 465, column: 6, scope: !5734)
!5811 = !DILocation(line: 465, column: 26, scope: !5808)
!5812 = !DILocation(line: 466, column: 6, scope: !5813)
!5813 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 466, column: 6)
!5814 = !DILocation(line: 466, column: 11, scope: !5813)
!5815 = !DILocation(line: 466, column: 6, scope: !5734)
!5816 = !DILocation(line: 466, column: 26, scope: !5813)
!5817 = !DILocation(line: 467, column: 6, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 467, column: 6)
!5819 = !DILocation(line: 467, column: 11, scope: !5818)
!5820 = !DILocation(line: 467, column: 6, scope: !5734)
!5821 = !DILocation(line: 467, column: 26, scope: !5818)
!5822 = !DILocation(line: 468, column: 6, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 468, column: 6)
!5824 = !DILocation(line: 468, column: 11, scope: !5823)
!5825 = !DILocation(line: 468, column: 6, scope: !5734)
!5826 = !DILocation(line: 468, column: 26, scope: !5823)
!5827 = !DILocation(line: 469, column: 6, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 469, column: 6)
!5829 = !DILocation(line: 469, column: 11, scope: !5828)
!5830 = !DILocation(line: 469, column: 6, scope: !5734)
!5831 = !DILocation(line: 469, column: 26, scope: !5828)
!5832 = !DILocation(line: 470, column: 6, scope: !5833)
!5833 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 470, column: 6)
!5834 = !DILocation(line: 470, column: 11, scope: !5833)
!5835 = !DILocation(line: 470, column: 6, scope: !5734)
!5836 = !DILocation(line: 470, column: 26, scope: !5833)
!5837 = !DILocation(line: 471, column: 6, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 471, column: 6)
!5839 = !DILocation(line: 471, column: 11, scope: !5838)
!5840 = !DILocation(line: 471, column: 6, scope: !5734)
!5841 = !DILocation(line: 471, column: 26, scope: !5838)
!5842 = !DILocation(line: 472, column: 6, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 472, column: 6)
!5844 = !DILocation(line: 472, column: 11, scope: !5843)
!5845 = !DILocation(line: 472, column: 6, scope: !5734)
!5846 = !DILocation(line: 472, column: 26, scope: !5843)
!5847 = !DILocation(line: 473, column: 6, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 473, column: 6)
!5849 = !DILocation(line: 473, column: 11, scope: !5848)
!5850 = !DILocation(line: 473, column: 6, scope: !5734)
!5851 = !DILocation(line: 473, column: 26, scope: !5848)
!5852 = !DILocation(line: 474, column: 6, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 474, column: 6)
!5854 = !DILocation(line: 474, column: 11, scope: !5853)
!5855 = !DILocation(line: 474, column: 6, scope: !5734)
!5856 = !DILocation(line: 474, column: 27, scope: !5853)
!5857 = !DILocation(line: 475, column: 6, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 475, column: 6)
!5859 = !DILocation(line: 475, column: 11, scope: !5858)
!5860 = !DILocation(line: 475, column: 6, scope: !5734)
!5861 = !DILocation(line: 475, column: 32, scope: !5858)
!5862 = !DILocation(line: 477, column: 50, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5734, file: !208, line: 477, column: 6)
!5864 = !DILocation(line: 477, column: 6, scope: !5734)
!5865 = !DILocation(line: 478, column: 3, scope: !5863)
!5866 = !DILocation(line: 478, column: 3, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5868, file: !208, line: 478, column: 3)
!5868 = distinct !DILexicalBlock(scope: !5863, file: !208, line: 478, column: 3)
!5869 = !{i32 -2142586036}
!5870 = !DILocation(line: 478, column: 3, scope: !5868)
!5871 = !DILocation(line: 480, column: 3, scope: !5863)
!5872 = !DILocation(line: 480, column: 3, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5863, file: !208, line: 480, column: 3)
!5874 = !DILocation(line: 480, column: 3, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5873, file: !208, line: 480, column: 3)
!5876 = !DILocation(line: 480, column: 3, scope: !5877)
!5877 = distinct !DILexicalBlock(scope: !5873, file: !208, line: 480, column: 3)
!5878 = !{i64 2152381463, i64 2152381492, i64 2152381538, i64 2152381596, i64 2152381650, i64 2152381704, i64 2152381759, i64 2152381790}
!5879 = !DILocation(line: 483, column: 2, scope: !5734)
!5880 = !DILocation(line: 484, column: 1, scope: !5734)
!5881 = !DISubprogram(name: "kmalloc_trace", scope: !208, file: !208, line: 525, type: !5882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5882 = !DISubroutineType(types: !5883)
!5883 = !{!220, !5884, !218, !1047}
!5884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5885, size: 64)
!5885 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5886, line: 11, flags: DIFlagFwdDecl)
!5886 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5887 = distinct !DISubprogram(name: "kmalloc_type", scope: !208, file: !208, line: 401, type: !5888, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5890)
!5888 = !DISubroutineType(types: !5889)
!5889 = !{!207, !218, !222}
!5890 = !{!5891, !5892}
!5891 = !DILocalVariable(name: "flags", arg: 1, scope: !5887, file: !208, line: 401, type: !218)
!5892 = !DILocalVariable(name: "caller", arg: 2, scope: !5887, file: !208, line: 401, type: !222)
!5893 = !DILocation(line: 401, column: 67, scope: !5887)
!5894 = !DILocation(line: 401, column: 88, scope: !5887)
!5895 = !DILocation(line: 407, column: 6, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5887, file: !208, line: 407, column: 6)
!5897 = !DILocation(line: 407, column: 6, scope: !5887)
!5898 = !DILocation(line: 413, column: 3, scope: !5896)
!5899 = !DILocation(line: 423, column: 38, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5887, file: !208, line: 423, column: 6)
!5901 = !DILocation(line: 423, column: 44, scope: !5900)
!5902 = !DILocation(line: 423, column: 6, scope: !5887)
!5903 = !DILocation(line: 424, column: 3, scope: !5900)
!5904 = !DILocation(line: 426, column: 3, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5887, file: !208, line: 425, column: 6)
!5906 = !DILocation(line: 429, column: 1, scope: !5887)
!5907 = !DISubprogram(name: "__kmalloc", scope: !208, file: !208, line: 488, type: !5025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5908 = !DISubprogram(name: "__compiletime_assert_196", scope: !208, file: !208, line: 478, type: !31, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5909 = !DISubprogram(name: "psmouse_reset", scope: !160, file: !160, line: 137, type: !4782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5910 = distinct !DISubprogram(name: "cypress_read_fw_version", scope: !2, file: !2, line: 220, type: !4782, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5911)
!5911 = !{!5912, !5913, !5914}
!5912 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5910, file: !2, line: 220, type: !270)
!5913 = !DILocalVariable(name: "cytp", scope: !5910, file: !2, line: 222, type: !4924)
!5914 = !DILocalVariable(name: "param", scope: !5910, file: !2, line: 223, type: !4832)
!5915 = !DILocation(line: 220, column: 52, scope: !5910)
!5916 = !DILocation(line: 222, column: 2, scope: !5910)
!5917 = !DILocation(line: 222, column: 20, scope: !5910)
!5918 = !DILocation(line: 222, column: 27, scope: !5910)
!5919 = !DILocation(line: 222, column: 36, scope: !5910)
!5920 = !DILocation(line: 223, column: 2, scope: !5910)
!5921 = !DILocation(line: 223, column: 16, scope: !5910)
!5922 = !DILocation(line: 225, column: 27, scope: !5923)
!5923 = distinct !DILexicalBlock(scope: !5910, file: !2, line: 225, column: 6)
!5924 = !DILocation(line: 225, column: 62, scope: !5923)
!5925 = !DILocation(line: 225, column: 6, scope: !5923)
!5926 = !DILocation(line: 225, column: 6, scope: !5910)
!5927 = !DILocation(line: 226, column: 3, scope: !5923)
!5928 = !DILocation(line: 229, column: 6, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5910, file: !2, line: 229, column: 6)
!5930 = !DILocation(line: 229, column: 15, scope: !5929)
!5931 = !DILocation(line: 229, column: 23, scope: !5929)
!5932 = !DILocation(line: 229, column: 26, scope: !5929)
!5933 = !DILocation(line: 229, column: 35, scope: !5929)
!5934 = !DILocation(line: 229, column: 6, scope: !5910)
!5935 = !DILocation(line: 230, column: 3, scope: !5929)
!5936 = !DILocation(line: 232, column: 21, scope: !5910)
!5937 = !DILocation(line: 232, column: 30, scope: !5910)
!5938 = !DILocation(line: 232, column: 2, scope: !5910)
!5939 = !DILocation(line: 232, column: 8, scope: !5910)
!5940 = !DILocation(line: 232, column: 19, scope: !5910)
!5941 = !DILocation(line: 233, column: 32, scope: !5910)
!5942 = !DILocation(line: 233, column: 41, scope: !5910)
!5943 = !DILocation(line: 233, column: 31, scope: !5910)
!5944 = !DILocation(line: 233, column: 2, scope: !5910)
!5945 = !DILocation(line: 233, column: 8, scope: !5910)
!5946 = !DILocation(line: 233, column: 29, scope: !5910)
!5947 = !DILocation(line: 239, column: 6, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5910, file: !2, line: 239, column: 6)
!5949 = !DILocation(line: 239, column: 12, scope: !5948)
!5950 = !DILocation(line: 239, column: 23, scope: !5948)
!5951 = !DILocation(line: 239, column: 6, scope: !5910)
!5952 = !DILocation(line: 240, column: 3, scope: !5948)
!5953 = !DILocation(line: 240, column: 9, scope: !5948)
!5954 = !DILocation(line: 240, column: 30, scope: !5948)
!5955 = !DILocation(line: 246, column: 2, scope: !5910)
!5956 = !DILocation(line: 247, column: 1, scope: !5910)
!5957 = distinct !DISubprogram(name: "cypress_read_tp_metrics", scope: !2, file: !2, line: 249, type: !4782, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5958)
!5958 = !{!5959, !5960, !5961}
!5959 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5957, file: !2, line: 249, type: !270)
!5960 = !DILocalVariable(name: "cytp", scope: !5957, file: !2, line: 251, type: !4924)
!5961 = !DILocalVariable(name: "param", scope: !5957, file: !2, line: 252, type: !4785)
!5962 = !DILocation(line: 249, column: 52, scope: !5957)
!5963 = !DILocation(line: 251, column: 2, scope: !5957)
!5964 = !DILocation(line: 251, column: 20, scope: !5957)
!5965 = !DILocation(line: 251, column: 27, scope: !5957)
!5966 = !DILocation(line: 251, column: 36, scope: !5957)
!5967 = !DILocation(line: 252, column: 2, scope: !5957)
!5968 = !DILocation(line: 252, column: 16, scope: !5957)
!5969 = !DILocation(line: 255, column: 2, scope: !5957)
!5970 = !DILocation(line: 255, column: 8, scope: !5957)
!5971 = !DILocation(line: 255, column: 17, scope: !5957)
!5972 = !DILocation(line: 256, column: 2, scope: !5957)
!5973 = !DILocation(line: 256, column: 8, scope: !5957)
!5974 = !DILocation(line: 256, column: 16, scope: !5957)
!5975 = !DILocation(line: 257, column: 2, scope: !5957)
!5976 = !DILocation(line: 257, column: 8, scope: !5957)
!5977 = !DILocation(line: 257, column: 21, scope: !5957)
!5978 = !DILocation(line: 258, column: 2, scope: !5957)
!5979 = !DILocation(line: 258, column: 8, scope: !5957)
!5980 = !DILocation(line: 258, column: 21, scope: !5957)
!5981 = !DILocation(line: 259, column: 2, scope: !5957)
!5982 = !DILocation(line: 259, column: 8, scope: !5957)
!5983 = !DILocation(line: 259, column: 24, scope: !5957)
!5984 = !DILocation(line: 260, column: 2, scope: !5957)
!5985 = !DILocation(line: 260, column: 8, scope: !5957)
!5986 = !DILocation(line: 260, column: 24, scope: !5957)
!5987 = !DILocation(line: 261, column: 19, scope: !5957)
!5988 = !DILocation(line: 261, column: 25, scope: !5957)
!5989 = !DILocation(line: 261, column: 40, scope: !5957)
!5990 = !DILocation(line: 261, column: 46, scope: !5957)
!5991 = !DILocation(line: 261, column: 38, scope: !5957)
!5992 = !DILocation(line: 261, column: 2, scope: !5957)
!5993 = !DILocation(line: 261, column: 8, scope: !5957)
!5994 = !DILocation(line: 261, column: 17, scope: !5957)
!5995 = !DILocation(line: 262, column: 19, scope: !5957)
!5996 = !DILocation(line: 262, column: 25, scope: !5957)
!5997 = !DILocation(line: 262, column: 40, scope: !5957)
!5998 = !DILocation(line: 262, column: 46, scope: !5957)
!5999 = !DILocation(line: 262, column: 38, scope: !5957)
!6000 = !DILocation(line: 262, column: 2, scope: !5957)
!6001 = !DILocation(line: 262, column: 8, scope: !5957)
!6002 = !DILocation(line: 262, column: 17, scope: !5957)
!6003 = !DILocation(line: 264, column: 7, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5957, file: !2, line: 264, column: 6)
!6005 = !DILocation(line: 264, column: 13, scope: !6004)
!6006 = !DILocation(line: 264, column: 6, scope: !5957)
!6007 = !DILocation(line: 265, column: 3, scope: !6004)
!6008 = !DILocation(line: 267, column: 2, scope: !5957)
!6009 = !DILocation(line: 268, column: 27, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !5957, file: !2, line: 268, column: 6)
!6011 = !DILocation(line: 268, column: 62, scope: !6010)
!6012 = !DILocation(line: 268, column: 6, scope: !6010)
!6013 = !DILocation(line: 268, column: 69, scope: !6010)
!6014 = !DILocation(line: 268, column: 6, scope: !5957)
!6015 = !DILocation(line: 270, column: 25, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !6010, file: !2, line: 268, column: 75)
!6017 = !DILocation(line: 270, column: 34, scope: !6016)
!6018 = !DILocation(line: 270, column: 42, scope: !6016)
!6019 = !DILocation(line: 270, column: 40, scope: !6016)
!6020 = !DILocation(line: 270, column: 3, scope: !6016)
!6021 = !DILocation(line: 270, column: 9, scope: !6016)
!6022 = !DILocation(line: 270, column: 22, scope: !6016)
!6023 = !DILocation(line: 271, column: 25, scope: !6016)
!6024 = !DILocation(line: 271, column: 34, scope: !6016)
!6025 = !DILocation(line: 271, column: 42, scope: !6016)
!6026 = !DILocation(line: 271, column: 40, scope: !6016)
!6027 = !DILocation(line: 271, column: 3, scope: !6016)
!6028 = !DILocation(line: 271, column: 9, scope: !6016)
!6029 = !DILocation(line: 271, column: 22, scope: !6016)
!6030 = !DILocation(line: 272, column: 27, scope: !6016)
!6031 = !DILocation(line: 272, column: 3, scope: !6016)
!6032 = !DILocation(line: 272, column: 9, scope: !6016)
!6033 = !DILocation(line: 272, column: 25, scope: !6016)
!6034 = !DILocation(line: 273, column: 27, scope: !6016)
!6035 = !DILocation(line: 273, column: 3, scope: !6016)
!6036 = !DILocation(line: 273, column: 9, scope: !6016)
!6037 = !DILocation(line: 273, column: 25, scope: !6016)
!6038 = !DILocation(line: 274, column: 2, scope: !6016)
!6039 = !DILocation(line: 276, column: 7, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !5957, file: !2, line: 276, column: 6)
!6041 = !DILocation(line: 276, column: 13, scope: !6040)
!6042 = !DILocation(line: 276, column: 29, scope: !6040)
!6043 = !DILocation(line: 277, column: 6, scope: !6040)
!6044 = !DILocation(line: 277, column: 12, scope: !6040)
!6045 = !DILocation(line: 277, column: 30, scope: !6040)
!6046 = !DILocation(line: 277, column: 36, scope: !6040)
!6047 = !DILocation(line: 277, column: 28, scope: !6040)
!6048 = !DILocation(line: 277, column: 52, scope: !6040)
!6049 = !DILocation(line: 278, column: 7, scope: !6040)
!6050 = !DILocation(line: 278, column: 13, scope: !6040)
!6051 = !DILocation(line: 278, column: 22, scope: !6040)
!6052 = !DILocation(line: 278, column: 26, scope: !6040)
!6053 = !DILocation(line: 278, column: 32, scope: !6040)
!6054 = !DILocation(line: 278, column: 40, scope: !6040)
!6055 = !DILocation(line: 279, column: 7, scope: !6040)
!6056 = !DILocation(line: 279, column: 13, scope: !6040)
!6057 = !DILocation(line: 279, column: 26, scope: !6040)
!6058 = !DILocation(line: 280, column: 6, scope: !6040)
!6059 = !DILocation(line: 280, column: 12, scope: !6040)
!6060 = !DILocation(line: 280, column: 27, scope: !6040)
!6061 = !DILocation(line: 280, column: 33, scope: !6040)
!6062 = !DILocation(line: 280, column: 25, scope: !6040)
!6063 = !DILocation(line: 280, column: 42, scope: !6040)
!6064 = !DILocation(line: 281, column: 7, scope: !6040)
!6065 = !DILocation(line: 281, column: 13, scope: !6040)
!6066 = !DILocation(line: 281, column: 26, scope: !6040)
!6067 = !DILocation(line: 282, column: 6, scope: !6040)
!6068 = !DILocation(line: 282, column: 12, scope: !6040)
!6069 = !DILocation(line: 282, column: 27, scope: !6040)
!6070 = !DILocation(line: 282, column: 33, scope: !6040)
!6071 = !DILocation(line: 282, column: 25, scope: !6040)
!6072 = !DILocation(line: 276, column: 6, scope: !5957)
!6073 = !DILocation(line: 283, column: 3, scope: !6040)
!6074 = !DILocation(line: 285, column: 19, scope: !5957)
!6075 = !DILocation(line: 285, column: 25, scope: !5957)
!6076 = !DILocation(line: 285, column: 40, scope: !5957)
!6077 = !DILocation(line: 285, column: 46, scope: !5957)
!6078 = !DILocation(line: 285, column: 38, scope: !5957)
!6079 = !DILocation(line: 285, column: 2, scope: !5957)
!6080 = !DILocation(line: 285, column: 8, scope: !5957)
!6081 = !DILocation(line: 285, column: 17, scope: !5957)
!6082 = !DILocation(line: 286, column: 19, scope: !5957)
!6083 = !DILocation(line: 286, column: 25, scope: !5957)
!6084 = !DILocation(line: 286, column: 40, scope: !5957)
!6085 = !DILocation(line: 286, column: 46, scope: !5957)
!6086 = !DILocation(line: 286, column: 38, scope: !5957)
!6087 = !DILocation(line: 286, column: 2, scope: !5957)
!6088 = !DILocation(line: 286, column: 8, scope: !5957)
!6089 = !DILocation(line: 286, column: 17, scope: !5957)
!6090 = !DILocation(line: 319, column: 2, scope: !5957)
!6091 = !DILocation(line: 320, column: 1, scope: !5957)
!6092 = distinct !DISubprogram(name: "cypress_set_packet_size", scope: !2, file: !2, line: 29, type: !4811, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6093)
!6093 = !{!6094, !6095, !6096}
!6094 = !DILocalVariable(name: "psmouse", arg: 1, scope: !6092, file: !2, line: 29, type: !270)
!6095 = !DILocalVariable(name: "n", arg: 2, scope: !6092, file: !2, line: 29, type: !37)
!6096 = !DILocalVariable(name: "cytp", scope: !6092, file: !2, line: 31, type: !4924)
!6097 = !DILocation(line: 29, column: 53, scope: !6092)
!6098 = !DILocation(line: 29, column: 75, scope: !6092)
!6099 = !DILocation(line: 31, column: 2, scope: !6092)
!6100 = !DILocation(line: 31, column: 20, scope: !6092)
!6101 = !DILocation(line: 31, column: 27, scope: !6092)
!6102 = !DILocation(line: 31, column: 36, scope: !6092)
!6103 = !DILocation(line: 32, column: 19, scope: !6092)
!6104 = !DILocation(line: 32, column: 2, scope: !6092)
!6105 = !DILocation(line: 32, column: 8, scope: !6092)
!6106 = !DILocation(line: 32, column: 17, scope: !6092)
!6107 = !DILocation(line: 33, column: 1, scope: !6092)
!6108 = distinct !DISubprogram(name: "generic___set_bit", scope: !6109, file: !6109, line: 28, type: !6110, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6114)
!6109 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6110 = !DISubroutineType(types: !6111)
!6111 = !{null, !222, !6112}
!6112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6113, size: 64)
!6113 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !222)
!6114 = !{!6115, !6116, !6117, !6118}
!6115 = !DILocalVariable(name: "nr", arg: 1, scope: !6108, file: !6109, line: 28, type: !222)
!6116 = !DILocalVariable(name: "addr", arg: 2, scope: !6108, file: !6109, line: 28, type: !6112)
!6117 = !DILocalVariable(name: "mask", scope: !6108, file: !6109, line: 30, type: !222)
!6118 = !DILocalVariable(name: "p", scope: !6108, file: !6109, line: 31, type: !226)
!6119 = !DILocation(line: 28, column: 33, scope: !6108)
!6120 = !DILocation(line: 28, column: 61, scope: !6108)
!6121 = !DILocation(line: 30, column: 2, scope: !6108)
!6122 = !DILocation(line: 30, column: 16, scope: !6108)
!6123 = !DILocation(line: 30, column: 23, scope: !6108)
!6124 = !DILocation(line: 31, column: 2, scope: !6108)
!6125 = !DILocation(line: 31, column: 17, scope: !6108)
!6126 = !DILocation(line: 31, column: 39, scope: !6108)
!6127 = !DILocation(line: 31, column: 47, scope: !6108)
!6128 = !DILocation(line: 31, column: 45, scope: !6108)
!6129 = !DILocation(line: 33, column: 9, scope: !6108)
!6130 = !DILocation(line: 33, column: 3, scope: !6108)
!6131 = !DILocation(line: 33, column: 6, scope: !6108)
!6132 = !DILocation(line: 34, column: 1, scope: !6108)
!6133 = distinct !DISubprogram(name: "___set_bit", scope: !6134, file: !6134, line: 26, type: !6110, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6135)
!6134 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6135 = !{!6136, !6137}
!6136 = !DILocalVariable(name: "nr", arg: 1, scope: !6133, file: !6134, line: 26, type: !222)
!6137 = !DILocalVariable(name: "addr", arg: 2, scope: !6133, file: !6134, line: 26, type: !6112)
!6138 = !DILocation(line: 26, column: 26, scope: !6133)
!6139 = !DILocation(line: 26, column: 54, scope: !6133)
!6140 = !DILocation(line: 28, column: 19, scope: !6133)
!6141 = !DILocation(line: 28, column: 26, scope: !6133)
!6142 = !DILocation(line: 28, column: 24, scope: !6133)
!6143 = !DILocation(line: 28, column: 2, scope: !6133)
!6144 = !DILocation(line: 29, column: 17, scope: !6133)
!6145 = !DILocation(line: 29, column: 21, scope: !6133)
!6146 = !DILocation(line: 29, column: 2, scope: !6133)
!6147 = !DILocation(line: 30, column: 1, scope: !6133)
!6148 = !DISubprogram(name: "input_set_abs_params", scope: !277, file: !277, line: 476, type: !6149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6149 = !DISubroutineType(types: !6150)
!6150 = !{null, !275, !37, !115, !115, !115, !115}
!6151 = !DISubprogram(name: "input_mt_init_slots", scope: !4174, file: !4174, line: 76, type: !6152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6152 = !DISubroutineType(types: !6153)
!6153 = !{!115, !275, !37, !37}
!6154 = distinct !DISubprogram(name: "input_abs_set_res", scope: !277, file: !277, line: 501, type: !6155, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6157)
!6155 = !DISubroutineType(types: !6156)
!6156 = !{null, !275, !37, !115}
!6157 = !{!6158, !6159, !6160}
!6158 = !DILocalVariable(name: "dev", arg: 1, scope: !6154, file: !277, line: 501, type: !275)
!6159 = !DILocalVariable(name: "axis", arg: 2, scope: !6154, file: !277, line: 501, type: !37)
!6160 = !DILocalVariable(name: "val", arg: 3, scope: !6154, file: !277, line: 501, type: !115)
!6161 = !DILocation(line: 501, column: 1, scope: !6154)
!6162 = !DILocation(line: 501, column: 1, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6154, file: !277, line: 501, column: 1)
!6164 = distinct !DISubprogram(name: "generic___clear_bit", scope: !6109, file: !6109, line: 37, type: !6110, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6165)
!6165 = !{!6166, !6167, !6168, !6169}
!6166 = !DILocalVariable(name: "nr", arg: 1, scope: !6164, file: !6109, line: 37, type: !222)
!6167 = !DILocalVariable(name: "addr", arg: 2, scope: !6164, file: !6109, line: 37, type: !6112)
!6168 = !DILocalVariable(name: "mask", scope: !6164, file: !6109, line: 39, type: !222)
!6169 = !DILocalVariable(name: "p", scope: !6164, file: !6109, line: 40, type: !226)
!6170 = !DILocation(line: 37, column: 35, scope: !6164)
!6171 = !DILocation(line: 37, column: 63, scope: !6164)
!6172 = !DILocation(line: 39, column: 2, scope: !6164)
!6173 = !DILocation(line: 39, column: 16, scope: !6164)
!6174 = !DILocation(line: 39, column: 23, scope: !6164)
!6175 = !DILocation(line: 40, column: 2, scope: !6164)
!6176 = !DILocation(line: 40, column: 17, scope: !6164)
!6177 = !DILocation(line: 40, column: 39, scope: !6164)
!6178 = !DILocation(line: 40, column: 47, scope: !6164)
!6179 = !DILocation(line: 40, column: 45, scope: !6164)
!6180 = !DILocation(line: 42, column: 9, scope: !6164)
!6181 = !DILocation(line: 42, column: 8, scope: !6164)
!6182 = !DILocation(line: 42, column: 3, scope: !6164)
!6183 = !DILocation(line: 42, column: 5, scope: !6164)
!6184 = !DILocation(line: 43, column: 1, scope: !6164)
!6185 = distinct !DISubprogram(name: "___clear_bit", scope: !6134, file: !6134, line: 42, type: !6110, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6186)
!6186 = !{!6187, !6188}
!6187 = !DILocalVariable(name: "nr", arg: 1, scope: !6185, file: !6134, line: 42, type: !222)
!6188 = !DILocalVariable(name: "addr", arg: 2, scope: !6185, file: !6134, line: 42, type: !6112)
!6189 = !DILocation(line: 42, column: 28, scope: !6185)
!6190 = !DILocation(line: 42, column: 56, scope: !6185)
!6191 = !DILocation(line: 44, column: 19, scope: !6185)
!6192 = !DILocation(line: 44, column: 26, scope: !6185)
!6193 = !DILocation(line: 44, column: 24, scope: !6185)
!6194 = !DILocation(line: 44, column: 2, scope: !6185)
!6195 = !DILocation(line: 45, column: 19, scope: !6185)
!6196 = !DILocation(line: 45, column: 23, scope: !6185)
!6197 = !DILocation(line: 45, column: 2, scope: !6185)
!6198 = !DILocation(line: 46, column: 1, scope: !6185)
!6199 = distinct !DISubprogram(name: "instrument_write", scope: !6200, file: !6200, line: 38, type: !6201, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6206)
!6200 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6201 = !DISubroutineType(types: !6202)
!6202 = !{null, !6203, !1047}
!6203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6204, size: 64)
!6204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6205)
!6205 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6206 = !{!6207, !6208}
!6207 = !DILocalVariable(name: "v", arg: 1, scope: !6199, file: !6200, line: 38, type: !6203)
!6208 = !DILocalVariable(name: "size", arg: 2, scope: !6199, file: !6200, line: 38, type: !1047)
!6209 = !DILocation(line: 38, column: 67, scope: !6199)
!6210 = !DILocation(line: 38, column: 77, scope: !6199)
!6211 = !DILocation(line: 40, column: 20, scope: !6199)
!6212 = !DILocation(line: 40, column: 23, scope: !6199)
!6213 = !DILocation(line: 40, column: 2, scope: !6199)
!6214 = !DILocation(line: 41, column: 2, scope: !6199)
!6215 = !DILocation(line: 42, column: 1, scope: !6199)
!6216 = distinct !DISubprogram(name: "arch___set_bit", scope: !6217, file: !6217, line: 66, type: !6110, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6218)
!6217 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6218 = !{!6219, !6220}
!6219 = !DILocalVariable(name: "nr", arg: 1, scope: !6216, file: !6217, line: 66, type: !222)
!6220 = !DILocalVariable(name: "addr", arg: 2, scope: !6216, file: !6217, line: 66, type: !6112)
!6221 = !DILocation(line: 66, column: 30, scope: !6216)
!6222 = !DILocation(line: 66, column: 58, scope: !6216)
!6223 = !DILocation(line: 68, column: 44, scope: !6216)
!6224 = !DILocation(line: 68, column: 56, scope: !6216)
!6225 = !DILocation(line: 68, column: 2, scope: !6216)
!6226 = !{i64 2148346701}
!6227 = !DILocation(line: 69, column: 1, scope: !6216)
!6228 = distinct !DISubprogram(name: "kasan_check_write", scope: !6229, file: !6229, line: 44, type: !6230, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6232)
!6229 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6230 = !DISubroutineType(types: !6231)
!6231 = !{!730, !6203, !37}
!6232 = !{!6233, !6234}
!6233 = !DILocalVariable(name: "p", arg: 1, scope: !6228, file: !6229, line: 44, type: !6203)
!6234 = !DILocalVariable(name: "size", arg: 2, scope: !6228, file: !6229, line: 44, type: !37)
!6235 = !DILocation(line: 44, column: 59, scope: !6228)
!6236 = !DILocation(line: 44, column: 75, scope: !6228)
!6237 = !DILocation(line: 46, column: 2, scope: !6228)
!6238 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6239, file: !6239, line: 229, type: !6240, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6242)
!6239 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6240 = !DISubroutineType(types: !6241)
!6241 = !{null, !6203, !1047, !115}
!6242 = !{!6243, !6244, !6245}
!6243 = !DILocalVariable(name: "ptr", arg: 1, scope: !6238, file: !6239, line: 229, type: !6203)
!6244 = !DILocalVariable(name: "size", arg: 2, scope: !6238, file: !6239, line: 229, type: !1047)
!6245 = !DILocalVariable(name: "type", arg: 3, scope: !6238, file: !6239, line: 230, type: !115)
!6246 = !DILocation(line: 229, column: 60, scope: !6238)
!6247 = !DILocation(line: 229, column: 72, scope: !6238)
!6248 = !DILocation(line: 230, column: 15, scope: !6238)
!6249 = !DILocation(line: 230, column: 23, scope: !6238)
!6250 = !DISubprogram(name: "input_alloc_absinfo", scope: !277, file: !277, line: 475, type: !4212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6251 = distinct !DISubprogram(name: "arch___clear_bit", scope: !6217, file: !6217, line: 92, type: !6110, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6252)
!6252 = !{!6253, !6254}
!6253 = !DILocalVariable(name: "nr", arg: 1, scope: !6251, file: !6217, line: 92, type: !222)
!6254 = !DILocalVariable(name: "addr", arg: 2, scope: !6251, file: !6217, line: 92, type: !6112)
!6255 = !DILocation(line: 92, column: 32, scope: !6251)
!6256 = !DILocation(line: 92, column: 60, scope: !6251)
!6257 = !DILocation(line: 94, column: 44, scope: !6251)
!6258 = !DILocation(line: 94, column: 56, scope: !6251)
!6259 = !DILocation(line: 94, column: 2, scope: !6251)
!6260 = !{i64 2148348234}
!6261 = !DILocation(line: 95, column: 1, scope: !6251)
!6262 = distinct !DISubprogram(name: "cypress_process_packet", scope: !2, file: !2, line: 513, type: !6263, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6265)
!6263 = !DISubroutineType(types: !6264)
!6264 = !{null, !270, !730}
!6265 = !{!6266, !6267, !6268, !6269, !6270, !6271, !6286, !6288, !6294, !6295}
!6266 = !DILocalVariable(name: "psmouse", arg: 1, scope: !6262, file: !2, line: 513, type: !270)
!6267 = !DILocalVariable(name: "zero_pkt", arg: 2, scope: !6262, file: !2, line: 513, type: !730)
!6268 = !DILocalVariable(name: "i", scope: !6262, file: !2, line: 515, type: !115)
!6269 = !DILocalVariable(name: "input", scope: !6262, file: !2, line: 516, type: !275)
!6270 = !DILocalVariable(name: "cytp", scope: !6262, file: !2, line: 517, type: !4924)
!6271 = !DILocalVariable(name: "report_data", scope: !6262, file: !2, line: 518, type: !6272)
!6272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cytp_report_data", file: !4926, line: 143, size: 256, elements: !6273)
!6273 = !{!6274, !6275, !6282, !6283, !6284, !6285}
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "contact_cnt", scope: !6272, file: !4926, line: 144, baseType: !115, size: 32)
!6275 = !DIDerivedType(tag: DW_TAG_member, name: "contacts", scope: !6272, file: !4926, line: 145, baseType: !6276, size: 192, offset: 32)
!6276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6277, size: 192, elements: !311)
!6277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cytp_contact", file: !4926, line: 136, size: 96, elements: !6278)
!6278 = !{!6279, !6280, !6281}
!6279 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !6277, file: !4926, line: 137, baseType: !115, size: 32)
!6280 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !6277, file: !4926, line: 138, baseType: !115, size: 32, offset: 32)
!6281 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !6277, file: !4926, line: 139, baseType: !115, size: 32, offset: 64)
!6282 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !6272, file: !4926, line: 146, baseType: !37, size: 1, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!6283 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !6272, file: !4926, line: 147, baseType: !37, size: 1, offset: 225, flags: DIFlagBitField, extraData: i64 224)
!6284 = !DIDerivedType(tag: DW_TAG_member, name: "middle", scope: !6272, file: !4926, line: 148, baseType: !37, size: 1, offset: 226, flags: DIFlagBitField, extraData: i64 224)
!6285 = !DIDerivedType(tag: DW_TAG_member, name: "tap", scope: !6272, file: !4926, line: 149, baseType: !37, size: 1, offset: 227, flags: DIFlagBitField, extraData: i64 224)
!6286 = !DILocalVariable(name: "contact", scope: !6262, file: !2, line: 519, type: !6287)
!6287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6277, size: 64)
!6288 = !DILocalVariable(name: "pos", scope: !6262, file: !2, line: 520, type: !6289)
!6289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6290, size: 64, elements: !311)
!6290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt_pos", file: !4174, line: 119, size: 32, elements: !6291)
!6291 = !{!6292, !6293}
!6292 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !6290, file: !4174, line: 120, baseType: !1677, size: 16)
!6293 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !6290, file: !4174, line: 120, baseType: !1677, size: 16, offset: 16)
!6294 = !DILocalVariable(name: "slots", scope: !6262, file: !2, line: 521, type: !4170)
!6295 = !DILocalVariable(name: "n", scope: !6262, file: !2, line: 522, type: !115)
!6296 = !DILocation(line: 513, column: 52, scope: !6262)
!6297 = !DILocation(line: 513, column: 66, scope: !6262)
!6298 = !DILocation(line: 515, column: 2, scope: !6262)
!6299 = !DILocation(line: 515, column: 6, scope: !6262)
!6300 = !DILocation(line: 516, column: 2, scope: !6262)
!6301 = !DILocation(line: 516, column: 20, scope: !6262)
!6302 = !DILocation(line: 516, column: 28, scope: !6262)
!6303 = !DILocation(line: 516, column: 37, scope: !6262)
!6304 = !DILocation(line: 517, column: 2, scope: !6262)
!6305 = !DILocation(line: 517, column: 20, scope: !6262)
!6306 = !DILocation(line: 517, column: 27, scope: !6262)
!6307 = !DILocation(line: 517, column: 36, scope: !6262)
!6308 = !DILocation(line: 518, column: 2, scope: !6262)
!6309 = !DILocation(line: 518, column: 26, scope: !6262)
!6310 = !DILocation(line: 519, column: 2, scope: !6262)
!6311 = !DILocation(line: 519, column: 23, scope: !6262)
!6312 = !DILocation(line: 520, column: 2, scope: !6262)
!6313 = !DILocation(line: 520, column: 22, scope: !6262)
!6314 = !DILocation(line: 521, column: 2, scope: !6262)
!6315 = !DILocation(line: 521, column: 6, scope: !6262)
!6316 = !DILocation(line: 522, column: 2, scope: !6262)
!6317 = !DILocation(line: 522, column: 6, scope: !6262)
!6318 = !DILocation(line: 524, column: 23, scope: !6262)
!6319 = !DILocation(line: 524, column: 32, scope: !6262)
!6320 = !DILocation(line: 524, column: 2, scope: !6262)
!6321 = !DILocation(line: 526, column: 18, scope: !6262)
!6322 = !DILocation(line: 526, column: 4, scope: !6262)
!6323 = !DILocation(line: 527, column: 6, scope: !6324)
!6324 = distinct !DILexicalBlock(scope: !6262, file: !2, line: 527, column: 6)
!6325 = !DILocation(line: 527, column: 8, scope: !6324)
!6326 = !DILocation(line: 527, column: 6, scope: !6262)
!6327 = !DILocation(line: 528, column: 5, scope: !6324)
!6328 = !DILocation(line: 528, column: 3, scope: !6324)
!6329 = !DILocation(line: 530, column: 9, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6262, file: !2, line: 530, column: 2)
!6331 = !DILocation(line: 530, column: 7, scope: !6330)
!6332 = !DILocation(line: 530, column: 14, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !6330, file: !2, line: 530, column: 2)
!6334 = !DILocation(line: 530, column: 18, scope: !6333)
!6335 = !DILocation(line: 530, column: 16, scope: !6333)
!6336 = !DILocation(line: 530, column: 2, scope: !6330)
!6337 = !DILocation(line: 531, column: 26, scope: !6338)
!6338 = distinct !DILexicalBlock(scope: !6333, file: !2, line: 530, column: 26)
!6339 = !DILocation(line: 531, column: 35, scope: !6338)
!6340 = !DILocation(line: 531, column: 14, scope: !6338)
!6341 = !DILocation(line: 531, column: 11, scope: !6338)
!6342 = !DILocation(line: 532, column: 14, scope: !6338)
!6343 = !DILocation(line: 532, column: 23, scope: !6338)
!6344 = !DILocation(line: 532, column: 7, scope: !6338)
!6345 = !DILocation(line: 532, column: 3, scope: !6338)
!6346 = !DILocation(line: 532, column: 10, scope: !6338)
!6347 = !DILocation(line: 532, column: 12, scope: !6338)
!6348 = !DILocation(line: 533, column: 14, scope: !6338)
!6349 = !DILocation(line: 533, column: 23, scope: !6338)
!6350 = !DILocation(line: 533, column: 7, scope: !6338)
!6351 = !DILocation(line: 533, column: 3, scope: !6338)
!6352 = !DILocation(line: 533, column: 10, scope: !6338)
!6353 = !DILocation(line: 533, column: 12, scope: !6338)
!6354 = !DILocation(line: 534, column: 2, scope: !6338)
!6355 = !DILocation(line: 530, column: 22, scope: !6333)
!6356 = !DILocation(line: 530, column: 2, scope: !6333)
!6357 = distinct !{!6357, !6336, !6358, !4916, !4917}
!6358 = !DILocation(line: 534, column: 2, scope: !6330)
!6359 = !DILocation(line: 536, column: 24, scope: !6262)
!6360 = !DILocation(line: 536, column: 31, scope: !6262)
!6361 = !DILocation(line: 536, column: 38, scope: !6262)
!6362 = !DILocation(line: 536, column: 43, scope: !6262)
!6363 = !DILocation(line: 536, column: 2, scope: !6262)
!6364 = !DILocation(line: 538, column: 9, scope: !6365)
!6365 = distinct !DILexicalBlock(scope: !6262, file: !2, line: 538, column: 2)
!6366 = !DILocation(line: 538, column: 7, scope: !6365)
!6367 = !DILocation(line: 538, column: 14, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6365, file: !2, line: 538, column: 2)
!6369 = !DILocation(line: 538, column: 18, scope: !6368)
!6370 = !DILocation(line: 538, column: 16, scope: !6368)
!6371 = !DILocation(line: 538, column: 2, scope: !6365)
!6372 = !DILocation(line: 539, column: 26, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6368, file: !2, line: 538, column: 26)
!6374 = !DILocation(line: 539, column: 35, scope: !6373)
!6375 = !DILocation(line: 539, column: 14, scope: !6373)
!6376 = !DILocation(line: 539, column: 11, scope: !6373)
!6377 = !DILocation(line: 540, column: 17, scope: !6373)
!6378 = !DILocation(line: 540, column: 30, scope: !6373)
!6379 = !DILocation(line: 540, column: 24, scope: !6373)
!6380 = !DILocation(line: 540, column: 3, scope: !6373)
!6381 = !DILocation(line: 541, column: 30, scope: !6373)
!6382 = !DILocation(line: 541, column: 3, scope: !6373)
!6383 = !DILocation(line: 542, column: 20, scope: !6373)
!6384 = !DILocation(line: 542, column: 46, scope: !6373)
!6385 = !DILocation(line: 542, column: 55, scope: !6373)
!6386 = !DILocation(line: 542, column: 3, scope: !6373)
!6387 = !DILocation(line: 543, column: 20, scope: !6373)
!6388 = !DILocation(line: 543, column: 46, scope: !6373)
!6389 = !DILocation(line: 543, column: 55, scope: !6373)
!6390 = !DILocation(line: 543, column: 3, scope: !6373)
!6391 = !DILocation(line: 544, column: 20, scope: !6373)
!6392 = !DILocation(line: 544, column: 44, scope: !6373)
!6393 = !DILocation(line: 544, column: 53, scope: !6373)
!6394 = !DILocation(line: 544, column: 3, scope: !6373)
!6395 = !DILocation(line: 545, column: 2, scope: !6373)
!6396 = !DILocation(line: 538, column: 22, scope: !6368)
!6397 = !DILocation(line: 538, column: 2, scope: !6368)
!6398 = distinct !{!6398, !6371, !6399, !4916, !4917}
!6399 = !DILocation(line: 545, column: 2, scope: !6365)
!6400 = !DILocation(line: 547, column: 22, scope: !6262)
!6401 = !DILocation(line: 547, column: 2, scope: !6262)
!6402 = !DILocation(line: 549, column: 31, scope: !6262)
!6403 = !DILocation(line: 549, column: 50, scope: !6262)
!6404 = !DILocation(line: 549, column: 2, scope: !6262)
!6405 = !DILocation(line: 551, column: 19, scope: !6262)
!6406 = !DILocation(line: 551, column: 48, scope: !6262)
!6407 = !DILocation(line: 551, column: 2, scope: !6262)
!6408 = !DILocation(line: 552, column: 19, scope: !6262)
!6409 = !DILocation(line: 552, column: 49, scope: !6262)
!6410 = !DILocation(line: 552, column: 2, scope: !6262)
!6411 = !DILocation(line: 553, column: 19, scope: !6262)
!6412 = !DILocation(line: 553, column: 50, scope: !6262)
!6413 = !DILocation(line: 553, column: 2, scope: !6262)
!6414 = !DILocation(line: 555, column: 13, scope: !6262)
!6415 = !DILocation(line: 555, column: 2, scope: !6262)
!6416 = !DILocation(line: 556, column: 1, scope: !6262)
!6417 = distinct !DISubprogram(name: "cypress_validate_byte", scope: !2, file: !2, line: 558, type: !4806, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6418)
!6418 = !{!6419, !6420, !6421, !6422, !6423}
!6419 = !DILocalVariable(name: "psmouse", arg: 1, scope: !6417, file: !2, line: 558, type: !270)
!6420 = !DILocalVariable(name: "contact_cnt", scope: !6417, file: !2, line: 560, type: !115)
!6421 = !DILocalVariable(name: "index", scope: !6417, file: !2, line: 561, type: !115)
!6422 = !DILocalVariable(name: "packet", scope: !6417, file: !2, line: 562, type: !229)
!6423 = !DILocalVariable(name: "cytp", scope: !6417, file: !2, line: 563, type: !4924)
!6424 = !DILocation(line: 558, column: 60, scope: !6417)
!6425 = !DILocation(line: 560, column: 2, scope: !6417)
!6426 = !DILocation(line: 560, column: 6, scope: !6417)
!6427 = !DILocation(line: 561, column: 2, scope: !6417)
!6428 = !DILocation(line: 561, column: 6, scope: !6417)
!6429 = !DILocation(line: 561, column: 14, scope: !6417)
!6430 = !DILocation(line: 561, column: 23, scope: !6417)
!6431 = !DILocation(line: 561, column: 30, scope: !6417)
!6432 = !DILocation(line: 562, column: 2, scope: !6417)
!6433 = !DILocation(line: 562, column: 17, scope: !6417)
!6434 = !DILocation(line: 562, column: 26, scope: !6417)
!6435 = !DILocation(line: 562, column: 35, scope: !6417)
!6436 = !DILocation(line: 563, column: 2, scope: !6417)
!6437 = !DILocation(line: 563, column: 20, scope: !6417)
!6438 = !DILocation(line: 563, column: 27, scope: !6417)
!6439 = !DILocation(line: 563, column: 36, scope: !6417)
!6440 = !DILocation(line: 565, column: 6, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !6417, file: !2, line: 565, column: 6)
!6442 = !DILocation(line: 565, column: 12, scope: !6441)
!6443 = !DILocation(line: 565, column: 16, scope: !6441)
!6444 = !DILocation(line: 565, column: 19, scope: !6441)
!6445 = !DILocation(line: 565, column: 27, scope: !6441)
!6446 = !DILocation(line: 565, column: 33, scope: !6441)
!6447 = !DILocation(line: 565, column: 25, scope: !6441)
!6448 = !DILocation(line: 565, column: 6, scope: !6417)
!6449 = !DILocation(line: 566, column: 3, scope: !6441)
!6450 = !DILocation(line: 568, column: 6, scope: !6451)
!6451 = distinct !DILexicalBlock(scope: !6417, file: !2, line: 568, column: 6)
!6452 = !DILocation(line: 568, column: 12, scope: !6451)
!6453 = !DILocation(line: 568, column: 17, scope: !6451)
!6454 = !DILocation(line: 568, column: 21, scope: !6451)
!6455 = !DILocation(line: 568, column: 31, scope: !6451)
!6456 = !DILocation(line: 568, column: 39, scope: !6451)
!6457 = !DILocation(line: 568, column: 6, scope: !6417)
!6458 = !DILocation(line: 570, column: 26, scope: !6459)
!6459 = distinct !DILexicalBlock(scope: !6451, file: !2, line: 568, column: 45)
!6460 = !DILocation(line: 570, column: 3, scope: !6459)
!6461 = !DILocation(line: 571, column: 3, scope: !6459)
!6462 = !DILocation(line: 578, column: 6, scope: !6463)
!6463 = distinct !DILexicalBlock(scope: !6417, file: !2, line: 578, column: 6)
!6464 = !DILocation(line: 578, column: 12, scope: !6463)
!6465 = !DILocation(line: 578, column: 6, scope: !6417)
!6466 = !DILocation(line: 579, column: 3, scope: !6463)
!6467 = !DILocation(line: 585, column: 7, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6417, file: !2, line: 585, column: 6)
!6469 = !DILocation(line: 585, column: 13, scope: !6468)
!6470 = !DILocation(line: 585, column: 18, scope: !6468)
!6471 = !DILocation(line: 585, column: 43, scope: !6468)
!6472 = !DILocation(line: 585, column: 6, scope: !6417)
!6473 = !DILocation(line: 586, column: 3, scope: !6468)
!6474 = !DILocation(line: 588, column: 7, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6417, file: !2, line: 588, column: 6)
!6476 = !DILocation(line: 588, column: 17, scope: !6475)
!6477 = !DILocation(line: 588, column: 25, scope: !6475)
!6478 = !DILocation(line: 588, column: 6, scope: !6417)
!6479 = !DILocation(line: 589, column: 3, scope: !6475)
!6480 = !DILocation(line: 591, column: 41, scope: !6417)
!6481 = !DILocation(line: 591, column: 16, scope: !6417)
!6482 = !DILocation(line: 591, column: 14, scope: !6417)
!6483 = !DILocation(line: 592, column: 6, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6417, file: !2, line: 592, column: 6)
!6485 = !DILocation(line: 592, column: 12, scope: !6484)
!6486 = !DILocation(line: 592, column: 17, scope: !6484)
!6487 = !DILocation(line: 592, column: 6, scope: !6417)
!6488 = !DILocation(line: 593, column: 27, scope: !6484)
!6489 = !DILocation(line: 593, column: 36, scope: !6484)
!6490 = !DILocation(line: 593, column: 48, scope: !6484)
!6491 = !DILocation(line: 593, column: 3, scope: !6484)
!6492 = !DILocation(line: 595, column: 27, scope: !6484)
!6493 = !DILocation(line: 595, column: 36, scope: !6484)
!6494 = !DILocation(line: 595, column: 48, scope: !6484)
!6495 = !DILocation(line: 595, column: 3, scope: !6484)
!6496 = !DILocation(line: 597, column: 2, scope: !6417)
!6497 = !DILocation(line: 598, column: 1, scope: !6417)
!6498 = distinct !DISubprogram(name: "cypress_parse_packet", scope: !2, file: !2, line: 443, type: !6499, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6502)
!6499 = !DISubroutineType(types: !6500)
!6500 = !{!115, !270, !4924, !6501}
!6501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6272, size: 64)
!6502 = !{!6503, !6504, !6505, !6506, !6507}
!6503 = !DILocalVariable(name: "psmouse", arg: 1, scope: !6498, file: !2, line: 443, type: !270)
!6504 = !DILocalVariable(name: "cytp", arg: 2, scope: !6498, file: !2, line: 444, type: !4924)
!6505 = !DILocalVariable(name: "report_data", arg: 3, scope: !6498, file: !2, line: 444, type: !6501)
!6506 = !DILocalVariable(name: "packet", scope: !6498, file: !2, line: 446, type: !229)
!6507 = !DILocalVariable(name: "header_byte", scope: !6498, file: !2, line: 447, type: !230)
!6508 = !DILocation(line: 443, column: 49, scope: !6498)
!6509 = !DILocation(line: 444, column: 23, scope: !6498)
!6510 = !DILocation(line: 444, column: 54, scope: !6498)
!6511 = !DILocation(line: 446, column: 2, scope: !6498)
!6512 = !DILocation(line: 446, column: 17, scope: !6498)
!6513 = !DILocation(line: 446, column: 26, scope: !6498)
!6514 = !DILocation(line: 446, column: 35, scope: !6498)
!6515 = !DILocation(line: 447, column: 2, scope: !6498)
!6516 = !DILocation(line: 447, column: 16, scope: !6498)
!6517 = !DILocation(line: 447, column: 30, scope: !6498)
!6518 = !DILocation(line: 449, column: 9, scope: !6498)
!6519 = !DILocation(line: 449, column: 2, scope: !6498)
!6520 = !DILocation(line: 451, column: 54, scope: !6498)
!6521 = !DILocation(line: 451, column: 29, scope: !6498)
!6522 = !DILocation(line: 451, column: 2, scope: !6498)
!6523 = !DILocation(line: 451, column: 15, scope: !6498)
!6524 = !DILocation(line: 451, column: 27, scope: !6498)
!6525 = !DILocation(line: 452, column: 22, scope: !6498)
!6526 = !DILocation(line: 452, column: 34, scope: !6498)
!6527 = !DILocation(line: 452, column: 21, scope: !6498)
!6528 = !DILocation(line: 452, column: 2, scope: !6498)
!6529 = !DILocation(line: 452, column: 15, scope: !6498)
!6530 = !DILocation(line: 452, column: 19, scope: !6498)
!6531 = !DILocation(line: 454, column: 6, scope: !6532)
!6532 = distinct !DILexicalBlock(scope: !6498, file: !2, line: 454, column: 6)
!6533 = !DILocation(line: 454, column: 19, scope: !6532)
!6534 = !DILocation(line: 454, column: 31, scope: !6532)
!6535 = !DILocation(line: 454, column: 6, scope: !6498)
!6536 = !DILocation(line: 456, column: 6, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6532, file: !2, line: 454, column: 37)
!6538 = !DILocation(line: 456, column: 16, scope: !6537)
!6539 = !DILocation(line: 456, column: 24, scope: !6537)
!6540 = !DILocation(line: 456, column: 32, scope: !6537)
!6541 = !DILocation(line: 456, column: 30, scope: !6537)
!6542 = !DILocation(line: 455, column: 3, scope: !6537)
!6543 = !DILocation(line: 455, column: 16, scope: !6537)
!6544 = !DILocation(line: 455, column: 28, scope: !6537)
!6545 = !DILocation(line: 455, column: 30, scope: !6537)
!6546 = !DILocation(line: 458, column: 6, scope: !6537)
!6547 = !DILocation(line: 458, column: 16, scope: !6537)
!6548 = !DILocation(line: 458, column: 24, scope: !6537)
!6549 = !DILocation(line: 458, column: 32, scope: !6537)
!6550 = !DILocation(line: 458, column: 30, scope: !6537)
!6551 = !DILocation(line: 457, column: 3, scope: !6537)
!6552 = !DILocation(line: 457, column: 16, scope: !6537)
!6553 = !DILocation(line: 457, column: 28, scope: !6537)
!6554 = !DILocation(line: 457, column: 30, scope: !6537)
!6555 = !DILocation(line: 459, column: 7, scope: !6556)
!6556 = distinct !DILexicalBlock(scope: !6537, file: !2, line: 459, column: 7)
!6557 = !DILocation(line: 459, column: 13, scope: !6556)
!6558 = !DILocation(line: 459, column: 18, scope: !6556)
!6559 = !DILocation(line: 459, column: 7, scope: !6537)
!6560 = !DILocation(line: 460, column: 33, scope: !6556)
!6561 = !DILocation(line: 460, column: 4, scope: !6556)
!6562 = !DILocation(line: 460, column: 17, scope: !6556)
!6563 = !DILocation(line: 460, column: 29, scope: !6556)
!6564 = !DILocation(line: 460, column: 31, scope: !6556)
!6565 = !DILocation(line: 462, column: 2, scope: !6537)
!6566 = !DILocation(line: 462, column: 13, scope: !6567)
!6567 = distinct !DILexicalBlock(scope: !6532, file: !2, line: 462, column: 13)
!6568 = !DILocation(line: 462, column: 26, scope: !6567)
!6569 = !DILocation(line: 462, column: 38, scope: !6567)
!6570 = !DILocation(line: 462, column: 13, scope: !6532)
!6571 = !DILocation(line: 464, column: 6, scope: !6572)
!6572 = distinct !DILexicalBlock(scope: !6567, file: !2, line: 462, column: 44)
!6573 = !DILocation(line: 464, column: 16, scope: !6572)
!6574 = !DILocation(line: 464, column: 24, scope: !6572)
!6575 = !DILocation(line: 464, column: 32, scope: !6572)
!6576 = !DILocation(line: 464, column: 30, scope: !6572)
!6577 = !DILocation(line: 463, column: 3, scope: !6572)
!6578 = !DILocation(line: 463, column: 16, scope: !6572)
!6579 = !DILocation(line: 463, column: 28, scope: !6572)
!6580 = !DILocation(line: 463, column: 30, scope: !6572)
!6581 = !DILocation(line: 466, column: 6, scope: !6572)
!6582 = !DILocation(line: 466, column: 16, scope: !6572)
!6583 = !DILocation(line: 466, column: 24, scope: !6572)
!6584 = !DILocation(line: 466, column: 32, scope: !6572)
!6585 = !DILocation(line: 466, column: 30, scope: !6572)
!6586 = !DILocation(line: 465, column: 3, scope: !6572)
!6587 = !DILocation(line: 465, column: 16, scope: !6572)
!6588 = !DILocation(line: 465, column: 28, scope: !6572)
!6589 = !DILocation(line: 465, column: 30, scope: !6572)
!6590 = !DILocation(line: 467, column: 7, scope: !6591)
!6591 = distinct !DILexicalBlock(scope: !6572, file: !2, line: 467, column: 7)
!6592 = !DILocation(line: 467, column: 13, scope: !6591)
!6593 = !DILocation(line: 467, column: 18, scope: !6591)
!6594 = !DILocation(line: 467, column: 7, scope: !6572)
!6595 = !DILocation(line: 468, column: 33, scope: !6591)
!6596 = !DILocation(line: 468, column: 4, scope: !6591)
!6597 = !DILocation(line: 468, column: 17, scope: !6591)
!6598 = !DILocation(line: 468, column: 29, scope: !6591)
!6599 = !DILocation(line: 468, column: 31, scope: !6591)
!6600 = !DILocation(line: 471, column: 6, scope: !6572)
!6601 = !DILocation(line: 471, column: 16, scope: !6572)
!6602 = !DILocation(line: 471, column: 24, scope: !6572)
!6603 = !DILocation(line: 471, column: 32, scope: !6572)
!6604 = !DILocation(line: 471, column: 30, scope: !6572)
!6605 = !DILocation(line: 470, column: 3, scope: !6572)
!6606 = !DILocation(line: 470, column: 16, scope: !6572)
!6607 = !DILocation(line: 470, column: 28, scope: !6572)
!6608 = !DILocation(line: 470, column: 30, scope: !6572)
!6609 = !DILocation(line: 473, column: 6, scope: !6572)
!6610 = !DILocation(line: 473, column: 16, scope: !6572)
!6611 = !DILocation(line: 473, column: 24, scope: !6572)
!6612 = !DILocation(line: 473, column: 32, scope: !6572)
!6613 = !DILocation(line: 473, column: 30, scope: !6572)
!6614 = !DILocation(line: 472, column: 3, scope: !6572)
!6615 = !DILocation(line: 472, column: 16, scope: !6572)
!6616 = !DILocation(line: 472, column: 28, scope: !6572)
!6617 = !DILocation(line: 472, column: 30, scope: !6572)
!6618 = !DILocation(line: 474, column: 7, scope: !6619)
!6619 = distinct !DILexicalBlock(scope: !6572, file: !2, line: 474, column: 7)
!6620 = !DILocation(line: 474, column: 13, scope: !6619)
!6621 = !DILocation(line: 474, column: 18, scope: !6619)
!6622 = !DILocation(line: 474, column: 7, scope: !6572)
!6623 = !DILocation(line: 475, column: 33, scope: !6619)
!6624 = !DILocation(line: 475, column: 46, scope: !6619)
!6625 = !DILocation(line: 475, column: 58, scope: !6619)
!6626 = !DILocation(line: 475, column: 4, scope: !6619)
!6627 = !DILocation(line: 475, column: 17, scope: !6619)
!6628 = !DILocation(line: 475, column: 29, scope: !6619)
!6629 = !DILocation(line: 475, column: 31, scope: !6619)
!6630 = !DILocation(line: 476, column: 2, scope: !6572)
!6631 = !DILocation(line: 478, column: 23, scope: !6498)
!6632 = !DILocation(line: 478, column: 35, scope: !6498)
!6633 = !DILocation(line: 478, column: 22, scope: !6498)
!6634 = !DILocation(line: 478, column: 2, scope: !6498)
!6635 = !DILocation(line: 478, column: 15, scope: !6498)
!6636 = !DILocation(line: 478, column: 20, scope: !6498)
!6637 = !DILocation(line: 479, column: 24, scope: !6498)
!6638 = !DILocation(line: 479, column: 36, scope: !6498)
!6639 = !DILocation(line: 479, column: 23, scope: !6498)
!6640 = !DILocation(line: 479, column: 2, scope: !6498)
!6641 = !DILocation(line: 479, column: 15, scope: !6498)
!6642 = !DILocation(line: 479, column: 21, scope: !6498)
!6643 = !DILocation(line: 487, column: 6, scope: !6644)
!6644 = distinct !DILexicalBlock(scope: !6498, file: !2, line: 487, column: 6)
!6645 = !DILocation(line: 487, column: 19, scope: !6644)
!6646 = !DILocation(line: 487, column: 6, scope: !6498)
!6647 = !DILocation(line: 488, column: 3, scope: !6644)
!6648 = !DILocation(line: 488, column: 16, scope: !6644)
!6649 = !DILocation(line: 488, column: 21, scope: !6644)
!6650 = !DILocation(line: 511, column: 1, scope: !6498)
!6651 = !DILocation(line: 510, column: 2, scope: !6498)
!6652 = !DISubprogram(name: "input_mt_assign_slots", scope: !4174, file: !4174, line: 123, type: !6653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6653 = !DISubroutineType(types: !6654)
!6654 = !{!115, !275, !2066, !6655, !115, !115}
!6655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6656, size: 64)
!6656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6290)
!6657 = distinct !DISubprogram(name: "input_mt_slot", scope: !4174, file: !4174, line: 85, type: !6658, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6660)
!6658 = !DISubroutineType(types: !6659)
!6659 = !{null, !275, !115}
!6660 = !{!6661, !6662}
!6661 = !DILocalVariable(name: "dev", arg: 1, scope: !6657, file: !4174, line: 85, type: !275)
!6662 = !DILocalVariable(name: "slot", arg: 2, scope: !6657, file: !4174, line: 85, type: !115)
!6663 = !DILocation(line: 85, column: 52, scope: !6657)
!6664 = !DILocation(line: 85, column: 61, scope: !6657)
!6665 = !DILocation(line: 87, column: 14, scope: !6657)
!6666 = !DILocation(line: 87, column: 40, scope: !6657)
!6667 = !DILocation(line: 87, column: 2, scope: !6657)
!6668 = !DILocation(line: 88, column: 1, scope: !6657)
!6669 = !DISubprogram(name: "input_mt_report_slot_state", scope: !4174, file: !4174, line: 100, type: !6670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6670 = !DISubroutineType(types: !6671)
!6671 = !{!730, !275, !37, !730}
!6672 = distinct !DISubprogram(name: "input_report_abs", scope: !277, file: !277, line: 433, type: !6155, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6673)
!6673 = !{!6674, !6675, !6676}
!6674 = !DILocalVariable(name: "dev", arg: 1, scope: !6672, file: !277, line: 433, type: !275)
!6675 = !DILocalVariable(name: "code", arg: 2, scope: !6672, file: !277, line: 433, type: !37)
!6676 = !DILocalVariable(name: "value", arg: 3, scope: !6672, file: !277, line: 433, type: !115)
!6677 = !DILocation(line: 433, column: 55, scope: !6672)
!6678 = !DILocation(line: 433, column: 73, scope: !6672)
!6679 = !DILocation(line: 433, column: 83, scope: !6672)
!6680 = !DILocation(line: 435, column: 14, scope: !6672)
!6681 = !DILocation(line: 435, column: 27, scope: !6672)
!6682 = !DILocation(line: 435, column: 33, scope: !6672)
!6683 = !DILocation(line: 435, column: 2, scope: !6672)
!6684 = !DILocation(line: 436, column: 1, scope: !6672)
!6685 = !DISubprogram(name: "input_mt_sync_frame", scope: !4174, file: !4174, line: 112, type: !4212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6686 = !DISubprogram(name: "input_mt_report_finger_count", scope: !4174, file: !4174, line: 108, type: !6658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6687 = distinct !DISubprogram(name: "input_report_key", scope: !277, file: !277, line: 423, type: !6155, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6688)
!6688 = !{!6689, !6690, !6691}
!6689 = !DILocalVariable(name: "dev", arg: 1, scope: !6687, file: !277, line: 423, type: !275)
!6690 = !DILocalVariable(name: "code", arg: 2, scope: !6687, file: !277, line: 423, type: !37)
!6691 = !DILocalVariable(name: "value", arg: 3, scope: !6687, file: !277, line: 423, type: !115)
!6692 = !DILocation(line: 423, column: 55, scope: !6687)
!6693 = !DILocation(line: 423, column: 73, scope: !6687)
!6694 = !DILocation(line: 423, column: 83, scope: !6687)
!6695 = !DILocation(line: 425, column: 14, scope: !6687)
!6696 = !DILocation(line: 425, column: 27, scope: !6687)
!6697 = !DILocation(line: 425, column: 35, scope: !6687)
!6698 = !DILocation(line: 425, column: 34, scope: !6687)
!6699 = !DILocation(line: 425, column: 33, scope: !6687)
!6700 = !DILocation(line: 425, column: 2, scope: !6687)
!6701 = !DILocation(line: 426, column: 1, scope: !6687)
!6702 = distinct !DISubprogram(name: "input_sync", scope: !277, file: !277, line: 448, type: !4212, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6703)
!6703 = !{!6704}
!6704 = !DILocalVariable(name: "dev", arg: 1, scope: !6702, file: !277, line: 448, type: !275)
!6705 = !DILocation(line: 448, column: 49, scope: !6702)
!6706 = !DILocation(line: 450, column: 14, scope: !6702)
!6707 = !DILocation(line: 450, column: 2, scope: !6702)
!6708 = !DILocation(line: 451, column: 1, scope: !6702)
!6709 = distinct !DISubprogram(name: "cypress_get_finger_count", scope: !2, file: !2, line: 417, type: !6710, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6712)
!6710 = !DISubroutineType(types: !6711)
!6711 = !{!115, !230}
!6712 = !{!6713, !6714, !6715}
!6713 = !DILocalVariable(name: "header_byte", arg: 1, scope: !6709, file: !2, line: 417, type: !230)
!6714 = !DILocalVariable(name: "bits6_7", scope: !6709, file: !2, line: 419, type: !230)
!6715 = !DILocalVariable(name: "finger_count", scope: !6709, file: !2, line: 420, type: !115)
!6716 = !DILocation(line: 417, column: 51, scope: !6709)
!6717 = !DILocation(line: 419, column: 2, scope: !6709)
!6718 = !DILocation(line: 419, column: 16, scope: !6709)
!6719 = !DILocation(line: 420, column: 2, scope: !6709)
!6720 = !DILocation(line: 420, column: 6, scope: !6709)
!6721 = !DILocation(line: 422, column: 12, scope: !6709)
!6722 = !DILocation(line: 422, column: 24, scope: !6709)
!6723 = !DILocation(line: 422, column: 10, scope: !6709)
!6724 = !DILocation(line: 423, column: 17, scope: !6709)
!6725 = !DILocation(line: 423, column: 25, scope: !6709)
!6726 = !DILocation(line: 423, column: 15, scope: !6709)
!6727 = !DILocation(line: 425, column: 6, scope: !6728)
!6728 = distinct !DILexicalBlock(scope: !6709, file: !2, line: 425, column: 6)
!6729 = !DILocation(line: 425, column: 19, scope: !6728)
!6730 = !DILocation(line: 425, column: 6, scope: !6709)
!6731 = !DILocation(line: 426, column: 3, scope: !6728)
!6732 = !DILocation(line: 428, column: 6, scope: !6733)
!6733 = distinct !DILexicalBlock(scope: !6709, file: !2, line: 428, column: 6)
!6734 = !DILocation(line: 428, column: 18, scope: !6733)
!6735 = !DILocation(line: 428, column: 6, scope: !6709)
!6736 = !DILocation(line: 430, column: 11, scope: !6737)
!6737 = distinct !DILexicalBlock(scope: !6733, file: !2, line: 428, column: 37)
!6738 = !DILocation(line: 430, column: 3, scope: !6737)
!6739 = !DILocation(line: 431, column: 12, scope: !6740)
!6740 = distinct !DILexicalBlock(scope: !6737, file: !2, line: 430, column: 25)
!6741 = !DILocation(line: 432, column: 12, scope: !6740)
!6742 = !DILocation(line: 435, column: 5, scope: !6740)
!6743 = !DILocation(line: 439, column: 9, scope: !6709)
!6744 = !DILocation(line: 439, column: 2, scope: !6709)
!6745 = !DILocation(line: 440, column: 1, scope: !6709)
!6746 = !DISubprogram(name: "input_event", scope: !277, file: !277, line: 420, type: !6747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6747 = !DISubroutineType(types: !6748)
!6748 = !{null, !275, !37, !37, !115}
!6749 = !DISubprogram(name: "ps2_command", scope: !154, file: !154, line: 69, type: !6750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6750 = !DISubroutineType(types: !6751)
!6751 = !{!115, !4757, !6752, !37}
!6752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
