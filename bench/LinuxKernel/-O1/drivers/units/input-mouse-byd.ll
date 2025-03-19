; ModuleID = 'drivers/input/mouse/byd.c'
source_filename = "drivers/input/mouse/byd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.13 = type { i16, i8 }
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
%struct.byd_data = type { %struct.timer_list, ptr, i32, i32, i64, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [12 x i64], [1 x i64], [1 x i64], [1 x i64], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
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
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@__const.byd_detect.param = private unnamed_addr constant [4 x i8] c"\03\00\00\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"BYD\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"TouchPad\00", align 1, !dbg !7
@byd_reset_touchpad.seq = internal constant [25 x %struct.anon.13] [%struct.anon.13 { i16 4339, i8 -56 }, %struct.anon.13 { i16 4339, i8 100 }, %struct.anon.13 { i16 4339, i8 80 }, %struct.anon.13 { i16 754, i8 0 }, %struct.anon.13 { i16 244, i8 0 }, %struct.anon.13 { i16 4322, i8 0 }, %struct.anon.13 { i16 4320, i8 2 }, %struct.anon.13 { i16 5344, i8 1 }, %struct.anon.13 { i16 4307, i8 1 }, %struct.anon.13 { i16 4304, i8 4 }, %struct.anon.13 { i16 4308, i8 2 }, %struct.anon.13 { i16 4311, i8 4 }, %struct.anon.13 { i16 4312, i8 4 }, %struct.anon.13 { i16 4315, i8 1 }, %struct.anon.13 { i16 4318, i8 0 }, %struct.anon.13 { i16 4323, i8 2 }, %struct.anon.13 { i16 4306, i8 4 }, %struct.anon.13 { i16 4325, i8 4 }, %struct.anon.13 { i16 4316, i8 0 }, %struct.anon.13 { i16 4317, i8 0 }, %struct.anon.13 { i16 4319, i8 0 }, %struct.anon.13 { i16 4321, i8 0 }, %struct.anon.13 { i16 4305, i8 2 }, %struct.anon.13 { i16 4320, i8 0 }, %struct.anon.13 { i16 4322, i8 1 }], align 16, !dbg !12
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4779
@.str.3 = private unnamed_addr constant [34 x i8] c"byd: Unable to initialize device\0A\00", align 1, !dbg !4784
@.str.4 = private unnamed_addr constant [40 x i8] c"byd: Always_1 bit not 1. pkt[0] = %02x\0A\00", align 1, !dbg !4789
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str.5 = private unnamed_addr constant [48 x i8] c"byd: Unrecognized Z: pkt = %02x %02x %02x %02x\0A\00", align 1, !dbg !4794

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @byd_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) #0 align 16 !dbg !4822 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %set_properties.addr = alloca i8, align 1
  %ps2dev = alloca ptr, align 8
  %param = alloca [4 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !4824, metadata !DIExpression()), !dbg !4828
  %frombool = zext i1 %set_properties to i8
  store i8 %frombool, ptr %set_properties.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %set_properties.addr, metadata !4825, metadata !DIExpression()), !dbg !4829
  call void @llvm.lifetime.start.p0(i64 8, ptr %ps2dev) #16, !dbg !4830
  call void @llvm.dbg.declare(metadata ptr %ps2dev, metadata !4826, metadata !DIExpression()), !dbg !4831
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !4832
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, !dbg !4833
  store ptr %ps2dev1, ptr %ps2dev, align 8, !dbg !4831
  call void @llvm.lifetime.start.p0(i64 4, ptr %param) #16, !dbg !4834
  call void @llvm.dbg.declare(metadata ptr %param, metadata !4827, metadata !DIExpression()), !dbg !4835
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %param, ptr align 1 @__const.byd_detect.param, i64 4, i1 false), !dbg !4835
  %1 = load ptr, ptr %ps2dev, align 8, !dbg !4836
  %arraydecay = getelementptr inbounds [4 x i8], ptr %param, i64 0, i64 0, !dbg !4838
  %call = call i32 @ps2_command(ptr noundef %1, ptr noundef %arraydecay, i32 noundef 4328) #17, !dbg !4839
  %tobool = icmp ne i32 %call, 0, !dbg !4839
  br i1 %tobool, label %if.then, label %if.end, !dbg !4840

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !4841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4841

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ps2dev, align 8, !dbg !4842
  %arraydecay2 = getelementptr inbounds [4 x i8], ptr %param, i64 0, i64 0, !dbg !4844
  %call3 = call i32 @ps2_command(ptr noundef %2, ptr noundef %arraydecay2, i32 noundef 4328) #17, !dbg !4845
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4845
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4846

if.then5:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !4847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4847

if.end6:                                          ; preds = %if.end
  %3 = load ptr, ptr %ps2dev, align 8, !dbg !4848
  %arraydecay7 = getelementptr inbounds [4 x i8], ptr %param, i64 0, i64 0, !dbg !4850
  %call8 = call i32 @ps2_command(ptr noundef %3, ptr noundef %arraydecay7, i32 noundef 4328) #17, !dbg !4851
  %tobool9 = icmp ne i32 %call8, 0, !dbg !4851
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4852

if.then10:                                        ; preds = %if.end6
  store i32 -1, ptr %retval, align 4, !dbg !4853
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4853

if.end11:                                         ; preds = %if.end6
  %4 = load ptr, ptr %ps2dev, align 8, !dbg !4854
  %arraydecay12 = getelementptr inbounds [4 x i8], ptr %param, i64 0, i64 0, !dbg !4856
  %call13 = call i32 @ps2_command(ptr noundef %4, ptr noundef %arraydecay12, i32 noundef 4328) #17, !dbg !4857
  %tobool14 = icmp ne i32 %call13, 0, !dbg !4857
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4858

if.then15:                                        ; preds = %if.end11
  store i32 -1, ptr %retval, align 4, !dbg !4859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4859

if.end16:                                         ; preds = %if.end11
  %5 = load ptr, ptr %ps2dev, align 8, !dbg !4860
  %arraydecay17 = getelementptr inbounds [4 x i8], ptr %param, i64 0, i64 0, !dbg !4862
  %call18 = call i32 @ps2_command(ptr noundef %5, ptr noundef %arraydecay17, i32 noundef 1001) #17, !dbg !4863
  %tobool19 = icmp ne i32 %call18, 0, !dbg !4863
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4864

if.then20:                                        ; preds = %if.end16
  store i32 -1, ptr %retval, align 4, !dbg !4865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4865

if.end21:                                         ; preds = %if.end16
  %arrayidx = getelementptr [4 x i8], ptr %param, i64 0, i64 1, !dbg !4866
  %6 = load i8, ptr %arrayidx, align 1, !dbg !4866
  %conv = zext i8 %6 to i32, !dbg !4866
  %cmp = icmp ne i32 %conv, 3, !dbg !4868
  br i1 %cmp, label %if.then27, label %lor.lhs.false, !dbg !4869

lor.lhs.false:                                    ; preds = %if.end21
  %arrayidx23 = getelementptr [4 x i8], ptr %param, i64 0, i64 2, !dbg !4870
  %7 = load i8, ptr %arrayidx23, align 1, !dbg !4870
  %conv24 = zext i8 %7 to i32, !dbg !4870
  %cmp25 = icmp ne i32 %conv24, 100, !dbg !4871
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4872

if.then27:                                        ; preds = %lor.lhs.false, %if.end21
  store i32 -19, ptr %retval, align 4, !dbg !4873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4873

if.end28:                                         ; preds = %lor.lhs.false
  %8 = load i8, ptr %set_properties.addr, align 1, !dbg !4874, !range !4876, !noundef !1351
  %tobool29 = trunc i8 %8 to i1, !dbg !4874
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !4877

if.then30:                                        ; preds = %if.end28
  %9 = load ptr, ptr %psmouse.addr, align 8, !dbg !4878
  %vendor = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 4, !dbg !4880
  store ptr @.str, ptr %vendor, align 8, !dbg !4881
  %10 = load ptr, ptr %psmouse.addr, align 8, !dbg !4882
  %name = getelementptr inbounds %struct.psmouse, ptr %10, i32 0, i32 5, !dbg !4883
  store ptr @.str.1, ptr %name, align 8, !dbg !4884
  br label %if.end31, !dbg !4885

if.end31:                                         ; preds = %if.then30, %if.end28
  store i32 0, ptr %retval, align 4, !dbg !4886
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4886

cleanup:                                          ; preds = %if.end31, %if.then27, %if.then20, %if.then15, %if.then10, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %param) #16, !dbg !4887
  call void @llvm.lifetime.end.p0(i64 8, ptr %ps2dev) #16, !dbg !4887
  %11 = load i32, ptr %retval, align 4, !dbg !4887
  ret i32 %11, !dbg !4887
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4888 dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @byd_init(ptr noundef %psmouse) #0 align 16 !dbg !4892 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %priv = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !4894, metadata !DIExpression()), !dbg !4897
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !4898
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !4895, metadata !DIExpression()), !dbg !4899
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !4900
  %dev1 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1, !dbg !4901
  %1 = load ptr, ptr %dev1, align 8, !dbg !4901
  store ptr %1, ptr %dev, align 8, !dbg !4899
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #16, !dbg !4902
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !4896, metadata !DIExpression()), !dbg !4903
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !4904
  %call = call i32 @psmouse_reset(ptr noundef %2) #17, !dbg !4906
  %tobool = icmp ne i32 %call, 0, !dbg !4906
  br i1 %tobool, label %if.then, label %if.end, !dbg !4907

if.then:                                          ; preds = %entry
  store i32 -5, ptr %retval, align 4, !dbg !4908
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4908

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %psmouse.addr, align 8, !dbg !4909
  %call2 = call i32 @byd_reset_touchpad(ptr noundef %3) #17, !dbg !4911
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4911
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4912

if.then4:                                         ; preds = %if.end
  store i32 -5, ptr %retval, align 4, !dbg !4913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4913

if.end5:                                          ; preds = %if.end
  %call6 = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #18, !dbg !4914
  store ptr %call6, ptr %priv, align 8, !dbg !4915
  %4 = load ptr, ptr %priv, align 8, !dbg !4916
  %tobool7 = icmp ne ptr %4, null, !dbg !4916
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4918

if.then8:                                         ; preds = %if.end5
  store i32 -12, ptr %retval, align 4, !dbg !4919
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4919

if.end9:                                          ; preds = %if.end5
  %5 = load ptr, ptr %psmouse.addr, align 8, !dbg !4920
  %6 = load ptr, ptr %priv, align 8, !dbg !4921
  %psmouse10 = getelementptr inbounds %struct.byd_data, ptr %6, i32 0, i32 1, !dbg !4922
  store ptr %5, ptr %psmouse10, align 8, !dbg !4923
  %7 = load ptr, ptr %priv, align 8, !dbg !4924
  %timer = getelementptr inbounds %struct.byd_data, ptr %7, i32 0, i32 0, !dbg !4924
  call void @init_timer_key(ptr noundef %timer, ptr noundef @byd_clear_touch, i32 noundef 0, ptr noundef null, ptr noundef null) #17, !dbg !4924
  %8 = load ptr, ptr %priv, align 8, !dbg !4925
  %9 = load ptr, ptr %psmouse.addr, align 8, !dbg !4926
  %private = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 0, !dbg !4927
  store ptr %8, ptr %private, align 8, !dbg !4928
  %10 = load ptr, ptr %psmouse.addr, align 8, !dbg !4929
  %disconnect = getelementptr inbounds %struct.psmouse, ptr %10, i32 0, i32 32, !dbg !4930
  store ptr @byd_disconnect, ptr %disconnect, align 8, !dbg !4931
  %11 = load ptr, ptr %psmouse.addr, align 8, !dbg !4932
  %reconnect = getelementptr inbounds %struct.psmouse, ptr %11, i32 0, i32 30, !dbg !4933
  store ptr @byd_reconnect, ptr %reconnect, align 8, !dbg !4934
  %12 = load ptr, ptr %psmouse.addr, align 8, !dbg !4935
  %protocol_handler = getelementptr inbounds %struct.psmouse, ptr %12, i32 0, i32 26, !dbg !4936
  store ptr @byd_process_byte, ptr %protocol_handler, align 8, !dbg !4937
  %13 = load ptr, ptr %psmouse.addr, align 8, !dbg !4938
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %13, i32 0, i32 10, !dbg !4939
  store i8 4, ptr %pktsize, align 2, !dbg !4940
  %14 = load ptr, ptr %psmouse.addr, align 8, !dbg !4941
  %resync_time = getelementptr inbounds %struct.psmouse, ptr %14, i32 0, i32 24, !dbg !4942
  store i32 0, ptr %resync_time, align 8, !dbg !4943
  %15 = load ptr, ptr %dev, align 8, !dbg !4944
  %propbit = getelementptr inbounds %struct.input_dev, ptr %15, i32 0, i32 4, !dbg !4944
  %arraydecay = getelementptr inbounds [1 x i64], ptr %propbit, i64 0, i64 0, !dbg !4944
  %16 = ptrtoint ptr %arraydecay to i64, !dbg !4944
  %cmp = icmp ne i64 %16, 0, !dbg !4944
  %conv = zext i1 %cmp to i32, !dbg !4944
  %17 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4944
  br i1 %17, label %land.lhs.true, label %cond.false, !dbg !4944

land.lhs.true:                                    ; preds = %if.end9
  %18 = load ptr, ptr %dev, align 8, !dbg !4944
  %propbit11 = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 4, !dbg !4944
  %arraydecay12 = getelementptr inbounds [1 x i64], ptr %propbit11, i64 0, i64 0, !dbg !4944
  %19 = ptrtoint ptr %arraydecay12 to i64, !dbg !4944
  %cmp13 = icmp ne i64 %19, 0, !dbg !4944
  br i1 %cmp13, label %land.lhs.true15, label %cond.false, !dbg !4944

land.lhs.true15:                                  ; preds = %land.lhs.true
  %20 = load ptr, ptr %dev, align 8, !dbg !4944
  %propbit16 = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 4, !dbg !4944
  %arraydecay17 = getelementptr inbounds [1 x i64], ptr %propbit16, i64 0, i64 0, !dbg !4944
  %21 = load i64, ptr %arraydecay17, align 8, !dbg !4944
  %22 = call i1 @llvm.is.constant.i64(i64 %21), !dbg !4944
  br i1 %22, label %cond.true, label %cond.false, !dbg !4944

cond.true:                                        ; preds = %land.lhs.true15
  %23 = load ptr, ptr %dev, align 8, !dbg !4944
  %propbit18 = getelementptr inbounds %struct.input_dev, ptr %23, i32 0, i32 4, !dbg !4944
  %arraydecay19 = getelementptr inbounds [1 x i64], ptr %propbit18, i64 0, i64 0, !dbg !4944
  call void @generic___set_bit(i64 noundef 0, ptr noundef %arraydecay19) #17, !dbg !4944
  br label %cond.end, !dbg !4944

cond.false:                                       ; preds = %land.lhs.true15, %land.lhs.true, %if.end9
  %24 = load ptr, ptr %dev, align 8, !dbg !4944
  %propbit20 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 4, !dbg !4944
  %arraydecay21 = getelementptr inbounds [1 x i64], ptr %propbit20, i64 0, i64 0, !dbg !4944
  call void @___set_bit(i64 noundef 0, ptr noundef %arraydecay21) #17, !dbg !4944
  br label %cond.end, !dbg !4944

cond.end:                                         ; preds = %cond.false, %cond.true
  %25 = load ptr, ptr %dev, align 8, !dbg !4945
  %keybit = getelementptr inbounds %struct.input_dev, ptr %25, i32 0, i32 6, !dbg !4945
  %arraydecay22 = getelementptr inbounds [12 x i64], ptr %keybit, i64 0, i64 0, !dbg !4945
  %26 = ptrtoint ptr %arraydecay22 to i64, !dbg !4945
  %cmp23 = icmp ne i64 %26, 0, !dbg !4945
  %conv24 = zext i1 %cmp23 to i32, !dbg !4945
  %27 = call i1 @llvm.is.constant.i32(i32 %conv24), !dbg !4945
  br i1 %27, label %land.lhs.true25, label %cond.false36, !dbg !4945

land.lhs.true25:                                  ; preds = %cond.end
  %28 = load ptr, ptr %dev, align 8, !dbg !4945
  %keybit26 = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 6, !dbg !4945
  %arraydecay27 = getelementptr inbounds [12 x i64], ptr %keybit26, i64 0, i64 0, !dbg !4945
  %29 = ptrtoint ptr %arraydecay27 to i64, !dbg !4945
  %cmp28 = icmp ne i64 %29, 0, !dbg !4945
  br i1 %cmp28, label %land.lhs.true30, label %cond.false36, !dbg !4945

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %30 = load ptr, ptr %dev, align 8, !dbg !4945
  %keybit31 = getelementptr inbounds %struct.input_dev, ptr %30, i32 0, i32 6, !dbg !4945
  %arraydecay32 = getelementptr inbounds [12 x i64], ptr %keybit31, i64 0, i64 0, !dbg !4945
  %31 = load i64, ptr %arraydecay32, align 8, !dbg !4945
  %32 = call i1 @llvm.is.constant.i64(i64 %31), !dbg !4945
  br i1 %32, label %cond.true33, label %cond.false36, !dbg !4945

cond.true33:                                      ; preds = %land.lhs.true30
  %33 = load ptr, ptr %dev, align 8, !dbg !4945
  %keybit34 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 6, !dbg !4945
  %arraydecay35 = getelementptr inbounds [12 x i64], ptr %keybit34, i64 0, i64 0, !dbg !4945
  call void @generic___set_bit(i64 noundef 330, ptr noundef %arraydecay35) #17, !dbg !4945
  br label %cond.end39, !dbg !4945

cond.false36:                                     ; preds = %land.lhs.true30, %land.lhs.true25, %cond.end
  %34 = load ptr, ptr %dev, align 8, !dbg !4945
  %keybit37 = getelementptr inbounds %struct.input_dev, ptr %34, i32 0, i32 6, !dbg !4945
  %arraydecay38 = getelementptr inbounds [12 x i64], ptr %keybit37, i64 0, i64 0, !dbg !4945
  call void @___set_bit(i64 noundef 330, ptr noundef %arraydecay38) #17, !dbg !4945
  br label %cond.end39, !dbg !4945

cond.end39:                                       ; preds = %cond.false36, %cond.true33
  %35 = load ptr, ptr %dev, align 8, !dbg !4946
  %keybit40 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 6, !dbg !4946
  %arraydecay41 = getelementptr inbounds [12 x i64], ptr %keybit40, i64 0, i64 0, !dbg !4946
  %36 = ptrtoint ptr %arraydecay41 to i64, !dbg !4946
  %cmp42 = icmp ne i64 %36, 0, !dbg !4946
  %conv43 = zext i1 %cmp42 to i32, !dbg !4946
  %37 = call i1 @llvm.is.constant.i32(i32 %conv43), !dbg !4946
  br i1 %37, label %land.lhs.true44, label %cond.false55, !dbg !4946

land.lhs.true44:                                  ; preds = %cond.end39
  %38 = load ptr, ptr %dev, align 8, !dbg !4946
  %keybit45 = getelementptr inbounds %struct.input_dev, ptr %38, i32 0, i32 6, !dbg !4946
  %arraydecay46 = getelementptr inbounds [12 x i64], ptr %keybit45, i64 0, i64 0, !dbg !4946
  %39 = ptrtoint ptr %arraydecay46 to i64, !dbg !4946
  %cmp47 = icmp ne i64 %39, 0, !dbg !4946
  br i1 %cmp47, label %land.lhs.true49, label %cond.false55, !dbg !4946

land.lhs.true49:                                  ; preds = %land.lhs.true44
  %40 = load ptr, ptr %dev, align 8, !dbg !4946
  %keybit50 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 6, !dbg !4946
  %arraydecay51 = getelementptr inbounds [12 x i64], ptr %keybit50, i64 0, i64 0, !dbg !4946
  %41 = load i64, ptr %arraydecay51, align 8, !dbg !4946
  %42 = call i1 @llvm.is.constant.i64(i64 %41), !dbg !4946
  br i1 %42, label %cond.true52, label %cond.false55, !dbg !4946

cond.true52:                                      ; preds = %land.lhs.true49
  %43 = load ptr, ptr %dev, align 8, !dbg !4946
  %keybit53 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 6, !dbg !4946
  %arraydecay54 = getelementptr inbounds [12 x i64], ptr %keybit53, i64 0, i64 0, !dbg !4946
  call void @generic___set_bit(i64 noundef 325, ptr noundef %arraydecay54) #17, !dbg !4946
  br label %cond.end58, !dbg !4946

cond.false55:                                     ; preds = %land.lhs.true49, %land.lhs.true44, %cond.end39
  %44 = load ptr, ptr %dev, align 8, !dbg !4946
  %keybit56 = getelementptr inbounds %struct.input_dev, ptr %44, i32 0, i32 6, !dbg !4946
  %arraydecay57 = getelementptr inbounds [12 x i64], ptr %keybit56, i64 0, i64 0, !dbg !4946
  call void @___set_bit(i64 noundef 325, ptr noundef %arraydecay57) #17, !dbg !4946
  br label %cond.end58, !dbg !4946

cond.end58:                                       ; preds = %cond.false55, %cond.true52
  %45 = load ptr, ptr %dev, align 8, !dbg !4947
  %keybit59 = getelementptr inbounds %struct.input_dev, ptr %45, i32 0, i32 6, !dbg !4947
  %arraydecay60 = getelementptr inbounds [12 x i64], ptr %keybit59, i64 0, i64 0, !dbg !4947
  %46 = ptrtoint ptr %arraydecay60 to i64, !dbg !4947
  %cmp61 = icmp ne i64 %46, 0, !dbg !4947
  %conv62 = zext i1 %cmp61 to i32, !dbg !4947
  %47 = call i1 @llvm.is.constant.i32(i32 %conv62), !dbg !4947
  br i1 %47, label %land.lhs.true63, label %cond.false74, !dbg !4947

land.lhs.true63:                                  ; preds = %cond.end58
  %48 = load ptr, ptr %dev, align 8, !dbg !4947
  %keybit64 = getelementptr inbounds %struct.input_dev, ptr %48, i32 0, i32 6, !dbg !4947
  %arraydecay65 = getelementptr inbounds [12 x i64], ptr %keybit64, i64 0, i64 0, !dbg !4947
  %49 = ptrtoint ptr %arraydecay65 to i64, !dbg !4947
  %cmp66 = icmp ne i64 %49, 0, !dbg !4947
  br i1 %cmp66, label %land.lhs.true68, label %cond.false74, !dbg !4947

land.lhs.true68:                                  ; preds = %land.lhs.true63
  %50 = load ptr, ptr %dev, align 8, !dbg !4947
  %keybit69 = getelementptr inbounds %struct.input_dev, ptr %50, i32 0, i32 6, !dbg !4947
  %arraydecay70 = getelementptr inbounds [12 x i64], ptr %keybit69, i64 0, i64 0, !dbg !4947
  %51 = load i64, ptr %arraydecay70, align 8, !dbg !4947
  %52 = call i1 @llvm.is.constant.i64(i64 %51), !dbg !4947
  br i1 %52, label %cond.true71, label %cond.false74, !dbg !4947

cond.true71:                                      ; preds = %land.lhs.true68
  %53 = load ptr, ptr %dev, align 8, !dbg !4947
  %keybit72 = getelementptr inbounds %struct.input_dev, ptr %53, i32 0, i32 6, !dbg !4947
  %arraydecay73 = getelementptr inbounds [12 x i64], ptr %keybit72, i64 0, i64 0, !dbg !4947
  call void @generic___set_bit(i64 noundef 272, ptr noundef %arraydecay73) #17, !dbg !4947
  br label %cond.end77, !dbg !4947

cond.false74:                                     ; preds = %land.lhs.true68, %land.lhs.true63, %cond.end58
  %54 = load ptr, ptr %dev, align 8, !dbg !4947
  %keybit75 = getelementptr inbounds %struct.input_dev, ptr %54, i32 0, i32 6, !dbg !4947
  %arraydecay76 = getelementptr inbounds [12 x i64], ptr %keybit75, i64 0, i64 0, !dbg !4947
  call void @___set_bit(i64 noundef 272, ptr noundef %arraydecay76) #17, !dbg !4947
  br label %cond.end77, !dbg !4947

cond.end77:                                       ; preds = %cond.false74, %cond.true71
  %55 = load ptr, ptr %dev, align 8, !dbg !4948
  %keybit78 = getelementptr inbounds %struct.input_dev, ptr %55, i32 0, i32 6, !dbg !4948
  %arraydecay79 = getelementptr inbounds [12 x i64], ptr %keybit78, i64 0, i64 0, !dbg !4948
  %56 = ptrtoint ptr %arraydecay79 to i64, !dbg !4948
  %cmp80 = icmp ne i64 %56, 0, !dbg !4948
  %conv81 = zext i1 %cmp80 to i32, !dbg !4948
  %57 = call i1 @llvm.is.constant.i32(i32 %conv81), !dbg !4948
  br i1 %57, label %land.lhs.true82, label %cond.false93, !dbg !4948

land.lhs.true82:                                  ; preds = %cond.end77
  %58 = load ptr, ptr %dev, align 8, !dbg !4948
  %keybit83 = getelementptr inbounds %struct.input_dev, ptr %58, i32 0, i32 6, !dbg !4948
  %arraydecay84 = getelementptr inbounds [12 x i64], ptr %keybit83, i64 0, i64 0, !dbg !4948
  %59 = ptrtoint ptr %arraydecay84 to i64, !dbg !4948
  %cmp85 = icmp ne i64 %59, 0, !dbg !4948
  br i1 %cmp85, label %land.lhs.true87, label %cond.false93, !dbg !4948

land.lhs.true87:                                  ; preds = %land.lhs.true82
  %60 = load ptr, ptr %dev, align 8, !dbg !4948
  %keybit88 = getelementptr inbounds %struct.input_dev, ptr %60, i32 0, i32 6, !dbg !4948
  %arraydecay89 = getelementptr inbounds [12 x i64], ptr %keybit88, i64 0, i64 0, !dbg !4948
  %61 = load i64, ptr %arraydecay89, align 8, !dbg !4948
  %62 = call i1 @llvm.is.constant.i64(i64 %61), !dbg !4948
  br i1 %62, label %cond.true90, label %cond.false93, !dbg !4948

cond.true90:                                      ; preds = %land.lhs.true87
  %63 = load ptr, ptr %dev, align 8, !dbg !4948
  %keybit91 = getelementptr inbounds %struct.input_dev, ptr %63, i32 0, i32 6, !dbg !4948
  %arraydecay92 = getelementptr inbounds [12 x i64], ptr %keybit91, i64 0, i64 0, !dbg !4948
  call void @generic___set_bit(i64 noundef 273, ptr noundef %arraydecay92) #17, !dbg !4948
  br label %cond.end96, !dbg !4948

cond.false93:                                     ; preds = %land.lhs.true87, %land.lhs.true82, %cond.end77
  %64 = load ptr, ptr %dev, align 8, !dbg !4948
  %keybit94 = getelementptr inbounds %struct.input_dev, ptr %64, i32 0, i32 6, !dbg !4948
  %arraydecay95 = getelementptr inbounds [12 x i64], ptr %keybit94, i64 0, i64 0, !dbg !4948
  call void @___set_bit(i64 noundef 273, ptr noundef %arraydecay95) #17, !dbg !4948
  br label %cond.end96, !dbg !4948

cond.end96:                                       ; preds = %cond.false93, %cond.true90
  %65 = load ptr, ptr %dev, align 8, !dbg !4949
  %keybit97 = getelementptr inbounds %struct.input_dev, ptr %65, i32 0, i32 6, !dbg !4949
  %arraydecay98 = getelementptr inbounds [12 x i64], ptr %keybit97, i64 0, i64 0, !dbg !4949
  %66 = ptrtoint ptr %arraydecay98 to i64, !dbg !4949
  %cmp99 = icmp ne i64 %66, 0, !dbg !4949
  %conv100 = zext i1 %cmp99 to i32, !dbg !4949
  %67 = call i1 @llvm.is.constant.i32(i32 %conv100), !dbg !4949
  br i1 %67, label %land.lhs.true101, label %cond.false112, !dbg !4949

land.lhs.true101:                                 ; preds = %cond.end96
  %68 = load ptr, ptr %dev, align 8, !dbg !4949
  %keybit102 = getelementptr inbounds %struct.input_dev, ptr %68, i32 0, i32 6, !dbg !4949
  %arraydecay103 = getelementptr inbounds [12 x i64], ptr %keybit102, i64 0, i64 0, !dbg !4949
  %69 = ptrtoint ptr %arraydecay103 to i64, !dbg !4949
  %cmp104 = icmp ne i64 %69, 0, !dbg !4949
  br i1 %cmp104, label %land.lhs.true106, label %cond.false112, !dbg !4949

land.lhs.true106:                                 ; preds = %land.lhs.true101
  %70 = load ptr, ptr %dev, align 8, !dbg !4949
  %keybit107 = getelementptr inbounds %struct.input_dev, ptr %70, i32 0, i32 6, !dbg !4949
  %arraydecay108 = getelementptr inbounds [12 x i64], ptr %keybit107, i64 0, i64 0, !dbg !4949
  %71 = load i64, ptr %arraydecay108, align 8, !dbg !4949
  %72 = call i1 @llvm.is.constant.i64(i64 %71), !dbg !4949
  br i1 %72, label %cond.true109, label %cond.false112, !dbg !4949

cond.true109:                                     ; preds = %land.lhs.true106
  %73 = load ptr, ptr %dev, align 8, !dbg !4949
  %keybit110 = getelementptr inbounds %struct.input_dev, ptr %73, i32 0, i32 6, !dbg !4949
  %arraydecay111 = getelementptr inbounds [12 x i64], ptr %keybit110, i64 0, i64 0, !dbg !4949
  call void @generic___clear_bit(i64 noundef 274, ptr noundef %arraydecay111) #17, !dbg !4949
  br label %cond.end115, !dbg !4949

cond.false112:                                    ; preds = %land.lhs.true106, %land.lhs.true101, %cond.end96
  %74 = load ptr, ptr %dev, align 8, !dbg !4949
  %keybit113 = getelementptr inbounds %struct.input_dev, ptr %74, i32 0, i32 6, !dbg !4949
  %arraydecay114 = getelementptr inbounds [12 x i64], ptr %keybit113, i64 0, i64 0, !dbg !4949
  call void @___clear_bit(i64 noundef 274, ptr noundef %arraydecay114) #17, !dbg !4949
  br label %cond.end115, !dbg !4949

cond.end115:                                      ; preds = %cond.false112, %cond.true109
  %75 = load ptr, ptr %dev, align 8, !dbg !4950
  %evbit = getelementptr inbounds %struct.input_dev, ptr %75, i32 0, i32 5, !dbg !4950
  %arraydecay116 = getelementptr inbounds [1 x i64], ptr %evbit, i64 0, i64 0, !dbg !4950
  %76 = ptrtoint ptr %arraydecay116 to i64, !dbg !4950
  %cmp117 = icmp ne i64 %76, 0, !dbg !4950
  %conv118 = zext i1 %cmp117 to i32, !dbg !4950
  %77 = call i1 @llvm.is.constant.i32(i32 %conv118), !dbg !4950
  br i1 %77, label %land.lhs.true119, label %cond.false130, !dbg !4950

land.lhs.true119:                                 ; preds = %cond.end115
  %78 = load ptr, ptr %dev, align 8, !dbg !4950
  %evbit120 = getelementptr inbounds %struct.input_dev, ptr %78, i32 0, i32 5, !dbg !4950
  %arraydecay121 = getelementptr inbounds [1 x i64], ptr %evbit120, i64 0, i64 0, !dbg !4950
  %79 = ptrtoint ptr %arraydecay121 to i64, !dbg !4950
  %cmp122 = icmp ne i64 %79, 0, !dbg !4950
  br i1 %cmp122, label %land.lhs.true124, label %cond.false130, !dbg !4950

land.lhs.true124:                                 ; preds = %land.lhs.true119
  %80 = load ptr, ptr %dev, align 8, !dbg !4950
  %evbit125 = getelementptr inbounds %struct.input_dev, ptr %80, i32 0, i32 5, !dbg !4950
  %arraydecay126 = getelementptr inbounds [1 x i64], ptr %evbit125, i64 0, i64 0, !dbg !4950
  %81 = load i64, ptr %arraydecay126, align 8, !dbg !4950
  %82 = call i1 @llvm.is.constant.i64(i64 %81), !dbg !4950
  br i1 %82, label %cond.true127, label %cond.false130, !dbg !4950

cond.true127:                                     ; preds = %land.lhs.true124
  %83 = load ptr, ptr %dev, align 8, !dbg !4950
  %evbit128 = getelementptr inbounds %struct.input_dev, ptr %83, i32 0, i32 5, !dbg !4950
  %arraydecay129 = getelementptr inbounds [1 x i64], ptr %evbit128, i64 0, i64 0, !dbg !4950
  call void @generic___set_bit(i64 noundef 3, ptr noundef %arraydecay129) #17, !dbg !4950
  br label %cond.end133, !dbg !4950

cond.false130:                                    ; preds = %land.lhs.true124, %land.lhs.true119, %cond.end115
  %84 = load ptr, ptr %dev, align 8, !dbg !4950
  %evbit131 = getelementptr inbounds %struct.input_dev, ptr %84, i32 0, i32 5, !dbg !4950
  %arraydecay132 = getelementptr inbounds [1 x i64], ptr %evbit131, i64 0, i64 0, !dbg !4950
  call void @___set_bit(i64 noundef 3, ptr noundef %arraydecay132) #17, !dbg !4950
  br label %cond.end133, !dbg !4950

cond.end133:                                      ; preds = %cond.false130, %cond.true127
  %85 = load ptr, ptr %dev, align 8, !dbg !4951
  call void @input_set_abs_params(ptr noundef %85, i32 noundef 0, i32 noundef 0, i32 noundef 11264, i32 noundef 0, i32 noundef 0) #17, !dbg !4952
  %86 = load ptr, ptr %dev, align 8, !dbg !4953
  call void @input_set_abs_params(ptr noundef %86, i32 noundef 1, i32 noundef 0, i32 noundef 6656, i32 noundef 0, i32 noundef 0) #17, !dbg !4954
  %87 = load ptr, ptr %dev, align 8, !dbg !4955
  call void @input_abs_set_res(ptr noundef %87, i32 noundef 0, i32 noundef 111) #17, !dbg !4956
  %88 = load ptr, ptr %dev, align 8, !dbg !4957
  call void @input_abs_set_res(ptr noundef %88, i32 noundef 1, i32 noundef 111) #17, !dbg !4958
  %89 = load ptr, ptr %dev, align 8, !dbg !4959
  %evbit134 = getelementptr inbounds %struct.input_dev, ptr %89, i32 0, i32 5, !dbg !4959
  %arraydecay135 = getelementptr inbounds [1 x i64], ptr %evbit134, i64 0, i64 0, !dbg !4959
  %90 = ptrtoint ptr %arraydecay135 to i64, !dbg !4959
  %cmp136 = icmp ne i64 %90, 0, !dbg !4959
  %conv137 = zext i1 %cmp136 to i32, !dbg !4959
  %91 = call i1 @llvm.is.constant.i32(i32 %conv137), !dbg !4959
  br i1 %91, label %land.lhs.true138, label %cond.false149, !dbg !4959

land.lhs.true138:                                 ; preds = %cond.end133
  %92 = load ptr, ptr %dev, align 8, !dbg !4959
  %evbit139 = getelementptr inbounds %struct.input_dev, ptr %92, i32 0, i32 5, !dbg !4959
  %arraydecay140 = getelementptr inbounds [1 x i64], ptr %evbit139, i64 0, i64 0, !dbg !4959
  %93 = ptrtoint ptr %arraydecay140 to i64, !dbg !4959
  %cmp141 = icmp ne i64 %93, 0, !dbg !4959
  br i1 %cmp141, label %land.lhs.true143, label %cond.false149, !dbg !4959

land.lhs.true143:                                 ; preds = %land.lhs.true138
  %94 = load ptr, ptr %dev, align 8, !dbg !4959
  %evbit144 = getelementptr inbounds %struct.input_dev, ptr %94, i32 0, i32 5, !dbg !4959
  %arraydecay145 = getelementptr inbounds [1 x i64], ptr %evbit144, i64 0, i64 0, !dbg !4959
  %95 = load i64, ptr %arraydecay145, align 8, !dbg !4959
  %96 = call i1 @llvm.is.constant.i64(i64 %95), !dbg !4959
  br i1 %96, label %cond.true146, label %cond.false149, !dbg !4959

cond.true146:                                     ; preds = %land.lhs.true143
  %97 = load ptr, ptr %dev, align 8, !dbg !4959
  %evbit147 = getelementptr inbounds %struct.input_dev, ptr %97, i32 0, i32 5, !dbg !4959
  %arraydecay148 = getelementptr inbounds [1 x i64], ptr %evbit147, i64 0, i64 0, !dbg !4959
  call void @generic___clear_bit(i64 noundef 2, ptr noundef %arraydecay148) #17, !dbg !4959
  br label %cond.end152, !dbg !4959

cond.false149:                                    ; preds = %land.lhs.true143, %land.lhs.true138, %cond.end133
  %98 = load ptr, ptr %dev, align 8, !dbg !4959
  %evbit150 = getelementptr inbounds %struct.input_dev, ptr %98, i32 0, i32 5, !dbg !4959
  %arraydecay151 = getelementptr inbounds [1 x i64], ptr %evbit150, i64 0, i64 0, !dbg !4959
  call void @___clear_bit(i64 noundef 2, ptr noundef %arraydecay151) #17, !dbg !4959
  br label %cond.end152, !dbg !4959

cond.end152:                                      ; preds = %cond.false149, %cond.true146
  %99 = load ptr, ptr %dev, align 8, !dbg !4960
  %relbit = getelementptr inbounds %struct.input_dev, ptr %99, i32 0, i32 7, !dbg !4960
  %arraydecay153 = getelementptr inbounds [1 x i64], ptr %relbit, i64 0, i64 0, !dbg !4960
  %100 = ptrtoint ptr %arraydecay153 to i64, !dbg !4960
  %cmp154 = icmp ne i64 %100, 0, !dbg !4960
  %conv155 = zext i1 %cmp154 to i32, !dbg !4960
  %101 = call i1 @llvm.is.constant.i32(i32 %conv155), !dbg !4960
  br i1 %101, label %land.lhs.true156, label %cond.false167, !dbg !4960

land.lhs.true156:                                 ; preds = %cond.end152
  %102 = load ptr, ptr %dev, align 8, !dbg !4960
  %relbit157 = getelementptr inbounds %struct.input_dev, ptr %102, i32 0, i32 7, !dbg !4960
  %arraydecay158 = getelementptr inbounds [1 x i64], ptr %relbit157, i64 0, i64 0, !dbg !4960
  %103 = ptrtoint ptr %arraydecay158 to i64, !dbg !4960
  %cmp159 = icmp ne i64 %103, 0, !dbg !4960
  br i1 %cmp159, label %land.lhs.true161, label %cond.false167, !dbg !4960

land.lhs.true161:                                 ; preds = %land.lhs.true156
  %104 = load ptr, ptr %dev, align 8, !dbg !4960
  %relbit162 = getelementptr inbounds %struct.input_dev, ptr %104, i32 0, i32 7, !dbg !4960
  %arraydecay163 = getelementptr inbounds [1 x i64], ptr %relbit162, i64 0, i64 0, !dbg !4960
  %105 = load i64, ptr %arraydecay163, align 8, !dbg !4960
  %106 = call i1 @llvm.is.constant.i64(i64 %105), !dbg !4960
  br i1 %106, label %cond.true164, label %cond.false167, !dbg !4960

cond.true164:                                     ; preds = %land.lhs.true161
  %107 = load ptr, ptr %dev, align 8, !dbg !4960
  %relbit165 = getelementptr inbounds %struct.input_dev, ptr %107, i32 0, i32 7, !dbg !4960
  %arraydecay166 = getelementptr inbounds [1 x i64], ptr %relbit165, i64 0, i64 0, !dbg !4960
  call void @generic___clear_bit(i64 noundef 0, ptr noundef %arraydecay166) #17, !dbg !4960
  br label %cond.end170, !dbg !4960

cond.false167:                                    ; preds = %land.lhs.true161, %land.lhs.true156, %cond.end152
  %108 = load ptr, ptr %dev, align 8, !dbg !4960
  %relbit168 = getelementptr inbounds %struct.input_dev, ptr %108, i32 0, i32 7, !dbg !4960
  %arraydecay169 = getelementptr inbounds [1 x i64], ptr %relbit168, i64 0, i64 0, !dbg !4960
  call void @___clear_bit(i64 noundef 0, ptr noundef %arraydecay169) #17, !dbg !4960
  br label %cond.end170, !dbg !4960

cond.end170:                                      ; preds = %cond.false167, %cond.true164
  %109 = load ptr, ptr %dev, align 8, !dbg !4961
  %relbit171 = getelementptr inbounds %struct.input_dev, ptr %109, i32 0, i32 7, !dbg !4961
  %arraydecay172 = getelementptr inbounds [1 x i64], ptr %relbit171, i64 0, i64 0, !dbg !4961
  %110 = ptrtoint ptr %arraydecay172 to i64, !dbg !4961
  %cmp173 = icmp ne i64 %110, 0, !dbg !4961
  %conv174 = zext i1 %cmp173 to i32, !dbg !4961
  %111 = call i1 @llvm.is.constant.i32(i32 %conv174), !dbg !4961
  br i1 %111, label %land.lhs.true175, label %cond.false186, !dbg !4961

land.lhs.true175:                                 ; preds = %cond.end170
  %112 = load ptr, ptr %dev, align 8, !dbg !4961
  %relbit176 = getelementptr inbounds %struct.input_dev, ptr %112, i32 0, i32 7, !dbg !4961
  %arraydecay177 = getelementptr inbounds [1 x i64], ptr %relbit176, i64 0, i64 0, !dbg !4961
  %113 = ptrtoint ptr %arraydecay177 to i64, !dbg !4961
  %cmp178 = icmp ne i64 %113, 0, !dbg !4961
  br i1 %cmp178, label %land.lhs.true180, label %cond.false186, !dbg !4961

land.lhs.true180:                                 ; preds = %land.lhs.true175
  %114 = load ptr, ptr %dev, align 8, !dbg !4961
  %relbit181 = getelementptr inbounds %struct.input_dev, ptr %114, i32 0, i32 7, !dbg !4961
  %arraydecay182 = getelementptr inbounds [1 x i64], ptr %relbit181, i64 0, i64 0, !dbg !4961
  %115 = load i64, ptr %arraydecay182, align 8, !dbg !4961
  %116 = call i1 @llvm.is.constant.i64(i64 %115), !dbg !4961
  br i1 %116, label %cond.true183, label %cond.false186, !dbg !4961

cond.true183:                                     ; preds = %land.lhs.true180
  %117 = load ptr, ptr %dev, align 8, !dbg !4961
  %relbit184 = getelementptr inbounds %struct.input_dev, ptr %117, i32 0, i32 7, !dbg !4961
  %arraydecay185 = getelementptr inbounds [1 x i64], ptr %relbit184, i64 0, i64 0, !dbg !4961
  call void @generic___clear_bit(i64 noundef 1, ptr noundef %arraydecay185) #17, !dbg !4961
  br label %cond.end189, !dbg !4961

cond.false186:                                    ; preds = %land.lhs.true180, %land.lhs.true175, %cond.end170
  %118 = load ptr, ptr %dev, align 8, !dbg !4961
  %relbit187 = getelementptr inbounds %struct.input_dev, ptr %118, i32 0, i32 7, !dbg !4961
  %arraydecay188 = getelementptr inbounds [1 x i64], ptr %relbit187, i64 0, i64 0, !dbg !4961
  call void @___clear_bit(i64 noundef 1, ptr noundef %arraydecay188) #17, !dbg !4961
  br label %cond.end189, !dbg !4961

cond.end189:                                      ; preds = %cond.false186, %cond.true183
  store i32 0, ptr %retval, align 4, !dbg !4962
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4962

cleanup:                                          ; preds = %cond.end189, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #16, !dbg !4963
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !4963
  %119 = load i32, ptr %retval, align 4, !dbg !4963
  ret i32 %119, !dbg !4963
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4964 dso_local i32 @psmouse_reset(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @byd_reset_touchpad(ptr noundef %psmouse) #0 align 16 !dbg !14 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %ps2dev = alloca ptr, align 8
  %param = alloca [4 x i8], align 1
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !4800, metadata !DIExpression()), !dbg !4965
  call void @llvm.lifetime.start.p0(i64 8, ptr %ps2dev) #16, !dbg !4966
  call void @llvm.dbg.declare(metadata ptr %ps2dev, metadata !4801, metadata !DIExpression()), !dbg !4967
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !4968
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, !dbg !4969
  store ptr %ps2dev1, ptr %ps2dev, align 8, !dbg !4967
  call void @llvm.lifetime.start.p0(i64 4, ptr %param) #16, !dbg !4970
  call void @llvm.dbg.declare(metadata ptr %param, metadata !4802, metadata !DIExpression()), !dbg !4971
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16, !dbg !4972
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4804, metadata !DIExpression()), !dbg !4973
  store i64 0, ptr %i, align 8, !dbg !4974
  br label %for.cond, !dbg !4976

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !dbg !4977
  %cmp = icmp ult i64 %1, 25, !dbg !4979
  br i1 %cmp, label %for.body, label %for.end, !dbg !4980

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [4 x i8], ptr %param, i64 0, i64 0, !dbg !4981
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay, i8 0, i64 4, i1 false), !dbg !4981
  %2 = load i64, ptr %i, align 8, !dbg !4983
  %arrayidx = getelementptr [25 x %struct.anon.13], ptr @byd_reset_touchpad.seq, i64 0, i64 %2, !dbg !4984
  %arg = getelementptr inbounds %struct.anon.13, ptr %arrayidx, i32 0, i32 1, !dbg !4985
  %3 = load i8, ptr %arg, align 2, !dbg !4985
  %arrayidx2 = getelementptr [4 x i8], ptr %param, i64 0, i64 0, !dbg !4986
  store i8 %3, ptr %arrayidx2, align 1, !dbg !4987
  %4 = load ptr, ptr %ps2dev, align 8, !dbg !4988
  %arraydecay3 = getelementptr inbounds [4 x i8], ptr %param, i64 0, i64 0, !dbg !4990
  %5 = load i64, ptr %i, align 8, !dbg !4991
  %arrayidx4 = getelementptr [25 x %struct.anon.13], ptr @byd_reset_touchpad.seq, i64 0, i64 %5, !dbg !4992
  %command = getelementptr inbounds %struct.anon.13, ptr %arrayidx4, i32 0, i32 0, !dbg !4993
  %6 = load i16, ptr %command, align 4, !dbg !4993
  %conv = zext i16 %6 to i32, !dbg !4992
  %call = call i32 @ps2_command(ptr noundef %4, ptr noundef %arraydecay3, i32 noundef %conv) #17, !dbg !4994
  %tobool = icmp ne i32 %call, 0, !dbg !4994
  br i1 %tobool, label %if.then, label %if.end, !dbg !4995

if.then:                                          ; preds = %for.body
  store i32 -5, ptr %retval, align 4, !dbg !4996
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4996

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4997

for.inc:                                          ; preds = %if.end
  %7 = load i64, ptr %i, align 8, !dbg !4998
  %inc = add i64 %7, 1, !dbg !4998
  store i64 %inc, ptr %i, align 8, !dbg !4998
  br label %for.cond, !dbg !4999, !llvm.loop !5000

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %psmouse.addr, align 8, !dbg !5004
  call void @psmouse_set_state(ptr noundef %8, i32 noundef 4) #17, !dbg !5005
  store i32 0, ptr %retval, align 4, !dbg !5006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5006

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16, !dbg !5007
  call void @llvm.lifetime.end.p0(i64 4, ptr %param) #16, !dbg !5007
  call void @llvm.lifetime.end.p0(i64 8, ptr %ps2dev) #16, !dbg !5007
  %9 = load i32, ptr %retval, align 4, !dbg !5007
  ret i32 %9, !dbg !5007
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !5008 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5012, metadata !DIExpression()), !dbg !5014
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5013, metadata !DIExpression()), !dbg !5015
  %0 = load i64, ptr %size.addr, align 8, !dbg !5016
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5017
  %or = or i32 %1, 256, !dbg !5018
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !5019
  ret ptr %call, !dbg !5020
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5021 dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @byd_clear_touch(ptr noundef %t) #0 align 16 !dbg !5025 {
entry:
  %t.addr = alloca ptr, align 8
  %priv = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %psmouse = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !5027, metadata !DIExpression()), !dbg !5032
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #16, !dbg !5033
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !5028, metadata !DIExpression()), !dbg !5034
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5035
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5029, metadata !DIExpression()), !dbg !5035
  %0 = load ptr, ptr %t.addr, align 8, !dbg !5035
  store ptr %0, ptr %__mptr, align 8, !dbg !5035
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5035
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5035
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5035
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5036
  %2 = load ptr, ptr %tmp, align 8, !dbg !5035
  store ptr %2, ptr %priv, align 8, !dbg !5034
  call void @llvm.lifetime.start.p0(i64 8, ptr %psmouse) #16, !dbg !5037
  call void @llvm.dbg.declare(metadata ptr %psmouse, metadata !5031, metadata !DIExpression()), !dbg !5038
  %3 = load ptr, ptr %priv, align 8, !dbg !5039
  %psmouse1 = getelementptr inbounds %struct.byd_data, ptr %3, i32 0, i32 1, !dbg !5040
  %4 = load ptr, ptr %psmouse1, align 8, !dbg !5040
  store ptr %4, ptr %psmouse, align 8, !dbg !5038
  %5 = load ptr, ptr %psmouse, align 8, !dbg !5041
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 2, !dbg !5042
  %serio = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 0, !dbg !5043
  %6 = load ptr, ptr %serio, align 8, !dbg !5043
  call void @serio_pause_rx(ptr noundef %6) #17, !dbg !5044
  %7 = load ptr, ptr %priv, align 8, !dbg !5045
  %touch = getelementptr inbounds %struct.byd_data, ptr %7, i32 0, i32 7, !dbg !5046
  store i8 0, ptr %touch, align 2, !dbg !5047
  %8 = load ptr, ptr %psmouse, align 8, !dbg !5048
  call void @byd_report_input(ptr noundef %8) #17, !dbg !5049
  %9 = load ptr, ptr %psmouse, align 8, !dbg !5050
  %ps2dev2 = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 2, !dbg !5051
  %serio3 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev2, i32 0, i32 0, !dbg !5052
  %10 = load ptr, ptr %serio3, align 8, !dbg !5052
  call void @serio_continue_rx(ptr noundef %10) #17, !dbg !5053
  %11 = load ptr, ptr %priv, align 8, !dbg !5054
  %abs_x = getelementptr inbounds %struct.byd_data, ptr %11, i32 0, i32 2, !dbg !5055
  store i32 5632, ptr %abs_x, align 8, !dbg !5056
  %12 = load ptr, ptr %priv, align 8, !dbg !5057
  %abs_y = getelementptr inbounds %struct.byd_data, ptr %12, i32 0, i32 3, !dbg !5058
  store i32 3328, ptr %abs_y, align 4, !dbg !5059
  call void @llvm.lifetime.end.p0(i64 8, ptr %psmouse) #16, !dbg !5060
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #16, !dbg !5060
  ret void, !dbg !5060
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @byd_disconnect(ptr noundef %psmouse) #0 align 16 !dbg !5061 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %priv = alloca ptr, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5063, metadata !DIExpression()), !dbg !5065
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #16, !dbg !5066
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !5064, metadata !DIExpression()), !dbg !5067
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5068
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !5069
  %1 = load ptr, ptr %private, align 8, !dbg !5069
  store ptr %1, ptr %priv, align 8, !dbg !5067
  %2 = load ptr, ptr %priv, align 8, !dbg !5070
  %tobool = icmp ne ptr %2, null, !dbg !5070
  br i1 %tobool, label %if.then, label %if.end, !dbg !5072

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %priv, align 8, !dbg !5073
  %timer = getelementptr inbounds %struct.byd_data, ptr %3, i32 0, i32 0, !dbg !5075
  %call = call i32 @del_timer(ptr noundef %timer) #17, !dbg !5076
  %4 = load ptr, ptr %psmouse.addr, align 8, !dbg !5077
  %private1 = getelementptr inbounds %struct.psmouse, ptr %4, i32 0, i32 0, !dbg !5078
  %5 = load ptr, ptr %private1, align 8, !dbg !5078
  call void @kfree(ptr noundef %5) #17, !dbg !5079
  %6 = load ptr, ptr %psmouse.addr, align 8, !dbg !5080
  %private2 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 0, !dbg !5081
  store ptr null, ptr %private2, align 8, !dbg !5082
  br label %if.end, !dbg !5083

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #16, !dbg !5084
  ret void, !dbg !5084
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @byd_reconnect(ptr noundef %psmouse) #0 align 16 !dbg !5085 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %retry = alloca i32, align 4
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5087, metadata !DIExpression()), !dbg !5090
  call void @llvm.lifetime.start.p0(i64 4, ptr %retry) #16, !dbg !5091
  call void @llvm.dbg.declare(metadata ptr %retry, metadata !5088, metadata !DIExpression()), !dbg !5092
  store i32 0, ptr %retry, align 4, !dbg !5092
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !5091
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5089, metadata !DIExpression()), !dbg !5093
  store i32 0, ptr %error, align 4, !dbg !5093
  br label %do.body, !dbg !5094

do.body:                                          ; preds = %land.end, %entry
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5095
  %call = call i32 @psmouse_reset(ptr noundef %0) #17, !dbg !5097
  %1 = load i32, ptr %retry, align 4, !dbg !5098
  %tobool = icmp ne i32 %1, 0, !dbg !5098
  br i1 %tobool, label %if.then, label %if.end, !dbg !5100

if.then:                                          ; preds = %do.body
  call void @ssleep(i32 noundef 1) #17, !dbg !5101
  br label %if.end, !dbg !5101

if.end:                                           ; preds = %if.then, %do.body
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !5102
  %call1 = call i32 @byd_detect(ptr noundef %2, i1 noundef zeroext false) #17, !dbg !5103
  store i32 %call1, ptr %error, align 4, !dbg !5104
  br label %do.cond, !dbg !5105

do.cond:                                          ; preds = %if.end
  %3 = load i32, ptr %error, align 4, !dbg !5106
  %tobool2 = icmp ne i32 %3, 0, !dbg !5106
  br i1 %tobool2, label %land.rhs, label %land.end, !dbg !5107

land.rhs:                                         ; preds = %do.cond
  %4 = load i32, ptr %retry, align 4, !dbg !5108
  %inc = add i32 %4, 1, !dbg !5108
  store i32 %inc, ptr %retry, align 4, !dbg !5108
  %cmp = icmp slt i32 %inc, 3, !dbg !5109
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %5 = phi i1 [ false, %do.cond ], [ %cmp, %land.rhs ], !dbg !5110
  br i1 %5, label %do.body, label %do.end, !dbg !5105, !llvm.loop !5111

do.end:                                           ; preds = %land.end
  %6 = load i32, ptr %error, align 4, !dbg !5113
  %tobool3 = icmp ne i32 %6, 0, !dbg !5113
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5115

if.then4:                                         ; preds = %do.end
  %7 = load i32, ptr %error, align 4, !dbg !5116
  store i32 %7, ptr %retval, align 4, !dbg !5117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5117

if.end5:                                          ; preds = %do.end
  %8 = load ptr, ptr %psmouse.addr, align 8, !dbg !5118
  %call6 = call i32 @byd_reset_touchpad(ptr noundef %8) #17, !dbg !5119
  store i32 %call6, ptr %error, align 4, !dbg !5120
  %9 = load i32, ptr %error, align 4, !dbg !5121
  %tobool7 = icmp ne i32 %9, 0, !dbg !5121
  br i1 %tobool7, label %if.then8, label %if.end12, !dbg !5123

if.then8:                                         ; preds = %if.end5
  br label %do.body9, !dbg !5124

do.body9:                                         ; preds = %if.then8
  br label %do.cond10, !dbg !5127

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5127

do.end11:                                         ; preds = %do.cond10
  %10 = load ptr, ptr %psmouse.addr, align 8, !dbg !5124
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %10, i32 0, i32 2, !dbg !5124
  %serio = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 0, !dbg !5124
  %11 = load ptr, ptr %serio, align 8, !dbg !5124
  %dev = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 18, !dbg !5124
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.3) #19, !dbg !5124
  %12 = load i32, ptr %error, align 4, !dbg !5129
  store i32 %12, ptr %retval, align 4, !dbg !5130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5130

if.end12:                                         ; preds = %if.end5
  store i32 0, ptr %retval, align 4, !dbg !5131
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5131

cleanup:                                          ; preds = %if.end12, %do.end11, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !5132
  call void @llvm.lifetime.end.p0(i64 4, ptr %retry) #16, !dbg !5132
  %13 = load i32, ptr %retval, align 4, !dbg !5132
  ret i32 %13, !dbg !5132
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @byd_process_byte(ptr noundef %psmouse) #0 align 16 !dbg !5133 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %priv = alloca ptr, align 8
  %pkt = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tap_time = alloca i64, align 8
  %signx = alloca i32, align 4
  %signy = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5135, metadata !DIExpression()), !dbg !5147
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #16, !dbg !5148
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !5136, metadata !DIExpression()), !dbg !5149
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5150
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !5151
  %1 = load ptr, ptr %private, align 8, !dbg !5151
  store ptr %1, ptr %priv, align 8, !dbg !5149
  call void @llvm.lifetime.start.p0(i64 8, ptr %pkt) #16, !dbg !5152
  call void @llvm.dbg.declare(metadata ptr %pkt, metadata !5137, metadata !DIExpression()), !dbg !5153
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !5154
  %packet = getelementptr inbounds %struct.psmouse, ptr %2, i32 0, i32 7, !dbg !5155
  %arraydecay = getelementptr inbounds [8 x i8], ptr %packet, i64 0, i64 0, !dbg !5154
  store ptr %arraydecay, ptr %pkt, align 8, !dbg !5153
  %3 = load ptr, ptr %psmouse.addr, align 8, !dbg !5156
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 9, !dbg !5158
  %4 = load i8, ptr %pktcnt, align 1, !dbg !5158
  %conv = zext i8 %4 to i32, !dbg !5156
  %cmp = icmp sgt i32 %conv, 0, !dbg !5159
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5160

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %pkt, align 8, !dbg !5161
  %arrayidx = getelementptr i8, ptr %5, i64 0, !dbg !5161
  %6 = load i8, ptr %arrayidx, align 1, !dbg !5161
  %conv2 = zext i8 %6 to i64, !dbg !5161
  %and = and i64 %conv2, 8, !dbg !5162
  %tobool = icmp ne i64 %and, 0, !dbg !5162
  br i1 %tobool, label %if.end, label %if.then, !dbg !5163

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !5164

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5167

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5167

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %psmouse.addr, align 8, !dbg !5164
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %7, i32 0, i32 2, !dbg !5164
  %serio = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 0, !dbg !5164
  %8 = load ptr, ptr %serio, align 8, !dbg !5164
  %dev = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 18, !dbg !5164
  %9 = load ptr, ptr %pkt, align 8, !dbg !5164
  %arrayidx3 = getelementptr i8, ptr %9, i64 0, !dbg !5164
  %10 = load i8, ptr %arrayidx3, align 1, !dbg !5164
  %conv4 = zext i8 %10 to i32, !dbg !5164
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef @.str.4, i32 noundef %conv4) #19, !dbg !5164
  store i32 0, ptr %retval, align 4, !dbg !5169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5169

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load ptr, ptr %psmouse.addr, align 8, !dbg !5170
  %pktcnt5 = getelementptr inbounds %struct.psmouse, ptr %11, i32 0, i32 9, !dbg !5172
  %12 = load i8, ptr %pktcnt5, align 1, !dbg !5172
  %conv6 = zext i8 %12 to i32, !dbg !5170
  %13 = load ptr, ptr %psmouse.addr, align 8, !dbg !5173
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %13, i32 0, i32 10, !dbg !5174
  %14 = load i8, ptr %pktsize, align 2, !dbg !5174
  %conv7 = zext i8 %14 to i32, !dbg !5173
  %cmp8 = icmp slt i32 %conv6, %conv7, !dbg !5175
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !5176

if.then10:                                        ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5177

if.end11:                                         ; preds = %if.end
  %15 = load ptr, ptr %pkt, align 8, !dbg !5178
  %arrayidx12 = getelementptr i8, ptr %15, i64 3, !dbg !5178
  %16 = load i8, ptr %arrayidx12, align 1, !dbg !5178
  %conv13 = zext i8 %16 to i32, !dbg !5178
  switch i32 %conv13, label %sw.default [
    i32 248, label %sw.bb
    i32 0, label %sw.bb26
  ], !dbg !5179

sw.bb:                                            ; preds = %if.end11
  %17 = load ptr, ptr %priv, align 8, !dbg !5180
  %touch = getelementptr inbounds %struct.byd_data, ptr %17, i32 0, i32 7, !dbg !5181
  %18 = load i8, ptr %touch, align 2, !dbg !5181, !range !4876, !noundef !1351
  %tobool14 = trunc i8 %18 to i1, !dbg !5181
  br i1 %tobool14, label %if.end25, label %if.then15, !dbg !5182

if.then15:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 8, ptr %tap_time) #16, !dbg !5183
  call void @llvm.dbg.declare(metadata ptr %tap_time, metadata !5138, metadata !DIExpression()), !dbg !5184
  %19 = load ptr, ptr %priv, align 8, !dbg !5185
  %last_touch_time = getelementptr inbounds %struct.byd_data, ptr %19, i32 0, i32 4, !dbg !5186
  %20 = load volatile i64, ptr %last_touch_time, align 8, !dbg !5186
  %call = call i64 @msecs_to_jiffies(i32 noundef 64) #17, !dbg !5187
  %add = add i64 %20, %call, !dbg !5188
  store volatile i64 %add, ptr %tap_time, align 8, !dbg !5184
  %21 = load volatile i64, ptr %tap_time, align 8, !dbg !5189
  %22 = load volatile i64, ptr @jiffies, align 64, !dbg !5189
  %sub = sub i64 %21, %22, !dbg !5189
  %cmp16 = icmp slt i64 %sub, 0, !dbg !5189
  %23 = load ptr, ptr %priv, align 8, !dbg !5190
  %touch18 = getelementptr inbounds %struct.byd_data, ptr %23, i32 0, i32 7, !dbg !5191
  %frombool = zext i1 %cmp16 to i8, !dbg !5192
  store i8 %frombool, ptr %touch18, align 2, !dbg !5192
  %24 = load ptr, ptr %pkt, align 8, !dbg !5193
  %arrayidx19 = getelementptr i8, ptr %24, i64 1, !dbg !5193
  %25 = load i8, ptr %arrayidx19, align 1, !dbg !5193
  %conv20 = zext i8 %25 to i32, !dbg !5193
  %mul = mul i32 %conv20, 44, !dbg !5194
  %26 = load ptr, ptr %priv, align 8, !dbg !5195
  %abs_x = getelementptr inbounds %struct.byd_data, ptr %26, i32 0, i32 2, !dbg !5196
  store i32 %mul, ptr %abs_x, align 8, !dbg !5197
  %27 = load ptr, ptr %pkt, align 8, !dbg !5198
  %arrayidx21 = getelementptr i8, ptr %27, i64 2, !dbg !5198
  %28 = load i8, ptr %arrayidx21, align 1, !dbg !5198
  %conv22 = zext i8 %28 to i32, !dbg !5198
  %sub23 = sub i32 255, %conv22, !dbg !5199
  %mul24 = mul i32 %sub23, 26, !dbg !5200
  %29 = load ptr, ptr %priv, align 8, !dbg !5201
  %abs_y = getelementptr inbounds %struct.byd_data, ptr %29, i32 0, i32 3, !dbg !5202
  store i32 %mul24, ptr %abs_y, align 4, !dbg !5203
  call void @llvm.lifetime.end.p0(i64 8, ptr %tap_time) #16, !dbg !5204
  br label %if.end25, !dbg !5205

if.end25:                                         ; preds = %if.then15, %sw.bb
  br label %sw.epilog, !dbg !5206

sw.bb26:                                          ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr %signx) #16, !dbg !5207
  call void @llvm.dbg.declare(metadata ptr %signx, metadata !5142, metadata !DIExpression()), !dbg !5208
  %30 = load ptr, ptr %pkt, align 8, !dbg !5209
  %arrayidx27 = getelementptr i8, ptr %30, i64 0, !dbg !5209
  %31 = load i8, ptr %arrayidx27, align 1, !dbg !5209
  %conv28 = zext i8 %31 to i64, !dbg !5209
  %and29 = and i64 %conv28, 16, !dbg !5210
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5209
  %32 = zext i1 %tobool30 to i64, !dbg !5209
  %cond = select i1 %tobool30, i32 -256, i32 0, !dbg !5209
  store i32 %cond, ptr %signx, align 4, !dbg !5208
  call void @llvm.lifetime.start.p0(i64 4, ptr %signy) #16, !dbg !5211
  call void @llvm.dbg.declare(metadata ptr %signy, metadata !5144, metadata !DIExpression()), !dbg !5212
  %33 = load ptr, ptr %pkt, align 8, !dbg !5213
  %arrayidx31 = getelementptr i8, ptr %33, i64 0, !dbg !5213
  %34 = load i8, ptr %arrayidx31, align 1, !dbg !5213
  %conv32 = zext i8 %34 to i64, !dbg !5213
  %and33 = and i64 %conv32, 32, !dbg !5214
  %tobool34 = icmp ne i64 %and33, 0, !dbg !5213
  %35 = zext i1 %tobool34 to i64, !dbg !5213
  %cond35 = select i1 %tobool34, i32 -256, i32 0, !dbg !5213
  store i32 %cond35, ptr %signy, align 4, !dbg !5212
  call void @llvm.lifetime.start.p0(i64 4, ptr %dx) #16, !dbg !5215
  call void @llvm.dbg.declare(metadata ptr %dx, metadata !5145, metadata !DIExpression()), !dbg !5216
  %36 = load i32, ptr %signx, align 4, !dbg !5217
  %37 = load ptr, ptr %pkt, align 8, !dbg !5218
  %arrayidx36 = getelementptr i8, ptr %37, i64 1, !dbg !5218
  %38 = load i8, ptr %arrayidx36, align 1, !dbg !5218
  %conv37 = zext i8 %38 to i32, !dbg !5219
  %or = or i32 %36, %conv37, !dbg !5220
  store i32 %or, ptr %dx, align 4, !dbg !5216
  call void @llvm.lifetime.start.p0(i64 4, ptr %dy) #16, !dbg !5221
  call void @llvm.dbg.declare(metadata ptr %dy, metadata !5146, metadata !DIExpression()), !dbg !5222
  %39 = load i32, ptr %signy, align 4, !dbg !5223
  %40 = load ptr, ptr %pkt, align 8, !dbg !5224
  %arrayidx38 = getelementptr i8, ptr %40, i64 2, !dbg !5224
  %41 = load i8, ptr %arrayidx38, align 1, !dbg !5224
  %conv39 = zext i8 %41 to i32, !dbg !5225
  %or40 = or i32 %39, %conv39, !dbg !5226
  store i32 %or40, ptr %dy, align 4, !dbg !5222
  %42 = load i32, ptr %dx, align 4, !dbg !5227
  %mul41 = mul i32 %42, 11, !dbg !5228
  %43 = load ptr, ptr %priv, align 8, !dbg !5229
  %abs_x42 = getelementptr inbounds %struct.byd_data, ptr %43, i32 0, i32 2, !dbg !5230
  %44 = load i32, ptr %abs_x42, align 8, !dbg !5231
  %add43 = add i32 %44, %mul41, !dbg !5231
  store i32 %add43, ptr %abs_x42, align 8, !dbg !5231
  %45 = load i32, ptr %dy, align 4, !dbg !5232
  %mul44 = mul i32 %45, 11, !dbg !5233
  %46 = load ptr, ptr %priv, align 8, !dbg !5234
  %abs_y45 = getelementptr inbounds %struct.byd_data, ptr %46, i32 0, i32 3, !dbg !5235
  %47 = load i32, ptr %abs_y45, align 4, !dbg !5236
  %sub46 = sub i32 %47, %mul44, !dbg !5236
  store i32 %sub46, ptr %abs_y45, align 4, !dbg !5236
  %48 = load ptr, ptr %priv, align 8, !dbg !5237
  %touch47 = getelementptr inbounds %struct.byd_data, ptr %48, i32 0, i32 7, !dbg !5238
  store i8 1, ptr %touch47, align 2, !dbg !5239
  store i32 4, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dy) #16, !dbg !5240
  call void @llvm.lifetime.end.p0(i64 4, ptr %dx) #16, !dbg !5240
  call void @llvm.lifetime.end.p0(i64 4, ptr %signy) #16, !dbg !5240
  call void @llvm.lifetime.end.p0(i64 4, ptr %signx) #16, !dbg !5240
  br label %sw.epilog

sw.default:                                       ; preds = %if.end11
  br label %do.body48, !dbg !5241

do.body48:                                        ; preds = %sw.default
  br label %do.cond49, !dbg !5243

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !5243

do.end50:                                         ; preds = %do.cond49
  %49 = load ptr, ptr %psmouse.addr, align 8, !dbg !5241
  %ps2dev51 = getelementptr inbounds %struct.psmouse, ptr %49, i32 0, i32 2, !dbg !5241
  %serio52 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev51, i32 0, i32 0, !dbg !5241
  %50 = load ptr, ptr %serio52, align 8, !dbg !5241
  %dev53 = getelementptr inbounds %struct.serio, ptr %50, i32 0, i32 18, !dbg !5241
  %51 = load ptr, ptr %psmouse.addr, align 8, !dbg !5241
  %packet54 = getelementptr inbounds %struct.psmouse, ptr %51, i32 0, i32 7, !dbg !5241
  %arrayidx55 = getelementptr [8 x i8], ptr %packet54, i64 0, i64 0, !dbg !5241
  %52 = load i8, ptr %arrayidx55, align 8, !dbg !5241
  %conv56 = zext i8 %52 to i32, !dbg !5241
  %53 = load ptr, ptr %psmouse.addr, align 8, !dbg !5241
  %packet57 = getelementptr inbounds %struct.psmouse, ptr %53, i32 0, i32 7, !dbg !5241
  %arrayidx58 = getelementptr [8 x i8], ptr %packet57, i64 0, i64 1, !dbg !5241
  %54 = load i8, ptr %arrayidx58, align 1, !dbg !5241
  %conv59 = zext i8 %54 to i32, !dbg !5241
  %55 = load ptr, ptr %psmouse.addr, align 8, !dbg !5241
  %packet60 = getelementptr inbounds %struct.psmouse, ptr %55, i32 0, i32 7, !dbg !5241
  %arrayidx61 = getelementptr [8 x i8], ptr %packet60, i64 0, i64 2, !dbg !5241
  %56 = load i8, ptr %arrayidx61, align 2, !dbg !5241
  %conv62 = zext i8 %56 to i32, !dbg !5241
  %57 = load ptr, ptr %psmouse.addr, align 8, !dbg !5241
  %packet63 = getelementptr inbounds %struct.psmouse, ptr %57, i32 0, i32 7, !dbg !5241
  %arrayidx64 = getelementptr [8 x i8], ptr %packet63, i64 0, i64 3, !dbg !5241
  %58 = load i8, ptr %arrayidx64, align 1, !dbg !5241
  %conv65 = zext i8 %58 to i32, !dbg !5241
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev53, ptr noundef @.str.5, i32 noundef %conv56, i32 noundef %conv59, i32 noundef %conv62, i32 noundef %conv65) #19, !dbg !5241
  store i32 0, ptr %retval, align 4, !dbg !5245
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5245

sw.epilog:                                        ; preds = %sw.bb26, %if.end25
  %59 = load ptr, ptr %pkt, align 8, !dbg !5246
  %arrayidx66 = getelementptr i8, ptr %59, i64 0, !dbg !5246
  %60 = load i8, ptr %arrayidx66, align 1, !dbg !5246
  %conv67 = zext i8 %60 to i64, !dbg !5246
  %and68 = and i64 %conv67, 1, !dbg !5247
  %tobool69 = icmp ne i64 %and68, 0, !dbg !5246
  %61 = load ptr, ptr %priv, align 8, !dbg !5248
  %btn_left = getelementptr inbounds %struct.byd_data, ptr %61, i32 0, i32 5, !dbg !5249
  %frombool70 = zext i1 %tobool69 to i8, !dbg !5250
  store i8 %frombool70, ptr %btn_left, align 8, !dbg !5250
  %62 = load ptr, ptr %pkt, align 8, !dbg !5251
  %arrayidx71 = getelementptr i8, ptr %62, i64 0, !dbg !5251
  %63 = load i8, ptr %arrayidx71, align 1, !dbg !5251
  %conv72 = zext i8 %63 to i64, !dbg !5251
  %and73 = and i64 %conv72, 2, !dbg !5252
  %tobool74 = icmp ne i64 %and73, 0, !dbg !5251
  %64 = load ptr, ptr %priv, align 8, !dbg !5253
  %btn_right = getelementptr inbounds %struct.byd_data, ptr %64, i32 0, i32 6, !dbg !5254
  %frombool75 = zext i1 %tobool74 to i8, !dbg !5255
  store i8 %frombool75, ptr %btn_right, align 1, !dbg !5255
  %65 = load ptr, ptr %psmouse.addr, align 8, !dbg !5256
  call void @byd_report_input(ptr noundef %65) #17, !dbg !5257
  %66 = load ptr, ptr %priv, align 8, !dbg !5258
  %touch76 = getelementptr inbounds %struct.byd_data, ptr %66, i32 0, i32 7, !dbg !5260
  %67 = load i8, ptr %touch76, align 2, !dbg !5260, !range !4876, !noundef !1351
  %tobool77 = trunc i8 %67 to i1, !dbg !5260
  br i1 %tobool77, label %if.then78, label %if.end83, !dbg !5261

if.then78:                                        ; preds = %sw.epilog
  %68 = load volatile i64, ptr @jiffies, align 64, !dbg !5262
  %69 = load ptr, ptr %priv, align 8, !dbg !5264
  %last_touch_time79 = getelementptr inbounds %struct.byd_data, ptr %69, i32 0, i32 4, !dbg !5265
  store volatile i64 %68, ptr %last_touch_time79, align 8, !dbg !5266
  %70 = load ptr, ptr %priv, align 8, !dbg !5267
  %timer = getelementptr inbounds %struct.byd_data, ptr %70, i32 0, i32 0, !dbg !5268
  %71 = load volatile i64, ptr @jiffies, align 64, !dbg !5269
  %call80 = call i64 @msecs_to_jiffies(i32 noundef 64) #17, !dbg !5270
  %add81 = add i64 %71, %call80, !dbg !5271
  %call82 = call i32 @mod_timer(ptr noundef %timer, i64 noundef %add81) #17, !dbg !5272
  br label %if.end83, !dbg !5273

if.end83:                                         ; preds = %if.then78, %sw.epilog
  store i32 2, ptr %retval, align 4, !dbg !5274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5274

cleanup:                                          ; preds = %if.end83, %do.end50, %if.then10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %pkt) #16, !dbg !5275
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #16, !dbg !5275
  %72 = load i32, ptr %retval, align 4, !dbg !5275
  ret i32 %72, !dbg !5275
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5276 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5282, metadata !DIExpression()), !dbg !5286
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5283, metadata !DIExpression()), !dbg !5287
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !5288
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5284, metadata !DIExpression()), !dbg !5289
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5290
  %rem = urem i64 %0, 64, !dbg !5290
  %shl = shl i64 1, %rem, !dbg !5290
  store i64 %shl, ptr %mask, align 8, !dbg !5289
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5291
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5285, metadata !DIExpression()), !dbg !5292
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5293
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5294
  %div = udiv i64 %2, 64, !dbg !5294
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !5295
  store ptr %add.ptr, ptr %p, align 8, !dbg !5292
  %3 = load i64, ptr %mask, align 8, !dbg !5296
  %4 = load ptr, ptr %p, align 8, !dbg !5297
  %5 = load i64, ptr %4, align 8, !dbg !5298
  %or = or i64 %5, %3, !dbg !5298
  store i64 %or, ptr %4, align 8, !dbg !5298
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5299
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !5299
  ret void, !dbg !5299
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5300 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5303, metadata !DIExpression()), !dbg !5305
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5304, metadata !DIExpression()), !dbg !5306
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5307
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5308
  %div = udiv i64 %1, 64, !dbg !5308
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5309
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !5310
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5311
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5312
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5313
  ret void, !dbg !5314
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5315 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5317, metadata !DIExpression()), !dbg !5321
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5318, metadata !DIExpression()), !dbg !5322
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !5323
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5319, metadata !DIExpression()), !dbg !5324
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5325
  %rem = urem i64 %0, 64, !dbg !5325
  %shl = shl i64 1, %rem, !dbg !5325
  store i64 %shl, ptr %mask, align 8, !dbg !5324
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5326
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5320, metadata !DIExpression()), !dbg !5327
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5328
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5329
  %div = udiv i64 %2, 64, !dbg !5329
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !5330
  store ptr %add.ptr, ptr %p, align 8, !dbg !5327
  %3 = load i64, ptr %mask, align 8, !dbg !5331
  %not = xor i64 %3, -1, !dbg !5332
  %4 = load ptr, ptr %p, align 8, !dbg !5333
  %5 = load i64, ptr %4, align 8, !dbg !5334
  %and = and i64 %5, %not, !dbg !5334
  store i64 %and, ptr %4, align 8, !dbg !5334
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5335
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !5335
  ret void, !dbg !5335
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5336 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5338, metadata !DIExpression()), !dbg !5340
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5339, metadata !DIExpression()), !dbg !5341
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5342
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5343
  %div = udiv i64 %1, 64, !dbg !5343
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5344
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !5345
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5346
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5347
  call void @arch___clear_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5348
  ret void, !dbg !5349
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5350 dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_abs_set_res(ptr noundef %dev, i32 noundef %axis, i32 noundef %val) #8 align 16 !dbg !5353 {
entry:
  %dev.addr = alloca ptr, align 8
  %axis.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5357, metadata !DIExpression()), !dbg !5360
  store i32 %axis, ptr %axis.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %axis.addr, metadata !5358, metadata !DIExpression()), !dbg !5360
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5359, metadata !DIExpression()), !dbg !5360
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5360
  call void @input_alloc_absinfo(ptr noundef %0) #17, !dbg !5360
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5361
  %absinfo = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 26, !dbg !5361
  %2 = load ptr, ptr %absinfo, align 8, !dbg !5361
  %tobool = icmp ne ptr %2, null, !dbg !5361
  br i1 %tobool, label %if.then, label %if.end, !dbg !5360

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %val.addr, align 4, !dbg !5361
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5361
  %absinfo1 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 26, !dbg !5361
  %5 = load ptr, ptr %absinfo1, align 8, !dbg !5361
  %6 = load i32, ptr %axis.addr, align 4, !dbg !5361
  %idxprom = zext i32 %6 to i64, !dbg !5361
  %arrayidx = getelementptr %struct.input_absinfo, ptr %5, i64 %idxprom, !dbg !5361
  %resolution = getelementptr inbounds %struct.input_absinfo, ptr %arrayidx, i32 0, i32 5, !dbg !5361
  store i32 %3, ptr %resolution, align 4, !dbg !5361
  br label %if.end, !dbg !5361

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5360
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5363 dso_local void @psmouse_set_state(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !5366 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5368, metadata !DIExpression()), !dbg !5373
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5369, metadata !DIExpression()), !dbg !5374
  %0 = load i64, ptr %size.addr, align 8, !dbg !5375
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5376
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5377

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5378
  %tobool = icmp ne i64 %2, 0, !dbg !5378
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5379

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5380
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5370, metadata !DIExpression()), !dbg !5381
  %3 = load i64, ptr %size.addr, align 8, !dbg !5382
  %cmp = icmp ugt i64 %3, 8192, !dbg !5384
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5385

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5386
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5387
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !5388
  store ptr %call, ptr %retval, align 8, !dbg !5389
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5389

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5390
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5390
  store i32 %call2, ptr %index, align 4, !dbg !5391
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5392
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5393
  %9 = ptrtoint ptr %8 to i64, !dbg !5393
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5394
  %idxprom = zext i32 %call3 to i64, !dbg !5395
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5395
  %10 = load i32, ptr %index, align 4, !dbg !5396
  %idxprom4 = zext i32 %10 to i64, !dbg !5395
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5395
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5395
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5397
  %13 = load i64, ptr %size.addr, align 8, !dbg !5398
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !5399
  store ptr %call6, ptr %retval, align 8, !dbg !5400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5400

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5401
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5402
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5403
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !5404
  store ptr %call8, ptr %retval, align 8, !dbg !5405
  br label %return, !dbg !5405

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5406
  ret ptr %16, !dbg !5406
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5407 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !5408 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5412, metadata !DIExpression()), !dbg !5414
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5413, metadata !DIExpression()), !dbg !5415
  %0 = load i64, ptr %size.addr, align 8, !dbg !5416
  %tobool = icmp ne i64 %0, 0, !dbg !5416
  br i1 %tobool, label %if.end, label %if.then, !dbg !5418

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5419
  br label %return, !dbg !5419

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5420
  %cmp = icmp ule i64 %1, 8, !dbg !5422
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5423

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5424
  br label %return, !dbg !5424

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5425
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5427
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5428

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5429
  %cmp4 = icmp ule i64 %3, 96, !dbg !5430
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5431

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5432
  br label %return, !dbg !5432

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5433
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5435
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5436

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5437
  %cmp9 = icmp ule i64 %5, 192, !dbg !5438
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5439

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5440
  br label %return, !dbg !5440

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5441
  %cmp12 = icmp ule i64 %6, 8, !dbg !5443
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5444

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5445
  br label %return, !dbg !5445

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5446
  %cmp15 = icmp ule i64 %7, 16, !dbg !5448
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5449

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5450
  br label %return, !dbg !5450

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5451
  %cmp18 = icmp ule i64 %8, 32, !dbg !5453
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5454

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5455
  br label %return, !dbg !5455

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5456
  %cmp21 = icmp ule i64 %9, 64, !dbg !5458
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5459

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5460
  br label %return, !dbg !5460

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5461
  %cmp24 = icmp ule i64 %10, 128, !dbg !5463
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5464

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5465
  br label %return, !dbg !5465

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5466
  %cmp27 = icmp ule i64 %11, 256, !dbg !5468
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5469

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5470
  br label %return, !dbg !5470

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5471
  %cmp30 = icmp ule i64 %12, 512, !dbg !5473
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5474

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5475
  br label %return, !dbg !5475

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5476
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5478
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5479

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5480
  br label %return, !dbg !5480

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5481
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5483
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5484

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5485
  br label %return, !dbg !5485

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5486
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5488
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5489

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5490
  br label %return, !dbg !5490

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5491
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5493
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5494

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5495
  br label %return, !dbg !5495

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5496
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5498
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5499

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5500
  br label %return, !dbg !5500

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5501
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5503
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5504

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5505
  br label %return, !dbg !5505

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5506
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5508
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5509

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5510
  br label %return, !dbg !5510

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5511
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5513
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5514

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5515
  br label %return, !dbg !5515

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5516
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5518
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5519

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5520
  br label %return, !dbg !5520

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5521
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5523
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5524

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5525
  br label %return, !dbg !5525

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5526
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5528
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5529

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5530
  br label %return, !dbg !5530

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5531
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5533
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5534

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5535
  br label %return, !dbg !5535

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5536, !range !4876, !noundef !1351
  %tobool69 = trunc i8 %25 to i1, !dbg !5536
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5538

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5539

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_263() #21, !dbg !5540, !srcloc !5543
  unreachable, !dbg !5540

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5544

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5545

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5546

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5548

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5546

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #16, !dbg !5550, !srcloc !5552
  br label %do.end75, !dbg !5550

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5546

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5553
  br label %return, !dbg !5553

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5554
  ret i32 %26, !dbg !5554
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5555 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !5561 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5565, metadata !DIExpression()), !dbg !5567
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5566, metadata !DIExpression()), !dbg !5568
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5569
  %and = and i32 %0, 17, !dbg !5569
  %cmp = icmp eq i32 %and, 0, !dbg !5569
  %lnot = xor i1 %cmp, true, !dbg !5569
  %lnot1 = xor i1 %lnot, true, !dbg !5569
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5569
  %conv = sext i32 %lnot.ext to i64, !dbg !5569
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5569
  %tobool = icmp ne i64 %expval, 0, !dbg !5569
  br i1 %tobool, label %if.then, label %if.end, !dbg !5571

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5572
  br label %return, !dbg !5572

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5573
  %and2 = and i32 %1, 1, !dbg !5575
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5575
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5576

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5577
  br label %return, !dbg !5577

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5578
  br label %return, !dbg !5578

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5580
  ret i32 %2, !dbg !5580
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5581 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5582 dso_local void @__compiletime_assert_263() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_pause_rx(ptr noundef %serio) #8 align 16 !dbg !5583 {
entry:
  %serio.addr = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !5585, metadata !DIExpression()), !dbg !5586
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !5587
  %lock = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 6, !dbg !5588
  call void @spin_lock_irq(ptr noundef %lock) #17, !dbg !5589
  ret void, !dbg !5590
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @byd_report_input(ptr noundef %psmouse) #0 align 16 !dbg !5591 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %priv = alloca ptr, align 8
  %dev = alloca ptr, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5593, metadata !DIExpression()), !dbg !5596
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #16, !dbg !5597
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !5594, metadata !DIExpression()), !dbg !5598
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !5599
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !5600
  %1 = load ptr, ptr %private, align 8, !dbg !5600
  store ptr %1, ptr %priv, align 8, !dbg !5598
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !5601
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5595, metadata !DIExpression()), !dbg !5602
  %2 = load ptr, ptr %psmouse.addr, align 8, !dbg !5603
  %dev1 = getelementptr inbounds %struct.psmouse, ptr %2, i32 0, i32 1, !dbg !5604
  %3 = load ptr, ptr %dev1, align 8, !dbg !5604
  store ptr %3, ptr %dev, align 8, !dbg !5602
  %4 = load ptr, ptr %dev, align 8, !dbg !5605
  %5 = load ptr, ptr %priv, align 8, !dbg !5606
  %touch = getelementptr inbounds %struct.byd_data, ptr %5, i32 0, i32 7, !dbg !5607
  %6 = load i8, ptr %touch, align 2, !dbg !5607, !range !4876, !noundef !1351
  %tobool = trunc i8 %6 to i1, !dbg !5607
  %conv = zext i1 %tobool to i32, !dbg !5606
  call void @input_report_key(ptr noundef %4, i32 noundef 330, i32 noundef %conv) #17, !dbg !5608
  %7 = load ptr, ptr %dev, align 8, !dbg !5609
  %8 = load ptr, ptr %priv, align 8, !dbg !5610
  %touch2 = getelementptr inbounds %struct.byd_data, ptr %8, i32 0, i32 7, !dbg !5611
  %9 = load i8, ptr %touch2, align 2, !dbg !5611, !range !4876, !noundef !1351
  %tobool3 = trunc i8 %9 to i1, !dbg !5611
  %conv4 = zext i1 %tobool3 to i32, !dbg !5610
  call void @input_report_key(ptr noundef %7, i32 noundef 325, i32 noundef %conv4) #17, !dbg !5612
  %10 = load ptr, ptr %dev, align 8, !dbg !5613
  %11 = load ptr, ptr %priv, align 8, !dbg !5614
  %abs_x = getelementptr inbounds %struct.byd_data, ptr %11, i32 0, i32 2, !dbg !5615
  %12 = load i32, ptr %abs_x, align 8, !dbg !5615
  call void @input_report_abs(ptr noundef %10, i32 noundef 0, i32 noundef %12) #17, !dbg !5616
  %13 = load ptr, ptr %dev, align 8, !dbg !5617
  %14 = load ptr, ptr %priv, align 8, !dbg !5618
  %abs_y = getelementptr inbounds %struct.byd_data, ptr %14, i32 0, i32 3, !dbg !5619
  %15 = load i32, ptr %abs_y, align 4, !dbg !5619
  call void @input_report_abs(ptr noundef %13, i32 noundef 1, i32 noundef %15) #17, !dbg !5620
  %16 = load ptr, ptr %dev, align 8, !dbg !5621
  %17 = load ptr, ptr %priv, align 8, !dbg !5622
  %btn_left = getelementptr inbounds %struct.byd_data, ptr %17, i32 0, i32 5, !dbg !5623
  %18 = load i8, ptr %btn_left, align 8, !dbg !5623, !range !4876, !noundef !1351
  %tobool5 = trunc i8 %18 to i1, !dbg !5623
  %conv6 = zext i1 %tobool5 to i32, !dbg !5622
  call void @input_report_key(ptr noundef %16, i32 noundef 272, i32 noundef %conv6) #17, !dbg !5624
  %19 = load ptr, ptr %dev, align 8, !dbg !5625
  %20 = load ptr, ptr %priv, align 8, !dbg !5626
  %btn_right = getelementptr inbounds %struct.byd_data, ptr %20, i32 0, i32 6, !dbg !5627
  %21 = load i8, ptr %btn_right, align 1, !dbg !5627, !range !4876, !noundef !1351
  %tobool7 = trunc i8 %21 to i1, !dbg !5627
  %conv8 = zext i1 %tobool7 to i32, !dbg !5626
  call void @input_report_key(ptr noundef %19, i32 noundef 273, i32 noundef %conv8) #17, !dbg !5628
  %22 = load ptr, ptr %dev, align 8, !dbg !5629
  call void @input_sync(ptr noundef %22) #17, !dbg !5630
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !5631
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #16, !dbg !5631
  ret void, !dbg !5631
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_continue_rx(ptr noundef %serio) #8 align 16 !dbg !5632 {
entry:
  %serio.addr = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !5634, metadata !DIExpression()), !dbg !5635
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !5636
  %lock = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 6, !dbg !5637
  call void @spin_unlock_irq(ptr noundef %lock) #17, !dbg !5638
  ret void, !dbg !5639
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #7 align 16 !dbg !5640 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5646, metadata !DIExpression()), !dbg !5647
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5648
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5648
  call void @_raw_spin_lock_irq(ptr noundef %1) #17, !dbg !5648
  ret void, !dbg !5649
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5650 dso_local void @_raw_spin_lock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_report_key(ptr noundef %dev, i32 noundef %code, i32 noundef %value) #8 align 16 !dbg !5655 {
entry:
  %dev.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5657, metadata !DIExpression()), !dbg !5660
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !5658, metadata !DIExpression()), !dbg !5661
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5659, metadata !DIExpression()), !dbg !5662
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5663
  %1 = load i32, ptr %code.addr, align 4, !dbg !5664
  %2 = load i32, ptr %value.addr, align 4, !dbg !5665
  %tobool = icmp ne i32 %2, 0, !dbg !5666
  %lnot = xor i1 %tobool, true, !dbg !5666
  %lnot1 = xor i1 %lnot, true, !dbg !5667
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5667
  call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %lnot.ext) #17, !dbg !5668
  ret void, !dbg !5669
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_report_abs(ptr noundef %dev, i32 noundef %code, i32 noundef %value) #8 align 16 !dbg !5670 {
entry:
  %dev.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5672, metadata !DIExpression()), !dbg !5675
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !5673, metadata !DIExpression()), !dbg !5676
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5674, metadata !DIExpression()), !dbg !5677
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5678
  %1 = load i32, ptr %code.addr, align 4, !dbg !5679
  %2 = load i32, ptr %value.addr, align 4, !dbg !5680
  call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef %1, i32 noundef %2) #17, !dbg !5681
  ret void, !dbg !5682
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_sync(ptr noundef %dev) #8 align 16 !dbg !5683 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5685, metadata !DIExpression()), !dbg !5686
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5687
  call void @input_event(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #17, !dbg !5688
  ret void, !dbg !5689
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5690 dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #7 align 16 !dbg !5693 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5695, metadata !DIExpression()), !dbg !5696
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5697
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5697
  call void @_raw_spin_unlock_irq(ptr noundef %1) #17, !dbg !5697
  ret void, !dbg !5698
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5699 dso_local void @_raw_spin_unlock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @del_timer(ptr noundef %timer) #8 align 16 !dbg !5700 {
entry:
  %timer.addr = alloca ptr, align 8
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !5704, metadata !DIExpression()), !dbg !5705
  %0 = load ptr, ptr %timer.addr, align 8, !dbg !5706
  %call = call i32 @timer_delete(ptr noundef %0) #17, !dbg !5707
  ret i32 %call, !dbg !5708
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5709 dso_local void @kfree(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5712 dso_local i32 @timer_delete(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ssleep(i32 noundef %seconds) #8 align 16 !dbg !5713 {
entry:
  %seconds.addr = alloca i32, align 4
  store i32 %seconds, ptr %seconds.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seconds.addr, metadata !5718, metadata !DIExpression()), !dbg !5719
  %0 = load i32, ptr %seconds.addr, align 4, !dbg !5720
  %mul = mul i32 %0, 1000, !dbg !5721
  call void @msleep(i32 noundef %mul) #17, !dbg !5722
  ret void, !dbg !5723
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5724 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5728 dso_local void @msleep(i32 noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5729 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msecs_to_jiffies(i32 noundef %m) #7 align 16 !dbg !5730 {
entry:
  %retval = alloca i64, align 8
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5735, metadata !DIExpression()), !dbg !5736
  %0 = load i32, ptr %m.addr, align 4, !dbg !5737
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5739
  br i1 %1, label %if.then, label %if.else, !dbg !5740

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %m.addr, align 4, !dbg !5741
  %cmp = icmp slt i32 %2, 0, !dbg !5744
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5745

if.then1:                                         ; preds = %if.then
  store i64 4611686018427387902, ptr %retval, align 8, !dbg !5746
  br label %return, !dbg !5746

if.end:                                           ; preds = %if.then
  %3 = load i32, ptr %m.addr, align 4, !dbg !5747
  %call = call i64 @_msecs_to_jiffies(i32 noundef %3) #17, !dbg !5748
  store i64 %call, ptr %retval, align 8, !dbg !5749
  br label %return, !dbg !5749

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %m.addr, align 4, !dbg !5750
  %call2 = call i64 @__msecs_to_jiffies(i32 noundef %4) #17, !dbg !5752
  store i64 %call2, ptr %retval, align 8, !dbg !5753
  br label %return, !dbg !5753

return:                                           ; preds = %if.else, %if.end, %if.then1
  %5 = load i64, ptr %retval, align 8, !dbg !5754
  ret i64 %5, !dbg !5754
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5755 dso_local i32 @mod_timer(ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_msecs_to_jiffies(i32 noundef %m) #8 align 16 !dbg !5758 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5760, metadata !DIExpression()), !dbg !5761
  %0 = load i32, ptr %m.addr, align 4, !dbg !5762
  %conv = zext i32 %0 to i64, !dbg !5762
  %add = add i64 %conv, 1, !dbg !5763
  %sub = sub i64 %add, 1, !dbg !5764
  %div = sdiv i64 %sub, 1, !dbg !5765
  ret i64 %div, !dbg !5766
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5767 dso_local i64 @__msecs_to_jiffies(i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !5768 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5776, metadata !DIExpression()), !dbg !5778
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5777, metadata !DIExpression()), !dbg !5779
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5780
  %1 = load i64, ptr %size.addr, align 8, !dbg !5781
  %conv = trunc i64 %1 to i32, !dbg !5781
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !5782
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5783
  %3 = load i64, ptr %size.addr, align 8, !dbg !5783
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #17, !dbg !5783
  ret void, !dbg !5784
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5785 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5788, metadata !DIExpression()), !dbg !5790
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5789, metadata !DIExpression()), !dbg !5791
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5792
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5793
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !5794, !srcloc !5795
  ret void, !dbg !5796
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #8 align 16 !dbg !5797 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5802, metadata !DIExpression()), !dbg !5804
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5803, metadata !DIExpression()), !dbg !5805
  ret i1 true, !dbg !5806
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #8 align 16 !dbg !5807 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5812, metadata !DIExpression()), !dbg !5815
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5813, metadata !DIExpression()), !dbg !5816
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5814, metadata !DIExpression()), !dbg !5817
  ret void, !dbg !5818
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5819 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5821, metadata !DIExpression()), !dbg !5823
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5822, metadata !DIExpression()), !dbg !5824
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5825
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5826
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !5827, !srcloc !5828
  ret void, !dbg !5829
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5830 dso_local void @input_alloc_absinfo(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!4743}
!llvm.module.flags = !{!4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820}
!llvm.ident = !{!4821}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 457, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/input/mouse/byd.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f4eab0948bf0414c4be7fedb2c20da")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 4)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 458, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 9)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "seq", scope: !14, file: !2, line: 348, type: !4805, isLocal: true, isDefinition: true)
!14 = distinct !DISubprogram(name: "byd_reset_touchpad", scope: !2, file: !2, line: 339, type: !15, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !4799)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !18}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse", file: !20, line: 89, size: 3904, elements: !21)
!20 = !DIFile(filename: "drivers/input/mouse/psmouse.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "365ff56d7a22250c467c4cd08801fb3c")
!21 = !{!22, !24, !4537, !4635, !4636, !4637, !4638, !4682, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4702, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4720, !4724, !4725, !4733, !4734, !4735, !4739, !4740, !4741, !4742}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !19, file: !20, line: 90, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !19, file: !20, line: 91, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !27, line: 137, size: 10880, elements: !28)
!27 = !DIFile(filename: "./include/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b25fc678586bfd50cf52e415a8b77c9")
!28 = !{!29, !32, !33, !34, !45, !50, !51, !55, !56, !57, !58, !59, !60, !64, !65, !67, !68, !69, !70, !90, !95, !3989, !3992, !3993, !3994, !3996, !3999, !4009, !4010, !4011, !4012, !4013, !4017, !4021, !4025, !4029, !4107, !4108, !4109, !4110, !4111, !4527, !4528, !4529, !4530, !4531, !4533, !4534, !4536}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !26, file: !27, line: 138, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !26, file: !27, line: 139, baseType: !30, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !26, file: !27, line: 140, baseType: !30, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !26, file: !27, line: 141, baseType: !35, size: 64, offset: 192)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !36, line: 59, size: 64, elements: !37)
!36 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48bb23414dcd9e3ab2349c2bc2e9cd2c")
!37 = !{!38, !42, !43, !44}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !35, file: !36, line: 60, baseType: !39, size: 16)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !40, line: 24, baseType: !41)
!40 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!41 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !35, file: !36, line: 61, baseType: !39, size: 16, offset: 16)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !35, file: !36, line: 62, baseType: !39, size: 16, offset: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !35, file: !36, line: 63, baseType: !39, size: 16, offset: 48)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !26, file: !27, line: 143, baseType: !46, size: 64, offset: 256)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, elements: !48)
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !{!49}
!49 = !DISubrange(count: 1)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !26, file: !27, line: 145, baseType: !46, size: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !26, file: !27, line: 146, baseType: !52, size: 768, offset: 384)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 768, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 12)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !26, file: !27, line: 147, baseType: !46, size: 64, offset: 1152)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !26, file: !27, line: 148, baseType: !46, size: 64, offset: 1216)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !26, file: !27, line: 149, baseType: !46, size: 64, offset: 1280)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !26, file: !27, line: 150, baseType: !46, size: 64, offset: 1344)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !26, file: !27, line: 151, baseType: !46, size: 64, offset: 1408)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !26, file: !27, line: 152, baseType: !61, size: 128, offset: 1472)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 128, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 2)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !26, file: !27, line: 153, baseType: !46, size: 64, offset: 1600)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !26, file: !27, line: 155, baseType: !66, size: 32, offset: 1664)
!66 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !26, file: !27, line: 157, baseType: !66, size: 32, offset: 1696)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !26, file: !27, line: 158, baseType: !66, size: 32, offset: 1728)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !26, file: !27, line: 159, baseType: !23, size: 64, offset: 1792)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !26, file: !27, line: 161, baseType: !71, size: 64, offset: 1856)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!17, !25, !74, !89}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !36, line: 117, size: 320, elements: !77)
!77 = !{!78, !81, !82, !83, !85}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !76, file: !36, line: 119, baseType: !79, size: 8)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !40, line: 21, baseType: !80)
!80 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !76, file: !36, line: 120, baseType: !79, size: 8, offset: 8)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !76, file: !36, line: 121, baseType: !39, size: 16, offset: 16)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !76, file: !36, line: 122, baseType: !84, size: 32, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !40, line: 27, baseType: !66)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !76, file: !36, line: 123, baseType: !86, size: 256, offset: 64)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 256, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 32)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !26, file: !27, line: 164, baseType: !91, size: 64, offset: 1920)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!17, !25, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !26, file: !27, line: 167, baseType: !96, size: 64, offset: 1984)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !27, line: 546, size: 960, elements: !98)
!98 = !{!99, !168, !172, !176, !182, !183, !187, !188, !189, !244, !245, !246}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !97, file: !27, line: 547, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!17, !25, !103, !103}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !36, line: 454, size: 384, elements: !105)
!105 = !{!106, !107, !110, !111, !116, !121}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !36, line: 455, baseType: !39, size: 16)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !104, file: !36, line: 456, baseType: !108, size: 16, offset: 16)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !40, line: 23, baseType: !109)
!109 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !104, file: !36, line: 457, baseType: !39, size: 16, offset: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !104, file: !36, line: 458, baseType: !112, size: 32, offset: 48)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !36, line: 320, size: 32, elements: !113)
!113 = !{!114, !115}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !112, file: !36, line: 321, baseType: !39, size: 16)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !112, file: !36, line: 322, baseType: !39, size: 16, offset: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !104, file: !36, line: 459, baseType: !117, size: 32, offset: 80)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !36, line: 310, size: 32, elements: !118)
!118 = !{!119, !120}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !117, file: !36, line: 311, baseType: !39, size: 16)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !117, file: !36, line: 312, baseType: !39, size: 16, offset: 16)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !104, file: !36, line: 467, baseType: !122, size: 256, offset: 128)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !104, file: !36, line: 461, size: 256, elements: !123)
!123 = !{!124, !135, !141, !153, !163}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !122, file: !36, line: 462, baseType: !125, size: 80)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !36, line: 349, size: 80, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !125, file: !36, line: 350, baseType: !108, size: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !125, file: !36, line: 351, baseType: !129, size: 64, offset: 16)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !36, line: 337, size: 64, elements: !130)
!130 = !{!131, !132, !133, !134}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !129, file: !36, line: 338, baseType: !39, size: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !129, file: !36, line: 339, baseType: !39, size: 16, offset: 16)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !129, file: !36, line: 340, baseType: !39, size: 16, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !129, file: !36, line: 341, baseType: !39, size: 16, offset: 48)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !122, file: !36, line: 463, baseType: !136, size: 96)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !36, line: 360, size: 96, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !136, file: !36, line: 361, baseType: !108, size: 16)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !136, file: !36, line: 362, baseType: !108, size: 16, offset: 16)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !136, file: !36, line: 363, baseType: !129, size: 64, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !122, file: !36, line: 464, baseType: !142, size: 256)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !36, line: 405, size: 256, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !142, file: !36, line: 406, baseType: !39, size: 16)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !142, file: !36, line: 407, baseType: !39, size: 16, offset: 16)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !142, file: !36, line: 408, baseType: !108, size: 16, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !142, file: !36, line: 409, baseType: !108, size: 16, offset: 48)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !142, file: !36, line: 410, baseType: !39, size: 16, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !142, file: !36, line: 412, baseType: !129, size: 64, offset: 80)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !142, file: !36, line: 414, baseType: !84, size: 32, offset: 160)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !142, file: !36, line: 415, baseType: !152, size: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !122, file: !36, line: 465, baseType: !154, size: 192)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 192, elements: !62)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !36, line: 376, size: 96, elements: !156)
!156 = !{!157, !158, !159, !160, !161, !162}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !155, file: !36, line: 377, baseType: !39, size: 16)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !155, file: !36, line: 378, baseType: !39, size: 16, offset: 16)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !155, file: !36, line: 380, baseType: !108, size: 16, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !155, file: !36, line: 381, baseType: !108, size: 16, offset: 48)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !155, file: !36, line: 383, baseType: !39, size: 16, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !155, file: !36, line: 384, baseType: !108, size: 16, offset: 80)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !122, file: !36, line: 466, baseType: !164, size: 32)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !36, line: 426, size: 32, elements: !165)
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !164, file: !36, line: 427, baseType: !39, size: 16)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !164, file: !36, line: 428, baseType: !39, size: 16, offset: 16)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !97, file: !27, line: 549, baseType: !169, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!17, !25, !17}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !97, file: !27, line: 551, baseType: !173, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!17, !25, !17, !17}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !97, file: !27, line: 552, baseType: !177, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !25, !180}
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !181, line: 19, baseType: !39)
!181 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!182 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !97, file: !27, line: 553, baseType: !177, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !97, file: !27, line: 555, baseType: !184, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !96}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !97, file: !27, line: 557, baseType: !23, size: 64, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !97, file: !27, line: 559, baseType: !61, size: 128, offset: 448)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !97, file: !27, line: 561, baseType: !190, size: 256, offset: 576)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !191, line: 66, size: 256, elements: !192)
!191 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!192 = !{!193, !204, !233, !238}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !190, file: !191, line: 67, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !195, line: 13, baseType: !196)
!195 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !197, line: 181, baseType: !198)
!197 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !197, line: 179, size: 64, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !198, file: !197, line: 180, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !181, line: 22, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !40, line: 30, baseType: !203)
!203 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !190, file: !191, line: 68, baseType: !205, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !206, line: 23, baseType: !207)
!206 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !206, line: 14, size: 32, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !207, file: !206, line: 15, baseType: !210, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !211, line: 44, baseType: !212)
!211 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !211, line: 14, size: 32, elements: !213)
!213 = !{!214}
!214 = !DIDerivedType(tag: DW_TAG_member, scope: !212, file: !211, line: 15, baseType: !215, size: 32)
!215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !212, file: !211, line: 15, size: 32, elements: !216)
!216 = !{!217, !222, !228}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !215, file: !211, line: 16, baseType: !218, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !197, line: 174, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !197, line: 172, size: 32, elements: !220)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !219, file: !197, line: 173, baseType: !17, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, scope: !215, file: !211, line: 24, baseType: !223, size: 16)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !211, line: 24, size: 16, elements: !224)
!224 = !{!225, !227}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !223, file: !211, line: 25, baseType: !226, size: 8)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !181, line: 17, baseType: !79)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !223, file: !211, line: 26, baseType: !226, size: 8, offset: 8)
!228 = !DIDerivedType(tag: DW_TAG_member, scope: !215, file: !211, line: 28, baseType: !229, size: 32)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !211, line: 28, size: 32, elements: !230)
!230 = !{!231, !232}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !229, file: !211, line: 29, baseType: !180, size: 16)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !229, file: !211, line: 30, baseType: !180, size: 16, offset: 16)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !190, file: !191, line: 70, baseType: !234, size: 32, offset: 96)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !235, line: 15, size: 32, elements: !236)
!235 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !234, file: !235, line: 20, baseType: !218, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !190, file: !191, line: 72, baseType: !239, size: 128, offset: 128)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !197, line: 190, size: 128, elements: !240)
!240 = !{!241, !243}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !239, file: !197, line: 191, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !239, file: !197, line: 191, baseType: !242, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !97, file: !27, line: 563, baseType: !17, size: 32, offset: 832)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !97, file: !27, line: 564, baseType: !103, size: 64, offset: 896)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !97, file: !27, line: 565, baseType: !247, offset: 960)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, elements: !356)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !250, line: 994, size: 1856, align: 64, elements: !251)
!250 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!251 = !{!252, !271, !280, !282, !283, !284, !288, !289, !376, !598, !607, !3979, !3980, !3981, !3982, !3983, !3984, !3986, !3987, !3988}
!252 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !250, line: 995, baseType: !253, size: 128)
!253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !249, file: !250, line: 995, size: 128, elements: !254)
!254 = !{!255, !261, !270}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !253, file: !250, line: 996, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !257, line: 60, size: 64, elements: !258)
!257 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !257, line: 61, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !253, file: !250, line: 997, baseType: !262, size: 128, align: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !197, line: 232, size: 128, align: 64, elements: !263)
!263 = !{!264, !266}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !262, file: !197, line: 233, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !262, file: !197, line: 234, baseType: !267, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !265}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !253, file: !250, line: 998, baseType: !66, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !249, file: !250, line: 1005, baseType: !272, size: 32, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !273, line: 29, baseType: !274)
!273 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !273, line: 17, size: 32, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, scope: !274, file: !273, line: 18, baseType: !277, size: 32)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !274, file: !273, line: 18, size: 32, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !277, file: !273, line: 19, baseType: !207, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !249, file: !250, line: 1006, baseType: !281, size: 32, offset: 160)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !197, line: 156, baseType: !66)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !249, file: !250, line: 1007, baseType: !194, size: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !249, file: !250, line: 1008, baseType: !190, size: 256, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !249, file: !250, line: 1009, baseType: !285, size: 64, offset: 512)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !197, line: 52, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !287, line: 88, baseType: !203)
!287 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!288 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !249, file: !250, line: 1010, baseType: !66, size: 32, offset: 576)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !249, file: !250, line: 1011, baseType: !290, size: 256, offset: 640)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !250, line: 948, size: 256, elements: !291)
!291 = !{!292, !315, !358, !366, !374, !375}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !290, file: !250, line: 949, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !294, line: 34, baseType: !295)
!294 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !294, line: 25, size: 64, elements: !296)
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !295, file: !294, line: 26, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !299, line: 27, baseType: !300)
!299 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !299, line: 13, size: 64, elements: !301)
!301 = !{!302, !314}
!302 = !DIDerivedType(tag: DW_TAG_member, scope: !300, file: !299, line: 14, baseType: !303, size: 32)
!303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !299, line: 14, size: 32, elements: !304)
!304 = !{!305, !306}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !303, file: !299, line: 15, baseType: !218, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, scope: !303, file: !299, line: 16, baseType: !307, size: 32)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !303, file: !299, line: 16, size: 32, elements: !308)
!308 = !{!309, !310}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !307, file: !299, line: 18, baseType: !226, size: 8)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !307, file: !299, line: 19, baseType: !311, size: 24, offset: 8)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 24, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 3)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !300, file: !299, line: 26, baseType: !210, size: 32, offset: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !290, file: !250, line: 950, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !318, line: 59, size: 768, elements: !319)
!318 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!319 = !{!320, !326, !327, !328, !339, !340, !347, !348}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !317, file: !318, line: 61, baseType: !321, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !322, line: 113, baseType: !323)
!322 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !322, line: 111, size: 32, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !323, file: !322, line: 112, baseType: !218, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !317, file: !318, line: 62, baseType: !66, size: 32, offset: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !317, file: !318, line: 63, baseType: !272, size: 32, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !317, file: !318, line: 65, baseType: !329, size: 256, offset: 128)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 256, elements: !5)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !197, line: 194, size: 64, elements: !331)
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !330, file: !197, line: 195, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !197, line: 198, size: 128, elements: !335)
!335 = !{!336, !337}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !197, line: 199, baseType: !333, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !334, file: !197, line: 199, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !317, file: !318, line: 66, baseType: !330, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !317, file: !318, line: 68, baseType: !341, size: 192, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !342, line: 41, baseType: !343)
!342 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !342, line: 37, size: 192, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !343, file: !342, line: 38, baseType: !272, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !343, file: !342, line: 39, baseType: !239, size: 128, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !317, file: !318, line: 69, baseType: !262, size: 128, align: 64, offset: 640)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !317, file: !318, line: 70, baseType: !349, offset: 768)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, elements: !356)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !318, line: 54, size: 128, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !350, file: !318, line: 55, baseType: !17, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !350, file: !318, line: 56, baseType: !354, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !318, line: 56, flags: DIFlagFwdDecl)
!356 = !{!357}
!357 = !DISubrange(count: -1)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !290, file: !250, line: 951, baseType: !359, size: 32, offset: 128)
!359 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !318, line: 9, baseType: !66, size: 32, elements: !360)
!360 = !{!361, !362, !363, !364, !365}
!361 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!362 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!363 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!364 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!365 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !290, file: !250, line: 952, baseType: !367, size: 32, offset: 160)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !368, line: 23, baseType: !369)
!368 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 21, size: 32, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !369, file: !368, line: 22, baseType: !372, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !197, line: 37, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !287, line: 49, baseType: !66)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !290, file: !250, line: 952, baseType: !367, size: 32, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !290, file: !250, line: 953, baseType: !17, size: 32, offset: 224)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !249, file: !250, line: 1012, baseType: !377, size: 64, offset: 896)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !380, line: 110, size: 1472, elements: !381)
!380 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!381 = !{!382, !383, !384, !391, !392, !393, !394, !395, !396, !397, !398, !407, !408, !409, !410, !411, !412, !543, !544, !545, !546, !547, !578, !581, !585, !593}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !379, file: !380, line: 111, baseType: !194, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !379, file: !380, line: 112, baseType: !367, size: 32, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !379, file: !380, line: 113, baseType: !385, size: 32, offset: 96)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !368, line: 28, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 26, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !386, file: !368, line: 27, baseType: !389, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !197, line: 38, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !287, line: 50, baseType: !66)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !379, file: !380, line: 114, baseType: !367, size: 32, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !379, file: !380, line: 115, baseType: !385, size: 32, offset: 160)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !379, file: !380, line: 116, baseType: !367, size: 32, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !379, file: !380, line: 117, baseType: !385, size: 32, offset: 224)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !379, file: !380, line: 118, baseType: !367, size: 32, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !379, file: !380, line: 119, baseType: !385, size: 32, offset: 288)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !379, file: !380, line: 120, baseType: !66, size: 32, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !379, file: !380, line: 121, baseType: !399, size: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !400, line: 24, baseType: !401)
!400 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !400, line: 24, size: 64, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !401, file: !400, line: 24, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !181, line: 23, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !40, line: 31, baseType: !406)
!406 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !379, file: !380, line: 122, baseType: !399, size: 64, offset: 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !379, file: !380, line: 123, baseType: !399, size: 64, offset: 512)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !379, file: !380, line: 124, baseType: !399, size: 64, offset: 576)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !379, file: !380, line: 125, baseType: !399, size: 64, offset: 640)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !379, file: !380, line: 127, baseType: !80, size: 8, offset: 704)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !379, file: !380, line: 129, baseType: !413, size: 64, offset: 768)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !415, line: 195, size: 1728, elements: !416)
!415 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!416 = !{!417, !418, !423, !435, !444, !447, !448, !455, !456, !457, !458, !462, !463, !464, !465, !466, !507, !528}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !414, file: !415, line: 196, baseType: !321, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !414, file: !415, line: 197, baseType: !419, size: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !415, line: 28, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !197, line: 104, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !181, line: 20, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !40, line: 26, baseType: !17)
!423 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !415, line: 198, baseType: !424, size: 192, offset: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !415, line: 198, size: 192, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !424, file: !415, line: 199, baseType: !239, size: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !424, file: !415, line: 200, baseType: !428, size: 192, align: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !429, line: 5, size: 192, align: 64, elements: !430)
!429 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!430 = !{!431, !432, !434}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !428, file: !429, line: 6, baseType: !47, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !428, file: !429, line: 7, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !428, file: !429, line: 8, baseType: !433, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !414, file: !415, line: 205, baseType: !436, size: 320, offset: 256)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !437, line: 48, size: 320, elements: !438)
!437 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!438 = !{!439, !440, !441, !442, !443}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !436, file: !437, line: 49, baseType: !194, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !436, file: !437, line: 55, baseType: !194, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !436, file: !437, line: 57, baseType: !234, size: 32, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !436, file: !437, line: 59, baseType: !205, size: 32, offset: 160)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !436, file: !437, line: 60, baseType: !239, size: 128, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !414, file: !415, line: 206, baseType: !445, size: 64, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !415, line: 206, flags: DIFlagFwdDecl)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !414, file: !415, line: 207, baseType: !23, size: 64, offset: 640)
!448 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !415, line: 208, baseType: !449, size: 64, offset: 704)
!449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !415, line: 208, size: 64, elements: !450)
!450 = !{!451, !454}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !449, file: !415, line: 209, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !453, line: 8, baseType: !202)
!453 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!454 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !449, file: !415, line: 210, baseType: !452, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !414, file: !415, line: 212, baseType: !452, size: 64, offset: 768)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !414, file: !415, line: 213, baseType: !367, size: 32, offset: 832)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !414, file: !415, line: 214, baseType: !385, size: 32, offset: 864)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !414, file: !415, line: 215, baseType: !459, size: 32, offset: 896)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !415, line: 31, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !197, line: 110, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !181, line: 21, baseType: !84)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !414, file: !415, line: 216, baseType: !41, size: 16, offset: 928)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !414, file: !415, line: 217, baseType: !41, size: 16, offset: 944)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !414, file: !415, line: 221, baseType: !109, size: 16, offset: 960)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !415, line: 228, baseType: !47, size: 64, offset: 1024)
!466 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !415, line: 245, baseType: !467, size: 320, offset: 1088)
!467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !415, line: 245, size: 320, elements: !468)
!468 = !{!469, !498}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !467, file: !415, line: 246, baseType: !470, size: 320)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !415, line: 114, size: 320, elements: !471)
!471 = !{!472, !473, !485, !488, !497}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !470, file: !415, line: 116, baseType: !47, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !415, line: 117, baseType: !474, size: 64, offset: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !470, file: !415, line: 117, size: 64, elements: !475)
!475 = !{!476, !484}
!476 = !DIDerivedType(tag: DW_TAG_member, scope: !474, file: !415, line: 118, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !474, file: !415, line: 118, size: 64, elements: !478)
!478 = !{!479, !480}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !477, file: !415, line: 120, baseType: !180, size: 16)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !477, file: !415, line: 121, baseType: !481, size: 48, offset: 16)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 6)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !474, file: !415, line: 127, baseType: !47, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !470, file: !415, line: 129, baseType: !486, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !415, line: 102, flags: DIFlagFwdDecl)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !470, file: !415, line: 130, baseType: !489, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !415, line: 108, size: 192, elements: !491)
!491 = !{!492, !493, !494}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !490, file: !415, line: 109, baseType: !262, size: 128, align: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !490, file: !415, line: 110, baseType: !321, size: 32, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !490, file: !415, line: 111, baseType: !495, size: 8, offset: 160)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !197, line: 35, baseType: !496)
!496 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !470, file: !415, line: 131, baseType: !30, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !415, line: 247, baseType: !499, size: 320)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !467, file: !415, line: 247, size: 320, elements: !500)
!500 = !{!501, !502, !503, !504, !505}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !499, file: !415, line: 248, baseType: !47, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !499, file: !415, line: 249, baseType: !47, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !499, file: !415, line: 250, baseType: !486, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !499, file: !415, line: 251, baseType: !489, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !499, file: !415, line: 252, baseType: !506, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !415, line: 260, baseType: !508, size: 256, offset: 1408)
!508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !415, line: 260, size: 256, elements: !509)
!509 = !{!510, !516}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !508, file: !415, line: 261, baseType: !511, size: 256)
!511 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !415, line: 134, size: 256, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !511, file: !415, line: 135, baseType: !23, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !511, file: !415, line: 136, baseType: !515, size: 256)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !5)
!516 = !DIDerivedType(tag: DW_TAG_member, scope: !508, file: !415, line: 262, baseType: !517, size: 256)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !508, file: !415, line: 262, size: 256, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !517, file: !415, line: 264, baseType: !239, size: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !517, file: !415, line: 265, baseType: !521, size: 128, offset: 128)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !522, line: 22, size: 128, elements: !523)
!522 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!523 = !{!524, !527}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !521, file: !522, line: 23, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !522, line: 23, flags: DIFlagFwdDecl)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !521, file: !522, line: 24, baseType: !47, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !414, file: !415, line: 280, baseType: !529, size: 64, offset: 1664)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !415, line: 176, size: 192, elements: !531)
!531 = !{!532, !541, !542}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !530, file: !415, line: 177, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !415, line: 171, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!17, !413, !537, !539, !413}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !530, file: !415, line: 178, baseType: !413, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !530, file: !415, line: 179, baseType: !486, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !379, file: !380, line: 130, baseType: !413, size: 64, offset: 832)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !379, file: !380, line: 131, baseType: !413, size: 64, offset: 896)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !379, file: !380, line: 132, baseType: !413, size: 64, offset: 960)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !379, file: !380, line: 135, baseType: !23, size: 64, offset: 1024)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !379, file: !380, line: 137, baseType: !548, size: 64, offset: 1088)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !550, line: 14, size: 1088, elements: !551)
!550 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!551 = !{!552, !553, !562, !563, !564, !565, !566, !567}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !549, file: !550, line: 15, baseType: !321, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !549, file: !550, line: 17, baseType: !554, size: 320, offset: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !555, line: 22, size: 320, elements: !556)
!555 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!556 = !{!557, !558, !559, !560}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !554, file: !555, line: 23, baseType: !205, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !554, file: !555, line: 24, baseType: !201, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !554, file: !555, line: 26, baseType: !239, size: 128, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !554, file: !555, line: 28, baseType: !561, size: 64, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !549, file: !550, line: 19, baseType: !47, size: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !549, file: !550, line: 20, baseType: !194, size: 64, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !549, file: !550, line: 23, baseType: !334, size: 128, offset: 512)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !549, file: !550, line: 24, baseType: !367, size: 32, offset: 640)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !549, file: !550, line: 29, baseType: !194, size: 64, offset: 704)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !549, file: !550, line: 36, baseType: !568, size: 320, offset: 768)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !569, line: 15, size: 320, elements: !570)
!569 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!570 = !{!571, !572, !573, !574, !575, !576, !577}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !568, file: !569, line: 16, baseType: !205, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !568, file: !569, line: 18, baseType: !17, size: 32, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !568, file: !569, line: 19, baseType: !17, size: 32, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !568, file: !569, line: 20, baseType: !17, size: 32, offset: 96)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !568, file: !569, line: 21, baseType: !17, size: 32, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !568, file: !569, line: 22, baseType: !47, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !568, file: !569, line: 23, baseType: !47, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !379, file: !380, line: 138, baseType: !579, size: 64, offset: 1152)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !368, line: 18, flags: DIFlagFwdDecl)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !379, file: !380, line: 139, baseType: !582, size: 64, offset: 1216)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !584, line: 16, flags: DIFlagFwdDecl)
!584 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!585 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !379, file: !380, line: 140, baseType: !586, size: 64, offset: 1280)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !380, line: 25, size: 64, elements: !588)
!588 = !{!589, !590, !591}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !587, file: !380, line: 26, baseType: !218, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !587, file: !380, line: 27, baseType: !17, size: 32, offset: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !587, file: !380, line: 28, baseType: !592, offset: 64)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, elements: !356)
!593 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !380, line: 142, baseType: !594, size: 128, offset: 1344)
!594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !380, line: 142, size: 128, elements: !595)
!595 = !{!596, !597}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !594, file: !380, line: 143, baseType: !17, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !594, file: !380, line: 144, baseType: !262, size: 128, align: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !249, file: !250, line: 1013, baseType: !599, size: 256, offset: 960)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !250, line: 970, size: 256, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !599, file: !250, line: 971, baseType: !47, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !599, file: !250, line: 972, baseType: !66, size: 32, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !599, file: !250, line: 973, baseType: !66, size: 32, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !599, file: !250, line: 974, baseType: !66, size: 32, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !599, file: !250, line: 975, baseType: !66, size: 32, offset: 160)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !599, file: !250, line: 976, baseType: !285, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !249, file: !250, line: 1014, baseType: !608, size: 128, offset: 1216)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !609, line: 8, size: 128, elements: !610)
!609 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!610 = !{!611, !3978}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !608, file: !609, line: 9, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !614, line: 70, size: 256, elements: !615)
!614 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!615 = !{!616, !3975, !3976, !3977}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !613, file: !614, line: 71, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !619, line: 82, size: 1536, elements: !620)
!619 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!620 = !{!621, !622, !632, !640, !641, !656, !3942, !3944, !3957, !3958, !3959, !3960, !3961, !3967, !3968, !3969}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !618, file: !619, line: 84, baseType: !66, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !618, file: !619, line: 85, baseType: !623, size: 32, offset: 32)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !624, line: 275, baseType: !625)
!624 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !624, line: 275, size: 32, elements: !626)
!626 = !{!627}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !625, file: !624, line: 275, baseType: !628, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !624, line: 69, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !624, line: 64, size: 32, elements: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !629, file: !624, line: 65, baseType: !66, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !618, file: !619, line: 86, baseType: !633, size: 128, offset: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !634, line: 38, size: 128, elements: !635)
!634 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!635 = !{!636, !638}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !633, file: !634, line: 39, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !633, file: !634, line: 39, baseType: !639, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !618, file: !619, line: 87, baseType: !617, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !618, file: !619, line: 88, baseType: !642, size: 128, offset: 256)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !619, line: 49, size: 128, elements: !643)
!643 = !{!644, !653}
!644 = !DIDerivedType(tag: DW_TAG_member, scope: !642, file: !619, line: 50, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !642, file: !619, line: 50, size: 64, elements: !646)
!646 = !{!647, !652}
!647 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !619, line: 51, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !619, line: 51, size: 64, elements: !649)
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !648, file: !619, line: 52, baseType: !461, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !648, file: !619, line: 52, baseType: !461, size: 32, offset: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !645, file: !619, line: 54, baseType: !404, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !642, file: !619, line: 56, baseType: !654, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !618, file: !619, line: 89, baseType: !657, size: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !250, line: 641, size: 4800, elements: !659)
!659 = !{!660, !662, !663, !664, !665, !666, !667, !670, !671, !869, !3758, !3759, !3760, !3761, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3924, !3927, !3928, !3929, !3938, !3939, !3940, !3941}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !658, file: !250, line: 642, baseType: !661, size: 16)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !197, line: 24, baseType: !41)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !658, file: !250, line: 643, baseType: !41, size: 16, offset: 16)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !658, file: !250, line: 644, baseType: !367, size: 32, offset: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !658, file: !250, line: 645, baseType: !239, size: 128, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !658, file: !250, line: 646, baseType: !385, size: 32, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !658, file: !250, line: 647, baseType: !66, size: 32, offset: 224)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !658, file: !250, line: 650, baseType: !668, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !250, line: 607, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !658, file: !250, line: 651, baseType: !668, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !658, file: !250, line: 654, baseType: !672, size: 64, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !674)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !250, line: 1966, size: 2048, align: 512, elements: !675)
!675 = !{!676, !680, !693, !699, !703, !707, !711, !715, !719, !723, !727, !728, !734, !738, !776, !807, !817, !823, !827, !831, !835, !839, !843, !849, !853}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !674, file: !250, line: 1967, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!617, !657, !617, !66}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !674, file: !250, line: 1968, baseType: !681, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!30, !617, !657, !684}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !686, line: 10, size: 128, elements: !687)
!686 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!687 = !{!688, !692}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !685, file: !686, line: 11, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !23}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !685, file: !686, line: 12, baseType: !23, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !674, file: !250, line: 1969, baseType: !694, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!17, !697, !657, !17}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !400, line: 42, flags: DIFlagFwdDecl)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !674, file: !250, line: 1970, baseType: !700, size: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!668, !657, !17, !495}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !674, file: !250, line: 1972, baseType: !704, size: 64, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!17, !617, !506, !17}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !674, file: !250, line: 1974, baseType: !708, size: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!17, !697, !657, !617, !661, !495}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !674, file: !250, line: 1976, baseType: !712, size: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!17, !617, !657, !617}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !674, file: !250, line: 1977, baseType: !716, size: 64, offset: 448)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!17, !657, !617}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !674, file: !250, line: 1978, baseType: !720, size: 64, offset: 512)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!17, !697, !657, !617, !30}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !674, file: !250, line: 1980, baseType: !724, size: 64, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!17, !697, !657, !617, !661}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !674, file: !250, line: 1982, baseType: !716, size: 64, offset: 640)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !674, file: !250, line: 1983, baseType: !729, size: 64, offset: 704)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!17, !697, !657, !617, !661, !732}
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !197, line: 21, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !197, line: 18, baseType: !461)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !674, file: !250, line: 1985, baseType: !735, size: 64, offset: 768)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!17, !697, !657, !617, !657, !617, !66}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !674, file: !250, line: 1987, baseType: !739, size: 64, offset: 832)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!17, !697, !617, !742}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !250, line: 226, size: 640, elements: !744)
!744 = !{!745, !746, !747, !757, !766, !767, !773, !774, !775}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !743, file: !250, line: 227, baseType: !66, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !743, file: !250, line: 228, baseType: !661, size: 16, offset: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !250, line: 241, baseType: !748, size: 32, offset: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !743, file: !250, line: 241, size: 32, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !748, file: !250, line: 242, baseType: !367, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !748, file: !250, line: 243, baseType: !752, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !753, line: 16, baseType: !754)
!753 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !753, line: 14, size: 32, elements: !755)
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !754, file: !753, line: 15, baseType: !372, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !250, line: 245, baseType: !758, size: 32, offset: 96)
!758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !743, file: !250, line: 245, size: 32, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !758, file: !250, line: 246, baseType: !385, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !758, file: !250, line: 247, baseType: !762, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !753, line: 20, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !753, line: 18, size: 32, elements: !764)
!764 = !{!765}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !763, file: !753, line: 19, baseType: !389, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !743, file: !250, line: 249, baseType: !285, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !743, file: !250, line: 250, baseType: !768, size: 128, offset: 192)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !453, line: 13, size: 128, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !768, file: !453, line: 14, baseType: !452, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !768, file: !453, line: 15, baseType: !772, size: 64, offset: 64)
!772 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !743, file: !250, line: 251, baseType: !768, size: 128, offset: 320)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !743, file: !250, line: 252, baseType: !768, size: 128, offset: 448)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !743, file: !250, line: 259, baseType: !248, size: 64, offset: 576)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !674, file: !250, line: 1988, baseType: !777, size: 64, offset: 896)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!17, !697, !780, !782, !461, !66}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !784, line: 22, size: 1280, elements: !785)
!784 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!785 = !{!786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !783, file: !784, line: 23, baseType: !461, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !783, file: !784, line: 24, baseType: !661, size: 16, offset: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !783, file: !784, line: 25, baseType: !66, size: 32, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !783, file: !784, line: 26, baseType: !460, size: 32, offset: 96)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !783, file: !784, line: 27, baseType: !404, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !783, file: !784, line: 28, baseType: !404, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !783, file: !784, line: 41, baseType: !404, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !783, file: !784, line: 42, baseType: !732, size: 32, offset: 320)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !783, file: !784, line: 43, baseType: !732, size: 32, offset: 352)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !783, file: !784, line: 44, baseType: !367, size: 32, offset: 384)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !783, file: !784, line: 45, baseType: !385, size: 32, offset: 416)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !783, file: !784, line: 46, baseType: !285, size: 64, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !783, file: !784, line: 47, baseType: !768, size: 128, offset: 512)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !783, file: !784, line: 48, baseType: !768, size: 128, offset: 640)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !783, file: !784, line: 49, baseType: !768, size: 128, offset: 768)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !783, file: !784, line: 50, baseType: !768, size: 128, offset: 896)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !783, file: !784, line: 51, baseType: !404, size: 64, offset: 1024)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !783, file: !784, line: 52, baseType: !404, size: 64, offset: 1088)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !783, file: !784, line: 53, baseType: !461, size: 32, offset: 1152)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !783, file: !784, line: 54, baseType: !461, size: 32, offset: 1184)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !783, file: !784, line: 55, baseType: !404, size: 64, offset: 1216)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !674, file: !250, line: 1990, baseType: !808, size: 64, offset: 960)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!811, !617, !506, !814}
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !197, line: 66, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !287, line: 73, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !287, line: 15, baseType: !772)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !197, line: 61, baseType: !815)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !287, line: 72, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !287, line: 16, baseType: !47)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !674, file: !250, line: 1991, baseType: !818, size: 64, offset: 1024)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!17, !657, !821, !404, !404}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !250, line: 55, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !674, file: !250, line: 1993, baseType: !824, size: 64, offset: 1088)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!17, !657, !17}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !674, file: !250, line: 1994, baseType: !828, size: 64, offset: 1152)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!17, !657, !617, !248, !66, !661}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !674, file: !250, line: 1997, baseType: !832, size: 64, offset: 1216)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!17, !697, !657, !248, !661}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !674, file: !250, line: 1999, baseType: !836, size: 64, offset: 1280)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!668, !697, !617, !17}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !674, file: !250, line: 2001, baseType: !840, size: 64, offset: 1344)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!17, !697, !617, !668, !17}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !674, file: !250, line: 2003, baseType: !844, size: 64, offset: 1408)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!17, !697, !617, !847}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !250, line: 76, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !674, file: !250, line: 2005, baseType: !850, size: 64, offset: 1472)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!17, !617, !847}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !674, file: !250, line: 2006, baseType: !854, size: 64, offset: 1536)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!857, !657}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !250, line: 3192, size: 192, elements: !859)
!859 = !{!860, !868}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !858, file: !250, line: 3193, baseType: !861, size: 128)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !862, line: 296, size: 128, elements: !863)
!862 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!863 = !{!864, !865, !867}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !861, file: !862, line: 297, baseType: !272, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !861, file: !862, line: 299, baseType: !866, size: 32, offset: 32)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !197, line: 154, baseType: !66)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !861, file: !862, line: 300, baseType: !23, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !858, file: !250, line: 3194, baseType: !461, size: 32, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !658, file: !250, line: 655, baseType: !870, size: 64, offset: 448)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !250, line: 1190, size: 10752, elements: !872)
!872 = !{!873, !874, !875, !876, !877, !878, !2079, !2221, !2261, !2344, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2361, !2365, !2366, !2369, !2372, !2375, !2378, !2379, !2380, !2421, !3633, !3634, !3635, !3636, !3637, !3638, !3641, !3643, !3650, !3651, !3652, !3653, !3712, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !871, file: !250, line: 1191, baseType: !239, size: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !871, file: !250, line: 1192, baseType: !732, size: 32, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !871, file: !250, line: 1193, baseType: !80, size: 8, offset: 160)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !871, file: !250, line: 1194, baseType: !47, size: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !871, file: !250, line: 1195, baseType: !285, size: 64, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !871, file: !250, line: 1196, baseType: !879, size: 64, offset: 320)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !250, line: 2366, size: 576, elements: !881)
!881 = !{!882, !883, !884, !891, !895, !899, !903, !2067, !2068, !2069, !2071, !2072, !2073, !2075, !2076, !2077, !2078}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !880, file: !250, line: 2367, baseType: !30, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !880, file: !250, line: 2368, baseType: !17, size: 32, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !880, file: !250, line: 2376, baseType: !885, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!17, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !890, line: 32, flags: DIFlagFwdDecl)
!890 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!891 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !880, file: !250, line: 2377, baseType: !892, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !894)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !250, line: 75, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !880, file: !250, line: 2378, baseType: !896, size: 64, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!617, !879, !17, !30, !23}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !880, file: !250, line: 2380, baseType: !900, size: 64, offset: 320)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !870}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !880, file: !250, line: 2381, baseType: !904, size: 64, offset: 384)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !906, line: 402, size: 9216, align: 512, elements: !907)
!906 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!907 = !{!908, !915, !916, !920, !1726, !1752, !1753, !1754, !1755, !1759, !1762, !1763, !1764, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1831, !1835, !1853, !1871, !1872, !1873, !1874, !1883, !1906, !1907, !1910, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1924, !1925, !2025, !2033, !2034, !2035, !2037, !2041, !2042, !2046, !2047, !2048, !2049, !2051, !2052, !2053, !2060, !2061, !2062, !2066}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !905, file: !906, line: 403, baseType: !909, size: 32)
!909 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !906, line: 312, baseType: !66, size: 32, elements: !910)
!910 = !{!911, !912, !913, !914}
!911 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!912 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!913 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!914 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !905, file: !906, line: 406, baseType: !239, size: 128, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !905, file: !906, line: 409, baseType: !917, size: 448, offset: 192)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !918)
!918 = !{!919}
!919 = !DISubrange(count: 56)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !905, file: !906, line: 417, baseType: !921, size: 768, offset: 640)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !906, line: 45, size: 768, elements: !922)
!922 = !{!923, !1709, !1710, !1711, !1714}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !921, file: !906, line: 46, baseType: !924, size: 512)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !925, line: 64, size: 512, elements: !926)
!925 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!926 = !{!927, !928, !929, !931, !975, !1589, !1699, !1704, !1705, !1706, !1707, !1708}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !924, file: !925, line: 65, baseType: !30, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !924, file: !925, line: 66, baseType: !239, size: 128, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !924, file: !925, line: 67, baseType: !930, size: 64, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !924, file: !925, line: 68, baseType: !932, size: 64, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !925, line: 168, size: 768, elements: !934)
!934 = !{!935, !936, !937, !938}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !933, file: !925, line: 169, baseType: !239, size: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !933, file: !925, line: 170, baseType: !272, size: 32, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !933, file: !925, line: 171, baseType: !924, size: 512, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !933, file: !925, line: 172, baseType: !939, size: 64, offset: 704)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !941)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !925, line: 133, size: 192, elements: !942)
!942 = !{!943, !950, !955}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !941, file: !925, line: 134, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !945)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!17, !948}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !924)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !941, file: !925, line: 135, baseType: !951, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !952)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!30, !948}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !941, file: !925, line: 136, baseType: !956, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !957)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!17, !948, !960}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !925, line: 125, size: 20736, elements: !962)
!962 = !{!963, !965, !969, !970, !974}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !961, file: !925, line: 126, baseType: !964, size: 192)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 192, elements: !312)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !961, file: !925, line: 127, baseType: !966, size: 4096, offset: 192)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 4096, elements: !967)
!967 = !{!968}
!968 = !DISubrange(count: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !961, file: !925, line: 128, baseType: !17, size: 32, offset: 4288)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !961, file: !925, line: 129, baseType: !971, size: 16384, offset: 4320)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !972)
!972 = !{!973}
!973 = !DISubrange(count: 2048)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !961, file: !925, line: 130, baseType: !17, size: 32, offset: 20704)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !924, file: !925, line: 69, baseType: !976, size: 64, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !978)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !925, line: 116, size: 384, elements: !979)
!979 = !{!980, !984, !1003, !1545, !1579, !1583}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !978, file: !925, line: 117, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !930}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !978, file: !925, line: 118, baseType: !985, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !987)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !988, line: 254, size: 128, elements: !989)
!988 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!989 = !{!990, !999}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !987, file: !988, line: 255, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!811, !930, !994, !506}
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !988, line: 30, size: 128, elements: !996)
!996 = !{!997, !998}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !995, file: !988, line: 31, baseType: !30, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !995, file: !988, line: 32, baseType: !661, size: 16, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !987, file: !988, line: 256, baseType: !1000, size: 64, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!811, !930, !994, !30, !814}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !978, file: !925, line: 119, baseType: !1004, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1007)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !988, line: 84, size: 320, elements: !1008)
!1008 = !{!1009, !1010, !1014, !1541, !1543}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1007, file: !988, line: 85, baseType: !30, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1007, file: !988, line: 86, baseType: !1011, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!661, !930, !994, !17}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1007, file: !988, line: 88, baseType: !1015, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!661, !930, !1018, !17}
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !988, line: 175, size: 512, elements: !1020)
!1020 = !{!1021, !1022, !1023, !1024, !1308, !1312, !1313}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1019, file: !988, line: 176, baseType: !995, size: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1019, file: !988, line: 177, baseType: !814, size: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1019, file: !988, line: 178, baseType: !23, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1019, file: !988, line: 179, baseType: !1025, size: 64, offset: 256)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !250, line: 472, size: 1536, align: 64, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036, !1044, !1045, !1046, !1300, !1301, !1302, !1305, !1306, !1307}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1029, file: !250, line: 473, baseType: !657, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1029, file: !250, line: 474, baseType: !861, size: 128, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1029, file: !250, line: 475, baseType: !436, size: 320, offset: 192)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1029, file: !250, line: 476, baseType: !866, size: 32, offset: 512)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1029, file: !250, line: 477, baseType: !218, size: 32, offset: 544)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1029, file: !250, line: 482, baseType: !1037, size: 128, offset: 576)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !429, line: 26, size: 128, elements: !1038)
!1038 = !{!1039, !1043}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1037, file: !429, line: 27, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !429, line: 12, size: 64, elements: !1041)
!1041 = !{!1042}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1040, file: !429, line: 13, baseType: !433, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1037, file: !429, line: 28, baseType: !433, size: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1029, file: !250, line: 483, baseType: !47, size: 64, offset: 704)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1029, file: !250, line: 484, baseType: !47, size: 64, offset: 768)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1029, file: !250, line: 485, baseType: !1047, size: 64, offset: 832)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !250, line: 404, size: 1280, elements: !1050)
!1050 = !{!1051, !1118, !1188, !1192, !1196, !1202, !1208, !1212, !1217, !1221, !1225, !1229, !1257, !1268, !1272, !1276, !1281, !1285, !1292, !1296}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1049, file: !250, line: 405, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!17, !1055, !1116}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1057, line: 74, size: 512, align: 128, elements: !1058)
!1057 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1058 = !{!1059, !1060, !1110, !1115}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1056, file: !1057, line: 75, baseType: !47, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1056, file: !1057, line: 83, baseType: !1061, size: 320, offset: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1056, file: !1057, line: 83, size: 320, elements: !1062)
!1062 = !{!1063, !1084, !1098, !1102, !1109}
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !1057, line: 84, baseType: !1064, size: 320)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1061, file: !1057, line: 84, size: 320, elements: !1065)
!1065 = !{!1066, !1077, !1078, !1083}
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !1057, line: 90, baseType: !1067, size: 128)
!1067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1064, file: !1057, line: 90, size: 128, elements: !1068)
!1068 = !{!1069, !1070, !1075, !1076}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1067, file: !1057, line: 91, baseType: !239, size: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1067, file: !1057, line: 94, baseType: !1071, size: 128)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1067, file: !1057, line: 94, size: 128, elements: !1072)
!1072 = !{!1073, !1074}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1071, file: !1057, line: 96, baseType: !23, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1071, file: !1057, line: 98, baseType: !66, size: 32, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1067, file: !1057, line: 102, baseType: !239, size: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1067, file: !1057, line: 103, baseType: !239, size: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1064, file: !1057, line: 106, baseType: !1028, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !1057, line: 107, baseType: !1079, size: 64, offset: 192)
!1079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1064, file: !1057, line: 107, size: 64, elements: !1080)
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1079, file: !1057, line: 108, baseType: !47, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1079, file: !1057, line: 109, baseType: !47, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1064, file: !1057, line: 117, baseType: !47, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !1057, line: 119, baseType: !1085, size: 320)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1061, file: !1057, line: 119, size: 320, elements: !1086)
!1086 = !{!1087, !1088, !1091, !1092, !1093}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1085, file: !1057, line: 124, baseType: !47, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1085, file: !1057, line: 125, baseType: !1089, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1057, line: 125, flags: DIFlagFwdDecl)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1085, file: !1057, line: 126, baseType: !47, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1085, file: !1057, line: 127, baseType: !47, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !1057, line: 128, baseType: !1094, size: 64, offset: 256)
!1094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1085, file: !1057, line: 128, size: 64, elements: !1095)
!1095 = !{!1096, !1097}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1094, file: !1057, line: 133, baseType: !47, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1094, file: !1057, line: 138, baseType: !194, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !1057, line: 141, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1061, file: !1057, line: 141, size: 64, elements: !1100)
!1100 = !{!1101}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1099, file: !1057, line: 142, baseType: !47, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !1057, line: 144, baseType: !1103, size: 128)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1061, file: !1057, line: 144, size: 128, elements: !1104)
!1104 = !{!1105, !1108}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1103, file: !1057, line: 146, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1057, line: 146, flags: DIFlagFwdDecl)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1103, file: !1057, line: 147, baseType: !23, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1061, file: !1057, line: 161, baseType: !262, size: 128, align: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, scope: !1056, file: !1057, line: 164, baseType: !1111, size: 32, offset: 384)
!1111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1056, file: !1057, line: 164, size: 32, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1111, file: !1057, line: 169, baseType: !218, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1111, file: !1057, line: 177, baseType: !66, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1056, file: !1057, line: 181, baseType: !218, size: 32, offset: 416)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !250, line: 309, flags: DIFlagFwdDecl)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1049, file: !250, line: 406, baseType: !1119, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!17, !248, !1122}
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1057, line: 293, size: 1536, elements: !1124)
!1124 = !{!1125, !1155, !1169}
!1125 = !DIDerivedType(tag: DW_TAG_member, scope: !1123, file: !1057, line: 295, baseType: !1126, size: 512)
!1126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1123, file: !1057, line: 295, size: 512, elements: !1127)
!1127 = !{!1128, !1154}
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1126, file: !1057, line: 296, baseType: !1129, size: 448)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1126, file: !1057, line: 296, size: 448, elements: !1130)
!1130 = !{!1131, !1132, !1141, !1142, !1143, !1152, !1153}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1129, file: !1057, line: 298, baseType: !47, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !1057, line: 299, baseType: !1133, size: 128, offset: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1129, file: !1057, line: 299, size: 128, elements: !1134)
!1134 = !{!1135, !1136}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1133, file: !1057, line: 300, baseType: !239, size: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !1057, line: 302, baseType: !1137, size: 128)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1133, file: !1057, line: 302, size: 128, elements: !1138)
!1138 = !{!1139, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1137, file: !1057, line: 303, baseType: !23, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1137, file: !1057, line: 305, baseType: !66, size: 32, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1129, file: !1057, line: 310, baseType: !1028, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1129, file: !1057, line: 311, baseType: !47, size: 64, offset: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !1057, line: 312, baseType: !1144, size: 64, offset: 320)
!1144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1129, file: !1057, line: 312, size: 64, elements: !1145)
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1144, file: !1057, line: 313, baseType: !23, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1144, file: !1057, line: 314, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1057, line: 257, baseType: !1149)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1057, line: 255, size: 64, elements: !1150)
!1150 = !{!1151}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1149, file: !1057, line: 256, baseType: !47, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1129, file: !1057, line: 316, baseType: !218, size: 32, offset: 384)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1129, file: !1057, line: 317, baseType: !218, size: 32, offset: 416)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1126, file: !1057, line: 323, baseType: !1056, size: 512, align: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, scope: !1123, file: !1057, line: 325, baseType: !1156, size: 512, offset: 512)
!1156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1123, file: !1057, line: 325, size: 512, elements: !1157)
!1157 = !{!1158, !1168}
!1158 = !DIDerivedType(tag: DW_TAG_member, scope: !1156, file: !1057, line: 326, baseType: !1159, size: 320)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1156, file: !1057, line: 326, size: 320, elements: !1160)
!1160 = !{!1161, !1162, !1163, !1164, !1165, !1166, !1167}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1159, file: !1057, line: 327, baseType: !47, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1159, file: !1057, line: 328, baseType: !47, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1159, file: !1057, line: 329, baseType: !47, size: 64, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1159, file: !1057, line: 331, baseType: !218, size: 32, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1159, file: !1057, line: 332, baseType: !218, size: 32, offset: 224)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1159, file: !1057, line: 333, baseType: !218, size: 32, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1159, file: !1057, line: 335, baseType: !66, size: 32, offset: 288)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1156, file: !1057, line: 339, baseType: !1056, size: 512, align: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, scope: !1123, file: !1057, line: 341, baseType: !1170, size: 512, offset: 1024)
!1170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1123, file: !1057, line: 341, size: 512, elements: !1171)
!1171 = !{!1172, !1181, !1187}
!1172 = !DIDerivedType(tag: DW_TAG_member, scope: !1170, file: !1057, line: 342, baseType: !1173, size: 384)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1170, file: !1057, line: 342, size: 384, elements: !1174)
!1174 = !{!1175, !1176, !1177, !1178, !1179, !1180}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1173, file: !1057, line: 343, baseType: !47, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1173, file: !1057, line: 344, baseType: !47, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1173, file: !1057, line: 346, baseType: !23, size: 64, offset: 128)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1173, file: !1057, line: 347, baseType: !23, size: 64, offset: 192)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1173, file: !1057, line: 348, baseType: !23, size: 64, offset: 256)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1173, file: !1057, line: 349, baseType: !23, size: 64, offset: 320)
!1181 = !DIDerivedType(tag: DW_TAG_member, scope: !1170, file: !1057, line: 352, baseType: !1182, size: 256)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1170, file: !1057, line: 352, size: 256, elements: !1183)
!1183 = !{!1184, !1185, !1186}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1182, file: !1057, line: 353, baseType: !47, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1182, file: !1057, line: 354, baseType: !47, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1182, file: !1057, line: 356, baseType: !239, size: 128, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1170, file: !1057, line: 359, baseType: !1056, size: 512, align: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1049, file: !250, line: 409, baseType: !1189, size: 64, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!17, !1028, !1116}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1049, file: !250, line: 412, baseType: !1193, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!495, !1028, !1122}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1049, file: !250, line: 414, baseType: !1197, size: 64, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !1200}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !250, line: 310, flags: DIFlagFwdDecl)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1049, file: !250, line: 416, baseType: !1203, size: 64, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!17, !248, !1028, !285, !66, !1206, !1207}
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1049, file: !250, line: 419, baseType: !1209, size: 64, offset: 384)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!17, !248, !1028, !285, !66, !66, !1055, !23}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1049, file: !250, line: 424, baseType: !1213, size: 64, offset: 448)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!1216, !1028, !1216}
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !197, line: 131, baseType: !404)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1049, file: !250, line: 425, baseType: !1218, size: 64, offset: 512)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !1122, !814, !814}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1049, file: !250, line: 426, baseType: !1222, size: 64, offset: 576)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!495, !1122, !866}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1049, file: !250, line: 427, baseType: !1226, size: 64, offset: 640)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !1122}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1049, file: !250, line: 428, baseType: !1230, size: 64, offset: 704)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!811, !1233, !1255}
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !250, line: 373, size: 384, elements: !1235)
!1235 = !{!1236, !1237, !1238, !1242, !1243, !1244, !1245}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1234, file: !250, line: 374, baseType: !248, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1234, file: !250, line: 375, baseType: !285, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1234, file: !250, line: 376, baseType: !1239, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !1233, !772}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1234, file: !250, line: 377, baseType: !23, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1234, file: !250, line: 378, baseType: !17, size: 32, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1234, file: !250, line: 379, baseType: !180, size: 16, offset: 288)
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !250, line: 380, baseType: !1246, size: 64, offset: 320)
!1246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1234, file: !250, line: 380, size: 64, elements: !1247)
!1247 = !{!1248, !1251}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1246, file: !250, line: 386, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !250, line: 386, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1246, file: !250, line: 395, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!811, !23}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !250, line: 69, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1049, file: !250, line: 433, baseType: !1258, size: 64, offset: 768)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!17, !1028, !1122, !1122, !1261}
!1261 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !1262, line: 15, baseType: !66, size: 32, elements: !1263)
!1262 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!1263 = !{!1264, !1265, !1266, !1267}
!1264 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!1265 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!1266 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!1267 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1049, file: !250, line: 435, baseType: !1269, size: 64, offset: 832)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!17, !1122}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1049, file: !250, line: 436, baseType: !1273, size: 64, offset: 896)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!495, !1122, !814, !814}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1049, file: !250, line: 438, baseType: !1277, size: 64, offset: 960)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !1122, !1280, !1280}
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1049, file: !250, line: 439, baseType: !1282, size: 64, offset: 1024)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!17, !1028, !1055}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1049, file: !250, line: 442, baseType: !1286, size: 64, offset: 1088)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!17, !1289, !248, !1291}
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !250, line: 66, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1049, file: !250, line: 444, baseType: !1293, size: 64, offset: 1152)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !248}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1049, file: !250, line: 445, baseType: !1297, size: 64, offset: 1216)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!17, !1233, !1255}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1029, file: !250, line: 486, baseType: !47, size: 64, offset: 896)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1029, file: !250, line: 487, baseType: !436, size: 320, offset: 960)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1029, file: !250, line: 488, baseType: !1303, size: 32, offset: 1280)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1304, line: 8, baseType: !461)
!1304 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1029, file: !250, line: 489, baseType: !272, size: 32, offset: 1312)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1029, file: !250, line: 490, baseType: !239, size: 128, offset: 1344)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1029, file: !250, line: 491, baseType: !23, size: 64, offset: 1472)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1019, file: !988, line: 180, baseType: !1309, size: 64, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!811, !248, !930, !1018, !506, !285, !814}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1019, file: !988, line: 182, baseType: !1309, size: 64, offset: 384)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1019, file: !988, line: 184, baseType: !1314, size: 64, offset: 448)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!17, !248, !930, !1018, !1317}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1057, line: 625, size: 1344, elements: !1319)
!1319 = !{!1320, !1329, !1498, !1504, !1511, !1512, !1517, !1518, !1523, !1524, !1527, !1531, !1532, !1533, !1534, !1535, !1539}
!1320 = !DIDerivedType(tag: DW_TAG_member, scope: !1318, file: !1057, line: 628, baseType: !1321, size: 128)
!1321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1318, file: !1057, line: 628, size: 128, elements: !1322)
!1322 = !{!1323, !1328}
!1323 = !DIDerivedType(tag: DW_TAG_member, scope: !1321, file: !1057, line: 629, baseType: !1324, size: 128)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1321, file: !1057, line: 629, size: 128, elements: !1325)
!1325 = !{!1326, !1327}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1324, file: !1057, line: 631, baseType: !47, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1324, file: !1057, line: 632, baseType: !47, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1321, file: !1057, line: 635, baseType: !262, size: 128, align: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1318, file: !1057, line: 639, baseType: !1330, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1057, line: 733, size: 10240, elements: !1332)
!1332 = !{!1333, !1496}
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1331, file: !1057, line: 734, baseType: !1334, size: 10240)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1331, file: !1057, line: 734, size: 10240, elements: !1335)
!1335 = !{!1336, !1340, !1354, !1358, !1359, !1360, !1361, !1362, !1363, !1372, !1373, !1374, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1413, !1415, !1418, !1464, !1465, !1466, !1469, !1470, !1471, !1474, !1475, !1476, !1483, !1484}
!1336 = !DIDerivedType(tag: DW_TAG_member, scope: !1334, file: !1057, line: 739, baseType: !1337, size: 512, align: 512)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1334, file: !1057, line: 739, size: 512, align: 512, elements: !1338)
!1338 = !{!1339}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1337, file: !1057, line: 747, baseType: !218, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1334, file: !1057, line: 750, baseType: !1341, size: 128, offset: 512)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1342, line: 218, size: 128, elements: !1343)
!1342 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1343 = !{!1344, !1352, !1353}
!1344 = !DIDerivedType(tag: DW_TAG_member, scope: !1341, file: !1342, line: 219, baseType: !1345, size: 32)
!1345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1341, file: !1342, line: 219, size: 32, elements: !1346)
!1346 = !{!1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1345, file: !1342, line: 220, baseType: !272, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1345, file: !1342, line: 221, baseType: !1349)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1342, line: 197, baseType: !1350)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1342, line: 197, elements: !1351)
!1351 = !{}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1341, file: !1342, line: 223, baseType: !66, size: 32, offset: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1341, file: !1342, line: 224, baseType: !23, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1334, file: !1057, line: 752, baseType: !1355, size: 64, offset: 640)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!47, !248, !47, !47, !47, !47}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1334, file: !1057, line: 756, baseType: !47, size: 64, offset: 704)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1334, file: !1057, line: 757, baseType: !47, size: 64, offset: 768)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1334, file: !1057, line: 760, baseType: !47, size: 64, offset: 832)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1334, file: !1057, line: 761, baseType: !47, size: 64, offset: 896)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1334, file: !1057, line: 763, baseType: !47, size: 64, offset: 960)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1334, file: !1057, line: 764, baseType: !1364, size: 64, offset: 1024)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1366, line: 299, baseType: !1367)
!1366 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1366, line: 299, size: 64, elements: !1368)
!1368 = !{!1369}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1367, file: !1366, line: 299, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1371, line: 18, baseType: !47)
!1371 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1334, file: !1057, line: 773, baseType: !218, size: 32, offset: 1088)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1334, file: !1057, line: 785, baseType: !218, size: 32, offset: 1120)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1334, file: !1057, line: 795, baseType: !1375, size: 64, offset: 1152)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1057, line: 726, size: 128, elements: !1377)
!1377 = !{!1378, !1379}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1376, file: !1057, line: 727, baseType: !404, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1376, file: !1057, line: 728, baseType: !17, size: 32, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1334, file: !1057, line: 801, baseType: !47, size: 64, offset: 1216)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1334, file: !1057, line: 804, baseType: !194, size: 64, offset: 1280)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1334, file: !1057, line: 806, baseType: !17, size: 32, offset: 1344)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1334, file: !1057, line: 808, baseType: !272, size: 32, offset: 1376)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1334, file: !1057, line: 823, baseType: !436, size: 320, offset: 1408)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1334, file: !1057, line: 825, baseType: !239, size: 128, offset: 1728)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1334, file: !1057, line: 845, baseType: !17, size: 32, offset: 1856)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1334, file: !1057, line: 849, baseType: !47, size: 64, offset: 1920)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1334, file: !1057, line: 850, baseType: !47, size: 64, offset: 1984)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1334, file: !1057, line: 852, baseType: !47, size: 64, offset: 2048)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1334, file: !1057, line: 853, baseType: !47, size: 64, offset: 2112)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1334, file: !1057, line: 854, baseType: !196, size: 64, offset: 2176)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1334, file: !1057, line: 855, baseType: !47, size: 64, offset: 2240)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1334, file: !1057, line: 856, baseType: !47, size: 64, offset: 2304)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1334, file: !1057, line: 857, baseType: !47, size: 64, offset: 2368)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1334, file: !1057, line: 858, baseType: !47, size: 64, offset: 2432)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1334, file: !1057, line: 865, baseType: !628, size: 32, offset: 2496)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1334, file: !1057, line: 867, baseType: !272, size: 32, offset: 2528)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1334, file: !1057, line: 869, baseType: !47, size: 64, offset: 2560)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1334, file: !1057, line: 869, baseType: !47, size: 64, offset: 2624)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1334, file: !1057, line: 869, baseType: !47, size: 64, offset: 2688)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1334, file: !1057, line: 869, baseType: !47, size: 64, offset: 2752)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1334, file: !1057, line: 870, baseType: !47, size: 64, offset: 2816)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1334, file: !1057, line: 870, baseType: !47, size: 64, offset: 2880)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1334, file: !1057, line: 870, baseType: !47, size: 64, offset: 2944)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1334, file: !1057, line: 871, baseType: !47, size: 64, offset: 3008)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1334, file: !1057, line: 871, baseType: !47, size: 64, offset: 3072)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1334, file: !1057, line: 871, baseType: !47, size: 64, offset: 3136)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1334, file: !1057, line: 871, baseType: !47, size: 64, offset: 3200)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1334, file: !1057, line: 873, baseType: !1410, size: 3328, offset: 3264)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 3328, elements: !1411)
!1411 = !{!1412}
!1412 = !DISubrange(count: 52)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1334, file: !1057, line: 875, baseType: !1414, size: 1280, offset: 6592)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 1280, elements: !5)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1334, file: !1057, line: 877, baseType: !1416, size: 64, offset: 7872)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1057, line: 877, flags: DIFlagFwdDecl)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1334, file: !1057, line: 880, baseType: !1419, size: 1088, offset: 7936)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1420, line: 72, baseType: !1421)
!1420 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1420, line: 23, size: 1088, elements: !1422)
!1422 = !{!1423, !1424, !1425, !1426, !1427, !1430, !1431, !1432, !1433, !1460, !1461, !1462}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1421, file: !1420, line: 28, baseType: !404, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1421, file: !1420, line: 38, baseType: !196, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1421, file: !1420, line: 40, baseType: !47, size: 64, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1421, file: !1420, line: 43, baseType: !436, size: 320, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1421, file: !1420, line: 44, baseType: !1428, size: 64, offset: 512)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1420, line: 44, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1421, file: !1420, line: 48, baseType: !47, size: 64, offset: 576)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1421, file: !1420, line: 59, baseType: !190, size: 256, offset: 640)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1421, file: !1420, line: 60, baseType: !23, size: 64, offset: 896)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1421, file: !1420, line: 61, baseType: !1434, size: 64, offset: 960)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1436)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1437, line: 13, size: 1216, elements: !1438)
!1437 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1438 = !{!1439, !1440, !1441, !1442, !1443, !1444, !1445, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1436, file: !1437, line: 14, baseType: !23, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1436, file: !1437, line: 15, baseType: !47, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1436, file: !1437, line: 17, baseType: !47, size: 64, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1436, file: !1437, line: 17, baseType: !47, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1436, file: !1437, line: 18, baseType: !47, size: 64, offset: 256)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1436, file: !1437, line: 18, baseType: !47, size: 64, offset: 320)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1436, file: !1437, line: 19, baseType: !1446, size: 64, offset: 384)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1436, file: !1437, line: 21, baseType: !772, size: 64, offset: 448)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1436, file: !1437, line: 23, baseType: !772, size: 64, offset: 512)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1436, file: !1437, line: 24, baseType: !772, size: 64, offset: 576)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1436, file: !1437, line: 25, baseType: !772, size: 64, offset: 640)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1436, file: !1437, line: 26, baseType: !772, size: 64, offset: 704)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1436, file: !1437, line: 27, baseType: !772, size: 64, offset: 768)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1436, file: !1437, line: 28, baseType: !772, size: 64, offset: 832)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1436, file: !1437, line: 29, baseType: !772, size: 64, offset: 896)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1436, file: !1437, line: 30, baseType: !772, size: 64, offset: 960)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1436, file: !1437, line: 31, baseType: !772, size: 64, offset: 1024)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1436, file: !1437, line: 32, baseType: !772, size: 64, offset: 1088)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1436, file: !1437, line: 33, baseType: !772, size: 64, offset: 1152)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1421, file: !1420, line: 63, baseType: !218, size: 32, offset: 1024)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1421, file: !1420, line: 69, baseType: !180, size: 16, offset: 1056)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1421, file: !1420, line: 70, baseType: !1463, size: 16, offset: 1072)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !181, line: 18, baseType: !108)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1334, file: !1057, line: 882, baseType: !47, size: 64, offset: 9024)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1334, file: !1057, line: 885, baseType: !272, size: 32, offset: 9088)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1334, file: !1057, line: 886, baseType: !1467, size: 64, offset: 9152)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1057, line: 732, flags: DIFlagFwdDecl)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1334, file: !1057, line: 901, baseType: !579, size: 64, offset: 9216)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1334, file: !1057, line: 904, baseType: !248, size: 64, offset: 9280)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1334, file: !1057, line: 906, baseType: !1472, size: 64, offset: 9344)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1057, line: 906, flags: DIFlagFwdDecl)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1334, file: !1057, line: 930, baseType: !218, size: 32, offset: 9408)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1334, file: !1057, line: 933, baseType: !218, size: 32, offset: 9440)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1334, file: !1057, line: 935, baseType: !1477, size: 64, offset: 9472)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1478, line: 103, size: 64, elements: !1479)
!1478 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!1479 = !{!1480}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1477, file: !1478, line: 104, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !1478, line: 101, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1334, file: !1057, line: 940, baseType: !194, size: 64, offset: 9536)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1334, file: !1057, line: 942, baseType: !1485, size: 256, offset: 9600)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1486, line: 98, size: 256, elements: !1487)
!1486 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1487 = !{!1488, !1489, !1490}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1485, file: !1486, line: 99, baseType: !194, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1485, file: !1486, line: 100, baseType: !239, size: 128, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1485, file: !1486, line: 101, baseType: !1491, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1486, line: 21, baseType: !1492)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{null, !1495}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1331, file: !1057, line: 986, baseType: !1497, offset: 10240)
!1497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, elements: !356)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1318, file: !1057, line: 640, baseType: !1499, size: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1366, line: 297, baseType: !1500)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1366, line: 297, size: 64, elements: !1501)
!1501 = !{!1502}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1500, file: !1366, line: 297, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1371, line: 19, baseType: !47)
!1504 = !DIDerivedType(tag: DW_TAG_member, scope: !1318, file: !1057, line: 646, baseType: !1505, size: 64, offset: 256)
!1505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1318, file: !1057, line: 646, size: 64, elements: !1506)
!1506 = !{!1507, !1510}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1505, file: !1057, line: 647, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1509)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1057, line: 542, baseType: !47)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1505, file: !1057, line: 648, baseType: !1509, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1318, file: !1057, line: 666, baseType: !17, size: 32, offset: 320)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1318, file: !1057, line: 667, baseType: !1513, size: 64, offset: 384)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1057, line: 579, size: 320, elements: !1515)
!1515 = !{!1516}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1514, file: !1057, line: 580, baseType: !436, size: 320)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1318, file: !1057, line: 670, baseType: !495, size: 8, offset: 448)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1318, file: !1057, line: 681, baseType: !1519, size: 256, offset: 512)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !1057, line: 678, size: 256, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1519, file: !1057, line: 679, baseType: !428, size: 192, align: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1519, file: !1057, line: 680, baseType: !47, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1318, file: !1057, line: 689, baseType: !239, size: 128, offset: 768)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1318, file: !1057, line: 691, baseType: !1525, size: 64, offset: 896)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1057, line: 691, flags: DIFlagFwdDecl)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1318, file: !1057, line: 694, baseType: !1528, size: 64, offset: 960)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1530)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1057, line: 694, flags: DIFlagFwdDecl)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1318, file: !1057, line: 697, baseType: !47, size: 64, offset: 1024)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1318, file: !1057, line: 699, baseType: !248, size: 64, offset: 1088)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1318, file: !1057, line: 700, baseType: !23, size: 64, offset: 1152)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1318, file: !1057, line: 711, baseType: !194, size: 64, offset: 1216)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1318, file: !1057, line: 717, baseType: !1536, size: 64, offset: 1280)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1538, line: 54, flags: DIFlagFwdDecl)
!1538 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1318, file: !1057, line: 722, baseType: !1540, offset: 1344)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1057, line: 570, elements: !1351)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1007, file: !988, line: 90, baseType: !1542, size: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1007, file: !988, line: 91, baseType: !1544, size: 64, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !978, file: !925, line: 120, baseType: !1546, size: 64, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!1549, !948}
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1551)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !1552, line: 39, size: 384, elements: !1553)
!1552 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!1553 = !{!1554, !1560, !1564, !1568, !1574, !1578}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1551, file: !1552, line: 40, baseType: !1555, size: 32)
!1555 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !1552, line: 26, baseType: !66, size: 32, elements: !1556)
!1556 = !{!1557, !1558, !1559}
!1557 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!1558 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!1559 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1551, file: !1552, line: 41, baseType: !1561, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!495}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1551, file: !1552, line: 42, baseType: !1565, size: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!23}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1551, file: !1552, line: 43, baseType: !1569, size: 64, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!1446, !1572}
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1552, line: 19, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1551, file: !1552, line: 44, baseType: !1575, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!1446}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1551, file: !1552, line: 45, baseType: !689, size: 64, offset: 320)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !978, file: !925, line: 121, baseType: !1580, size: 64, offset: 256)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!1446, !948}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !978, file: !925, line: 122, baseType: !1584, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{null, !948, !1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !924, file: !925, line: 70, baseType: !1590, size: 64, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !890, line: 190, size: 1152, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1691, !1692, !1693, !1694, !1695, !1698}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1591, file: !890, line: 191, baseType: !218, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1591, file: !890, line: 192, baseType: !218, size: 32, offset: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1591, file: !890, line: 202, baseType: !1590, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1591, file: !890, line: 203, baseType: !30, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1591, file: !890, line: 205, baseType: !428, size: 192, align: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1591, file: !890, line: 207, baseType: !1446, size: 64, offset: 384)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1591, file: !890, line: 208, baseType: !66, size: 32, offset: 448)
!1600 = !DIDerivedType(tag: DW_TAG_member, scope: !1591, file: !890, line: 209, baseType: !1601, size: 256, offset: 512)
!1601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1591, file: !890, line: 209, size: 256, elements: !1602)
!1602 = !{!1603, !1612, !1616}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1601, file: !890, line: 210, baseType: !1604, size: 256)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !890, line: 153, size: 256, elements: !1605)
!1605 = !{!1606, !1607, !1608, !1611}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1604, file: !890, line: 154, baseType: !47, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1604, file: !890, line: 156, baseType: !1040, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1604, file: !890, line: 162, baseType: !1609, size: 64, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !890, line: 162, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1604, file: !890, line: 167, baseType: !47, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1601, file: !890, line: 211, baseType: !1613, size: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !890, line: 170, size: 64, elements: !1614)
!1614 = !{!1615}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1613, file: !890, line: 171, baseType: !1590, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1601, file: !890, line: 212, baseType: !1617, size: 256)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !890, line: 174, size: 256, elements: !1618)
!1618 = !{!1619, !1686, !1689, !1690}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1617, file: !890, line: 175, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1622)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !890, line: 271, size: 768, elements: !1623)
!1623 = !{!1624, !1646, !1650, !1654, !1659, !1663, !1667, !1671, !1672, !1673, !1674, !1682}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1622, file: !890, line: 276, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!17, !1628}
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !890, line: 251, size: 1216, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1629, file: !890, line: 253, baseType: !1590, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1629, file: !890, line: 254, baseType: !248, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1629, file: !890, line: 255, baseType: !1634, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1538, line: 66, flags: DIFlagFwdDecl)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1629, file: !890, line: 256, baseType: !23, size: 64, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1629, file: !890, line: 259, baseType: !190, size: 256, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1629, file: !890, line: 260, baseType: !190, size: 256, offset: 512)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1629, file: !890, line: 261, baseType: !17, size: 32, offset: 768)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1629, file: !890, line: 262, baseType: !239, size: 128, offset: 832)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1629, file: !890, line: 263, baseType: !506, size: 64, offset: 960)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1629, file: !890, line: 265, baseType: !814, size: 64, offset: 1024)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1629, file: !890, line: 266, baseType: !495, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1629, file: !890, line: 267, baseType: !495, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1629, file: !890, line: 268, baseType: !1528, size: 64, offset: 1152)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1622, file: !890, line: 277, baseType: !1647, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{null, !1628}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1622, file: !890, line: 290, baseType: !1651, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!17, !1634, !23}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1622, file: !890, line: 292, baseType: !1655, size: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!23, !1634, !1658}
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1622, file: !890, line: 293, baseType: !1660, size: 64, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!23, !1634, !23, !1658}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1622, file: !890, line: 294, baseType: !1664, size: 64, offset: 320)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{null, !1634, !23}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1622, file: !890, line: 296, baseType: !1668, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!811, !1628, !506, !814, !285}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1622, file: !890, line: 306, baseType: !814, size: 64, offset: 448)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1622, file: !890, line: 313, baseType: !495, size: 8, offset: 512)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1622, file: !890, line: 314, baseType: !1668, size: 64, offset: 576)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1622, file: !890, line: 317, baseType: !1675, size: 64, offset: 640)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!1678, !1628, !1680}
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1679, line: 59, baseType: !66)
!1679 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !890, line: 31, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1622, file: !890, line: 320, baseType: !1683, size: 64, offset: 704)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!17, !1628, !1317}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1617, file: !890, line: 176, baseType: !1687, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !890, line: 35, flags: DIFlagFwdDecl)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1617, file: !890, line: 177, baseType: !285, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1617, file: !890, line: 178, baseType: !1590, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1591, file: !890, line: 215, baseType: !23, size: 64, offset: 768)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1591, file: !890, line: 221, baseType: !404, size: 64, offset: 832)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1591, file: !890, line: 223, baseType: !41, size: 16, offset: 896)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1591, file: !890, line: 224, baseType: !661, size: 16, offset: 912)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1591, file: !890, line: 225, baseType: !1696, size: 64, offset: 960)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !890, line: 36, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1591, file: !890, line: 227, baseType: !262, size: 128, align: 64, offset: 1024)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !924, file: !925, line: 71, baseType: !1700, size: 32, offset: 448)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1701, line: 19, size: 32, elements: !1702)
!1701 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1702 = !{!1703}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1700, file: !1701, line: 20, baseType: !321, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !924, file: !925, line: 73, baseType: !66, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !924, file: !925, line: 74, baseType: !66, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !924, file: !925, line: 75, baseType: !66, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !924, file: !925, line: 76, baseType: !66, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !924, file: !925, line: 77, baseType: !66, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !921, file: !906, line: 47, baseType: !904, size: 64, offset: 512)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !921, file: !906, line: 48, baseType: !930, size: 64, offset: 576)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !921, file: !906, line: 49, baseType: !1712, size: 64, offset: 640)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !906, line: 49, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !921, file: !906, line: 50, baseType: !1715, size: 64, offset: 704)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1717, line: 26, size: 256, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1716, file: !1717, line: 27, baseType: !66, size: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1716, file: !1717, line: 28, baseType: !1721, size: 192, offset: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1722, line: 43, size: 192, elements: !1723)
!1722 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1721, file: !1722, line: 44, baseType: !205, size: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1721, file: !1722, line: 45, baseType: !239, size: 128, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !905, file: !906, line: 418, baseType: !1727, size: 64, offset: 1408)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !906, line: 53, size: 448, elements: !1729)
!1729 = !{!1730, !1731, !1736, !1740, !1744, !1748}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1728, file: !906, line: 54, baseType: !995, size: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1728, file: !906, line: 55, baseType: !1732, size: 64, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!811, !1727, !1735, !506}
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1728, file: !906, line: 57, baseType: !1737, size: 64, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!811, !1727, !1735, !30, !814}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1728, file: !906, line: 59, baseType: !1741, size: 64, offset: 256)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !904, !30}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1728, file: !906, line: 60, baseType: !1745, size: 64, offset: 320)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!17, !904}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1728, file: !906, line: 61, baseType: !1749, size: 64, offset: 384)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{null, !904}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !905, file: !906, line: 419, baseType: !30, size: 64, offset: 1472)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !905, file: !906, line: 420, baseType: !30, size: 64, offset: 1536)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !905, file: !906, line: 421, baseType: !930, size: 64, offset: 1600)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !905, file: !906, line: 424, baseType: !1756, size: 64, offset: 1664)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1758)
!1758 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !906, line: 424, flags: DIFlagFwdDecl)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !905, file: !906, line: 425, baseType: !1760, size: 64, offset: 1728)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !905, file: !906, line: 426, baseType: !66, size: 32, offset: 1792)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !905, file: !906, line: 435, baseType: !190, size: 256, offset: 1856)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !905, file: !906, line: 437, baseType: !1765, size: 64, offset: 2112)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1767, line: 69, size: 320, elements: !1768)
!1767 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1768 = !{!1769, !1770, !1771, !1788, !1790, !1794, !1795}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1766, file: !1767, line: 70, baseType: !30, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1766, file: !1767, line: 71, baseType: !904, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1766, file: !1767, line: 72, baseType: !1772, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1774)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1767, line: 47, size: 256, elements: !1775)
!1775 = !{!1776, !1777, !1783, !1787}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1774, file: !1767, line: 49, baseType: !66, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1774, file: !1767, line: 51, baseType: !1778, size: 64, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!17, !30, !1781}
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1766)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1774, file: !1767, line: 53, baseType: !1784, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!17, !506, !1781}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1774, file: !1767, line: 55, baseType: !689, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1766, file: !1767, line: 73, baseType: !1789, size: 16, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1766, file: !1767, line: 74, baseType: !1791, size: 8, offset: 208)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !181, line: 16, baseType: !1792)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !40, line: 20, baseType: !1793)
!1793 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1766, file: !1767, line: 75, baseType: !226, size: 8, offset: 216)
!1795 = !DIDerivedType(tag: DW_TAG_member, scope: !1766, file: !1767, line: 76, baseType: !1796, size: 64, offset: 256)
!1796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1766, file: !1767, line: 76, size: 64, elements: !1797)
!1797 = !{!1798, !1799, !1806}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1796, file: !1767, line: 77, baseType: !23, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1796, file: !1767, line: 78, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1802)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1767, line: 86, size: 128, elements: !1803)
!1803 = !{!1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1802, file: !1767, line: 87, baseType: !66, size: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1802, file: !1767, line: 88, baseType: !506, size: 64, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1796, file: !1767, line: 79, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1809)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1767, line: 92, size: 256, elements: !1810)
!1810 = !{!1811, !1812, !1813, !1814, !1815}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1809, file: !1767, line: 94, baseType: !66, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1809, file: !1767, line: 95, baseType: !66, size: 32, offset: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1809, file: !1767, line: 96, baseType: !89, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1809, file: !1767, line: 97, baseType: !1772, size: 64, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1809, file: !1767, line: 98, baseType: !23, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !905, file: !906, line: 438, baseType: !66, size: 32, offset: 2176)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !905, file: !906, line: 441, baseType: !66, size: 32, offset: 2208)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !905, file: !906, line: 442, baseType: !1756, size: 64, offset: 2240)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !905, file: !906, line: 443, baseType: !1760, size: 64, offset: 2304)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !905, file: !906, line: 444, baseType: !495, size: 8, offset: 2368)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !905, file: !906, line: 451, baseType: !495, size: 8, offset: 2376)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !905, file: !906, line: 454, baseType: !66, size: 32, offset: 2400)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !905, file: !906, line: 455, baseType: !1824, size: 64, offset: 2432)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1826, line: 23, size: 96, elements: !1827)
!1826 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1827 = !{!1828, !1829, !1830}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1825, file: !1826, line: 24, baseType: !17, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1825, file: !1826, line: 24, baseType: !17, size: 32, offset: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1825, file: !1826, line: 24, baseType: !17, size: 32, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !905, file: !906, line: 458, baseType: !1832, size: 64, offset: 2496)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!17}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !905, file: !906, line: 460, baseType: !1836, size: 4032, align: 512, offset: 2560)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1837, size: 4032, elements: !1851)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !906, line: 362, size: 576, elements: !1838)
!1838 = !{!1839, !1840, !1841}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1837, file: !906, line: 363, baseType: !23, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1837, file: !906, line: 364, baseType: !66, size: 32, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1837, file: !906, line: 367, baseType: !1842, size: 448, offset: 128)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !906, line: 319, size: 448, elements: !1843)
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1842, file: !906, line: 320, baseType: !904, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1842, file: !906, line: 321, baseType: !1846, size: 384, offset: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1847, line: 40, size: 384, elements: !1848)
!1847 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1848 = !{!1849}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1846, file: !1847, line: 41, baseType: !1850, size: 384, align: 64)
!1850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 384, align: 64, elements: !62)
!1851 = !{!1852}
!1852 = !DISubrange(count: 7)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !905, file: !906, line: 463, baseType: !1854, size: 192, offset: 6592)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1855, line: 8, size: 192, elements: !1856)
!1855 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1856 = !{!1857, !1858, !1860}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1854, file: !1855, line: 10, baseType: !66, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1854, file: !1855, line: 11, baseType: !1859, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1854, file: !1855, line: 12, baseType: !1861, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1863, line: 59, size: 48, elements: !1864)
!1863 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1864 = !{!1865, !1866, !1867, !1868, !1869, !1870}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1862, file: !1863, line: 60, baseType: !1463, size: 16)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1862, file: !1863, line: 61, baseType: !1463, size: 16, offset: 16)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1862, file: !1863, line: 63, baseType: !66, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1862, file: !1863, line: 64, baseType: !66, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1862, file: !1863, line: 65, baseType: !66, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1862, file: !1863, line: 66, baseType: !66, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !905, file: !906, line: 465, baseType: !47, size: 64, offset: 6784)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !905, file: !906, line: 469, baseType: !66, size: 32, offset: 6848)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !905, file: !906, line: 470, baseType: !239, size: 128, offset: 6912)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !905, file: !906, line: 471, baseType: !1875, size: 64, offset: 7040)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1877, line: 33, size: 96, elements: !1878)
!1877 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1878 = !{!1879, !1880, !1881, !1882}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1876, file: !1877, line: 37, baseType: !17, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1876, file: !1877, line: 43, baseType: !17, size: 32, offset: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1876, file: !1877, line: 45, baseType: !41, size: 16, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1876, file: !1877, line: 47, baseType: !41, size: 16, offset: 80)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !905, file: !906, line: 476, baseType: !1884, size: 64, offset: 7104)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !906, line: 378, size: 256, elements: !1886)
!1886 = !{!1887, !1903, !1904, !1905}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1885, file: !906, line: 379, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1890, line: 204, baseType: !1891)
!1890 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1890, line: 197, size: 192, elements: !1892)
!1892 = !{!1893, !1895, !1896, !1897, !1899, !1901}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1891, file: !1890, line: 198, baseType: !1894, size: 32)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1890, line: 21, baseType: !84)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1891, file: !1890, line: 199, baseType: !80, size: 8, offset: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1891, file: !1890, line: 200, baseType: !80, size: 8, offset: 40)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1891, file: !1890, line: 201, baseType: !1898, size: 16, offset: 48)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1890, line: 17, baseType: !39)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1891, file: !1890, line: 202, baseType: !1900, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1890, line: 16, baseType: !405)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1891, file: !1890, line: 203, baseType: !1902, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1890, line: 22, baseType: !405)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1885, file: !906, line: 380, baseType: !66, size: 32, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1885, file: !906, line: 381, baseType: !506, size: 64, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1885, file: !906, line: 382, baseType: !506, size: 64, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !905, file: !906, line: 477, baseType: !1885, size: 256, offset: 7168)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !905, file: !906, line: 480, baseType: !1908, size: 64, offset: 7424)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !906, line: 480, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !905, file: !906, line: 483, baseType: !1911, size: 64, offset: 7488)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !906, line: 483, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !905, file: !906, line: 488, baseType: !506, size: 64, offset: 7552)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !905, file: !906, line: 492, baseType: !23, size: 64, offset: 7616)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !905, file: !906, line: 493, baseType: !66, size: 32, offset: 7680)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !905, file: !906, line: 495, baseType: !23, size: 64, offset: 7744)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !905, file: !906, line: 496, baseType: !66, size: 32, offset: 7808)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !905, file: !906, line: 499, baseType: !66, size: 32, offset: 7840)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !905, file: !906, line: 500, baseType: !1920, size: 64, offset: 7872)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1922, line: 45, baseType: !1923)
!1922 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !905, file: !906, line: 503, baseType: !66, size: 32, offset: 7936)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !905, file: !906, line: 504, baseType: !1926, size: 64, offset: 8000)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1929, line: 96, size: 192, elements: !1930)
!1929 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1930 = !{!1931, !1932, !1986, !1989}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1928, file: !1929, line: 97, baseType: !66, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1928, file: !1929, line: 98, baseType: !1933, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1929, line: 24, size: 3072, elements: !1935)
!1935 = !{!1936, !1938, !1939, !1940, !1941, !1955, !1956, !1957, !1958, !1970, !1971, !1972, !1983, !1984, !1985}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1934, file: !1929, line: 26, baseType: !1937, size: 128)
!1937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 128, elements: !62)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1934, file: !1929, line: 27, baseType: !1937, size: 128, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1934, file: !1929, line: 28, baseType: !17, size: 32, offset: 256)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1934, file: !1929, line: 31, baseType: !272, size: 32, align: 512, offset: 512)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1934, file: !1929, line: 32, baseType: !1942, size: 960, offset: 576)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1943, line: 206, size: 960, elements: !1944)
!1943 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1944 = !{!1945, !1946, !1949, !1951, !1952, !1954}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1942, file: !1943, line: 207, baseType: !265, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1942, file: !1943, line: 208, baseType: !1947, size: 256, offset: 64)
!1947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1948, size: 256, elements: !5)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1942, file: !1943, line: 209, baseType: !1950, size: 256, offset: 320)
!1950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 256, elements: !5)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1942, file: !1943, line: 213, baseType: !772, size: 64, offset: 576)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1942, file: !1943, line: 215, baseType: !1953, size: 256, offset: 640)
!1953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !772, size: 256, elements: !5)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1942, file: !1943, line: 216, baseType: !226, size: 8, offset: 896)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1934, file: !1929, line: 33, baseType: !47, size: 64, offset: 1536)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1934, file: !1929, line: 34, baseType: !47, size: 64, offset: 1600)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1934, file: !1929, line: 35, baseType: !495, size: 8, offset: 1664)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1934, file: !1929, line: 36, baseType: !1959, size: 320, offset: 1728)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1960, line: 11, size: 320, elements: !1961)
!1960 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1961 = !{!1962, !1963, !1964, !1969}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1959, file: !1960, line: 16, baseType: !334, size: 128)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1959, file: !1960, line: 17, baseType: !47, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1959, file: !1960, line: 18, baseType: !1965, size: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{null, !1968}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1959, file: !1960, line: 19, baseType: !461, size: 32, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1934, file: !1929, line: 37, baseType: !1485, size: 256, offset: 2048)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1934, file: !1929, line: 38, baseType: !262, size: 128, align: 64, offset: 2304)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1934, file: !1929, line: 39, baseType: !1973, size: 64, offset: 2432)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1929, line: 49, size: 768, elements: !1975)
!1975 = !{!1976, !1977, !1978, !1979, !1980, !1981, !1982}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1974, file: !1929, line: 50, baseType: !272, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1974, file: !1929, line: 51, baseType: !1950, size: 256, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1974, file: !1929, line: 53, baseType: !1950, size: 256, offset: 320)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1974, file: !1929, line: 54, baseType: !47, size: 64, offset: 576)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1974, file: !1929, line: 55, baseType: !1973, size: 64, offset: 640)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1974, file: !1929, line: 56, baseType: !17, size: 32, offset: 704)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1974, file: !1929, line: 57, baseType: !17, size: 32, offset: 736)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1934, file: !1929, line: 40, baseType: !47, size: 64, offset: 2496)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1934, file: !1929, line: 42, baseType: !17, size: 32, offset: 2560)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1934, file: !1929, line: 43, baseType: !1927, size: 64, offset: 2624)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1928, file: !1929, line: 99, baseType: !1987, offset: 128)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1988, line: 211, elements: !1351)
!1988 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1928, file: !1929, line: 100, baseType: !1990, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1929, line: 63, size: 3008, elements: !1992)
!1992 = !{!1993, !1994, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2024}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1991, file: !1929, line: 64, baseType: !1973, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1991, file: !1929, line: 65, baseType: !1995, size: 192, offset: 64)
!1995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1973, size: 192, elements: !312)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1991, file: !1929, line: 67, baseType: !17, size: 32, offset: 256)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1991, file: !1929, line: 68, baseType: !190, size: 256, offset: 320)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1991, file: !1929, line: 69, baseType: !272, size: 32, offset: 576)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1991, file: !1929, line: 70, baseType: !190, size: 256, offset: 640)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1991, file: !1929, line: 71, baseType: !47, size: 64, offset: 896)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1991, file: !1929, line: 72, baseType: !47, size: 64, offset: 960)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1991, file: !1929, line: 73, baseType: !47, size: 64, offset: 1024)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1991, file: !1929, line: 74, baseType: !47, size: 64, offset: 1088)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1991, file: !1929, line: 75, baseType: !47, size: 64, offset: 1152)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1991, file: !1929, line: 76, baseType: !47, size: 64, offset: 1216)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1991, file: !1929, line: 77, baseType: !47, size: 64, offset: 1280)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1991, file: !1929, line: 78, baseType: !47, size: 64, offset: 1344)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1991, file: !1929, line: 79, baseType: !495, size: 8, offset: 1408)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1991, file: !1929, line: 80, baseType: !47, size: 64, offset: 1472)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1991, file: !1929, line: 81, baseType: !190, size: 256, offset: 1536)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1991, file: !1929, line: 82, baseType: !1716, size: 256, offset: 1792)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1991, file: !1929, line: 84, baseType: !218, size: 32, offset: 2048)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1991, file: !1929, line: 87, baseType: !47, size: 64, offset: 2112)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1991, file: !1929, line: 88, baseType: !47, size: 64, offset: 2176)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1991, file: !1929, line: 89, baseType: !2016, size: 704, offset: 2240)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1486, line: 111, size: 704, elements: !2017)
!2017 = !{!2018, !2019, !2020, !2023}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2016, file: !1486, line: 112, baseType: !1485, size: 256)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2016, file: !1486, line: 113, baseType: !1959, size: 320, offset: 256)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2016, file: !1486, line: 116, baseType: !2021, size: 64, offset: 576)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1486, line: 18, flags: DIFlagFwdDecl)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2016, file: !1486, line: 117, baseType: !17, size: 32, offset: 640)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1991, file: !1929, line: 90, baseType: !1927, size: 64, offset: 2944)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !905, file: !906, line: 515, baseType: !2026, size: 64, offset: 8064)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2028, line: 117, size: 128, elements: !2029)
!2028 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2029 = !{!2030, !2031, !2032}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2027, file: !2028, line: 118, baseType: !421, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2027, file: !2028, line: 119, baseType: !421, size: 32, offset: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2027, file: !2028, line: 120, baseType: !772, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !905, file: !906, line: 516, baseType: !66, size: 32, offset: 8128)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !905, file: !906, line: 519, baseType: !66, size: 32, offset: 8160)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !905, file: !906, line: 520, baseType: !2036, size: 64, offset: 8192)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !905, file: !906, line: 523, baseType: !2038, size: 64, offset: 8256)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !906, line: 523, flags: DIFlagFwdDecl)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !905, file: !906, line: 524, baseType: !66, size: 32, offset: 8320)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !905, file: !906, line: 525, baseType: !2043, size: 64, offset: 8384)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !906, line: 525, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !905, file: !906, line: 526, baseType: !66, size: 32, offset: 8448)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !905, file: !906, line: 533, baseType: !23, size: 64, offset: 8512)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !905, file: !906, line: 534, baseType: !66, size: 32, offset: 8576)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !905, file: !906, line: 535, baseType: !2050, size: 64, offset: 8640)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !905, file: !906, line: 536, baseType: !66, size: 32, offset: 8704)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !905, file: !906, line: 539, baseType: !17, size: 32, offset: 8736)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !905, file: !906, line: 540, baseType: !2054, size: 64, offset: 8768)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2056, line: 32, size: 64, elements: !2057)
!2056 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2057 = !{!2058, !2059}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2055, file: !2056, line: 33, baseType: !421, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2055, file: !2056, line: 34, baseType: !421, size: 32, offset: 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !905, file: !906, line: 563, baseType: !239, size: 128, offset: 8832)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !905, file: !906, line: 565, baseType: !239, size: 128, offset: 8960)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !905, file: !906, line: 568, baseType: !2063, size: 64, offset: 9088)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{null}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !905, file: !906, line: 570, baseType: !218, size: 32, offset: 9152)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !880, file: !250, line: 2382, baseType: !879, size: 64, offset: 448)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !880, file: !250, line: 2383, baseType: !330, size: 64, offset: 512)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !880, file: !250, line: 2385, baseType: !2070, offset: 576)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1988, line: 206, elements: !1351)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !880, file: !250, line: 2386, baseType: !2070, offset: 576)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !880, file: !250, line: 2387, baseType: !2070, offset: 576)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !880, file: !250, line: 2388, baseType: !2074, offset: 576)
!2074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2070, elements: !312)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !880, file: !250, line: 2390, baseType: !2070, offset: 576)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !880, file: !250, line: 2391, baseType: !2070, offset: 576)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !880, file: !250, line: 2392, baseType: !2070, offset: 576)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !880, file: !250, line: 2393, baseType: !2070, offset: 576)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !871, file: !250, line: 1197, baseType: !2080, size: 64, offset: 384)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2082)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !250, line: 2057, size: 1664, elements: !2083)
!2083 = !{!2084, !2088, !2092, !2093, !2097, !2101, !2105, !2106, !2107, !2111, !2119, !2123, !2124, !2125, !2131, !2135, !2136, !2140, !2141, !2142, !2143, !2147, !2151, !2204, !2219, !2220}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2082, file: !250, line: 2058, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!657, !870}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2082, file: !250, line: 2059, baseType: !2089, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{null, !657}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2082, file: !250, line: 2060, baseType: !2089, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2082, file: !250, line: 2062, baseType: !2094, size: 64, offset: 192)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{null, !657, !17}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2082, file: !250, line: 2063, baseType: !2098, size: 64, offset: 256)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!17, !657, !1116}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2082, file: !250, line: 2064, baseType: !2102, size: 64, offset: 320)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!17, !657}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2082, file: !250, line: 2065, baseType: !2089, size: 64, offset: 384)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2082, file: !250, line: 2066, baseType: !900, size: 64, offset: 448)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2082, file: !250, line: 2067, baseType: !2108, size: 64, offset: 512)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!17, !870, !17}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2082, file: !250, line: 2068, baseType: !2112, size: 64, offset: 576)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!17, !870, !2115}
!2115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !250, line: 2052, baseType: !66, size: 32, elements: !2116)
!2116 = !{!2117, !2118}
!2117 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!2118 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2082, file: !250, line: 2069, baseType: !2120, size: 64, offset: 640)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!17, !870}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2082, file: !250, line: 2070, baseType: !2112, size: 64, offset: 704)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2082, file: !250, line: 2071, baseType: !2120, size: 64, offset: 768)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2082, file: !250, line: 2072, baseType: !2126, size: 64, offset: 832)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!17, !617, !2129}
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !250, line: 62, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2082, file: !250, line: 2073, baseType: !2132, size: 64, offset: 896)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!17, !870, !1859, !506}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2082, file: !250, line: 2074, baseType: !900, size: 64, offset: 960)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2082, file: !250, line: 2076, baseType: !2137, size: 64, offset: 1024)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!17, !1634, !617}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2082, file: !250, line: 2077, baseType: !2137, size: 64, offset: 1088)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2082, file: !250, line: 2078, baseType: !2137, size: 64, offset: 1152)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2082, file: !250, line: 2079, baseType: !2137, size: 64, offset: 1216)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2082, file: !250, line: 2081, baseType: !2144, size: 64, offset: 1280)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!811, !870, !17, !506, !814, !285}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2082, file: !250, line: 2082, baseType: !2148, size: 64, offset: 1344)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!811, !870, !17, !30, !814, !285}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2082, file: !250, line: 2083, baseType: !2152, size: 64, offset: 1408)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!2155, !657}
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !2158, line: 296, size: 1664, elements: !2159)
!2158 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2189, !2190, !2191}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2157, file: !2158, line: 297, baseType: !334, size: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2157, file: !2158, line: 298, baseType: !239, size: 128, offset: 128)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2157, file: !2158, line: 299, baseType: !239, size: 128, offset: 256)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2157, file: !2158, line: 300, baseType: !239, size: 128, offset: 384)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2157, file: !2158, line: 301, baseType: !190, size: 256, offset: 512)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2157, file: !2158, line: 302, baseType: !272, size: 32, offset: 768)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2157, file: !2158, line: 303, baseType: !218, size: 32, offset: 800)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2157, file: !2158, line: 304, baseType: !870, size: 64, offset: 832)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2157, file: !2158, line: 305, baseType: !2169, size: 64, offset: 896)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !2158, line: 68, size: 64, elements: !2170)
!2170 = !{!2171, !2183}
!2171 = !DIDerivedType(tag: DW_TAG_member, scope: !2169, file: !2158, line: 69, baseType: !2172, size: 32)
!2172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2169, file: !2158, line: 69, size: 32, elements: !2173)
!2173 = !{!2174, !2175, !2176}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2172, file: !2158, line: 70, baseType: !367, size: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2172, file: !2158, line: 71, baseType: !385, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2172, file: !2158, line: 72, baseType: !2177, size: 32)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2178, line: 24, baseType: !2179)
!2178 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2178, line: 22, size: 32, elements: !2180)
!2180 = !{!2181}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2179, file: !2178, line: 23, baseType: !2182, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2178, line: 20, baseType: !373)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2169, file: !2158, line: 74, baseType: !2184, size: 32, offset: 32)
!2184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !2158, line: 54, baseType: !66, size: 32, elements: !2185)
!2185 = !{!2186, !2187, !2188}
!2186 = !DIEnumerator(name: "USRQUOTA", value: 0)
!2187 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!2188 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2157, file: !2158, line: 306, baseType: !285, size: 64, offset: 960)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2157, file: !2158, line: 307, baseType: !47, size: 64, offset: 1024)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2157, file: !2158, line: 308, baseType: !2192, size: 576, offset: 1088)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !2158, line: 205, size: 576, elements: !2193)
!2193 = !{!2194, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2192, file: !2158, line: 206, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !2158, line: 66, baseType: !203)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2192, file: !2158, line: 207, baseType: !2195, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2192, file: !2158, line: 208, baseType: !2195, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2192, file: !2158, line: 209, baseType: !2195, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2192, file: !2158, line: 210, baseType: !2195, size: 64, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2192, file: !2158, line: 211, baseType: !2195, size: 64, offset: 320)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2192, file: !2158, line: 212, baseType: !2195, size: 64, offset: 384)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2192, file: !2158, line: 213, baseType: !452, size: 64, offset: 448)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2192, file: !2158, line: 214, baseType: !452, size: 64, offset: 512)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2082, file: !250, line: 2085, baseType: !2205, size: 64, offset: 1472)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!772, !870, !2208}
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2210, line: 15, size: 256, elements: !2211)
!2210 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2211 = !{!2212, !2213, !2214, !2215, !2216}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2209, file: !2210, line: 16, baseType: !866, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2209, file: !2210, line: 19, baseType: !17, size: 32, offset: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2209, file: !2210, line: 26, baseType: !47, size: 64, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2209, file: !2210, line: 33, baseType: !47, size: 64, offset: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2209, file: !2210, line: 36, baseType: !2217, size: 64, offset: 192)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1057, line: 33, flags: DIFlagFwdDecl)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2082, file: !250, line: 2087, baseType: !2205, size: 64, offset: 1536)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2082, file: !250, line: 2089, baseType: !900, size: 64, offset: 1600)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !871, file: !250, line: 1198, baseType: !2222, size: 64, offset: 448)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2224)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !2158, line: 324, size: 704, elements: !2225)
!2225 = !{!2226, !2230, !2234, !2238, !2239, !2240, !2241, !2242, !2247, !2252, !2256}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2224, file: !2158, line: 325, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!17, !2156}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2224, file: !2158, line: 326, baseType: !2231, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!2156, !870, !17}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2224, file: !2158, line: 327, baseType: !2235, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{null, !2156}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2224, file: !2158, line: 328, baseType: !2227, size: 64, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2224, file: !2158, line: 329, baseType: !2227, size: 64, offset: 256)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2224, file: !2158, line: 330, baseType: !2227, size: 64, offset: 320)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2224, file: !2158, line: 331, baseType: !2108, size: 64, offset: 384)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2224, file: !2158, line: 334, baseType: !2243, size: 64, offset: 448)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!2246, !657}
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2224, file: !2158, line: 335, baseType: !2248, size: 64, offset: 512)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!17, !657, !2251}
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2224, file: !2158, line: 337, baseType: !2253, size: 64, offset: 576)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!17, !657, !2246}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2224, file: !2158, line: 339, baseType: !2257, size: 64, offset: 640)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!17, !870, !2260}
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !871, file: !250, line: 1199, baseType: !2262, size: 64, offset: 512)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2264)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !2158, line: 430, size: 704, elements: !2265)
!2265 = !{!2266, !2270, !2271, !2275, !2276, !2277, !2292, !2315, !2319, !2320, !2343}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2264, file: !2158, line: 431, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!17, !870, !17, !17, !780}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2264, file: !2158, line: 432, baseType: !2108, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2264, file: !2158, line: 433, baseType: !2272, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!17, !870, !66}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2264, file: !2158, line: 434, baseType: !2272, size: 64, offset: 192)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2264, file: !2158, line: 435, baseType: !2108, size: 64, offset: 256)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2264, file: !2158, line: 436, baseType: !2278, size: 64, offset: 320)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!17, !870, !17, !2281}
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !2158, line: 417, size: 256, elements: !2283)
!2283 = !{!2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2282, file: !2158, line: 418, baseType: !17, size: 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2282, file: !2158, line: 419, baseType: !66, size: 32, offset: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2282, file: !2158, line: 420, baseType: !66, size: 32, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2282, file: !2158, line: 422, baseType: !66, size: 32, offset: 96)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2282, file: !2158, line: 423, baseType: !66, size: 32, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2282, file: !2158, line: 424, baseType: !66, size: 32, offset: 160)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2282, file: !2158, line: 425, baseType: !66, size: 32, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2282, file: !2158, line: 426, baseType: !66, size: 32, offset: 224)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2264, file: !2158, line: 437, baseType: !2293, size: 64, offset: 384)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!17, !870, !2169, !2296}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !2158, line: 345, size: 960, elements: !2298)
!2298 = !{!2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2297, file: !2158, line: 346, baseType: !17, size: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2297, file: !2158, line: 347, baseType: !404, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2297, file: !2158, line: 348, baseType: !404, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2297, file: !2158, line: 349, baseType: !404, size: 64, offset: 192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2297, file: !2158, line: 350, baseType: !404, size: 64, offset: 256)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2297, file: !2158, line: 351, baseType: !404, size: 64, offset: 320)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2297, file: !2158, line: 352, baseType: !404, size: 64, offset: 384)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2297, file: !2158, line: 353, baseType: !201, size: 64, offset: 448)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2297, file: !2158, line: 355, baseType: !201, size: 64, offset: 512)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2297, file: !2158, line: 356, baseType: !17, size: 32, offset: 576)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2297, file: !2158, line: 357, baseType: !17, size: 32, offset: 608)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2297, file: !2158, line: 358, baseType: !404, size: 64, offset: 640)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2297, file: !2158, line: 359, baseType: !404, size: 64, offset: 704)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2297, file: !2158, line: 360, baseType: !404, size: 64, offset: 768)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2297, file: !2158, line: 361, baseType: !201, size: 64, offset: 832)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2297, file: !2158, line: 362, baseType: !17, size: 32, offset: 896)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2264, file: !2158, line: 438, baseType: !2316, size: 64, offset: 448)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!17, !870, !2260, !2296}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2264, file: !2158, line: 440, baseType: !2293, size: 64, offset: 512)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2264, file: !2158, line: 441, baseType: !2321, size: 64, offset: 576)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!17, !870, !2324}
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !2158, line: 411, size: 1408, elements: !2326)
!2326 = !{!2327, !2328}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2325, file: !2158, line: 412, baseType: !66, size: 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2325, file: !2158, line: 413, baseType: !2329, size: 1344, offset: 64)
!2329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2330, size: 1344, elements: !312)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !2158, line: 397, size: 448, elements: !2331)
!2331 = !{!2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2342}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2330, file: !2158, line: 398, baseType: !66, size: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2330, file: !2158, line: 399, baseType: !66, size: 32, offset: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2330, file: !2158, line: 401, baseType: !66, size: 32, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2330, file: !2158, line: 402, baseType: !66, size: 32, offset: 96)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2330, file: !2158, line: 403, baseType: !66, size: 32, offset: 128)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2330, file: !2158, line: 404, baseType: !66, size: 32, offset: 160)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2330, file: !2158, line: 405, baseType: !66, size: 32, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2330, file: !2158, line: 406, baseType: !406, size: 64, offset: 256)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2330, file: !2158, line: 407, baseType: !2341, size: 64, offset: 320)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !197, line: 132, baseType: !404)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2330, file: !2158, line: 408, baseType: !2341, size: 64, offset: 384)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2264, file: !2158, line: 442, baseType: !2272, size: 64, offset: 640)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !871, file: !250, line: 1200, baseType: !2345, size: 64, offset: 576)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2347)
!2347 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !250, line: 54, flags: DIFlagFwdDecl)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !871, file: !250, line: 1201, baseType: !47, size: 64, offset: 640)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !871, file: !250, line: 1202, baseType: !47, size: 64, offset: 704)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !871, file: !250, line: 1203, baseType: !47, size: 64, offset: 768)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !871, file: !250, line: 1204, baseType: !617, size: 64, offset: 832)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !871, file: !250, line: 1205, baseType: !436, size: 320, offset: 896)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !871, file: !250, line: 1206, baseType: !17, size: 32, offset: 1216)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !871, file: !250, line: 1207, baseType: !218, size: 32, offset: 1248)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !871, file: !250, line: 1209, baseType: !23, size: 64, offset: 1280)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !871, file: !250, line: 1211, baseType: !2357, size: 64, offset: 1344)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2360)
!2360 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !250, line: 1211, flags: DIFlagFwdDecl)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !871, file: !250, line: 1223, baseType: !2362, size: 64, offset: 1408)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !634, line: 34, size: 64, elements: !2363)
!2363 = !{!2364}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2362, file: !634, line: 35, baseType: !637, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !871, file: !250, line: 1224, baseType: !239, size: 128, offset: 1472)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !871, file: !250, line: 1225, baseType: !2367, size: 64, offset: 1600)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !250, line: 1225, flags: DIFlagFwdDecl)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !871, file: !250, line: 1226, baseType: !2370, size: 64, offset: 1664)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !250, line: 1226, flags: DIFlagFwdDecl)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !871, file: !250, line: 1227, baseType: !2373, size: 64, offset: 1728)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !250, line: 50, flags: DIFlagFwdDecl)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !871, file: !250, line: 1228, baseType: !2376, size: 64, offset: 1792)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !250, line: 1228, flags: DIFlagFwdDecl)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !871, file: !250, line: 1229, baseType: !334, size: 128, offset: 1856)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !871, file: !250, line: 1230, baseType: !66, size: 32, offset: 1984)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !871, file: !250, line: 1231, baseType: !2381, size: 2496, offset: 2048)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !2158, line: 521, size: 2496, elements: !2382)
!2382 = !{!2383, !2384, !2385, !2387, !2419}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2381, file: !2158, line: 522, baseType: !66, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2381, file: !2158, line: 523, baseType: !436, size: 320, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2381, file: !2158, line: 524, baseType: !2386, size: 192, offset: 384)
!2386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, size: 192, elements: !312)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2381, file: !2158, line: 525, baseType: !2388, size: 1728, offset: 576)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2389, size: 1728, elements: !312)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !2158, line: 222, size: 576, elements: !2390)
!2390 = !{!2391, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2389, file: !2158, line: 223, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !2158, line: 445, size: 256, elements: !2394)
!2394 = !{!2395, !2396, !2409, !2410}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2393, file: !2158, line: 446, baseType: !17, size: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2393, file: !2158, line: 447, baseType: !2397, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2399)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !2158, line: 312, size: 512, elements: !2400)
!2400 = !{!2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2399, file: !2158, line: 313, baseType: !2108, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2399, file: !2158, line: 314, baseType: !2108, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2399, file: !2158, line: 315, baseType: !2108, size: 64, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2399, file: !2158, line: 316, baseType: !2108, size: 64, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2399, file: !2158, line: 317, baseType: !2227, size: 64, offset: 256)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2399, file: !2158, line: 318, baseType: !2227, size: 64, offset: 320)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2399, file: !2158, line: 319, baseType: !2227, size: 64, offset: 384)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2399, file: !2158, line: 320, baseType: !2257, size: 64, offset: 448)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2393, file: !2158, line: 448, baseType: !904, size: 64, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2393, file: !2158, line: 449, baseType: !2392, size: 64, offset: 192)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2389, file: !2158, line: 224, baseType: !17, size: 32, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2389, file: !2158, line: 226, baseType: !239, size: 128, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2389, file: !2158, line: 227, baseType: !47, size: 64, offset: 256)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2389, file: !2158, line: 228, baseType: !66, size: 32, offset: 320)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2389, file: !2158, line: 229, baseType: !66, size: 32, offset: 352)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2389, file: !2158, line: 230, baseType: !2195, size: 64, offset: 384)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2389, file: !2158, line: 231, baseType: !2195, size: 64, offset: 448)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2389, file: !2158, line: 232, baseType: !23, size: 64, offset: 512)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2381, file: !2158, line: 526, baseType: !2420, size: 192, offset: 2304)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2397, size: 192, elements: !312)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !871, file: !250, line: 1233, baseType: !2422, size: 2368, offset: 4544)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !250, line: 1184, size: 2368, elements: !2423)
!2423 = !{!2424, !2425, !2426}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2422, file: !250, line: 1185, baseType: !41, size: 16)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2422, file: !250, line: 1186, baseType: !41, size: 16, offset: 16)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2422, file: !250, line: 1187, baseType: !2427, size: 2304, offset: 64)
!2427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2428, size: 2304, elements: !312)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2429, line: 12, size: 768, elements: !2430)
!2429 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2430 = !{!2431, !2439, !2440, !3631, !3632}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2428, file: !2429, line: 13, baseType: !2432, size: 384)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2433, line: 17, size: 384, elements: !2434)
!2433 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2434 = !{!2435, !2436, !2437, !2438}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2432, file: !2433, line: 18, baseType: !17, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2432, file: !2433, line: 19, baseType: !17, size: 32, offset: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2432, file: !2433, line: 20, baseType: !341, size: 192, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2432, file: !2433, line: 22, baseType: !262, size: 128, align: 64, offset: 256)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2428, file: !2429, line: 14, baseType: !89, size: 64, offset: 384)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2428, file: !2429, line: 15, baseType: !2441, size: 64, offset: 448)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2442, line: 16, size: 64, elements: !2443)
!2442 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2443 = !{!2444}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2441, file: !2442, line: 17, baseType: !2445, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1538, line: 746, size: 58368, elements: !2447)
!2447 = !{!2448, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2528, !2539, !2632, !2636, !2639, !2670, !2671, !2672, !2673, !2681, !2683, !2684, !2685, !2686, !2687, !2688, !2699, !2700, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2717, !2718, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2812, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2860, !2866, !2867, !2868, !2869, !2870, !2874, !2877, !2884, !2889, !2892, !2895, !2898, !2901, !3039, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3077, !3078, !3079, !3088, !3096, !3097, !3098, !3099, !3100, !3105, !3106, !3107, !3110, !3111, !3114, !3117, !3120, !3128, !3131, !3132, !3218, !3219, !3220, !3221, !3222, !3228, !3229, !3230, !3231, !3234, !3235, !3238, !3241, !3242, !3245, !3246, !3247, !3250, !3251, !3252, !3253, !3254, !3255, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3287, !3290, !3296, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3308, !3386, !3388, !3389, !3390, !3391, !3392, !3393, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3410, !3411, !3412}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2446, file: !1538, line: 752, baseType: !2449, size: 192)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2450, line: 56, size: 192, elements: !2451)
!2450 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2451 = !{!2452, !2453, !2454, !2455}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2449, file: !2450, line: 57, baseType: !47, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2449, file: !2450, line: 58, baseType: !47, size: 64, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2449, file: !2450, line: 59, baseType: !461, size: 32, offset: 128)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2449, file: !2450, line: 61, baseType: !461, size: 32, offset: 160)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2446, file: !1538, line: 754, baseType: !66, size: 32, offset: 192)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2446, file: !1538, line: 767, baseType: !23, size: 64, offset: 256)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2446, file: !1538, line: 768, baseType: !321, size: 32, offset: 320)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2446, file: !1538, line: 770, baseType: !66, size: 32, offset: 352)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2446, file: !1538, line: 771, baseType: !66, size: 32, offset: 384)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2446, file: !1538, line: 774, baseType: !17, size: 32, offset: 416)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2446, file: !1538, line: 775, baseType: !2463, size: 128, offset: 448)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2464, line: 58, size: 128, elements: !2465)
!2464 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2465 = !{!2466, !2467, !2472, !2473}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2463, file: !2464, line: 59, baseType: !256, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, scope: !2463, file: !2464, line: 60, baseType: !2468, size: 32, offset: 64)
!2468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2463, file: !2464, line: 60, size: 32, elements: !2469)
!2469 = !{!2470, !2471}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2468, file: !2464, line: 61, baseType: !66, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2468, file: !2464, line: 62, baseType: !218, size: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2463, file: !2464, line: 65, baseType: !180, size: 16, offset: 96)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2463, file: !2464, line: 65, baseType: !180, size: 16, offset: 112)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2446, file: !1538, line: 776, baseType: !66, size: 32, offset: 576)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2446, file: !1538, line: 777, baseType: !47, size: 64, offset: 640)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2446, file: !1538, line: 778, baseType: !2445, size: 64, offset: 704)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2446, file: !1538, line: 787, baseType: !17, size: 32, offset: 768)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2446, file: !1538, line: 788, baseType: !17, size: 32, offset: 800)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2446, file: !1538, line: 790, baseType: !17, size: 32, offset: 832)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2446, file: !1538, line: 792, baseType: !17, size: 32, offset: 864)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2446, file: !1538, line: 793, baseType: !17, size: 32, offset: 896)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2446, file: !1538, line: 794, baseType: !17, size: 32, offset: 928)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2446, file: !1538, line: 795, baseType: !66, size: 32, offset: 960)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2446, file: !1538, line: 797, baseType: !2485, size: 2048, offset: 1024)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1538, line: 551, size: 2048, elements: !2486)
!2486 = !{!2487, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2507, !2510, !2511, !2512}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2485, file: !1538, line: 553, baseType: !2488, size: 128)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1538, line: 411, size: 128, elements: !2489)
!2489 = !{!2490, !2491}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2488, file: !1538, line: 412, baseType: !47, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2488, file: !1538, line: 413, baseType: !461, size: 32, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2485, file: !1538, line: 554, baseType: !428, size: 192, align: 64, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2485, file: !1538, line: 555, baseType: !404, size: 64, offset: 320)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2485, file: !1538, line: 556, baseType: !404, size: 64, offset: 384)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2485, file: !1538, line: 558, baseType: !239, size: 128, offset: 448)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2485, file: !1538, line: 559, baseType: !66, size: 32, offset: 576)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2485, file: !1538, line: 561, baseType: !404, size: 64, offset: 640)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2485, file: !1538, line: 562, baseType: !404, size: 64, offset: 704)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2485, file: !1538, line: 563, baseType: !404, size: 64, offset: 768)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2485, file: !1538, line: 564, baseType: !404, size: 64, offset: 832)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2485, file: !1538, line: 565, baseType: !201, size: 64, offset: 896)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2485, file: !1538, line: 566, baseType: !404, size: 64, offset: 960)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2485, file: !1538, line: 568, baseType: !404, size: 64, offset: 1024)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2485, file: !1538, line: 571, baseType: !17, size: 32, offset: 1088)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2485, file: !1538, line: 572, baseType: !2506, size: 64, offset: 1152)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2485, file: !1538, line: 574, baseType: !2508, size: 64, offset: 1216)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1538, line: 49, flags: DIFlagFwdDecl)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2485, file: !1538, line: 576, baseType: !2508, size: 64, offset: 1280)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2485, file: !1538, line: 578, baseType: !47, size: 64, offset: 1344)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2485, file: !1538, line: 588, baseType: !2513, size: 512, align: 512, offset: 1536)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1538, line: 497, size: 512, align: 512, elements: !2514)
!2514 = !{!2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2513, file: !1538, line: 498, baseType: !404, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2513, file: !1538, line: 499, baseType: !404, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2513, file: !1538, line: 500, baseType: !404, size: 64, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2513, file: !1538, line: 501, baseType: !461, size: 32, offset: 192)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2513, file: !1538, line: 502, baseType: !461, size: 32, offset: 224)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2513, file: !1538, line: 503, baseType: !47, size: 64, offset: 256)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2513, file: !1538, line: 504, baseType: !47, size: 64, offset: 320)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2513, file: !1538, line: 505, baseType: !47, size: 64, offset: 384)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2513, file: !1538, line: 506, baseType: !2524, size: 64, align: 64, offset: 448)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1538, line: 445, size: 64, align: 64, elements: !2525)
!2525 = !{!2526, !2527}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2524, file: !1538, line: 446, baseType: !66, size: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2524, file: !1538, line: 447, baseType: !66, size: 32, offset: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2446, file: !1538, line: 798, baseType: !2529, size: 384, offset: 3072)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1538, line: 592, size: 384, elements: !2530)
!2530 = !{!2531, !2532, !2533, !2534, !2535, !2536, !2537}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2529, file: !1538, line: 593, baseType: !239, size: 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2529, file: !1538, line: 594, baseType: !47, size: 64, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2529, file: !1538, line: 595, baseType: !47, size: 64, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2529, file: !1538, line: 596, baseType: !66, size: 32, offset: 256)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2529, file: !1538, line: 597, baseType: !41, size: 16, offset: 288)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2529, file: !1538, line: 598, baseType: !41, size: 16, offset: 304)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2529, file: !1538, line: 600, baseType: !2538, size: 64, offset: 320)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2446, file: !1538, line: 799, baseType: !2540, size: 1792, offset: 3456)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1538, line: 610, size: 1792, elements: !2541)
!2541 = !{!2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2629, !2630}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2540, file: !1538, line: 611, baseType: !428, size: 192, align: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2540, file: !1538, line: 618, baseType: !404, size: 64, offset: 192)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2540, file: !1538, line: 619, baseType: !404, size: 64, offset: 256)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2540, file: !1538, line: 620, baseType: !404, size: 64, offset: 320)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2540, file: !1538, line: 621, baseType: !404, size: 64, offset: 384)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2540, file: !1538, line: 622, baseType: !404, size: 64, offset: 448)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2540, file: !1538, line: 629, baseType: !201, size: 64, offset: 512)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2540, file: !1538, line: 630, baseType: !404, size: 64, offset: 576)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2540, file: !1538, line: 631, baseType: !66, size: 32, offset: 640)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2540, file: !1538, line: 653, baseType: !66, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2540, file: !1538, line: 654, baseType: !66, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2540, file: !1538, line: 655, baseType: !66, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2540, file: !1538, line: 656, baseType: !66, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2540, file: !1538, line: 662, baseType: !2556, size: 512, offset: 704)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !2557, line: 118, size: 512, elements: !2558)
!2557 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!2558 = !{!2559, !2567, !2568, !2577, !2625, !2626, !2627, !2628}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2556, file: !2557, line: 119, baseType: !2560, size: 256)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2561, line: 9, size: 256, elements: !2562)
!2561 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2562 = !{!2563, !2564}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2560, file: !2561, line: 10, baseType: !428, size: 192, align: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2560, file: !2561, line: 11, baseType: !2565, size: 64, offset: 192)
!2565 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2566, line: 29, baseType: !201)
!2566 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2556, file: !2557, line: 120, baseType: !2565, size: 64, offset: 256)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2556, file: !2557, line: 121, baseType: !2569, size: 64, offset: 320)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!2572, !2576}
!2572 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !2557, line: 65, baseType: !66, size: 32, elements: !2573)
!2573 = !{!2574, !2575}
!2574 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!2575 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2556, file: !2557, line: 122, baseType: !2578, size: 64, offset: 384)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !2557, line: 159, size: 512, align: 512, elements: !2580)
!2580 = !{!2581, !2606, !2607, !2610, !2615, !2616, !2620, !2624}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2579, file: !2557, line: 160, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !2557, line: 215, size: 4608, align: 512, elements: !2584)
!2584 = !{!2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2583, file: !2557, line: 216, baseType: !205, size: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2583, file: !2557, line: 217, baseType: !66, size: 32, offset: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2583, file: !2557, line: 218, baseType: !66, size: 32, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2583, file: !2557, line: 219, baseType: !66, size: 32, offset: 96)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2583, file: !2557, line: 220, baseType: !66, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2583, file: !2557, line: 221, baseType: !66, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2583, file: !2557, line: 222, baseType: !66, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2583, file: !2557, line: 223, baseType: !66, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2583, file: !2557, line: 224, baseType: !66, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2583, file: !2557, line: 226, baseType: !66, size: 32, offset: 160)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2583, file: !2557, line: 227, baseType: !41, size: 16, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2583, file: !2557, line: 228, baseType: !41, size: 16, offset: 208)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2583, file: !2557, line: 229, baseType: !66, size: 32, offset: 224)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2583, file: !2557, line: 235, baseType: !2565, size: 64, offset: 256)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2583, file: !2557, line: 236, baseType: !2576, size: 64, offset: 320)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2583, file: !2557, line: 237, baseType: !2565, size: 64, offset: 384)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2583, file: !2557, line: 238, baseType: !2576, size: 64, offset: 448)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2583, file: !2557, line: 239, baseType: !2603, size: 4096, align: 512, offset: 512)
!2603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2579, size: 4096, align: 512, elements: !2604)
!2604 = !{!2605}
!2605 = !DISubrange(count: 8)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2579, file: !2557, line: 161, baseType: !66, size: 32, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2579, file: !2557, line: 162, baseType: !2608, size: 32, offset: 96)
!2608 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !197, line: 32, baseType: !2609)
!2609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !287, line: 96, baseType: !17)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2579, file: !2557, line: 163, baseType: !2611, size: 32, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !624, line: 274, baseType: !2612)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !624, line: 274, size: 32, elements: !2613)
!2613 = !{!2614}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2612, file: !624, line: 274, baseType: !628, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2579, file: !2557, line: 164, baseType: !2576, size: 64, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2579, file: !2557, line: 165, baseType: !2617, size: 128, offset: 256)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2561, line: 14, size: 128, elements: !2618)
!2618 = !{!2619}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2617, file: !2561, line: 15, baseType: !1037, size: 128)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2579, file: !2557, line: 166, baseType: !2621, size: 64, offset: 384)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!2565}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2579, file: !2557, line: 167, baseType: !2565, size: 64, offset: 448)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2556, file: !2557, line: 123, baseType: !226, size: 8, offset: 448)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2556, file: !2557, line: 124, baseType: !226, size: 8, offset: 456)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2556, file: !2557, line: 125, baseType: !226, size: 8, offset: 464)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2556, file: !2557, line: 126, baseType: !226, size: 8, offset: 472)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2540, file: !1538, line: 671, baseType: !2556, size: 512, offset: 1216)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2540, file: !1538, line: 679, baseType: !2631, size: 64, offset: 1728)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2446, file: !1538, line: 800, baseType: !2633, size: 64, offset: 5248)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2635)
!2635 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1538, line: 800, flags: DIFlagFwdDecl)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2446, file: !1538, line: 809, baseType: !2637, size: 64, offset: 5312)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1538, line: 70, flags: DIFlagFwdDecl)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2446, file: !1538, line: 825, baseType: !2640, size: 2048, align: 512, offset: 5632)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1538, line: 509, size: 2048, align: 512, elements: !2641)
!2641 = !{!2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2640, file: !1538, line: 511, baseType: !404, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2640, file: !1538, line: 512, baseType: !404, size: 64, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2640, file: !1538, line: 513, baseType: !404, size: 64, offset: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2640, file: !1538, line: 514, baseType: !404, size: 64, offset: 192)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2640, file: !1538, line: 515, baseType: !404, size: 64, offset: 256)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2640, file: !1538, line: 516, baseType: !404, size: 64, offset: 320)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2640, file: !1538, line: 518, baseType: !404, size: 64, offset: 384)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2640, file: !1538, line: 519, baseType: !404, size: 64, offset: 448)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2640, file: !1538, line: 520, baseType: !201, size: 64, offset: 512)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2640, file: !1538, line: 522, baseType: !404, size: 64, offset: 576)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2640, file: !1538, line: 523, baseType: !404, size: 64, offset: 640)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2640, file: !1538, line: 524, baseType: !201, size: 64, offset: 704)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2640, file: !1538, line: 526, baseType: !201, size: 64, offset: 768)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2640, file: !1538, line: 527, baseType: !404, size: 64, offset: 832)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2640, file: !1538, line: 529, baseType: !404, size: 64, offset: 896)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2640, file: !1538, line: 530, baseType: !404, size: 64, offset: 960)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2640, file: !1538, line: 531, baseType: !404, size: 64, offset: 1024)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2640, file: !1538, line: 532, baseType: !404, size: 64, offset: 1088)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2640, file: !1538, line: 533, baseType: !404, size: 64, offset: 1152)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2640, file: !1538, line: 535, baseType: !404, size: 64, offset: 1216)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2640, file: !1538, line: 536, baseType: !404, size: 64, offset: 1280)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2640, file: !1538, line: 537, baseType: !404, size: 64, offset: 1344)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2640, file: !1538, line: 538, baseType: !404, size: 64, offset: 1408)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2640, file: !1538, line: 539, baseType: !404, size: 64, offset: 1472)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2640, file: !1538, line: 540, baseType: !404, size: 64, offset: 1536)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2640, file: !1538, line: 541, baseType: !404, size: 64, offset: 1600)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2640, file: !1538, line: 542, baseType: !404, size: 64, offset: 1664)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2640, file: !1538, line: 543, baseType: !404, size: 64, offset: 1728)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2446, file: !1538, line: 833, baseType: !66, size: 32, offset: 7680)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2446, file: !1538, line: 836, baseType: !66, size: 32, offset: 7712)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2446, file: !1538, line: 837, baseType: !17, size: 32, offset: 7744)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2446, file: !1538, line: 838, baseType: !2674, size: 64, offset: 7808)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2676)
!2676 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2677, line: 19, baseType: !2678)
!2677 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2677, line: 19, size: 64, elements: !2679)
!2679 = !{!2680}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2678, file: !2677, line: 19, baseType: !46, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2446, file: !1538, line: 839, baseType: !2682, size: 64, offset: 7872)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2446, file: !1538, line: 840, baseType: !2676, size: 64, offset: 7936)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2446, file: !1538, line: 841, baseType: !23, size: 64, offset: 8000)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2446, file: !1538, line: 843, baseType: !41, size: 16, offset: 8064)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2446, file: !1538, line: 845, baseType: !41, size: 16, offset: 8080)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2446, file: !1538, line: 848, baseType: !17, size: 32, offset: 8096)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2446, file: !1538, line: 849, baseType: !2689, size: 32, offset: 8128)
!2689 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1538, line: 718, size: 32, elements: !2690)
!2690 = !{!2691, !2698}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2689, file: !1538, line: 724, baseType: !2692, size: 32)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2689, file: !1538, line: 719, size: 32, elements: !2693)
!2693 = !{!2694, !2695, !2696, !2697}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2692, file: !1538, line: 720, baseType: !226, size: 8)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2692, file: !1538, line: 721, baseType: !226, size: 8, offset: 8)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2692, file: !1538, line: 722, baseType: !226, size: 8, offset: 16)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2692, file: !1538, line: 723, baseType: !226, size: 8, offset: 24)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2689, file: !1538, line: 725, baseType: !461, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2446, file: !1538, line: 850, baseType: !239, size: 128, offset: 8192)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2446, file: !1538, line: 851, baseType: !2701, size: 64, offset: 8320)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1538, line: 60, flags: DIFlagFwdDecl)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2446, file: !1538, line: 855, baseType: !47, size: 64, offset: 8384)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2446, file: !1538, line: 856, baseType: !226, size: 8, offset: 8448)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2446, file: !1538, line: 857, baseType: !226, size: 8, offset: 8456)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2446, file: !1538, line: 858, baseType: !17, size: 32, offset: 8480)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2446, file: !1538, line: 859, baseType: !239, size: 128, offset: 8512)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2446, file: !1538, line: 860, baseType: !17, size: 32, offset: 8640)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2446, file: !1538, line: 861, baseType: !239, size: 128, offset: 8704)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2446, file: !1538, line: 873, baseType: !2711, size: 256, offset: 8832)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1538, line: 376, size: 256, elements: !2712)
!2712 = !{!2713, !2714, !2715, !2716}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2711, file: !1538, line: 381, baseType: !47, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2711, file: !1538, line: 384, baseType: !406, size: 64, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2711, file: !1538, line: 389, baseType: !406, size: 64, offset: 128)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2711, file: !1538, line: 392, baseType: !406, size: 64, offset: 192)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2446, file: !1538, line: 875, baseType: !239, size: 128, offset: 9088)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2446, file: !1538, line: 877, baseType: !2719, size: 320, offset: 9216)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2720, line: 86, size: 320, elements: !2721)
!2720 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2721 = !{!2722, !2723, !2724}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2719, file: !2720, line: 87, baseType: !17, size: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2719, file: !2720, line: 88, baseType: !239, size: 128, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2719, file: !2720, line: 89, baseType: !239, size: 128, offset: 192)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2446, file: !1538, line: 878, baseType: !428, size: 192, align: 64, offset: 9536)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2446, file: !1538, line: 881, baseType: !1330, size: 64, offset: 9728)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2446, file: !1538, line: 882, baseType: !1330, size: 64, offset: 9792)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2446, file: !1538, line: 884, baseType: !17, size: 32, offset: 9856)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2446, file: !1538, line: 885, baseType: !17, size: 32, offset: 9888)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2446, file: !1538, line: 886, baseType: !17, size: 32, offset: 9920)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2446, file: !1538, line: 888, baseType: !17, size: 32, offset: 9952)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2446, file: !1538, line: 890, baseType: !47, size: 64, offset: 9984)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2446, file: !1538, line: 893, baseType: !66, size: 32, offset: 10048)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2446, file: !1538, line: 896, baseType: !66, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2446, file: !1538, line: 897, baseType: !66, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2446, file: !1538, line: 898, baseType: !66, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2446, file: !1538, line: 899, baseType: !66, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2446, file: !1538, line: 919, baseType: !66, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2446, file: !1538, line: 922, baseType: !66, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2446, file: !1538, line: 923, baseType: !66, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2446, file: !1538, line: 925, baseType: !66, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2446, file: !1538, line: 939, baseType: !66, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2446, file: !1538, line: 941, baseType: !66, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2446, file: !1538, line: 944, baseType: !66, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2446, file: !1538, line: 956, baseType: !66, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2446, file: !1538, line: 962, baseType: !66, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2446, file: !1538, line: 966, baseType: !66, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2446, file: !1538, line: 969, baseType: !47, size: 64, offset: 10176)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2446, file: !1538, line: 971, baseType: !2750, size: 448, offset: 10240)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !2751, line: 25, size: 448, elements: !2752)
!2751 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!2752 = !{!2753, !2754, !2759}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2750, file: !2751, line: 26, baseType: !47, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2750, file: !2751, line: 27, baseType: !2755, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!772, !2758}
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, scope: !2750, file: !2751, line: 28, baseType: !2760, size: 320, offset: 128)
!2760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2750, file: !2751, line: 28, size: 320, elements: !2761)
!2761 = !{!2762, !2772, !2802}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2760, file: !2751, line: 37, baseType: !2763, size: 320)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2760, file: !2751, line: 30, size: 320, elements: !2764)
!2764 = !{!2765, !2767, !2768, !2769, !2770, !2771}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2763, file: !2751, line: 31, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2763, file: !2751, line: 32, baseType: !461, size: 32, offset: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2763, file: !2751, line: 33, baseType: !461, size: 32, offset: 96)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2763, file: !2751, line: 34, baseType: !461, size: 32, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2763, file: !2751, line: 35, baseType: !404, size: 64, offset: 192)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2763, file: !2751, line: 36, baseType: !2766, size: 64, offset: 256)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2760, file: !2751, line: 47, baseType: !2773, size: 192)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2760, file: !2751, line: 39, size: 192, elements: !2774)
!2774 = !{!2775, !2776, !2782, !2801}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2773, file: !2751, line: 40, baseType: !2608, size: 32)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2773, file: !2751, line: 41, baseType: !2777, size: 32, offset: 32)
!2777 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !2751, line: 16, baseType: !66, size: 32, elements: !2778)
!2778 = !{!2779, !2780, !2781}
!2779 = !DIEnumerator(name: "TT_NONE", value: 0)
!2780 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!2781 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!2782 = !DIDerivedType(tag: DW_TAG_member, scope: !2773, file: !2751, line: 42, baseType: !2783, size: 64, offset: 64)
!2783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2773, file: !2751, line: 42, size: 64, elements: !2784)
!2784 = !{!2785, !2793}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2783, file: !2751, line: 43, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2788, line: 7, size: 128, elements: !2789)
!2788 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2789 = !{!2790, !2792}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2787, file: !2788, line: 8, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !287, line: 93, baseType: !203)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2787, file: !2788, line: 9, baseType: !203, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2783, file: !2751, line: 44, baseType: !2794, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2796, line: 7, size: 64, elements: !2797)
!2796 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2797 = !{!2798, !2800}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2795, file: !2796, line: 8, baseType: !2799, size: 32)
!2799 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2796, line: 5, baseType: !421)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2795, file: !2796, line: 9, baseType: !421, size: 32, offset: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2773, file: !2751, line: 46, baseType: !404, size: 64, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2760, file: !2751, line: 55, baseType: !2803, size: 256)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2760, file: !2751, line: 49, size: 256, elements: !2804)
!2804 = !{!2805, !2808, !2809, !2810, !2811}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2803, file: !2751, line: 50, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2751, line: 14, flags: DIFlagFwdDecl)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2803, file: !2751, line: 51, baseType: !17, size: 32, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2803, file: !2751, line: 52, baseType: !17, size: 32, offset: 96)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2803, file: !2751, line: 53, baseType: !47, size: 64, offset: 128)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2803, file: !2751, line: 54, baseType: !47, size: 64, offset: 192)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2446, file: !1538, line: 973, baseType: !2813, size: 32, offset: 10688)
!2813 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !197, line: 27, baseType: !2814)
!2814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !287, line: 28, baseType: !17)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2446, file: !1538, line: 974, baseType: !2813, size: 32, offset: 10720)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2446, file: !1538, line: 978, baseType: !47, size: 64, offset: 10752)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2446, file: !1538, line: 987, baseType: !2445, size: 64, offset: 10816)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2446, file: !1538, line: 990, baseType: !2445, size: 64, offset: 10880)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2446, file: !1538, line: 995, baseType: !239, size: 128, offset: 10944)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2446, file: !1538, line: 996, baseType: !239, size: 128, offset: 11072)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2446, file: !1538, line: 997, baseType: !2445, size: 64, offset: 11200)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2446, file: !1538, line: 1005, baseType: !239, size: 128, offset: 11264)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2446, file: !1538, line: 1006, baseType: !239, size: 128, offset: 11392)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2446, file: !1538, line: 1009, baseType: !316, size: 64, offset: 11520)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2446, file: !1538, line: 1010, baseType: !2826, size: 512, offset: 11584)
!2826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 512, elements: !5)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2446, file: !1538, line: 1011, baseType: !239, size: 128, offset: 12096)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2446, file: !1538, line: 1012, baseType: !239, size: 128, offset: 12224)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2446, file: !1538, line: 1014, baseType: !1715, size: 64, offset: 12352)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2446, file: !1538, line: 1017, baseType: !1859, size: 64, offset: 12416)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2446, file: !1538, line: 1020, baseType: !1859, size: 64, offset: 12480)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2446, file: !1538, line: 1023, baseType: !23, size: 64, offset: 12544)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2446, file: !1538, line: 1025, baseType: !404, size: 64, offset: 12608)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2446, file: !1538, line: 1026, baseType: !404, size: 64, offset: 12672)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2446, file: !1538, line: 1031, baseType: !404, size: 64, offset: 12736)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2446, file: !1538, line: 1032, baseType: !2837, size: 192, offset: 12800)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1538, line: 324, size: 192, elements: !2838)
!2838 = !{!2839, !2840, !2841}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2837, file: !1538, line: 326, baseType: !404, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2837, file: !1538, line: 327, baseType: !404, size: 64, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2837, file: !1538, line: 328, baseType: !205, size: 32, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2446, file: !1538, line: 1041, baseType: !47, size: 64, offset: 12992)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2446, file: !1538, line: 1042, baseType: !47, size: 64, offset: 13056)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2446, file: !1538, line: 1045, baseType: !404, size: 64, offset: 13120)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2446, file: !1538, line: 1048, baseType: !404, size: 64, offset: 13184)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2446, file: !1538, line: 1051, baseType: !47, size: 64, offset: 13248)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2446, file: !1538, line: 1052, baseType: !47, size: 64, offset: 13312)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2446, file: !1538, line: 1055, baseType: !2849, size: 640, offset: 13376)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2850, line: 132, size: 640, elements: !2851)
!2850 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2851 = !{!2852, !2858, !2859}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2849, file: !2850, line: 133, baseType: !2853, size: 576)
!2853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2854, size: 576, elements: !312)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2850, line: 117, size: 192, elements: !2855)
!2855 = !{!2856, !2857}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2854, file: !2850, line: 118, baseType: !404, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2854, file: !2850, line: 119, baseType: !2617, size: 128, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2849, file: !2850, line: 134, baseType: !66, size: 32, offset: 576)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2849, file: !2850, line: 135, baseType: !66, size: 32, offset: 608)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2446, file: !1538, line: 1058, baseType: !2861, size: 448, offset: 14016)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2850, line: 144, size: 448, elements: !2862)
!2862 = !{!2863, !2864, !2865}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2861, file: !2850, line: 145, baseType: !262, size: 128, align: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2861, file: !2850, line: 146, baseType: !190, size: 256, offset: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2861, file: !2850, line: 147, baseType: !66, size: 32, offset: 384)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2446, file: !1538, line: 1064, baseType: !377, size: 64, offset: 14464)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2446, file: !1538, line: 1067, baseType: !377, size: 64, offset: 14528)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2446, file: !1538, line: 1070, baseType: !377, size: 64, offset: 14592)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2446, file: !1538, line: 1074, baseType: !413, size: 64, offset: 14656)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2446, file: !1538, line: 1084, baseType: !2871, size: 128, offset: 14720)
!2871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2872)
!2872 = !{!2873}
!2873 = !DISubrange(count: 16)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2446, file: !1538, line: 1086, baseType: !2875, size: 64, offset: 14848)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1538, line: 55, flags: DIFlagFwdDecl)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2446, file: !1538, line: 1089, baseType: !2878, size: 64, offset: 14912)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2879, line: 12, size: 64, elements: !2880)
!2879 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2880 = !{!2881}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2878, file: !2879, line: 13, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2879, line: 8, flags: DIFlagFwdDecl)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2446, file: !1538, line: 1090, baseType: !2885, size: 128, offset: 14976)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2886, line: 13, size: 128, elements: !2887)
!2886 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2887 = !{!2888}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2885, file: !2886, line: 14, baseType: !239, size: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2446, file: !1538, line: 1097, baseType: !2890, size: 64, offset: 15104)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1538, line: 50, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2446, file: !1538, line: 1100, baseType: !2893, size: 64, offset: 15168)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1538, line: 1100, flags: DIFlagFwdDecl)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2446, file: !1538, line: 1103, baseType: !2896, size: 64, offset: 15232)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1538, line: 53, flags: DIFlagFwdDecl)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2446, file: !1538, line: 1107, baseType: !2899, size: 64, offset: 15296)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1538, line: 56, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2446, file: !1538, line: 1110, baseType: !2902, size: 64, offset: 15360)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2904, line: 93, size: 8768, elements: !2905)
!2904 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2905 = !{!2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2953, !2962, !2963, !2965, !2966, !2967, !2970, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !3008, !3009, !3016, !3026, !3029, !3030, !3033, !3034, !3035, !3036, !3037, !3038}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2903, file: !2904, line: 94, baseType: !321, size: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2903, file: !2904, line: 95, baseType: !218, size: 32, offset: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2903, file: !2904, line: 96, baseType: !17, size: 32, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2903, file: !2904, line: 97, baseType: !17, size: 32, offset: 96)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2903, file: !2904, line: 98, baseType: !239, size: 128, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2903, file: !2904, line: 100, baseType: !341, size: 192, offset: 256)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2903, file: !2904, line: 103, baseType: !2445, size: 64, offset: 448)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2903, file: !2904, line: 106, baseType: !2914, size: 192, offset: 512)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !584, line: 32, size: 192, elements: !2915)
!2915 = !{!2916, !2917}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2914, file: !584, line: 33, baseType: !239, size: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2914, file: !584, line: 34, baseType: !2918, size: 64, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2919, line: 25, baseType: !2920)
!2919 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2919, line: 23, size: 64, elements: !2921)
!2921 = !{!2922}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2920, file: !2919, line: 24, baseType: !46, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2903, file: !2904, line: 109, baseType: !330, size: 64, offset: 704)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2903, file: !2904, line: 112, baseType: !17, size: 32, offset: 768)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2903, file: !2904, line: 114, baseType: !17, size: 32, offset: 800)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2903, file: !2904, line: 115, baseType: !2445, size: 64, offset: 832)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2903, file: !2904, line: 118, baseType: !17, size: 32, offset: 896)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2903, file: !2904, line: 119, baseType: !66, size: 32, offset: 928)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2903, file: !2904, line: 121, baseType: !2930, size: 64, offset: 960)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2904, line: 80, size: 448, elements: !2932)
!2932 = !{!2933, !2934, !2940}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2931, file: !2904, line: 81, baseType: !218, size: 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2931, file: !2904, line: 82, baseType: !2935, size: 128, offset: 64)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2904, line: 75, size: 128, elements: !2936)
!2936 = !{!2937, !2938}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2935, file: !2904, line: 76, baseType: !2445, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2935, file: !2904, line: 77, baseType: !2939, size: 64, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2931, file: !2904, line: 83, baseType: !1716, size: 256, offset: 192)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2903, file: !2904, line: 132, baseType: !66, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2903, file: !2904, line: 133, baseType: !66, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2903, file: !2904, line: 138, baseType: !66, size: 32, offset: 1056)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2903, file: !2904, line: 139, baseType: !239, size: 128, offset: 1088)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2903, file: !2904, line: 142, baseType: !2556, size: 512, offset: 1216)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2903, file: !2904, line: 143, baseType: !2565, size: 64, offset: 1728)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2903, file: !2904, line: 150, baseType: !2948, size: 256, offset: 1792)
!2948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2949, size: 256, elements: !62)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2904, line: 38, size: 128, elements: !2950)
!2950 = !{!2951, !2952}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2949, file: !2904, line: 39, baseType: !404, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2949, file: !2904, line: 40, baseType: !404, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2903, file: !2904, line: 156, baseType: !2954, size: 192, offset: 2048)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2904, line: 66, size: 192, elements: !2955)
!2955 = !{!2956}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2954, file: !2904, line: 67, baseType: !2957, size: 192)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2904, line: 47, size: 192, elements: !2958)
!2958 = !{!2959, !2960, !2961}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2957, file: !2904, line: 48, baseType: !196, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2957, file: !2904, line: 49, baseType: !196, size: 64, offset: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2957, file: !2904, line: 50, baseType: !196, size: 64, offset: 128)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2903, file: !2904, line: 160, baseType: !2849, size: 640, offset: 2240)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2903, file: !2904, line: 163, baseType: !2964, size: 256, offset: 2880)
!2964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 256, elements: !5)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2903, file: !2904, line: 169, baseType: !316, size: 64, offset: 3136)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2903, file: !2904, line: 172, baseType: !17, size: 32, offset: 3200)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2903, file: !2904, line: 174, baseType: !2968, size: 64, offset: 3264)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2904, line: 174, flags: DIFlagFwdDecl)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2903, file: !2904, line: 185, baseType: !2971, size: 64, offset: 3328)
!2971 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !624, line: 860, baseType: !2972)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !624, line: 853, size: 64, elements: !2973)
!2973 = !{!2974, !2975}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2972, file: !624, line: 858, baseType: !623, size: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2972, file: !624, line: 859, baseType: !272, size: 32, offset: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2903, file: !2904, line: 186, baseType: !404, size: 64, offset: 3392)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2903, file: !2904, line: 186, baseType: !404, size: 64, offset: 3456)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2903, file: !2904, line: 186, baseType: !404, size: 64, offset: 3520)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2903, file: !2904, line: 186, baseType: !404, size: 64, offset: 3584)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2903, file: !2904, line: 187, baseType: !404, size: 64, offset: 3648)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2903, file: !2904, line: 188, baseType: !404, size: 64, offset: 3712)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2903, file: !2904, line: 189, baseType: !2837, size: 192, offset: 3776)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2903, file: !2904, line: 190, baseType: !47, size: 64, offset: 3968)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2903, file: !2904, line: 190, baseType: !47, size: 64, offset: 4032)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2903, file: !2904, line: 190, baseType: !47, size: 64, offset: 4096)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2903, file: !2904, line: 190, baseType: !47, size: 64, offset: 4160)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2903, file: !2904, line: 191, baseType: !47, size: 64, offset: 4224)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2903, file: !2904, line: 191, baseType: !47, size: 64, offset: 4288)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2903, file: !2904, line: 191, baseType: !47, size: 64, offset: 4352)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2903, file: !2904, line: 191, baseType: !47, size: 64, offset: 4416)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2903, file: !2904, line: 192, baseType: !47, size: 64, offset: 4480)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2903, file: !2904, line: 192, baseType: !47, size: 64, offset: 4544)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2903, file: !2904, line: 192, baseType: !47, size: 64, offset: 4608)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2903, file: !2904, line: 192, baseType: !47, size: 64, offset: 4672)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2903, file: !2904, line: 193, baseType: !47, size: 64, offset: 4736)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2903, file: !2904, line: 193, baseType: !47, size: 64, offset: 4800)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2903, file: !2904, line: 194, baseType: !2998, size: 448, offset: 4864)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2999, line: 12, size: 448, elements: !3000)
!2999 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3000 = !{!3001, !3002, !3003, !3004, !3005, !3006, !3007}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2998, file: !2999, line: 15, baseType: !404, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2998, file: !2999, line: 17, baseType: !404, size: 64, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2998, file: !2999, line: 19, baseType: !404, size: 64, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2998, file: !2999, line: 21, baseType: !404, size: 64, offset: 192)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2998, file: !2999, line: 29, baseType: !404, size: 64, offset: 256)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2998, file: !2999, line: 35, baseType: !404, size: 64, offset: 320)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2998, file: !2999, line: 44, baseType: !404, size: 64, offset: 384)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2903, file: !2904, line: 202, baseType: !406, size: 64, offset: 5312)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2903, file: !2904, line: 213, baseType: !3010, size: 2048, offset: 5376)
!3010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3011, size: 2048, elements: !2872)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3012, line: 43, size: 128, elements: !3013)
!3012 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3013 = !{!3014, !3015}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3011, file: !3012, line: 44, baseType: !816, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3011, file: !3012, line: 45, baseType: !816, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2903, file: !2904, line: 216, baseType: !3017, size: 448, offset: 7424)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2904, line: 30, size: 448, elements: !3018)
!3018 = !{!3019, !3020, !3021, !3022, !3023, !3024, !3025}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3017, file: !2904, line: 31, baseType: !17, size: 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3017, file: !2904, line: 32, baseType: !772, size: 64, offset: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3017, file: !2904, line: 33, baseType: !47, size: 64, offset: 128)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3017, file: !2904, line: 34, baseType: !404, size: 64, offset: 192)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3017, file: !2904, line: 34, baseType: !404, size: 64, offset: 256)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3017, file: !2904, line: 35, baseType: !47, size: 64, offset: 320)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3017, file: !2904, line: 35, baseType: !47, size: 64, offset: 384)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2903, file: !2904, line: 219, baseType: !3027, size: 64, offset: 7872)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2904, line: 219, flags: DIFlagFwdDecl)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2903, file: !2904, line: 222, baseType: !66, size: 32, offset: 7936)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2903, file: !2904, line: 223, baseType: !3031, size: 64, offset: 8000)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2904, line: 223, flags: DIFlagFwdDecl)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2903, file: !2904, line: 230, baseType: !495, size: 8, offset: 8064)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2903, file: !2904, line: 231, baseType: !109, size: 16, offset: 8080)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2903, file: !2904, line: 232, baseType: !109, size: 16, offset: 8096)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2903, file: !2904, line: 234, baseType: !1330, size: 64, offset: 8128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2903, file: !2904, line: 237, baseType: !190, size: 256, offset: 8192)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2903, file: !2904, line: 243, baseType: !436, size: 320, offset: 8448)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2446, file: !1538, line: 1111, baseType: !3040, size: 64, offset: 15424)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2904, line: 20, size: 16640, elements: !3042)
!3042 = !{!3043, !3044, !3045, !3046}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3041, file: !2904, line: 21, baseType: !272, size: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3041, file: !2904, line: 22, baseType: !321, size: 32, offset: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3041, file: !2904, line: 23, baseType: !341, size: 192, offset: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3041, file: !2904, line: 24, baseType: !3047, size: 16384, offset: 256)
!3047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3048, size: 16384, elements: !967)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !584, line: 51, size: 256, elements: !3049)
!3049 = !{!3050}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3048, file: !584, line: 52, baseType: !3051, size: 256)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !584, line: 37, size: 256, elements: !3052)
!3052 = !{!3053, !3060, !3061, !3065}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3051, file: !584, line: 39, baseType: !3054, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3055, line: 83, baseType: !3056)
!3055 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3055, line: 82, baseType: !3058)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{null, !17}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3051, file: !584, line: 40, baseType: !47, size: 64, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3051, file: !584, line: 46, baseType: !3062, size: 64, offset: 128)
!3062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3055, line: 86, baseType: !3063)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3055, line: 85, baseType: !2064)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3051, file: !584, line: 48, baseType: !2918, size: 64, offset: 192)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2446, file: !1538, line: 1112, baseType: !2918, size: 64, offset: 15488)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2446, file: !1538, line: 1113, baseType: !2918, size: 64, offset: 15552)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2446, file: !1538, line: 1115, baseType: !2918, size: 64, offset: 15616)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2446, file: !1538, line: 1116, baseType: !2914, size: 192, offset: 15680)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2446, file: !1538, line: 1117, baseType: !47, size: 64, offset: 15872)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2446, file: !1538, line: 1118, baseType: !814, size: 64, offset: 15936)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2446, file: !1538, line: 1119, baseType: !66, size: 32, offset: 16000)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2446, file: !1538, line: 1121, baseType: !265, size: 64, offset: 16064)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2446, file: !1538, line: 1125, baseType: !3075, size: 64, offset: 16128)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1538, line: 43, flags: DIFlagFwdDecl)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2446, file: !1538, line: 1127, baseType: !367, size: 32, offset: 16192)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2446, file: !1538, line: 1128, baseType: !66, size: 32, offset: 16224)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2446, file: !1538, line: 1130, baseType: !3080, size: 128, offset: 16256)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3081, line: 37, size: 128, elements: !3082)
!3081 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3082 = !{!3083, !3084, !3085}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3080, file: !3081, line: 38, baseType: !17, size: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3080, file: !3081, line: 39, baseType: !218, size: 32, offset: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3080, file: !3081, line: 40, baseType: !3086, size: 64, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3081, line: 24, flags: DIFlagFwdDecl)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2446, file: !1538, line: 1131, baseType: !3089, size: 256, offset: 16384)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3090, line: 12, size: 256, elements: !3091)
!3090 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3091 = !{!3092, !3093, !3094, !3095}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3089, file: !3090, line: 13, baseType: !506, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3089, file: !3090, line: 14, baseType: !47, size: 64, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3089, file: !3090, line: 15, baseType: !47, size: 64, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3089, file: !3090, line: 16, baseType: !495, size: 8, offset: 192)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2446, file: !1538, line: 1134, baseType: !404, size: 64, offset: 16640)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2446, file: !1538, line: 1135, baseType: !404, size: 64, offset: 16704)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2446, file: !1538, line: 1138, baseType: !272, size: 32, offset: 16768)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2446, file: !1538, line: 1141, baseType: !205, size: 32, offset: 16800)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2446, file: !1538, line: 1143, baseType: !3101, size: 64, offset: 16832)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1538, line: 735, size: 64, elements: !3102)
!3102 = !{!3103}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3101, file: !1538, line: 736, baseType: !3104, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2446, file: !1538, line: 1147, baseType: !1037, size: 128, offset: 16896)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2446, file: !1538, line: 1149, baseType: !2445, size: 64, offset: 17024)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2446, file: !1538, line: 1151, baseType: !3108, size: 64, offset: 17088)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1538, line: 1151, flags: DIFlagFwdDecl)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2446, file: !1538, line: 1188, baseType: !23, size: 64, offset: 17152)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2446, file: !1538, line: 1191, baseType: !3112, size: 64, offset: 17216)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1538, line: 44, flags: DIFlagFwdDecl)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2446, file: !1538, line: 1194, baseType: !3115, size: 64, offset: 17280)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1538, line: 45, flags: DIFlagFwdDecl)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2446, file: !1538, line: 1197, baseType: !3118, size: 64, offset: 17344)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1538, line: 61, flags: DIFlagFwdDecl)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2446, file: !1538, line: 1199, baseType: !3121, size: 64, offset: 17408)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3123, line: 99, size: 128, elements: !3124)
!3123 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3124 = !{!3125, !3126, !3127}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3122, file: !3123, line: 100, baseType: !194, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3122, file: !3123, line: 101, baseType: !218, size: 32, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3122, file: !3123, line: 103, baseType: !41, size: 16, offset: 96)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2446, file: !1538, line: 1202, baseType: !3129, size: 64, offset: 17472)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1538, line: 48, flags: DIFlagFwdDecl)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2446, file: !1538, line: 1205, baseType: !47, size: 64, offset: 17536)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2446, file: !1538, line: 1206, baseType: !3133, size: 64, offset: 17600)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !584, line: 14, baseType: !3135)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !584, line: 12, size: 384, elements: !3136)
!3136 = !{!3137}
!3137 = !DIDerivedType(tag: DW_TAG_member, scope: !3135, file: !584, line: 13, baseType: !3138, size: 384)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3135, file: !584, line: 13, size: 384, elements: !3139)
!3139 = !{!3140, !3141, !3142, !3143}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3138, file: !584, line: 13, baseType: !17, size: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3138, file: !584, line: 13, baseType: !17, size: 32, offset: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3138, file: !584, line: 13, baseType: !17, size: 32, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3138, file: !584, line: 13, baseType: !3144, size: 256, offset: 128)
!3144 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3145, line: 37, size: 256, elements: !3146)
!3145 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3146 = !{!3147, !3152, !3165, !3171, !3180, !3207, !3212}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3144, file: !3145, line: 42, baseType: !3148, size: 64)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3144, file: !3145, line: 39, size: 64, elements: !3149)
!3149 = !{!3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3148, file: !3145, line: 40, baseType: !2814, size: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3148, file: !3145, line: 41, baseType: !373, size: 32, offset: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3144, file: !3145, line: 50, baseType: !3153, size: 192)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3144, file: !3145, line: 45, size: 192, elements: !3154)
!3154 = !{!3155, !3157, !3158, !3164}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3153, file: !3145, line: 46, baseType: !3156, size: 32)
!3156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !287, line: 95, baseType: !17)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3153, file: !3145, line: 47, baseType: !17, size: 32, offset: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3153, file: !3145, line: 48, baseType: !3159, size: 64, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3145, line: 11, baseType: !3160)
!3160 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3145, line: 8, size: 64, elements: !3161)
!3161 = !{!3162, !3163}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3160, file: !3145, line: 9, baseType: !17, size: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3160, file: !3145, line: 10, baseType: !23, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3153, file: !3145, line: 49, baseType: !17, size: 32, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3144, file: !3145, line: 57, baseType: !3166, size: 128)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3144, file: !3145, line: 53, size: 128, elements: !3167)
!3167 = !{!3168, !3169, !3170}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3166, file: !3145, line: 54, baseType: !2814, size: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3166, file: !3145, line: 55, baseType: !373, size: 32, offset: 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3166, file: !3145, line: 56, baseType: !3159, size: 64, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3144, file: !3145, line: 66, baseType: !3172, size: 256)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3144, file: !3145, line: 60, size: 256, elements: !3173)
!3173 = !{!3174, !3175, !3176, !3177, !3179}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3172, file: !3145, line: 61, baseType: !2814, size: 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3172, file: !3145, line: 62, baseType: !373, size: 32, offset: 32)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3172, file: !3145, line: 63, baseType: !17, size: 32, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3172, file: !3145, line: 64, baseType: !3178, size: 64, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !287, line: 94, baseType: !813)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3172, file: !3145, line: 65, baseType: !3178, size: 64, offset: 192)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3144, file: !3145, line: 105, baseType: !3181, size: 256)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3144, file: !3145, line: 69, size: 256, elements: !3182)
!3182 = !{!3183, !3184}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3181, file: !3145, line: 70, baseType: !23, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, scope: !3181, file: !3145, line: 79, baseType: !3185, size: 192, offset: 64)
!3185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3181, file: !3145, line: 79, size: 192, elements: !3186)
!3186 = !{!3187, !3188, !3189, !3196, !3201}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3185, file: !3145, line: 81, baseType: !17, size: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3185, file: !3145, line: 86, baseType: !109, size: 16)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3185, file: !3145, line: 92, baseType: !3190, size: 192)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3185, file: !3145, line: 88, size: 192, elements: !3191)
!3191 = !{!3192, !3194, !3195}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3190, file: !3145, line: 89, baseType: !3193, size: 64)
!3193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2604)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3190, file: !3145, line: 90, baseType: !23, size: 64, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3190, file: !3145, line: 91, baseType: !23, size: 64, offset: 128)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3185, file: !3145, line: 97, baseType: !3197, size: 96)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3185, file: !3145, line: 94, size: 96, elements: !3198)
!3198 = !{!3199, !3200}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3197, file: !3145, line: 95, baseType: !3193, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3197, file: !3145, line: 96, baseType: !84, size: 32, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3185, file: !3145, line: 103, baseType: !3202, size: 128)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3185, file: !3145, line: 99, size: 128, elements: !3203)
!3203 = !{!3204, !3205, !3206}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3202, file: !3145, line: 100, baseType: !47, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3202, file: !3145, line: 101, baseType: !84, size: 32, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3202, file: !3145, line: 102, baseType: !84, size: 32, offset: 96)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3144, file: !3145, line: 111, baseType: !3208, size: 128)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3144, file: !3145, line: 108, size: 128, elements: !3209)
!3209 = !{!3210, !3211}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3208, file: !3145, line: 109, baseType: !772, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3208, file: !3145, line: 110, baseType: !17, size: 32, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3144, file: !3145, line: 118, baseType: !3213, size: 128)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3144, file: !3145, line: 114, size: 128, elements: !3214)
!3214 = !{!3215, !3216, !3217}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3213, file: !3145, line: 115, baseType: !23, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3213, file: !3145, line: 116, baseType: !17, size: 32, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3213, file: !3145, line: 117, baseType: !66, size: 32, offset: 96)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2446, file: !1538, line: 1208, baseType: !2998, size: 448, offset: 17664)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2446, file: !1538, line: 1215, baseType: !404, size: 64, offset: 18112)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2446, file: !1538, line: 1217, baseType: !404, size: 64, offset: 18176)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2446, file: !1538, line: 1219, baseType: !404, size: 64, offset: 18240)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2446, file: !1538, line: 1223, baseType: !3223, size: 64, offset: 18304)
!3223 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3224, line: 99, baseType: !3225)
!3224 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3224, line: 99, size: 64, elements: !3226)
!3226 = !{!3227}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3225, file: !3224, line: 99, baseType: !46, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2446, file: !1538, line: 1225, baseType: !623, size: 32, offset: 18368)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2446, file: !1538, line: 1226, baseType: !17, size: 32, offset: 18400)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2446, file: !1538, line: 1227, baseType: !17, size: 32, offset: 18432)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2446, file: !1538, line: 1231, baseType: !3232, size: 64, offset: 18496)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1538, line: 1231, flags: DIFlagFwdDecl)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2446, file: !1538, line: 1233, baseType: !239, size: 128, offset: 18560)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2446, file: !1538, line: 1240, baseType: !3236, size: 64, offset: 18688)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1538, line: 62, flags: DIFlagFwdDecl)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2446, file: !1538, line: 1242, baseType: !3239, size: 64, offset: 18752)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1538, line: 1242, flags: DIFlagFwdDecl)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2446, file: !1538, line: 1244, baseType: !239, size: 128, offset: 18816)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2446, file: !1538, line: 1245, baseType: !3243, size: 64, offset: 18944)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1538, line: 51, flags: DIFlagFwdDecl)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2446, file: !1538, line: 1246, baseType: !190, size: 256, offset: 19008)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2446, file: !1538, line: 1247, baseType: !66, size: 32, offset: 19264)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2446, file: !1538, line: 1250, baseType: !3248, size: 64, offset: 19328)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1538, line: 57, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2446, file: !1538, line: 1251, baseType: !190, size: 256, offset: 19392)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2446, file: !1538, line: 1252, baseType: !239, size: 128, offset: 19648)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2446, file: !1538, line: 1259, baseType: !1536, size: 64, offset: 19776)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2446, file: !1538, line: 1260, baseType: !109, size: 16, offset: 19840)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2446, file: !1538, line: 1261, baseType: !109, size: 16, offset: 19856)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2446, file: !1538, line: 1314, baseType: !3256, size: 64, offset: 19904)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3258, line: 62, size: 256, align: 256, elements: !3259)
!3258 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3259 = !{!3260, !3261, !3262, !3263, !3264, !3265, !3266}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3257, file: !3258, line: 75, baseType: !84, size: 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3257, file: !3258, line: 90, baseType: !84, size: 32, offset: 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3257, file: !3258, line: 112, baseType: !405, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3257, file: !3258, line: 132, baseType: !84, size: 32, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3257, file: !3258, line: 140, baseType: !84, size: 32, offset: 160)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3257, file: !3258, line: 149, baseType: !84, size: 32, offset: 192)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3257, file: !3258, line: 154, baseType: !3267, offset: 224)
!3267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !356)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2446, file: !1538, line: 1315, baseType: !461, size: 32, offset: 19968)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2446, file: !1538, line: 1316, baseType: !461, size: 32, offset: 20000)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2446, file: !1538, line: 1321, baseType: !47, size: 64, offset: 20032)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2446, file: !1538, line: 1325, baseType: !17, size: 32, offset: 20096)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2446, file: !1538, line: 1326, baseType: !17, size: 32, offset: 20128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2446, file: !1538, line: 1327, baseType: !17, size: 32, offset: 20160)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2446, file: !1538, line: 1328, baseType: !17, size: 32, offset: 20192)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2446, file: !1538, line: 1329, baseType: !262, size: 128, align: 64, offset: 20224)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2446, file: !1538, line: 1332, baseType: !3277, size: 128, offset: 20352)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3278, line: 51, size: 128, elements: !3279)
!3278 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3279 = !{!3280, !3285, !3286}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3277, file: !3278, line: 60, baseType: !3281, size: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3282, line: 7, size: 64, elements: !3283)
!3282 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3283 = !{!3284}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3281, file: !3282, line: 12, baseType: !2678, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3277, file: !3278, line: 63, baseType: !495, size: 8, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3277, file: !3278, line: 70, baseType: !495, size: 8, offset: 72)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2446, file: !1538, line: 1335, baseType: !3288, size: 64, offset: 20480)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1538, line: 59, flags: DIFlagFwdDecl)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2446, file: !1538, line: 1337, baseType: !3291, size: 128, offset: 20544)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3278, line: 39, size: 128, elements: !3292)
!3292 = !{!3293, !3294, !3295}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3291, file: !3278, line: 40, baseType: !1055, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3291, file: !3278, line: 42, baseType: !84, size: 32, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3291, file: !3278, line: 43, baseType: !84, size: 32, offset: 96)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2446, file: !1538, line: 1340, baseType: !3297, size: 64, offset: 20672)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1538, line: 69, flags: DIFlagFwdDecl)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2446, file: !1538, line: 1351, baseType: !17, size: 32, offset: 20736)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2446, file: !1538, line: 1352, baseType: !17, size: 32, offset: 20768)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2446, file: !1538, line: 1354, baseType: !47, size: 64, offset: 20800)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2446, file: !1538, line: 1364, baseType: !404, size: 64, offset: 20864)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2446, file: !1538, line: 1365, baseType: !404, size: 64, offset: 20928)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2446, file: !1538, line: 1412, baseType: !47, size: 64, offset: 20992)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2446, file: !1538, line: 1453, baseType: !3306, size: 64, offset: 21056)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1538, line: 1453, flags: DIFlagFwdDecl)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2446, file: !1538, line: 1457, baseType: !3309, size: 64, offset: 21120)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !1478, line: 61, size: 576, elements: !3311)
!3311 = !{!3312, !3319, !3338, !3341, !3342, !3375, !3385}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3310, file: !1478, line: 62, baseType: !3313, size: 32)
!3313 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !1478, line: 51, baseType: !66, size: 32, elements: !3314)
!3314 = !{!3315, !3316, !3317, !3318}
!3315 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!3316 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!3317 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!3318 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!3319 = !DIDerivedType(tag: DW_TAG_member, scope: !3310, file: !1478, line: 64, baseType: !3320, size: 192, offset: 64)
!3320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3310, file: !1478, line: 64, size: 192, elements: !3321)
!3321 = !{!3322, !3333}
!3322 = !DIDerivedType(tag: DW_TAG_member, scope: !3320, file: !1478, line: 65, baseType: !3323, size: 192)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3320, file: !1478, line: 65, size: 192, elements: !3324)
!3324 = !{!3325, !3332}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3323, file: !1478, line: 66, baseType: !3326, size: 128)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3327, line: 50, size: 128, elements: !3328)
!3327 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3328 = !{!3329, !3330, !3331}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3326, file: !3327, line: 52, baseType: !47, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3326, file: !3327, line: 54, baseType: !66, size: 32, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3326, file: !3327, line: 55, baseType: !66, size: 32, offset: 96)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3323, file: !1478, line: 67, baseType: !47, size: 64, offset: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, scope: !3320, file: !1478, line: 70, baseType: !3334, size: 192)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3320, file: !1478, line: 70, size: 192, elements: !3335)
!3335 = !{!3336, !3337}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3334, file: !1478, line: 71, baseType: !262, size: 128, align: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3334, file: !1478, line: 72, baseType: !47, size: 64, offset: 128)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3310, file: !1478, line: 76, baseType: !3339, size: 64, offset: 256)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !1478, line: 76, flags: DIFlagFwdDecl)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3310, file: !1478, line: 77, baseType: !47, size: 64, offset: 320)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3310, file: !1478, line: 79, baseType: !3343, size: 64, offset: 384)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3327, line: 25, size: 256, elements: !3345)
!3345 = !{!3346, !3352, !3356}
!3346 = !DIDerivedType(tag: DW_TAG_member, scope: !3344, file: !3327, line: 26, baseType: !3347, size: 128)
!3347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3344, file: !3327, line: 26, size: 128, elements: !3348)
!3348 = !{!3349, !3351}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3347, file: !3327, line: 27, baseType: !3350, size: 128)
!3350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 128, elements: !2872)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3347, file: !3327, line: 28, baseType: !3350, size: 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3344, file: !3327, line: 31, baseType: !3353, size: 64, offset: 128)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3355)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3327, line: 23, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, scope: !3344, file: !3327, line: 33, baseType: !3357, size: 64, offset: 192)
!3357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3344, file: !3327, line: 33, size: 64, elements: !3358)
!3358 = !{!3359, !3365, !3370}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3357, file: !3327, line: 38, baseType: !3360, size: 64)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3357, file: !3327, line: 34, size: 64, elements: !3361)
!3361 = !{!3362, !3363, !3364}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3360, file: !3327, line: 35, baseType: !421, size: 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3360, file: !3327, line: 36, baseType: !226, size: 8, offset: 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3360, file: !3327, line: 37, baseType: !226, size: 8, offset: 40)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3357, file: !3327, line: 42, baseType: !3366, size: 16)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3357, file: !3327, line: 39, size: 16, elements: !3367)
!3367 = !{!3368, !3369}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3366, file: !3327, line: 40, baseType: !226, size: 8)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3366, file: !3327, line: 41, baseType: !226, size: 8, offset: 8)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3357, file: !3327, line: 46, baseType: !3371, size: 16)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3357, file: !3327, line: 43, size: 16, elements: !3372)
!3372 = !{!3373, !3374}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3371, file: !3327, line: 44, baseType: !226, size: 8)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3371, file: !3327, line: 45, baseType: !226, size: 8, offset: 8)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3310, file: !1478, line: 81, baseType: !3376, size: 64, offset: 448)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !1478, line: 85, size: 384, elements: !3378)
!3378 = !{!3379, !3380, !3381, !3382, !3383, !3384}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3377, file: !1478, line: 86, baseType: !3339, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3377, file: !1478, line: 87, baseType: !47, size: 64, offset: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3377, file: !1478, line: 88, baseType: !47, size: 64, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3377, file: !1478, line: 89, baseType: !47, size: 64, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3377, file: !1478, line: 90, baseType: !495, size: 8, offset: 256)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3377, file: !1478, line: 92, baseType: !3376, size: 64, offset: 320)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3310, file: !1478, line: 82, baseType: !66, size: 32, offset: 512)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2446, file: !1538, line: 1463, baseType: !3387, offset: 21184)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1538, line: 739, elements: !1351)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2446, file: !1538, line: 1470, baseType: !262, size: 128, align: 64, offset: 21184)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2446, file: !1538, line: 1471, baseType: !321, size: 32, offset: 21312)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2446, file: !1538, line: 1472, baseType: !17, size: 32, offset: 21344)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2446, file: !1538, line: 1474, baseType: !2445, size: 64, offset: 21376)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2446, file: !1538, line: 1475, baseType: !1959, size: 320, offset: 21440)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2446, file: !1538, line: 1478, baseType: !3394, size: 64, offset: 21760)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1538, line: 1478, flags: DIFlagFwdDecl)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2446, file: !1538, line: 1482, baseType: !321, size: 32, offset: 21824)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2446, file: !1538, line: 1489, baseType: !23, size: 64, offset: 21888)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2446, file: !1538, line: 1504, baseType: !23, size: 64, offset: 21952)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2446, file: !1538, line: 1505, baseType: !405, size: 64, offset: 22016)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2446, file: !1538, line: 1506, baseType: !404, size: 64, offset: 22080)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2446, file: !1538, line: 1507, baseType: !405, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2446, file: !1538, line: 1508, baseType: !405, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2446, file: !1538, line: 1509, baseType: !405, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2446, file: !1538, line: 1510, baseType: !262, size: 128, align: 64, offset: 22208)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2446, file: !1538, line: 1511, baseType: !17, size: 32, offset: 22336)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2446, file: !1538, line: 1515, baseType: !3407, size: 64, offset: 22400)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !257, line: 56, size: 64, elements: !3408)
!3408 = !{!3409}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3407, file: !257, line: 57, baseType: !260, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2446, file: !1538, line: 1518, baseType: !3407, size: 64, offset: 22464)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2446, file: !1538, line: 1528, baseType: !262, size: 128, align: 64, offset: 22528)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2446, file: !1538, line: 1552, baseType: !3413, size: 35328, offset: 23040)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3414, line: 430, size: 35328, elements: !3415)
!3414 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3415 = !{!3416, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3445, !3446, !3447, !3448, !3449, !3450, !3453, !3454, !3455, !3456}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3413, file: !3414, line: 432, baseType: !3417, size: 192)
!3417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3418, size: 192, elements: !312)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3419, line: 16, size: 64, elements: !3420)
!3419 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3420 = !{!3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3418, file: !3419, line: 17, baseType: !180, size: 16)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3418, file: !3419, line: 18, baseType: !180, size: 16, offset: 16)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3418, file: !3419, line: 19, baseType: !180, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3418, file: !3419, line: 19, baseType: !180, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3418, file: !3419, line: 19, baseType: !180, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3418, file: !3419, line: 19, baseType: !180, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3418, file: !3419, line: 19, baseType: !180, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3418, file: !3419, line: 20, baseType: !180, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3418, file: !3419, line: 20, baseType: !180, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3418, file: !3419, line: 20, baseType: !180, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3418, file: !3419, line: 20, baseType: !180, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3418, file: !3419, line: 20, baseType: !180, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3418, file: !3419, line: 20, baseType: !180, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3413, file: !3414, line: 436, baseType: !47, size: 64, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3413, file: !3414, line: 440, baseType: !41, size: 16, offset: 256)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3413, file: !3414, line: 441, baseType: !41, size: 16, offset: 272)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3413, file: !3414, line: 442, baseType: !41, size: 16, offset: 288)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3413, file: !3414, line: 443, baseType: !41, size: 16, offset: 304)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3413, file: !3414, line: 447, baseType: !47, size: 64, offset: 320)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3413, file: !3414, line: 448, baseType: !47, size: 64, offset: 384)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3413, file: !3414, line: 459, baseType: !3442, size: 256, offset: 448)
!3442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3443, size: 256, elements: !5)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3414, line: 428, flags: DIFlagFwdDecl)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3413, file: !3414, line: 461, baseType: !47, size: 64, offset: 704)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3413, file: !3414, line: 463, baseType: !47, size: 64, offset: 768)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3413, file: !3414, line: 465, baseType: !47, size: 64, offset: 832)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3413, file: !3414, line: 466, baseType: !47, size: 64, offset: 896)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3413, file: !3414, line: 467, baseType: !47, size: 64, offset: 960)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3413, file: !3414, line: 473, baseType: !3451, size: 64, offset: 1024)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3414, line: 10, flags: DIFlagFwdDecl)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3413, file: !3414, line: 480, baseType: !47, size: 64, offset: 1088)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3413, file: !3414, line: 482, baseType: !66, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3413, file: !3414, line: 491, baseType: !461, size: 32, offset: 1184)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3413, file: !3414, line: 501, baseType: !3457, size: 33792, offset: 1536)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3458, line: 448, size: 33792, elements: !3459)
!3458 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3459 = !{!3460, !3461, !3462, !3622, !3623, !3629, !3630}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3457, file: !3458, line: 461, baseType: !66, size: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3457, file: !3458, line: 468, baseType: !47, size: 64, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3457, file: !3458, line: 476, baseType: !3463, size: 64, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3458, line: 356, size: 33280, align: 512, elements: !3465)
!3465 = !{!3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3464, file: !3458, line: 358, baseType: !66, size: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3464, file: !3458, line: 361, baseType: !66, size: 32, offset: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3464, file: !3458, line: 364, baseType: !404, size: 64, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3464, file: !3458, line: 367, baseType: !404, size: 64, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3464, file: !3458, line: 370, baseType: !404, size: 64, offset: 192)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3464, file: !3458, line: 373, baseType: !66, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3464, file: !3458, line: 376, baseType: !66, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3464, file: !3458, line: 391, baseType: !66, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3464, file: !3458, line: 394, baseType: !66, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3464, file: !3458, line: 397, baseType: !3476, size: 32768, offset: 512)
!3476 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3458, line: 348, size: 32768, elements: !3477)
!3477 = !{!3478, !3493, !3528, !3605, !3618}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3476, file: !3458, line: 349, baseType: !3479, size: 896)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3458, line: 12, size: 896, elements: !3480)
!3480 = !{!3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3492}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3479, file: !3458, line: 13, baseType: !461, size: 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3479, file: !3458, line: 14, baseType: !461, size: 32, offset: 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3479, file: !3458, line: 15, baseType: !461, size: 32, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3479, file: !3458, line: 16, baseType: !461, size: 32, offset: 96)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3479, file: !3458, line: 17, baseType: !461, size: 32, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3479, file: !3458, line: 18, baseType: !461, size: 32, offset: 160)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3479, file: !3458, line: 19, baseType: !461, size: 32, offset: 192)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3479, file: !3458, line: 22, baseType: !3489, size: 640, offset: 224)
!3489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 640, elements: !3490)
!3490 = !{!3491}
!3491 = !DISubrange(count: 20)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3479, file: !3458, line: 25, baseType: !461, size: 32, offset: 864)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3476, file: !3458, line: 350, baseType: !3494, size: 4096, align: 128)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3458, line: 34, size: 4096, align: 128, elements: !3495)
!3495 = !{!3496, !3497, !3498, !3499, !3500, !3515, !3516, !3517, !3519, !3521, !3523}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3494, file: !3458, line: 35, baseType: !180, size: 16)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3494, file: !3458, line: 36, baseType: !180, size: 16, offset: 16)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3494, file: !3458, line: 37, baseType: !180, size: 16, offset: 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3494, file: !3458, line: 38, baseType: !180, size: 16, offset: 48)
!3500 = !DIDerivedType(tag: DW_TAG_member, scope: !3494, file: !3458, line: 39, baseType: !3501, size: 128, offset: 64)
!3501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3494, file: !3458, line: 39, size: 128, elements: !3502)
!3502 = !{!3503, !3508}
!3503 = !DIDerivedType(tag: DW_TAG_member, scope: !3501, file: !3458, line: 40, baseType: !3504, size: 128)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3501, file: !3458, line: 40, size: 128, elements: !3505)
!3505 = !{!3506, !3507}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3504, file: !3458, line: 41, baseType: !404, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3504, file: !3458, line: 42, baseType: !404, size: 64, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, scope: !3501, file: !3458, line: 44, baseType: !3509, size: 128)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3501, file: !3458, line: 44, size: 128, elements: !3510)
!3510 = !{!3511, !3512, !3513, !3514}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3509, file: !3458, line: 45, baseType: !461, size: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3509, file: !3458, line: 46, baseType: !461, size: 32, offset: 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3509, file: !3458, line: 47, baseType: !461, size: 32, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3509, file: !3458, line: 48, baseType: !461, size: 32, offset: 96)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3494, file: !3458, line: 51, baseType: !461, size: 32, offset: 192)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3494, file: !3458, line: 52, baseType: !461, size: 32, offset: 224)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3494, file: !3458, line: 55, baseType: !3518, size: 1024, offset: 256)
!3518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 1024, elements: !87)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3494, file: !3458, line: 58, baseType: !3520, size: 2048, offset: 1280)
!3520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 2048, elements: !967)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3494, file: !3458, line: 60, baseType: !3522, size: 384, offset: 3328)
!3522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 384, elements: !53)
!3523 = !DIDerivedType(tag: DW_TAG_member, scope: !3494, file: !3458, line: 62, baseType: !3524, size: 384, offset: 3712)
!3524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3494, file: !3458, line: 62, size: 384, elements: !3525)
!3525 = !{!3526, !3527}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3524, file: !3458, line: 63, baseType: !3522, size: 384)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3524, file: !3458, line: 64, baseType: !3522, size: 384)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3476, file: !3458, line: 351, baseType: !3529, size: 1088)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3458, line: 79, size: 1088, elements: !3530)
!3530 = !{!3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3604}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3529, file: !3458, line: 80, baseType: !461, size: 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3529, file: !3458, line: 81, baseType: !461, size: 32, offset: 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3529, file: !3458, line: 82, baseType: !461, size: 32, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3529, file: !3458, line: 83, baseType: !461, size: 32, offset: 96)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3529, file: !3458, line: 84, baseType: !461, size: 32, offset: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3529, file: !3458, line: 85, baseType: !461, size: 32, offset: 160)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3529, file: !3458, line: 86, baseType: !461, size: 32, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3529, file: !3458, line: 88, baseType: !3489, size: 640, offset: 224)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3529, file: !3458, line: 89, baseType: !226, size: 8, offset: 864)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3529, file: !3458, line: 90, baseType: !226, size: 8, offset: 872)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3529, file: !3458, line: 91, baseType: !226, size: 8, offset: 880)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3529, file: !3458, line: 92, baseType: !226, size: 8, offset: 888)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3529, file: !3458, line: 93, baseType: !226, size: 8, offset: 896)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3529, file: !3458, line: 94, baseType: !226, size: 8, offset: 904)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3529, file: !3458, line: 95, baseType: !3546, size: 64, offset: 960)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3548, line: 11, size: 128, elements: !3549)
!3548 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3549 = !{!3550, !3551}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3547, file: !3548, line: 12, baseType: !772, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3547, file: !3548, line: 13, baseType: !3552, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3554, line: 103, size: 1344, elements: !3555)
!3554 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3555 = !{!3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3584, !3585, !3586}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3553, file: !3554, line: 109, baseType: !47, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3553, file: !3554, line: 110, baseType: !47, size: 64, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3553, file: !3554, line: 111, baseType: !47, size: 64, offset: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3553, file: !3554, line: 112, baseType: !47, size: 64, offset: 192)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3553, file: !3554, line: 113, baseType: !47, size: 64, offset: 256)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3553, file: !3554, line: 114, baseType: !47, size: 64, offset: 320)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3553, file: !3554, line: 117, baseType: !47, size: 64, offset: 384)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3553, file: !3554, line: 118, baseType: !47, size: 64, offset: 448)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3553, file: !3554, line: 119, baseType: !47, size: 64, offset: 512)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3553, file: !3554, line: 120, baseType: !47, size: 64, offset: 576)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3553, file: !3554, line: 121, baseType: !47, size: 64, offset: 640)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3553, file: !3554, line: 122, baseType: !47, size: 64, offset: 704)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3553, file: !3554, line: 123, baseType: !47, size: 64, offset: 768)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3553, file: !3554, line: 124, baseType: !47, size: 64, offset: 832)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3553, file: !3554, line: 125, baseType: !47, size: 64, offset: 896)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3553, file: !3554, line: 139, baseType: !47, size: 64, offset: 960)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3553, file: !3554, line: 142, baseType: !47, size: 64, offset: 1024)
!3573 = !DIDerivedType(tag: DW_TAG_member, scope: !3553, file: !3554, line: 144, baseType: !3574, size: 64, offset: 1088)
!3574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3553, file: !3554, line: 144, size: 64, elements: !3575)
!3575 = !{!3576, !3577, !3578}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3574, file: !3554, line: 146, baseType: !180, size: 16)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3574, file: !3554, line: 148, baseType: !404, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3574, file: !3554, line: 150, baseType: !3579, size: 64)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3554, line: 59, size: 64, elements: !3580)
!3580 = !{!3581, !3582, !3583}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3579, file: !3554, line: 61, baseType: !404, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3579, file: !3554, line: 63, baseType: !404, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3579, file: !3554, line: 65, baseType: !404, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3553, file: !3554, line: 153, baseType: !47, size: 64, offset: 1152)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3553, file: !3554, line: 154, baseType: !47, size: 64, offset: 1216)
!3586 = !DIDerivedType(tag: DW_TAG_member, scope: !3553, file: !3554, line: 156, baseType: !3587, size: 64, offset: 1280)
!3587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3553, file: !3554, line: 156, size: 64, elements: !3588)
!3588 = !{!3589, !3590, !3591}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3587, file: !3554, line: 158, baseType: !180, size: 16)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3587, file: !3554, line: 160, baseType: !404, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3587, file: !3554, line: 162, baseType: !3592, size: 64)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3554, line: 69, size: 64, elements: !3593)
!3593 = !{!3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3592, file: !3554, line: 71, baseType: !404, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3592, file: !3554, line: 73, baseType: !404, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3592, file: !3554, line: 75, baseType: !404, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3592, file: !3554, line: 77, baseType: !404, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3592, file: !3554, line: 80, baseType: !404, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3592, file: !3554, line: 83, baseType: !404, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3592, file: !3554, line: 86, baseType: !404, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3592, file: !3554, line: 88, baseType: !404, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3592, file: !3554, line: 93, baseType: !404, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3592, file: !3554, line: 100, baseType: !404, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3529, file: !3458, line: 96, baseType: !461, size: 32, offset: 1024)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3476, file: !3458, line: 352, baseType: !3606, size: 4608, align: 512)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3458, line: 333, size: 4608, align: 512, elements: !3607)
!3607 = !{!3608, !3609, !3616}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3606, file: !3458, line: 334, baseType: !3494, size: 4096, align: 128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3606, file: !3458, line: 335, baseType: !3610, size: 512, offset: 4096)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3458, line: 312, size: 512, elements: !3611)
!3611 = !{!3612, !3613, !3614}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3610, file: !3458, line: 313, baseType: !404, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3610, file: !3458, line: 314, baseType: !404, size: 64, offset: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3610, file: !3458, line: 315, baseType: !3615, size: 384, offset: 128)
!3615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 384, elements: !482)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3606, file: !3458, line: 336, baseType: !3617, offset: 4608)
!3617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, elements: !356)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3476, file: !3458, line: 353, baseType: !3619, size: 32768)
!3619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 32768, elements: !3620)
!3620 = !{!3621}
!3621 = !DISubrange(count: 4096)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3457, file: !3458, line: 484, baseType: !3463, size: 64, offset: 192)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3457, file: !3458, line: 491, baseType: !3624, size: 128, offset: 256)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3458, line: 404, size: 128, elements: !3625)
!3625 = !{!3626, !3627, !3628}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3624, file: !3458, line: 424, baseType: !404, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3624, file: !3458, line: 432, baseType: !66, size: 32, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3624, file: !3458, line: 440, baseType: !66, size: 32, offset: 96)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3457, file: !3458, line: 498, baseType: !3624, size: 128, offset: 384)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3457, file: !3458, line: 508, baseType: !3464, size: 33280, align: 512, offset: 512)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2428, file: !2429, line: 16, baseType: !341, size: 192, offset: 512)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2428, file: !2429, line: 17, baseType: !218, size: 32, offset: 704)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !871, file: !250, line: 1240, baseType: !23, size: 64, offset: 6912)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !871, file: !250, line: 1243, baseType: !461, size: 32, offset: 6976)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !871, file: !250, line: 1245, baseType: !452, size: 64, offset: 7040)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !871, file: !250, line: 1246, baseType: !452, size: 64, offset: 7104)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !871, file: !250, line: 1248, baseType: !84, size: 32, offset: 7168)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !871, file: !250, line: 1249, baseType: !3639, size: 64, offset: 7232)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !250, line: 634, flags: DIFlagFwdDecl)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !871, file: !250, line: 1252, baseType: !3642, size: 256, offset: 7296)
!3642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !87)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !871, file: !250, line: 1253, baseType: !3644, size: 128, offset: 7552)
!3644 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3645, line: 21, baseType: !3646)
!3645 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3645, line: 19, size: 128, elements: !3647)
!3647 = !{!3648}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3646, file: !3645, line: 20, baseType: !3649, size: 128)
!3649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 128, elements: !2872)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !871, file: !250, line: 1255, baseType: !66, size: 32, offset: 7680)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !871, file: !250, line: 1261, baseType: !190, size: 256, offset: 7744)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !871, file: !250, line: 1267, baseType: !30, size: 64, offset: 8000)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !871, file: !250, line: 1269, baseType: !3654, size: 64, offset: 8064)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3656)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !619, line: 128, size: 1024, align: 512, elements: !3657)
!3657 = !{!3658, !3662, !3663, !3670, !3676, !3680, !3684, !3688, !3689, !3693, !3697, !3702, !3706}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3656, file: !619, line: 129, baseType: !3659, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!17, !617, !66}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3656, file: !619, line: 130, baseType: !3659, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3656, file: !619, line: 131, baseType: !3664, size: 64, offset: 128)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!17, !3667, !3669}
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3656, file: !619, line: 132, baseType: !3671, size: 64, offset: 192)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!17, !3667, !66, !30, !3674}
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3656, file: !619, line: 134, baseType: !3677, size: 64, offset: 256)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!17, !3667}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3656, file: !619, line: 135, baseType: !3681, size: 64, offset: 320)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!17, !617}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3656, file: !619, line: 136, baseType: !3685, size: 64, offset: 384)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{null, !617}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3656, file: !619, line: 137, baseType: !3685, size: 64, offset: 448)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3656, file: !619, line: 138, baseType: !3690, size: 64, offset: 512)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{null, !617, !657}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3656, file: !619, line: 139, baseType: !3694, size: 64, offset: 576)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!506, !617, !506, !17}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3656, file: !619, line: 140, baseType: !3698, size: 64, offset: 640)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!612, !3701}
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3656, file: !619, line: 141, baseType: !3703, size: 64, offset: 704)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!17, !780, !495}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3656, file: !619, line: 142, baseType: !3707, size: 64, offset: 768)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!617, !617, !3710}
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !871, file: !250, line: 1271, baseType: !3713, size: 448, offset: 8128)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2210, line: 63, size: 448, elements: !3714)
!3714 = !{!3715, !3720, !3721, !3722, !3723, !3724, !3725}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3713, file: !2210, line: 64, baseType: !3716, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!47, !3719, !2208}
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3713, file: !2210, line: 66, baseType: !3716, size: 64, offset: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3713, file: !2210, line: 69, baseType: !772, size: 64, offset: 128)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3713, file: !2210, line: 70, baseType: !17, size: 32, offset: 192)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3713, file: !2210, line: 71, baseType: !66, size: 32, offset: 224)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3713, file: !2210, line: 74, baseType: !239, size: 128, offset: 256)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3713, file: !2210, line: 85, baseType: !3726, size: 64, offset: 384)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !871, file: !250, line: 1274, baseType: !194, size: 64, offset: 8576)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !871, file: !250, line: 1280, baseType: !194, size: 64, offset: 8640)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !871, file: !250, line: 1283, baseType: !17, size: 32, offset: 8704)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !871, file: !250, line: 1286, baseType: !1303, size: 32, offset: 8736)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !871, file: !250, line: 1289, baseType: !2021, size: 64, offset: 8768)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !871, file: !250, line: 1290, baseType: !330, size: 64, offset: 8832)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !871, file: !250, line: 1297, baseType: !579, size: 64, offset: 8896)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !871, file: !250, line: 1304, baseType: !3735, size: 64, offset: 8960)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3736, line: 49, size: 64, elements: !3737)
!3736 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3737 = !{!3738}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3735, file: !3736, line: 50, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3736, line: 41, size: 512, align: 512, elements: !3741)
!3741 = !{!3742, !3743, !3748}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3740, file: !3736, line: 43, baseType: !272, size: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3740, file: !3736, line: 45, baseType: !3744, size: 192, offset: 64)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3736, line: 29, size: 192, elements: !3745)
!3745 = !{!3746, !3747}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3744, file: !3736, line: 30, baseType: !239, size: 128)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3744, file: !3736, line: 32, baseType: !772, size: 64, offset: 128)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3740, file: !3736, line: 46, baseType: !772, size: 64, offset: 256)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !871, file: !250, line: 1305, baseType: !3735, size: 64, offset: 9024)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !871, file: !250, line: 1306, baseType: !262, size: 128, align: 64, offset: 9088)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !871, file: !250, line: 1307, baseType: !1485, size: 256, offset: 9216)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !871, file: !250, line: 1309, baseType: !190, size: 256, offset: 9472)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !871, file: !250, line: 1314, baseType: !17, size: 32, offset: 9728)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !871, file: !250, line: 1317, baseType: !272, size: 32, align: 512, offset: 10240)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !871, file: !250, line: 1318, baseType: !239, size: 128, offset: 10304)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !871, file: !250, line: 1320, baseType: !272, size: 32, offset: 10432)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !871, file: !250, line: 1321, baseType: !239, size: 128, offset: 10496)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !658, file: !250, line: 656, baseType: !1028, size: 64, offset: 512)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !658, file: !250, line: 659, baseType: !23, size: 64, offset: 576)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !658, file: !250, line: 663, baseType: !47, size: 64, offset: 640)
!3761 = !DIDerivedType(tag: DW_TAG_member, scope: !658, file: !250, line: 671, baseType: !3762, size: 32, offset: 704)
!3762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !250, line: 671, size: 32, elements: !3763)
!3763 = !{!3764, !3766}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3762, file: !250, line: 672, baseType: !3765, size: 32)
!3765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3762, file: !250, line: 673, baseType: !66, size: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !658, file: !250, line: 675, baseType: !732, size: 32, offset: 736)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !658, file: !250, line: 676, baseType: !285, size: 64, offset: 768)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !658, file: !250, line: 677, baseType: !768, size: 128, offset: 832)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !658, file: !250, line: 678, baseType: !768, size: 128, offset: 960)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !658, file: !250, line: 679, baseType: !768, size: 128, offset: 1088)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !658, file: !250, line: 680, baseType: !272, size: 32, offset: 1216)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !658, file: !250, line: 681, baseType: !41, size: 16, offset: 1248)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !658, file: !250, line: 682, baseType: !226, size: 8, offset: 1264)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !658, file: !250, line: 683, baseType: !226, size: 8, offset: 1272)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !658, file: !250, line: 684, baseType: !2341, size: 64, offset: 1280)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !658, file: !250, line: 691, baseType: !47, size: 64, offset: 1344)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !658, file: !250, line: 692, baseType: !436, size: 320, offset: 1408)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !658, file: !250, line: 694, baseType: !47, size: 64, offset: 1728)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !658, file: !250, line: 695, baseType: !47, size: 64, offset: 1792)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !658, file: !250, line: 697, baseType: !334, size: 128, offset: 1856)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !658, file: !250, line: 698, baseType: !239, size: 128, offset: 1984)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !658, file: !250, line: 707, baseType: !239, size: 128, offset: 2112)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !658, file: !250, line: 708, baseType: !239, size: 128, offset: 2240)
!3785 = !DIDerivedType(tag: DW_TAG_member, scope: !658, file: !250, line: 709, baseType: !3786, size: 128, offset: 2368)
!3786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !250, line: 709, size: 128, elements: !3787)
!3787 = !{!3788, !3789}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3786, file: !250, line: 710, baseType: !330, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3786, file: !250, line: 711, baseType: !262, size: 128, align: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !658, file: !250, line: 713, baseType: !196, size: 64, offset: 2496)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !658, file: !250, line: 714, baseType: !196, size: 64, offset: 2560)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !658, file: !250, line: 715, baseType: !218, size: 32, offset: 2624)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !658, file: !250, line: 716, baseType: !218, size: 32, offset: 2656)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !658, file: !250, line: 717, baseType: !218, size: 32, offset: 2688)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !658, file: !250, line: 719, baseType: !218, size: 32, offset: 2720)
!3796 = !DIDerivedType(tag: DW_TAG_member, scope: !658, file: !250, line: 721, baseType: !3797, size: 64, offset: 2752)
!3797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !250, line: 721, size: 64, elements: !3798)
!3798 = !{!3799, !3923}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3797, file: !250, line: 722, baseType: !3800, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3802)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !250, line: 1914, size: 2112, elements: !3803)
!3803 = !{!3804, !3805, !3809, !3813, !3817, !3818, !3819, !3825, !3838, !3842, !3846, !3847, !3851, !3852, !3856, !3861, !3862, !3866, !3870, !3876, !3877, !3881, !3882, !3886, !3890, !3891, !3896, !3900, !3904, !3908, !3912, !3913, !3919}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3802, file: !250, line: 1915, baseType: !904, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3802, file: !250, line: 1916, baseType: !3806, size: 64, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!285, !248, !285, !17}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3802, file: !250, line: 1917, baseType: !3810, size: 64, offset: 128)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!811, !248, !506, !814, !1658}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3802, file: !250, line: 1918, baseType: !3814, size: 64, offset: 192)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!811, !248, !30, !814, !1658}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3802, file: !250, line: 1919, baseType: !1230, size: 64, offset: 256)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3802, file: !250, line: 1920, baseType: !1230, size: 64, offset: 320)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3802, file: !250, line: 1921, baseType: !3820, size: 64, offset: 384)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!17, !1233, !3823, !66}
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !250, line: 53, flags: DIFlagFwdDecl)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3802, file: !250, line: 1923, baseType: !3826, size: 64, offset: 448)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!17, !248, !3829}
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !250, line: 1858, size: 128, elements: !3831)
!3831 = !{!3832, !3837}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3830, file: !250, line: 1859, baseType: !3833, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !250, line: 1855, baseType: !3834)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!495, !3829, !30, !17, !285, !404, !66}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3830, file: !250, line: 1860, baseType: !285, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3802, file: !250, line: 1924, baseType: !3839, size: 64, offset: 512)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!1678, !248, !1680}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3802, file: !250, line: 1925, baseType: !3843, size: 64, offset: 576)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!772, !248, !66, !47}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3802, file: !250, line: 1926, baseType: !3843, size: 64, offset: 640)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3802, file: !250, line: 1927, baseType: !3848, size: 64, offset: 704)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!17, !248, !1317}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3802, file: !250, line: 1928, baseType: !47, size: 64, offset: 768)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3802, file: !250, line: 1929, baseType: !3853, size: 64, offset: 832)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!17, !657, !248}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3802, file: !250, line: 1930, baseType: !3857, size: 64, offset: 896)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!17, !248, !3860}
!3860 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !250, line: 1061, baseType: !23)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3802, file: !250, line: 1931, baseType: !3853, size: 64, offset: 960)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3802, file: !250, line: 1932, baseType: !3863, size: 64, offset: 1024)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!17, !248, !285, !285, !17}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3802, file: !250, line: 1933, baseType: !3867, size: 64, offset: 1088)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!17, !17, !248, !17}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3802, file: !250, line: 1934, baseType: !3871, size: 64, offset: 1152)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!17, !248, !17, !3874}
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !250, line: 1063, flags: DIFlagFwdDecl)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3802, file: !250, line: 1935, baseType: !1355, size: 64, offset: 1216)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3802, file: !250, line: 1936, baseType: !3878, size: 64, offset: 1280)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!17, !17}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3802, file: !250, line: 1937, baseType: !3871, size: 64, offset: 1344)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3802, file: !250, line: 1938, baseType: !3883, size: 64, offset: 1408)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!811, !3288, !248, !1658, !814, !66}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3802, file: !250, line: 1939, baseType: !3887, size: 64, offset: 1472)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!811, !248, !1658, !3288, !814, !66}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3802, file: !250, line: 1940, baseType: !1293, size: 64, offset: 1536)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3802, file: !250, line: 1941, baseType: !3892, size: 64, offset: 1600)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!17, !248, !17, !3895, !1207}
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3802, file: !250, line: 1942, baseType: !3897, size: 64, offset: 1664)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!772, !248, !17, !285, !285}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3802, file: !250, line: 1944, baseType: !3901, size: 64, offset: 1728)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{null, !1634, !248}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3802, file: !250, line: 1948, baseType: !3905, size: 64, offset: 1792)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!811, !248, !285, !248, !285, !814, !66}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3802, file: !250, line: 1950, baseType: !3909, size: 64, offset: 1856)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!285, !248, !285, !248, !285, !285, !66}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3802, file: !250, line: 1953, baseType: !3863, size: 64, offset: 1920)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3802, file: !250, line: 1954, baseType: !3914, size: 64, offset: 1984)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!17, !3917, !66}
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !250, line: 1911, flags: DIFlagFwdDecl)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3802, file: !250, line: 1955, baseType: !3920, size: 64, offset: 2048)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!17, !3917, !3823, !66}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3797, file: !250, line: 723, baseType: !2089, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !658, file: !250, line: 725, baseType: !3925, size: 64, offset: 2816)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !250, line: 725, flags: DIFlagFwdDecl)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !658, file: !250, line: 726, baseType: !1029, size: 1536, align: 64, offset: 2880)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !658, file: !250, line: 727, baseType: !239, size: 128, offset: 4416)
!3929 = !DIDerivedType(tag: DW_TAG_member, scope: !658, file: !250, line: 728, baseType: !3930, size: 64, offset: 4544)
!3930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !250, line: 728, size: 64, elements: !3931)
!3931 = !{!3932, !3933, !3936, !3937}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3930, file: !250, line: 729, baseType: !3288, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3930, file: !250, line: 730, baseType: !3934, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !250, line: 730, flags: DIFlagFwdDecl)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3930, file: !250, line: 731, baseType: !506, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3930, file: !250, line: 732, baseType: !66, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !658, file: !250, line: 735, baseType: !84, size: 32, offset: 4608)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !658, file: !250, line: 738, baseType: !84, size: 32, offset: 4640)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !658, file: !250, line: 739, baseType: !3639, size: 64, offset: 4672)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !658, file: !250, line: 750, baseType: !23, size: 64, offset: 4736)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !618, file: !619, line: 91, baseType: !3943, size: 256, offset: 448)
!3943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 256, elements: !87)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !618, file: !619, line: 94, baseType: !3945, size: 64, offset: 704)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3946, line: 25, size: 64, elements: !3947)
!3946 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3947 = !{!3948}
!3948 = !DIDerivedType(tag: DW_TAG_member, scope: !3945, file: !3946, line: 26, baseType: !3949, size: 64)
!3949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3945, file: !3946, line: 26, size: 64, elements: !3950)
!3950 = !{!3951, !3952}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3949, file: !3946, line: 28, baseType: !405, size: 64, align: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, scope: !3949, file: !3946, line: 30, baseType: !3953, size: 64)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3949, file: !3946, line: 30, size: 64, elements: !3954)
!3954 = !{!3955, !3956}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3953, file: !3946, line: 31, baseType: !272, size: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3953, file: !3946, line: 32, baseType: !17, size: 32, offset: 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !618, file: !619, line: 95, baseType: !3654, size: 64, offset: 768)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !618, file: !619, line: 96, baseType: !870, size: 64, offset: 832)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !618, file: !619, line: 97, baseType: !47, size: 64, offset: 896)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !618, file: !619, line: 98, baseType: !23, size: 64, offset: 960)
!3961 = !DIDerivedType(tag: DW_TAG_member, scope: !618, file: !619, line: 100, baseType: !3962, size: 128, offset: 1024)
!3962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !618, file: !619, line: 100, size: 128, elements: !3963)
!3963 = !{!3964, !3965}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3962, file: !619, line: 101, baseType: !239, size: 128)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3962, file: !619, line: 102, baseType: !3966, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !618, file: !619, line: 104, baseType: !239, size: 128, offset: 1152)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !618, file: !619, line: 105, baseType: !239, size: 128, offset: 1280)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !618, file: !619, line: 113, baseType: !3970, size: 128, offset: 1408)
!3970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !618, file: !619, line: 109, size: 128, elements: !3971)
!3971 = !{!3972, !3973, !3974}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3970, file: !619, line: 110, baseType: !334, size: 128)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3970, file: !619, line: 111, baseType: !633, size: 128)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3970, file: !619, line: 112, baseType: !262, size: 128, align: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !613, file: !614, line: 72, baseType: !870, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !613, file: !614, line: 73, baseType: !17, size: 32, offset: 128)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !613, file: !614, line: 74, baseType: !697, size: 64, offset: 192)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !608, file: !609, line: 10, baseType: !617, size: 64, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !249, file: !250, line: 1015, baseType: !657, size: 64, offset: 1344)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !249, file: !250, line: 1016, baseType: !3800, size: 64, offset: 1408)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !249, file: !250, line: 1018, baseType: !404, size: 64, offset: 1472)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !249, file: !250, line: 1020, baseType: !23, size: 64, offset: 1536)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !249, file: !250, line: 1023, baseType: !23, size: 64, offset: 1600)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !249, file: !250, line: 1027, baseType: !3985, size: 64, offset: 1664)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !249, file: !250, line: 1029, baseType: !1028, size: 64, offset: 1728)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !249, file: !250, line: 1030, baseType: !1303, size: 32, offset: 1792)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !249, file: !250, line: 1031, baseType: !1303, size: 32, offset: 1824)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !26, file: !27, line: 169, baseType: !3990, size: 64, offset: 2048)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !27, line: 24, flags: DIFlagFwdDecl)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !26, file: !27, line: 171, baseType: !66, size: 32, offset: 2112)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !26, file: !27, line: 172, baseType: !1959, size: 320, offset: 2176)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !26, file: !27, line: 174, baseType: !3995, size: 64, offset: 2496)
!3995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 64, elements: !62)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !26, file: !27, line: 176, baseType: !3997, size: 64, offset: 2560)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !27, line: 176, flags: DIFlagFwdDecl)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !26, file: !27, line: 178, baseType: !4000, size: 64, offset: 2624)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !36, line: 93, size: 192, elements: !4002)
!4002 = !{!4003, !4004, !4005, !4006, !4007, !4008}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4001, file: !36, line: 94, baseType: !422, size: 32)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4001, file: !36, line: 95, baseType: !422, size: 32, offset: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4001, file: !36, line: 96, baseType: !422, size: 32, offset: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4001, file: !36, line: 97, baseType: !422, size: 32, offset: 96)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4001, file: !36, line: 98, baseType: !422, size: 32, offset: 128)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4001, file: !36, line: 99, baseType: !422, size: 32, offset: 160)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !26, file: !27, line: 180, baseType: !52, size: 768, offset: 2688)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !26, file: !27, line: 181, baseType: !46, size: 64, offset: 3456)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !26, file: !27, line: 182, baseType: !46, size: 64, offset: 3520)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !26, file: !27, line: 183, baseType: !46, size: 64, offset: 3584)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !26, file: !27, line: 185, baseType: !4014, size: 64, offset: 3648)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!17, !25}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !26, file: !27, line: 186, baseType: !4018, size: 64, offset: 3712)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{null, !25}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !26, file: !27, line: 187, baseType: !4022, size: 64, offset: 3776)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!17, !25, !248}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !26, file: !27, line: 188, baseType: !4026, size: 64, offset: 3840)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!17, !25, !66, !66, !17}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !26, file: !27, line: 190, baseType: !4030, size: 64, offset: 3904)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !27, line: 345, size: 576, elements: !4032)
!4032 = !{!4033, !4034, !4035, !4036, !4037, !4105, !4106}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4031, file: !27, line: 347, baseType: !23, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4031, file: !27, line: 349, baseType: !17, size: 32, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4031, file: !27, line: 350, baseType: !30, size: 64, offset: 128)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4031, file: !27, line: 352, baseType: !25, size: 64, offset: 192)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4031, file: !27, line: 353, baseType: !4038, size: 64, offset: 256)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !27, line: 310, size: 960, elements: !4040)
!4040 = !{!4041, !4042, !4046, !4057, !4061, !4065, !4094, !4098, !4099, !4100, !4101, !4102, !4103, !4104}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4039, file: !27, line: 312, baseType: !23, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4039, file: !27, line: 314, baseType: !4043, size: 64, offset: 64)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{null, !4030, !66, !66, !17}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4039, file: !27, line: 315, baseType: !4047, size: 64, offset: 128)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !4030, !4050, !66}
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4052)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !27, line: 32, size: 64, elements: !4053)
!4053 = !{!4054, !4055, !4056}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4052, file: !27, line: 33, baseType: !39, size: 16)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4052, file: !27, line: 34, baseType: !39, size: 16, offset: 16)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4052, file: !27, line: 35, baseType: !422, size: 32, offset: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4039, file: !27, line: 317, baseType: !4058, size: 64, offset: 192)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!495, !4030, !66, !66, !17}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4039, file: !27, line: 318, baseType: !4062, size: 64, offset: 256)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!495, !4038, !25}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4039, file: !27, line: 319, baseType: !4066, size: 64, offset: 320)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!17, !4038, !25, !4069}
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4071)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !4072, line: 362, size: 1600, elements: !4073)
!4072 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4073 = !{!4074, !4076, !4077, !4078, !4079, !4080, !4082, !4084, !4085, !4086, !4087, !4088, !4089, !4091, !4092, !4093}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4071, file: !4072, line: 364, baseType: !4075, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4072, line: 15, baseType: !47)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4071, file: !4072, line: 366, baseType: !39, size: 16, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4071, file: !4072, line: 367, baseType: !39, size: 16, offset: 80)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4071, file: !4072, line: 368, baseType: !39, size: 16, offset: 96)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4071, file: !4072, line: 369, baseType: !39, size: 16, offset: 112)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4071, file: !4072, line: 371, baseType: !4081, size: 64, offset: 128)
!4081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4075, size: 64, elements: !48)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4071, file: !4072, line: 372, baseType: !4083, size: 768, offset: 192)
!4083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4075, size: 768, elements: !53)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4071, file: !4072, line: 373, baseType: !4081, size: 64, offset: 960)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4071, file: !4072, line: 374, baseType: !4081, size: 64, offset: 1024)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4071, file: !4072, line: 375, baseType: !4081, size: 64, offset: 1088)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4071, file: !4072, line: 376, baseType: !4081, size: 64, offset: 1152)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4071, file: !4072, line: 377, baseType: !4081, size: 64, offset: 1216)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4071, file: !4072, line: 378, baseType: !4090, size: 128, offset: 1280)
!4090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4075, size: 128, elements: !62)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4071, file: !4072, line: 379, baseType: !4081, size: 64, offset: 1408)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4071, file: !4072, line: 380, baseType: !4081, size: 64, offset: 1472)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4071, file: !4072, line: 382, baseType: !4075, size: 64, offset: 1536)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4039, file: !27, line: 320, baseType: !4095, size: 64, offset: 384)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{null, !4030}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4039, file: !27, line: 321, baseType: !4095, size: 64, offset: 448)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4039, file: !27, line: 323, baseType: !495, size: 8, offset: 512)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4039, file: !27, line: 324, baseType: !17, size: 32, offset: 544)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4039, file: !27, line: 325, baseType: !30, size: 64, offset: 576)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4039, file: !27, line: 327, baseType: !4069, size: 64, offset: 640)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4039, file: !27, line: 329, baseType: !239, size: 128, offset: 704)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4039, file: !27, line: 330, baseType: !239, size: 128, offset: 832)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4031, file: !27, line: 355, baseType: !239, size: 128, offset: 320)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4031, file: !27, line: 356, baseType: !239, size: 128, offset: 448)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !26, file: !27, line: 192, baseType: !272, size: 32, offset: 3968)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !26, file: !27, line: 193, baseType: !190, size: 256, offset: 4032)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !26, file: !27, line: 195, baseType: !66, size: 32, offset: 4288)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !26, file: !27, line: 196, baseType: !495, size: 8, offset: 4320)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !26, file: !27, line: 198, baseType: !4112, size: 5824, offset: 4352)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !4113, line: 705, size: 5824, elements: !4114)
!4113 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!4114 = !{!4115, !4116, !4118, !4121, !4122, !4176, !4265, !4266, !4267, !4268, !4269, !4282, !4388, !4401, !4411, !4415, !4417, !4418, !4419, !4423, !4430, !4431, !4434, !4437, !4441, !4444, !4445, !4446, !4447, !4448, !4449, !4479, !4480, !4481, !4484, !4487, !4515, !4522, !4523, !4524, !4525, !4526}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4112, file: !4113, line: 706, baseType: !924, size: 512)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4112, file: !4113, line: 707, baseType: !4117, size: 64, offset: 512)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4112, file: !4113, line: 709, baseType: !4119, size: 64, offset: 576)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !4113, line: 37, flags: DIFlagFwdDecl)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4112, file: !4113, line: 711, baseType: !30, size: 64, offset: 640)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4112, file: !4113, line: 712, baseType: !4123, size: 64, offset: 704)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4125)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !4113, line: 89, size: 384, elements: !4126)
!4126 = !{!4127, !4128, !4129, !4135, !4140, !4144}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4125, file: !4113, line: 90, baseType: !30, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4125, file: !4113, line: 91, baseType: !1004, size: 64, offset: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4125, file: !4113, line: 92, baseType: !4130, size: 64, offset: 128)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!17, !4133, !960}
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4112)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4125, file: !4113, line: 93, baseType: !4136, size: 64, offset: 192)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!506, !4133, !4139, !1587, !1588}
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4125, file: !4113, line: 95, baseType: !4141, size: 64, offset: 256)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{null, !4117}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4125, file: !4113, line: 97, baseType: !4145, size: 64, offset: 320)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4147)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !4148, line: 286, size: 1472, elements: !4149)
!4148 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!4149 = !{!4150, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4147, file: !4148, line: 287, baseType: !4151, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!17, !4117}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4147, file: !4148, line: 288, baseType: !4141, size: 64, offset: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4147, file: !4148, line: 289, baseType: !4151, size: 64, offset: 128)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4147, file: !4148, line: 290, baseType: !4151, size: 64, offset: 192)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4147, file: !4148, line: 291, baseType: !4151, size: 64, offset: 256)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4147, file: !4148, line: 292, baseType: !4151, size: 64, offset: 320)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4147, file: !4148, line: 293, baseType: !4151, size: 64, offset: 384)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4147, file: !4148, line: 294, baseType: !4151, size: 64, offset: 448)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4147, file: !4148, line: 295, baseType: !4151, size: 64, offset: 512)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4147, file: !4148, line: 296, baseType: !4151, size: 64, offset: 576)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4147, file: !4148, line: 297, baseType: !4151, size: 64, offset: 640)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4147, file: !4148, line: 298, baseType: !4151, size: 64, offset: 704)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4147, file: !4148, line: 299, baseType: !4151, size: 64, offset: 768)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4147, file: !4148, line: 300, baseType: !4151, size: 64, offset: 832)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4147, file: !4148, line: 301, baseType: !4151, size: 64, offset: 896)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4147, file: !4148, line: 302, baseType: !4151, size: 64, offset: 960)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4147, file: !4148, line: 303, baseType: !4151, size: 64, offset: 1024)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4147, file: !4148, line: 304, baseType: !4151, size: 64, offset: 1088)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4147, file: !4148, line: 305, baseType: !4151, size: 64, offset: 1152)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4147, file: !4148, line: 306, baseType: !4151, size: 64, offset: 1216)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4147, file: !4148, line: 307, baseType: !4151, size: 64, offset: 1280)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4147, file: !4148, line: 308, baseType: !4151, size: 64, offset: 1344)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4147, file: !4148, line: 309, baseType: !4151, size: 64, offset: 1408)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4112, file: !4113, line: 714, baseType: !4177, size: 64, offset: 768)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4179)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4180, line: 80, size: 1344, elements: !4181)
!4180 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4181 = !{!4182, !4183, !4184, !4185, !4186, !4187, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4264}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4179, file: !4180, line: 81, baseType: !30, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4179, file: !4180, line: 82, baseType: !30, size: 64, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4179, file: !4180, line: 83, baseType: !1004, size: 64, offset: 128)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4179, file: !4180, line: 84, baseType: !1004, size: 64, offset: 192)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4179, file: !4180, line: 85, baseType: !1004, size: 64, offset: 256)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4179, file: !4180, line: 87, baseType: !4188, size: 64, offset: 320)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!17, !4117, !4191}
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !4193, line: 96, size: 1152, elements: !4194)
!4193 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!4194 = !{!4195, !4196, !4197, !4198, !4199, !4200, !4206, !4218, !4227, !4228, !4229, !4230, !4231, !4239, !4240, !4241, !4242, !4243, !4244}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4192, file: !4193, line: 97, baseType: !30, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4192, file: !4193, line: 98, baseType: !4177, size: 64, offset: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4192, file: !4193, line: 100, baseType: !904, size: 64, offset: 128)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4192, file: !4193, line: 101, baseType: !30, size: 64, offset: 192)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4192, file: !4193, line: 103, baseType: !495, size: 8, offset: 256)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4192, file: !4193, line: 104, baseType: !4201, size: 32, offset: 288)
!4201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !4193, line: 45, baseType: !66, size: 32, elements: !4202)
!4202 = !{!4203, !4204, !4205}
!4203 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!4204 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!4205 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4192, file: !4193, line: 106, baseType: !4207, size: 64, offset: 320)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4209)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4072, line: 282, size: 1600, elements: !4210)
!4210 = !{!4211, !4212, !4213, !4217}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4209, file: !4072, line: 283, baseType: !3642, size: 256)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4209, file: !4072, line: 284, baseType: !3642, size: 256, offset: 256)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4209, file: !4072, line: 285, baseType: !4214, size: 1024, offset: 512)
!4214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !4215)
!4215 = !{!4216}
!4216 = !DISubrange(count: 128)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4209, file: !4072, line: 286, baseType: !1446, size: 64, offset: 1536)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4192, file: !4193, line: 107, baseType: !4219, size: 64, offset: 384)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4221)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4072, line: 217, size: 256, elements: !4222)
!4222 = !{!4223, !4224, !4225, !4226}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4221, file: !4072, line: 218, baseType: !3649, size: 128)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4221, file: !4072, line: 219, baseType: !4075, size: 64, offset: 128)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4221, file: !4072, line: 220, baseType: !84, size: 32, offset: 192)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4221, file: !4072, line: 221, baseType: !84, size: 32, offset: 224)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4192, file: !4193, line: 109, baseType: !4151, size: 64, offset: 448)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4192, file: !4193, line: 110, baseType: !4141, size: 64, offset: 512)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4192, file: !4193, line: 111, baseType: !4151, size: 64, offset: 576)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4192, file: !4193, line: 112, baseType: !4141, size: 64, offset: 640)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4192, file: !4193, line: 113, baseType: !4232, size: 64, offset: 704)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!17, !4117, !4235}
!4235 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !4148, line: 60, baseType: !4236)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !4148, line: 58, size: 32, elements: !4237)
!4237 = !{!4238}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4236, file: !4148, line: 59, baseType: !17, size: 32)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4192, file: !4193, line: 114, baseType: !4151, size: 64, offset: 768)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4192, file: !4193, line: 115, baseType: !1004, size: 64, offset: 832)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4192, file: !4193, line: 116, baseType: !1004, size: 64, offset: 896)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4192, file: !4193, line: 118, baseType: !4145, size: 64, offset: 960)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4192, file: !4193, line: 119, baseType: !4141, size: 64, offset: 1024)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4192, file: !4193, line: 121, baseType: !4245, size: 64, offset: 1088)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !4193, line: 121, flags: DIFlagFwdDecl)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4179, file: !4180, line: 88, baseType: !4130, size: 64, offset: 384)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4179, file: !4180, line: 89, baseType: !4151, size: 64, offset: 448)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4179, file: !4180, line: 90, baseType: !4141, size: 64, offset: 512)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4179, file: !4180, line: 91, baseType: !4141, size: 64, offset: 576)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4179, file: !4180, line: 92, baseType: !4141, size: 64, offset: 640)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4179, file: !4180, line: 94, baseType: !4151, size: 64, offset: 704)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4179, file: !4180, line: 95, baseType: !4151, size: 64, offset: 768)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4179, file: !4180, line: 97, baseType: !4232, size: 64, offset: 832)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4179, file: !4180, line: 98, baseType: !4151, size: 64, offset: 896)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4179, file: !4180, line: 100, baseType: !4151, size: 64, offset: 960)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4179, file: !4180, line: 102, baseType: !4151, size: 64, offset: 1024)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4179, file: !4180, line: 103, baseType: !4141, size: 64, offset: 1088)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4179, file: !4180, line: 105, baseType: !4145, size: 64, offset: 1152)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4179, file: !4180, line: 107, baseType: !4261, size: 64, offset: 1216)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4263)
!4263 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4180, line: 107, flags: DIFlagFwdDecl)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4179, file: !4180, line: 109, baseType: !495, size: 8, offset: 1280)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4112, file: !4113, line: 715, baseType: !4191, size: 64, offset: 832)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4112, file: !4113, line: 717, baseType: !23, size: 64, offset: 896)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4112, file: !4113, line: 719, baseType: !23, size: 64, offset: 960)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4112, file: !4113, line: 721, baseType: !190, size: 256, offset: 1024)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4112, file: !4113, line: 725, baseType: !4270, size: 448, offset: 1280)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !4113, line: 517, size: 448, elements: !4271)
!4271 = !{!4272, !4273, !4274, !4275}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4270, file: !4113, line: 518, baseType: !239, size: 128)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4270, file: !4113, line: 519, baseType: !239, size: 128, offset: 128)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4270, file: !4113, line: 520, baseType: !239, size: 128, offset: 256)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4270, file: !4113, line: 521, baseType: !4276, size: 32, offset: 384)
!4276 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !4113, line: 487, baseType: !66, size: 32, elements: !4277)
!4277 = !{!4278, !4279, !4280, !4281}
!4278 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!4279 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!4280 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!4281 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4112, file: !4113, line: 726, baseType: !4283, size: 2496, offset: 1728)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !4148, line: 663, size: 2496, elements: !4284)
!4284 = !{!4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4360, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4381, !4385}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4283, file: !4148, line: 664, baseType: !4235, size: 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4283, file: !4148, line: 665, baseType: !66, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4283, file: !4148, line: 666, baseType: !66, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4283, file: !4148, line: 667, baseType: !495, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4283, file: !4148, line: 668, baseType: !495, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4283, file: !4148, line: 669, baseType: !495, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4283, file: !4148, line: 670, baseType: !495, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4283, file: !4148, line: 671, baseType: !495, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4283, file: !4148, line: 672, baseType: !495, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4283, file: !4148, line: 673, baseType: !495, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4283, file: !4148, line: 674, baseType: !495, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4283, file: !4148, line: 675, baseType: !461, size: 32, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4283, file: !4148, line: 676, baseType: !272, size: 32, offset: 96)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4283, file: !4148, line: 678, baseType: !239, size: 128, offset: 128)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4283, file: !4148, line: 679, baseType: !1716, size: 256, offset: 256)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4283, file: !4148, line: 680, baseType: !4301, size: 64, offset: 512)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4303, line: 43, size: 1536, elements: !4304)
!4303 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4304 = !{!4305, !4306, !4307, !4308, !4309, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4302, file: !4303, line: 44, baseType: !30, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4302, file: !4303, line: 45, baseType: !17, size: 32, offset: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4302, file: !4303, line: 46, baseType: !239, size: 128, offset: 128)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4302, file: !4303, line: 47, baseType: !272, size: 32, offset: 256)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4302, file: !4303, line: 48, baseType: !4310, size: 64, offset: 320)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !4148, line: 629, flags: DIFlagFwdDecl)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4302, file: !4303, line: 49, baseType: !1959, size: 320, offset: 384)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4302, file: !4303, line: 50, baseType: !47, size: 64, offset: 704)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4302, file: !4303, line: 51, baseType: !2565, size: 64, offset: 768)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4302, file: !4303, line: 52, baseType: !2565, size: 64, offset: 832)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4302, file: !4303, line: 53, baseType: !2565, size: 64, offset: 896)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4302, file: !4303, line: 54, baseType: !2565, size: 64, offset: 960)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4302, file: !4303, line: 55, baseType: !2565, size: 64, offset: 1024)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4302, file: !4303, line: 56, baseType: !47, size: 64, offset: 1088)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4302, file: !4303, line: 57, baseType: !47, size: 64, offset: 1152)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4302, file: !4303, line: 58, baseType: !47, size: 64, offset: 1216)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4302, file: !4303, line: 59, baseType: !47, size: 64, offset: 1280)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4302, file: !4303, line: 60, baseType: !47, size: 64, offset: 1344)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4302, file: !4303, line: 61, baseType: !4117, size: 64, offset: 1408)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4302, file: !4303, line: 62, baseType: !495, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4302, file: !4303, line: 63, baseType: !495, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4283, file: !4148, line: 681, baseType: !495, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4283, file: !4148, line: 682, baseType: !495, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4283, file: !4148, line: 683, baseType: !495, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4283, file: !4148, line: 684, baseType: !66, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4283, file: !4148, line: 685, baseType: !66, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4283, file: !4148, line: 690, baseType: !2556, size: 512, offset: 640)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4283, file: !4148, line: 691, baseType: !404, size: 64, offset: 1152)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4283, file: !4148, line: 692, baseType: !1485, size: 256, offset: 1216)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4283, file: !4148, line: 693, baseType: !341, size: 192, offset: 1472)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4283, file: !4148, line: 694, baseType: !4310, size: 64, offset: 1664)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4283, file: !4148, line: 695, baseType: !218, size: 32, offset: 1728)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4283, file: !4148, line: 696, baseType: !218, size: 32, offset: 1760)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4283, file: !4148, line: 697, baseType: !66, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4283, file: !4148, line: 698, baseType: !66, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4283, file: !4148, line: 699, baseType: !66, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4283, file: !4148, line: 700, baseType: !66, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4283, file: !4148, line: 701, baseType: !66, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4283, file: !4148, line: 702, baseType: !66, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4283, file: !4148, line: 703, baseType: !495, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4283, file: !4148, line: 704, baseType: !66, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4283, file: !4148, line: 705, baseType: !66, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4283, file: !4148, line: 706, baseType: !66, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4283, file: !4148, line: 707, baseType: !66, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4283, file: !4148, line: 708, baseType: !66, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4283, file: !4148, line: 709, baseType: !66, size: 32, offset: 1824)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4283, file: !4148, line: 710, baseType: !4353, size: 32, offset: 1856)
!4353 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !4148, line: 620, baseType: !66, size: 32, elements: !4354)
!4354 = !{!4355, !4356, !4357, !4358, !4359}
!4355 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!4356 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!4357 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!4358 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!4359 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4283, file: !4148, line: 711, baseType: !4361, size: 32, offset: 1888)
!4361 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !4148, line: 597, baseType: !17, size: 32, elements: !4362)
!4362 = !{!4363, !4364, !4365, !4366, !4367}
!4363 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!4364 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!4365 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!4366 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!4367 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4283, file: !4148, line: 712, baseType: !4361, size: 32, offset: 1920)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4283, file: !4148, line: 713, baseType: !17, size: 32, offset: 1952)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4283, file: !4148, line: 714, baseType: !17, size: 32, offset: 1984)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4283, file: !4148, line: 715, baseType: !404, size: 64, offset: 2048)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4283, file: !4148, line: 716, baseType: !404, size: 64, offset: 2112)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4283, file: !4148, line: 717, baseType: !404, size: 64, offset: 2176)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4283, file: !4148, line: 718, baseType: !404, size: 64, offset: 2240)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4283, file: !4148, line: 720, baseType: !4376, size: 64, offset: 2304)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !4148, line: 632, size: 64, elements: !4378)
!4378 = !{!4379, !4380}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4377, file: !4148, line: 633, baseType: !272, size: 32)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4377, file: !4148, line: 634, baseType: !66, size: 32, offset: 32)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4283, file: !4148, line: 721, baseType: !4382, size: 64, offset: 2368)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{null, !4117, !421}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4283, file: !4148, line: 722, baseType: !4386, size: 64, offset: 2432)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !4148, line: 722, flags: DIFlagFwdDecl)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4112, file: !4113, line: 727, baseType: !4389, size: 64, offset: 4224)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !4148, line: 742, size: 1792, elements: !4391)
!4391 = !{!4392, !4393, !4394, !4398, !4399, !4400}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4390, file: !4148, line: 743, baseType: !4147, size: 1472)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4390, file: !4148, line: 744, baseType: !4151, size: 64, offset: 1472)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4390, file: !4148, line: 745, baseType: !4395, size: 64, offset: 1536)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{null, !4117, !495}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4390, file: !4148, line: 746, baseType: !4151, size: 64, offset: 1600)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4390, file: !4148, line: 747, baseType: !4141, size: 64, offset: 1664)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4390, file: !4148, line: 748, baseType: !4141, size: 64, offset: 1728)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4112, file: !4113, line: 736, baseType: !4402, size: 128, offset: 4288)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !4113, line: 529, size: 128, elements: !4403)
!4403 = !{!4404, !4408}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4402, file: !4113, line: 531, baseType: !4405, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4407, line: 13, flags: DIFlagFwdDecl)
!4407 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4402, file: !4113, line: 532, baseType: !4409, size: 64, offset: 64)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !4113, line: 49, flags: DIFlagFwdDecl)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4112, file: !4113, line: 738, baseType: !4412, size: 64, offset: 4416)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4414)
!4414 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !4113, line: 738, flags: DIFlagFwdDecl)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4112, file: !4113, line: 740, baseType: !4416, size: 64, offset: 4480)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4112, file: !4113, line: 741, baseType: !404, size: 64, offset: 4544)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4112, file: !4113, line: 746, baseType: !404, size: 64, offset: 4608)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4112, file: !4113, line: 747, baseType: !4420, size: 64, offset: 4672)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4422)
!4422 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !4113, line: 747, flags: DIFlagFwdDecl)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4112, file: !4113, line: 749, baseType: !4424, size: 64, offset: 4736)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !4113, line: 428, size: 128, elements: !4426)
!4426 = !{!4427, !4428, !4429}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4425, file: !4113, line: 433, baseType: !66, size: 32)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4425, file: !4113, line: 434, baseType: !66, size: 32, offset: 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4425, file: !4113, line: 435, baseType: !47, size: 64, offset: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4112, file: !4113, line: 751, baseType: !239, size: 128, offset: 4800)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4112, file: !4113, line: 762, baseType: !4432, size: 64, offset: 4928)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !4113, line: 762, flags: DIFlagFwdDecl)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4112, file: !4113, line: 770, baseType: !4435, offset: 4992)
!4435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4436, line: 5, elements: !1351)
!4436 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4112, file: !4113, line: 772, baseType: !4438, size: 64, offset: 4992)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4440, line: 18, flags: DIFlagFwdDecl)
!4440 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4112, file: !4113, line: 773, baseType: !4442, size: 64, offset: 5056)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4180, line: 22, flags: DIFlagFwdDecl)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4112, file: !4113, line: 776, baseType: !17, size: 32, offset: 5120)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4112, file: !4113, line: 778, baseType: !732, size: 32, offset: 5152)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4112, file: !4113, line: 779, baseType: !461, size: 32, offset: 5184)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4112, file: !4113, line: 781, baseType: !272, size: 32, offset: 5216)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4112, file: !4113, line: 782, baseType: !239, size: 128, offset: 5248)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4112, file: !4113, line: 784, baseType: !4450, size: 64, offset: 5376)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4452)
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4453, line: 52, size: 768, elements: !4454)
!4453 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4454 = !{!4455, !4456, !4457, !4458, !4459, !4463, !4467, !4468, !4469, !4470, !4474, !4478}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4452, file: !4453, line: 53, baseType: !30, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4452, file: !4453, line: 55, baseType: !1004, size: 64, offset: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4452, file: !4453, line: 56, baseType: !1004, size: 64, offset: 128)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4452, file: !4453, line: 58, baseType: !4130, size: 64, offset: 192)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4452, file: !4453, line: 59, baseType: !4460, size: 64, offset: 256)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!506, !4133, !4139}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4452, file: !4453, line: 61, baseType: !4464, size: 64, offset: 320)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{null, !4450}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4452, file: !4453, line: 62, baseType: !4141, size: 64, offset: 384)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4452, file: !4453, line: 64, baseType: !4151, size: 64, offset: 448)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4452, file: !4453, line: 66, baseType: !1549, size: 64, offset: 512)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4452, file: !4453, line: 67, baseType: !4471, size: 64, offset: 576)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!1446, !4133}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4452, file: !4453, line: 69, baseType: !4475, size: 64, offset: 640)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{null, !4133, !1587, !1588}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4452, file: !4453, line: 71, baseType: !4145, size: 64, offset: 704)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4112, file: !4113, line: 785, baseType: !1004, size: 64, offset: 5440)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4112, file: !4113, line: 787, baseType: !4141, size: 64, offset: 5504)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4112, file: !4113, line: 788, baseType: !4482, size: 64, offset: 5568)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !4113, line: 46, flags: DIFlagFwdDecl)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4112, file: !4113, line: 789, baseType: !4485, size: 64, offset: 5632)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !4113, line: 48, flags: DIFlagFwdDecl)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4112, file: !4113, line: 791, baseType: !4488, size: 64, offset: 5696)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !4113, line: 597, size: 128, elements: !4490)
!4490 = !{!4491, !4501, !4507, !4513, !4514}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4489, file: !4113, line: 598, baseType: !4492, size: 32)
!4492 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !4113, line: 547, baseType: !66, size: 32, elements: !4493)
!4493 = !{!4494, !4495, !4496, !4497, !4498, !4499, !4500}
!4494 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!4495 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!4496 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!4497 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!4498 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!4499 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!4500 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4489, file: !4113, line: 599, baseType: !4502, size: 32, offset: 32)
!4502 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !4113, line: 564, baseType: !66, size: 32, elements: !4503)
!4503 = !{!4504, !4505, !4506}
!4504 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!4505 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!4506 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4489, file: !4113, line: 600, baseType: !4508, size: 32, offset: 64)
!4508 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !4113, line: 577, baseType: !66, size: 32, elements: !4509)
!4509 = !{!4510, !4511, !4512}
!4510 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!4511 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!4512 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4489, file: !4113, line: 601, baseType: !495, size: 8, offset: 96)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4489, file: !4113, line: 602, baseType: !495, size: 8, offset: 104)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4112, file: !4113, line: 793, baseType: !4516, size: 32, offset: 5760)
!4516 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !4113, line: 503, baseType: !66, size: 32, elements: !4517)
!4517 = !{!4518, !4519, !4520, !4521}
!4518 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!4519 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!4520 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!4521 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4112, file: !4113, line: 795, baseType: !495, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4112, file: !4113, line: 796, baseType: !495, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4112, file: !4113, line: 797, baseType: !495, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4112, file: !4113, line: 798, baseType: !495, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4112, file: !4113, line: 799, baseType: !495, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !26, file: !27, line: 200, baseType: !239, size: 128, offset: 10176)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !26, file: !27, line: 201, baseType: !239, size: 128, offset: 10304)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !26, file: !27, line: 203, baseType: !66, size: 32, offset: 10432)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !26, file: !27, line: 204, baseType: !66, size: 32, offset: 10464)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !26, file: !27, line: 205, baseType: !4532, size: 64, offset: 10496)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !26, file: !27, line: 207, baseType: !495, size: 8, offset: 10560)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !26, file: !27, line: 209, baseType: !4535, size: 192, offset: 10624)
!4535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2565, size: 192, elements: !312)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "inhibited", scope: !26, file: !27, line: 211, baseType: !495, size: 8, offset: 10816)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "ps2dev", scope: !19, file: !20, line: 92, baseType: !4538, size: 832, offset: 128)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ps2dev", file: !4539, line: 48, size: 832, elements: !4540)
!4539 = !DIFile(filename: "./include/linux/libps2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "81c7f532c535ab7e59f124f9e08a3713")
!4540 = !{!4541, !4612, !4613, !4614, !4615, !4617, !4618, !4619, !4630}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "serio", scope: !4538, file: !4539, line: 49, baseType: !4542, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio", file: !4544, line: 21, size: 8768, elements: !4545)
!4544 = !DIFile(filename: "./include/linux/serio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a9b334022147244b132d6aa1a8399b7")
!4545 = !{!4546, !4547, !4548, !4549, !4550, !4551, !4558, !4559, !4563, !4567, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4607, !4608, !4609, !4610}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "port_data", scope: !4543, file: !4544, line: 22, baseType: !23, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4543, file: !4544, line: 24, baseType: !3642, size: 256, offset: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4543, file: !4544, line: 25, baseType: !3642, size: 256, offset: 320)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !4543, file: !4544, line: 26, baseType: !4214, size: 1024, offset: 576)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !4543, file: !4544, line: 28, baseType: !495, size: 8, offset: 1600)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4543, file: !4544, line: 30, baseType: !4552, size: 32, offset: 1608)
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_device_id", file: !4072, line: 256, size: 32, elements: !4553)
!4553 = !{!4554, !4555, !4556, !4557}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4552, file: !4072, line: 257, baseType: !79, size: 8)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4552, file: !4072, line: 258, baseType: !79, size: 8, offset: 8)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4552, file: !4072, line: 259, baseType: !79, size: 8, offset: 16)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !4552, file: !4072, line: 260, baseType: !79, size: 8, offset: 24)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4543, file: !4544, line: 33, baseType: !272, size: 32, offset: 1664)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4543, file: !4544, line: 35, baseType: !4560, size: 64, offset: 1728)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!17, !4542, !80}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4543, file: !4544, line: 36, baseType: !4564, size: 64, offset: 1792)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!17, !4542}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4543, file: !4544, line: 37, baseType: !4568, size: 64, offset: 1856)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{null, !4542}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4543, file: !4544, line: 38, baseType: !4564, size: 64, offset: 1920)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4543, file: !4544, line: 39, baseType: !4568, size: 64, offset: 1984)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4543, file: !4544, line: 41, baseType: !4542, size: 64, offset: 2048)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !4543, file: !4544, line: 43, baseType: !239, size: 128, offset: 2112)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4543, file: !4544, line: 44, baseType: !239, size: 128, offset: 2240)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4543, file: !4544, line: 46, baseType: !66, size: 32, offset: 2368)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !4543, file: !4544, line: 52, baseType: !4578, size: 64, offset: 2432)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_driver", file: !4544, line: 68, size: 1792, elements: !4580)
!4580 = !{!4581, !4582, !4585, !4586, !4587, !4598, !4602, !4603, !4604, !4605, !4606}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4579, file: !4544, line: 69, baseType: !30, size: 64)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4579, file: !4544, line: 71, baseType: !4583, size: 64, offset: 64)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4552)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !4579, file: !4544, line: 72, baseType: !495, size: 8, offset: 128)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4579, file: !4544, line: 74, baseType: !4568, size: 64, offset: 192)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !4579, file: !4544, line: 75, baseType: !4588, size: 64, offset: 256)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!4591, !4542, !80, !66}
!4591 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !4592, line: 17, baseType: !4593)
!4592 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!4593 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !4592, line: 11, baseType: !66, size: 32, elements: !4594)
!4594 = !{!4595, !4596, !4597}
!4595 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!4596 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!4597 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4579, file: !4544, line: 76, baseType: !4599, size: 64, offset: 320)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!17, !4542, !4578}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !4579, file: !4544, line: 77, baseType: !4564, size: 64, offset: 384)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !4579, file: !4544, line: 78, baseType: !4564, size: 64, offset: 448)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4579, file: !4544, line: 79, baseType: !4568, size: 64, offset: 512)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4579, file: !4544, line: 80, baseType: !4568, size: 64, offset: 576)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4579, file: !4544, line: 82, baseType: !4192, size: 1152, offset: 640)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "drv_mutex", scope: !4543, file: !4544, line: 54, baseType: !190, size: 256, offset: 2496)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4543, file: !4544, line: 56, baseType: !4112, size: 5824, offset: 2752)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4543, file: !4544, line: 58, baseType: !239, size: 128, offset: 8576)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "ps2_cmd_mutex", scope: !4543, file: !4544, line: 64, baseType: !4611, size: 64, offset: 8704)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !4538, file: !4539, line: 50, baseType: !190, size: 256, offset: 64)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4538, file: !4539, line: 51, baseType: !341, size: 192, offset: 320)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4538, file: !4539, line: 52, baseType: !47, size: 64, offset: 512)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "cmdbuf", scope: !4538, file: !4539, line: 53, baseType: !4616, size: 64, offset: 576)
!4616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 64, elements: !2604)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcnt", scope: !4538, file: !4539, line: 54, baseType: !226, size: 8, offset: 640)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "nak", scope: !4538, file: !4539, line: 55, baseType: !226, size: 8, offset: 648)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "pre_receive_handler", scope: !4538, file: !4539, line: 57, baseType: !4620, size: 64, offset: 704)
!4620 = !DIDerivedType(tag: DW_TAG_typedef, name: "ps2_pre_receive_handler_t", file: !4539, line: 30, baseType: !4621)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!4624, !4629, !226, !66}
!4624 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ps2_disposition", file: !4539, line: 24, baseType: !66, size: 32, elements: !4625)
!4625 = !{!4626, !4627, !4628}
!4626 = !DIEnumerator(name: "PS2_PROCESS", value: 0)
!4627 = !DIEnumerator(name: "PS2_IGNORE", value: 1)
!4628 = !DIEnumerator(name: "PS2_ERROR", value: 2)
!4629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "receive_handler", scope: !4538, file: !4539, line: 58, baseType: !4631, size: 64, offset: 768)
!4631 = !DIDerivedType(tag: DW_TAG_typedef, name: "ps2_receive_handler_t", file: !4539, line: 32, baseType: !4632)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{null, !4629, !226}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "resync_work", scope: !19, file: !20, line: 93, baseType: !2016, size: 704, offset: 960)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !19, file: !20, line: 94, baseType: !30, size: 64, offset: 1664)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !19, file: !20, line: 95, baseType: !30, size: 64, offset: 1728)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !19, file: !20, line: 96, baseType: !4639, size: 64, offset: 1792)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4641)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse_protocol", file: !20, line: 77, size: 320, elements: !4642)
!4642 = !{!4643, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4680}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4641, file: !20, line: 78, baseType: !4644, size: 32)
!4644 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_type", file: !20, line: 48, baseType: !66, size: 32, elements: !4645)
!4645 = !{!4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669}
!4646 = !DIEnumerator(name: "PSMOUSE_NONE", value: 0)
!4647 = !DIEnumerator(name: "PSMOUSE_PS2", value: 1)
!4648 = !DIEnumerator(name: "PSMOUSE_PS2PP", value: 2)
!4649 = !DIEnumerator(name: "PSMOUSE_THINKPS", value: 3)
!4650 = !DIEnumerator(name: "PSMOUSE_GENPS", value: 4)
!4651 = !DIEnumerator(name: "PSMOUSE_IMPS", value: 5)
!4652 = !DIEnumerator(name: "PSMOUSE_IMEX", value: 6)
!4653 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS", value: 7)
!4654 = !DIEnumerator(name: "PSMOUSE_ALPS", value: 8)
!4655 = !DIEnumerator(name: "PSMOUSE_LIFEBOOK", value: 9)
!4656 = !DIEnumerator(name: "PSMOUSE_TRACKPOINT", value: 10)
!4657 = !DIEnumerator(name: "PSMOUSE_TOUCHKIT_PS2", value: 11)
!4658 = !DIEnumerator(name: "PSMOUSE_CORTRON", value: 12)
!4659 = !DIEnumerator(name: "PSMOUSE_HGPK", value: 13)
!4660 = !DIEnumerator(name: "PSMOUSE_ELANTECH", value: 14)
!4661 = !DIEnumerator(name: "PSMOUSE_FSP", value: 15)
!4662 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS_RELATIVE", value: 16)
!4663 = !DIEnumerator(name: "PSMOUSE_CYPRESS", value: 17)
!4664 = !DIEnumerator(name: "PSMOUSE_FOCALTECH", value: 18)
!4665 = !DIEnumerator(name: "PSMOUSE_VMMOUSE", value: 19)
!4666 = !DIEnumerator(name: "PSMOUSE_BYD", value: 20)
!4667 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS_SMBUS", value: 21)
!4668 = !DIEnumerator(name: "PSMOUSE_ELANTECH_SMBUS", value: 22)
!4669 = !DIEnumerator(name: "PSMOUSE_AUTO", value: 23)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "maxproto", scope: !4641, file: !20, line: 79, baseType: !495, size: 8, offset: 32)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parity", scope: !4641, file: !20, line: 80, baseType: !495, size: 8, offset: 40)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "try_passthru", scope: !4641, file: !20, line: 81, baseType: !495, size: 8, offset: 48)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_companion", scope: !4641, file: !20, line: 82, baseType: !495, size: 8, offset: 56)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4641, file: !20, line: 83, baseType: !30, size: 64, offset: 64)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !4641, file: !20, line: 84, baseType: !30, size: 64, offset: 128)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !4641, file: !20, line: 85, baseType: !4677, size: 64, offset: 192)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!17, !18, !495}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4641, file: !20, line: 86, baseType: !4681, size: 64, offset: 256)
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !19, file: !20, line: 97, baseType: !4683, size: 64, offset: 1856)
!4683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 64, elements: !2604)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "badbyte", scope: !19, file: !20, line: 98, baseType: !80, size: 8, offset: 1920)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "pktcnt", scope: !19, file: !20, line: 99, baseType: !80, size: 8, offset: 1928)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "pktsize", scope: !19, file: !20, line: 100, baseType: !80, size: 8, offset: 1936)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "oob_data_type", scope: !19, file: !20, line: 101, baseType: !80, size: 8, offset: 1944)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "extra_buttons", scope: !19, file: !20, line: 102, baseType: !80, size: 8, offset: 1952)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "acks_disable_command", scope: !19, file: !20, line: 103, baseType: !495, size: 8, offset: 1960)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !19, file: !20, line: 104, baseType: !66, size: 32, offset: 1984)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !19, file: !20, line: 105, baseType: !47, size: 64, offset: 2048)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_sync_cnt", scope: !19, file: !20, line: 106, baseType: !47, size: 64, offset: 2112)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "num_resyncs", scope: !19, file: !20, line: 107, baseType: !47, size: 64, offset: 2176)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !19, file: !20, line: 108, baseType: !4695, size: 32, offset: 2240)
!4695 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_state", file: !20, line: 28, baseType: !66, size: 32, elements: !4696)
!4696 = !{!4697, !4698, !4699, !4700, !4701}
!4697 = !DIEnumerator(name: "PSMOUSE_IGNORE", value: 0)
!4698 = !DIEnumerator(name: "PSMOUSE_INITIALIZING", value: 1)
!4699 = !DIEnumerator(name: "PSMOUSE_RESYNCING", value: 2)
!4700 = !DIEnumerator(name: "PSMOUSE_CMD_MODE", value: 3)
!4701 = !DIEnumerator(name: "PSMOUSE_ACTIVATED", value: 4)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "devname", scope: !19, file: !20, line: 109, baseType: !4703, size: 512, offset: 2272)
!4703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !967)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !19, file: !20, line: 110, baseType: !3642, size: 256, offset: 2784)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !19, file: !20, line: 112, baseType: !66, size: 32, offset: 3040)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !19, file: !20, line: 113, baseType: !66, size: 32, offset: 3072)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "resetafter", scope: !19, file: !20, line: 114, baseType: !66, size: 32, offset: 3104)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "resync_time", scope: !19, file: !20, line: 115, baseType: !66, size: 32, offset: 3136)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "smartscroll", scope: !19, file: !20, line: 116, baseType: !495, size: 8, offset: 3168)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_handler", scope: !19, file: !20, line: 118, baseType: !4711, size: 64, offset: 3200)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{!4714, !18}
!4714 = !DIDerivedType(tag: DW_TAG_typedef, name: "psmouse_ret_t", file: !20, line: 41, baseType: !4715)
!4715 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 37, baseType: !66, size: 32, elements: !4716)
!4716 = !{!4717, !4718, !4719}
!4717 = !DIEnumerator(name: "PSMOUSE_BAD_DATA", value: 0)
!4718 = !DIEnumerator(name: "PSMOUSE_GOOD_DATA", value: 1)
!4719 = !DIEnumerator(name: "PSMOUSE_FULL_PACKET", value: 2)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !19, file: !20, line: 119, baseType: !4721, size: 64, offset: 3264)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{null, !18, !66}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "set_resolution", scope: !19, file: !20, line: 120, baseType: !4721, size: 64, offset: 3328)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "set_scale", scope: !19, file: !20, line: 121, baseType: !4726, size: 64, offset: 3392)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{null, !18, !4729}
!4729 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_scale", file: !20, line: 43, baseType: !66, size: 32, elements: !4730)
!4730 = !{!4731, !4732}
!4731 = !DIEnumerator(name: "PSMOUSE_SCALE11", value: 0)
!4732 = !DIEnumerator(name: "PSMOUSE_SCALE21", value: 1)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !19, file: !20, line: 123, baseType: !4681, size: 64, offset: 3456)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !19, file: !20, line: 124, baseType: !4681, size: 64, offset: 3520)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !19, file: !20, line: 125, baseType: !4736, size: 64, offset: 3584)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{null, !18}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !19, file: !20, line: 126, baseType: !4736, size: 64, offset: 3648)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !19, file: !20, line: 127, baseType: !4681, size: 64, offset: 3712)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "pt_activate", scope: !19, file: !20, line: 129, baseType: !4736, size: 64, offset: 3776)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "pt_deactivate", scope: !19, file: !20, line: 130, baseType: !4736, size: 64, offset: 3840)
!4743 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/input/mouse/.byd.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/input/mouse/psmouse\22 -D KBUILD_BASENAME=\22byd\22 -D KBUILD_MODNAME=\22psmouse\22 -D __KBUILD_MODNAME=kmod_psmouse -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/input/mouse/byd.ll drivers/input/mouse/byd.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4744, retainedTypes: !4760, globals: !4778, splitDebugInlining: false, nameTableKind: None)
!4744 = !{!359, !909, !1261, !1555, !2115, !2184, !2572, !2777, !3313, !4201, !4276, !4353, !4361, !4492, !4502, !4508, !4516, !4593, !4624, !4644, !4695, !4715, !4729, !4745, !4750}
!4745 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4746, line: 10, baseType: !66, size: 32, elements: !4747)
!4746 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!4747 = !{!4748, !4749}
!4748 = !DIEnumerator(name: "false", value: 0)
!4749 = !DIEnumerator(name: "true", value: 1)
!4750 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4751, line: 364, baseType: !66, size: 32, elements: !4752)
!4751 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!4752 = !{!4753, !4754, !4755, !4756, !4757, !4758, !4759}
!4753 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!4754 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!4755 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!4756 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!4757 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!4758 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!4759 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!4760 = !{!866, !4761, !23, !4762, !17, !47, !4764, !772, !2050, !4776}
!4761 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !197, line: 42, baseType: !47)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "byd_data", file: !2, line: 225, size: 576, elements: !4766)
!4766 = !{!4767, !4768, !4769, !4770, !4771, !4773, !4774, !4775}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4765, file: !2, line: 226, baseType: !1959, size: 320)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "psmouse", scope: !4765, file: !2, line: 227, baseType: !18, size: 64, offset: 320)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "abs_x", scope: !4765, file: !2, line: 228, baseType: !421, size: 32, offset: 384)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "abs_y", scope: !4765, file: !2, line: 229, baseType: !421, size: 32, offset: 416)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "last_touch_time", scope: !4765, file: !2, line: 230, baseType: !4772, size: 64, offset: 448)
!4772 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "btn_left", scope: !4765, file: !2, line: 231, baseType: !495, size: 8, offset: 512)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "btn_right", scope: !4765, file: !2, line: 232, baseType: !495, size: 8, offset: 520)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "touch", scope: !4765, file: !2, line: 233, baseType: !495, size: 8, offset: 528)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !772)
!4778 = !{!0, !7, !12, !4779, !4784, !4789, !4794}
!4779 = !DIGlobalVariableExpression(var: !4780, expr: !DIExpression())
!4780 = distinct !DIGlobalVariable(scope: null, file: !4751, line: 480, type: !4781, isLocal: true, isDefinition: true)
!4781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !4782)
!4782 = !{!4783}
!4783 = !DISubrange(count: 21)
!4784 = !DIGlobalVariableExpression(var: !4785, expr: !DIExpression())
!4785 = distinct !DIGlobalVariable(scope: null, file: !2, line: 417, type: !4786, isLocal: true, isDefinition: true)
!4786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !4787)
!4787 = !{!4788}
!4788 = !DISubrange(count: 34)
!4789 = !DIGlobalVariableExpression(var: !4790, expr: !DIExpression())
!4790 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !4791, isLocal: true, isDefinition: true)
!4791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !4792)
!4792 = !{!4793}
!4793 = !DISubrange(count: 40)
!4794 = !DIGlobalVariableExpression(var: !4795, expr: !DIExpression())
!4795 = distinct !DIGlobalVariable(scope: null, file: !2, line: 318, type: !4796, isLocal: true, isDefinition: true)
!4796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !4797)
!4797 = !{!4798}
!4798 = !DISubrange(count: 48)
!4799 = !{!4800, !4801, !4802, !4804}
!4800 = !DILocalVariable(name: "psmouse", arg: 1, scope: !14, file: !2, line: 339, type: !18)
!4801 = !DILocalVariable(name: "ps2dev", scope: !14, file: !2, line: 341, type: !4629)
!4802 = !DILocalVariable(name: "param", scope: !14, file: !2, line: 342, type: !4803)
!4803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 32, elements: !5)
!4804 = !DILocalVariable(name: "i", scope: !14, file: !2, line: 343, type: !814)
!4805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4806, size: 800, elements: !4811)
!4806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4807)
!4807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !14, file: !2, line: 345, size: 32, elements: !4808)
!4808 = !{!4809, !4810}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !4807, file: !2, line: 346, baseType: !180, size: 16)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4807, file: !2, line: 347, baseType: !226, size: 8, offset: 16)
!4811 = !{!4812}
!4812 = !DISubrange(count: 25)
!4813 = !{i32 7, !"Dwarf Version", i32 5}
!4814 = !{i32 2, !"Debug Info Version", i32 3}
!4815 = !{i32 1, !"wchar_size", i32 2}
!4816 = !{i32 8, !"cf-protection-branch", i32 1}
!4817 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4818 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4819 = !{i32 1, !"Code Model", i32 2}
!4820 = !{i32 1, !"override-stack-alignment", i32 8}
!4821 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4822 = distinct !DISubprogram(name: "byd_detect", scope: !2, file: !2, line: 435, type: !4678, scopeLine: 436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !4823)
!4823 = !{!4824, !4825, !4826, !4827}
!4824 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4822, file: !2, line: 435, type: !18)
!4825 = !DILocalVariable(name: "set_properties", arg: 2, scope: !4822, file: !2, line: 435, type: !495)
!4826 = !DILocalVariable(name: "ps2dev", scope: !4822, file: !2, line: 437, type: !4629)
!4827 = !DILocalVariable(name: "param", scope: !4822, file: !2, line: 438, type: !4803)
!4828 = !DILocation(line: 435, column: 32, scope: !4822)
!4829 = !DILocation(line: 435, column: 46, scope: !4822)
!4830 = !DILocation(line: 437, column: 2, scope: !4822)
!4831 = !DILocation(line: 437, column: 17, scope: !4822)
!4832 = !DILocation(line: 437, column: 27, scope: !4822)
!4833 = !DILocation(line: 437, column: 36, scope: !4822)
!4834 = !DILocation(line: 438, column: 2, scope: !4822)
!4835 = !DILocation(line: 438, column: 5, scope: !4822)
!4836 = !DILocation(line: 440, column: 18, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4822, file: !2, line: 440, column: 6)
!4838 = !DILocation(line: 440, column: 26, scope: !4837)
!4839 = !DILocation(line: 440, column: 6, scope: !4837)
!4840 = !DILocation(line: 440, column: 6, scope: !4822)
!4841 = !DILocation(line: 441, column: 3, scope: !4837)
!4842 = !DILocation(line: 442, column: 18, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4822, file: !2, line: 442, column: 6)
!4844 = !DILocation(line: 442, column: 26, scope: !4843)
!4845 = !DILocation(line: 442, column: 6, scope: !4843)
!4846 = !DILocation(line: 442, column: 6, scope: !4822)
!4847 = !DILocation(line: 443, column: 3, scope: !4843)
!4848 = !DILocation(line: 444, column: 18, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4822, file: !2, line: 444, column: 6)
!4850 = !DILocation(line: 444, column: 26, scope: !4849)
!4851 = !DILocation(line: 444, column: 6, scope: !4849)
!4852 = !DILocation(line: 444, column: 6, scope: !4822)
!4853 = !DILocation(line: 445, column: 3, scope: !4849)
!4854 = !DILocation(line: 446, column: 18, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4822, file: !2, line: 446, column: 6)
!4856 = !DILocation(line: 446, column: 26, scope: !4855)
!4857 = !DILocation(line: 446, column: 6, scope: !4855)
!4858 = !DILocation(line: 446, column: 6, scope: !4822)
!4859 = !DILocation(line: 447, column: 3, scope: !4855)
!4860 = !DILocation(line: 448, column: 18, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4822, file: !2, line: 448, column: 6)
!4862 = !DILocation(line: 448, column: 26, scope: !4861)
!4863 = !DILocation(line: 448, column: 6, scope: !4861)
!4864 = !DILocation(line: 448, column: 6, scope: !4822)
!4865 = !DILocation(line: 449, column: 3, scope: !4861)
!4866 = !DILocation(line: 451, column: 6, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4822, file: !2, line: 451, column: 6)
!4868 = !DILocation(line: 451, column: 15, scope: !4867)
!4869 = !DILocation(line: 451, column: 23, scope: !4867)
!4870 = !DILocation(line: 451, column: 26, scope: !4867)
!4871 = !DILocation(line: 451, column: 35, scope: !4867)
!4872 = !DILocation(line: 451, column: 6, scope: !4822)
!4873 = !DILocation(line: 452, column: 3, scope: !4867)
!4874 = !DILocation(line: 456, column: 6, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4822, file: !2, line: 456, column: 6)
!4876 = !{i8 0, i8 2}
!4877 = !DILocation(line: 456, column: 6, scope: !4822)
!4878 = !DILocation(line: 457, column: 3, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4875, file: !2, line: 456, column: 22)
!4880 = !DILocation(line: 457, column: 12, scope: !4879)
!4881 = !DILocation(line: 457, column: 19, scope: !4879)
!4882 = !DILocation(line: 458, column: 3, scope: !4879)
!4883 = !DILocation(line: 458, column: 12, scope: !4879)
!4884 = !DILocation(line: 458, column: 17, scope: !4879)
!4885 = !DILocation(line: 459, column: 2, scope: !4879)
!4886 = !DILocation(line: 461, column: 2, scope: !4822)
!4887 = !DILocation(line: 462, column: 1, scope: !4822)
!4888 = !DISubprogram(name: "ps2_command", scope: !4539, file: !4539, line: 69, type: !4889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4889 = !DISubroutineType(types: !4890)
!4890 = !{!17, !4629, !4891, !66}
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!4892 = distinct !DISubprogram(name: "byd_init", scope: !2, file: !2, line: 464, type: !15, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !4893)
!4893 = !{!4894, !4895, !4896}
!4894 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4892, file: !2, line: 464, type: !18)
!4895 = !DILocalVariable(name: "dev", scope: !4892, file: !2, line: 466, type: !25)
!4896 = !DILocalVariable(name: "priv", scope: !4892, file: !2, line: 467, type: !4764)
!4897 = !DILocation(line: 464, column: 30, scope: !4892)
!4898 = !DILocation(line: 466, column: 2, scope: !4892)
!4899 = !DILocation(line: 466, column: 20, scope: !4892)
!4900 = !DILocation(line: 466, column: 26, scope: !4892)
!4901 = !DILocation(line: 466, column: 35, scope: !4892)
!4902 = !DILocation(line: 467, column: 2, scope: !4892)
!4903 = !DILocation(line: 467, column: 19, scope: !4892)
!4904 = !DILocation(line: 469, column: 20, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4892, file: !2, line: 469, column: 6)
!4906 = !DILocation(line: 469, column: 6, scope: !4905)
!4907 = !DILocation(line: 469, column: 6, scope: !4892)
!4908 = !DILocation(line: 470, column: 3, scope: !4905)
!4909 = !DILocation(line: 472, column: 25, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4892, file: !2, line: 472, column: 6)
!4911 = !DILocation(line: 472, column: 6, scope: !4910)
!4912 = !DILocation(line: 472, column: 6, scope: !4892)
!4913 = !DILocation(line: 473, column: 3, scope: !4910)
!4914 = !DILocation(line: 475, column: 9, scope: !4892)
!4915 = !DILocation(line: 475, column: 7, scope: !4892)
!4916 = !DILocation(line: 476, column: 7, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4892, file: !2, line: 476, column: 6)
!4918 = !DILocation(line: 476, column: 6, scope: !4892)
!4919 = !DILocation(line: 477, column: 3, scope: !4917)
!4920 = !DILocation(line: 479, column: 18, scope: !4892)
!4921 = !DILocation(line: 479, column: 2, scope: !4892)
!4922 = !DILocation(line: 479, column: 8, scope: !4892)
!4923 = !DILocation(line: 479, column: 16, scope: !4892)
!4924 = !DILocation(line: 480, column: 2, scope: !4892)
!4925 = !DILocation(line: 482, column: 21, scope: !4892)
!4926 = !DILocation(line: 482, column: 2, scope: !4892)
!4927 = !DILocation(line: 482, column: 11, scope: !4892)
!4928 = !DILocation(line: 482, column: 19, scope: !4892)
!4929 = !DILocation(line: 483, column: 2, scope: !4892)
!4930 = !DILocation(line: 483, column: 11, scope: !4892)
!4931 = !DILocation(line: 483, column: 22, scope: !4892)
!4932 = !DILocation(line: 484, column: 2, scope: !4892)
!4933 = !DILocation(line: 484, column: 11, scope: !4892)
!4934 = !DILocation(line: 484, column: 21, scope: !4892)
!4935 = !DILocation(line: 485, column: 2, scope: !4892)
!4936 = !DILocation(line: 485, column: 11, scope: !4892)
!4937 = !DILocation(line: 485, column: 28, scope: !4892)
!4938 = !DILocation(line: 486, column: 2, scope: !4892)
!4939 = !DILocation(line: 486, column: 11, scope: !4892)
!4940 = !DILocation(line: 486, column: 19, scope: !4892)
!4941 = !DILocation(line: 487, column: 2, scope: !4892)
!4942 = !DILocation(line: 487, column: 11, scope: !4892)
!4943 = !DILocation(line: 487, column: 23, scope: !4892)
!4944 = !DILocation(line: 489, column: 2, scope: !4892)
!4945 = !DILocation(line: 491, column: 2, scope: !4892)
!4946 = !DILocation(line: 492, column: 2, scope: !4892)
!4947 = !DILocation(line: 494, column: 2, scope: !4892)
!4948 = !DILocation(line: 495, column: 2, scope: !4892)
!4949 = !DILocation(line: 496, column: 2, scope: !4892)
!4950 = !DILocation(line: 499, column: 2, scope: !4892)
!4951 = !DILocation(line: 500, column: 23, scope: !4892)
!4952 = !DILocation(line: 500, column: 2, scope: !4892)
!4953 = !DILocation(line: 501, column: 23, scope: !4892)
!4954 = !DILocation(line: 501, column: 2, scope: !4892)
!4955 = !DILocation(line: 502, column: 20, scope: !4892)
!4956 = !DILocation(line: 502, column: 2, scope: !4892)
!4957 = !DILocation(line: 503, column: 20, scope: !4892)
!4958 = !DILocation(line: 503, column: 2, scope: !4892)
!4959 = !DILocation(line: 505, column: 2, scope: !4892)
!4960 = !DILocation(line: 506, column: 2, scope: !4892)
!4961 = !DILocation(line: 507, column: 2, scope: !4892)
!4962 = !DILocation(line: 509, column: 2, scope: !4892)
!4963 = !DILocation(line: 510, column: 1, scope: !4892)
!4964 = !DISubprogram(name: "psmouse_reset", scope: !20, file: !20, line: 137, type: !15, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4965 = !DILocation(line: 339, column: 47, scope: !14)
!4966 = !DILocation(line: 341, column: 2, scope: !14)
!4967 = !DILocation(line: 341, column: 17, scope: !14)
!4968 = !DILocation(line: 341, column: 27, scope: !14)
!4969 = !DILocation(line: 341, column: 36, scope: !14)
!4970 = !DILocation(line: 342, column: 2, scope: !14)
!4971 = !DILocation(line: 342, column: 5, scope: !14)
!4972 = !DILocation(line: 343, column: 2, scope: !14)
!4973 = !DILocation(line: 343, column: 9, scope: !14)
!4974 = !DILocation(line: 387, column: 9, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !14, file: !2, line: 387, column: 2)
!4976 = !DILocation(line: 387, column: 7, scope: !4975)
!4977 = !DILocation(line: 387, column: 14, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4975, file: !2, line: 387, column: 2)
!4979 = !DILocation(line: 387, column: 16, scope: !4978)
!4980 = !DILocation(line: 387, column: 2, scope: !4975)
!4981 = !DILocation(line: 388, column: 3, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4978, file: !2, line: 387, column: 40)
!4983 = !DILocation(line: 389, column: 18, scope: !4982)
!4984 = !DILocation(line: 389, column: 14, scope: !4982)
!4985 = !DILocation(line: 389, column: 21, scope: !4982)
!4986 = !DILocation(line: 389, column: 3, scope: !4982)
!4987 = !DILocation(line: 389, column: 12, scope: !4982)
!4988 = !DILocation(line: 390, column: 19, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4982, file: !2, line: 390, column: 7)
!4990 = !DILocation(line: 390, column: 27, scope: !4989)
!4991 = !DILocation(line: 390, column: 38, scope: !4989)
!4992 = !DILocation(line: 390, column: 34, scope: !4989)
!4993 = !DILocation(line: 390, column: 41, scope: !4989)
!4994 = !DILocation(line: 390, column: 7, scope: !4989)
!4995 = !DILocation(line: 390, column: 7, scope: !4982)
!4996 = !DILocation(line: 391, column: 4, scope: !4989)
!4997 = !DILocation(line: 392, column: 2, scope: !4982)
!4998 = !DILocation(line: 387, column: 35, scope: !4978)
!4999 = !DILocation(line: 387, column: 2, scope: !4978)
!5000 = distinct !{!5000, !4980, !5001, !5002, !5003}
!5001 = !DILocation(line: 392, column: 2, scope: !4975)
!5002 = !{!"llvm.loop.mustprogress"}
!5003 = !{!"llvm.loop.unroll.disable"}
!5004 = !DILocation(line: 394, column: 20, scope: !14)
!5005 = !DILocation(line: 394, column: 2, scope: !14)
!5006 = !DILocation(line: 395, column: 2, scope: !14)
!5007 = !DILocation(line: 396, column: 1, scope: !14)
!5008 = distinct !DISubprogram(name: "kzalloc", scope: !4751, file: !4751, line: 719, type: !5009, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5011)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{!23, !814, !866}
!5011 = !{!5012, !5013}
!5012 = !DILocalVariable(name: "size", arg: 1, scope: !5008, file: !4751, line: 719, type: !814)
!5013 = !DILocalVariable(name: "flags", arg: 2, scope: !5008, file: !4751, line: 719, type: !866)
!5014 = !DILocation(line: 719, column: 52, scope: !5008)
!5015 = !DILocation(line: 719, column: 64, scope: !5008)
!5016 = !DILocation(line: 721, column: 17, scope: !5008)
!5017 = !DILocation(line: 721, column: 23, scope: !5008)
!5018 = !DILocation(line: 721, column: 29, scope: !5008)
!5019 = !DILocation(line: 721, column: 9, scope: !5008)
!5020 = !DILocation(line: 721, column: 2, scope: !5008)
!5021 = !DISubprogram(name: "init_timer_key", scope: !1960, file: !1960, line: 91, type: !5022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{null, !1968, !1965, !66, !30, !5024}
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!5025 = distinct !DISubprogram(name: "byd_clear_touch", scope: !2, file: !2, line: 252, type: !1966, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5026)
!5026 = !{!5027, !5028, !5029, !5031}
!5027 = !DILocalVariable(name: "t", arg: 1, scope: !5025, file: !2, line: 252, type: !1968)
!5028 = !DILocalVariable(name: "priv", scope: !5025, file: !2, line: 254, type: !4764)
!5029 = !DILocalVariable(name: "__mptr", scope: !5030, file: !2, line: 254, type: !23)
!5030 = distinct !DILexicalBlock(scope: !5025, file: !2, line: 254, column: 26)
!5031 = !DILocalVariable(name: "psmouse", scope: !5025, file: !2, line: 255, type: !18)
!5032 = !DILocation(line: 252, column: 48, scope: !5025)
!5033 = !DILocation(line: 254, column: 2, scope: !5025)
!5034 = !DILocation(line: 254, column: 19, scope: !5025)
!5035 = !DILocation(line: 254, column: 26, scope: !5030)
!5036 = !DILocation(line: 254, column: 26, scope: !5025)
!5037 = !DILocation(line: 255, column: 2, scope: !5025)
!5038 = !DILocation(line: 255, column: 18, scope: !5025)
!5039 = !DILocation(line: 255, column: 28, scope: !5025)
!5040 = !DILocation(line: 255, column: 34, scope: !5025)
!5041 = !DILocation(line: 257, column: 17, scope: !5025)
!5042 = !DILocation(line: 257, column: 26, scope: !5025)
!5043 = !DILocation(line: 257, column: 33, scope: !5025)
!5044 = !DILocation(line: 257, column: 2, scope: !5025)
!5045 = !DILocation(line: 258, column: 2, scope: !5025)
!5046 = !DILocation(line: 258, column: 8, scope: !5025)
!5047 = !DILocation(line: 258, column: 14, scope: !5025)
!5048 = !DILocation(line: 260, column: 19, scope: !5025)
!5049 = !DILocation(line: 260, column: 2, scope: !5025)
!5050 = !DILocation(line: 262, column: 20, scope: !5025)
!5051 = !DILocation(line: 262, column: 29, scope: !5025)
!5052 = !DILocation(line: 262, column: 36, scope: !5025)
!5053 = !DILocation(line: 262, column: 2, scope: !5025)
!5054 = !DILocation(line: 269, column: 2, scope: !5025)
!5055 = !DILocation(line: 269, column: 8, scope: !5025)
!5056 = !DILocation(line: 269, column: 14, scope: !5025)
!5057 = !DILocation(line: 270, column: 2, scope: !5025)
!5058 = !DILocation(line: 270, column: 8, scope: !5025)
!5059 = !DILocation(line: 270, column: 14, scope: !5025)
!5060 = !DILocation(line: 271, column: 1, scope: !5025)
!5061 = distinct !DISubprogram(name: "byd_disconnect", scope: !2, file: !2, line: 424, type: !4737, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5062)
!5062 = !{!5063, !5064}
!5063 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5061, file: !2, line: 424, type: !18)
!5064 = !DILocalVariable(name: "priv", scope: !5061, file: !2, line: 426, type: !4764)
!5065 = !DILocation(line: 424, column: 44, scope: !5061)
!5066 = !DILocation(line: 426, column: 2, scope: !5061)
!5067 = !DILocation(line: 426, column: 19, scope: !5061)
!5068 = !DILocation(line: 426, column: 26, scope: !5061)
!5069 = !DILocation(line: 426, column: 35, scope: !5061)
!5070 = !DILocation(line: 428, column: 6, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5061, file: !2, line: 428, column: 6)
!5072 = !DILocation(line: 428, column: 6, scope: !5061)
!5073 = !DILocation(line: 429, column: 14, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5071, file: !2, line: 428, column: 12)
!5075 = !DILocation(line: 429, column: 20, scope: !5074)
!5076 = !DILocation(line: 429, column: 3, scope: !5074)
!5077 = !DILocation(line: 430, column: 9, scope: !5074)
!5078 = !DILocation(line: 430, column: 18, scope: !5074)
!5079 = !DILocation(line: 430, column: 3, scope: !5074)
!5080 = !DILocation(line: 431, column: 3, scope: !5074)
!5081 = !DILocation(line: 431, column: 12, scope: !5074)
!5082 = !DILocation(line: 431, column: 20, scope: !5074)
!5083 = !DILocation(line: 432, column: 2, scope: !5074)
!5084 = !DILocation(line: 433, column: 1, scope: !5061)
!5085 = distinct !DISubprogram(name: "byd_reconnect", scope: !2, file: !2, line: 398, type: !15, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5086)
!5086 = !{!5087, !5088, !5089}
!5087 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5085, file: !2, line: 398, type: !18)
!5088 = !DILocalVariable(name: "retry", scope: !5085, file: !2, line: 400, type: !17)
!5089 = !DILocalVariable(name: "error", scope: !5085, file: !2, line: 400, type: !17)
!5090 = !DILocation(line: 398, column: 42, scope: !5085)
!5091 = !DILocation(line: 400, column: 2, scope: !5085)
!5092 = !DILocation(line: 400, column: 6, scope: !5085)
!5093 = !DILocation(line: 400, column: 17, scope: !5085)
!5094 = !DILocation(line: 403, column: 2, scope: !5085)
!5095 = !DILocation(line: 404, column: 17, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5085, file: !2, line: 403, column: 5)
!5097 = !DILocation(line: 404, column: 3, scope: !5096)
!5098 = !DILocation(line: 405, column: 7, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5096, file: !2, line: 405, column: 7)
!5100 = !DILocation(line: 405, column: 7, scope: !5096)
!5101 = !DILocation(line: 406, column: 4, scope: !5099)
!5102 = !DILocation(line: 407, column: 22, scope: !5096)
!5103 = !DILocation(line: 407, column: 11, scope: !5096)
!5104 = !DILocation(line: 407, column: 9, scope: !5096)
!5105 = !DILocation(line: 408, column: 2, scope: !5096)
!5106 = !DILocation(line: 408, column: 11, scope: !5085)
!5107 = !DILocation(line: 408, column: 17, scope: !5085)
!5108 = !DILocation(line: 408, column: 20, scope: !5085)
!5109 = !DILocation(line: 408, column: 28, scope: !5085)
!5110 = !DILocation(line: 0, scope: !5085)
!5111 = distinct !{!5111, !5094, !5112, !5002, !5003}
!5112 = !DILocation(line: 408, column: 31, scope: !5085)
!5113 = !DILocation(line: 410, column: 6, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5085, file: !2, line: 410, column: 6)
!5115 = !DILocation(line: 410, column: 6, scope: !5085)
!5116 = !DILocation(line: 411, column: 10, scope: !5114)
!5117 = !DILocation(line: 411, column: 3, scope: !5114)
!5118 = !DILocation(line: 415, column: 29, scope: !5085)
!5119 = !DILocation(line: 415, column: 10, scope: !5085)
!5120 = !DILocation(line: 415, column: 8, scope: !5085)
!5121 = !DILocation(line: 416, column: 6, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5085, file: !2, line: 416, column: 6)
!5123 = !DILocation(line: 416, column: 6, scope: !5085)
!5124 = !DILocation(line: 417, column: 3, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5126, file: !2, line: 417, column: 3)
!5126 = distinct !DILexicalBlock(scope: !5122, file: !2, line: 416, column: 13)
!5127 = !DILocation(line: 417, column: 3, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5125, file: !2, line: 417, column: 3)
!5129 = !DILocation(line: 418, column: 10, scope: !5126)
!5130 = !DILocation(line: 418, column: 3, scope: !5126)
!5131 = !DILocation(line: 421, column: 2, scope: !5085)
!5132 = !DILocation(line: 422, column: 1, scope: !5085)
!5133 = distinct !DISubprogram(name: "byd_process_byte", scope: !2, file: !2, line: 273, type: !4712, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5134)
!5134 = !{!5135, !5136, !5137, !5138, !5142, !5144, !5145, !5146}
!5135 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5133, file: !2, line: 273, type: !18)
!5136 = !DILocalVariable(name: "priv", scope: !5133, file: !2, line: 275, type: !4764)
!5137 = !DILocalVariable(name: "pkt", scope: !5133, file: !2, line: 276, type: !4891)
!5138 = !DILocalVariable(name: "tap_time", scope: !5139, file: !2, line: 293, type: !4772)
!5139 = distinct !DILexicalBlock(scope: !5140, file: !2, line: 291, column: 21)
!5140 = distinct !DILexicalBlock(scope: !5141, file: !2, line: 291, column: 7)
!5141 = distinct !DILexicalBlock(scope: !5133, file: !2, line: 288, column: 18)
!5142 = !DILocalVariable(name: "signx", scope: !5143, file: !2, line: 305, type: !461)
!5143 = distinct !DILexicalBlock(scope: !5141, file: !2, line: 302, column: 28)
!5144 = !DILocalVariable(name: "signy", scope: !5143, file: !2, line: 306, type: !461)
!5145 = !DILocalVariable(name: "dx", scope: !5143, file: !2, line: 307, type: !421)
!5146 = !DILocalVariable(name: "dy", scope: !5143, file: !2, line: 308, type: !421)
!5147 = !DILocation(line: 273, column: 55, scope: !5133)
!5148 = !DILocation(line: 275, column: 2, scope: !5133)
!5149 = !DILocation(line: 275, column: 19, scope: !5133)
!5150 = !DILocation(line: 275, column: 26, scope: !5133)
!5151 = !DILocation(line: 275, column: 35, scope: !5133)
!5152 = !DILocation(line: 276, column: 2, scope: !5133)
!5153 = !DILocation(line: 276, column: 6, scope: !5133)
!5154 = !DILocation(line: 276, column: 12, scope: !5133)
!5155 = !DILocation(line: 276, column: 21, scope: !5133)
!5156 = !DILocation(line: 278, column: 6, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5133, file: !2, line: 278, column: 6)
!5158 = !DILocation(line: 278, column: 15, scope: !5157)
!5159 = !DILocation(line: 278, column: 22, scope: !5157)
!5160 = !DILocation(line: 278, column: 26, scope: !5157)
!5161 = !DILocation(line: 278, column: 31, scope: !5157)
!5162 = !DILocation(line: 278, column: 38, scope: !5157)
!5163 = !DILocation(line: 278, column: 6, scope: !5133)
!5164 = !DILocation(line: 279, column: 3, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5166, file: !2, line: 279, column: 3)
!5166 = distinct !DILexicalBlock(scope: !5157, file: !2, line: 278, column: 55)
!5167 = !DILocation(line: 279, column: 3, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5165, file: !2, line: 279, column: 3)
!5169 = !DILocation(line: 281, column: 3, scope: !5166)
!5170 = !DILocation(line: 284, column: 6, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5133, file: !2, line: 284, column: 6)
!5172 = !DILocation(line: 284, column: 15, scope: !5171)
!5173 = !DILocation(line: 284, column: 24, scope: !5171)
!5174 = !DILocation(line: 284, column: 33, scope: !5171)
!5175 = !DILocation(line: 284, column: 22, scope: !5171)
!5176 = !DILocation(line: 284, column: 6, scope: !5133)
!5177 = !DILocation(line: 285, column: 3, scope: !5171)
!5178 = !DILocation(line: 288, column: 10, scope: !5133)
!5179 = !DILocation(line: 288, column: 2, scope: !5133)
!5180 = !DILocation(line: 291, column: 8, scope: !5140)
!5181 = !DILocation(line: 291, column: 14, scope: !5140)
!5182 = !DILocation(line: 291, column: 7, scope: !5141)
!5183 = !DILocation(line: 293, column: 4, scope: !5139)
!5184 = !DILocation(line: 293, column: 20, scope: !5139)
!5185 = !DILocation(line: 294, column: 5, scope: !5139)
!5186 = !DILocation(line: 294, column: 11, scope: !5139)
!5187 = !DILocation(line: 294, column: 29, scope: !5139)
!5188 = !DILocation(line: 294, column: 27, scope: !5139)
!5189 = !DILocation(line: 295, column: 18, scope: !5139)
!5190 = !DILocation(line: 295, column: 4, scope: !5139)
!5191 = !DILocation(line: 295, column: 10, scope: !5139)
!5192 = !DILocation(line: 295, column: 16, scope: !5139)
!5193 = !DILocation(line: 298, column: 18, scope: !5139)
!5194 = !DILocation(line: 298, column: 25, scope: !5139)
!5195 = !DILocation(line: 298, column: 4, scope: !5139)
!5196 = !DILocation(line: 298, column: 10, scope: !5139)
!5197 = !DILocation(line: 298, column: 16, scope: !5139)
!5198 = !DILocation(line: 299, column: 25, scope: !5139)
!5199 = !DILocation(line: 299, column: 23, scope: !5139)
!5200 = !DILocation(line: 299, column: 33, scope: !5139)
!5201 = !DILocation(line: 299, column: 4, scope: !5139)
!5202 = !DILocation(line: 299, column: 10, scope: !5139)
!5203 = !DILocation(line: 299, column: 16, scope: !5139)
!5204 = !DILocation(line: 300, column: 3, scope: !5140)
!5205 = !DILocation(line: 300, column: 3, scope: !5139)
!5206 = !DILocation(line: 301, column: 3, scope: !5141)
!5207 = !DILocation(line: 305, column: 3, scope: !5143)
!5208 = !DILocation(line: 305, column: 7, scope: !5143)
!5209 = !DILocation(line: 305, column: 15, scope: !5143)
!5210 = !DILocation(line: 305, column: 22, scope: !5143)
!5211 = !DILocation(line: 306, column: 3, scope: !5143)
!5212 = !DILocation(line: 306, column: 7, scope: !5143)
!5213 = !DILocation(line: 306, column: 15, scope: !5143)
!5214 = !DILocation(line: 306, column: 22, scope: !5143)
!5215 = !DILocation(line: 307, column: 3, scope: !5143)
!5216 = !DILocation(line: 307, column: 7, scope: !5143)
!5217 = !DILocation(line: 307, column: 12, scope: !5143)
!5218 = !DILocation(line: 307, column: 26, scope: !5143)
!5219 = !DILocation(line: 307, column: 20, scope: !5143)
!5220 = !DILocation(line: 307, column: 18, scope: !5143)
!5221 = !DILocation(line: 308, column: 3, scope: !5143)
!5222 = !DILocation(line: 308, column: 7, scope: !5143)
!5223 = !DILocation(line: 308, column: 12, scope: !5143)
!5224 = !DILocation(line: 308, column: 26, scope: !5143)
!5225 = !DILocation(line: 308, column: 20, scope: !5143)
!5226 = !DILocation(line: 308, column: 18, scope: !5143)
!5227 = !DILocation(line: 311, column: 18, scope: !5143)
!5228 = !DILocation(line: 311, column: 21, scope: !5143)
!5229 = !DILocation(line: 311, column: 3, scope: !5143)
!5230 = !DILocation(line: 311, column: 9, scope: !5143)
!5231 = !DILocation(line: 311, column: 15, scope: !5143)
!5232 = !DILocation(line: 312, column: 18, scope: !5143)
!5233 = !DILocation(line: 312, column: 21, scope: !5143)
!5234 = !DILocation(line: 312, column: 3, scope: !5143)
!5235 = !DILocation(line: 312, column: 9, scope: !5143)
!5236 = !DILocation(line: 312, column: 15, scope: !5143)
!5237 = !DILocation(line: 314, column: 3, scope: !5143)
!5238 = !DILocation(line: 314, column: 9, scope: !5143)
!5239 = !DILocation(line: 314, column: 15, scope: !5143)
!5240 = !DILocation(line: 316, column: 2, scope: !5141)
!5241 = !DILocation(line: 318, column: 3, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5141, file: !2, line: 318, column: 3)
!5243 = !DILocation(line: 318, column: 3, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5242, file: !2, line: 318, column: 3)
!5245 = !DILocation(line: 322, column: 3, scope: !5141)
!5246 = !DILocation(line: 325, column: 19, scope: !5133)
!5247 = !DILocation(line: 325, column: 26, scope: !5133)
!5248 = !DILocation(line: 325, column: 2, scope: !5133)
!5249 = !DILocation(line: 325, column: 8, scope: !5133)
!5250 = !DILocation(line: 325, column: 17, scope: !5133)
!5251 = !DILocation(line: 326, column: 20, scope: !5133)
!5252 = !DILocation(line: 326, column: 27, scope: !5133)
!5253 = !DILocation(line: 326, column: 2, scope: !5133)
!5254 = !DILocation(line: 326, column: 8, scope: !5133)
!5255 = !DILocation(line: 326, column: 18, scope: !5133)
!5256 = !DILocation(line: 328, column: 19, scope: !5133)
!5257 = !DILocation(line: 328, column: 2, scope: !5133)
!5258 = !DILocation(line: 331, column: 6, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5133, file: !2, line: 331, column: 6)
!5260 = !DILocation(line: 331, column: 12, scope: !5259)
!5261 = !DILocation(line: 331, column: 6, scope: !5133)
!5262 = !DILocation(line: 332, column: 27, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5259, file: !2, line: 331, column: 19)
!5264 = !DILocation(line: 332, column: 3, scope: !5263)
!5265 = !DILocation(line: 332, column: 9, scope: !5263)
!5266 = !DILocation(line: 332, column: 25, scope: !5263)
!5267 = !DILocation(line: 333, column: 14, scope: !5263)
!5268 = !DILocation(line: 333, column: 20, scope: !5263)
!5269 = !DILocation(line: 333, column: 27, scope: !5263)
!5270 = !DILocation(line: 333, column: 37, scope: !5263)
!5271 = !DILocation(line: 333, column: 35, scope: !5263)
!5272 = !DILocation(line: 333, column: 3, scope: !5263)
!5273 = !DILocation(line: 334, column: 2, scope: !5263)
!5274 = !DILocation(line: 336, column: 2, scope: !5133)
!5275 = !DILocation(line: 337, column: 1, scope: !5133)
!5276 = distinct !DISubprogram(name: "generic___set_bit", scope: !5277, file: !5277, line: 28, type: !5278, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5281)
!5277 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5278 = !DISubroutineType(types: !5279)
!5279 = !{null, !47, !5280}
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!5281 = !{!5282, !5283, !5284, !5285}
!5282 = !DILocalVariable(name: "nr", arg: 1, scope: !5276, file: !5277, line: 28, type: !47)
!5283 = !DILocalVariable(name: "addr", arg: 2, scope: !5276, file: !5277, line: 28, type: !5280)
!5284 = !DILocalVariable(name: "mask", scope: !5276, file: !5277, line: 30, type: !47)
!5285 = !DILocalVariable(name: "p", scope: !5276, file: !5277, line: 31, type: !2050)
!5286 = !DILocation(line: 28, column: 33, scope: !5276)
!5287 = !DILocation(line: 28, column: 61, scope: !5276)
!5288 = !DILocation(line: 30, column: 2, scope: !5276)
!5289 = !DILocation(line: 30, column: 16, scope: !5276)
!5290 = !DILocation(line: 30, column: 23, scope: !5276)
!5291 = !DILocation(line: 31, column: 2, scope: !5276)
!5292 = !DILocation(line: 31, column: 17, scope: !5276)
!5293 = !DILocation(line: 31, column: 39, scope: !5276)
!5294 = !DILocation(line: 31, column: 47, scope: !5276)
!5295 = !DILocation(line: 31, column: 45, scope: !5276)
!5296 = !DILocation(line: 33, column: 9, scope: !5276)
!5297 = !DILocation(line: 33, column: 3, scope: !5276)
!5298 = !DILocation(line: 33, column: 6, scope: !5276)
!5299 = !DILocation(line: 34, column: 1, scope: !5276)
!5300 = distinct !DISubprogram(name: "___set_bit", scope: !5301, file: !5301, line: 26, type: !5278, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5302)
!5301 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5302 = !{!5303, !5304}
!5303 = !DILocalVariable(name: "nr", arg: 1, scope: !5300, file: !5301, line: 26, type: !47)
!5304 = !DILocalVariable(name: "addr", arg: 2, scope: !5300, file: !5301, line: 26, type: !5280)
!5305 = !DILocation(line: 26, column: 26, scope: !5300)
!5306 = !DILocation(line: 26, column: 54, scope: !5300)
!5307 = !DILocation(line: 28, column: 19, scope: !5300)
!5308 = !DILocation(line: 28, column: 26, scope: !5300)
!5309 = !DILocation(line: 28, column: 24, scope: !5300)
!5310 = !DILocation(line: 28, column: 2, scope: !5300)
!5311 = !DILocation(line: 29, column: 17, scope: !5300)
!5312 = !DILocation(line: 29, column: 21, scope: !5300)
!5313 = !DILocation(line: 29, column: 2, scope: !5300)
!5314 = !DILocation(line: 30, column: 1, scope: !5300)
!5315 = distinct !DISubprogram(name: "generic___clear_bit", scope: !5277, file: !5277, line: 37, type: !5278, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5316)
!5316 = !{!5317, !5318, !5319, !5320}
!5317 = !DILocalVariable(name: "nr", arg: 1, scope: !5315, file: !5277, line: 37, type: !47)
!5318 = !DILocalVariable(name: "addr", arg: 2, scope: !5315, file: !5277, line: 37, type: !5280)
!5319 = !DILocalVariable(name: "mask", scope: !5315, file: !5277, line: 39, type: !47)
!5320 = !DILocalVariable(name: "p", scope: !5315, file: !5277, line: 40, type: !2050)
!5321 = !DILocation(line: 37, column: 35, scope: !5315)
!5322 = !DILocation(line: 37, column: 63, scope: !5315)
!5323 = !DILocation(line: 39, column: 2, scope: !5315)
!5324 = !DILocation(line: 39, column: 16, scope: !5315)
!5325 = !DILocation(line: 39, column: 23, scope: !5315)
!5326 = !DILocation(line: 40, column: 2, scope: !5315)
!5327 = !DILocation(line: 40, column: 17, scope: !5315)
!5328 = !DILocation(line: 40, column: 39, scope: !5315)
!5329 = !DILocation(line: 40, column: 47, scope: !5315)
!5330 = !DILocation(line: 40, column: 45, scope: !5315)
!5331 = !DILocation(line: 42, column: 9, scope: !5315)
!5332 = !DILocation(line: 42, column: 8, scope: !5315)
!5333 = !DILocation(line: 42, column: 3, scope: !5315)
!5334 = !DILocation(line: 42, column: 5, scope: !5315)
!5335 = !DILocation(line: 43, column: 1, scope: !5315)
!5336 = distinct !DISubprogram(name: "___clear_bit", scope: !5301, file: !5301, line: 42, type: !5278, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5337)
!5337 = !{!5338, !5339}
!5338 = !DILocalVariable(name: "nr", arg: 1, scope: !5336, file: !5301, line: 42, type: !47)
!5339 = !DILocalVariable(name: "addr", arg: 2, scope: !5336, file: !5301, line: 42, type: !5280)
!5340 = !DILocation(line: 42, column: 28, scope: !5336)
!5341 = !DILocation(line: 42, column: 56, scope: !5336)
!5342 = !DILocation(line: 44, column: 19, scope: !5336)
!5343 = !DILocation(line: 44, column: 26, scope: !5336)
!5344 = !DILocation(line: 44, column: 24, scope: !5336)
!5345 = !DILocation(line: 44, column: 2, scope: !5336)
!5346 = !DILocation(line: 45, column: 19, scope: !5336)
!5347 = !DILocation(line: 45, column: 23, scope: !5336)
!5348 = !DILocation(line: 45, column: 2, scope: !5336)
!5349 = !DILocation(line: 46, column: 1, scope: !5336)
!5350 = !DISubprogram(name: "input_set_abs_params", scope: !27, file: !27, line: 476, type: !5351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5351 = !DISubroutineType(types: !5352)
!5352 = !{null, !25, !66, !17, !17, !17, !17}
!5353 = distinct !DISubprogram(name: "input_abs_set_res", scope: !27, file: !27, line: 501, type: !5354, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5356)
!5354 = !DISubroutineType(types: !5355)
!5355 = !{null, !25, !66, !17}
!5356 = !{!5357, !5358, !5359}
!5357 = !DILocalVariable(name: "dev", arg: 1, scope: !5353, file: !27, line: 501, type: !25)
!5358 = !DILocalVariable(name: "axis", arg: 2, scope: !5353, file: !27, line: 501, type: !66)
!5359 = !DILocalVariable(name: "val", arg: 3, scope: !5353, file: !27, line: 501, type: !17)
!5360 = !DILocation(line: 501, column: 1, scope: !5353)
!5361 = !DILocation(line: 501, column: 1, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5353, file: !27, line: 501, column: 1)
!5363 = !DISubprogram(name: "psmouse_set_state", scope: !20, file: !20, line: 138, type: !5364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5364 = !DISubroutineType(types: !5365)
!5365 = !{null, !18, !4695}
!5366 = distinct !DISubprogram(name: "kmalloc", scope: !4751, file: !4751, line: 591, type: !5009, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5367)
!5367 = !{!5368, !5369, !5370}
!5368 = !DILocalVariable(name: "size", arg: 1, scope: !5366, file: !4751, line: 591, type: !814)
!5369 = !DILocalVariable(name: "flags", arg: 2, scope: !5366, file: !4751, line: 591, type: !866)
!5370 = !DILocalVariable(name: "index", scope: !5371, file: !4751, line: 594, type: !66)
!5371 = distinct !DILexicalBlock(scope: !5372, file: !4751, line: 593, column: 42)
!5372 = distinct !DILexicalBlock(scope: !5366, file: !4751, line: 593, column: 6)
!5373 = !DILocation(line: 591, column: 61, scope: !5366)
!5374 = !DILocation(line: 591, column: 73, scope: !5366)
!5375 = !DILocation(line: 593, column: 27, scope: !5372)
!5376 = !DILocation(line: 593, column: 6, scope: !5372)
!5377 = !DILocation(line: 593, column: 33, scope: !5372)
!5378 = !DILocation(line: 593, column: 36, scope: !5372)
!5379 = !DILocation(line: 593, column: 6, scope: !5366)
!5380 = !DILocation(line: 594, column: 3, scope: !5371)
!5381 = !DILocation(line: 594, column: 16, scope: !5371)
!5382 = !DILocation(line: 596, column: 7, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5371, file: !4751, line: 596, column: 7)
!5384 = !DILocation(line: 596, column: 12, scope: !5383)
!5385 = !DILocation(line: 596, column: 7, scope: !5371)
!5386 = !DILocation(line: 597, column: 25, scope: !5383)
!5387 = !DILocation(line: 597, column: 31, scope: !5383)
!5388 = !DILocation(line: 597, column: 11, scope: !5383)
!5389 = !DILocation(line: 597, column: 4, scope: !5383)
!5390 = !DILocation(line: 599, column: 11, scope: !5371)
!5391 = !DILocation(line: 599, column: 9, scope: !5371)
!5392 = !DILocation(line: 601, column: 33, scope: !5371)
!5393 = !DILocation(line: 601, column: 40, scope: !5371)
!5394 = !DILocation(line: 601, column: 20, scope: !5371)
!5395 = !DILocation(line: 601, column: 5, scope: !5371)
!5396 = !DILocation(line: 601, column: 51, scope: !5371)
!5397 = !DILocation(line: 602, column: 5, scope: !5371)
!5398 = !DILocation(line: 602, column: 12, scope: !5371)
!5399 = !DILocation(line: 600, column: 10, scope: !5371)
!5400 = !DILocation(line: 600, column: 3, scope: !5371)
!5401 = !DILocation(line: 603, column: 2, scope: !5372)
!5402 = !DILocation(line: 604, column: 19, scope: !5366)
!5403 = !DILocation(line: 604, column: 25, scope: !5366)
!5404 = !DILocation(line: 604, column: 9, scope: !5366)
!5405 = !DILocation(line: 604, column: 2, scope: !5366)
!5406 = !DILocation(line: 605, column: 1, scope: !5366)
!5407 = !DISubprogram(name: "kmalloc_large", scope: !4751, file: !4751, line: 531, type: !5009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5408 = distinct !DISubprogram(name: "__kmalloc_index", scope: !4751, file: !4751, line: 444, type: !5409, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5411)
!5409 = !DISubroutineType(types: !5410)
!5410 = !{!66, !814, !495}
!5411 = !{!5412, !5413}
!5412 = !DILocalVariable(name: "size", arg: 1, scope: !5408, file: !4751, line: 444, type: !814)
!5413 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5408, file: !4751, line: 445, type: !495)
!5414 = !DILocation(line: 444, column: 60, scope: !5408)
!5415 = !DILocation(line: 445, column: 16, scope: !5408)
!5416 = !DILocation(line: 447, column: 7, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 447, column: 6)
!5418 = !DILocation(line: 447, column: 6, scope: !5408)
!5419 = !DILocation(line: 448, column: 3, scope: !5417)
!5420 = !DILocation(line: 450, column: 6, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 450, column: 6)
!5422 = !DILocation(line: 450, column: 11, scope: !5421)
!5423 = !DILocation(line: 450, column: 6, scope: !5408)
!5424 = !DILocation(line: 451, column: 3, scope: !5421)
!5425 = !DILocation(line: 453, column: 32, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 453, column: 6)
!5427 = !DILocation(line: 453, column: 37, scope: !5426)
!5428 = !DILocation(line: 453, column: 42, scope: !5426)
!5429 = !DILocation(line: 453, column: 45, scope: !5426)
!5430 = !DILocation(line: 453, column: 50, scope: !5426)
!5431 = !DILocation(line: 453, column: 6, scope: !5408)
!5432 = !DILocation(line: 454, column: 3, scope: !5426)
!5433 = !DILocation(line: 455, column: 32, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 455, column: 6)
!5435 = !DILocation(line: 455, column: 37, scope: !5434)
!5436 = !DILocation(line: 455, column: 43, scope: !5434)
!5437 = !DILocation(line: 455, column: 46, scope: !5434)
!5438 = !DILocation(line: 455, column: 51, scope: !5434)
!5439 = !DILocation(line: 455, column: 6, scope: !5408)
!5440 = !DILocation(line: 456, column: 3, scope: !5434)
!5441 = !DILocation(line: 457, column: 6, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 457, column: 6)
!5443 = !DILocation(line: 457, column: 11, scope: !5442)
!5444 = !DILocation(line: 457, column: 6, scope: !5408)
!5445 = !DILocation(line: 457, column: 26, scope: !5442)
!5446 = !DILocation(line: 458, column: 6, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 458, column: 6)
!5448 = !DILocation(line: 458, column: 11, scope: !5447)
!5449 = !DILocation(line: 458, column: 6, scope: !5408)
!5450 = !DILocation(line: 458, column: 26, scope: !5447)
!5451 = !DILocation(line: 459, column: 6, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 459, column: 6)
!5453 = !DILocation(line: 459, column: 11, scope: !5452)
!5454 = !DILocation(line: 459, column: 6, scope: !5408)
!5455 = !DILocation(line: 459, column: 26, scope: !5452)
!5456 = !DILocation(line: 460, column: 6, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 460, column: 6)
!5458 = !DILocation(line: 460, column: 11, scope: !5457)
!5459 = !DILocation(line: 460, column: 6, scope: !5408)
!5460 = !DILocation(line: 460, column: 26, scope: !5457)
!5461 = !DILocation(line: 461, column: 6, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 461, column: 6)
!5463 = !DILocation(line: 461, column: 11, scope: !5462)
!5464 = !DILocation(line: 461, column: 6, scope: !5408)
!5465 = !DILocation(line: 461, column: 26, scope: !5462)
!5466 = !DILocation(line: 462, column: 6, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 462, column: 6)
!5468 = !DILocation(line: 462, column: 11, scope: !5467)
!5469 = !DILocation(line: 462, column: 6, scope: !5408)
!5470 = !DILocation(line: 462, column: 26, scope: !5467)
!5471 = !DILocation(line: 463, column: 6, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 463, column: 6)
!5473 = !DILocation(line: 463, column: 11, scope: !5472)
!5474 = !DILocation(line: 463, column: 6, scope: !5408)
!5475 = !DILocation(line: 463, column: 26, scope: !5472)
!5476 = !DILocation(line: 464, column: 6, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 464, column: 6)
!5478 = !DILocation(line: 464, column: 11, scope: !5477)
!5479 = !DILocation(line: 464, column: 6, scope: !5408)
!5480 = !DILocation(line: 464, column: 26, scope: !5477)
!5481 = !DILocation(line: 465, column: 6, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 465, column: 6)
!5483 = !DILocation(line: 465, column: 11, scope: !5482)
!5484 = !DILocation(line: 465, column: 6, scope: !5408)
!5485 = !DILocation(line: 465, column: 26, scope: !5482)
!5486 = !DILocation(line: 466, column: 6, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 466, column: 6)
!5488 = !DILocation(line: 466, column: 11, scope: !5487)
!5489 = !DILocation(line: 466, column: 6, scope: !5408)
!5490 = !DILocation(line: 466, column: 26, scope: !5487)
!5491 = !DILocation(line: 467, column: 6, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 467, column: 6)
!5493 = !DILocation(line: 467, column: 11, scope: !5492)
!5494 = !DILocation(line: 467, column: 6, scope: !5408)
!5495 = !DILocation(line: 467, column: 26, scope: !5492)
!5496 = !DILocation(line: 468, column: 6, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 468, column: 6)
!5498 = !DILocation(line: 468, column: 11, scope: !5497)
!5499 = !DILocation(line: 468, column: 6, scope: !5408)
!5500 = !DILocation(line: 468, column: 26, scope: !5497)
!5501 = !DILocation(line: 469, column: 6, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 469, column: 6)
!5503 = !DILocation(line: 469, column: 11, scope: !5502)
!5504 = !DILocation(line: 469, column: 6, scope: !5408)
!5505 = !DILocation(line: 469, column: 26, scope: !5502)
!5506 = !DILocation(line: 470, column: 6, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 470, column: 6)
!5508 = !DILocation(line: 470, column: 11, scope: !5507)
!5509 = !DILocation(line: 470, column: 6, scope: !5408)
!5510 = !DILocation(line: 470, column: 26, scope: !5507)
!5511 = !DILocation(line: 471, column: 6, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 471, column: 6)
!5513 = !DILocation(line: 471, column: 11, scope: !5512)
!5514 = !DILocation(line: 471, column: 6, scope: !5408)
!5515 = !DILocation(line: 471, column: 26, scope: !5512)
!5516 = !DILocation(line: 472, column: 6, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 472, column: 6)
!5518 = !DILocation(line: 472, column: 11, scope: !5517)
!5519 = !DILocation(line: 472, column: 6, scope: !5408)
!5520 = !DILocation(line: 472, column: 26, scope: !5517)
!5521 = !DILocation(line: 473, column: 6, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 473, column: 6)
!5523 = !DILocation(line: 473, column: 11, scope: !5522)
!5524 = !DILocation(line: 473, column: 6, scope: !5408)
!5525 = !DILocation(line: 473, column: 26, scope: !5522)
!5526 = !DILocation(line: 474, column: 6, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 474, column: 6)
!5528 = !DILocation(line: 474, column: 11, scope: !5527)
!5529 = !DILocation(line: 474, column: 6, scope: !5408)
!5530 = !DILocation(line: 474, column: 27, scope: !5527)
!5531 = !DILocation(line: 475, column: 6, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 475, column: 6)
!5533 = !DILocation(line: 475, column: 11, scope: !5532)
!5534 = !DILocation(line: 475, column: 6, scope: !5408)
!5535 = !DILocation(line: 475, column: 32, scope: !5532)
!5536 = !DILocation(line: 477, column: 50, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5408, file: !4751, line: 477, column: 6)
!5538 = !DILocation(line: 477, column: 6, scope: !5408)
!5539 = !DILocation(line: 478, column: 3, scope: !5537)
!5540 = !DILocation(line: 478, column: 3, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5542, file: !4751, line: 478, column: 3)
!5542 = distinct !DILexicalBlock(scope: !5537, file: !4751, line: 478, column: 3)
!5543 = !{i32 -2141122996}
!5544 = !DILocation(line: 478, column: 3, scope: !5542)
!5545 = !DILocation(line: 480, column: 3, scope: !5537)
!5546 = !DILocation(line: 480, column: 3, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5537, file: !4751, line: 480, column: 3)
!5548 = !DILocation(line: 480, column: 3, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5547, file: !4751, line: 480, column: 3)
!5550 = !DILocation(line: 480, column: 3, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5547, file: !4751, line: 480, column: 3)
!5552 = !{i64 2153844503, i64 2153844532, i64 2153844578, i64 2153844636, i64 2153844690, i64 2153844744, i64 2153844799, i64 2153844830}
!5553 = !DILocation(line: 483, column: 2, scope: !5408)
!5554 = !DILocation(line: 484, column: 1, scope: !5408)
!5555 = !DISubprogram(name: "kmalloc_trace", scope: !4751, file: !4751, line: 525, type: !5556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5556 = !DISubroutineType(types: !5557)
!5557 = !{!23, !5558, !866, !814}
!5558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5559, size: 64)
!5559 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5560, line: 325, flags: DIFlagFwdDecl)
!5560 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5561 = distinct !DISubprogram(name: "kmalloc_type", scope: !4751, file: !4751, line: 401, type: !5562, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5564)
!5562 = !DISubroutineType(types: !5563)
!5563 = !{!4750, !866, !47}
!5564 = !{!5565, !5566}
!5565 = !DILocalVariable(name: "flags", arg: 1, scope: !5561, file: !4751, line: 401, type: !866)
!5566 = !DILocalVariable(name: "caller", arg: 2, scope: !5561, file: !4751, line: 401, type: !47)
!5567 = !DILocation(line: 401, column: 67, scope: !5561)
!5568 = !DILocation(line: 401, column: 88, scope: !5561)
!5569 = !DILocation(line: 407, column: 6, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5561, file: !4751, line: 407, column: 6)
!5571 = !DILocation(line: 407, column: 6, scope: !5561)
!5572 = !DILocation(line: 413, column: 3, scope: !5570)
!5573 = !DILocation(line: 423, column: 38, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5561, file: !4751, line: 423, column: 6)
!5575 = !DILocation(line: 423, column: 44, scope: !5574)
!5576 = !DILocation(line: 423, column: 6, scope: !5561)
!5577 = !DILocation(line: 424, column: 3, scope: !5574)
!5578 = !DILocation(line: 426, column: 3, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5561, file: !4751, line: 425, column: 6)
!5580 = !DILocation(line: 429, column: 1, scope: !5561)
!5581 = !DISubprogram(name: "__kmalloc", scope: !4751, file: !4751, line: 488, type: !5009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5582 = !DISubprogram(name: "__compiletime_assert_263", scope: !4751, file: !4751, line: 478, type: !2064, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5583 = distinct !DISubprogram(name: "serio_pause_rx", scope: !4544, file: !4544, line: 155, type: !4569, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5584)
!5584 = !{!5585}
!5585 = !DILocalVariable(name: "serio", arg: 1, scope: !5583, file: !4544, line: 155, type: !4542)
!5586 = !DILocation(line: 155, column: 49, scope: !5583)
!5587 = !DILocation(line: 157, column: 17, scope: !5583)
!5588 = !DILocation(line: 157, column: 24, scope: !5583)
!5589 = !DILocation(line: 157, column: 2, scope: !5583)
!5590 = !DILocation(line: 158, column: 1, scope: !5583)
!5591 = distinct !DISubprogram(name: "byd_report_input", scope: !2, file: !2, line: 236, type: !4737, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5592)
!5592 = !{!5593, !5594, !5595}
!5593 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5591, file: !2, line: 236, type: !18)
!5594 = !DILocalVariable(name: "priv", scope: !5591, file: !2, line: 238, type: !4764)
!5595 = !DILocalVariable(name: "dev", scope: !5591, file: !2, line: 239, type: !25)
!5596 = !DILocation(line: 236, column: 46, scope: !5591)
!5597 = !DILocation(line: 238, column: 2, scope: !5591)
!5598 = !DILocation(line: 238, column: 19, scope: !5591)
!5599 = !DILocation(line: 238, column: 26, scope: !5591)
!5600 = !DILocation(line: 238, column: 35, scope: !5591)
!5601 = !DILocation(line: 239, column: 2, scope: !5591)
!5602 = !DILocation(line: 239, column: 20, scope: !5591)
!5603 = !DILocation(line: 239, column: 26, scope: !5591)
!5604 = !DILocation(line: 239, column: 35, scope: !5591)
!5605 = !DILocation(line: 241, column: 19, scope: !5591)
!5606 = !DILocation(line: 241, column: 35, scope: !5591)
!5607 = !DILocation(line: 241, column: 41, scope: !5591)
!5608 = !DILocation(line: 241, column: 2, scope: !5591)
!5609 = !DILocation(line: 242, column: 19, scope: !5591)
!5610 = !DILocation(line: 242, column: 41, scope: !5591)
!5611 = !DILocation(line: 242, column: 47, scope: !5591)
!5612 = !DILocation(line: 242, column: 2, scope: !5591)
!5613 = !DILocation(line: 244, column: 19, scope: !5591)
!5614 = !DILocation(line: 244, column: 31, scope: !5591)
!5615 = !DILocation(line: 244, column: 37, scope: !5591)
!5616 = !DILocation(line: 244, column: 2, scope: !5591)
!5617 = !DILocation(line: 245, column: 19, scope: !5591)
!5618 = !DILocation(line: 245, column: 31, scope: !5591)
!5619 = !DILocation(line: 245, column: 37, scope: !5591)
!5620 = !DILocation(line: 245, column: 2, scope: !5591)
!5621 = !DILocation(line: 246, column: 19, scope: !5591)
!5622 = !DILocation(line: 246, column: 34, scope: !5591)
!5623 = !DILocation(line: 246, column: 40, scope: !5591)
!5624 = !DILocation(line: 246, column: 2, scope: !5591)
!5625 = !DILocation(line: 247, column: 19, scope: !5591)
!5626 = !DILocation(line: 247, column: 35, scope: !5591)
!5627 = !DILocation(line: 247, column: 41, scope: !5591)
!5628 = !DILocation(line: 247, column: 2, scope: !5591)
!5629 = !DILocation(line: 249, column: 13, scope: !5591)
!5630 = !DILocation(line: 249, column: 2, scope: !5591)
!5631 = !DILocation(line: 250, column: 1, scope: !5591)
!5632 = distinct !DISubprogram(name: "serio_continue_rx", scope: !4544, file: !4544, line: 160, type: !4569, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5633)
!5633 = !{!5634}
!5634 = !DILocalVariable(name: "serio", arg: 1, scope: !5632, file: !4544, line: 160, type: !4542)
!5635 = !DILocation(line: 160, column: 52, scope: !5632)
!5636 = !DILocation(line: 162, column: 19, scope: !5632)
!5637 = !DILocation(line: 162, column: 26, scope: !5632)
!5638 = !DILocation(line: 162, column: 2, scope: !5632)
!5639 = !DILocation(line: 163, column: 1, scope: !5632)
!5640 = distinct !DISubprogram(name: "spin_lock_irq", scope: !5641, file: !5641, line: 374, type: !5642, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5645)
!5641 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5642 = !DISubroutineType(types: !5643)
!5643 = !{null, !5644}
!5644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!5645 = !{!5646}
!5646 = !DILocalVariable(name: "lock", arg: 1, scope: !5640, file: !5641, line: 374, type: !5644)
!5647 = !DILocation(line: 374, column: 55, scope: !5640)
!5648 = !DILocation(line: 376, column: 2, scope: !5640)
!5649 = !DILocation(line: 377, column: 1, scope: !5640)
!5650 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !5651, file: !5651, line: 29, type: !5652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5651 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5652 = !DISubroutineType(types: !5653)
!5653 = !{null, !5654}
!5654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!5655 = distinct !DISubprogram(name: "input_report_key", scope: !27, file: !27, line: 423, type: !5354, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5656)
!5656 = !{!5657, !5658, !5659}
!5657 = !DILocalVariable(name: "dev", arg: 1, scope: !5655, file: !27, line: 423, type: !25)
!5658 = !DILocalVariable(name: "code", arg: 2, scope: !5655, file: !27, line: 423, type: !66)
!5659 = !DILocalVariable(name: "value", arg: 3, scope: !5655, file: !27, line: 423, type: !17)
!5660 = !DILocation(line: 423, column: 55, scope: !5655)
!5661 = !DILocation(line: 423, column: 73, scope: !5655)
!5662 = !DILocation(line: 423, column: 83, scope: !5655)
!5663 = !DILocation(line: 425, column: 14, scope: !5655)
!5664 = !DILocation(line: 425, column: 27, scope: !5655)
!5665 = !DILocation(line: 425, column: 35, scope: !5655)
!5666 = !DILocation(line: 425, column: 34, scope: !5655)
!5667 = !DILocation(line: 425, column: 33, scope: !5655)
!5668 = !DILocation(line: 425, column: 2, scope: !5655)
!5669 = !DILocation(line: 426, column: 1, scope: !5655)
!5670 = distinct !DISubprogram(name: "input_report_abs", scope: !27, file: !27, line: 433, type: !5354, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5671)
!5671 = !{!5672, !5673, !5674}
!5672 = !DILocalVariable(name: "dev", arg: 1, scope: !5670, file: !27, line: 433, type: !25)
!5673 = !DILocalVariable(name: "code", arg: 2, scope: !5670, file: !27, line: 433, type: !66)
!5674 = !DILocalVariable(name: "value", arg: 3, scope: !5670, file: !27, line: 433, type: !17)
!5675 = !DILocation(line: 433, column: 55, scope: !5670)
!5676 = !DILocation(line: 433, column: 73, scope: !5670)
!5677 = !DILocation(line: 433, column: 83, scope: !5670)
!5678 = !DILocation(line: 435, column: 14, scope: !5670)
!5679 = !DILocation(line: 435, column: 27, scope: !5670)
!5680 = !DILocation(line: 435, column: 33, scope: !5670)
!5681 = !DILocation(line: 435, column: 2, scope: !5670)
!5682 = !DILocation(line: 436, column: 1, scope: !5670)
!5683 = distinct !DISubprogram(name: "input_sync", scope: !27, file: !27, line: 448, type: !4019, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5684)
!5684 = !{!5685}
!5685 = !DILocalVariable(name: "dev", arg: 1, scope: !5683, file: !27, line: 448, type: !25)
!5686 = !DILocation(line: 448, column: 49, scope: !5683)
!5687 = !DILocation(line: 450, column: 14, scope: !5683)
!5688 = !DILocation(line: 450, column: 2, scope: !5683)
!5689 = !DILocation(line: 451, column: 1, scope: !5683)
!5690 = !DISubprogram(name: "input_event", scope: !27, file: !27, line: 420, type: !5691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5691 = !DISubroutineType(types: !5692)
!5692 = !{null, !25, !66, !66, !17}
!5693 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !5641, file: !5641, line: 399, type: !5642, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5694)
!5694 = !{!5695}
!5695 = !DILocalVariable(name: "lock", arg: 1, scope: !5693, file: !5641, line: 399, type: !5644)
!5696 = !DILocation(line: 399, column: 57, scope: !5693)
!5697 = !DILocation(line: 401, column: 2, scope: !5693)
!5698 = !DILocation(line: 402, column: 1, scope: !5693)
!5699 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !5651, file: !5651, line: 41, type: !5652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5700 = distinct !DISubprogram(name: "del_timer", scope: !1960, file: !1960, line: 211, type: !5701, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5703)
!5701 = !DISubroutineType(types: !5702)
!5702 = !{!17, !1968}
!5703 = !{!5704}
!5704 = !DILocalVariable(name: "timer", arg: 1, scope: !5700, file: !1960, line: 211, type: !1968)
!5705 = !DILocation(line: 211, column: 48, scope: !5700)
!5706 = !DILocation(line: 213, column: 22, scope: !5700)
!5707 = !DILocation(line: 213, column: 9, scope: !5700)
!5708 = !DILocation(line: 213, column: 2, scope: !5700)
!5709 = !DISubprogram(name: "kfree", scope: !4751, file: !4751, line: 227, type: !5710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5710 = !DISubroutineType(types: !5711)
!5711 = !{null, !1446}
!5712 = !DISubprogram(name: "timer_delete", scope: !1960, file: !1960, line: 186, type: !5701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5713 = distinct !DISubprogram(name: "ssleep", scope: !5714, file: !5714, line: 76, type: !5715, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5717)
!5714 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "305c363b0f511174031dc8979b58b410")
!5715 = !DISubroutineType(types: !5716)
!5716 = !{null, !66}
!5717 = !{!5718}
!5718 = !DILocalVariable(name: "seconds", arg: 1, scope: !5713, file: !5714, line: 76, type: !66)
!5719 = !DILocation(line: 76, column: 40, scope: !5713)
!5720 = !DILocation(line: 78, column: 9, scope: !5713)
!5721 = !DILocation(line: 78, column: 17, scope: !5713)
!5722 = !DILocation(line: 78, column: 2, scope: !5713)
!5723 = !DILocation(line: 79, column: 1, scope: !5713)
!5724 = !DISubprogram(name: "_dev_err", scope: !5725, file: !5725, line: 50, type: !5726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5725 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5726 = !DISubroutineType(types: !5727)
!5727 = !{null, !4133, !30, null}
!5728 = !DISubprogram(name: "msleep", scope: !5714, file: !5714, line: 61, type: !5715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5729 = !DISubprogram(name: "_dev_warn", scope: !5725, file: !5725, line: 52, type: !5726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5730 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !5731, file: !5731, line: 515, type: !5732, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5734)
!5731 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!5732 = !DISubroutineType(types: !5733)
!5733 = !{!47, !3765}
!5734 = !{!5735}
!5735 = !DILocalVariable(name: "m", arg: 1, scope: !5730, file: !5731, line: 515, type: !3765)
!5736 = !DILocation(line: 515, column: 74, scope: !5730)
!5737 = !DILocation(line: 517, column: 27, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5730, file: !5731, line: 517, column: 6)
!5739 = !DILocation(line: 517, column: 6, scope: !5738)
!5740 = !DILocation(line: 517, column: 6, scope: !5730)
!5741 = !DILocation(line: 518, column: 12, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5743, file: !5731, line: 518, column: 7)
!5743 = distinct !DILexicalBlock(scope: !5738, file: !5731, line: 517, column: 31)
!5744 = !DILocation(line: 518, column: 14, scope: !5742)
!5745 = !DILocation(line: 518, column: 7, scope: !5743)
!5746 = !DILocation(line: 519, column: 4, scope: !5742)
!5747 = !DILocation(line: 520, column: 28, scope: !5743)
!5748 = !DILocation(line: 520, column: 10, scope: !5743)
!5749 = !DILocation(line: 520, column: 3, scope: !5743)
!5750 = !DILocation(line: 522, column: 29, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5738, file: !5731, line: 521, column: 9)
!5752 = !DILocation(line: 522, column: 10, scope: !5751)
!5753 = !DILocation(line: 522, column: 3, scope: !5751)
!5754 = !DILocation(line: 524, column: 1, scope: !5730)
!5755 = !DISubprogram(name: "mod_timer", scope: !1960, file: !1960, line: 172, type: !5756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5756 = !DISubroutineType(types: !5757)
!5757 = !{!17, !1968, !47}
!5758 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !5731, file: !5731, line: 458, type: !5732, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5759)
!5759 = !{!5760}
!5760 = !DILocalVariable(name: "m", arg: 1, scope: !5758, file: !5731, line: 458, type: !3765)
!5761 = !DILocation(line: 458, column: 66, scope: !5758)
!5762 = !DILocation(line: 460, column: 10, scope: !5758)
!5763 = !DILocation(line: 460, column: 12, scope: !5758)
!5764 = !DILocation(line: 460, column: 34, scope: !5758)
!5765 = !DILocation(line: 460, column: 39, scope: !5758)
!5766 = !DILocation(line: 460, column: 2, scope: !5758)
!5767 = !DISubprogram(name: "__msecs_to_jiffies", scope: !5731, file: !5731, line: 451, type: !5732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5768 = distinct !DISubprogram(name: "instrument_write", scope: !5769, file: !5769, line: 38, type: !5770, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5775)
!5769 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5770 = !DISubroutineType(types: !5771)
!5771 = !{null, !5772, !814}
!5772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5773, size: 64)
!5773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5774)
!5774 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5775 = !{!5776, !5777}
!5776 = !DILocalVariable(name: "v", arg: 1, scope: !5768, file: !5769, line: 38, type: !5772)
!5777 = !DILocalVariable(name: "size", arg: 2, scope: !5768, file: !5769, line: 38, type: !814)
!5778 = !DILocation(line: 38, column: 67, scope: !5768)
!5779 = !DILocation(line: 38, column: 77, scope: !5768)
!5780 = !DILocation(line: 40, column: 20, scope: !5768)
!5781 = !DILocation(line: 40, column: 23, scope: !5768)
!5782 = !DILocation(line: 40, column: 2, scope: !5768)
!5783 = !DILocation(line: 41, column: 2, scope: !5768)
!5784 = !DILocation(line: 42, column: 1, scope: !5768)
!5785 = distinct !DISubprogram(name: "arch___set_bit", scope: !5786, file: !5786, line: 66, type: !5278, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5787)
!5786 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5787 = !{!5788, !5789}
!5788 = !DILocalVariable(name: "nr", arg: 1, scope: !5785, file: !5786, line: 66, type: !47)
!5789 = !DILocalVariable(name: "addr", arg: 2, scope: !5785, file: !5786, line: 66, type: !5280)
!5790 = !DILocation(line: 66, column: 30, scope: !5785)
!5791 = !DILocation(line: 66, column: 58, scope: !5785)
!5792 = !DILocation(line: 68, column: 44, scope: !5785)
!5793 = !DILocation(line: 68, column: 56, scope: !5785)
!5794 = !DILocation(line: 68, column: 2, scope: !5785)
!5795 = !{i64 2147916961}
!5796 = !DILocation(line: 69, column: 1, scope: !5785)
!5797 = distinct !DISubprogram(name: "kasan_check_write", scope: !5798, file: !5798, line: 44, type: !5799, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5801)
!5798 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5799 = !DISubroutineType(types: !5800)
!5800 = !{!495, !5772, !66}
!5801 = !{!5802, !5803}
!5802 = !DILocalVariable(name: "p", arg: 1, scope: !5797, file: !5798, line: 44, type: !5772)
!5803 = !DILocalVariable(name: "size", arg: 2, scope: !5797, file: !5798, line: 44, type: !66)
!5804 = !DILocation(line: 44, column: 59, scope: !5797)
!5805 = !DILocation(line: 44, column: 75, scope: !5797)
!5806 = !DILocation(line: 46, column: 2, scope: !5797)
!5807 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5808, file: !5808, line: 229, type: !5809, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5811)
!5808 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5809 = !DISubroutineType(types: !5810)
!5810 = !{null, !5772, !814, !17}
!5811 = !{!5812, !5813, !5814}
!5812 = !DILocalVariable(name: "ptr", arg: 1, scope: !5807, file: !5808, line: 229, type: !5772)
!5813 = !DILocalVariable(name: "size", arg: 2, scope: !5807, file: !5808, line: 229, type: !814)
!5814 = !DILocalVariable(name: "type", arg: 3, scope: !5807, file: !5808, line: 230, type: !17)
!5815 = !DILocation(line: 229, column: 60, scope: !5807)
!5816 = !DILocation(line: 229, column: 72, scope: !5807)
!5817 = !DILocation(line: 230, column: 15, scope: !5807)
!5818 = !DILocation(line: 230, column: 23, scope: !5807)
!5819 = distinct !DISubprogram(name: "arch___clear_bit", scope: !5786, file: !5786, line: 92, type: !5278, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4743, retainedNodes: !5820)
!5820 = !{!5821, !5822}
!5821 = !DILocalVariable(name: "nr", arg: 1, scope: !5819, file: !5786, line: 92, type: !47)
!5822 = !DILocalVariable(name: "addr", arg: 2, scope: !5819, file: !5786, line: 92, type: !5280)
!5823 = !DILocation(line: 92, column: 32, scope: !5819)
!5824 = !DILocation(line: 92, column: 60, scope: !5819)
!5825 = !DILocation(line: 94, column: 44, scope: !5819)
!5826 = !DILocation(line: 94, column: 56, scope: !5819)
!5827 = !DILocation(line: 94, column: 2, scope: !5819)
!5828 = !{i64 2147918494}
!5829 = !DILocation(line: 95, column: 1, scope: !5819)
!5830 = !DISubprogram(name: "input_alloc_absinfo", scope: !27, file: !27, line: 475, type: !4019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
