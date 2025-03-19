; ModuleID = 'drivers/input/mouse/psmouse-smbus.c'
source_filename = "drivers/input/mouse/psmouse-smbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.psmouse_smbus_dev = type { %struct.i2c_board_info, ptr, ptr, %struct.list_head, i8, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i64, i64, i64, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i64, [8 x i8], i8, i8, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr }
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
%struct.psmouse_smbus_removal_work = type { %struct.work_struct, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i64, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, [2 x i64] }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr }

@psmouse_smbus_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @psmouse_smbus_mutex, i64 16), ptr getelementptr (i8, ptr @psmouse_smbus_mutex, i64 16) } }, align 8, !dbg !0
@psmouse_smbus_list = internal global %struct.list_head { ptr @psmouse_smbus_list, ptr @psmouse_smbus_list }, align 8, !dbg !5912
@.str = private unnamed_addr constant [63 x i8] c"psmouse_smbus: failed to set up link with iSMBus companion %s\0A\00", align 1, !dbg !5899
@.str.1 = private unnamed_addr constant [14 x i8] c"psmouse-smbus\00", align 1, !dbg !5904
@psmouse_smbus_wq = internal global ptr null, align 8, !dbg !5910
@i2c_bus_type = external dso_local global %struct.bus_type, align 8
@psmouse_smbus_notifier = internal global %struct.notifier_block { ptr @psmouse_smbus_notifier_call, ptr null, i32 0 }, align 8, !dbg !5927
@.str.2 = private unnamed_addr constant [52 x i8] c"\013psmouse: failed to register i2c bus notifier: %d\0A\00", align 1, !dbg !5907
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5914
@psmouse_smbus_schedule_remove.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5919
@i2c_adapter_type = external dso_local global %struct.device_type, align 8
@i2c_client_type = external dso_local global %struct.device_type, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @psmouse_smbus_cleanup(ptr noundef %psmouse) #0 align 16 !dbg !5949 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %smbdev = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !5951, metadata !DIExpression()), !dbg !5962
  call void @llvm.lifetime.start.p0(i64 8, ptr %smbdev) #17, !dbg !5963
  call void @llvm.dbg.declare(metadata ptr %smbdev, metadata !5952, metadata !DIExpression()), !dbg !5964
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #17, !dbg !5963
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5953, metadata !DIExpression()), !dbg !5965
  call void @mutex_lock(ptr noundef @psmouse_smbus_mutex) #18, !dbg !5966
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5967
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5954, metadata !DIExpression()), !dbg !5967
  %0 = load ptr, ptr @psmouse_smbus_list, align 8, !dbg !5967
  store ptr %0, ptr %__mptr, align 8, !dbg !5967
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5967
  %add.ptr = getelementptr i8, ptr %1, i64 -96, !dbg !5967
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !5967
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5968
  %2 = load ptr, ptr %tmp1, align 8, !dbg !5967
  store ptr %2, ptr %smbdev, align 8, !dbg !5968
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #17, !dbg !5969
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !5957, metadata !DIExpression()), !dbg !5969
  %3 = load ptr, ptr %smbdev, align 8, !dbg !5969
  %node = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %3, i32 0, i32 3, !dbg !5969
  %next = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 0, !dbg !5969
  %4 = load ptr, ptr %next, align 8, !dbg !5969
  store ptr %4, ptr %__mptr2, align 8, !dbg !5969
  %5 = load ptr, ptr %__mptr2, align 8, !dbg !5969
  %add.ptr4 = getelementptr i8, ptr %5, i64 -96, !dbg !5969
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !5969
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #17, !dbg !5968
  %6 = load ptr, ptr %tmp3, align 8, !dbg !5969
  store ptr %6, ptr %tmp, align 8, !dbg !5968
  br label %for.cond, !dbg !5968

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %smbdev, align 8, !dbg !5970
  %node5 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %7, i32 0, i32 3, !dbg !5970
  %cmp = icmp eq ptr %node5, @psmouse_smbus_list, !dbg !5970
  %lnot = xor i1 %cmp, true, !dbg !5970
  br i1 %lnot, label %for.body, label %for.end, !dbg !5968

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %psmouse.addr, align 8, !dbg !5971
  %9 = load ptr, ptr %smbdev, align 8, !dbg !5974
  %psmouse6 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %9, i32 0, i32 1, !dbg !5975
  %10 = load ptr, ptr %psmouse6, align 8, !dbg !5975
  %cmp7 = icmp eq ptr %8, %10, !dbg !5976
  br i1 %cmp7, label %if.then, label %if.end, !dbg !5977

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %smbdev, align 8, !dbg !5978
  %node8 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %11, i32 0, i32 3, !dbg !5980
  call void @list_del(ptr noundef %node8) #18, !dbg !5981
  %12 = load ptr, ptr %smbdev, align 8, !dbg !5982
  call void @kfree(ptr noundef %12) #18, !dbg !5983
  br label %if.end, !dbg !5984

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !5985

for.inc:                                          ; preds = %if.end
  %13 = load ptr, ptr %tmp, align 8, !dbg !5970
  store ptr %13, ptr %smbdev, align 8, !dbg !5970
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #17, !dbg !5986
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !5959, metadata !DIExpression()), !dbg !5986
  %14 = load ptr, ptr %tmp, align 8, !dbg !5986
  %node10 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %14, i32 0, i32 3, !dbg !5986
  %next11 = getelementptr inbounds %struct.list_head, ptr %node10, i32 0, i32 0, !dbg !5986
  %15 = load ptr, ptr %next11, align 8, !dbg !5986
  store ptr %15, ptr %__mptr9, align 8, !dbg !5986
  %16 = load ptr, ptr %__mptr9, align 8, !dbg !5986
  %add.ptr13 = getelementptr i8, ptr %16, i64 -96, !dbg !5986
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !5986
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #17, !dbg !5970
  %17 = load ptr, ptr %tmp12, align 8, !dbg !5986
  store ptr %17, ptr %tmp, align 8, !dbg !5970
  br label %for.cond, !dbg !5970, !llvm.loop !5987

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @psmouse_smbus_mutex) #18, !dbg !5991
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #17, !dbg !5992
  call void @llvm.lifetime.end.p0(i64 8, ptr %smbdev) #17, !dbg !5992
  ret void, !dbg !5992
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5993 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !5996 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6001, metadata !DIExpression()), !dbg !6002
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6003
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !6004
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6005
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6006
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6007
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6008
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6009
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6010
  ret void, !dbg !6011
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6012 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6015 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @psmouse_smbus_init(ptr noundef %psmouse, ptr noundef %board, ptr noundef %pdata, i64 noundef %pdata_size, i1 noundef zeroext %need_deactivate, i1 noundef zeroext %leave_breadcrumbs) #0 align 16 !dbg !6016 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca ptr, align 8
  %board.addr = alloca ptr, align 8
  %pdata.addr = alloca ptr, align 8
  %pdata_size.addr = alloca i64, align 8
  %need_deactivate.addr = alloca i8, align 1
  %leave_breadcrumbs.addr = alloca i8, align 1
  %smbdev = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !6022, metadata !DIExpression()), !dbg !6030
  store ptr %board, ptr %board.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %board.addr, metadata !6023, metadata !DIExpression()), !dbg !6031
  store ptr %pdata, ptr %pdata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdata.addr, metadata !6024, metadata !DIExpression()), !dbg !6032
  store i64 %pdata_size, ptr %pdata_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdata_size.addr, metadata !6025, metadata !DIExpression()), !dbg !6033
  %frombool = zext i1 %need_deactivate to i8
  store i8 %frombool, ptr %need_deactivate.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %need_deactivate.addr, metadata !6026, metadata !DIExpression()), !dbg !6034
  %frombool1 = zext i1 %leave_breadcrumbs to i8
  store i8 %frombool1, ptr %leave_breadcrumbs.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %leave_breadcrumbs.addr, metadata !6027, metadata !DIExpression()), !dbg !6035
  call void @llvm.lifetime.start.p0(i64 8, ptr %smbdev) #17, !dbg !6036
  call void @llvm.dbg.declare(metadata ptr %smbdev, metadata !6028, metadata !DIExpression()), !dbg !6037
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !6038
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6029, metadata !DIExpression()), !dbg !6039
  %call = call noalias ptr @kzalloc(i64 noundef 120, i32 noundef 3264) #19, !dbg !6040
  store ptr %call, ptr %smbdev, align 8, !dbg !6041
  %0 = load ptr, ptr %smbdev, align 8, !dbg !6042
  %tobool = icmp ne ptr %0, null, !dbg !6042
  br i1 %tobool, label %if.end, label %if.then, !dbg !6044

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6045
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6045

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %psmouse.addr, align 8, !dbg !6046
  %2 = load ptr, ptr %smbdev, align 8, !dbg !6047
  %psmouse2 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %2, i32 0, i32 1, !dbg !6048
  store ptr %1, ptr %psmouse2, align 8, !dbg !6049
  %3 = load ptr, ptr %smbdev, align 8, !dbg !6050
  %board3 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %3, i32 0, i32 0, !dbg !6051
  %4 = load ptr, ptr %board.addr, align 8, !dbg !6052
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %board3, ptr align 8 %4, i64 80, i1 false), !dbg !6053
  %5 = load i8, ptr %need_deactivate.addr, align 1, !dbg !6054, !range !6055, !noundef !1123
  %tobool4 = trunc i8 %5 to i1, !dbg !6054
  %6 = load ptr, ptr %smbdev, align 8, !dbg !6056
  %need_deactivate5 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %6, i32 0, i32 5, !dbg !6057
  %frombool6 = zext i1 %tobool4 to i8, !dbg !6058
  store i8 %frombool6, ptr %need_deactivate5, align 1, !dbg !6058
  %7 = load ptr, ptr %pdata.addr, align 8, !dbg !6059
  %tobool7 = icmp ne ptr %7, null, !dbg !6059
  br i1 %tobool7, label %if.then8, label %if.end16, !dbg !6061

if.then8:                                         ; preds = %if.end
  %8 = load ptr, ptr %pdata.addr, align 8, !dbg !6062
  %9 = load i64, ptr %pdata_size.addr, align 8, !dbg !6064
  %call9 = call ptr @kmemdup(ptr noundef %8, i64 noundef %9, i32 noundef 3264) #20, !dbg !6065
  %10 = load ptr, ptr %smbdev, align 8, !dbg !6066
  %board10 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %10, i32 0, i32 0, !dbg !6067
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %board10, i32 0, i32 4, !dbg !6068
  store ptr %call9, ptr %platform_data, align 8, !dbg !6069
  %11 = load ptr, ptr %smbdev, align 8, !dbg !6070
  %board11 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %11, i32 0, i32 0, !dbg !6072
  %platform_data12 = getelementptr inbounds %struct.i2c_board_info, ptr %board11, i32 0, i32 4, !dbg !6073
  %12 = load ptr, ptr %platform_data12, align 8, !dbg !6073
  %tobool13 = icmp ne ptr %12, null, !dbg !6070
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !6074

if.then14:                                        ; preds = %if.then8
  %13 = load ptr, ptr %smbdev, align 8, !dbg !6075
  call void @kfree(ptr noundef %13) #18, !dbg !6077
  store i32 -12, ptr %retval, align 4, !dbg !6078
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6078

if.end15:                                         ; preds = %if.then8
  br label %if.end16, !dbg !6079

if.end16:                                         ; preds = %if.end15, %if.end
  %14 = load i8, ptr %need_deactivate.addr, align 1, !dbg !6080, !range !6055, !noundef !1123
  %tobool17 = trunc i8 %14 to i1, !dbg !6080
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !6082

if.then18:                                        ; preds = %if.end16
  %15 = load ptr, ptr %psmouse.addr, align 8, !dbg !6083
  %call19 = call i32 @psmouse_deactivate(ptr noundef %15) #18, !dbg !6084
  br label %if.end20, !dbg !6084

if.end20:                                         ; preds = %if.then18, %if.end16
  %16 = load ptr, ptr %smbdev, align 8, !dbg !6085
  %17 = load ptr, ptr %psmouse.addr, align 8, !dbg !6086
  %private = getelementptr inbounds %struct.psmouse, ptr %17, i32 0, i32 0, !dbg !6087
  store ptr %16, ptr %private, align 8, !dbg !6088
  %18 = load ptr, ptr %psmouse.addr, align 8, !dbg !6089
  %protocol_handler = getelementptr inbounds %struct.psmouse, ptr %18, i32 0, i32 26, !dbg !6090
  store ptr @psmouse_smbus_process_byte, ptr %protocol_handler, align 8, !dbg !6091
  %19 = load ptr, ptr %psmouse.addr, align 8, !dbg !6092
  %reconnect = getelementptr inbounds %struct.psmouse, ptr %19, i32 0, i32 30, !dbg !6093
  store ptr @psmouse_smbus_reconnect, ptr %reconnect, align 8, !dbg !6094
  %20 = load ptr, ptr %psmouse.addr, align 8, !dbg !6095
  %fast_reconnect = getelementptr inbounds %struct.psmouse, ptr %20, i32 0, i32 31, !dbg !6096
  store ptr @psmouse_smbus_reconnect, ptr %fast_reconnect, align 8, !dbg !6097
  %21 = load ptr, ptr %psmouse.addr, align 8, !dbg !6098
  %disconnect = getelementptr inbounds %struct.psmouse, ptr %21, i32 0, i32 32, !dbg !6099
  store ptr @psmouse_smbus_disconnect, ptr %disconnect, align 8, !dbg !6100
  %22 = load ptr, ptr %psmouse.addr, align 8, !dbg !6101
  %resync_time = getelementptr inbounds %struct.psmouse, ptr %22, i32 0, i32 24, !dbg !6102
  store i32 0, ptr %resync_time, align 8, !dbg !6103
  call void @mutex_lock(ptr noundef @psmouse_smbus_mutex) #18, !dbg !6104
  %23 = load ptr, ptr %smbdev, align 8, !dbg !6105
  %node = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %23, i32 0, i32 3, !dbg !6106
  call void @list_add_tail(ptr noundef %node, ptr noundef @psmouse_smbus_list) #18, !dbg !6107
  call void @mutex_unlock(ptr noundef @psmouse_smbus_mutex) #18, !dbg !6108
  %24 = load ptr, ptr %smbdev, align 8, !dbg !6109
  %call21 = call i32 @i2c_for_each_dev(ptr noundef %24, ptr noundef @psmouse_smbus_create_companion) #18, !dbg !6110
  store i32 %call21, ptr %error, align 4, !dbg !6111
  %25 = load ptr, ptr %smbdev, align 8, !dbg !6112
  %client = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %25, i32 0, i32 2, !dbg !6114
  %26 = load ptr, ptr %client, align 8, !dbg !6114
  %tobool22 = icmp ne ptr %26, null, !dbg !6112
  br i1 %tobool22, label %if.then23, label %if.end36, !dbg !6115

if.then23:                                        ; preds = %if.end20
  %27 = load ptr, ptr %smbdev, align 8, !dbg !6116
  %client24 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %27, i32 0, i32 2, !dbg !6119
  %28 = load ptr, ptr %client24, align 8, !dbg !6119
  %dev = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4, !dbg !6120
  %29 = load ptr, ptr %psmouse.addr, align 8, !dbg !6121
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %29, i32 0, i32 2, !dbg !6122
  %serio = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 0, !dbg !6123
  %30 = load ptr, ptr %serio, align 8, !dbg !6123
  %dev25 = getelementptr inbounds %struct.serio, ptr %30, i32 0, i32 18, !dbg !6124
  %call26 = call ptr @device_link_add(ptr noundef %dev, ptr noundef %dev25, i32 noundef 1) #18, !dbg !6125
  %tobool27 = icmp ne ptr %call26, null, !dbg !6125
  br i1 %tobool27, label %if.end35, label %if.then28, !dbg !6126

if.then28:                                        ; preds = %if.then23
  br label %do.body, !dbg !6127

do.body:                                          ; preds = %if.then28
  br label %do.cond, !dbg !6129

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6129

do.end:                                           ; preds = %do.cond
  %31 = load ptr, ptr %psmouse.addr, align 8, !dbg !6127
  %ps2dev29 = getelementptr inbounds %struct.psmouse, ptr %31, i32 0, i32 2, !dbg !6127
  %serio30 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev29, i32 0, i32 0, !dbg !6127
  %32 = load ptr, ptr %serio30, align 8, !dbg !6127
  %dev31 = getelementptr inbounds %struct.serio, ptr %32, i32 0, i32 18, !dbg !6127
  %33 = load ptr, ptr %smbdev, align 8, !dbg !6127
  %client32 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %33, i32 0, i32 2, !dbg !6127
  %34 = load ptr, ptr %client32, align 8, !dbg !6127
  %dev33 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4, !dbg !6127
  %call34 = call ptr @dev_name(ptr noundef %dev33) #18, !dbg !6127
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev31, ptr noundef @.str, ptr noundef %call34) #21, !dbg !6127
  br label %if.end35, !dbg !6131

if.end35:                                         ; preds = %do.end, %if.then23
  store i32 0, ptr %retval, align 4, !dbg !6132
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6132

if.end36:                                         ; preds = %if.end20
  %35 = load ptr, ptr %smbdev, align 8, !dbg !6133
  %board37 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %35, i32 0, i32 0, !dbg !6134
  %platform_data38 = getelementptr inbounds %struct.i2c_board_info, ptr %board37, i32 0, i32 4, !dbg !6135
  %36 = load ptr, ptr %platform_data38, align 8, !dbg !6135
  call void @kfree(ptr noundef %36) #18, !dbg !6136
  %37 = load ptr, ptr %smbdev, align 8, !dbg !6137
  %board39 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %37, i32 0, i32 0, !dbg !6138
  %platform_data40 = getelementptr inbounds %struct.i2c_board_info, ptr %board39, i32 0, i32 4, !dbg !6139
  store ptr null, ptr %platform_data40, align 8, !dbg !6140
  %38 = load i32, ptr %error, align 4, !dbg !6141
  %cmp = icmp slt i32 %38, 0, !dbg !6143
  br i1 %cmp, label %if.then42, label %lor.lhs.false, !dbg !6144

lor.lhs.false:                                    ; preds = %if.end36
  %39 = load i8, ptr %leave_breadcrumbs.addr, align 1, !dbg !6145, !range !6055, !noundef !1123
  %tobool41 = trunc i8 %39 to i1, !dbg !6145
  br i1 %tobool41, label %if.end44, label %if.then42, !dbg !6146

if.then42:                                        ; preds = %lor.lhs.false, %if.end36
  call void @mutex_lock(ptr noundef @psmouse_smbus_mutex) #18, !dbg !6147
  %40 = load ptr, ptr %smbdev, align 8, !dbg !6149
  %node43 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %40, i32 0, i32 3, !dbg !6150
  call void @list_del(ptr noundef %node43) #18, !dbg !6151
  call void @mutex_unlock(ptr noundef @psmouse_smbus_mutex) #18, !dbg !6152
  %41 = load ptr, ptr %smbdev, align 8, !dbg !6153
  call void @kfree(ptr noundef %41) #18, !dbg !6154
  br label %if.end44, !dbg !6155

if.end44:                                         ; preds = %if.then42, %lor.lhs.false
  %42 = load i32, ptr %error, align 4, !dbg !6156
  %cmp45 = icmp slt i32 %42, 0, !dbg !6157
  br i1 %cmp45, label %cond.true, label %cond.false, !dbg !6156

cond.true:                                        ; preds = %if.end44
  %43 = load i32, ptr %error, align 4, !dbg !6158
  br label %cond.end, !dbg !6156

cond.false:                                       ; preds = %if.end44
  br label %cond.end, !dbg !6156

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %43, %cond.true ], [ -11, %cond.false ], !dbg !6156
  store i32 %cond, ptr %retval, align 4, !dbg !6159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6159

cleanup:                                          ; preds = %cond.end, %if.end35, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !6160
  call void @llvm.lifetime.end.p0(i64 8, ptr %smbdev) #17, !dbg !6160
  %44 = load i32, ptr %retval, align 4, !dbg !6160
  ret i32 %44, !dbg !6160
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !6161 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6165, metadata !DIExpression()), !dbg !6167
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6166, metadata !DIExpression()), !dbg !6168
  %0 = load i64, ptr %size.addr, align 8, !dbg !6169
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6170
  %or = or i32 %1, 256, !dbg !6171
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !6172
  ret ptr %call, !dbg !6173
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !6174 dso_local ptr @kmemdup(ptr noundef, i64 noundef, i32 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6178 dso_local i32 @psmouse_deactivate(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @psmouse_smbus_process_byte(ptr noundef %psmouse) #0 align 16 !dbg !6179 {
entry:
  %psmouse.addr = alloca ptr, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !6181, metadata !DIExpression()), !dbg !6182
  ret i32 2, !dbg !6183
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @psmouse_smbus_reconnect(ptr noundef %psmouse) #0 align 16 !dbg !6184 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %smbdev = alloca ptr, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !6186, metadata !DIExpression()), !dbg !6188
  call void @llvm.lifetime.start.p0(i64 8, ptr %smbdev) #17, !dbg !6189
  call void @llvm.dbg.declare(metadata ptr %smbdev, metadata !6187, metadata !DIExpression()), !dbg !6190
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !6191
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !6192
  %1 = load ptr, ptr %private, align 8, !dbg !6192
  store ptr %1, ptr %smbdev, align 8, !dbg !6190
  %2 = load ptr, ptr %smbdev, align 8, !dbg !6193
  %need_deactivate = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %2, i32 0, i32 5, !dbg !6195
  %3 = load i8, ptr %need_deactivate, align 1, !dbg !6195, !range !6055, !noundef !1123
  %tobool = trunc i8 %3 to i1, !dbg !6195
  br i1 %tobool, label %if.then, label %if.end, !dbg !6196

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %psmouse.addr, align 8, !dbg !6197
  %call = call i32 @psmouse_deactivate(ptr noundef %4) #18, !dbg !6198
  br label %if.end, !dbg !6198

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %smbdev) #17, !dbg !6199
  ret i32 0, !dbg !6200
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @psmouse_smbus_disconnect(ptr noundef %psmouse) #0 align 16 !dbg !6201 {
entry:
  %psmouse.addr = alloca ptr, align 8
  %smbdev = alloca ptr, align 8
  store ptr %psmouse, ptr %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %psmouse.addr, metadata !6203, metadata !DIExpression()), !dbg !6205
  call void @llvm.lifetime.start.p0(i64 8, ptr %smbdev) #17, !dbg !6206
  call void @llvm.dbg.declare(metadata ptr %smbdev, metadata !6204, metadata !DIExpression()), !dbg !6207
  %0 = load ptr, ptr %psmouse.addr, align 8, !dbg !6208
  %private = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 0, !dbg !6209
  %1 = load ptr, ptr %private, align 8, !dbg !6209
  store ptr %1, ptr %smbdev, align 8, !dbg !6207
  call void @mutex_lock(ptr noundef @psmouse_smbus_mutex) #18, !dbg !6210
  %2 = load ptr, ptr %smbdev, align 8, !dbg !6211
  %dead = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %2, i32 0, i32 4, !dbg !6213
  %3 = load i8, ptr %dead, align 8, !dbg !6213, !range !6055, !noundef !1123
  %tobool = trunc i8 %3 to i1, !dbg !6213
  br i1 %tobool, label %if.then, label %if.else, !dbg !6214

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %smbdev, align 8, !dbg !6215
  %node = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %4, i32 0, i32 3, !dbg !6217
  call void @list_del(ptr noundef %node) #18, !dbg !6218
  %5 = load ptr, ptr %smbdev, align 8, !dbg !6219
  call void @kfree(ptr noundef %5) #18, !dbg !6220
  br label %if.end, !dbg !6221

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %smbdev, align 8, !dbg !6222
  %dead1 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %6, i32 0, i32 4, !dbg !6224
  store i8 1, ptr %dead1, align 8, !dbg !6225
  %7 = load ptr, ptr %smbdev, align 8, !dbg !6226
  %client = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %7, i32 0, i32 2, !dbg !6227
  %8 = load ptr, ptr %client, align 8, !dbg !6227
  %dev = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4, !dbg !6228
  %9 = load ptr, ptr %psmouse.addr, align 8, !dbg !6229
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 2, !dbg !6230
  %serio = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 0, !dbg !6231
  %10 = load ptr, ptr %serio, align 8, !dbg !6231
  %dev2 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 18, !dbg !6232
  call void @device_link_remove(ptr noundef %dev, ptr noundef %dev2) #18, !dbg !6233
  %11 = load ptr, ptr %smbdev, align 8, !dbg !6234
  %client3 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %11, i32 0, i32 2, !dbg !6235
  %12 = load ptr, ptr %client3, align 8, !dbg !6235
  call void @psmouse_smbus_schedule_remove(ptr noundef %12) #18, !dbg !6236
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @mutex_unlock(ptr noundef @psmouse_smbus_mutex) #18, !dbg !6237
  %13 = load ptr, ptr %psmouse.addr, align 8, !dbg !6238
  %private4 = getelementptr inbounds %struct.psmouse, ptr %13, i32 0, i32 0, !dbg !6239
  store ptr null, ptr %private4, align 8, !dbg !6240
  call void @llvm.lifetime.end.p0(i64 8, ptr %smbdev) #17, !dbg !6241
  ret void, !dbg !6241
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !6242 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6246, metadata !DIExpression()), !dbg !6248
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6247, metadata !DIExpression()), !dbg !6249
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6250
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6251
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6252
  %2 = load ptr, ptr %prev, align 8, !dbg !6252
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6253
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #18, !dbg !6254
  ret void, !dbg !6255
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6256 dso_local i32 @i2c_for_each_dev(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @psmouse_smbus_create_companion(ptr noundef %dev, ptr noundef %data) #0 align 16 !dbg !6262 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %smbdev = alloca ptr, align 8
  %addr_list = alloca [2 x i16], align 2
  %adapter = alloca ptr, align 8
  %client = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6264, metadata !DIExpression()), !dbg !6271
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6265, metadata !DIExpression()), !dbg !6272
  call void @llvm.lifetime.start.p0(i64 8, ptr %smbdev) #17, !dbg !6273
  call void @llvm.dbg.declare(metadata ptr %smbdev, metadata !6266, metadata !DIExpression()), !dbg !6274
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6275
  store ptr %0, ptr %smbdev, align 8, !dbg !6274
  call void @llvm.lifetime.start.p0(i64 4, ptr %addr_list) #17, !dbg !6276
  call void @llvm.dbg.declare(metadata ptr %addr_list, metadata !6267, metadata !DIExpression()), !dbg !6277
  %arrayinit.begin = getelementptr inbounds [2 x i16], ptr %addr_list, i64 0, i64 0, !dbg !6278
  %1 = load ptr, ptr %smbdev, align 8, !dbg !6279
  %board = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %1, i32 0, i32 0, !dbg !6280
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %board, i32 0, i32 2, !dbg !6281
  %2 = load i16, ptr %addr, align 2, !dbg !6281
  store i16 %2, ptr %arrayinit.begin, align 2, !dbg !6278
  %arrayinit.element = getelementptr inbounds i16, ptr %arrayinit.begin, i64 1, !dbg !6278
  store i16 -2, ptr %arrayinit.element, align 2, !dbg !6278
  call void @llvm.lifetime.start.p0(i64 8, ptr %adapter) #17, !dbg !6282
  call void @llvm.dbg.declare(metadata ptr %adapter, metadata !6269, metadata !DIExpression()), !dbg !6283
  call void @llvm.lifetime.start.p0(i64 8, ptr %client) #17, !dbg !6284
  call void @llvm.dbg.declare(metadata ptr %client, metadata !6270, metadata !DIExpression()), !dbg !6285
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6286
  %call = call ptr @i2c_verify_adapter(ptr noundef %3) #18, !dbg !6287
  store ptr %call, ptr %adapter, align 8, !dbg !6288
  %4 = load ptr, ptr %adapter, align 8, !dbg !6289
  %tobool = icmp ne ptr %4, null, !dbg !6289
  br i1 %tobool, label %if.end, label %if.then, !dbg !6291

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6292

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %adapter, align 8, !dbg !6293
  %call1 = call i32 @i2c_check_functionality(ptr noundef %5, i32 noundef 268435456) #18, !dbg !6295
  %tobool2 = icmp ne i32 %call1, 0, !dbg !6295
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6296

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6297
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6297

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %adapter, align 8, !dbg !6298
  %7 = load ptr, ptr %smbdev, align 8, !dbg !6299
  %board5 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %7, i32 0, i32 0, !dbg !6300
  %arraydecay = getelementptr inbounds [2 x i16], ptr %addr_list, i64 0, i64 0, !dbg !6301
  %call6 = call ptr @i2c_new_scanned_device(ptr noundef %6, ptr noundef %board5, ptr noundef %arraydecay, ptr noundef null) #18, !dbg !6302
  store ptr %call6, ptr %client, align 8, !dbg !6303
  %8 = load ptr, ptr %client, align 8, !dbg !6304
  %call7 = call zeroext i1 @IS_ERR(ptr noundef %8) #18, !dbg !6306
  br i1 %call7, label %if.then8, label %if.end9, !dbg !6307

if.then8:                                         ; preds = %if.end4
  store i32 0, ptr %retval, align 4, !dbg !6308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6308

if.end9:                                          ; preds = %if.end4
  %9 = load ptr, ptr %client, align 8, !dbg !6309
  %10 = load ptr, ptr %smbdev, align 8, !dbg !6310
  %client10 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %10, i32 0, i32 2, !dbg !6311
  store ptr %9, ptr %client10, align 8, !dbg !6312
  store i32 1, ptr %retval, align 4, !dbg !6313
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6313

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %client) #17, !dbg !6314
  call void @llvm.lifetime.end.p0(i64 8, ptr %adapter) #17, !dbg !6314
  call void @llvm.lifetime.end.p0(i64 4, ptr %addr_list) #17, !dbg !6314
  call void @llvm.lifetime.end.p0(i64 8, ptr %smbdev) #17, !dbg !6314
  %11 = load i32, ptr %retval, align 4, !dbg !6314
  ret i32 %11, !dbg !6314
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6315 dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6332 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #4 align 16 !dbg !6336 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6340, metadata !DIExpression()), !dbg !6341
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6342
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !6344
  %1 = load ptr, ptr %init_name, align 8, !dbg !6344
  %tobool = icmp ne ptr %1, null, !dbg !6342
  br i1 %tobool, label %if.then, label %if.end, !dbg !6345

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6346
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !6347
  %3 = load ptr, ptr %init_name1, align 8, !dbg !6347
  store ptr %3, ptr %retval, align 8, !dbg !6348
  br label %return, !dbg !6348

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6349
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !6350
  %call = call ptr @kobject_name(ptr noundef %kobj) #18, !dbg !6351
  store ptr %call, ptr %retval, align 8, !dbg !6352
  br label %return, !dbg !6352

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6353
  ret ptr %5, !dbg !6353
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @psmouse_smbus_module_init() #9 section ".init.text" align 16 !dbg !6354 {
entry:
  %retval = alloca i32, align 4
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !6357
  call void @llvm.dbg.declare(metadata ptr %error, metadata !6356, metadata !DIExpression()), !dbg !6358
  %call = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef @.str.1, i32 noundef 0, i32 noundef 0) #18, !dbg !6359
  store ptr %call, ptr @psmouse_smbus_wq, align 8, !dbg !6360
  %0 = load ptr, ptr @psmouse_smbus_wq, align 8, !dbg !6361
  %tobool = icmp ne ptr %0, null, !dbg !6361
  br i1 %tobool, label %if.end, label %if.then, !dbg !6363

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6364
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6364

if.end:                                           ; preds = %entry
  %call1 = call i32 @bus_register_notifier(ptr noundef @i2c_bus_type, ptr noundef @psmouse_smbus_notifier) #18, !dbg !6365
  store i32 %call1, ptr %error, align 4, !dbg !6366
  %1 = load i32, ptr %error, align 4, !dbg !6367
  %tobool2 = icmp ne i32 %1, 0, !dbg !6367
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !6369

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !6370

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !6373

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6373

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %error, align 4, !dbg !6370
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %2) #21, !dbg !6370
  store i32 %call4, ptr %tmp, align 4, !dbg !6373
  %3 = load i32, ptr %tmp, align 4, !dbg !6370
  %4 = load ptr, ptr @psmouse_smbus_wq, align 8, !dbg !6375
  call void @destroy_workqueue(ptr noundef %4) #18, !dbg !6376
  %5 = load i32, ptr %error, align 4, !dbg !6377
  store i32 %5, ptr %retval, align 4, !dbg !6378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6378

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6379

cleanup:                                          ; preds = %if.end5, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !6380
  %6 = load i32, ptr %retval, align 4, !dbg !6380
  ret i32 %6, !dbg !6380
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6381 dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6384 dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6387 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6391 dso_local void @destroy_workqueue(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @psmouse_smbus_module_exit() #0 align 16 !dbg !6394 {
entry:
  %call = call i32 @bus_unregister_notifier(ptr noundef @i2c_bus_type, ptr noundef @psmouse_smbus_notifier) #18, !dbg !6395
  %0 = load ptr, ptr @psmouse_smbus_wq, align 8, !dbg !6396
  call void @destroy_workqueue(ptr noundef %0) #18, !dbg !6397
  ret void, !dbg !6398
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6399 dso_local i32 @bus_unregister_notifier(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !6400 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6402, metadata !DIExpression()), !dbg !6403
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6404
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #18, !dbg !6406
  br i1 %call, label %if.end, label %if.then, !dbg !6407

if.then:                                          ; preds = %entry
  br label %return, !dbg !6408

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6409
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6410
  %2 = load ptr, ptr %prev, align 8, !dbg !6410
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6411
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6412
  %4 = load ptr, ptr %next, align 8, !dbg !6412
  call void @__list_del(ptr noundef %2, ptr noundef %4) #18, !dbg !6413
  br label %return, !dbg !6414

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6414
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !6415 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6419, metadata !DIExpression()), !dbg !6420
  ret i1 true, !dbg !6421
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6422 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6424, metadata !DIExpression()), !dbg !6426
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6425, metadata !DIExpression()), !dbg !6427
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6428
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6429
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6430
  store ptr %0, ptr %prev1, align 8, !dbg !6431
  br label %do.body, !dbg !6432

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6433

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6435

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6433

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6437
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6437
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6437
  store volatile ptr %2, ptr %next4, align 8, !dbg !6437
  br label %do.end5, !dbg !6437

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6433

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6439
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6440 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6442, metadata !DIExpression()), !dbg !6447
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6443, metadata !DIExpression()), !dbg !6448
  %0 = load i64, ptr %size.addr, align 8, !dbg !6449
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6450
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6451

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6452
  %tobool = icmp ne i64 %2, 0, !dbg !6452
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6453

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !6454
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6444, metadata !DIExpression()), !dbg !6455
  %3 = load i64, ptr %size.addr, align 8, !dbg !6456
  %cmp = icmp ugt i64 %3, 8192, !dbg !6458
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6459

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6460
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6461
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !6462
  store ptr %call, ptr %retval, align 8, !dbg !6463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6463

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6464
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6464
  store i32 %call2, ptr %index, align 4, !dbg !6465
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6466
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6467
  %9 = ptrtoint ptr %8 to i64, !dbg !6467
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6468
  %idxprom = zext i32 %call3 to i64, !dbg !6469
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6469
  %10 = load i32, ptr %index, align 4, !dbg !6470
  %idxprom4 = zext i32 %10 to i64, !dbg !6469
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6469
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6469
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6471
  %13 = load i64, ptr %size.addr, align 8, !dbg !6472
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !6473
  store ptr %call6, ptr %retval, align 8, !dbg !6474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6474

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !6475
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6476
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6477
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !6478
  store ptr %call8, ptr %retval, align 8, !dbg !6479
  br label %return, !dbg !6479

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6480
  ret ptr %16, !dbg !6480
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6481 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #13 align 16 !dbg !6482 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6486, metadata !DIExpression()), !dbg !6488
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6487, metadata !DIExpression()), !dbg !6489
  %0 = load i64, ptr %size.addr, align 8, !dbg !6490
  %tobool = icmp ne i64 %0, 0, !dbg !6490
  br i1 %tobool, label %if.end, label %if.then, !dbg !6492

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6493
  br label %return, !dbg !6493

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6494
  %cmp = icmp ule i64 %1, 8, !dbg !6496
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6497

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6498
  br label %return, !dbg !6498

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6499
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6501
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6502

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6503
  %cmp4 = icmp ule i64 %3, 96, !dbg !6504
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6505

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6506
  br label %return, !dbg !6506

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6507
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6509
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6510

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6511
  %cmp9 = icmp ule i64 %5, 192, !dbg !6512
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6513

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6514
  br label %return, !dbg !6514

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6515
  %cmp12 = icmp ule i64 %6, 8, !dbg !6517
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6518

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6519
  br label %return, !dbg !6519

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6520
  %cmp15 = icmp ule i64 %7, 16, !dbg !6522
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6523

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6524
  br label %return, !dbg !6524

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6525
  %cmp18 = icmp ule i64 %8, 32, !dbg !6527
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6528

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6529
  br label %return, !dbg !6529

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6530
  %cmp21 = icmp ule i64 %9, 64, !dbg !6532
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6533

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6534
  br label %return, !dbg !6534

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6535
  %cmp24 = icmp ule i64 %10, 128, !dbg !6537
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6538

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6539
  br label %return, !dbg !6539

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6540
  %cmp27 = icmp ule i64 %11, 256, !dbg !6542
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6543

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6544
  br label %return, !dbg !6544

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6545
  %cmp30 = icmp ule i64 %12, 512, !dbg !6547
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6548

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6549
  br label %return, !dbg !6549

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6550
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6552
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6553

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6554
  br label %return, !dbg !6554

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6555
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6557
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6558

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6559
  br label %return, !dbg !6559

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6560
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6562
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6563

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6564
  br label %return, !dbg !6564

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6565
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6567
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6568

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6569
  br label %return, !dbg !6569

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6570
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6572
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6573

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6574
  br label %return, !dbg !6574

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6575
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6577
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6578

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6579
  br label %return, !dbg !6579

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6580
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6582
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6583

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6584
  br label %return, !dbg !6584

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6585
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6587
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6588

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6589
  br label %return, !dbg !6589

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6590
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6592
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6593

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6594
  br label %return, !dbg !6594

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6595
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6597
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6598

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6599
  br label %return, !dbg !6599

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6600
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6602
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6603

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6604
  br label %return, !dbg !6604

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6605
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6607
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6608

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6609
  br label %return, !dbg !6609

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6610, !range !6055, !noundef !1123
  %tobool69 = trunc i8 %25 to i1, !dbg !6610
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6612

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6613

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #23, !dbg !6614, !srcloc !6617
  unreachable, !dbg !6614

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6618

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6619

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6620

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6622

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6620

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #17, !dbg !6624, !srcloc !6626
  br label %do.end75, !dbg !6624

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6620

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6627
  br label %return, !dbg !6627

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6628
  ret i32 %26, !dbg !6628
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6629 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #13 align 16 !dbg !6635 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6639, metadata !DIExpression()), !dbg !6641
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6640, metadata !DIExpression()), !dbg !6642
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6643
  %and = and i32 %0, 17, !dbg !6643
  %cmp = icmp eq i32 %and, 0, !dbg !6643
  %lnot = xor i1 %cmp, true, !dbg !6643
  %lnot1 = xor i1 %lnot, true, !dbg !6643
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6643
  %conv = sext i32 %lnot.ext to i64, !dbg !6643
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6643
  %tobool = icmp ne i64 %expval, 0, !dbg !6643
  br i1 %tobool, label %if.then, label %if.end, !dbg !6645

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6646
  br label %return, !dbg !6646

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6647
  %and2 = and i32 %1, 1, !dbg !6649
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6649
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6650

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6651
  br label %return, !dbg !6651

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6652
  br label %return, !dbg !6652

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6654
  ret i32 %2, !dbg !6654
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #15

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6655 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6656 dso_local void @__compiletime_assert_204() #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6657 dso_local void @device_link_remove(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @psmouse_smbus_schedule_remove(ptr noundef %client) #0 align 16 !dbg !5921 {
entry:
  %client.addr = alloca ptr, align 8
  %rwork = alloca ptr, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store ptr %client, ptr %client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !5925, metadata !DIExpression()), !dbg !6660
  call void @llvm.lifetime.start.p0(i64 8, ptr %rwork) #17, !dbg !6661
  call void @llvm.dbg.declare(metadata ptr %rwork, metadata !5926, metadata !DIExpression()), !dbg !6662
  %call = call noalias ptr @kzalloc(i64 noundef 40, i32 noundef 3264) #19, !dbg !6663
  store ptr %call, ptr %rwork, align 8, !dbg !6664
  %0 = load ptr, ptr %rwork, align 8, !dbg !6665
  %tobool = icmp ne ptr %0, null, !dbg !6665
  br i1 %tobool, label %if.then, label %if.end, !dbg !6667

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6668

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !6670

do.body1:                                         ; preds = %do.body
  %1 = load ptr, ptr %rwork, align 8, !dbg !6672
  %work = getelementptr inbounds %struct.psmouse_smbus_removal_work, ptr %1, i32 0, i32 0, !dbg !6672
  call void @__init_work(ptr noundef %work, i32 noundef 0) #18, !dbg !6672
  %2 = load ptr, ptr %rwork, align 8, !dbg !6672
  %work2 = getelementptr inbounds %struct.psmouse_smbus_removal_work, ptr %2, i32 0, i32 0, !dbg !6672
  %data = getelementptr inbounds %struct.work_struct, ptr %work2, i32 0, i32 0, !dbg !6672
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !6672
  store i64 68719476704, ptr %counter, align 8, !dbg !6672
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !6672
  %3 = load ptr, ptr %rwork, align 8, !dbg !6672
  %work3 = getelementptr inbounds %struct.psmouse_smbus_removal_work, ptr %3, i32 0, i32 0, !dbg !6672
  %entry4 = getelementptr inbounds %struct.work_struct, ptr %work3, i32 0, i32 1, !dbg !6672
  call void @INIT_LIST_HEAD(ptr noundef %entry4) #18, !dbg !6672
  %4 = load ptr, ptr %rwork, align 8, !dbg !6672
  %work5 = getelementptr inbounds %struct.psmouse_smbus_removal_work, ptr %4, i32 0, i32 0, !dbg !6672
  %func = getelementptr inbounds %struct.work_struct, ptr %work5, i32 0, i32 2, !dbg !6672
  store ptr @psmouse_smbus_remove_i2c_device, ptr %func, align 8, !dbg !6672
  br label %do.cond, !dbg !6672

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6672

do.end:                                           ; preds = %do.cond
  br label %do.cond6, !dbg !6670

do.cond6:                                         ; preds = %do.end
  br label %do.end7, !dbg !6670

do.end7:                                          ; preds = %do.cond6
  %5 = load ptr, ptr %client.addr, align 8, !dbg !6674
  %6 = load ptr, ptr %rwork, align 8, !dbg !6675
  %client8 = getelementptr inbounds %struct.psmouse_smbus_removal_work, ptr %6, i32 0, i32 1, !dbg !6676
  store ptr %5, ptr %client8, align 8, !dbg !6677
  %7 = load ptr, ptr @psmouse_smbus_wq, align 8, !dbg !6678
  %8 = load ptr, ptr %rwork, align 8, !dbg !6679
  %work9 = getelementptr inbounds %struct.psmouse_smbus_removal_work, ptr %8, i32 0, i32 0, !dbg !6680
  %call10 = call zeroext i1 @queue_work(ptr noundef %7, ptr noundef %work9) #18, !dbg !6681
  br label %if.end, !dbg !6682

if.end:                                           ; preds = %do.end7, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %rwork) #17, !dbg !6683
  ret void, !dbg !6683
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #4 align 16 !dbg !6684 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6688, metadata !DIExpression()), !dbg !6690
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !6689, metadata !DIExpression()), !dbg !6691
  ret void, !dbg !6692
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !6693 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6695, metadata !DIExpression()), !dbg !6696
  br label %do.body, !dbg !6697

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6698

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6700

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6698

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6702
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6702
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6702
  store volatile ptr %0, ptr %next, align 8, !dbg !6702
  br label %do.end3, !dbg !6702

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6698

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6704

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6705

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6707

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6705

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6709
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6709
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6709
  store volatile ptr %2, ptr %prev, align 8, !dbg !6709
  br label %do.end9, !dbg !6709

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6705

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6711
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @psmouse_smbus_remove_i2c_device(ptr noundef %work) #0 align 16 !dbg !6712 {
entry:
  %work.addr = alloca ptr, align 8
  %rwork = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6714, metadata !DIExpression()), !dbg !6718
  call void @llvm.lifetime.start.p0(i64 8, ptr %rwork) #17, !dbg !6719
  call void @llvm.dbg.declare(metadata ptr %rwork, metadata !6715, metadata !DIExpression()), !dbg !6720
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6721
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6716, metadata !DIExpression()), !dbg !6721
  %0 = load ptr, ptr %work.addr, align 8, !dbg !6721
  store ptr %0, ptr %__mptr, align 8, !dbg !6721
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6721
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6721
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6721
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6722
  %2 = load ptr, ptr %tmp, align 8, !dbg !6721
  store ptr %2, ptr %rwork, align 8, !dbg !6720
  %3 = load ptr, ptr %rwork, align 8, !dbg !6723
  %client = getelementptr inbounds %struct.psmouse_smbus_removal_work, ptr %3, i32 0, i32 1, !dbg !6724
  %4 = load ptr, ptr %client, align 8, !dbg !6724
  call void @i2c_unregister_device(ptr noundef %4) #18, !dbg !6725
  %5 = load ptr, ptr %rwork, align 8, !dbg !6726
  call void @kfree(ptr noundef %5) #18, !dbg !6727
  call void @llvm.lifetime.end.p0(i64 8, ptr %rwork) #17, !dbg !6728
  ret void, !dbg !6728
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #4 align 16 !dbg !6729 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !6733, metadata !DIExpression()), !dbg !6735
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6734, metadata !DIExpression()), !dbg !6736
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !6737
  %1 = load ptr, ptr %work.addr, align 8, !dbg !6738
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #18, !dbg !6739
  ret i1 %call, !dbg !6740
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6741 dso_local void @i2c_unregister_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6742 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6745 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6749, metadata !DIExpression()), !dbg !6752
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6750, metadata !DIExpression()), !dbg !6753
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6751, metadata !DIExpression()), !dbg !6754
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6755
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6757
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6758
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !6759
  br i1 %call, label %if.end, label %if.then, !dbg !6760

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6761

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6762
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6763
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6764
  store ptr %3, ptr %prev1, align 8, !dbg !6765
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6766
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6767
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6768
  store ptr %5, ptr %next2, align 8, !dbg !6769
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6770
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6771
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6772
  store ptr %7, ptr %prev3, align 8, !dbg !6773
  br label %do.body, !dbg !6774

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6775

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6777

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6775

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6779
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6779
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6779
  store volatile ptr %9, ptr %next6, align 8, !dbg !6779
  br label %do.end7, !dbg !6779

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6775

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6781
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6782 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6786, metadata !DIExpression()), !dbg !6789
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6787, metadata !DIExpression()), !dbg !6790
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6788, metadata !DIExpression()), !dbg !6791
  ret i1 true, !dbg !6792
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6793 dso_local ptr @i2c_verify_adapter(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i2c_check_functionality(ptr noundef %adap, i32 noundef %func) #4 align 16 !dbg !6796 {
entry:
  %adap.addr = alloca ptr, align 8
  %func.addr = alloca i32, align 4
  store ptr %adap, ptr %adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adap.addr, metadata !6800, metadata !DIExpression()), !dbg !6802
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !6801, metadata !DIExpression()), !dbg !6803
  %0 = load i32, ptr %func.addr, align 4, !dbg !6804
  %1 = load ptr, ptr %adap.addr, align 8, !dbg !6805
  %call = call i32 @i2c_get_functionality(ptr noundef %1) #18, !dbg !6806
  %and = and i32 %0, %call, !dbg !6807
  %2 = load i32, ptr %func.addr, align 4, !dbg !6808
  %cmp = icmp eq i32 %and, %2, !dbg !6809
  %conv = zext i1 %cmp to i32, !dbg !6809
  ret i32 %conv, !dbg !6810
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6811 dso_local ptr @i2c_new_scanned_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !6820 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6825, metadata !DIExpression()), !dbg !6826
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6827
  %1 = ptrtoint ptr %0 to i64, !dbg !6827
  %2 = inttoptr i64 %1 to ptr, !dbg !6827
  %3 = ptrtoint ptr %2 to i64, !dbg !6827
  %cmp = icmp uge i64 %3, -4095, !dbg !6827
  %lnot = xor i1 %cmp, true, !dbg !6827
  %lnot1 = xor i1 %lnot, true, !dbg !6827
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6827
  %conv = sext i32 %lnot.ext to i64, !dbg !6827
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6827
  %tobool = icmp ne i64 %expval, 0, !dbg !6827
  ret i1 %tobool, !dbg !6828
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i2c_get_functionality(ptr noundef %adap) #4 align 16 !dbg !6829 {
entry:
  %adap.addr = alloca ptr, align 8
  store ptr %adap, ptr %adap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adap.addr, metadata !6831, metadata !DIExpression()), !dbg !6832
  %0 = load ptr, ptr %adap.addr, align 8, !dbg !6833
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 2, !dbg !6834
  %1 = load ptr, ptr %algo, align 8, !dbg !6834
  %functionality = getelementptr inbounds %struct.i2c_algorithm, ptr %1, i32 0, i32 4, !dbg !6835
  %2 = load ptr, ptr %functionality, align 8, !dbg !6835
  %3 = load ptr, ptr %adap.addr, align 8, !dbg !6836
  %call = call i32 %2(ptr noundef %3) #18, !dbg !6833
  ret i32 %call, !dbg !6837
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #4 align 16 !dbg !6838 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6840, metadata !DIExpression()), !dbg !6841
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6842
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !6843
  %1 = load ptr, ptr %name, align 8, !dbg !6843
  ret ptr %1, !dbg !6844
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @psmouse_smbus_notifier_call(ptr noundef %nb, i64 noundef %action, ptr noundef %data) #0 align 16 !dbg !6845 {
entry:
  %nb.addr = alloca ptr, align 8
  %action.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr5 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !6847, metadata !DIExpression()), !dbg !6858
  store i64 %action, ptr %action.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !6848, metadata !DIExpression()), !dbg !6859
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6849, metadata !DIExpression()), !dbg !6860
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #17, !dbg !6861
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6850, metadata !DIExpression()), !dbg !6862
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6863
  store ptr %0, ptr %dev, align 8, !dbg !6862
  %1 = load i64, ptr %action.addr, align 8, !dbg !6864
  switch i64 %1, label %sw.epilog [
    i64 0, label %sw.bb
    i64 2, label %sw.bb1
  ], !dbg !6865

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %dev, align 8, !dbg !6866
  %type = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 4, !dbg !6867
  %3 = load ptr, ptr %type, align 8, !dbg !6867
  %cmp = icmp eq ptr %3, @i2c_adapter_type, !dbg !6868
  br i1 %cmp, label %if.then, label %if.end, !dbg !6869

if.then:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6870
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6851, metadata !DIExpression()), !dbg !6870
  %4 = load ptr, ptr %dev, align 8, !dbg !6870
  store ptr %4, ptr %__mptr, align 8, !dbg !6870
  %5 = load ptr, ptr %__mptr, align 8, !dbg !6870
  %add.ptr = getelementptr i8, ptr %5, i64 -112, !dbg !6870
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6870
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6871
  %6 = load ptr, ptr %tmp, align 8, !dbg !6870
  call void @psmouse_smbus_check_adapter(ptr noundef %6) #18, !dbg !6872
  br label %if.end, !dbg !6872

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog, !dbg !6873

sw.bb1:                                           ; preds = %entry
  %7 = load ptr, ptr %dev, align 8, !dbg !6874
  %type2 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 4, !dbg !6875
  %8 = load ptr, ptr %type2, align 8, !dbg !6875
  %cmp3 = icmp eq ptr %8, @i2c_client_type, !dbg !6876
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !6877

if.then4:                                         ; preds = %sw.bb1
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #17, !dbg !6878
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !6855, metadata !DIExpression()), !dbg !6878
  %9 = load ptr, ptr %dev, align 8, !dbg !6878
  store ptr %9, ptr %__mptr5, align 8, !dbg !6878
  %10 = load ptr, ptr %__mptr5, align 8, !dbg !6878
  %add.ptr7 = getelementptr i8, ptr %10, i64 -32, !dbg !6878
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !6878
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #17, !dbg !6879
  %11 = load ptr, ptr %tmp6, align 8, !dbg !6878
  call void @psmouse_smbus_detach_i2c_client(ptr noundef %11) #18, !dbg !6880
  br label %if.end8, !dbg !6880

if.end8:                                          ; preds = %if.then4, %sw.bb1
  br label %sw.epilog, !dbg !6881

sw.epilog:                                        ; preds = %entry, %if.end8, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #17, !dbg !6882
  ret i32 0, !dbg !6883
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @psmouse_smbus_check_adapter(ptr noundef %adapter) #0 align 16 !dbg !6884 {
entry:
  %adapter.addr = alloca ptr, align 8
  %smbdev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  store ptr %adapter, ptr %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adapter.addr, metadata !6886, metadata !DIExpression()), !dbg !6894
  call void @llvm.lifetime.start.p0(i64 8, ptr %smbdev) #17, !dbg !6895
  call void @llvm.dbg.declare(metadata ptr %smbdev, metadata !6887, metadata !DIExpression()), !dbg !6896
  %0 = load ptr, ptr %adapter.addr, align 8, !dbg !6897
  %call = call i32 @i2c_check_functionality(ptr noundef %0, i32 noundef 268435456) #18, !dbg !6899
  %tobool = icmp ne i32 %call, 0, !dbg !6899
  br i1 %tobool, label %if.end, label %if.then, !dbg !6900

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6901

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @psmouse_smbus_mutex) #18, !dbg !6902
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6903
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6888, metadata !DIExpression()), !dbg !6903
  %1 = load ptr, ptr @psmouse_smbus_list, align 8, !dbg !6903
  store ptr %1, ptr %__mptr, align 8, !dbg !6903
  %2 = load ptr, ptr %__mptr, align 8, !dbg !6903
  %add.ptr = getelementptr i8, ptr %2, i64 -96, !dbg !6903
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6903
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6904
  %3 = load ptr, ptr %tmp, align 8, !dbg !6903
  store ptr %3, ptr %smbdev, align 8, !dbg !6904
  br label %for.cond, !dbg !6904

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %smbdev, align 8, !dbg !6905
  %node = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %4, i32 0, i32 3, !dbg !6905
  %cmp = icmp eq ptr %node, @psmouse_smbus_list, !dbg !6905
  %lnot = xor i1 %cmp, true, !dbg !6905
  br i1 %lnot, label %for.body, label %for.end, !dbg !6904

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %smbdev, align 8, !dbg !6906
  %dead = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %5, i32 0, i32 4, !dbg !6909
  %6 = load i8, ptr %dead, align 8, !dbg !6909, !range !6055, !noundef !1123
  %tobool1 = trunc i8 %6 to i1, !dbg !6909
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !6910

if.then2:                                         ; preds = %for.body
  br label %for.inc, !dbg !6911

if.end3:                                          ; preds = %for.body
  %7 = load ptr, ptr %smbdev, align 8, !dbg !6912
  %client = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %7, i32 0, i32 2, !dbg !6914
  %8 = load ptr, ptr %client, align 8, !dbg !6914
  %tobool4 = icmp ne ptr %8, null, !dbg !6912
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !6915

if.then5:                                         ; preds = %if.end3
  br label %for.inc, !dbg !6916

if.end6:                                          ; preds = %if.end3
  %9 = load ptr, ptr %smbdev, align 8, !dbg !6917
  %psmouse = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %9, i32 0, i32 1, !dbg !6918
  %10 = load ptr, ptr %psmouse, align 8, !dbg !6918
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %10, i32 0, i32 2, !dbg !6919
  %serio = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 0, !dbg !6920
  %11 = load ptr, ptr %serio, align 8, !dbg !6920
  call void @serio_rescan(ptr noundef %11) #18, !dbg !6921
  br label %for.inc, !dbg !6922

for.inc:                                          ; preds = %if.end6, %if.then5, %if.then2
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #17, !dbg !6923
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !6891, metadata !DIExpression()), !dbg !6923
  %12 = load ptr, ptr %smbdev, align 8, !dbg !6923
  %node8 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %12, i32 0, i32 3, !dbg !6923
  %next = getelementptr inbounds %struct.list_head, ptr %node8, i32 0, i32 0, !dbg !6923
  %13 = load ptr, ptr %next, align 8, !dbg !6923
  store ptr %13, ptr %__mptr7, align 8, !dbg !6923
  %14 = load ptr, ptr %__mptr7, align 8, !dbg !6923
  %add.ptr10 = getelementptr i8, ptr %14, i64 -96, !dbg !6923
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !6923
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #17, !dbg !6905
  %15 = load ptr, ptr %tmp9, align 8, !dbg !6923
  store ptr %15, ptr %smbdev, align 8, !dbg !6905
  br label %for.cond, !dbg !6905, !llvm.loop !6924

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @psmouse_smbus_mutex) #18, !dbg !6926
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6927
  br label %cleanup, !dbg !6927

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %smbdev) #17, !dbg !6927
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6927

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @psmouse_smbus_detach_i2c_client(ptr noundef %client) #0 align 16 !dbg !6928 {
entry:
  %client.addr = alloca ptr, align 8
  %smbdev = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr20 = alloca ptr, align 8
  %tmp23 = alloca ptr, align 8
  store ptr %client, ptr %client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !6930, metadata !DIExpression()), !dbg !6941
  call void @llvm.lifetime.start.p0(i64 8, ptr %smbdev) #17, !dbg !6942
  call void @llvm.dbg.declare(metadata ptr %smbdev, metadata !6931, metadata !DIExpression()), !dbg !6943
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #17, !dbg !6942
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6932, metadata !DIExpression()), !dbg !6944
  call void @mutex_lock(ptr noundef @psmouse_smbus_mutex) #18, !dbg !6945
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6946
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6933, metadata !DIExpression()), !dbg !6946
  %0 = load ptr, ptr @psmouse_smbus_list, align 8, !dbg !6946
  store ptr %0, ptr %__mptr, align 8, !dbg !6946
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6946
  %add.ptr = getelementptr i8, ptr %1, i64 -96, !dbg !6946
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !6946
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6947
  %2 = load ptr, ptr %tmp1, align 8, !dbg !6946
  store ptr %2, ptr %smbdev, align 8, !dbg !6947
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #17, !dbg !6948
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !6936, metadata !DIExpression()), !dbg !6948
  %3 = load ptr, ptr %smbdev, align 8, !dbg !6948
  %node = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %3, i32 0, i32 3, !dbg !6948
  %next = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 0, !dbg !6948
  %4 = load ptr, ptr %next, align 8, !dbg !6948
  store ptr %4, ptr %__mptr2, align 8, !dbg !6948
  %5 = load ptr, ptr %__mptr2, align 8, !dbg !6948
  %add.ptr4 = getelementptr i8, ptr %5, i64 -96, !dbg !6948
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !6948
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #17, !dbg !6947
  %6 = load ptr, ptr %tmp3, align 8, !dbg !6948
  store ptr %6, ptr %tmp, align 8, !dbg !6947
  br label %for.cond, !dbg !6947

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %smbdev, align 8, !dbg !6949
  %node5 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %7, i32 0, i32 3, !dbg !6949
  %cmp = icmp eq ptr %node5, @psmouse_smbus_list, !dbg !6949
  %lnot = xor i1 %cmp, true, !dbg !6949
  br i1 %lnot, label %for.body, label %for.end, !dbg !6947

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %smbdev, align 8, !dbg !6950
  %client6 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %8, i32 0, i32 2, !dbg !6953
  %9 = load ptr, ptr %client6, align 8, !dbg !6953
  %10 = load ptr, ptr %client.addr, align 8, !dbg !6954
  %cmp7 = icmp ne ptr %9, %10, !dbg !6955
  br i1 %cmp7, label %if.then, label %if.end, !dbg !6956

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !6957

if.end:                                           ; preds = %for.body
  %11 = load ptr, ptr %client.addr, align 8, !dbg !6958
  %dev = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4, !dbg !6959
  %platform_data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7, !dbg !6960
  %12 = load ptr, ptr %platform_data, align 8, !dbg !6960
  call void @kfree(ptr noundef %12) #18, !dbg !6961
  %13 = load ptr, ptr %client.addr, align 8, !dbg !6962
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4, !dbg !6963
  %platform_data9 = getelementptr inbounds %struct.device, ptr %dev8, i32 0, i32 7, !dbg !6964
  store ptr null, ptr %platform_data9, align 8, !dbg !6965
  %14 = load ptr, ptr %smbdev, align 8, !dbg !6966
  %dead = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %14, i32 0, i32 4, !dbg !6968
  %15 = load i8, ptr %dead, align 8, !dbg !6968, !range !6055, !noundef !1123
  %tobool = trunc i8 %15 to i1, !dbg !6968
  br i1 %tobool, label %if.else, label %if.then10, !dbg !6969

if.then10:                                        ; preds = %if.end
  %16 = load ptr, ptr %smbdev, align 8, !dbg !6970
  %dead11 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %16, i32 0, i32 4, !dbg !6972
  store i8 1, ptr %dead11, align 8, !dbg !6973
  %17 = load ptr, ptr %smbdev, align 8, !dbg !6974
  %client12 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %17, i32 0, i32 2, !dbg !6975
  %18 = load ptr, ptr %client12, align 8, !dbg !6975
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4, !dbg !6976
  %19 = load ptr, ptr %smbdev, align 8, !dbg !6977
  %psmouse = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %19, i32 0, i32 1, !dbg !6978
  %20 = load ptr, ptr %psmouse, align 8, !dbg !6978
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %20, i32 0, i32 2, !dbg !6979
  %serio = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 0, !dbg !6980
  %21 = load ptr, ptr %serio, align 8, !dbg !6980
  %dev14 = getelementptr inbounds %struct.serio, ptr %21, i32 0, i32 18, !dbg !6981
  call void @device_link_remove(ptr noundef %dev13, ptr noundef %dev14) #18, !dbg !6982
  %22 = load ptr, ptr %smbdev, align 8, !dbg !6983
  %psmouse15 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %22, i32 0, i32 1, !dbg !6984
  %23 = load ptr, ptr %psmouse15, align 8, !dbg !6984
  %ps2dev16 = getelementptr inbounds %struct.psmouse, ptr %23, i32 0, i32 2, !dbg !6985
  %serio17 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev16, i32 0, i32 0, !dbg !6986
  %24 = load ptr, ptr %serio17, align 8, !dbg !6986
  call void @serio_rescan(ptr noundef %24) #18, !dbg !6987
  br label %if.end19, !dbg !6988

if.else:                                          ; preds = %if.end
  %25 = load ptr, ptr %smbdev, align 8, !dbg !6989
  %node18 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %25, i32 0, i32 3, !dbg !6991
  call void @list_del(ptr noundef %node18) #18, !dbg !6992
  %26 = load ptr, ptr %smbdev, align 8, !dbg !6993
  call void @kfree(ptr noundef %26) #18, !dbg !6994
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then10
  br label %for.inc, !dbg !6995

for.inc:                                          ; preds = %if.end19, %if.then
  %27 = load ptr, ptr %tmp, align 8, !dbg !6949
  store ptr %27, ptr %smbdev, align 8, !dbg !6949
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr20) #17, !dbg !6996
  call void @llvm.dbg.declare(metadata ptr %__mptr20, metadata !6938, metadata !DIExpression()), !dbg !6996
  %28 = load ptr, ptr %tmp, align 8, !dbg !6996
  %node21 = getelementptr inbounds %struct.psmouse_smbus_dev, ptr %28, i32 0, i32 3, !dbg !6996
  %next22 = getelementptr inbounds %struct.list_head, ptr %node21, i32 0, i32 0, !dbg !6996
  %29 = load ptr, ptr %next22, align 8, !dbg !6996
  store ptr %29, ptr %__mptr20, align 8, !dbg !6996
  %30 = load ptr, ptr %__mptr20, align 8, !dbg !6996
  %add.ptr24 = getelementptr i8, ptr %30, i64 -96, !dbg !6996
  store ptr %add.ptr24, ptr %tmp23, align 8, !dbg !6996
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr20) #17, !dbg !6949
  %31 = load ptr, ptr %tmp23, align 8, !dbg !6996
  store ptr %31, ptr %tmp, align 8, !dbg !6949
  br label %for.cond, !dbg !6949, !llvm.loop !6997

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @psmouse_smbus_mutex) #18, !dbg !6999
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #17, !dbg !7000
  call void @llvm.lifetime.end.p0(i64 8, ptr %smbdev) #17, !dbg !7000
  ret void, !dbg !7000
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7001 dso_local void @serio_rescan(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(1) }
attributes #21 = { cold noredzone }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5940, !5941, !5942, !5943, !5944, !5945, !5946, !5947}
!llvm.ident = !{!5948}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "psmouse_smbus_mutex", scope: !2, file: !3, line: 27, type: !837, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/input/mouse/.psmouse-smbus.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/input/mouse/psmouse\22 -D KBUILD_BASENAME=\22psmouse_smbus\22 -D KBUILD_MODNAME=\22psmouse\22 -D __KBUILD_MODNAME=kmod_psmouse -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/input/mouse/psmouse-smbus.ll drivers/input/mouse/psmouse-smbus.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !401, globals: !5898, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/mouse/psmouse-smbus.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a349eb0877f7282df74a6f7e0c018fb")
!4 = !{!5, !12, !18, !26, !122, !129, !134, !139, !145, !152, !157, !165, !172, !178, !197, !206, !211, !216, !222, !234, !240, !247, !255, !271, !278, !284, !290, !317, !324, !329, !333, !341, !349, !354, !364, !390}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !6, line: 11, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!10 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!11 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !13, line: 26, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !28, file: !27, line: 147, baseType: !7, size: 32, elements: !119)
!27 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !27, line: 135, size: 512, elements: !29)
!29 = !{!30, !34, !36, !38, !42, !43, !59, !117, !118}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !28, file: !27, line: 136, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !28, file: !27, line: 137, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !28, file: !27, line: 138, baseType: !37, size: 32, offset: 128)
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !28, file: !27, line: 139, baseType: !39, size: 16, offset: 160)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !40, line: 24, baseType: !41)
!40 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!41 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !28, file: !27, line: 150, baseType: !26, size: 32, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !28, file: !27, line: 151, baseType: !44, size: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !27, line: 64, baseType: !46)
!46 = !DISubroutineType(types: !47)
!47 = !{!37, !48, !37, !35, !49, !55}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !40, line: 61, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !52, line: 72, baseType: !53)
!52 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !52, line: 16, baseType: !54)
!54 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !40, line: 52, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !52, line: 88, baseType: !58)
!58 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !28, file: !27, line: 152, baseType: !60, size: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !27, line: 117, size: 256, elements: !62)
!62 = !{!63, !68}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !61, file: !27, line: 118, baseType: !64, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !40, line: 174, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 172, size: 32, elements: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !65, file: !40, line: 173, baseType: !37, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !61, file: !27, line: 119, baseType: !69, size: 192, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !70, line: 41, baseType: !71)
!70 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !70, line: 37, size: 192, elements: !72)
!72 = !{!73, !111}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !71, file: !70, line: 38, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !75, line: 29, baseType: !76)
!75 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !75, line: 17, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !75, line: 18, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !76, file: !75, line: 18, size: 32, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !79, file: !75, line: 19, baseType: !82, size: 32)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !83, line: 14, size: 32, elements: !84)
!83 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !82, file: !83, line: 15, baseType: !86, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !87, line: 44, baseType: !88)
!87 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !87, line: 14, size: 32, elements: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !87, line: 15, baseType: !91, size: 32)
!91 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !87, line: 15, size: 32, elements: !92)
!92 = !{!93, !94, !104}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !91, file: !87, line: 16, baseType: !64, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !87, line: 24, baseType: !95, size: 16)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !91, file: !87, line: 24, size: 16, elements: !96)
!96 = !{!97, !103}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !95, file: !87, line: 25, baseType: !98, size: 8)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !99, line: 17, baseType: !100)
!99 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !101, line: 21, baseType: !102)
!101 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !95, file: !87, line: 26, baseType: !98, size: 8, offset: 8)
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !87, line: 28, baseType: !105, size: 32)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !91, file: !87, line: 28, size: 32, elements: !106)
!106 = !{!107, !110}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !105, file: !87, line: 29, baseType: !108, size: 16)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !99, line: 19, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !101, line: 24, baseType: !41)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !105, file: !87, line: 30, baseType: !108, size: 16, offset: 16)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !71, file: !70, line: 39, baseType: !112, size: 128, offset: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !40, line: 190, size: 128, elements: !113)
!113 = !{!114, !116}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !40, line: 191, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !112, file: !40, line: 191, baseType: !115, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !28, file: !27, line: 153, baseType: !35, size: 64, offset: 384)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !28, file: !27, line: 154, baseType: !35, size: 64, offset: 448)
!119 = !{!120, !121}
!120 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!121 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !123, line: 312, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!124 = !{!125, !126, !127, !128}
!125 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!126 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!127 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!128 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !130, line: 32, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!131 = !{!132, !133}
!132 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!133 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !135, line: 2052, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!136 = !{!137, !138}
!137 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!138 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !140, line: 54, baseType: !7, size: 32, elements: !141)
!140 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!141 = !{!142, !143, !144}
!142 = !DIEnumerator(name: "USRQUOTA", value: 0)
!143 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!144 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !146, line: 487, baseType: !7, size: 32, elements: !147)
!146 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!147 = !{!148, !149, !150, !151}
!148 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!149 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!150 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!151 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !153, line: 65, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!154 = !{!155, !156}
!155 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!156 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !158, line: 620, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!159 = !{!160, !161, !162, !163, !164}
!160 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!161 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!162 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!163 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!164 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !158, line: 597, baseType: !37, size: 32, elements: !166)
!166 = !{!167, !168, !169, !170, !171}
!167 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!168 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!169 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!170 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!171 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !173, line: 30, baseType: !7, size: 32, elements: !174)
!173 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!174 = !{!175, !176, !177}
!175 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!176 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!177 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !179, line: 12, baseType: !7, size: 32, elements: !180)
!179 = !DIFile(filename: "./include/linux/irqdomain_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "168aa78cd6535dbcc4cf99c0f8004653")
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!181 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0)
!182 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1)
!183 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2)
!184 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3)
!185 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4)
!186 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5)
!187 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6)
!188 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7)
!189 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8)
!190 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9)
!191 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10)
!192 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSI", value: 11)
!193 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSIX", value: 12)
!194 = !DIEnumerator(name: "DOMAIN_BUS_DMAR", value: 13)
!195 = !DIEnumerator(name: "DOMAIN_BUS_AMDVI", value: 14)
!196 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_IMS", value: 15)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !146, line: 547, baseType: !7, size: 32, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204, !205}
!199 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!200 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!201 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!202 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!203 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!204 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!205 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !146, line: 564, baseType: !7, size: 32, elements: !207)
!207 = !{!208, !209, !210}
!208 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!209 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!210 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !146, line: 577, baseType: !7, size: 32, elements: !212)
!212 = !{!213, !214, !215}
!213 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!214 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!215 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !146, line: 503, baseType: !7, size: 32, elements: !217)
!217 = !{!218, !219, !220, !221}
!218 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!219 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!220 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!221 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !223, line: 44, baseType: !7, size: 32, elements: !224)
!223 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233}
!225 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!226 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!227 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!228 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!229 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!230 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!231 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!232 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!233 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !235, line: 16, baseType: !7, size: 32, elements: !236)
!235 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!236 = !{!237, !238, !239}
!237 = !DIEnumerator(name: "TT_NONE", value: 0)
!238 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!239 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !241, line: 15, baseType: !7, size: 32, elements: !242)
!241 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!242 = !{!243, !244, !245, !246}
!243 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!244 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!245 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!246 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !248, line: 68, baseType: !7, size: 32, elements: !249)
!248 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!249 = !{!250, !251, !252, !253, !254}
!250 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!251 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!252 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!253 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!254 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !256, line: 1325, baseType: !7, size: 32, elements: !257)
!256 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!258 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!259 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!260 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!261 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!262 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!263 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!264 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!265 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!266 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!267 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!268 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!269 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!270 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !272, line: 51, baseType: !7, size: 32, elements: !273)
!272 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!273 = !{!274, !275, !276, !277}
!274 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!275 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!276 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!277 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !279, line: 45, baseType: !7, size: 32, elements: !280)
!279 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!280 = !{!281, !282, !283}
!281 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!282 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!283 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!284 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ps2_disposition", file: !285, line: 24, baseType: !7, size: 32, elements: !286)
!285 = !DIFile(filename: "./include/linux/libps2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "81c7f532c535ab7e59f124f9e08a3713")
!286 = !{!287, !288, !289}
!287 = !DIEnumerator(name: "PS2_PROCESS", value: 0)
!288 = !DIEnumerator(name: "PS2_IGNORE", value: 1)
!289 = !DIEnumerator(name: "PS2_ERROR", value: 2)
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_type", file: !291, line: 48, baseType: !7, size: 32, elements: !292)
!291 = !DIFile(filename: "drivers/input/mouse/psmouse.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "365ff56d7a22250c467c4cd08801fb3c")
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316}
!293 = !DIEnumerator(name: "PSMOUSE_NONE", value: 0)
!294 = !DIEnumerator(name: "PSMOUSE_PS2", value: 1)
!295 = !DIEnumerator(name: "PSMOUSE_PS2PP", value: 2)
!296 = !DIEnumerator(name: "PSMOUSE_THINKPS", value: 3)
!297 = !DIEnumerator(name: "PSMOUSE_GENPS", value: 4)
!298 = !DIEnumerator(name: "PSMOUSE_IMPS", value: 5)
!299 = !DIEnumerator(name: "PSMOUSE_IMEX", value: 6)
!300 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS", value: 7)
!301 = !DIEnumerator(name: "PSMOUSE_ALPS", value: 8)
!302 = !DIEnumerator(name: "PSMOUSE_LIFEBOOK", value: 9)
!303 = !DIEnumerator(name: "PSMOUSE_TRACKPOINT", value: 10)
!304 = !DIEnumerator(name: "PSMOUSE_TOUCHKIT_PS2", value: 11)
!305 = !DIEnumerator(name: "PSMOUSE_CORTRON", value: 12)
!306 = !DIEnumerator(name: "PSMOUSE_HGPK", value: 13)
!307 = !DIEnumerator(name: "PSMOUSE_ELANTECH", value: 14)
!308 = !DIEnumerator(name: "PSMOUSE_FSP", value: 15)
!309 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS_RELATIVE", value: 16)
!310 = !DIEnumerator(name: "PSMOUSE_CYPRESS", value: 17)
!311 = !DIEnumerator(name: "PSMOUSE_FOCALTECH", value: 18)
!312 = !DIEnumerator(name: "PSMOUSE_VMMOUSE", value: 19)
!313 = !DIEnumerator(name: "PSMOUSE_BYD", value: 20)
!314 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS_SMBUS", value: 21)
!315 = !DIEnumerator(name: "PSMOUSE_ELANTECH_SMBUS", value: 22)
!316 = !DIEnumerator(name: "PSMOUSE_AUTO", value: 23)
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_state", file: !291, line: 28, baseType: !7, size: 32, elements: !318)
!318 = !{!319, !320, !321, !322, !323}
!319 = !DIEnumerator(name: "PSMOUSE_IGNORE", value: 0)
!320 = !DIEnumerator(name: "PSMOUSE_INITIALIZING", value: 1)
!321 = !DIEnumerator(name: "PSMOUSE_RESYNCING", value: 2)
!322 = !DIEnumerator(name: "PSMOUSE_CMD_MODE", value: 3)
!323 = !DIEnumerator(name: "PSMOUSE_ACTIVATED", value: 4)
!324 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !291, line: 37, baseType: !7, size: 32, elements: !325)
!325 = !{!326, !327, !328}
!326 = !DIEnumerator(name: "PSMOUSE_BAD_DATA", value: 0)
!327 = !DIEnumerator(name: "PSMOUSE_GOOD_DATA", value: 1)
!328 = !DIEnumerator(name: "PSMOUSE_FULL_PACKET", value: 2)
!329 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_scale", file: !291, line: 43, baseType: !7, size: 32, elements: !330)
!330 = !{!331, !332}
!331 = !DIEnumerator(name: "PSMOUSE_SCALE11", value: 0)
!332 = !DIEnumerator(name: "PSMOUSE_SCALE21", value: 1)
!333 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !173, line: 21, baseType: !7, size: 32, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340}
!335 = !DIEnumerator(name: "DEV_PROP_U8", value: 0)
!336 = !DIEnumerator(name: "DEV_PROP_U16", value: 1)
!337 = !DIEnumerator(name: "DEV_PROP_U32", value: 2)
!338 = !DIEnumerator(name: "DEV_PROP_U64", value: 3)
!339 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4)
!340 = !DIEnumerator(name: "DEV_PROP_REF", value: 5)
!341 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_link_state", file: !146, line: 447, baseType: !37, size: 32, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348}
!343 = !DIEnumerator(name: "DL_STATE_NONE", value: -1)
!344 = !DIEnumerator(name: "DL_STATE_DORMANT", value: 0)
!345 = !DIEnumerator(name: "DL_STATE_AVAILABLE", value: 1)
!346 = !DIEnumerator(name: "DL_STATE_CONSUMER_PROBE", value: 2)
!347 = !DIEnumerator(name: "DL_STATE_ACTIVE", value: 3)
!348 = !DIEnumerator(name: "DL_STATE_SUPPLIER_UNBIND", value: 4)
!349 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !350, line: 10, baseType: !7, size: 32, elements: !351)
!350 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!351 = !{!352, !353}
!352 = !DIEnumerator(name: "false", value: 0)
!353 = !DIEnumerator(name: "true", value: 1)
!354 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !355, line: 364, baseType: !7, size: 32, elements: !356)
!355 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!356 = !{!357, !358, !359, !360, !361, !362, !363}
!357 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!358 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!359 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!360 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!361 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!362 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!363 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!364 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !365, line: 30, baseType: !7, size: 32, elements: !366)
!365 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!366 = !{!367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!367 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!368 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!369 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!370 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!371 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!372 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!373 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!374 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!375 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!376 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!377 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!378 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!379 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!380 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!381 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!382 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!383 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!384 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!385 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!386 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!387 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!388 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!389 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bus_notifier_event", file: !391, line: 268, baseType: !7, size: 32, elements: !392)
!391 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400}
!393 = !DIEnumerator(name: "BUS_NOTIFY_ADD_DEVICE", value: 0)
!394 = !DIEnumerator(name: "BUS_NOTIFY_DEL_DEVICE", value: 1)
!395 = !DIEnumerator(name: "BUS_NOTIFY_REMOVED_DEVICE", value: 2)
!396 = !DIEnumerator(name: "BUS_NOTIFY_BIND_DRIVER", value: 3)
!397 = !DIEnumerator(name: "BUS_NOTIFY_BOUND_DRIVER", value: 4)
!398 = !DIEnumerator(name: "BUS_NOTIFY_UNBIND_DRIVER", value: 5)
!399 = !DIEnumerator(name: "BUS_NOTIFY_UNBOUND_DRIVER", value: 6)
!400 = !DIEnumerator(name: "BUS_NOTIFY_DRIVER_NOT_BOUND", value: 7)
!401 = !{!35, !402, !2194, !5891, !54, !5893, !5752, !5745}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse_smbus_dev", file: !3, line: 17, size: 960, elements: !404)
!404 = !{!405, !5584, !5744, !5888, !5889, !5890}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "board", scope: !403, file: !3, line: 18, baseType: !406, size: 640)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_board_info", file: !407, line: 424, size: 640, elements: !408)
!407 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c371ab7e96755740ab83c38b9c0c7064")
!408 = !{!409, !413, !414, !415, !416, !417, !5532, !5533, !5566, !5582, !5583}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !406, file: !407, line: 425, baseType: !410, size: 160)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 160, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 20)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !406, file: !407, line: 426, baseType: !41, size: 16, offset: 160)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !406, file: !407, line: 427, baseType: !41, size: 16, offset: 176)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !406, file: !407, line: 428, baseType: !31, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !406, file: !407, line: 429, baseType: !35, size: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !406, file: !407, line: 430, baseType: !418, size: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !420, line: 48, size: 1152, elements: !421)
!420 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!421 = !{!422, !423, !427, !428, !5518, !5526, !5527, !5528, !5529, !5530, !5531}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !419, file: !420, line: 49, baseType: !31, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !419, file: !420, line: 50, baseType: !424, size: 32, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !420, line: 25, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !99, line: 21, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !101, line: 27, baseType: !7)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !419, file: !420, line: 51, baseType: !31, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !419, file: !420, line: 52, baseType: !429, size: 512, offset: 192)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !430, line: 41, size: 512, elements: !431)
!430 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!431 = !{!432, !434, !5514, !5515, !5516, !5517}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !429, file: !430, line: 42, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !429, file: !430, line: 43, baseType: !435, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !430, line: 125, size: 1408, elements: !438)
!438 = !{!439, !443, !447, !455, !5444, !5445, !5449, !5453, !5457, !5461, !5465, !5466, !5470, !5474, !5478, !5489, !5490, !5491, !5492, !5502, !5506, !5510}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !437, file: !430, line: 126, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!433, !433}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !437, file: !430, line: 127, baseType: !444, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !433}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !437, file: !430, line: 128, baseType: !448, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!451, !453}
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !40, line: 35, baseType: !452)
!452 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !437, file: !430, line: 129, baseType: !456, size: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!459, !453, !461}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !146, line: 705, size: 5824, elements: !464)
!464 = !{!465, !5009, !5010, !5013, !5014, !5065, !5149, !5150, !5151, !5152, !5153, !5160, !5252, !5265, !5358, !5362, !5364, !5365, !5366, !5370, !5377, !5378, !5381, !5384, !5385, !5386, !5387, !5388, !5389, !5390, !5391, !5421, !5422, !5423, !5426, !5429, !5438, !5439, !5440, !5441, !5442, !5443}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !463, file: !146, line: 706, baseType: !466, size: 512)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !467, line: 64, size: 512, elements: !468)
!467 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!468 = !{!469, !470, !471, !473, !520, !5002, !5003, !5004, !5005, !5006, !5007, !5008}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !466, file: !467, line: 65, baseType: !31, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !466, file: !467, line: 66, baseType: !112, size: 128, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !466, file: !467, line: 67, baseType: !472, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !466, file: !467, line: 68, baseType: !474, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !467, line: 168, size: 768, elements: !476)
!476 = !{!477, !478, !479, !480}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !475, file: !467, line: 169, baseType: !112, size: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !475, file: !467, line: 170, baseType: !74, size: 32, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !475, file: !467, line: 171, baseType: !466, size: 512, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !475, file: !467, line: 172, baseType: !481, size: 64, offset: 704)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !467, line: 133, size: 192, elements: !484)
!484 = !{!485, !492, !497}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !483, file: !467, line: 134, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!37, !490}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !483, file: !467, line: 135, baseType: !493, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!31, !490}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !483, file: !467, line: 136, baseType: !498, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!37, !490, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !467, line: 125, size: 20736, elements: !504)
!504 = !{!505, !510, !514, !515, !519}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !503, file: !467, line: 126, baseType: !506, size: 192)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 192, elements: !508)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!508 = !{!509}
!509 = !DISubrange(count: 3)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !503, file: !467, line: 127, baseType: !511, size: 4096, offset: 192)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 4096, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !503, file: !467, line: 128, baseType: !37, size: 32, offset: 4288)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !503, file: !467, line: 129, baseType: !516, size: 16384, offset: 4320)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 16384, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 2048)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !503, file: !467, line: 130, baseType: !37, size: 32, offset: 20704)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !466, file: !467, line: 69, baseType: !521, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !467, line: 116, size: 384, elements: !524)
!524 = !{!525, !529, !552, !4966, !4994, !4998}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !523, file: !467, line: 117, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !472}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !523, file: !467, line: 118, baseType: !530, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !533, line: 254, size: 128, elements: !534)
!533 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!534 = !{!535, !548}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !532, file: !533, line: 255, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!539, !472, !543, !507}
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !40, line: 66, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !52, line: 73, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !52, line: 15, baseType: !542)
!542 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !533, line: 30, size: 128, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !544, file: !533, line: 31, baseType: !31, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !544, file: !533, line: 32, baseType: !39, size: 16, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !532, file: !533, line: 256, baseType: !549, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!539, !472, !543, !31, !50}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !523, file: !467, line: 119, baseType: !553, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !533, line: 84, size: 320, elements: !557)
!557 = !{!558, !559, !563, !4962, !4964}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !556, file: !533, line: 85, baseType: !31, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !556, file: !533, line: 86, baseType: !560, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!39, !472, !543, !37}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !556, file: !533, line: 88, baseType: !564, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!39, !472, !567, !37}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !533, line: 175, size: 512, elements: !569)
!569 = !{!570, !571, !572, !573, !4953, !4957, !4958}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !568, file: !533, line: 176, baseType: !544, size: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !568, file: !533, line: 177, baseType: !50, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !568, file: !533, line: 178, baseType: !35, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !568, file: !533, line: 179, baseType: !574, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!577}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !135, line: 472, size: 1536, align: 64, elements: !579)
!579 = !{!580, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4947, !4948, !4949, !4950, !4951, !4952}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !578, file: !135, line: 473, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !135, line: 641, size: 4800, elements: !583)
!583 = !{!584, !585, !586, !594, !595, !602, !603, !606, !607, !4738, !4739, !4740, !4741, !4742, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4782, !4785, !4786, !4787, !4796, !4797, !4798, !4799}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !582, file: !135, line: 642, baseType: !39, size: 16)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !582, file: !135, line: 643, baseType: !41, size: 16, offset: 16)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !582, file: !135, line: 644, baseType: !587, size: 32, offset: 32)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !588, line: 23, baseType: !589)
!588 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !588, line: 21, size: 32, elements: !590)
!590 = !{!591}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !589, file: !588, line: 22, baseType: !592, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !40, line: 37, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !52, line: 49, baseType: !7)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !582, file: !135, line: 645, baseType: !112, size: 128, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !582, file: !135, line: 646, baseType: !596, size: 32, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !588, line: 28, baseType: !597)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !588, line: 26, size: 32, elements: !598)
!598 = !{!599}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !597, file: !588, line: 27, baseType: !600, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !40, line: 38, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !52, line: 50, baseType: !7)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !582, file: !135, line: 647, baseType: !7, size: 32, offset: 224)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !582, file: !135, line: 650, baseType: !604, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !135, line: 607, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !582, file: !135, line: 651, baseType: !604, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !582, file: !135, line: 654, baseType: !608, size: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !135, line: 1966, size: 2048, align: 512, elements: !611)
!611 = !{!612, !4572, !4582, !4586, !4590, !4594, !4598, !4602, !4606, !4610, !4614, !4615, !4619, !4623, !4660, !4689, !4693, !4699, !4703, !4707, !4711, !4715, !4719, !4725, !4729}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !610, file: !135, line: 1967, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!616, !581, !616, !7}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !618, line: 82, size: 1536, elements: !619)
!618 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!619 = !{!620, !621, !631, !639, !640, !658, !659, !663, !676, !4555, !4556, !4557, !4558, !4564, !4565, !4566}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !617, file: !618, line: 84, baseType: !7, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !617, file: !618, line: 85, baseType: !622, size: 32, offset: 32)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !623, line: 275, baseType: !624)
!623 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !623, line: 275, size: 32, elements: !625)
!625 = !{!626}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !624, file: !623, line: 275, baseType: !627, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !623, line: 69, baseType: !628)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !623, line: 64, size: 32, elements: !629)
!629 = !{!630}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !628, file: !623, line: 65, baseType: !7, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !617, file: !618, line: 86, baseType: !632, size: 128, offset: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !633, line: 38, size: 128, elements: !634)
!633 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!634 = !{!635, !637}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !632, file: !633, line: 39, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !632, file: !633, line: 39, baseType: !638, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !617, file: !618, line: 87, baseType: !616, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !617, file: !618, line: 88, baseType: !641, size: 128, offset: 256)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !618, line: 49, size: 128, elements: !642)
!642 = !{!643, !655}
!643 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !618, line: 50, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !641, file: !618, line: 50, size: 64, elements: !645)
!645 = !{!646, !651}
!646 = !DIDerivedType(tag: DW_TAG_member, scope: !644, file: !618, line: 51, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !644, file: !618, line: 51, size: 64, elements: !648)
!648 = !{!649, !650}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !647, file: !618, line: 52, baseType: !425, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !647, file: !618, line: 52, baseType: !425, size: 32, offset: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !644, file: !618, line: 54, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !99, line: 23, baseType: !653)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !101, line: 31, baseType: !654)
!654 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !641, file: !618, line: 56, baseType: !656, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !617, file: !618, line: 89, baseType: !581, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !617, file: !618, line: 91, baseType: !660, size: 256, offset: 448)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 256, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !617, file: !618, line: 94, baseType: !664, size: 64, offset: 704)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !665, line: 25, size: 64, elements: !666)
!665 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !665, line: 26, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !665, line: 26, size: 64, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !668, file: !665, line: 28, baseType: !653, size: 64, align: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, scope: !668, file: !665, line: 30, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !668, file: !665, line: 30, size: 64, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !672, file: !665, line: 31, baseType: !74, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !672, file: !665, line: 32, baseType: !37, size: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !617, file: !618, line: 95, baseType: !677, size: 64, offset: 768)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !679)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !618, line: 128, size: 1024, align: 512, elements: !680)
!680 = !{!681, !685, !686, !693, !699, !703, !707, !711, !712, !716, !720, !4545, !4549}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !679, file: !618, line: 129, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!37, !616, !7}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !679, file: !618, line: 130, baseType: !682, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !679, file: !618, line: 131, baseType: !687, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!37, !690, !692}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !617)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !679, file: !618, line: 132, baseType: !694, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!37, !690, !7, !31, !697}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !679, file: !618, line: 134, baseType: !700, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!37, !690}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !679, file: !618, line: 135, baseType: !704, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!37, !616}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !679, file: !618, line: 136, baseType: !708, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !616}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !679, file: !618, line: 137, baseType: !708, size: 64, offset: 448)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !679, file: !618, line: 138, baseType: !713, size: 64, offset: 512)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !616, !581}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !679, file: !618, line: 139, baseType: !717, size: 64, offset: 576)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!507, !616, !507, !37}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !679, file: !618, line: 140, baseType: !721, size: 64, offset: 640)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!724, !4544}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !726, line: 70, size: 256, elements: !727)
!726 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!727 = !{!728, !729, !4540, !4541}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !725, file: !726, line: 71, baseType: !616, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !725, file: !726, line: 72, baseType: !730, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !135, line: 1190, size: 10752, elements: !732)
!732 = !{!733, !734, !737, !738, !739, !740, !1217, !2517, !2557, !2642, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2659, !2663, !2664, !2708, !2711, !2774, !2777, !2778, !2779, !2820, !4474, !4475, !4476, !4477, !4478, !4479, !4482, !4483, !4490, !4491, !4492, !4493, !4494, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !731, file: !135, line: 1191, baseType: !112, size: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !731, file: !135, line: 1192, baseType: !735, size: 32, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !40, line: 21, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !40, line: 18, baseType: !425)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !731, file: !135, line: 1193, baseType: !102, size: 8, offset: 160)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !731, file: !135, line: 1194, baseType: !54, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !731, file: !135, line: 1195, baseType: !56, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !731, file: !135, line: 1196, baseType: !741, size: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !135, line: 2366, size: 576, elements: !743)
!743 = !{!744, !745, !746, !753, !757, !761, !765, !1202, !1203, !1207, !1209, !1210, !1211, !1213, !1214, !1215, !1216}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !742, file: !135, line: 2367, baseType: !31, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !742, file: !135, line: 2368, baseType: !37, size: 32, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !742, file: !135, line: 2376, baseType: !747, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!37, !750}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !752, line: 32, flags: DIFlagFwdDecl)
!752 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!753 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !742, file: !135, line: 2377, baseType: !754, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !756)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !135, line: 75, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !742, file: !135, line: 2378, baseType: !758, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!616, !741, !37, !31, !35}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !742, file: !135, line: 2380, baseType: !762, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !730}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !742, file: !135, line: 2381, baseType: !766, size: 64, offset: 384)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !123, line: 402, size: 9216, align: 512, elements: !768)
!768 = !{!769, !770, !771, !775, !797, !823, !824, !825, !826, !830, !835, !836, !856, !912, !913, !914, !915, !916, !917, !918, !919, !927, !931, !958, !979, !980, !981, !982, !991, !1014, !1015, !1018, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1032, !1033, !1160, !1168, !1169, !1170, !1172, !1176, !1177, !1181, !1182, !1183, !1184, !1186, !1187, !1188, !1195, !1196, !1197, !1201}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !767, file: !123, line: 403, baseType: !122, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !767, file: !123, line: 406, baseType: !112, size: 128, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !767, file: !123, line: 409, baseType: !772, size: 448, offset: 192)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 448, elements: !773)
!773 = !{!774}
!774 = !DISubrange(count: 56)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !767, file: !123, line: 417, baseType: !776, size: 768, offset: 640)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !123, line: 45, size: 768, elements: !777)
!777 = !{!778, !779, !780, !781, !784}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !776, file: !123, line: 46, baseType: !466, size: 512)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !776, file: !123, line: 47, baseType: !766, size: 64, offset: 512)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !776, file: !123, line: 48, baseType: !472, size: 64, offset: 576)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !776, file: !123, line: 49, baseType: !782, size: 64, offset: 640)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !123, line: 49, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !776, file: !123, line: 50, baseType: !785, size: 64, offset: 704)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !787, line: 26, size: 256, elements: !788)
!787 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !786, file: !787, line: 27, baseType: !7, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !786, file: !787, line: 28, baseType: !791, size: 192, offset: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !792, line: 43, size: 192, elements: !793)
!792 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!793 = !{!794, !796}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !791, file: !792, line: 44, baseType: !795, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !83, line: 23, baseType: !82)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !791, file: !792, line: 45, baseType: !112, size: 128, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !767, file: !123, line: 418, baseType: !798, size: 64, offset: 1408)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !123, line: 53, size: 448, elements: !800)
!800 = !{!801, !802, !807, !811, !815, !819}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !799, file: !123, line: 54, baseType: !544, size: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !799, file: !123, line: 55, baseType: !803, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!539, !798, !806, !507}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !799, file: !123, line: 57, baseType: !808, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!539, !798, !806, !31, !50}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !799, file: !123, line: 59, baseType: !812, size: 64, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{null, !766, !31}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !799, file: !123, line: 60, baseType: !816, size: 64, offset: 320)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!37, !766}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !799, file: !123, line: 61, baseType: !820, size: 64, offset: 384)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{null, !766}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !767, file: !123, line: 419, baseType: !31, size: 64, offset: 1472)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !767, file: !123, line: 420, baseType: !31, size: 64, offset: 1536)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !767, file: !123, line: 421, baseType: !472, size: 64, offset: 1600)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !767, file: !123, line: 424, baseType: !827, size: 64, offset: 1664)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !829)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !123, line: 424, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !767, file: !123, line: 425, baseType: !831, size: 64, offset: 1728)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !833)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !99, line: 20, baseType: !834)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !101, line: 26, baseType: !37)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !767, file: !123, line: 426, baseType: !7, size: 32, offset: 1792)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !767, file: !123, line: 435, baseType: !837, size: 256, offset: 1856)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !838, line: 66, size: 256, elements: !839)
!838 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!839 = !{!840, !849, !850, !855}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !837, file: !838, line: 67, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !842, line: 13, baseType: !843)
!842 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !40, line: 181, baseType: !844)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 179, size: 64, elements: !845)
!845 = !{!846}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !844, file: !40, line: 180, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !99, line: 22, baseType: !848)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !101, line: 30, baseType: !58)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !837, file: !838, line: 68, baseType: !795, size: 32, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !837, file: !838, line: 70, baseType: !851, size: 32, offset: 96)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !852, line: 15, size: 32, elements: !853)
!852 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!853 = !{!854}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !851, file: !852, line: 20, baseType: !64, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !837, file: !838, line: 72, baseType: !112, size: 128, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !767, file: !123, line: 437, baseType: !857, size: 64, offset: 2112)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !859, line: 69, size: 320, elements: !860)
!859 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!860 = !{!861, !862, !863, !883, !885, !889, !890}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !858, file: !859, line: 70, baseType: !31, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !858, file: !859, line: 71, baseType: !766, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !858, file: !859, line: 72, baseType: !864, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !859, line: 47, size: 256, elements: !867)
!867 = !{!868, !869, !875, !879}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !866, file: !859, line: 49, baseType: !7, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !866, file: !859, line: 51, baseType: !870, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!37, !31, !873}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !858)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !866, file: !859, line: 53, baseType: !876, size: 64, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!37, !507, !873}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !866, file: !859, line: 55, baseType: !880, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !35}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !858, file: !859, line: 73, baseType: !884, size: 16, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !858, file: !859, line: 74, baseType: !886, size: 8, offset: 208)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !99, line: 16, baseType: !887)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !101, line: 20, baseType: !888)
!888 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !858, file: !859, line: 75, baseType: !98, size: 8, offset: 216)
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !859, line: 76, baseType: !891, size: 64, offset: 256)
!891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !858, file: !859, line: 76, size: 64, elements: !892)
!892 = !{!893, !894, !901}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !891, file: !859, line: 77, baseType: !35, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !891, file: !859, line: 78, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !897)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !859, line: 86, size: 128, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !897, file: !859, line: 87, baseType: !7, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !897, file: !859, line: 88, baseType: !507, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !891, file: !859, line: 79, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !904)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !859, line: 92, size: 256, elements: !905)
!905 = !{!906, !907, !908, !910, !911}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !904, file: !859, line: 94, baseType: !7, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !904, file: !859, line: 95, baseType: !7, size: 32, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !904, file: !859, line: 96, baseType: !909, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !904, file: !859, line: 97, baseType: !864, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !904, file: !859, line: 98, baseType: !35, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !767, file: !123, line: 438, baseType: !7, size: 32, offset: 2176)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !767, file: !123, line: 441, baseType: !7, size: 32, offset: 2208)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !767, file: !123, line: 442, baseType: !827, size: 64, offset: 2240)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !767, file: !123, line: 443, baseType: !831, size: 64, offset: 2304)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !767, file: !123, line: 444, baseType: !451, size: 8, offset: 2368)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !767, file: !123, line: 451, baseType: !451, size: 8, offset: 2376)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !767, file: !123, line: 454, baseType: !7, size: 32, offset: 2400)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !767, file: !123, line: 455, baseType: !920, size: 64, offset: 2432)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !922, line: 23, size: 96, elements: !923)
!922 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!923 = !{!924, !925, !926}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !921, file: !922, line: 24, baseType: !37, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !921, file: !922, line: 24, baseType: !37, size: 32, offset: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !921, file: !922, line: 24, baseType: !37, size: 32, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !767, file: !123, line: 458, baseType: !928, size: 64, offset: 2496)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!37}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !767, file: !123, line: 460, baseType: !932, size: 4032, align: 512, offset: 2560)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !933, size: 4032, elements: !956)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !123, line: 362, size: 576, elements: !934)
!934 = !{!935, !936, !937}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !933, file: !123, line: 363, baseType: !35, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !933, file: !123, line: 364, baseType: !7, size: 32, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !933, file: !123, line: 367, baseType: !938, size: 448, offset: 128)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !123, line: 319, size: 448, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !938, file: !123, line: 320, baseType: !766, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !938, file: !123, line: 321, baseType: !942, size: 384, offset: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !943, line: 40, size: 384, elements: !944)
!943 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!944 = !{!945}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !942, file: !943, line: 41, baseType: !946, size: 384, align: 64)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 384, align: 64, elements: !954)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !948, line: 5, size: 192, align: 64, elements: !949)
!948 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!949 = !{!950, !951, !953}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !947, file: !948, line: 6, baseType: !54, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !947, file: !948, line: 7, baseType: !952, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !947, file: !948, line: 8, baseType: !952, size: 64, offset: 128)
!954 = !{!955}
!955 = !DISubrange(count: 2)
!956 = !{!957}
!957 = !DISubrange(count: 7)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !767, file: !123, line: 463, baseType: !959, size: 192, offset: 6592)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !960, line: 8, size: 192, elements: !961)
!960 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!961 = !{!962, !963, !965}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !959, file: !960, line: 10, baseType: !7, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !959, file: !960, line: 11, baseType: !964, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !959, file: !960, line: 12, baseType: !966, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !968, line: 59, size: 48, elements: !969)
!968 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!969 = !{!970, !974, !975, !976, !977, !978}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !967, file: !968, line: 60, baseType: !971, size: 16)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !99, line: 18, baseType: !972)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !101, line: 23, baseType: !973)
!973 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !967, file: !968, line: 61, baseType: !971, size: 16, offset: 16)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !967, file: !968, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !967, file: !968, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !967, file: !968, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !967, file: !968, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !767, file: !123, line: 465, baseType: !54, size: 64, offset: 6784)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !767, file: !123, line: 469, baseType: !7, size: 32, offset: 6848)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !767, file: !123, line: 470, baseType: !112, size: 128, offset: 6912)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !767, file: !123, line: 471, baseType: !983, size: 64, offset: 7040)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !985, line: 33, size: 96, elements: !986)
!985 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!986 = !{!987, !988, !989, !990}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !984, file: !985, line: 37, baseType: !37, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !984, file: !985, line: 43, baseType: !37, size: 32, offset: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !984, file: !985, line: 45, baseType: !41, size: 16, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !984, file: !985, line: 47, baseType: !41, size: 16, offset: 80)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !767, file: !123, line: 476, baseType: !992, size: 64, offset: 7104)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !123, line: 378, size: 256, elements: !994)
!994 = !{!995, !1011, !1012, !1013}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !993, file: !123, line: 379, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !998, line: 204, baseType: !999)
!998 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !998, line: 197, size: 192, elements: !1000)
!1000 = !{!1001, !1003, !1004, !1005, !1007, !1009}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !999, file: !998, line: 198, baseType: !1002, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !998, line: 21, baseType: !426)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !999, file: !998, line: 199, baseType: !102, size: 8, offset: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !999, file: !998, line: 200, baseType: !102, size: 8, offset: 40)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !999, file: !998, line: 201, baseType: !1006, size: 16, offset: 48)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !998, line: 17, baseType: !109)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !999, file: !998, line: 202, baseType: !1008, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !998, line: 16, baseType: !653)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !999, file: !998, line: 203, baseType: !1010, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !998, line: 22, baseType: !653)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !993, file: !123, line: 380, baseType: !7, size: 32, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !993, file: !123, line: 381, baseType: !507, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !993, file: !123, line: 382, baseType: !507, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !767, file: !123, line: 477, baseType: !993, size: 256, offset: 7168)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !767, file: !123, line: 480, baseType: !1016, size: 64, offset: 7424)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !123, line: 480, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !767, file: !123, line: 483, baseType: !1019, size: 64, offset: 7488)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !123, line: 483, flags: DIFlagFwdDecl)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !767, file: !123, line: 488, baseType: !507, size: 64, offset: 7552)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !767, file: !123, line: 492, baseType: !35, size: 64, offset: 7616)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !767, file: !123, line: 493, baseType: !7, size: 32, offset: 7680)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !767, file: !123, line: 495, baseType: !35, size: 64, offset: 7744)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !767, file: !123, line: 496, baseType: !7, size: 32, offset: 7808)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !767, file: !123, line: 499, baseType: !7, size: 32, offset: 7840)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !767, file: !123, line: 500, baseType: !1028, size: 64, offset: 7872)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1030, line: 45, baseType: !1031)
!1030 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !767, file: !123, line: 503, baseType: !7, size: 32, offset: 7936)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !767, file: !123, line: 504, baseType: !1034, size: 64, offset: 8000)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1037, line: 96, size: 192, elements: !1038)
!1037 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1038 = !{!1039, !1040, !1120, !1124}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1036, file: !1037, line: 97, baseType: !7, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1036, file: !1037, line: 98, baseType: !1041, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1037, line: 24, size: 3072, elements: !1043)
!1043 = !{!1044, !1046, !1047, !1048, !1049, !1073, !1074, !1075, !1076, !1094, !1105, !1106, !1117, !1118, !1119}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1042, file: !1037, line: 26, baseType: !1045, size: 128)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !841, size: 128, elements: !954)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1042, file: !1037, line: 27, baseType: !1045, size: 128, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1042, file: !1037, line: 28, baseType: !37, size: 32, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1042, file: !1037, line: 31, baseType: !74, size: 32, align: 512, offset: 512)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1042, file: !1037, line: 32, baseType: !1050, size: 960, offset: 576)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1051, line: 206, size: 960, elements: !1052)
!1051 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1052 = !{!1053, !1062, !1067, !1069, !1070, !1072}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1050, file: !1051, line: 207, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !40, line: 232, size: 128, align: 64, elements: !1056)
!1056 = !{!1057, !1058}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1055, file: !40, line: 233, baseType: !1054, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1055, file: !40, line: 234, baseType: !1059, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !1054}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1050, file: !1051, line: 208, baseType: !1063, size: 256, offset: 64)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1064, size: 256, elements: !1065)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1065 = !{!1066}
!1066 = !DISubrange(count: 4)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1050, file: !1051, line: 209, baseType: !1068, size: 256, offset: 320)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 256, elements: !1065)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1050, file: !1051, line: 213, baseType: !542, size: 64, offset: 576)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1050, file: !1051, line: 215, baseType: !1071, size: 256, offset: 640)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 256, elements: !1065)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1050, file: !1051, line: 216, baseType: !98, size: 8, offset: 896)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1042, file: !1037, line: 33, baseType: !54, size: 64, offset: 1536)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1042, file: !1037, line: 34, baseType: !54, size: 64, offset: 1600)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1042, file: !1037, line: 35, baseType: !451, size: 8, offset: 1664)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1042, file: !1037, line: 36, baseType: !1077, size: 320, offset: 1728)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1078, line: 11, size: 320, elements: !1079)
!1078 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1079 = !{!1080, !1087, !1088, !1093}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1077, file: !1078, line: 16, baseType: !1081, size: 128)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !40, line: 198, size: 128, elements: !1082)
!1082 = !{!1083, !1085}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1081, file: !40, line: 199, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1081, file: !40, line: 199, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1077, file: !1078, line: 17, baseType: !54, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1077, file: !1078, line: 18, baseType: !1089, size: 64, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !1092}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1077, file: !1078, line: 19, baseType: !425, size: 32, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1042, file: !1037, line: 37, baseType: !1095, size: 256, offset: 2048)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !365, line: 98, size: 256, elements: !1096)
!1096 = !{!1097, !1098, !1099}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1095, file: !365, line: 99, baseType: !841, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1095, file: !365, line: 100, baseType: !112, size: 128, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1095, file: !365, line: 101, baseType: !1100, size: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !365, line: 21, baseType: !1101)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{null, !1104}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1042, file: !1037, line: 38, baseType: !1055, size: 128, align: 64, offset: 2304)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1042, file: !1037, line: 39, baseType: !1107, size: 64, offset: 2432)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1037, line: 49, size: 768, elements: !1109)
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1115, !1116}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1108, file: !1037, line: 50, baseType: !74, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1108, file: !1037, line: 51, baseType: !1068, size: 256, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1108, file: !1037, line: 53, baseType: !1068, size: 256, offset: 320)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1108, file: !1037, line: 54, baseType: !54, size: 64, offset: 576)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1108, file: !1037, line: 55, baseType: !1107, size: 64, offset: 640)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1108, file: !1037, line: 56, baseType: !37, size: 32, offset: 704)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1108, file: !1037, line: 57, baseType: !37, size: 32, offset: 736)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1042, file: !1037, line: 40, baseType: !54, size: 64, offset: 2496)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1042, file: !1037, line: 42, baseType: !37, size: 32, offset: 2560)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1042, file: !1037, line: 43, baseType: !1035, size: 64, offset: 2624)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1036, file: !1037, line: 99, baseType: !1121, offset: 128)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1122, line: 211, elements: !1123)
!1122 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1123 = !{}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1036, file: !1037, line: 100, baseType: !1125, size: 64, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1037, line: 63, size: 3008, elements: !1127)
!1127 = !{!1128, !1129, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1159}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1126, file: !1037, line: 64, baseType: !1107, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1126, file: !1037, line: 65, baseType: !1130, size: 192, offset: 64)
!1130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1107, size: 192, elements: !508)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1126, file: !1037, line: 67, baseType: !37, size: 32, offset: 256)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1126, file: !1037, line: 68, baseType: !837, size: 256, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1126, file: !1037, line: 69, baseType: !74, size: 32, offset: 576)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1126, file: !1037, line: 70, baseType: !837, size: 256, offset: 640)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1126, file: !1037, line: 71, baseType: !54, size: 64, offset: 896)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1126, file: !1037, line: 72, baseType: !54, size: 64, offset: 960)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1126, file: !1037, line: 73, baseType: !54, size: 64, offset: 1024)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1126, file: !1037, line: 74, baseType: !54, size: 64, offset: 1088)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1126, file: !1037, line: 75, baseType: !54, size: 64, offset: 1152)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1126, file: !1037, line: 76, baseType: !54, size: 64, offset: 1216)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1126, file: !1037, line: 77, baseType: !54, size: 64, offset: 1280)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1126, file: !1037, line: 78, baseType: !54, size: 64, offset: 1344)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1126, file: !1037, line: 79, baseType: !451, size: 8, offset: 1408)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1126, file: !1037, line: 80, baseType: !54, size: 64, offset: 1472)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1126, file: !1037, line: 81, baseType: !837, size: 256, offset: 1536)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1126, file: !1037, line: 82, baseType: !786, size: 256, offset: 1792)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1126, file: !1037, line: 84, baseType: !64, size: 32, offset: 2048)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1126, file: !1037, line: 87, baseType: !54, size: 64, offset: 2112)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1126, file: !1037, line: 88, baseType: !54, size: 64, offset: 2176)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1126, file: !1037, line: 89, baseType: !1151, size: 704, offset: 2240)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !365, line: 111, size: 704, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1158}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1151, file: !365, line: 112, baseType: !1095, size: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1151, file: !365, line: 113, baseType: !1077, size: 320, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1151, file: !365, line: 116, baseType: !1156, size: 64, offset: 576)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !365, line: 18, flags: DIFlagFwdDecl)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1151, file: !365, line: 117, baseType: !37, size: 32, offset: 640)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1126, file: !1037, line: 90, baseType: !1035, size: 64, offset: 2944)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !767, file: !123, line: 515, baseType: !1161, size: 64, offset: 8064)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1163, line: 117, size: 128, elements: !1164)
!1163 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1164 = !{!1165, !1166, !1167}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1162, file: !1163, line: 118, baseType: !833, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1162, file: !1163, line: 119, baseType: !833, size: 32, offset: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1162, file: !1163, line: 120, baseType: !542, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !767, file: !123, line: 516, baseType: !7, size: 32, offset: 8128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !767, file: !123, line: 519, baseType: !7, size: 32, offset: 8160)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !767, file: !123, line: 520, baseType: !1171, size: 64, offset: 8192)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !767, file: !123, line: 523, baseType: !1173, size: 64, offset: 8256)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !123, line: 523, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !767, file: !123, line: 524, baseType: !7, size: 32, offset: 8320)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !767, file: !123, line: 525, baseType: !1178, size: 64, offset: 8384)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !123, line: 525, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !767, file: !123, line: 526, baseType: !7, size: 32, offset: 8448)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !767, file: !123, line: 533, baseType: !35, size: 64, offset: 8512)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !767, file: !123, line: 534, baseType: !7, size: 32, offset: 8576)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !767, file: !123, line: 535, baseType: !1185, size: 64, offset: 8640)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !767, file: !123, line: 536, baseType: !7, size: 32, offset: 8704)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !767, file: !123, line: 539, baseType: !37, size: 32, offset: 8736)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !767, file: !123, line: 540, baseType: !1189, size: 64, offset: 8768)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1191, line: 32, size: 64, elements: !1192)
!1191 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1192 = !{!1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1190, file: !1191, line: 33, baseType: !833, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1190, file: !1191, line: 34, baseType: !833, size: 32, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !767, file: !123, line: 563, baseType: !112, size: 128, offset: 8832)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !767, file: !123, line: 565, baseType: !112, size: 128, offset: 8960)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !767, file: !123, line: 568, baseType: !1198, size: 64, offset: 9088)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{null}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !767, file: !123, line: 570, baseType: !64, size: 32, offset: 9152)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !742, file: !135, line: 2382, baseType: !741, size: 64, offset: 448)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !742, file: !135, line: 2383, baseType: !1204, size: 64, offset: 512)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !40, line: 194, size: 64, elements: !1205)
!1205 = !{!1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1204, file: !40, line: 195, baseType: !1084, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !742, file: !135, line: 2385, baseType: !1208, offset: 576)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1122, line: 206, elements: !1123)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !742, file: !135, line: 2386, baseType: !1208, offset: 576)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !742, file: !135, line: 2387, baseType: !1208, offset: 576)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !742, file: !135, line: 2388, baseType: !1212, offset: 576)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1208, elements: !508)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !742, file: !135, line: 2390, baseType: !1208, offset: 576)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !742, file: !135, line: 2391, baseType: !1208, offset: 576)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !742, file: !135, line: 2392, baseType: !1208, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !742, file: !135, line: 2393, baseType: !1208, offset: 576)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !731, file: !135, line: 1197, baseType: !1218, size: 64, offset: 384)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1220)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !135, line: 2057, size: 1664, elements: !1221)
!1221 = !{!1222, !1226, !1230, !1231, !1235, !1259, !1263, !1264, !1265, !1269, !1273, !1277, !1278, !1279, !1285, !1289, !1290, !2442, !2443, !2444, !2445, !2449, !2453, !2500, !2515, !2516}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1220, file: !135, line: 2058, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!581, !730}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1220, file: !135, line: 2059, baseType: !1227, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !581}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1220, file: !135, line: 2060, baseType: !1227, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1220, file: !135, line: 2062, baseType: !1232, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !581, !37}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1220, file: !135, line: 2063, baseType: !1236, size: 64, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!37, !581, !1239}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !130, line: 42, size: 384, elements: !1241)
!1241 = !{!1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1240, file: !130, line: 43, baseType: !542, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1240, file: !130, line: 45, baseType: !542, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1240, file: !130, line: 52, baseType: !56, size: 64, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1240, file: !130, line: 53, baseType: !56, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1240, file: !130, line: 55, baseType: !129, size: 32, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1240, file: !130, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1240, file: !130, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1240, file: !130, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1240, file: !130, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1240, file: !130, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1240, file: !130, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1240, file: !130, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1240, file: !130, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1240, file: !130, line: 78, baseType: !1256, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !130, line: 78, flags: DIFlagFwdDecl)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1220, file: !135, line: 2064, baseType: !1260, size: 64, offset: 320)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!37, !581}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1220, file: !135, line: 2065, baseType: !1227, size: 64, offset: 384)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1220, file: !135, line: 2066, baseType: !762, size: 64, offset: 448)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1220, file: !135, line: 2067, baseType: !1266, size: 64, offset: 512)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!37, !730, !37}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1220, file: !135, line: 2068, baseType: !1270, size: 64, offset: 576)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!37, !730, !134}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1220, file: !135, line: 2069, baseType: !1274, size: 64, offset: 640)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!37, !730}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1220, file: !135, line: 2070, baseType: !1270, size: 64, offset: 704)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1220, file: !135, line: 2071, baseType: !1274, size: 64, offset: 768)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1220, file: !135, line: 2072, baseType: !1280, size: 64, offset: 832)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!37, !616, !1283}
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !135, line: 62, flags: DIFlagFwdDecl)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1220, file: !135, line: 2073, baseType: !1286, size: 64, offset: 896)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!37, !730, !964, !507}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1220, file: !135, line: 2074, baseType: !762, size: 64, offset: 960)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1220, file: !135, line: 2076, baseType: !1291, size: 64, offset: 1024)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!37, !1294, !616}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1296, line: 17, size: 960, elements: !1297)
!1296 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1297 = !{!1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1327, !1328, !2441}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1295, file: !1296, line: 18, baseType: !507, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1295, file: !1296, line: 19, baseType: !50, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1295, file: !1296, line: 20, baseType: !50, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1295, file: !1296, line: 21, baseType: !50, size: 64, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1295, file: !1296, line: 22, baseType: !50, size: 64, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1295, file: !1296, line: 23, baseType: !56, size: 64, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1295, file: !1296, line: 24, baseType: !56, size: 64, offset: 384)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1295, file: !1296, line: 25, baseType: !837, size: 256, offset: 448)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1295, file: !1296, line: 26, baseType: !1307, size: 64, offset: 704)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1309)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1296, line: 32, size: 256, elements: !1310)
!1310 = !{!1311, !1315, !1319, !1323}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1309, file: !1296, line: 33, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!35, !1294, !55}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1309, file: !1296, line: 34, baseType: !1316, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !1294, !35}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1309, file: !1296, line: 35, baseType: !1320, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!35, !1294, !35, !55}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1309, file: !1296, line: 36, baseType: !1324, size: 64, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!37, !1294, !35}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1295, file: !1296, line: 27, baseType: !37, size: 32, offset: 768)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1295, file: !1296, line: 28, baseType: !1329, size: 64, offset: 832)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !135, line: 994, size: 1856, align: 64, elements: !1332)
!1332 = !{!1333, !1344, !1345, !1347, !1348, !1349, !1350, !1351, !1406, !1730, !1739, !1745, !1746, !2431, !2432, !2433, !2434, !2436, !2437, !2440}
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1331, file: !135, line: 995, baseType: !1334, size: 128)
!1334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1331, file: !135, line: 995, size: 128, elements: !1335)
!1335 = !{!1336, !1342, !1343}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1334, file: !135, line: 996, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1338, line: 60, size: 64, elements: !1339)
!1338 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1339 = !{!1340}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1337, file: !1338, line: 61, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1334, file: !135, line: 997, baseType: !1055, size: 128, align: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1334, file: !135, line: 998, baseType: !7, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1331, file: !135, line: 1005, baseType: !74, size: 32, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1331, file: !135, line: 1006, baseType: !1346, size: 32, offset: 160)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !40, line: 156, baseType: !7)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1331, file: !135, line: 1007, baseType: !841, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1331, file: !135, line: 1008, baseType: !837, size: 256, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1331, file: !135, line: 1009, baseType: !56, size: 64, offset: 512)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1331, file: !135, line: 1010, baseType: !7, size: 32, offset: 576)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1331, file: !135, line: 1011, baseType: !1352, size: 256, offset: 640)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !135, line: 948, size: 256, elements: !1353)
!1353 = !{!1354, !1375, !1402, !1403, !1404, !1405}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1352, file: !135, line: 949, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1356, line: 34, baseType: !1357)
!1356 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1356, line: 25, size: 64, elements: !1358)
!1358 = !{!1359}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1357, file: !1356, line: 26, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1361, line: 27, baseType: !1362)
!1361 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1361, line: 13, size: 64, elements: !1363)
!1363 = !{!1364, !1374}
!1364 = !DIDerivedType(tag: DW_TAG_member, scope: !1362, file: !1361, line: 14, baseType: !1365, size: 32)
!1365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1362, file: !1361, line: 14, size: 32, elements: !1366)
!1366 = !{!1367, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1365, file: !1361, line: 15, baseType: !64, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !1361, line: 16, baseType: !1369, size: 32)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1365, file: !1361, line: 16, size: 32, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1369, file: !1361, line: 18, baseType: !98, size: 8)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1369, file: !1361, line: 19, baseType: !1373, size: 24, offset: 8)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 24, elements: !508)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1362, file: !1361, line: 26, baseType: !86, size: 32, offset: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1352, file: !135, line: 950, baseType: !1376, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !1378)
!1378 = !{!1379, !1385, !1386, !1387, !1389, !1390, !1391, !1392}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1377, file: !19, line: 61, baseType: !1380, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1381, line: 113, baseType: !1382)
!1381 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1381, line: 111, size: 32, elements: !1383)
!1383 = !{!1384}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1382, file: !1381, line: 112, baseType: !64, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1377, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1377, file: !19, line: 63, baseType: !74, size: 32, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1377, file: !19, line: 65, baseType: !1388, size: 256, offset: 128)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1204, size: 256, elements: !1065)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1377, file: !19, line: 66, baseType: !1204, size: 64, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1377, file: !19, line: 68, baseType: !69, size: 192, offset: 448)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1377, file: !19, line: 69, baseType: !1055, size: 128, align: 64, offset: 640)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1377, file: !19, line: 70, baseType: !1393, offset: 768)
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, elements: !1400)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !1395)
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1394, file: !19, line: 55, baseType: !37, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1394, file: !19, line: 56, baseType: !1398, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!1400 = !{!1401}
!1401 = !DISubrange(count: -1)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1352, file: !135, line: 951, baseType: !18, size: 32, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1352, file: !135, line: 952, baseType: !587, size: 32, offset: 160)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1352, file: !135, line: 952, baseType: !587, size: 32, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1352, file: !135, line: 953, baseType: !37, size: 32, offset: 224)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1331, file: !135, line: 1012, baseType: !1407, size: 64, offset: 896)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1409)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1410, line: 110, size: 1472, elements: !1411)
!1410 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1411 = !{!1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1428, !1429, !1430, !1431, !1432, !1433, !1551, !1552, !1553, !1554, !1555, !1586, !1716, !1717, !1725}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1409, file: !1410, line: 111, baseType: !841, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1409, file: !1410, line: 112, baseType: !587, size: 32, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1409, file: !1410, line: 113, baseType: !596, size: 32, offset: 96)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1409, file: !1410, line: 114, baseType: !587, size: 32, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1409, file: !1410, line: 115, baseType: !596, size: 32, offset: 160)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1409, file: !1410, line: 116, baseType: !587, size: 32, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1409, file: !1410, line: 117, baseType: !596, size: 32, offset: 224)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1409, file: !1410, line: 118, baseType: !587, size: 32, offset: 256)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1409, file: !1410, line: 119, baseType: !596, size: 32, offset: 288)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1409, file: !1410, line: 120, baseType: !7, size: 32, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1409, file: !1410, line: 121, baseType: !1423, size: 64, offset: 384)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1424, line: 24, baseType: !1425)
!1424 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1424, line: 24, size: 64, elements: !1426)
!1426 = !{!1427}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1425, file: !1424, line: 24, baseType: !652, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1409, file: !1410, line: 122, baseType: !1423, size: 64, offset: 448)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1409, file: !1410, line: 123, baseType: !1423, size: 64, offset: 512)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1409, file: !1410, line: 124, baseType: !1423, size: 64, offset: 576)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1409, file: !1410, line: 125, baseType: !1423, size: 64, offset: 640)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1409, file: !1410, line: 127, baseType: !102, size: 8, offset: 704)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1409, file: !1410, line: 129, baseType: !1434, size: 64, offset: 768)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1436, line: 195, size: 1728, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1437 = !{!1438, !1439, !1442, !1447, !1456, !1459, !1460, !1467, !1468, !1469, !1470, !1473, !1474, !1475, !1476, !1477, !1515, !1536}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1435, file: !1436, line: 196, baseType: !1380, size: 32)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1435, file: !1436, line: 197, baseType: !1440, size: 32, offset: 32)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1436, line: 28, baseType: !1441)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !40, line: 104, baseType: !833)
!1442 = !DIDerivedType(tag: DW_TAG_member, scope: !1435, file: !1436, line: 198, baseType: !1443, size: 192, offset: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1435, file: !1436, line: 198, size: 192, elements: !1444)
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1443, file: !1436, line: 199, baseType: !112, size: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1443, file: !1436, line: 200, baseType: !947, size: 192, align: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1435, file: !1436, line: 205, baseType: !1448, size: 320, offset: 256)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1449, line: 48, size: 320, elements: !1450)
!1449 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1450 = !{!1451, !1452, !1453, !1454, !1455}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1448, file: !1449, line: 49, baseType: !841, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1448, file: !1449, line: 55, baseType: !841, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1448, file: !1449, line: 57, baseType: !851, size: 32, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1448, file: !1449, line: 59, baseType: !795, size: 32, offset: 160)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1448, file: !1449, line: 60, baseType: !112, size: 128, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1435, file: !1436, line: 206, baseType: !1457, size: 64, offset: 576)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1436, line: 206, flags: DIFlagFwdDecl)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1435, file: !1436, line: 207, baseType: !35, size: 64, offset: 640)
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !1435, file: !1436, line: 208, baseType: !1461, size: 64, offset: 704)
!1461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1435, file: !1436, line: 208, size: 64, elements: !1462)
!1462 = !{!1463, !1466}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1461, file: !1436, line: 209, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1465, line: 8, baseType: !848)
!1465 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1461, file: !1436, line: 210, baseType: !1464, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1435, file: !1436, line: 212, baseType: !1464, size: 64, offset: 768)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1435, file: !1436, line: 213, baseType: !587, size: 32, offset: 832)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1435, file: !1436, line: 214, baseType: !596, size: 32, offset: 864)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1435, file: !1436, line: 215, baseType: !1471, size: 32, offset: 896)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1436, line: 31, baseType: !1472)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !40, line: 110, baseType: !425)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1435, file: !1436, line: 216, baseType: !41, size: 16, offset: 928)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1435, file: !1436, line: 217, baseType: !41, size: 16, offset: 944)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1435, file: !1436, line: 221, baseType: !973, size: 16, offset: 960)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1435, file: !1436, line: 228, baseType: !54, size: 64, offset: 1024)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1435, file: !1436, line: 245, baseType: !1478, size: 320, offset: 1088)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1435, file: !1436, line: 245, size: 320, elements: !1479)
!1479 = !{!1480, !1507}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1478, file: !1436, line: 246, baseType: !1481, size: 320)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1436, line: 114, size: 320, elements: !1482)
!1482 = !{!1483, !1484, !1496, !1499, !1506}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1481, file: !1436, line: 116, baseType: !54, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1481, file: !1436, line: 117, baseType: !1485, size: 64, offset: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1481, file: !1436, line: 117, size: 64, elements: !1486)
!1486 = !{!1487, !1495}
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1485, file: !1436, line: 118, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1485, file: !1436, line: 118, size: 64, elements: !1489)
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1488, file: !1436, line: 120, baseType: !108, size: 16)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1488, file: !1436, line: 121, baseType: !1492, size: 48, offset: 16)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 48, elements: !1493)
!1493 = !{!1494}
!1494 = !DISubrange(count: 6)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1485, file: !1436, line: 127, baseType: !54, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1481, file: !1436, line: 129, baseType: !1497, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1436, line: 102, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1481, file: !1436, line: 130, baseType: !1500, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1436, line: 108, size: 192, elements: !1502)
!1502 = !{!1503, !1504, !1505}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1501, file: !1436, line: 109, baseType: !1055, size: 128, align: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1501, file: !1436, line: 110, baseType: !1380, size: 32, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1501, file: !1436, line: 111, baseType: !451, size: 8, offset: 160)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1481, file: !1436, line: 131, baseType: !31, size: 64, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !1436, line: 247, baseType: !1508, size: 320)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !1436, line: 247, size: 320, elements: !1509)
!1509 = !{!1510, !1511, !1512, !1513, !1514}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1508, file: !1436, line: 248, baseType: !54, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1508, file: !1436, line: 249, baseType: !54, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1508, file: !1436, line: 250, baseType: !1497, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1508, file: !1436, line: 251, baseType: !1500, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1508, file: !1436, line: 252, baseType: !507, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1435, file: !1436, line: 260, baseType: !1516, size: 256, offset: 1408)
!1516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1435, file: !1436, line: 260, size: 256, elements: !1517)
!1517 = !{!1518, !1524}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1516, file: !1436, line: 261, baseType: !1519, size: 256)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1436, line: 134, size: 256, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1519, file: !1436, line: 135, baseType: !35, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1519, file: !1436, line: 136, baseType: !1523, size: 256)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 256, elements: !1065)
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1516, file: !1436, line: 262, baseType: !1525, size: 256)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1516, file: !1436, line: 262, size: 256, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1525, file: !1436, line: 264, baseType: !112, size: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1525, file: !1436, line: 265, baseType: !1529, size: 128, offset: 128)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1530, line: 22, size: 128, elements: !1531)
!1530 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1531 = !{!1532, !1535}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1529, file: !1530, line: 23, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1530, line: 23, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1529, file: !1530, line: 24, baseType: !54, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1435, file: !1436, line: 280, baseType: !1537, size: 64, offset: 1664)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1436, line: 176, size: 192, elements: !1539)
!1539 = !{!1540, !1549, !1550}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1538, file: !1436, line: 177, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1436, line: 171, baseType: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!37, !1434, !1545, !1547, !1434}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1498)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1519)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1538, file: !1436, line: 178, baseType: !1434, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1538, file: !1436, line: 179, baseType: !1497, size: 64, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1409, file: !1410, line: 130, baseType: !1434, size: 64, offset: 832)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1409, file: !1410, line: 131, baseType: !1434, size: 64, offset: 896)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1409, file: !1410, line: 132, baseType: !1434, size: 64, offset: 960)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1409, file: !1410, line: 135, baseType: !35, size: 64, offset: 1024)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1409, file: !1410, line: 137, baseType: !1556, size: 64, offset: 1088)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1558, line: 14, size: 1088, elements: !1559)
!1558 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1559 = !{!1560, !1561, !1570, !1571, !1572, !1573, !1574, !1575}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1557, file: !1558, line: 15, baseType: !1380, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1557, file: !1558, line: 17, baseType: !1562, size: 320, offset: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1563, line: 22, size: 320, elements: !1564)
!1563 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1564 = !{!1565, !1566, !1567, !1568}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1562, file: !1563, line: 23, baseType: !795, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1562, file: !1563, line: 24, baseType: !847, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1562, file: !1563, line: 26, baseType: !112, size: 128, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1562, file: !1563, line: 28, baseType: !1569, size: 64, offset: 256)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1557, file: !1558, line: 19, baseType: !54, size: 64, offset: 384)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1557, file: !1558, line: 20, baseType: !841, size: 64, offset: 448)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1557, file: !1558, line: 23, baseType: !1081, size: 128, offset: 512)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1557, file: !1558, line: 24, baseType: !587, size: 32, offset: 640)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1557, file: !1558, line: 29, baseType: !841, size: 64, offset: 704)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1557, file: !1558, line: 36, baseType: !1576, size: 320, offset: 768)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1577, line: 15, size: 320, elements: !1578)
!1577 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1578 = !{!1579, !1580, !1581, !1582, !1583, !1584, !1585}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1576, file: !1577, line: 16, baseType: !795, size: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1576, file: !1577, line: 18, baseType: !37, size: 32, offset: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1576, file: !1577, line: 19, baseType: !37, size: 32, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1576, file: !1577, line: 20, baseType: !37, size: 32, offset: 96)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1576, file: !1577, line: 21, baseType: !37, size: 32, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1576, file: !1577, line: 22, baseType: !54, size: 64, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1576, file: !1577, line: 23, baseType: !54, size: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1409, file: !1410, line: 138, baseType: !1587, size: 64, offset: 1152)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1589, line: 68, size: 4800, elements: !1590)
!1589 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1590 = !{!1591, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1698, !1699, !1713, !1715}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1588, file: !1589, line: 69, baseType: !1592, size: 576)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1589, line: 23, size: 576, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1592, file: !1589, line: 24, baseType: !425, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1592, file: !1589, line: 25, baseType: !1596, size: 512, offset: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1592, file: !1589, line: 25, size: 512, elements: !1597)
!1597 = !{!1598, !1607}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1596, file: !1589, line: 26, baseType: !1599, size: 480)
!1599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1600, size: 480, elements: !1605)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1589, line: 17, size: 96, elements: !1601)
!1601 = !{!1602, !1603, !1604}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1600, file: !1589, line: 18, baseType: !425, size: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1600, file: !1589, line: 19, baseType: !425, size: 32, offset: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1600, file: !1589, line: 20, baseType: !425, size: 32, offset: 64)
!1605 = !{!1606}
!1606 = !DISubrange(count: 5)
!1607 = !DIDerivedType(tag: DW_TAG_member, scope: !1596, file: !1589, line: 27, baseType: !1608, size: 128)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1596, file: !1589, line: 27, size: 128, elements: !1609)
!1609 = !{!1610, !1612}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1608, file: !1589, line: 28, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1608, file: !1589, line: 29, baseType: !1611, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1588, file: !1589, line: 70, baseType: !1592, size: 576, offset: 576)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1588, file: !1589, line: 71, baseType: !1592, size: 576, offset: 1152)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1588, file: !1589, line: 72, baseType: !1587, size: 64, offset: 1728)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1588, file: !1589, line: 73, baseType: !37, size: 32, offset: 1792)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1588, file: !1589, line: 74, baseType: !587, size: 32, offset: 1824)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1588, file: !1589, line: 75, baseType: !596, size: 32, offset: 1856)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1588, file: !1589, line: 76, baseType: !1620, size: 192, offset: 1920)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1621, line: 9, size: 192, elements: !1622)
!1621 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1622 = !{!1623, !1624, !1628, !1629}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1620, file: !1621, line: 10, baseType: !841, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1620, file: !1621, line: 11, baseType: !1625, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1627)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1621, line: 7, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1620, file: !1621, line: 12, baseType: !7, size: 32, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1620, file: !1621, line: 13, baseType: !1380, size: 32, offset: 160)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1588, file: !1589, line: 77, baseType: !54, size: 64, offset: 2112)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1588, file: !1589, line: 80, baseType: !451, size: 8, offset: 2176)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1588, file: !1589, line: 88, baseType: !112, size: 128, offset: 2240)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1588, file: !1589, line: 89, baseType: !1434, size: 64, offset: 2368)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1588, file: !1589, line: 90, baseType: !1448, size: 320, offset: 2432)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1588, file: !1589, line: 97, baseType: !1095, size: 256, offset: 2752)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1588, file: !1589, line: 99, baseType: !1637, size: 768, offset: 3008)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !27, line: 199, size: 768, elements: !1638)
!1638 = !{!1639, !1644}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1637, file: !27, line: 200, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!37, !1643}
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1637, file: !27, line: 201, baseType: !1645, size: 704, offset: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !27, line: 193, size: 704, elements: !1646)
!1646 = !{!1647, !1694}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1645, file: !27, line: 195, baseType: !1648, size: 640)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !27, line: 173, size: 640, elements: !1649)
!1649 = !{!1650, !1662, !1663, !1664, !1684, !1685, !1687, !1693}
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !27, line: 174, baseType: !1651, size: 192)
!1651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1648, file: !27, line: 174, size: 192, elements: !1652)
!1652 = !{!1653, !1661}
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !27, line: 175, baseType: !1654, size: 192)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1651, file: !27, line: 175, size: 192, elements: !1655)
!1655 = !{!1656, !1657, !1658, !1659, !1660}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1654, file: !27, line: 176, baseType: !48, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1654, file: !27, line: 177, baseType: !37, size: 32, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1654, file: !27, line: 178, baseType: !37, size: 32, offset: 96)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1654, file: !27, line: 179, baseType: !37, size: 32, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1654, file: !27, line: 180, baseType: !37, size: 32, offset: 160)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1651, file: !27, line: 182, baseType: !1055, size: 128, align: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1648, file: !27, line: 184, baseType: !785, size: 64, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1648, file: !27, line: 185, baseType: !48, size: 64, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1648, file: !27, line: 186, baseType: !1665, size: 64, offset: 320)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !27, line: 204, size: 960, elements: !1667)
!1667 = !{!1668, !1669, !1673, !1680}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1666, file: !27, line: 205, baseType: !1637, size: 768)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1666, file: !27, line: 206, baseType: !1670, size: 64, offset: 768)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!1643, !1665}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1666, file: !27, line: 207, baseType: !1674, size: 64, offset: 832)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{null, !1677, !1678, !1679}
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1666, file: !27, line: 209, baseType: !1681, size: 64, offset: 896)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!37, !1677, !48}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1648, file: !27, line: 187, baseType: !1643, size: 64, offset: 384)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1648, file: !27, line: 188, baseType: !1686, size: 64, offset: 448)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1648, file: !27, line: 189, baseType: !1688, size: 64, offset: 512)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !27, line: 157, size: 256, elements: !1690)
!1690 = !{!1691, !1692}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1689, file: !27, line: 158, baseType: !947, size: 192, align: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1689, file: !27, line: 159, baseType: !1677, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1648, file: !27, line: 190, baseType: !1204, size: 64, offset: 576)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1645, file: !27, line: 196, baseType: !1695, size: 64, offset: 640)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !948, line: 12, size: 64, elements: !1696)
!1696 = !{!1697}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1695, file: !948, line: 13, baseType: !952, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1588, file: !1589, line: 100, baseType: !1677, size: 64, offset: 3776)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1588, file: !1589, line: 102, baseType: !1700, size: 64, offset: 3840)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1589, line: 107, size: 1152, elements: !1702)
!1702 = !{!1703, !1704, !1705, !1706, !1707, !1711}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1701, file: !1589, line: 108, baseType: !1081, size: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1701, file: !1589, line: 109, baseType: !1587, size: 64, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1701, file: !1589, line: 110, baseType: !587, size: 32, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1701, file: !1589, line: 111, baseType: !64, size: 32, offset: 224)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1701, file: !1589, line: 112, baseType: !1708, size: 640, offset: 256)
!1708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !841, size: 640, elements: !1709)
!1709 = !{!1710}
!1710 = !DISubrange(count: 10)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1701, file: !1589, line: 113, baseType: !1712, size: 256, offset: 896)
!1712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !841, size: 256, elements: !1065)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1588, file: !1589, line: 103, baseType: !1714, size: 640, offset: 3904)
!1714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 640, elements: !1709)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1588, file: !1589, line: 104, baseType: !1071, size: 256, offset: 4544)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1409, file: !1410, line: 139, baseType: !1700, size: 64, offset: 1216)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1409, file: !1410, line: 140, baseType: !1718, size: 64, offset: 1280)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1410, line: 25, size: 64, elements: !1720)
!1720 = !{!1721, !1722, !1723}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1719, file: !1410, line: 26, baseType: !64, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1719, file: !1410, line: 27, baseType: !37, size: 32, offset: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1719, file: !1410, line: 28, baseType: !1724, offset: 64)
!1724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, elements: !1400)
!1725 = !DIDerivedType(tag: DW_TAG_member, scope: !1409, file: !1410, line: 142, baseType: !1726, size: 128, offset: 1344)
!1726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1409, file: !1410, line: 142, size: 128, elements: !1727)
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1726, file: !1410, line: 143, baseType: !37, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1726, file: !1410, line: 144, baseType: !1055, size: 128, align: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1331, file: !135, line: 1013, baseType: !1731, size: 256, offset: 960)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !135, line: 970, size: 256, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1731, file: !135, line: 971, baseType: !54, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1731, file: !135, line: 972, baseType: !7, size: 32, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1731, file: !135, line: 973, baseType: !7, size: 32, offset: 96)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1731, file: !135, line: 974, baseType: !7, size: 32, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1731, file: !135, line: 975, baseType: !7, size: 32, offset: 160)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1731, file: !135, line: 976, baseType: !56, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1331, file: !135, line: 1014, baseType: !1740, size: 128, offset: 1216)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1741, line: 8, size: 128, elements: !1742)
!1741 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1742 = !{!1743, !1744}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1740, file: !1741, line: 9, baseType: !724, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1740, file: !1741, line: 10, baseType: !616, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1331, file: !135, line: 1015, baseType: !581, size: 64, offset: 1344)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1331, file: !135, line: 1016, baseType: !1747, size: 64, offset: 1408)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1749)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !135, line: 1914, size: 2112, elements: !1750)
!1750 = !{!1751, !1752, !1757, !1761, !1765, !2315, !2316, !2322, !2335, !2343, !2347, !2348, !2352, !2353, !2357, !2362, !2363, !2367, !2371, !2377, !2378, !2382, !2383, !2390, !2394, !2398, !2404, !2408, !2412, !2416, !2420, !2421, !2427}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1749, file: !135, line: 1915, baseType: !766, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1749, file: !135, line: 1916, baseType: !1753, size: 64, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!56, !1756, !56, !37}
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1749, file: !135, line: 1917, baseType: !1758, size: 64, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!539, !1756, !507, !50, !55}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1749, file: !135, line: 1918, baseType: !1762, size: 64, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!539, !1756, !31, !50, !55}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1749, file: !135, line: 1919, baseType: !1766, size: 64, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!539, !1769, !2312}
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !135, line: 373, size: 384, elements: !1771)
!1771 = !{!1772, !1773, !1774, !1778, !1779, !1780, !1781}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1770, file: !135, line: 374, baseType: !1756, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1770, file: !135, line: 375, baseType: !56, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1770, file: !135, line: 376, baseType: !1775, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{null, !1769, !542}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1770, file: !135, line: 377, baseType: !35, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1770, file: !135, line: 378, baseType: !37, size: 32, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1770, file: !135, line: 379, baseType: !108, size: 16, offset: 288)
!1781 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !135, line: 380, baseType: !1782, size: 64, offset: 320)
!1782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1770, file: !135, line: 380, size: 64, elements: !1783)
!1783 = !{!1784, !2308}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1782, file: !135, line: 386, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1787, line: 998, size: 448, elements: !1788)
!1787 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1788 = !{!1789, !2294, !2295}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1786, file: !1787, line: 999, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !256, line: 293, size: 1536, elements: !1792)
!1792 = !{!1793, !2261, !2275}
!1793 = !DIDerivedType(tag: DW_TAG_member, scope: !1791, file: !256, line: 295, baseType: !1794, size: 512)
!1794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1791, file: !256, line: 295, size: 512, elements: !1795)
!1795 = !{!1796, !1822}
!1796 = !DIDerivedType(tag: DW_TAG_member, scope: !1794, file: !256, line: 296, baseType: !1797, size: 448)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1794, file: !256, line: 296, size: 448, elements: !1798)
!1798 = !{!1799, !1800, !1809, !1810, !1811, !1820, !1821}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1797, file: !256, line: 298, baseType: !54, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !1797, file: !256, line: 299, baseType: !1801, size: 128, offset: 64)
!1801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1797, file: !256, line: 299, size: 128, elements: !1802)
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1801, file: !256, line: 300, baseType: !112, size: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, scope: !1801, file: !256, line: 302, baseType: !1805, size: 128)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1801, file: !256, line: 302, size: 128, elements: !1806)
!1806 = !{!1807, !1808}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1805, file: !256, line: 303, baseType: !35, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1805, file: !256, line: 305, baseType: !7, size: 32, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1797, file: !256, line: 310, baseType: !577, size: 64, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1797, file: !256, line: 311, baseType: !54, size: 64, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, scope: !1797, file: !256, line: 312, baseType: !1812, size: 64, offset: 320)
!1812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1797, file: !256, line: 312, size: 64, elements: !1813)
!1813 = !{!1814, !1815}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1812, file: !256, line: 313, baseType: !35, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1812, file: !256, line: 314, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !256, line: 257, baseType: !1817)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !256, line: 255, size: 64, elements: !1818)
!1818 = !{!1819}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1817, file: !256, line: 256, baseType: !54, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1797, file: !256, line: 316, baseType: !64, size: 32, offset: 384)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1797, file: !256, line: 317, baseType: !64, size: 32, offset: 416)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1794, file: !256, line: 323, baseType: !1823, size: 512, align: 128)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !256, line: 74, size: 512, align: 128, elements: !1824)
!1824 = !{!1825, !1826, !2255, !2260}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1823, file: !256, line: 75, baseType: !54, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, scope: !1823, file: !256, line: 83, baseType: !1827, size: 320, offset: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1823, file: !256, line: 83, size: 320, elements: !1828)
!1828 = !{!1829, !1850, !1864, !1868, !2254}
!1829 = !DIDerivedType(tag: DW_TAG_member, scope: !1827, file: !256, line: 84, baseType: !1830, size: 320)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1827, file: !256, line: 84, size: 320, elements: !1831)
!1831 = !{!1832, !1843, !1844, !1849}
!1832 = !DIDerivedType(tag: DW_TAG_member, scope: !1830, file: !256, line: 90, baseType: !1833, size: 128)
!1833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1830, file: !256, line: 90, size: 128, elements: !1834)
!1834 = !{!1835, !1836, !1841, !1842}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1833, file: !256, line: 91, baseType: !112, size: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, scope: !1833, file: !256, line: 94, baseType: !1837, size: 128)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1833, file: !256, line: 94, size: 128, elements: !1838)
!1838 = !{!1839, !1840}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1837, file: !256, line: 96, baseType: !35, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1837, file: !256, line: 98, baseType: !7, size: 32, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1833, file: !256, line: 102, baseType: !112, size: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1833, file: !256, line: 103, baseType: !112, size: 128)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1830, file: !256, line: 106, baseType: !577, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, scope: !1830, file: !256, line: 107, baseType: !1845, size: 64, offset: 192)
!1845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1830, file: !256, line: 107, size: 64, elements: !1846)
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1845, file: !256, line: 108, baseType: !54, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1845, file: !256, line: 109, baseType: !54, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1830, file: !256, line: 117, baseType: !54, size: 64, offset: 256)
!1850 = !DIDerivedType(tag: DW_TAG_member, scope: !1827, file: !256, line: 119, baseType: !1851, size: 320)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1827, file: !256, line: 119, size: 320, elements: !1852)
!1852 = !{!1853, !1854, !1857, !1858, !1859}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1851, file: !256, line: 124, baseType: !54, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1851, file: !256, line: 125, baseType: !1855, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !256, line: 125, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1851, file: !256, line: 126, baseType: !54, size: 64, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1851, file: !256, line: 127, baseType: !54, size: 64, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1851, file: !256, line: 128, baseType: !1860, size: 64, offset: 256)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1851, file: !256, line: 128, size: 64, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1860, file: !256, line: 133, baseType: !54, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1860, file: !256, line: 138, baseType: !841, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, scope: !1827, file: !256, line: 141, baseType: !1865, size: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1827, file: !256, line: 141, size: 64, elements: !1866)
!1866 = !{!1867}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1865, file: !256, line: 142, baseType: !54, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, scope: !1827, file: !256, line: 144, baseType: !1869, size: 128)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1827, file: !256, line: 144, size: 128, elements: !1870)
!1870 = !{!1871, !2253}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1869, file: !256, line: 146, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !248, line: 126, size: 1216, elements: !1874)
!1874 = !{!1875, !1885, !1906, !1907, !1908, !1909, !1910, !2235, !2236, !2237}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1873, file: !248, line: 127, baseType: !1876, size: 384)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !248, line: 21, size: 384, elements: !1877)
!1877 = !{!1878, !1879, !1881, !1882, !1883, !1884}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1876, file: !248, line: 22, baseType: !54, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1876, file: !248, line: 23, baseType: !1880, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1876, file: !248, line: 24, baseType: !1880, size: 64, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1876, file: !248, line: 25, baseType: !54, size: 64, offset: 192)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1876, file: !248, line: 26, baseType: !54, size: 64, offset: 256)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1876, file: !248, line: 27, baseType: !54, size: 64, offset: 320)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1873, file: !248, line: 128, baseType: !1886, size: 128, offset: 384)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1887, line: 105, size: 128, elements: !1888)
!1887 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1886, file: !1887, line: 110, baseType: !54, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1886, file: !1887, line: 118, baseType: !1891, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1887, line: 95, size: 448, elements: !1893)
!1893 = !{!1894, !1895, !1901, !1902, !1903, !1904, !1905}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1892, file: !1887, line: 96, baseType: !841, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1892, file: !1887, line: 97, baseType: !1896, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1887, line: 60, baseType: !1898)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{null, !1900}
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1892, file: !1887, line: 98, baseType: !1896, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1892, file: !1887, line: 99, baseType: !451, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1892, file: !1887, line: 100, baseType: !451, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1892, file: !1887, line: 101, baseType: !1055, size: 128, align: 64, offset: 256)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1892, file: !1887, line: 102, baseType: !1900, size: 64, offset: 384)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1873, file: !248, line: 129, baseType: !786, size: 256, offset: 512)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1873, file: !248, line: 130, baseType: !247, size: 32, offset: 768)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1873, file: !248, line: 131, baseType: !7, size: 32, offset: 800)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1873, file: !248, line: 132, baseType: !54, size: 64, offset: 832)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1873, file: !248, line: 133, baseType: !1911, size: 64, offset: 896)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1913)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !248, line: 77, size: 192, elements: !1914)
!1914 = !{!1915, !1920, !2231}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1913, file: !248, line: 83, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !1919}
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1913, file: !248, line: 89, baseType: !1921, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !256, line: 1184, baseType: !7)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1927, line: 512, size: 896, elements: !1928)
!1927 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1928 = !{!1929, !2198, !2199, !2206, !2213, !2223, !2224, !2225, !2227, !2229}
!1929 = !DIDerivedType(tag: DW_TAG_member, scope: !1926, file: !1927, line: 513, baseType: !1930, size: 320)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1927, line: 513, size: 320, elements: !1931)
!1931 = !{!1932, !2193, !2195, !2196, !2197}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1930, file: !1927, line: 514, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !256, line: 625, size: 1344, elements: !1935)
!1935 = !{!1936, !1945, !2098, !2104, !2111, !2112, !2117, !2118, !2123, !2124, !2127, !2186, !2187, !2188, !2189, !2190, !2191}
!1936 = !DIDerivedType(tag: DW_TAG_member, scope: !1934, file: !256, line: 628, baseType: !1937, size: 128)
!1937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1934, file: !256, line: 628, size: 128, elements: !1938)
!1938 = !{!1939, !1944}
!1939 = !DIDerivedType(tag: DW_TAG_member, scope: !1937, file: !256, line: 629, baseType: !1940, size: 128)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1937, file: !256, line: 629, size: 128, elements: !1941)
!1941 = !{!1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1940, file: !256, line: 631, baseType: !54, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1940, file: !256, line: 632, baseType: !54, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1937, file: !256, line: 635, baseType: !1055, size: 128, align: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1934, file: !256, line: 639, baseType: !1946, size: 64, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !256, line: 733, size: 10240, elements: !1948)
!1948 = !{!1949, !2096}
!1949 = !DIDerivedType(tag: DW_TAG_member, scope: !1947, file: !256, line: 734, baseType: !1950, size: 10240)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1947, file: !256, line: 734, size: 10240, elements: !1951)
!1951 = !{!1952, !1956, !1969, !1973, !1974, !1975, !1976, !1977, !1978, !1987, !1988, !1989, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2028, !2030, !2033, !2076, !2077, !2078, !2081, !2082, !2083, !2086, !2087, !2088, !2094, !2095}
!1952 = !DIDerivedType(tag: DW_TAG_member, scope: !1950, file: !256, line: 739, baseType: !1953, size: 512, align: 512)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1950, file: !256, line: 739, size: 512, align: 512, elements: !1954)
!1954 = !{!1955}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1953, file: !256, line: 747, baseType: !64, size: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1950, file: !256, line: 750, baseType: !1957, size: 128, offset: 512)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1958, line: 218, size: 128, elements: !1959)
!1958 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1959 = !{!1960, !1967, !1968}
!1960 = !DIDerivedType(tag: DW_TAG_member, scope: !1957, file: !1958, line: 219, baseType: !1961, size: 32)
!1961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1957, file: !1958, line: 219, size: 32, elements: !1962)
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1961, file: !1958, line: 220, baseType: !74, size: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1961, file: !1958, line: 221, baseType: !1965)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1958, line: 197, baseType: !1966)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1958, line: 197, elements: !1123)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1957, file: !1958, line: 223, baseType: !7, size: 32, offset: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1957, file: !1958, line: 224, baseType: !35, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1950, file: !256, line: 752, baseType: !1970, size: 64, offset: 640)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!54, !1756, !54, !54, !54, !54}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1950, file: !256, line: 756, baseType: !54, size: 64, offset: 704)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1950, file: !256, line: 757, baseType: !54, size: 64, offset: 768)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1950, file: !256, line: 760, baseType: !54, size: 64, offset: 832)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1950, file: !256, line: 761, baseType: !54, size: 64, offset: 896)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1950, file: !256, line: 763, baseType: !54, size: 64, offset: 960)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1950, file: !256, line: 764, baseType: !1979, size: 64, offset: 1024)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1981, line: 299, baseType: !1982)
!1981 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1981, line: 299, size: 64, elements: !1983)
!1983 = !{!1984}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1982, file: !1981, line: 299, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1986, line: 18, baseType: !54)
!1986 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1950, file: !256, line: 773, baseType: !64, size: 32, offset: 1088)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1950, file: !256, line: 785, baseType: !64, size: 32, offset: 1120)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1950, file: !256, line: 795, baseType: !1990, size: 64, offset: 1152)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !256, line: 726, size: 128, elements: !1992)
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1991, file: !256, line: 727, baseType: !652, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1991, file: !256, line: 728, baseType: !37, size: 32, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1950, file: !256, line: 801, baseType: !54, size: 64, offset: 1216)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1950, file: !256, line: 804, baseType: !841, size: 64, offset: 1280)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1950, file: !256, line: 806, baseType: !37, size: 32, offset: 1344)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1950, file: !256, line: 808, baseType: !74, size: 32, offset: 1376)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1950, file: !256, line: 823, baseType: !1448, size: 320, offset: 1408)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1950, file: !256, line: 825, baseType: !112, size: 128, offset: 1728)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1950, file: !256, line: 845, baseType: !37, size: 32, offset: 1856)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1950, file: !256, line: 849, baseType: !54, size: 64, offset: 1920)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1950, file: !256, line: 850, baseType: !54, size: 64, offset: 1984)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1950, file: !256, line: 852, baseType: !54, size: 64, offset: 2048)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1950, file: !256, line: 853, baseType: !54, size: 64, offset: 2112)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1950, file: !256, line: 854, baseType: !843, size: 64, offset: 2176)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1950, file: !256, line: 855, baseType: !54, size: 64, offset: 2240)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1950, file: !256, line: 856, baseType: !54, size: 64, offset: 2304)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1950, file: !256, line: 857, baseType: !54, size: 64, offset: 2368)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1950, file: !256, line: 858, baseType: !54, size: 64, offset: 2432)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1950, file: !256, line: 865, baseType: !627, size: 32, offset: 2496)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1950, file: !256, line: 867, baseType: !74, size: 32, offset: 2528)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1950, file: !256, line: 869, baseType: !54, size: 64, offset: 2560)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1950, file: !256, line: 869, baseType: !54, size: 64, offset: 2624)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1950, file: !256, line: 869, baseType: !54, size: 64, offset: 2688)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1950, file: !256, line: 869, baseType: !54, size: 64, offset: 2752)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1950, file: !256, line: 870, baseType: !54, size: 64, offset: 2816)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1950, file: !256, line: 870, baseType: !54, size: 64, offset: 2880)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1950, file: !256, line: 870, baseType: !54, size: 64, offset: 2944)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1950, file: !256, line: 871, baseType: !54, size: 64, offset: 3008)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1950, file: !256, line: 871, baseType: !54, size: 64, offset: 3072)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1950, file: !256, line: 871, baseType: !54, size: 64, offset: 3136)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1950, file: !256, line: 871, baseType: !54, size: 64, offset: 3200)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1950, file: !256, line: 873, baseType: !2025, size: 3328, offset: 3264)
!2025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 3328, elements: !2026)
!2026 = !{!2027}
!2027 = !DISubrange(count: 52)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1950, file: !256, line: 875, baseType: !2029, size: 1280, offset: 6592)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1562, size: 1280, elements: !1065)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1950, file: !256, line: 877, baseType: !2031, size: 64, offset: 7872)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !256, line: 877, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1950, file: !256, line: 880, baseType: !2034, size: 1088, offset: 7936)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2035, line: 72, baseType: !2036)
!2035 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2035, line: 23, size: 1088, elements: !2037)
!2037 = !{!2038, !2039, !2040, !2041, !2042, !2045, !2046, !2047, !2048, !2073, !2074, !2075}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2036, file: !2035, line: 28, baseType: !652, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2036, file: !2035, line: 38, baseType: !843, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2036, file: !2035, line: 40, baseType: !54, size: 64, offset: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2036, file: !2035, line: 43, baseType: !1448, size: 320, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2036, file: !2035, line: 44, baseType: !2043, size: 64, offset: 512)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2035, line: 44, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2036, file: !2035, line: 48, baseType: !54, size: 64, offset: 576)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2036, file: !2035, line: 59, baseType: !837, size: 256, offset: 640)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2036, file: !2035, line: 60, baseType: !35, size: 64, offset: 896)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2036, file: !2035, line: 61, baseType: !2049, size: 64, offset: 960)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2051)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2052, line: 13, size: 1216, elements: !2053)
!2052 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2053 = !{!2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2051, file: !2052, line: 14, baseType: !35, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2051, file: !2052, line: 15, baseType: !54, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2051, file: !2052, line: 17, baseType: !54, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2051, file: !2052, line: 17, baseType: !54, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2051, file: !2052, line: 18, baseType: !54, size: 64, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2051, file: !2052, line: 18, baseType: !54, size: 64, offset: 320)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2051, file: !2052, line: 19, baseType: !459, size: 64, offset: 384)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2051, file: !2052, line: 21, baseType: !542, size: 64, offset: 448)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2051, file: !2052, line: 23, baseType: !542, size: 64, offset: 512)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2051, file: !2052, line: 24, baseType: !542, size: 64, offset: 576)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2051, file: !2052, line: 25, baseType: !542, size: 64, offset: 640)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2051, file: !2052, line: 26, baseType: !542, size: 64, offset: 704)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2051, file: !2052, line: 27, baseType: !542, size: 64, offset: 768)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2051, file: !2052, line: 28, baseType: !542, size: 64, offset: 832)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2051, file: !2052, line: 29, baseType: !542, size: 64, offset: 896)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2051, file: !2052, line: 30, baseType: !542, size: 64, offset: 960)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2051, file: !2052, line: 31, baseType: !542, size: 64, offset: 1024)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2051, file: !2052, line: 32, baseType: !542, size: 64, offset: 1088)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2051, file: !2052, line: 33, baseType: !542, size: 64, offset: 1152)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2036, file: !2035, line: 63, baseType: !64, size: 32, offset: 1024)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2036, file: !2035, line: 69, baseType: !108, size: 16, offset: 1056)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2036, file: !2035, line: 70, baseType: !971, size: 16, offset: 1072)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1950, file: !256, line: 882, baseType: !54, size: 64, offset: 9024)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1950, file: !256, line: 885, baseType: !74, size: 32, offset: 9088)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1950, file: !256, line: 886, baseType: !2079, size: 64, offset: 9152)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !256, line: 732, flags: DIFlagFwdDecl)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1950, file: !256, line: 901, baseType: !1587, size: 64, offset: 9216)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1950, file: !256, line: 904, baseType: !1756, size: 64, offset: 9280)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1950, file: !256, line: 906, baseType: !2084, size: 64, offset: 9344)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !256, line: 906, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1950, file: !256, line: 930, baseType: !64, size: 32, offset: 9408)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1950, file: !256, line: 933, baseType: !64, size: 32, offset: 9440)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1950, file: !256, line: 935, baseType: !2089, size: 64, offset: 9472)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !272, line: 103, size: 64, elements: !2090)
!2090 = !{!2091}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2089, file: !272, line: 104, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !272, line: 101, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1950, file: !256, line: 940, baseType: !841, size: 64, offset: 9536)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1950, file: !256, line: 942, baseType: !1095, size: 256, offset: 9600)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1947, file: !256, line: 986, baseType: !2097, offset: 10240)
!2097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, elements: !1400)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1934, file: !256, line: 640, baseType: !2099, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1981, line: 297, baseType: !2100)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1981, line: 297, size: 64, elements: !2101)
!2101 = !{!2102}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2100, file: !1981, line: 297, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1986, line: 19, baseType: !54)
!2104 = !DIDerivedType(tag: DW_TAG_member, scope: !1934, file: !256, line: 646, baseType: !2105, size: 64, offset: 256)
!2105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1934, file: !256, line: 646, size: 64, elements: !2106)
!2106 = !{!2107, !2110}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2105, file: !256, line: 647, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2109)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !256, line: 542, baseType: !54)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2105, file: !256, line: 648, baseType: !2109, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1934, file: !256, line: 666, baseType: !37, size: 32, offset: 320)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1934, file: !256, line: 667, baseType: !2113, size: 64, offset: 384)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !256, line: 579, size: 320, elements: !2115)
!2115 = !{!2116}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2114, file: !256, line: 580, baseType: !1448, size: 320)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1934, file: !256, line: 670, baseType: !451, size: 8, offset: 448)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1934, file: !256, line: 681, baseType: !2119, size: 256, offset: 512)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1934, file: !256, line: 678, size: 256, elements: !2120)
!2120 = !{!2121, !2122}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2119, file: !256, line: 679, baseType: !947, size: 192, align: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2119, file: !256, line: 680, baseType: !54, size: 64, offset: 192)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1934, file: !256, line: 689, baseType: !112, size: 128, offset: 768)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1934, file: !256, line: 691, baseType: !2125, size: 64, offset: 896)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !256, line: 691, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1934, file: !256, line: 694, baseType: !2128, size: 64, offset: 960)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2130)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1927, line: 563, size: 1024, elements: !2131)
!2131 = !{!2132, !2136, !2137, !2141, !2145, !2149, !2150, !2154, !2158, !2162, !2163, !2164, !2168, !2172, !2178, !2182}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2130, file: !1927, line: 564, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{null, !1933}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2130, file: !1927, line: 569, baseType: !2133, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2130, file: !1927, line: 571, baseType: !2138, size: 64, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!37, !1933, !54}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2130, file: !1927, line: 572, baseType: !2142, size: 64, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!37, !1933}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2130, file: !1927, line: 578, baseType: !2146, size: 64, offset: 256)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!37, !1933, !54, !54, !54}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2130, file: !1927, line: 580, baseType: !1921, size: 64, offset: 320)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2130, file: !1927, line: 581, baseType: !2151, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!1924, !1925, !7}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2130, file: !1927, line: 582, baseType: !2155, size: 64, offset: 448)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!1924, !1925, !54, !54}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2130, file: !1927, line: 584, baseType: !2159, size: 64, offset: 512)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!54, !1933}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2130, file: !1927, line: 588, baseType: !1921, size: 64, offset: 576)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2130, file: !1927, line: 591, baseType: !1921, size: 64, offset: 640)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2130, file: !1927, line: 597, baseType: !2165, size: 64, offset: 704)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!37, !1933, !54, !35, !37, !37}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2130, file: !1927, line: 603, baseType: !2169, size: 64, offset: 768)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!31, !1933}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2130, file: !1927, line: 613, baseType: !2173, size: 64, offset: 832)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!37, !1933, !2176}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !256, line: 717, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2130, file: !1927, line: 625, baseType: !2179, size: 64, offset: 896)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!2176, !1933, !54}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2130, file: !1927, line: 633, baseType: !2183, size: 64, offset: 960)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!1919, !1933, !54}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1934, file: !256, line: 697, baseType: !54, size: 64, offset: 1024)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1934, file: !256, line: 699, baseType: !1756, size: 64, offset: 1088)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1934, file: !256, line: 700, baseType: !35, size: 64, offset: 1152)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1934, file: !256, line: 711, baseType: !841, size: 64, offset: 1216)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1934, file: !256, line: 717, baseType: !2176, size: 64, offset: 1280)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1934, file: !256, line: 722, baseType: !2192, offset: 1344)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !256, line: 570, elements: !1123)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1930, file: !1927, line: 515, baseType: !2194, size: 32, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !40, line: 154, baseType: !7)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1930, file: !1927, line: 516, baseType: !54, size: 64, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1930, file: !1927, line: 517, baseType: !54, size: 64, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1930, file: !1927, line: 518, baseType: !54, size: 64, offset: 256)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1926, file: !1927, line: 520, baseType: !255, size: 32, offset: 320)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1926, file: !1927, line: 522, baseType: !2200, size: 64, offset: 384)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1986, line: 22, baseType: !2202)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1986, line: 22, size: 64, elements: !2203)
!2203 = !{!2204}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2202, file: !1986, line: 22, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1986, line: 15, baseType: !54)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1926, file: !1927, line: 524, baseType: !2207, size: 64, offset: 448)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1981, line: 372, baseType: !2209)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1981, line: 372, size: 64, elements: !2210)
!2210 = !{!2211}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2209, file: !1981, line: 372, baseType: !2212, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1986, line: 16, baseType: !54)
!2213 = !DIDerivedType(tag: DW_TAG_member, scope: !1926, file: !1927, line: 527, baseType: !2214, size: 64, offset: 512)
!2214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1926, file: !1927, line: 527, size: 64, elements: !2215)
!2215 = !{!2216, !2222}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2214, file: !1927, line: 528, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1986, line: 21, baseType: !2218)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1986, line: 21, size: 64, elements: !2219)
!2219 = !{!2220}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2218, file: !1986, line: 21, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1986, line: 14, baseType: !54)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2214, file: !1927, line: 529, baseType: !2201, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1926, file: !1927, line: 534, baseType: !1919, size: 64, offset: 576)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1926, file: !1927, line: 535, baseType: !1919, size: 64, offset: 640)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1926, file: !1927, line: 541, baseType: !2226, size: 64, offset: 704)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1926, file: !1927, line: 545, baseType: !2228, size: 64, offset: 768)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1926, file: !1927, line: 549, baseType: !2230, size: 64, offset: 832)
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1981, line: 520, baseType: !1919)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1913, file: !248, line: 100, baseType: !2232, size: 64, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!37, !1872, !54, !54, !37}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1873, file: !248, line: 134, baseType: !35, size: 64, offset: 960)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1873, file: !248, line: 135, baseType: !37, size: 32, offset: 1024)
!2237 = !DIDerivedType(tag: DW_TAG_member, scope: !1873, file: !248, line: 136, baseType: !2238, size: 128, offset: 1088)
!2238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1873, file: !248, line: 136, size: 128, elements: !2239)
!2239 = !{!2240, !2246}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2238, file: !248, line: 137, baseType: !2241, size: 128)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2242, line: 6, size: 128, elements: !2243)
!2242 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2243 = !{!2244, !2245}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2241, file: !2242, line: 7, baseType: !652, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2241, file: !2242, line: 8, baseType: !652, size: 64, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, scope: !2238, file: !248, line: 138, baseType: !2247)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2238, file: !248, line: 138, elements: !2248)
!2248 = !{!2249, !2251}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2247, file: !248, line: 138, baseType: !2250)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2247, file: !248, line: 138, elements: !1123)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2247, file: !248, line: 138, baseType: !2252)
!2252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2241, elements: !1400)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1869, file: !256, line: 147, baseType: !35, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1827, file: !256, line: 161, baseType: !1055, size: 128, align: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, scope: !1823, file: !256, line: 164, baseType: !2256, size: 32, offset: 384)
!2256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1823, file: !256, line: 164, size: 32, elements: !2257)
!2257 = !{!2258, !2259}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2256, file: !256, line: 169, baseType: !64, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2256, file: !256, line: 177, baseType: !7, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1823, file: !256, line: 181, baseType: !64, size: 32, offset: 416)
!2261 = !DIDerivedType(tag: DW_TAG_member, scope: !1791, file: !256, line: 325, baseType: !2262, size: 512, offset: 512)
!2262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1791, file: !256, line: 325, size: 512, elements: !2263)
!2263 = !{!2264, !2274}
!2264 = !DIDerivedType(tag: DW_TAG_member, scope: !2262, file: !256, line: 326, baseType: !2265, size: 320)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2262, file: !256, line: 326, size: 320, elements: !2266)
!2266 = !{!2267, !2268, !2269, !2270, !2271, !2272, !2273}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2265, file: !256, line: 327, baseType: !54, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2265, file: !256, line: 328, baseType: !54, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2265, file: !256, line: 329, baseType: !54, size: 64, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2265, file: !256, line: 331, baseType: !64, size: 32, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2265, file: !256, line: 332, baseType: !64, size: 32, offset: 224)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2265, file: !256, line: 333, baseType: !64, size: 32, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2265, file: !256, line: 335, baseType: !7, size: 32, offset: 288)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2262, file: !256, line: 339, baseType: !1823, size: 512, align: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, scope: !1791, file: !256, line: 341, baseType: !2276, size: 512, offset: 1024)
!2276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1791, file: !256, line: 341, size: 512, elements: !2277)
!2277 = !{!2278, !2287, !2293}
!2278 = !DIDerivedType(tag: DW_TAG_member, scope: !2276, file: !256, line: 342, baseType: !2279, size: 384)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2276, file: !256, line: 342, size: 384, elements: !2280)
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2286}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2279, file: !256, line: 343, baseType: !54, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2279, file: !256, line: 344, baseType: !54, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2279, file: !256, line: 346, baseType: !35, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2279, file: !256, line: 347, baseType: !35, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2279, file: !256, line: 348, baseType: !35, size: 64, offset: 256)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2279, file: !256, line: 349, baseType: !35, size: 64, offset: 320)
!2287 = !DIDerivedType(tag: DW_TAG_member, scope: !2276, file: !256, line: 352, baseType: !2288, size: 256)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2276, file: !256, line: 352, size: 256, elements: !2289)
!2289 = !{!2290, !2291, !2292}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2288, file: !256, line: 353, baseType: !54, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2288, file: !256, line: 354, baseType: !54, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2288, file: !256, line: 356, baseType: !112, size: 128, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2276, file: !256, line: 359, baseType: !1823, size: 512, align: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1786, file: !1787, line: 1000, baseType: !37, size: 32, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1786, file: !1787, line: 1001, baseType: !2296, size: 320, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !70, line: 14, baseType: !2297)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !70, line: 30, size: 320, elements: !2298)
!2298 = !{!2299, !2300, !2301, !2307}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2297, file: !70, line: 31, baseType: !7, size: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2297, file: !70, line: 32, baseType: !35, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2297, file: !70, line: 33, baseType: !2302, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !70, line: 16, baseType: !2303)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!37, !2306, !7, !37, !35}
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2297, file: !70, line: 34, baseType: !112, size: 128, offset: 192)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1782, file: !135, line: 395, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!539, !35}
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2314, line: 17, flags: DIFlagFwdDecl)
!2314 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1749, file: !135, line: 1920, baseType: !1766, size: 64, offset: 320)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1749, file: !135, line: 1921, baseType: !2317, size: 64, offset: 384)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!37, !1769, !2320, !7}
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !135, line: 53, flags: DIFlagFwdDecl)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1749, file: !135, line: 1923, baseType: !2323, size: 64, offset: 448)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!37, !1756, !2326}
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !135, line: 1858, size: 128, elements: !2328)
!2328 = !{!2329, !2334}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2327, file: !135, line: 1859, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !135, line: 1855, baseType: !2331)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!451, !2326, !31, !37, !56, !652, !7}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2327, file: !135, line: 1860, baseType: !56, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1749, file: !135, line: 1924, baseType: !2336, size: 64, offset: 512)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!2339, !1756, !2341}
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2340, line: 59, baseType: !7)
!2340 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !752, line: 31, flags: DIFlagFwdDecl)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1749, file: !135, line: 1925, baseType: !2344, size: 64, offset: 576)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!542, !1756, !7, !54}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1749, file: !135, line: 1926, baseType: !2344, size: 64, offset: 640)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1749, file: !135, line: 1927, baseType: !2349, size: 64, offset: 704)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!37, !1756, !1933}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1749, file: !135, line: 1928, baseType: !54, size: 64, offset: 768)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1749, file: !135, line: 1929, baseType: !2354, size: 64, offset: 832)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!37, !581, !1756}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1749, file: !135, line: 1930, baseType: !2358, size: 64, offset: 896)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!37, !1756, !2361}
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !135, line: 1061, baseType: !35)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1749, file: !135, line: 1931, baseType: !2354, size: 64, offset: 960)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1749, file: !135, line: 1932, baseType: !2364, size: 64, offset: 1024)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!37, !1756, !56, !56, !37}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1749, file: !135, line: 1933, baseType: !2368, size: 64, offset: 1088)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!37, !37, !1756, !37}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1749, file: !135, line: 1934, baseType: !2372, size: 64, offset: 1152)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!37, !1756, !37, !2375}
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !135, line: 1063, flags: DIFlagFwdDecl)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1749, file: !135, line: 1935, baseType: !1970, size: 64, offset: 1216)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1749, file: !135, line: 1936, baseType: !2379, size: 64, offset: 1280)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!37, !37}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1749, file: !135, line: 1937, baseType: !2372, size: 64, offset: 1344)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1749, file: !135, line: 1938, baseType: !2384, size: 64, offset: 1408)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!539, !2387, !1756, !55, !50, !7}
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2389, line: 59, flags: DIFlagFwdDecl)
!2389 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1749, file: !135, line: 1939, baseType: !2391, size: 64, offset: 1472)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!539, !1756, !55, !2387, !50, !7}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1749, file: !135, line: 1940, baseType: !2395, size: 64, offset: 1536)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{null, !1756}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1749, file: !135, line: 1941, baseType: !2399, size: 64, offset: 1600)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!37, !1756, !37, !2402, !2403}
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1749, file: !135, line: 1942, baseType: !2405, size: 64, offset: 1664)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!542, !1756, !37, !56, !56}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1749, file: !135, line: 1944, baseType: !2409, size: 64, offset: 1728)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null, !1294, !1756}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1749, file: !135, line: 1948, baseType: !2413, size: 64, offset: 1792)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!539, !1756, !56, !1756, !56, !50, !7}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1749, file: !135, line: 1950, baseType: !2417, size: 64, offset: 1856)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!56, !1756, !56, !1756, !56, !56, !7}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1749, file: !135, line: 1953, baseType: !2364, size: 64, offset: 1920)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1749, file: !135, line: 1954, baseType: !2422, size: 64, offset: 1984)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!37, !2425, !7}
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !135, line: 1911, flags: DIFlagFwdDecl)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1749, file: !135, line: 1955, baseType: !2428, size: 64, offset: 2048)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!37, !2425, !2320, !7}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1331, file: !135, line: 1018, baseType: !652, size: 64, offset: 1472)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1331, file: !135, line: 1020, baseType: !35, size: 64, offset: 1536)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1331, file: !135, line: 1023, baseType: !35, size: 64, offset: 1600)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1331, file: !135, line: 1027, baseType: !2435, size: 64, offset: 1664)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1331, file: !135, line: 1029, baseType: !577, size: 64, offset: 1728)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1331, file: !135, line: 1030, baseType: !2438, size: 32, offset: 1792)
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2439, line: 8, baseType: !425)
!2439 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1331, file: !135, line: 1031, baseType: !2438, size: 32, offset: 1824)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1295, file: !1296, line: 29, baseType: !35, size: 64, offset: 896)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1220, file: !135, line: 2077, baseType: !1291, size: 64, offset: 1088)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1220, file: !135, line: 2078, baseType: !1291, size: 64, offset: 1152)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1220, file: !135, line: 2079, baseType: !1291, size: 64, offset: 1216)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1220, file: !135, line: 2081, baseType: !2446, size: 64, offset: 1280)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!539, !730, !37, !507, !50, !56}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1220, file: !135, line: 2082, baseType: !2450, size: 64, offset: 1344)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!539, !730, !37, !31, !50, !56}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1220, file: !135, line: 2083, baseType: !2454, size: 64, offset: 1408)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!2457, !581}
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !140, line: 296, size: 1664, elements: !2460)
!2460 = !{!2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2485, !2486, !2487}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2459, file: !140, line: 297, baseType: !1081, size: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2459, file: !140, line: 298, baseType: !112, size: 128, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2459, file: !140, line: 299, baseType: !112, size: 128, offset: 256)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2459, file: !140, line: 300, baseType: !112, size: 128, offset: 384)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2459, file: !140, line: 301, baseType: !837, size: 256, offset: 512)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2459, file: !140, line: 302, baseType: !74, size: 32, offset: 768)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2459, file: !140, line: 303, baseType: !64, size: 32, offset: 800)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2459, file: !140, line: 304, baseType: !730, size: 64, offset: 832)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2459, file: !140, line: 305, baseType: !2470, size: 64, offset: 896)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !140, line: 68, size: 64, elements: !2471)
!2471 = !{!2472, !2484}
!2472 = !DIDerivedType(tag: DW_TAG_member, scope: !2470, file: !140, line: 69, baseType: !2473, size: 32)
!2473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2470, file: !140, line: 69, size: 32, elements: !2474)
!2474 = !{!2475, !2476, !2477}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2473, file: !140, line: 70, baseType: !587, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2473, file: !140, line: 71, baseType: !596, size: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2473, file: !140, line: 72, baseType: !2478, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2479, line: 24, baseType: !2480)
!2479 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2479, line: 22, size: 32, elements: !2481)
!2481 = !{!2482}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2480, file: !2479, line: 23, baseType: !2483, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2479, line: 20, baseType: !593)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2470, file: !140, line: 74, baseType: !139, size: 32, offset: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2459, file: !140, line: 306, baseType: !56, size: 64, offset: 960)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2459, file: !140, line: 307, baseType: !54, size: 64, offset: 1024)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2459, file: !140, line: 308, baseType: !2488, size: 576, offset: 1088)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !140, line: 205, size: 576, elements: !2489)
!2489 = !{!2490, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2488, file: !140, line: 206, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !140, line: 66, baseType: !58)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2488, file: !140, line: 207, baseType: !2491, size: 64, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2488, file: !140, line: 208, baseType: !2491, size: 64, offset: 128)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2488, file: !140, line: 209, baseType: !2491, size: 64, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2488, file: !140, line: 210, baseType: !2491, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2488, file: !140, line: 211, baseType: !2491, size: 64, offset: 320)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2488, file: !140, line: 212, baseType: !2491, size: 64, offset: 384)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2488, file: !140, line: 213, baseType: !1464, size: 64, offset: 448)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2488, file: !140, line: 214, baseType: !1464, size: 64, offset: 512)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1220, file: !135, line: 2085, baseType: !2501, size: 64, offset: 1472)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!542, !730, !2504}
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2506, line: 15, size: 256, elements: !2507)
!2506 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2507 = !{!2508, !2509, !2510, !2511, !2512}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2505, file: !2506, line: 16, baseType: !2194, size: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2505, file: !2506, line: 19, baseType: !37, size: 32, offset: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2505, file: !2506, line: 26, baseType: !54, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2505, file: !2506, line: 33, baseType: !54, size: 64, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2505, file: !2506, line: 36, baseType: !2513, size: 64, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !256, line: 33, flags: DIFlagFwdDecl)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1220, file: !135, line: 2087, baseType: !2501, size: 64, offset: 1536)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1220, file: !135, line: 2089, baseType: !762, size: 64, offset: 1600)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !731, file: !135, line: 1198, baseType: !2518, size: 64, offset: 448)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2520)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !140, line: 324, size: 704, elements: !2521)
!2521 = !{!2522, !2526, !2530, !2534, !2535, !2536, !2537, !2538, !2543, !2548, !2552}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2520, file: !140, line: 325, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!37, !2458}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2520, file: !140, line: 326, baseType: !2527, size: 64, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!2458, !730, !37}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2520, file: !140, line: 327, baseType: !2531, size: 64, offset: 128)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{null, !2458}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2520, file: !140, line: 328, baseType: !2523, size: 64, offset: 192)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2520, file: !140, line: 329, baseType: !2523, size: 64, offset: 256)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2520, file: !140, line: 330, baseType: !2523, size: 64, offset: 320)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2520, file: !140, line: 331, baseType: !1266, size: 64, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2520, file: !140, line: 334, baseType: !2539, size: 64, offset: 448)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!2542, !581}
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2520, file: !140, line: 335, baseType: !2544, size: 64, offset: 512)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!37, !581, !2547}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2520, file: !140, line: 337, baseType: !2549, size: 64, offset: 576)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!37, !581, !2542}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2520, file: !140, line: 339, baseType: !2553, size: 64, offset: 640)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!37, !730, !2556}
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !731, file: !135, line: 1199, baseType: !2558, size: 64, offset: 512)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2560)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !140, line: 430, size: 704, elements: !2561)
!2561 = !{!2562, !2568, !2569, !2573, !2574, !2575, !2590, !2613, !2617, !2618, !2641}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2560, file: !140, line: 431, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!37, !730, !37, !37, !2566}
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1740)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2560, file: !140, line: 432, baseType: !1266, size: 64, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2560, file: !140, line: 433, baseType: !2570, size: 64, offset: 128)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!37, !730, !7}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2560, file: !140, line: 434, baseType: !2570, size: 64, offset: 192)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2560, file: !140, line: 435, baseType: !1266, size: 64, offset: 256)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2560, file: !140, line: 436, baseType: !2576, size: 64, offset: 320)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!37, !730, !37, !2579}
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !140, line: 417, size: 256, elements: !2581)
!2581 = !{!2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2580, file: !140, line: 418, baseType: !37, size: 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2580, file: !140, line: 419, baseType: !7, size: 32, offset: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2580, file: !140, line: 420, baseType: !7, size: 32, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2580, file: !140, line: 422, baseType: !7, size: 32, offset: 96)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2580, file: !140, line: 423, baseType: !7, size: 32, offset: 128)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2580, file: !140, line: 424, baseType: !7, size: 32, offset: 160)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2580, file: !140, line: 425, baseType: !7, size: 32, offset: 192)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2580, file: !140, line: 426, baseType: !7, size: 32, offset: 224)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2560, file: !140, line: 437, baseType: !2591, size: 64, offset: 384)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!37, !730, !2470, !2594}
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !140, line: 345, size: 960, elements: !2596)
!2596 = !{!2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2595, file: !140, line: 346, baseType: !37, size: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2595, file: !140, line: 347, baseType: !652, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2595, file: !140, line: 348, baseType: !652, size: 64, offset: 128)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2595, file: !140, line: 349, baseType: !652, size: 64, offset: 192)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2595, file: !140, line: 350, baseType: !652, size: 64, offset: 256)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2595, file: !140, line: 351, baseType: !652, size: 64, offset: 320)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2595, file: !140, line: 352, baseType: !652, size: 64, offset: 384)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2595, file: !140, line: 353, baseType: !847, size: 64, offset: 448)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2595, file: !140, line: 355, baseType: !847, size: 64, offset: 512)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2595, file: !140, line: 356, baseType: !37, size: 32, offset: 576)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2595, file: !140, line: 357, baseType: !37, size: 32, offset: 608)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2595, file: !140, line: 358, baseType: !652, size: 64, offset: 640)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2595, file: !140, line: 359, baseType: !652, size: 64, offset: 704)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2595, file: !140, line: 360, baseType: !652, size: 64, offset: 768)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2595, file: !140, line: 361, baseType: !847, size: 64, offset: 832)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2595, file: !140, line: 362, baseType: !37, size: 32, offset: 896)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2560, file: !140, line: 438, baseType: !2614, size: 64, offset: 448)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!37, !730, !2556, !2594}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2560, file: !140, line: 440, baseType: !2591, size: 64, offset: 512)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2560, file: !140, line: 441, baseType: !2619, size: 64, offset: 576)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!37, !730, !2622}
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !140, line: 411, size: 1408, elements: !2624)
!2624 = !{!2625, !2626}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2623, file: !140, line: 412, baseType: !7, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2623, file: !140, line: 413, baseType: !2627, size: 1344, offset: 64)
!2627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2628, size: 1344, elements: !508)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !140, line: 397, size: 448, elements: !2629)
!2629 = !{!2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2640}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2628, file: !140, line: 398, baseType: !7, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2628, file: !140, line: 399, baseType: !7, size: 32, offset: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2628, file: !140, line: 401, baseType: !7, size: 32, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2628, file: !140, line: 402, baseType: !7, size: 32, offset: 96)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2628, file: !140, line: 403, baseType: !7, size: 32, offset: 128)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2628, file: !140, line: 404, baseType: !7, size: 32, offset: 160)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2628, file: !140, line: 405, baseType: !7, size: 32, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2628, file: !140, line: 406, baseType: !654, size: 64, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2628, file: !140, line: 407, baseType: !2639, size: 64, offset: 320)
!2639 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !40, line: 132, baseType: !652)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2628, file: !140, line: 408, baseType: !2639, size: 64, offset: 384)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2560, file: !140, line: 442, baseType: !2570, size: 64, offset: 640)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !731, file: !135, line: 1200, baseType: !2643, size: 64, offset: 576)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2645)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !135, line: 54, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !731, file: !135, line: 1201, baseType: !54, size: 64, offset: 640)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !731, file: !135, line: 1202, baseType: !54, size: 64, offset: 704)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !731, file: !135, line: 1203, baseType: !54, size: 64, offset: 768)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !731, file: !135, line: 1204, baseType: !616, size: 64, offset: 832)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !731, file: !135, line: 1205, baseType: !1448, size: 320, offset: 896)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !731, file: !135, line: 1206, baseType: !37, size: 32, offset: 1216)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !731, file: !135, line: 1207, baseType: !64, size: 32, offset: 1248)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !731, file: !135, line: 1209, baseType: !35, size: 64, offset: 1280)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !731, file: !135, line: 1211, baseType: !2655, size: 64, offset: 1344)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2658)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !135, line: 1211, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !731, file: !135, line: 1223, baseType: !2660, size: 64, offset: 1408)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !633, line: 34, size: 64, elements: !2661)
!2661 = !{!2662}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2660, file: !633, line: 35, baseType: !636, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !731, file: !135, line: 1224, baseType: !112, size: 128, offset: 1472)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !731, file: !135, line: 1225, baseType: !2665, size: 64, offset: 1600)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2667, line: 40, size: 7424, elements: !2668)
!2667 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2668 = !{!2669, !2671, !2672, !2675, !2679, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2706, !2707}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2666, file: !2667, line: 41, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !40, line: 131, baseType: !652)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2666, file: !2667, line: 42, baseType: !2670, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2666, file: !2667, line: 43, baseType: !2673, size: 64, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2389, line: 1453, flags: DIFlagFwdDecl)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2666, file: !2667, line: 44, baseType: !2676, size: 64, offset: 192)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2678, line: 74, flags: DIFlagFwdDecl)
!2678 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2666, file: !2667, line: 45, baseType: !2680, size: 64, offset: 256)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2667, line: 45, flags: DIFlagFwdDecl)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2666, file: !2667, line: 46, baseType: !54, size: 64, offset: 320)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2666, file: !2667, line: 47, baseType: !451, size: 8, offset: 384)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2666, file: !2667, line: 48, baseType: !98, size: 8, offset: 392)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2666, file: !2667, line: 49, baseType: !451, size: 8, offset: 400)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2666, file: !2667, line: 50, baseType: !451, size: 8, offset: 408)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2666, file: !2667, line: 51, baseType: !735, size: 32, offset: 416)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2666, file: !2667, line: 52, baseType: !64, size: 32, offset: 448)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2666, file: !2667, line: 53, baseType: !74, size: 32, offset: 480)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2666, file: !2667, line: 54, baseType: !581, size: 64, offset: 512)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2666, file: !2667, line: 55, baseType: !35, size: 64, offset: 576)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2666, file: !2667, line: 56, baseType: !35, size: 64, offset: 640)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2666, file: !2667, line: 57, baseType: !2694, size: 64, offset: 704)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2696)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2667, line: 57, flags: DIFlagFwdDecl)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2666, file: !2667, line: 58, baseType: !837, size: 256, offset: 768)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2666, file: !2667, line: 60, baseType: !37, size: 32, offset: 1024)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2666, file: !2667, line: 61, baseType: !37, size: 32, offset: 1056)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2666, file: !2667, line: 62, baseType: !472, size: 64, offset: 1088)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2666, file: !2667, line: 65, baseType: !837, size: 256, offset: 1152)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2666, file: !2667, line: 66, baseType: !730, size: 64, offset: 1408)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2666, file: !2667, line: 68, baseType: !2704, size: 64, offset: 1472)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2667, line: 68, flags: DIFlagFwdDecl)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2666, file: !2667, line: 72, baseType: !451, size: 8, offset: 1536)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2666, file: !2667, line: 77, baseType: !463, size: 5824, offset: 1600)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !731, file: !135, line: 1226, baseType: !2709, size: 64, offset: 1664)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !135, line: 1226, flags: DIFlagFwdDecl)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !731, file: !135, line: 1227, baseType: !2712, size: 64, offset: 1728)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !223, line: 163, size: 6848, elements: !2714)
!2714 = !{!2715, !2716, !2717, !2718, !2719, !2720, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2765, !2766, !2767, !2769, !2771, !2772, !2773}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2713, file: !223, line: 164, baseType: !652, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2713, file: !223, line: 165, baseType: !947, size: 192, align: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !2713, file: !223, line: 166, baseType: !112, size: 128, offset: 256)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2713, file: !223, line: 167, baseType: !54, size: 64, offset: 384)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !2713, file: !223, line: 168, baseType: !54, size: 64, offset: 448)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2713, file: !223, line: 170, baseType: !2721, size: 32, offset: 512)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2722, line: 19, size: 32, elements: !2723)
!2722 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2723 = !{!2724}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2721, file: !2722, line: 20, baseType: !1380, size: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2713, file: !223, line: 171, baseType: !7, size: 32, offset: 544)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !2713, file: !223, line: 172, baseType: !7, size: 32, offset: 576)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !2713, file: !223, line: 173, baseType: !7, size: 32, offset: 608)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !2713, file: !223, line: 173, baseType: !7, size: 32, offset: 640)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !2713, file: !223, line: 179, baseType: !841, size: 64, offset: 704)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !2713, file: !223, line: 184, baseType: !54, size: 64, offset: 768)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !2713, file: !223, line: 186, baseType: !2732, size: 4672, offset: 832)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !223, line: 105, size: 4672, elements: !2733)
!2733 = !{!2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2758, !2759, !2760, !2761, !2762, !2763, !2764}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2732, file: !223, line: 106, baseType: !2712, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2732, file: !223, line: 108, baseType: !54, size: 64, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !2732, file: !223, line: 109, baseType: !54, size: 64, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !2732, file: !223, line: 111, baseType: !112, size: 128, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !2732, file: !223, line: 112, baseType: !112, size: 128, offset: 320)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !2732, file: !223, line: 113, baseType: !112, size: 128, offset: 448)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !2732, file: !223, line: 114, baseType: !112, size: 128, offset: 576)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2732, file: !223, line: 115, baseType: !74, size: 32, offset: 704)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !2732, file: !223, line: 117, baseType: !64, size: 32, offset: 736)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !2732, file: !223, line: 118, baseType: !2029, size: 1280, offset: 768)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !2732, file: !223, line: 120, baseType: !54, size: 64, offset: 2048)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !2732, file: !223, line: 121, baseType: !54, size: 64, offset: 2112)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !2732, file: !223, line: 122, baseType: !54, size: 64, offset: 2176)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !2732, file: !223, line: 123, baseType: !54, size: 64, offset: 2240)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !2732, file: !223, line: 124, baseType: !54, size: 64, offset: 2304)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !2732, file: !223, line: 132, baseType: !54, size: 64, offset: 2368)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !2732, file: !223, line: 133, baseType: !54, size: 64, offset: 2432)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !2732, file: !223, line: 135, baseType: !2752, size: 384, offset: 2496)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !2753, line: 76, size: 384, elements: !2754)
!2753 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!2754 = !{!2755, !2756, !2757}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2752, file: !2753, line: 78, baseType: !1562, size: 320)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2752, file: !2753, line: 80, baseType: !7, size: 32, offset: 320)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2752, file: !2753, line: 81, baseType: !795, size: 32, offset: 352)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !2732, file: !223, line: 136, baseType: !37, size: 32, offset: 2880)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !2732, file: !223, line: 137, baseType: !222, size: 32, offset: 2912)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !2732, file: !223, line: 139, baseType: !74, size: 32, offset: 2944)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !2732, file: !223, line: 140, baseType: !112, size: 128, offset: 3008)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !2732, file: !223, line: 141, baseType: !1151, size: 704, offset: 3136)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !2732, file: !223, line: 142, baseType: !1151, size: 704, offset: 3840)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !2732, file: !223, line: 144, baseType: !112, size: 128, offset: 4544)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !2713, file: !223, line: 187, baseType: !112, size: 128, offset: 5504)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !2713, file: !223, line: 193, baseType: !69, size: 192, offset: 5632)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2713, file: !223, line: 195, baseType: !2768, size: 64, offset: 5824)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2713, file: !223, line: 196, baseType: !2770, size: 512, offset: 5888)
!2770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 512, elements: !512)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2713, file: !223, line: 197, baseType: !2768, size: 64, offset: 6400)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !2713, file: !223, line: 199, baseType: !1077, size: 320, offset: 6464)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !2713, file: !223, line: 202, baseType: !616, size: 64, offset: 6784)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !731, file: !135, line: 1228, baseType: !2775, size: 64, offset: 1792)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !135, line: 1228, flags: DIFlagFwdDecl)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !731, file: !135, line: 1229, baseType: !1081, size: 128, offset: 1856)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !731, file: !135, line: 1230, baseType: !7, size: 32, offset: 1984)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !731, file: !135, line: 1231, baseType: !2780, size: 2496, offset: 2048)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !140, line: 521, size: 2496, elements: !2781)
!2781 = !{!2782, !2783, !2784, !2786, !2818}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2780, file: !140, line: 522, baseType: !7, size: 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2780, file: !140, line: 523, baseType: !1448, size: 320, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2780, file: !140, line: 524, baseType: !2785, size: 192, offset: 384)
!2785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 192, elements: !508)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2780, file: !140, line: 525, baseType: !2787, size: 1728, offset: 576)
!2787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2788, size: 1728, elements: !508)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !140, line: 222, size: 576, elements: !2789)
!2789 = !{!2790, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2788, file: !140, line: 223, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !140, line: 445, size: 256, elements: !2793)
!2793 = !{!2794, !2795, !2808, !2809}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2792, file: !140, line: 446, baseType: !37, size: 32)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2792, file: !140, line: 447, baseType: !2796, size: 64, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2798)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !140, line: 312, size: 512, elements: !2799)
!2799 = !{!2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2798, file: !140, line: 313, baseType: !1266, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2798, file: !140, line: 314, baseType: !1266, size: 64, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2798, file: !140, line: 315, baseType: !1266, size: 64, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2798, file: !140, line: 316, baseType: !1266, size: 64, offset: 192)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2798, file: !140, line: 317, baseType: !2523, size: 64, offset: 256)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2798, file: !140, line: 318, baseType: !2523, size: 64, offset: 320)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2798, file: !140, line: 319, baseType: !2523, size: 64, offset: 384)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2798, file: !140, line: 320, baseType: !2553, size: 64, offset: 448)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2792, file: !140, line: 448, baseType: !766, size: 64, offset: 128)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2792, file: !140, line: 449, baseType: !2791, size: 64, offset: 192)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2788, file: !140, line: 224, baseType: !37, size: 32, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2788, file: !140, line: 226, baseType: !112, size: 128, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2788, file: !140, line: 227, baseType: !54, size: 64, offset: 256)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2788, file: !140, line: 228, baseType: !7, size: 32, offset: 320)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2788, file: !140, line: 229, baseType: !7, size: 32, offset: 352)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2788, file: !140, line: 230, baseType: !2491, size: 64, offset: 384)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2788, file: !140, line: 231, baseType: !2491, size: 64, offset: 448)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2788, file: !140, line: 232, baseType: !35, size: 64, offset: 512)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2780, file: !140, line: 526, baseType: !2819, size: 192, offset: 2304)
!2819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2796, size: 192, elements: !508)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !731, file: !135, line: 1233, baseType: !2821, size: 2368, offset: 4544)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !135, line: 1184, size: 2368, elements: !2822)
!2822 = !{!2823, !2824, !2825}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2821, file: !135, line: 1185, baseType: !41, size: 16)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2821, file: !135, line: 1186, baseType: !41, size: 16, offset: 16)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2821, file: !135, line: 1187, baseType: !2826, size: 2304, offset: 64)
!2826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2827, size: 2304, elements: !508)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2828, line: 12, size: 768, elements: !2829)
!2828 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2829 = !{!2830, !2838, !2839, !4472, !4473}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2827, file: !2828, line: 13, baseType: !2831, size: 384)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2832, line: 17, size: 384, elements: !2833)
!2832 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2833 = !{!2834, !2835, !2836, !2837}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2831, file: !2832, line: 18, baseType: !37, size: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2831, file: !2832, line: 19, baseType: !37, size: 32, offset: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2831, file: !2832, line: 20, baseType: !69, size: 192, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2831, file: !2832, line: 22, baseType: !1055, size: 128, align: 64, offset: 256)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2827, file: !2828, line: 14, baseType: !909, size: 64, offset: 384)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2827, file: !2828, line: 15, baseType: !2840, size: 64, offset: 448)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2841, line: 16, size: 64, elements: !2842)
!2841 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2842 = !{!2843}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2840, file: !2841, line: 17, baseType: !2844, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2389, line: 746, size: 58368, elements: !2846)
!2846 = !{!2847, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2927, !2938, !3030, !3034, !3037, !3068, !3069, !3070, !3071, !3082, !3084, !3085, !3086, !3087, !3088, !3089, !3100, !3101, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3118, !3119, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3207, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3255, !3261, !3262, !3263, !3264, !3265, !3269, !3272, !3279, !3284, !3287, !3290, !3293, !3681, !3880, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3918, !3919, !3920, !3929, !3937, !3938, !3939, !3940, !3941, !3946, !3947, !3948, !3951, !3952, !3955, !3958, !3964, !3971, !3974, !3975, !4061, !4062, !4063, !4064, !4065, !4071, !4072, !4073, !4074, !4075, !4076, !4079, !4082, !4083, !4086, !4087, !4088, !4091, !4092, !4093, !4094, !4095, !4096, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4128, !4129, !4135, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4217, !4219, !4220, !4221, !4222, !4223, !4224, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4253, !4254, !4255}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2845, file: !2389, line: 752, baseType: !2848, size: 192)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2849, line: 56, size: 192, elements: !2850)
!2849 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2850 = !{!2851, !2852, !2853, !2854}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2848, file: !2849, line: 57, baseType: !54, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2848, file: !2849, line: 58, baseType: !54, size: 64, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2848, file: !2849, line: 59, baseType: !425, size: 32, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2848, file: !2849, line: 61, baseType: !425, size: 32, offset: 160)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2845, file: !2389, line: 754, baseType: !7, size: 32, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2845, file: !2389, line: 767, baseType: !35, size: 64, offset: 256)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2845, file: !2389, line: 768, baseType: !1380, size: 32, offset: 320)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2845, file: !2389, line: 770, baseType: !7, size: 32, offset: 352)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2845, file: !2389, line: 771, baseType: !7, size: 32, offset: 384)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2845, file: !2389, line: 774, baseType: !37, size: 32, offset: 416)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2845, file: !2389, line: 775, baseType: !2862, size: 128, offset: 448)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2863, line: 58, size: 128, elements: !2864)
!2863 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2864 = !{!2865, !2866, !2871, !2872}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2862, file: !2863, line: 59, baseType: !1337, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, scope: !2862, file: !2863, line: 60, baseType: !2867, size: 32, offset: 64)
!2867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2862, file: !2863, line: 60, size: 32, elements: !2868)
!2868 = !{!2869, !2870}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2867, file: !2863, line: 61, baseType: !7, size: 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2867, file: !2863, line: 62, baseType: !64, size: 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2862, file: !2863, line: 65, baseType: !108, size: 16, offset: 96)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2862, file: !2863, line: 65, baseType: !108, size: 16, offset: 112)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2845, file: !2389, line: 776, baseType: !7, size: 32, offset: 576)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2845, file: !2389, line: 777, baseType: !54, size: 64, offset: 640)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2845, file: !2389, line: 778, baseType: !2844, size: 64, offset: 704)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2845, file: !2389, line: 787, baseType: !37, size: 32, offset: 768)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2845, file: !2389, line: 788, baseType: !37, size: 32, offset: 800)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2845, file: !2389, line: 790, baseType: !37, size: 32, offset: 832)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2845, file: !2389, line: 792, baseType: !37, size: 32, offset: 864)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2845, file: !2389, line: 793, baseType: !37, size: 32, offset: 896)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2845, file: !2389, line: 794, baseType: !37, size: 32, offset: 928)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2845, file: !2389, line: 795, baseType: !7, size: 32, offset: 960)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2845, file: !2389, line: 797, baseType: !2884, size: 2048, offset: 1024)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2389, line: 551, size: 2048, elements: !2885)
!2885 = !{!2886, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2906, !2909, !2910, !2911}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2884, file: !2389, line: 553, baseType: !2887, size: 128)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2389, line: 411, size: 128, elements: !2888)
!2888 = !{!2889, !2890}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2887, file: !2389, line: 412, baseType: !54, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2887, file: !2389, line: 413, baseType: !425, size: 32, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2884, file: !2389, line: 554, baseType: !947, size: 192, align: 64, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2884, file: !2389, line: 555, baseType: !652, size: 64, offset: 320)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2884, file: !2389, line: 556, baseType: !652, size: 64, offset: 384)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2884, file: !2389, line: 558, baseType: !112, size: 128, offset: 448)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2884, file: !2389, line: 559, baseType: !7, size: 32, offset: 576)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2884, file: !2389, line: 561, baseType: !652, size: 64, offset: 640)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2884, file: !2389, line: 562, baseType: !652, size: 64, offset: 704)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2884, file: !2389, line: 563, baseType: !652, size: 64, offset: 768)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2884, file: !2389, line: 564, baseType: !652, size: 64, offset: 832)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2884, file: !2389, line: 565, baseType: !847, size: 64, offset: 896)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2884, file: !2389, line: 566, baseType: !652, size: 64, offset: 960)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2884, file: !2389, line: 568, baseType: !652, size: 64, offset: 1024)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2884, file: !2389, line: 571, baseType: !37, size: 32, offset: 1088)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2884, file: !2389, line: 572, baseType: !2905, size: 64, offset: 1152)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2884, file: !2389, line: 574, baseType: !2907, size: 64, offset: 1216)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2389, line: 49, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2884, file: !2389, line: 576, baseType: !2907, size: 64, offset: 1280)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2884, file: !2389, line: 578, baseType: !54, size: 64, offset: 1344)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2884, file: !2389, line: 588, baseType: !2912, size: 512, align: 512, offset: 1536)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2389, line: 497, size: 512, align: 512, elements: !2913)
!2913 = !{!2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2912, file: !2389, line: 498, baseType: !652, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2912, file: !2389, line: 499, baseType: !652, size: 64, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2912, file: !2389, line: 500, baseType: !652, size: 64, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2912, file: !2389, line: 501, baseType: !425, size: 32, offset: 192)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2912, file: !2389, line: 502, baseType: !425, size: 32, offset: 224)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2912, file: !2389, line: 503, baseType: !54, size: 64, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2912, file: !2389, line: 504, baseType: !54, size: 64, offset: 320)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2912, file: !2389, line: 505, baseType: !54, size: 64, offset: 384)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2912, file: !2389, line: 506, baseType: !2923, size: 64, align: 64, offset: 448)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2389, line: 445, size: 64, align: 64, elements: !2924)
!2924 = !{!2925, !2926}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2923, file: !2389, line: 446, baseType: !7, size: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2923, file: !2389, line: 447, baseType: !7, size: 32, offset: 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2845, file: !2389, line: 798, baseType: !2928, size: 384, offset: 3072)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2389, line: 592, size: 384, elements: !2929)
!2929 = !{!2930, !2931, !2932, !2933, !2934, !2935, !2936}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2928, file: !2389, line: 593, baseType: !112, size: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2928, file: !2389, line: 594, baseType: !54, size: 64, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2928, file: !2389, line: 595, baseType: !54, size: 64, offset: 192)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2928, file: !2389, line: 596, baseType: !7, size: 32, offset: 256)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2928, file: !2389, line: 597, baseType: !41, size: 16, offset: 288)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2928, file: !2389, line: 598, baseType: !41, size: 16, offset: 304)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2928, file: !2389, line: 600, baseType: !2937, size: 64, offset: 320)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2845, file: !2389, line: 799, baseType: !2939, size: 1792, offset: 3456)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2389, line: 610, size: 1792, elements: !2940)
!2940 = !{!2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !3027, !3028}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2939, file: !2389, line: 611, baseType: !947, size: 192, align: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2939, file: !2389, line: 618, baseType: !652, size: 64, offset: 192)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2939, file: !2389, line: 619, baseType: !652, size: 64, offset: 256)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2939, file: !2389, line: 620, baseType: !652, size: 64, offset: 320)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2939, file: !2389, line: 621, baseType: !652, size: 64, offset: 384)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2939, file: !2389, line: 622, baseType: !652, size: 64, offset: 448)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2939, file: !2389, line: 629, baseType: !847, size: 64, offset: 512)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2939, file: !2389, line: 630, baseType: !652, size: 64, offset: 576)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2939, file: !2389, line: 631, baseType: !7, size: 32, offset: 640)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2939, file: !2389, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2939, file: !2389, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2939, file: !2389, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2939, file: !2389, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2939, file: !2389, line: 662, baseType: !2955, size: 512, offset: 704)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !153, line: 118, size: 512, elements: !2956)
!2956 = !{!2957, !2965, !2966, !2971, !3023, !3024, !3025, !3026}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2955, file: !153, line: 119, baseType: !2958, size: 256)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2959, line: 9, size: 256, elements: !2960)
!2959 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2960 = !{!2961, !2962}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2958, file: !2959, line: 10, baseType: !947, size: 192, align: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2958, file: !2959, line: 11, baseType: !2963, size: 64, offset: 192)
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2964, line: 29, baseType: !847)
!2964 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2955, file: !153, line: 120, baseType: !2963, size: 64, offset: 256)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2955, file: !153, line: 121, baseType: !2967, size: 64, offset: 320)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!152, !2970}
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2955, file: !153, line: 122, baseType: !2972, size: 64, offset: 384)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !153, line: 159, size: 512, align: 512, elements: !2974)
!2974 = !{!2975, !3000, !3001, !3004, !3009, !3010, !3018, !3022}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2973, file: !153, line: 160, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !153, line: 215, size: 4608, align: 512, elements: !2978)
!2978 = !{!2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2977, file: !153, line: 216, baseType: !795, size: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2977, file: !153, line: 217, baseType: !7, size: 32, offset: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2977, file: !153, line: 218, baseType: !7, size: 32, offset: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2977, file: !153, line: 219, baseType: !7, size: 32, offset: 96)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2977, file: !153, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2977, file: !153, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2977, file: !153, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2977, file: !153, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2977, file: !153, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2977, file: !153, line: 226, baseType: !7, size: 32, offset: 160)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2977, file: !153, line: 227, baseType: !41, size: 16, offset: 192)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2977, file: !153, line: 228, baseType: !41, size: 16, offset: 208)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2977, file: !153, line: 229, baseType: !7, size: 32, offset: 224)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2977, file: !153, line: 235, baseType: !2963, size: 64, offset: 256)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2977, file: !153, line: 236, baseType: !2970, size: 64, offset: 320)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2977, file: !153, line: 237, baseType: !2963, size: 64, offset: 384)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2977, file: !153, line: 238, baseType: !2970, size: 64, offset: 448)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2977, file: !153, line: 239, baseType: !2997, size: 4096, align: 512, offset: 512)
!2997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2973, size: 4096, align: 512, elements: !2998)
!2998 = !{!2999}
!2999 = !DISubrange(count: 8)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2973, file: !153, line: 161, baseType: !7, size: 32, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2973, file: !153, line: 162, baseType: !3002, size: 32, offset: 96)
!3002 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !40, line: 32, baseType: !3003)
!3003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !52, line: 96, baseType: !37)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2973, file: !153, line: 163, baseType: !3005, size: 32, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !623, line: 274, baseType: !3006)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !623, line: 274, size: 32, elements: !3007)
!3007 = !{!3008}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3006, file: !623, line: 274, baseType: !627, size: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2973, file: !153, line: 164, baseType: !2970, size: 64, offset: 192)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2973, file: !153, line: 165, baseType: !3011, size: 128, offset: 256)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2959, line: 14, size: 128, elements: !3012)
!3012 = !{!3013}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3011, file: !2959, line: 15, baseType: !3014, size: 128)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !948, line: 26, size: 128, elements: !3015)
!3015 = !{!3016, !3017}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3014, file: !948, line: 27, baseType: !1695, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !3014, file: !948, line: 28, baseType: !952, size: 64, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2973, file: !153, line: 166, baseType: !3019, size: 64, offset: 384)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!2963}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2973, file: !153, line: 167, baseType: !2963, size: 64, offset: 448)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2955, file: !153, line: 123, baseType: !98, size: 8, offset: 448)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2955, file: !153, line: 124, baseType: !98, size: 8, offset: 456)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2955, file: !153, line: 125, baseType: !98, size: 8, offset: 464)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2955, file: !153, line: 126, baseType: !98, size: 8, offset: 472)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2939, file: !2389, line: 671, baseType: !2955, size: 512, offset: 1216)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2939, file: !2389, line: 679, baseType: !3029, size: 64, offset: 1728)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2845, file: !2389, line: 800, baseType: !3031, size: 64, offset: 5248)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3033)
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2389, line: 800, flags: DIFlagFwdDecl)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2845, file: !2389, line: 809, baseType: !3035, size: 64, offset: 5312)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2389, line: 70, flags: DIFlagFwdDecl)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2845, file: !2389, line: 825, baseType: !3038, size: 2048, align: 512, offset: 5632)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2389, line: 509, size: 2048, align: 512, elements: !3039)
!3039 = !{!3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3038, file: !2389, line: 511, baseType: !652, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3038, file: !2389, line: 512, baseType: !652, size: 64, offset: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3038, file: !2389, line: 513, baseType: !652, size: 64, offset: 128)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3038, file: !2389, line: 514, baseType: !652, size: 64, offset: 192)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3038, file: !2389, line: 515, baseType: !652, size: 64, offset: 256)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3038, file: !2389, line: 516, baseType: !652, size: 64, offset: 320)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3038, file: !2389, line: 518, baseType: !652, size: 64, offset: 384)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3038, file: !2389, line: 519, baseType: !652, size: 64, offset: 448)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3038, file: !2389, line: 520, baseType: !847, size: 64, offset: 512)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3038, file: !2389, line: 522, baseType: !652, size: 64, offset: 576)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3038, file: !2389, line: 523, baseType: !652, size: 64, offset: 640)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3038, file: !2389, line: 524, baseType: !847, size: 64, offset: 704)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3038, file: !2389, line: 526, baseType: !847, size: 64, offset: 768)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3038, file: !2389, line: 527, baseType: !652, size: 64, offset: 832)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3038, file: !2389, line: 529, baseType: !652, size: 64, offset: 896)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3038, file: !2389, line: 530, baseType: !652, size: 64, offset: 960)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3038, file: !2389, line: 531, baseType: !652, size: 64, offset: 1024)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3038, file: !2389, line: 532, baseType: !652, size: 64, offset: 1088)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3038, file: !2389, line: 533, baseType: !652, size: 64, offset: 1152)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3038, file: !2389, line: 535, baseType: !652, size: 64, offset: 1216)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3038, file: !2389, line: 536, baseType: !652, size: 64, offset: 1280)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3038, file: !2389, line: 537, baseType: !652, size: 64, offset: 1344)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3038, file: !2389, line: 538, baseType: !652, size: 64, offset: 1408)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3038, file: !2389, line: 539, baseType: !652, size: 64, offset: 1472)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3038, file: !2389, line: 540, baseType: !652, size: 64, offset: 1536)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3038, file: !2389, line: 541, baseType: !652, size: 64, offset: 1600)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3038, file: !2389, line: 542, baseType: !652, size: 64, offset: 1664)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3038, file: !2389, line: 543, baseType: !652, size: 64, offset: 1728)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2845, file: !2389, line: 833, baseType: !7, size: 32, offset: 7680)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2845, file: !2389, line: 836, baseType: !7, size: 32, offset: 7712)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2845, file: !2389, line: 837, baseType: !37, size: 32, offset: 7744)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2845, file: !2389, line: 838, baseType: !3072, size: 64, offset: 7808)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3074)
!3074 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3075, line: 19, baseType: !3076)
!3075 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3075, line: 19, size: 64, elements: !3077)
!3077 = !{!3078}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3076, file: !3075, line: 19, baseType: !3079, size: 64)
!3079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 64, elements: !3080)
!3080 = !{!3081}
!3081 = !DISubrange(count: 1)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2845, file: !2389, line: 839, baseType: !3083, size: 64, offset: 7872)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2845, file: !2389, line: 840, baseType: !3074, size: 64, offset: 7936)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2845, file: !2389, line: 841, baseType: !35, size: 64, offset: 8000)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2845, file: !2389, line: 843, baseType: !41, size: 16, offset: 8064)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2845, file: !2389, line: 845, baseType: !41, size: 16, offset: 8080)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2845, file: !2389, line: 848, baseType: !37, size: 32, offset: 8096)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2845, file: !2389, line: 849, baseType: !3090, size: 32, offset: 8128)
!3090 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2389, line: 718, size: 32, elements: !3091)
!3091 = !{!3092, !3099}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3090, file: !2389, line: 724, baseType: !3093, size: 32)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3090, file: !2389, line: 719, size: 32, elements: !3094)
!3094 = !{!3095, !3096, !3097, !3098}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3093, file: !2389, line: 720, baseType: !98, size: 8)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3093, file: !2389, line: 721, baseType: !98, size: 8, offset: 8)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3093, file: !2389, line: 722, baseType: !98, size: 8, offset: 16)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3093, file: !2389, line: 723, baseType: !98, size: 8, offset: 24)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3090, file: !2389, line: 725, baseType: !425, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2845, file: !2389, line: 850, baseType: !112, size: 128, offset: 8192)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2845, file: !2389, line: 851, baseType: !3102, size: 64, offset: 8320)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2389, line: 60, flags: DIFlagFwdDecl)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2845, file: !2389, line: 855, baseType: !54, size: 64, offset: 8384)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2845, file: !2389, line: 856, baseType: !98, size: 8, offset: 8448)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2845, file: !2389, line: 857, baseType: !98, size: 8, offset: 8456)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2845, file: !2389, line: 858, baseType: !37, size: 32, offset: 8480)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2845, file: !2389, line: 859, baseType: !112, size: 128, offset: 8512)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2845, file: !2389, line: 860, baseType: !37, size: 32, offset: 8640)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2845, file: !2389, line: 861, baseType: !112, size: 128, offset: 8704)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2845, file: !2389, line: 873, baseType: !3112, size: 256, offset: 8832)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2389, line: 376, size: 256, elements: !3113)
!3113 = !{!3114, !3115, !3116, !3117}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3112, file: !2389, line: 381, baseType: !54, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3112, file: !2389, line: 384, baseType: !654, size: 64, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3112, file: !2389, line: 389, baseType: !654, size: 64, offset: 128)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3112, file: !2389, line: 392, baseType: !654, size: 64, offset: 192)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2845, file: !2389, line: 875, baseType: !112, size: 128, offset: 9088)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2845, file: !2389, line: 877, baseType: !3120, size: 320, offset: 9216)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3121, line: 86, size: 320, elements: !3122)
!3121 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3122 = !{!3123, !3124, !3125}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3120, file: !3121, line: 87, baseType: !37, size: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3120, file: !3121, line: 88, baseType: !112, size: 128, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3120, file: !3121, line: 89, baseType: !112, size: 128, offset: 192)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2845, file: !2389, line: 878, baseType: !947, size: 192, align: 64, offset: 9536)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2845, file: !2389, line: 881, baseType: !1946, size: 64, offset: 9728)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2845, file: !2389, line: 882, baseType: !1946, size: 64, offset: 9792)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2845, file: !2389, line: 884, baseType: !37, size: 32, offset: 9856)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2845, file: !2389, line: 885, baseType: !37, size: 32, offset: 9888)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2845, file: !2389, line: 886, baseType: !37, size: 32, offset: 9920)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2845, file: !2389, line: 888, baseType: !37, size: 32, offset: 9952)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2845, file: !2389, line: 890, baseType: !54, size: 64, offset: 9984)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2845, file: !2389, line: 893, baseType: !7, size: 32, offset: 10048)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2845, file: !2389, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2845, file: !2389, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2845, file: !2389, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2845, file: !2389, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2845, file: !2389, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2845, file: !2389, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2845, file: !2389, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2845, file: !2389, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2845, file: !2389, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2845, file: !2389, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2845, file: !2389, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2845, file: !2389, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2845, file: !2389, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2845, file: !2389, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2845, file: !2389, line: 969, baseType: !54, size: 64, offset: 10176)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2845, file: !2389, line: 971, baseType: !3151, size: 448, offset: 10240)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !235, line: 25, size: 448, elements: !3152)
!3152 = !{!3153, !3154, !3159}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3151, file: !235, line: 26, baseType: !54, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3151, file: !235, line: 27, baseType: !3155, size: 64, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!542, !3158}
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, scope: !3151, file: !235, line: 28, baseType: !3160, size: 320, offset: 128)
!3160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3151, file: !235, line: 28, size: 320, elements: !3161)
!3161 = !{!3162, !3172, !3197}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3160, file: !235, line: 37, baseType: !3163, size: 320)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3160, file: !235, line: 30, size: 320, elements: !3164)
!3164 = !{!3165, !3167, !3168, !3169, !3170, !3171}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3163, file: !235, line: 31, baseType: !3166, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3163, file: !235, line: 32, baseType: !425, size: 32, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3163, file: !235, line: 33, baseType: !425, size: 32, offset: 96)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3163, file: !235, line: 34, baseType: !425, size: 32, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3163, file: !235, line: 35, baseType: !652, size: 64, offset: 192)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3163, file: !235, line: 36, baseType: !3166, size: 64, offset: 256)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3160, file: !235, line: 47, baseType: !3173, size: 192)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3160, file: !235, line: 39, size: 192, elements: !3174)
!3174 = !{!3175, !3176, !3177, !3196}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3173, file: !235, line: 40, baseType: !3002, size: 32)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3173, file: !235, line: 41, baseType: !234, size: 32, offset: 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, scope: !3173, file: !235, line: 42, baseType: !3178, size: 64, offset: 64)
!3178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3173, file: !235, line: 42, size: 64, elements: !3179)
!3179 = !{!3180, !3188}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3178, file: !235, line: 43, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3183, line: 7, size: 128, elements: !3184)
!3183 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3184 = !{!3185, !3187}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3182, file: !3183, line: 8, baseType: !3186, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !52, line: 93, baseType: !58)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3182, file: !3183, line: 9, baseType: !58, size: 64, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3178, file: !235, line: 44, baseType: !3189, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3191, line: 7, size: 64, elements: !3192)
!3191 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3192 = !{!3193, !3195}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3190, file: !3191, line: 8, baseType: !3194, size: 32)
!3194 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3191, line: 5, baseType: !833)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3190, file: !3191, line: 9, baseType: !833, size: 32, offset: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3173, file: !235, line: 46, baseType: !652, size: 64, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3160, file: !235, line: 55, baseType: !3198, size: 256)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3160, file: !235, line: 49, size: 256, elements: !3199)
!3199 = !{!3200, !3203, !3204, !3205, !3206}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3198, file: !235, line: 50, baseType: !3201, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !235, line: 14, flags: DIFlagFwdDecl)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3198, file: !235, line: 51, baseType: !37, size: 32, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3198, file: !235, line: 52, baseType: !37, size: 32, offset: 96)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3198, file: !235, line: 53, baseType: !54, size: 64, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3198, file: !235, line: 54, baseType: !54, size: 64, offset: 192)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2845, file: !2389, line: 973, baseType: !3208, size: 32, offset: 10688)
!3208 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !40, line: 27, baseType: !3209)
!3209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !52, line: 28, baseType: !37)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2845, file: !2389, line: 974, baseType: !3208, size: 32, offset: 10720)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2845, file: !2389, line: 978, baseType: !54, size: 64, offset: 10752)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2845, file: !2389, line: 987, baseType: !2844, size: 64, offset: 10816)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2845, file: !2389, line: 990, baseType: !2844, size: 64, offset: 10880)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2845, file: !2389, line: 995, baseType: !112, size: 128, offset: 10944)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2845, file: !2389, line: 996, baseType: !112, size: 128, offset: 11072)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2845, file: !2389, line: 997, baseType: !2844, size: 64, offset: 11200)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2845, file: !2389, line: 1005, baseType: !112, size: 128, offset: 11264)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2845, file: !2389, line: 1006, baseType: !112, size: 128, offset: 11392)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2845, file: !2389, line: 1009, baseType: !1376, size: 64, offset: 11520)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2845, file: !2389, line: 1010, baseType: !3221, size: 512, offset: 11584)
!3221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1081, size: 512, elements: !1065)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2845, file: !2389, line: 1011, baseType: !112, size: 128, offset: 12096)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2845, file: !2389, line: 1012, baseType: !112, size: 128, offset: 12224)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2845, file: !2389, line: 1014, baseType: !785, size: 64, offset: 12352)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2845, file: !2389, line: 1017, baseType: !964, size: 64, offset: 12416)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2845, file: !2389, line: 1020, baseType: !964, size: 64, offset: 12480)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2845, file: !2389, line: 1023, baseType: !35, size: 64, offset: 12544)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2845, file: !2389, line: 1025, baseType: !652, size: 64, offset: 12608)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2845, file: !2389, line: 1026, baseType: !652, size: 64, offset: 12672)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2845, file: !2389, line: 1031, baseType: !652, size: 64, offset: 12736)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2845, file: !2389, line: 1032, baseType: !3232, size: 192, offset: 12800)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2389, line: 324, size: 192, elements: !3233)
!3233 = !{!3234, !3235, !3236}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3232, file: !2389, line: 326, baseType: !652, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3232, file: !2389, line: 327, baseType: !652, size: 64, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3232, file: !2389, line: 328, baseType: !795, size: 32, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2845, file: !2389, line: 1041, baseType: !54, size: 64, offset: 12992)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2845, file: !2389, line: 1042, baseType: !54, size: 64, offset: 13056)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2845, file: !2389, line: 1045, baseType: !652, size: 64, offset: 13120)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2845, file: !2389, line: 1048, baseType: !652, size: 64, offset: 13184)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2845, file: !2389, line: 1051, baseType: !54, size: 64, offset: 13248)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2845, file: !2389, line: 1052, baseType: !54, size: 64, offset: 13312)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2845, file: !2389, line: 1055, baseType: !3244, size: 640, offset: 13376)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3245, line: 132, size: 640, elements: !3246)
!3245 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3246 = !{!3247, !3253, !3254}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3244, file: !3245, line: 133, baseType: !3248, size: 576)
!3248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3249, size: 576, elements: !508)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3245, line: 117, size: 192, elements: !3250)
!3250 = !{!3251, !3252}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3249, file: !3245, line: 118, baseType: !652, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3249, file: !3245, line: 119, baseType: !3011, size: 128, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3244, file: !3245, line: 134, baseType: !7, size: 32, offset: 576)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3244, file: !3245, line: 135, baseType: !7, size: 32, offset: 608)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2845, file: !2389, line: 1058, baseType: !3256, size: 448, offset: 14016)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3245, line: 144, size: 448, elements: !3257)
!3257 = !{!3258, !3259, !3260}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3256, file: !3245, line: 145, baseType: !1055, size: 128, align: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3256, file: !3245, line: 146, baseType: !837, size: 256, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3256, file: !3245, line: 147, baseType: !7, size: 32, offset: 384)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2845, file: !2389, line: 1064, baseType: !1407, size: 64, offset: 14464)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2845, file: !2389, line: 1067, baseType: !1407, size: 64, offset: 14528)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2845, file: !2389, line: 1070, baseType: !1407, size: 64, offset: 14592)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2845, file: !2389, line: 1074, baseType: !1434, size: 64, offset: 14656)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2845, file: !2389, line: 1084, baseType: !3266, size: 128, offset: 14720)
!3266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !3267)
!3267 = !{!3268}
!3268 = !DISubrange(count: 16)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2845, file: !2389, line: 1086, baseType: !3270, size: 64, offset: 14848)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2389, line: 55, flags: DIFlagFwdDecl)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2845, file: !2389, line: 1089, baseType: !3273, size: 64, offset: 14912)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3274, line: 12, size: 64, elements: !3275)
!3274 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3275 = !{!3276}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3273, file: !3274, line: 13, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3274, line: 8, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2845, file: !2389, line: 1090, baseType: !3280, size: 128, offset: 14976)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3281, line: 13, size: 128, elements: !3282)
!3281 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3282 = !{!3283}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3280, file: !3281, line: 14, baseType: !112, size: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2845, file: !2389, line: 1097, baseType: !3285, size: 64, offset: 15104)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2389, line: 50, flags: DIFlagFwdDecl)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2845, file: !2389, line: 1100, baseType: !3288, size: 64, offset: 15168)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2389, line: 1100, flags: DIFlagFwdDecl)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2845, file: !2389, line: 1103, baseType: !3291, size: 64, offset: 15232)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2389, line: 53, flags: DIFlagFwdDecl)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2845, file: !2389, line: 1107, baseType: !3294, size: 64, offset: 15296)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3296, line: 31, size: 576, elements: !3297)
!3296 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3297 = !{!3298, !3299, !3302, !3305, !3308, !3309, !3312, !3315, !3316}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3295, file: !3296, line: 32, baseType: !1380, size: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3295, file: !3296, line: 33, baseType: !3300, size: 64, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3296, line: 9, flags: DIFlagFwdDecl)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3295, file: !3296, line: 34, baseType: !3303, size: 64, offset: 128)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3296, line: 10, flags: DIFlagFwdDecl)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3295, file: !3296, line: 35, baseType: !3306, size: 64, offset: 192)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3296, line: 8, flags: DIFlagFwdDecl)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3295, file: !3296, line: 36, baseType: !1398, size: 64, offset: 256)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3295, file: !3296, line: 37, baseType: !3310, size: 64, offset: 320)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1436, line: 34, flags: DIFlagFwdDecl)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3295, file: !3296, line: 38, baseType: !3313, size: 64, offset: 384)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3296, line: 38, flags: DIFlagFwdDecl)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3295, file: !3296, line: 39, baseType: !3313, size: 64, offset: 448)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3295, file: !3296, line: 40, baseType: !3317, size: 64, offset: 512)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3319, line: 771, size: 384, elements: !3320)
!3319 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!3320 = !{!3321, !3322, !3323, !3324}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3318, file: !3319, line: 772, baseType: !1620, size: 192)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3318, file: !3319, line: 773, baseType: !1587, size: 64, offset: 192)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3318, file: !3319, line: 774, baseType: !1700, size: 64, offset: 256)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3318, file: !3319, line: 775, baseType: !3325, size: 64, offset: 320)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3327, line: 209, size: 4736, elements: !3328)
!3327 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3328 = !{!3329, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3326, file: !3327, line: 215, baseType: !3330, size: 896)
!3330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3331, size: 896, elements: !3478)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3327, line: 152, size: 1600, elements: !3333)
!3333 = !{!3334, !3529, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3659}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3332, file: !3327, line: 154, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3327, line: 389, size: 7872, elements: !3337)
!3337 = !{!3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3441, !3447, !3448, !3452, !3453, !3454, !3455, !3456, !3457, !3475, !3476, !3480, !3481, !3482, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3516, !3519, !3520, !3527}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3336, file: !3327, line: 391, baseType: !3332, size: 1600)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3336, file: !3327, line: 393, baseType: !54, size: 64, offset: 1600)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3336, file: !3327, line: 401, baseType: !37, size: 32, offset: 1664)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3336, file: !3327, line: 404, baseType: !37, size: 32, offset: 1696)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3336, file: !3327, line: 417, baseType: !37, size: 32, offset: 1728)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3336, file: !3327, line: 418, baseType: !37, size: 32, offset: 1760)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3336, file: !3327, line: 419, baseType: !37, size: 32, offset: 1792)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3336, file: !3327, line: 432, baseType: !37, size: 32, offset: 1824)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3336, file: !3327, line: 433, baseType: !37, size: 32, offset: 1856)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3336, file: !3327, line: 434, baseType: !37, size: 32, offset: 1888)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3336, file: !3327, line: 436, baseType: !37, size: 32, offset: 1920)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3336, file: !3327, line: 439, baseType: !7, size: 32, offset: 1952)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3336, file: !3327, line: 441, baseType: !3351, size: 64, offset: 1984)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !752, line: 190, size: 1152, elements: !3353)
!3353 = !{!3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3433, !3434, !3435, !3436, !3437, !3440}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3352, file: !752, line: 191, baseType: !64, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3352, file: !752, line: 192, baseType: !64, size: 32, offset: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3352, file: !752, line: 202, baseType: !3351, size: 64, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3352, file: !752, line: 203, baseType: !31, size: 64, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3352, file: !752, line: 205, baseType: !947, size: 192, align: 64, offset: 192)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3352, file: !752, line: 207, baseType: !459, size: 64, offset: 384)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3352, file: !752, line: 208, baseType: !7, size: 32, offset: 448)
!3361 = !DIDerivedType(tag: DW_TAG_member, scope: !3352, file: !752, line: 209, baseType: !3362, size: 256, offset: 512)
!3362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3352, file: !752, line: 209, size: 256, elements: !3363)
!3363 = !{!3364, !3373, !3377}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3362, file: !752, line: 210, baseType: !3365, size: 256)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !752, line: 153, size: 256, elements: !3366)
!3366 = !{!3367, !3368, !3369, !3372}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3365, file: !752, line: 154, baseType: !54, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3365, file: !752, line: 156, baseType: !1695, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3365, file: !752, line: 162, baseType: !3370, size: 64, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !752, line: 162, flags: DIFlagFwdDecl)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3365, file: !752, line: 167, baseType: !54, size: 64, offset: 192)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3362, file: !752, line: 211, baseType: !3374, size: 64)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !752, line: 170, size: 64, elements: !3375)
!3375 = !{!3376}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3374, file: !752, line: 171, baseType: !3351, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3362, file: !752, line: 212, baseType: !3378, size: 256)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !752, line: 174, size: 256, elements: !3379)
!3379 = !{!3380, !3428, !3431, !3432}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3378, file: !752, line: 175, baseType: !3381, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3383)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !752, line: 271, size: 768, elements: !3384)
!3384 = !{!3385, !3405, !3409, !3410, !3411, !3412, !3413, !3417, !3418, !3419, !3420, !3424}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3383, file: !752, line: 276, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!37, !3389}
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !752, line: 251, size: 1216, elements: !3391)
!3391 = !{!3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3390, file: !752, line: 253, baseType: !3351, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3390, file: !752, line: 254, baseType: !1756, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3390, file: !752, line: 255, baseType: !1294, size: 64, offset: 128)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3390, file: !752, line: 256, baseType: !35, size: 64, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3390, file: !752, line: 259, baseType: !837, size: 256, offset: 256)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3390, file: !752, line: 260, baseType: !837, size: 256, offset: 512)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3390, file: !752, line: 261, baseType: !37, size: 32, offset: 768)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3390, file: !752, line: 262, baseType: !112, size: 128, offset: 832)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3390, file: !752, line: 263, baseType: !507, size: 64, offset: 960)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3390, file: !752, line: 265, baseType: !50, size: 64, offset: 1024)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3390, file: !752, line: 266, baseType: !451, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3390, file: !752, line: 267, baseType: !451, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3390, file: !752, line: 268, baseType: !2128, size: 64, offset: 1152)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3383, file: !752, line: 277, baseType: !3406, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{null, !3389}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3383, file: !752, line: 290, baseType: !1324, size: 64, offset: 128)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3383, file: !752, line: 292, baseType: !1312, size: 64, offset: 192)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3383, file: !752, line: 293, baseType: !1320, size: 64, offset: 256)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3383, file: !752, line: 294, baseType: !1316, size: 64, offset: 320)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3383, file: !752, line: 296, baseType: !3414, size: 64, offset: 384)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!539, !3389, !507, !50, !56}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3383, file: !752, line: 306, baseType: !50, size: 64, offset: 448)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3383, file: !752, line: 313, baseType: !451, size: 8, offset: 512)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3383, file: !752, line: 314, baseType: !3414, size: 64, offset: 576)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3383, file: !752, line: 317, baseType: !3421, size: 64, offset: 640)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!2339, !3389, !2341}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3383, file: !752, line: 320, baseType: !3425, size: 64, offset: 704)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!37, !3389, !1933}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3378, file: !752, line: 176, baseType: !3429, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !752, line: 35, flags: DIFlagFwdDecl)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3378, file: !752, line: 177, baseType: !56, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3378, file: !752, line: 178, baseType: !3351, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3352, file: !752, line: 215, baseType: !35, size: 64, offset: 768)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3352, file: !752, line: 221, baseType: !652, size: 64, offset: 832)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3352, file: !752, line: 223, baseType: !41, size: 16, offset: 896)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3352, file: !752, line: 224, baseType: !39, size: 16, offset: 912)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3352, file: !752, line: 225, baseType: !3438, size: 64, offset: 960)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !752, line: 36, flags: DIFlagFwdDecl)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3352, file: !752, line: 227, baseType: !1055, size: 128, align: 64, offset: 1024)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3336, file: !3327, line: 442, baseType: !3442, size: 448, offset: 2048)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3327, line: 138, size: 448, elements: !3443)
!3443 = !{!3444, !3445, !3446}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3442, file: !3327, line: 140, baseType: !3351, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3442, file: !3327, line: 141, baseType: !54, size: 64, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3442, file: !3327, line: 142, baseType: !1077, size: 320, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3336, file: !3327, line: 443, baseType: !3442, size: 448, offset: 2496)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3336, file: !3327, line: 446, baseType: !3449, offset: 2944)
!3449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3442, elements: !3450)
!3450 = !{!3451}
!3451 = !DISubrange(count: 0)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3336, file: !3327, line: 455, baseType: !108, size: 16, offset: 2944)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3336, file: !3327, line: 456, baseType: !108, size: 16, offset: 2960)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3336, file: !3327, line: 457, baseType: !108, size: 16, offset: 2976)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3336, file: !3327, line: 458, baseType: !108, size: 16, offset: 2992)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3336, file: !3327, line: 461, baseType: !3330, size: 896, offset: 3008)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3336, file: !3327, line: 463, baseType: !3458, size: 64, offset: 3904)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3327, line: 537, size: 41664, elements: !3460)
!3460 = !{!3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3474}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3459, file: !3327, line: 538, baseType: !3370, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3459, file: !3327, line: 541, baseType: !7, size: 32, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3459, file: !3327, line: 544, baseType: !37, size: 32, offset: 96)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3459, file: !3327, line: 547, baseType: !112, size: 128, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3459, file: !3327, line: 548, baseType: !1055, size: 128, align: 64, offset: 256)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3459, file: !3327, line: 555, baseType: !3336, size: 7872, offset: 384)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3459, file: !3327, line: 558, baseType: !3335, size: 64, offset: 8256)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3459, file: !3327, line: 561, baseType: !64, size: 32, offset: 8320)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3459, file: !3327, line: 564, baseType: !7, size: 32, offset: 8352)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3459, file: !3327, line: 567, baseType: !3471, size: 32768, offset: 8384)
!3471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32768, elements: !3472)
!3472 = !{!3473}
!3473 = !DISubrange(count: 4096)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3459, file: !3327, line: 570, baseType: !2770, size: 512, offset: 41152)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3336, file: !3327, line: 469, baseType: !112, size: 128, offset: 3968)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3336, file: !3327, line: 478, baseType: !3477, size: 1792, offset: 4096)
!3477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 1792, elements: !3478)
!3478 = !{!3479}
!3479 = !DISubrange(count: 14)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3336, file: !3327, line: 487, baseType: !3335, size: 64, offset: 5888)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3336, file: !3327, line: 488, baseType: !3335, size: 64, offset: 5952)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3336, file: !3327, line: 491, baseType: !3483, size: 64, offset: 6016)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3327, line: 327, size: 896, elements: !3485)
!3485 = !{!3486, !3489, !3499, !3500, !3501, !3502, !3503}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3484, file: !3327, line: 332, baseType: !3487)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3488, line: 64, elements: !1123)
!3488 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3484, file: !3327, line: 333, baseType: !3490, size: 192)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3327, line: 299, size: 192, elements: !3491)
!3491 = !{!3492}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3490, file: !3327, line: 300, baseType: !3493, size: 192)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3494, line: 17, size: 192, elements: !3495)
!3494 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3495 = !{!3496, !3497, !3498}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3493, file: !3494, line: 18, baseType: !652, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3493, file: !3494, line: 19, baseType: !652, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3493, file: !3494, line: 20, baseType: !654, size: 64, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3484, file: !3327, line: 339, baseType: !3490, size: 192, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3484, file: !3327, line: 347, baseType: !3490, size: 192, offset: 384)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3484, file: !3327, line: 353, baseType: !3490, size: 192, offset: 576)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3484, file: !3327, line: 366, baseType: !3335, size: 64, offset: 768)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3484, file: !3327, line: 367, baseType: !3335, size: 64, offset: 832)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3336, file: !3327, line: 492, baseType: !112, size: 128, offset: 6080)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3336, file: !3327, line: 495, baseType: !3490, size: 192, offset: 6208)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3336, file: !3327, line: 496, baseType: !3490, size: 192, offset: 6400)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3336, file: !3327, line: 497, baseType: !3232, size: 192, offset: 6592)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3336, file: !3327, line: 503, baseType: !112, size: 128, offset: 6784)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3336, file: !3327, line: 504, baseType: !837, size: 256, offset: 6912)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3336, file: !3327, line: 507, baseType: !69, size: 192, offset: 7168)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3336, file: !3327, line: 510, baseType: !1095, size: 256, offset: 7360)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3336, file: !3327, line: 513, baseType: !3513, size: 64, offset: 7616)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3515, line: 214, elements: !1123)
!3515 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3336, file: !3327, line: 516, baseType: !3517, offset: 7680)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3518, line: 76, elements: !1123)
!3518 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3336, file: !3327, line: 519, baseType: !64, size: 32, offset: 7680)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3336, file: !3327, line: 522, baseType: !3521, size: 128, offset: 7712)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3327, line: 370, size: 128, elements: !3522)
!3522 = !{!3523, !3524, !3525, !3526}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3521, file: !3327, line: 372, baseType: !451, size: 8)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3521, file: !3327, line: 375, baseType: !37, size: 32, offset: 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3521, file: !3327, line: 380, baseType: !37, size: 32, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3521, file: !3327, line: 386, baseType: !37, size: 32, offset: 96)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3336, file: !3327, line: 529, baseType: !3528, offset: 7872)
!3528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3335, elements: !1400)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3332, file: !3327, line: 157, baseType: !3530, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3327, line: 669, size: 1984, elements: !3532)
!3532 = !{!3533, !3537, !3541, !3545, !3546, !3547, !3548, !3552, !3556, !3557, !3563, !3567, !3568, !3569, !3573, !3577, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3604, !3605, !3642, !3643}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3531, file: !3327, line: 670, baseType: !3534, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!3331, !3331}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3531, file: !3327, line: 671, baseType: !3538, size: 64, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!37, !3331}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3531, file: !3327, line: 672, baseType: !3542, size: 64, offset: 128)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{null, !3331}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3531, file: !3327, line: 673, baseType: !3542, size: 64, offset: 192)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3531, file: !3327, line: 674, baseType: !3542, size: 64, offset: 256)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3531, file: !3327, line: 675, baseType: !3542, size: 64, offset: 320)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3531, file: !3327, line: 676, baseType: !3549, size: 64, offset: 384)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{null, !3331, !37}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3531, file: !3327, line: 677, baseType: !3553, size: 64, offset: 448)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!37, !1294, !3331}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3531, file: !3327, line: 679, baseType: !3553, size: 64, offset: 512)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3531, file: !3327, line: 682, baseType: !3558, size: 64, offset: 576)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!37, !3561}
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3327, line: 30, flags: DIFlagFwdDecl)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3531, file: !3327, line: 683, baseType: !3564, size: 64, offset: 640)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{null, !3561}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3531, file: !3327, line: 684, baseType: !3564, size: 64, offset: 704)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3531, file: !3327, line: 685, baseType: !1198, size: 64, offset: 768)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3531, file: !3327, line: 686, baseType: !3570, size: 64, offset: 832)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!37, !2844, !3325}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3531, file: !3327, line: 688, baseType: !3574, size: 64, offset: 896)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{null, !2844, !3325}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3531, file: !3327, line: 689, baseType: !3578, size: 64, offset: 960)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{null, !2844}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3531, file: !3327, line: 690, baseType: !3578, size: 64, offset: 1024)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3531, file: !3327, line: 691, baseType: !3578, size: 64, offset: 1088)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3531, file: !3327, line: 692, baseType: !3542, size: 64, offset: 1152)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3531, file: !3327, line: 694, baseType: !451, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3531, file: !3327, line: 707, baseType: !451, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3531, file: !3327, line: 719, baseType: !451, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3531, file: !3327, line: 722, baseType: !37, size: 32, offset: 1248)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3531, file: !3327, line: 723, baseType: !31, size: 64, offset: 1280)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3531, file: !3327, line: 726, baseType: !31, size: 64, offset: 1344)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3531, file: !3327, line: 729, baseType: !3458, size: 64, offset: 1408)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3531, file: !3327, line: 732, baseType: !3592, size: 192, offset: 1472)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3593, line: 19, size: 192, elements: !3594)
!3593 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3594 = !{!3595, !3602, !3603}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3592, file: !3593, line: 20, baseType: !3596, size: 128)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3597, line: 296, size: 128, elements: !3598)
!3597 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3598 = !{!3599, !3600, !3601}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3596, file: !3597, line: 297, baseType: !74, size: 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3596, file: !3597, line: 299, baseType: !2194, size: 32, offset: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3596, file: !3597, line: 300, baseType: !35, size: 64, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3592, file: !3593, line: 21, baseType: !7, size: 32, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3592, file: !3593, line: 22, baseType: !7, size: 32, offset: 160)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3531, file: !3327, line: 738, baseType: !112, size: 128, offset: 1664)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3531, file: !3327, line: 744, baseType: !3606, size: 64, offset: 1792)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3327, line: 580, size: 1728, elements: !3608)
!3608 = !{!3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3618, !3619, !3620, !3624, !3628, !3629, !3630, !3631, !3632, !3636, !3640, !3641}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3607, file: !3327, line: 586, baseType: !2770, size: 512)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3607, file: !3327, line: 587, baseType: !54, size: 64, offset: 512)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3607, file: !3327, line: 593, baseType: !50, size: 64, offset: 576)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3607, file: !3327, line: 596, baseType: !7, size: 32, offset: 640)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3607, file: !3327, line: 604, baseType: !7, size: 32, offset: 672)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3607, file: !3327, line: 610, baseType: !3530, size: 64, offset: 704)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3607, file: !3327, line: 611, baseType: !112, size: 128, offset: 768)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3607, file: !3327, line: 612, baseType: !3617, size: 64, offset: 896)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3607, file: !3327, line: 614, baseType: !3386, size: 64, offset: 960)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3607, file: !3327, line: 615, baseType: !3406, size: 64, offset: 1024)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3607, file: !3327, line: 621, baseType: !3621, size: 64, offset: 1088)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!652, !3331, !3606}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3607, file: !3327, line: 625, baseType: !3625, size: 64, offset: 1152)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!847, !3331, !3606}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3607, file: !3327, line: 628, baseType: !1324, size: 64, offset: 1216)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3607, file: !3327, line: 631, baseType: !1312, size: 64, offset: 1280)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3607, file: !3327, line: 632, baseType: !1320, size: 64, offset: 1344)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3607, file: !3327, line: 633, baseType: !1316, size: 64, offset: 1408)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3607, file: !3327, line: 640, baseType: !3633, size: 64, offset: 1472)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!37, !3331, !3606, !652}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3607, file: !3327, line: 645, baseType: !3637, size: 64, offset: 1536)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!37, !3331, !3606, !847}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3607, file: !3327, line: 654, baseType: !3414, size: 64, offset: 1600)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3607, file: !3327, line: 657, baseType: !3421, size: 64, offset: 1664)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3531, file: !3327, line: 745, baseType: !3606, size: 64, offset: 1856)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3531, file: !3327, line: 754, baseType: !7, size: 32, offset: 1920)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3332, file: !3327, line: 160, baseType: !1886, size: 128, offset: 128)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3332, file: !3327, line: 163, baseType: !112, size: 128, offset: 256)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3332, file: !3327, line: 164, baseType: !112, size: 128, offset: 384)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3332, file: !3327, line: 167, baseType: !112, size: 128, offset: 512)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3332, file: !3327, line: 173, baseType: !37, size: 32, offset: 640)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3332, file: !3327, line: 175, baseType: !7, size: 32, offset: 672)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3332, file: !3327, line: 183, baseType: !652, size: 64, offset: 704)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3332, file: !3327, line: 189, baseType: !64, size: 32, offset: 768)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3332, file: !3327, line: 192, baseType: !1095, size: 256, offset: 832)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3332, file: !3327, line: 193, baseType: !3654, size: 448, offset: 1088)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !365, line: 120, size: 448, elements: !3655)
!3655 = !{!3656, !3657, !3658}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3654, file: !365, line: 121, baseType: !1095, size: 256)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3654, file: !365, line: 122, baseType: !1055, size: 128, align: 64, offset: 256)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3654, file: !365, line: 125, baseType: !1156, size: 64, offset: 384)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3332, file: !3327, line: 199, baseType: !3331, size: 64, offset: 1536)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3326, file: !3327, line: 218, baseType: !1380, size: 32, offset: 896)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3326, file: !3327, line: 226, baseType: !3325, size: 64, offset: 960)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3326, file: !3327, line: 229, baseType: !3335, size: 64, offset: 1024)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3326, file: !3327, line: 232, baseType: !37, size: 32, offset: 1088)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3326, file: !3327, line: 241, baseType: !112, size: 128, offset: 1152)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3326, file: !3327, line: 242, baseType: !112, size: 128, offset: 1280)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3326, file: !3327, line: 243, baseType: !112, size: 128, offset: 1408)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3326, file: !3327, line: 246, baseType: !112, size: 128, offset: 1536)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3326, file: !3327, line: 255, baseType: !3477, size: 1792, offset: 1664)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3326, file: !3327, line: 258, baseType: !112, size: 128, offset: 3456)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3326, file: !3327, line: 259, baseType: !112, size: 128, offset: 3584)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3326, file: !3327, line: 265, baseType: !1081, size: 128, offset: 3712)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3326, file: !3327, line: 271, baseType: !112, size: 128, offset: 3840)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3326, file: !3327, line: 277, baseType: !112, size: 128, offset: 3968)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3326, file: !3327, line: 278, baseType: !112, size: 128, offset: 4096)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3326, file: !3327, line: 279, baseType: !112, size: 128, offset: 4224)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3326, file: !3327, line: 288, baseType: !3335, size: 64, offset: 4352)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3326, file: !3327, line: 289, baseType: !3335, size: 64, offset: 4416)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3326, file: !3327, line: 290, baseType: !3325, size: 64, offset: 4480)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3326, file: !3327, line: 293, baseType: !451, size: 8, offset: 4544)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3326, file: !3327, line: 296, baseType: !1055, size: 128, align: 64, offset: 4608)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2845, file: !2389, line: 1110, baseType: !3682, size: 64, offset: 15360)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3684, line: 93, size: 8768, elements: !3685)
!3684 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3685 = !{!3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3734, !3743, !3744, !3746, !3747, !3748, !3751, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3789, !3790, !3797, !3807, !3870, !3871, !3874, !3875, !3876, !3877, !3878, !3879}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3683, file: !3684, line: 94, baseType: !1380, size: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3683, file: !3684, line: 95, baseType: !64, size: 32, offset: 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3683, file: !3684, line: 96, baseType: !37, size: 32, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3683, file: !3684, line: 97, baseType: !37, size: 32, offset: 96)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3683, file: !3684, line: 98, baseType: !112, size: 128, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3683, file: !3684, line: 100, baseType: !69, size: 192, offset: 256)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3683, file: !3684, line: 103, baseType: !2844, size: 64, offset: 448)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3683, file: !3684, line: 106, baseType: !3694, size: 192, offset: 512)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3695, line: 32, size: 192, elements: !3696)
!3695 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3696 = !{!3697, !3698}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3694, file: !3695, line: 33, baseType: !112, size: 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3694, file: !3695, line: 34, baseType: !3699, size: 64, offset: 128)
!3699 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3700, line: 25, baseType: !3701)
!3700 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3700, line: 23, size: 64, elements: !3702)
!3702 = !{!3703}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3701, file: !3700, line: 24, baseType: !3079, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3683, file: !3684, line: 109, baseType: !1204, size: 64, offset: 704)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3683, file: !3684, line: 112, baseType: !37, size: 32, offset: 768)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3683, file: !3684, line: 114, baseType: !37, size: 32, offset: 800)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3683, file: !3684, line: 115, baseType: !2844, size: 64, offset: 832)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3683, file: !3684, line: 118, baseType: !37, size: 32, offset: 896)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3683, file: !3684, line: 119, baseType: !7, size: 32, offset: 928)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3683, file: !3684, line: 121, baseType: !3711, size: 64, offset: 960)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3684, line: 80, size: 448, elements: !3713)
!3713 = !{!3714, !3715, !3721}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3712, file: !3684, line: 81, baseType: !64, size: 32)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3712, file: !3684, line: 82, baseType: !3716, size: 128, offset: 64)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3684, line: 75, size: 128, elements: !3717)
!3717 = !{!3718, !3719}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3716, file: !3684, line: 76, baseType: !2844, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3716, file: !3684, line: 77, baseType: !3720, size: 64, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3712, file: !3684, line: 83, baseType: !786, size: 256, offset: 192)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3683, file: !3684, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3683, file: !3684, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3683, file: !3684, line: 138, baseType: !7, size: 32, offset: 1056)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3683, file: !3684, line: 139, baseType: !112, size: 128, offset: 1088)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3683, file: !3684, line: 142, baseType: !2955, size: 512, offset: 1216)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3683, file: !3684, line: 143, baseType: !2963, size: 64, offset: 1728)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3683, file: !3684, line: 150, baseType: !3729, size: 256, offset: 1792)
!3729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3730, size: 256, elements: !954)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3684, line: 38, size: 128, elements: !3731)
!3731 = !{!3732, !3733}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3730, file: !3684, line: 39, baseType: !652, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3730, file: !3684, line: 40, baseType: !652, size: 64, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3683, file: !3684, line: 156, baseType: !3735, size: 192, offset: 2048)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3684, line: 66, size: 192, elements: !3736)
!3736 = !{!3737}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3735, file: !3684, line: 67, baseType: !3738, size: 192)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3684, line: 47, size: 192, elements: !3739)
!3739 = !{!3740, !3741, !3742}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3738, file: !3684, line: 48, baseType: !843, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3738, file: !3684, line: 49, baseType: !843, size: 64, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3738, file: !3684, line: 50, baseType: !843, size: 64, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3683, file: !3684, line: 160, baseType: !3244, size: 640, offset: 2240)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3683, file: !3684, line: 163, baseType: !3745, size: 256, offset: 2880)
!3745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1376, size: 256, elements: !1065)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3683, file: !3684, line: 169, baseType: !1376, size: 64, offset: 3136)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3683, file: !3684, line: 172, baseType: !37, size: 32, offset: 3200)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3683, file: !3684, line: 174, baseType: !3749, size: 64, offset: 3264)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3684, line: 174, flags: DIFlagFwdDecl)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3683, file: !3684, line: 185, baseType: !3752, size: 64, offset: 3328)
!3752 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !623, line: 860, baseType: !3753)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !623, line: 853, size: 64, elements: !3754)
!3754 = !{!3755, !3756}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3753, file: !623, line: 858, baseType: !622, size: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3753, file: !623, line: 859, baseType: !74, size: 32, offset: 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3683, file: !3684, line: 186, baseType: !652, size: 64, offset: 3392)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3683, file: !3684, line: 186, baseType: !652, size: 64, offset: 3456)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3683, file: !3684, line: 186, baseType: !652, size: 64, offset: 3520)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3683, file: !3684, line: 186, baseType: !652, size: 64, offset: 3584)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3683, file: !3684, line: 187, baseType: !652, size: 64, offset: 3648)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3683, file: !3684, line: 188, baseType: !652, size: 64, offset: 3712)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3683, file: !3684, line: 189, baseType: !3232, size: 192, offset: 3776)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3683, file: !3684, line: 190, baseType: !54, size: 64, offset: 3968)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3683, file: !3684, line: 190, baseType: !54, size: 64, offset: 4032)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3683, file: !3684, line: 190, baseType: !54, size: 64, offset: 4096)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3683, file: !3684, line: 190, baseType: !54, size: 64, offset: 4160)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3683, file: !3684, line: 191, baseType: !54, size: 64, offset: 4224)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3683, file: !3684, line: 191, baseType: !54, size: 64, offset: 4288)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3683, file: !3684, line: 191, baseType: !54, size: 64, offset: 4352)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3683, file: !3684, line: 191, baseType: !54, size: 64, offset: 4416)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3683, file: !3684, line: 192, baseType: !54, size: 64, offset: 4480)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3683, file: !3684, line: 192, baseType: !54, size: 64, offset: 4544)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3683, file: !3684, line: 192, baseType: !54, size: 64, offset: 4608)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3683, file: !3684, line: 192, baseType: !54, size: 64, offset: 4672)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3683, file: !3684, line: 193, baseType: !54, size: 64, offset: 4736)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3683, file: !3684, line: 193, baseType: !54, size: 64, offset: 4800)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3683, file: !3684, line: 194, baseType: !3779, size: 448, offset: 4864)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3780, line: 12, size: 448, elements: !3781)
!3780 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3781 = !{!3782, !3783, !3784, !3785, !3786, !3787, !3788}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3779, file: !3780, line: 15, baseType: !652, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3779, file: !3780, line: 17, baseType: !652, size: 64, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3779, file: !3780, line: 19, baseType: !652, size: 64, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3779, file: !3780, line: 21, baseType: !652, size: 64, offset: 192)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3779, file: !3780, line: 29, baseType: !652, size: 64, offset: 256)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3779, file: !3780, line: 35, baseType: !652, size: 64, offset: 320)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3779, file: !3780, line: 44, baseType: !652, size: 64, offset: 384)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3683, file: !3684, line: 202, baseType: !654, size: 64, offset: 5312)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3683, file: !3684, line: 213, baseType: !3791, size: 2048, offset: 5376)
!3791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3792, size: 2048, elements: !3267)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3793, line: 43, size: 128, elements: !3794)
!3793 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3794 = !{!3795, !3796}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3792, file: !3793, line: 44, baseType: !53, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3792, file: !3793, line: 45, baseType: !53, size: 64, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3683, file: !3684, line: 216, baseType: !3798, size: 448, offset: 7424)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3684, line: 30, size: 448, elements: !3799)
!3799 = !{!3800, !3801, !3802, !3803, !3804, !3805, !3806}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3798, file: !3684, line: 31, baseType: !37, size: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3798, file: !3684, line: 32, baseType: !542, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3798, file: !3684, line: 33, baseType: !54, size: 64, offset: 128)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3798, file: !3684, line: 34, baseType: !652, size: 64, offset: 192)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3798, file: !3684, line: 34, baseType: !652, size: 64, offset: 256)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3798, file: !3684, line: 35, baseType: !54, size: 64, offset: 320)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3798, file: !3684, line: 35, baseType: !54, size: 64, offset: 384)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3683, file: !3684, line: 219, baseType: !3808, size: 64, offset: 7872)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3810, line: 41, size: 3456, elements: !3811)
!3810 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!3811 = !{!3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3826, !3827, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3809, file: !3810, line: 47, baseType: !109, size: 16)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3809, file: !3810, line: 48, baseType: !426, size: 32, offset: 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3809, file: !3810, line: 54, baseType: !100, size: 8, offset: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !3809, file: !3810, line: 55, baseType: !100, size: 8, offset: 72)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !3809, file: !3810, line: 73, baseType: !653, size: 64, align: 64, offset: 128)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !3809, file: !3810, line: 74, baseType: !653, size: 64, offset: 192)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !3809, file: !3810, line: 81, baseType: !653, size: 64, offset: 256)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !3809, file: !3810, line: 82, baseType: !653, size: 64, offset: 320)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !3809, file: !3810, line: 85, baseType: !653, size: 64, offset: 384)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !3809, file: !3810, line: 86, baseType: !653, size: 64, offset: 448)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !3809, file: !3810, line: 94, baseType: !653, size: 64, offset: 512)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !3809, file: !3810, line: 102, baseType: !653, size: 64, offset: 576)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !3809, file: !3810, line: 107, baseType: !3825, size: 256, offset: 640)
!3825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 256, elements: !661)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !3809, file: !3810, line: 108, baseType: !100, size: 8, align: 64, offset: 896)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !3809, file: !3810, line: 110, baseType: !3828, size: 24, offset: 904)
!3828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 24, elements: !508)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !3809, file: !3810, line: 111, baseType: !426, size: 32, align: 64, offset: 960)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !3809, file: !3810, line: 113, baseType: !426, size: 32, offset: 992)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !3809, file: !3810, line: 114, baseType: !426, size: 32, offset: 1024)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !3809, file: !3810, line: 115, baseType: !426, size: 32, offset: 1056)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !3809, file: !3810, line: 117, baseType: !426, size: 32, offset: 1088)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !3809, file: !3810, line: 118, baseType: !653, size: 64, align: 64, offset: 1152)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3809, file: !3810, line: 120, baseType: !653, size: 64, offset: 1216)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3809, file: !3810, line: 121, baseType: !653, size: 64, offset: 1280)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3809, file: !3810, line: 122, baseType: !653, size: 64, offset: 1344)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3809, file: !3810, line: 123, baseType: !653, size: 64, offset: 1408)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !3809, file: !3810, line: 133, baseType: !653, size: 64, offset: 1472)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !3809, file: !3810, line: 137, baseType: !653, size: 64, offset: 1536)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !3809, file: !3810, line: 142, baseType: !653, size: 64, offset: 1600)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !3809, file: !3810, line: 143, baseType: !653, size: 64, offset: 1664)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !3809, file: !3810, line: 146, baseType: !653, size: 64, offset: 1728)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !3809, file: !3810, line: 147, baseType: !653, size: 64, offset: 1792)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !3809, file: !3810, line: 148, baseType: !653, size: 64, offset: 1856)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !3809, file: !3810, line: 149, baseType: !653, size: 64, offset: 1920)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3809, file: !3810, line: 154, baseType: !653, size: 64, offset: 1984)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3809, file: !3810, line: 155, baseType: !653, size: 64, offset: 2048)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3809, file: !3810, line: 156, baseType: !653, size: 64, offset: 2112)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3809, file: !3810, line: 158, baseType: !653, size: 64, offset: 2176)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3809, file: !3810, line: 159, baseType: !653, size: 64, offset: 2240)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !3809, file: !3810, line: 162, baseType: !653, size: 64, offset: 2304)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !3809, file: !3810, line: 163, baseType: !653, size: 64, offset: 2368)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !3809, file: !3810, line: 164, baseType: !653, size: 64, offset: 2432)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !3809, file: !3810, line: 167, baseType: !653, size: 64, offset: 2496)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !3809, file: !3810, line: 168, baseType: !653, size: 64, offset: 2560)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !3809, file: !3810, line: 171, baseType: !653, size: 64, offset: 2624)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !3809, file: !3810, line: 172, baseType: !653, size: 64, offset: 2688)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !3809, file: !3810, line: 175, baseType: !653, size: 64, offset: 2752)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !3809, file: !3810, line: 178, baseType: !653, size: 64, offset: 2816)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !3809, file: !3810, line: 179, baseType: !653, size: 64, offset: 2880)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !3809, file: !3810, line: 182, baseType: !426, size: 32, offset: 2944)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !3809, file: !3810, line: 186, baseType: !653, size: 64, align: 64, offset: 3008)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !3809, file: !3810, line: 194, baseType: !653, size: 64, offset: 3072)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !3809, file: !3810, line: 195, baseType: !653, size: 64, offset: 3136)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !3809, file: !3810, line: 199, baseType: !653, size: 64, offset: 3200)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !3809, file: !3810, line: 200, baseType: !653, size: 64, offset: 3264)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !3809, file: !3810, line: 203, baseType: !653, size: 64, offset: 3328)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !3809, file: !3810, line: 204, baseType: !653, size: 64, offset: 3392)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3683, file: !3684, line: 222, baseType: !7, size: 32, offset: 7936)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3683, file: !3684, line: 223, baseType: !3872, size: 64, offset: 8000)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3684, line: 223, flags: DIFlagFwdDecl)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3683, file: !3684, line: 230, baseType: !451, size: 8, offset: 8064)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3683, file: !3684, line: 231, baseType: !973, size: 16, offset: 8080)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3683, file: !3684, line: 232, baseType: !973, size: 16, offset: 8096)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3683, file: !3684, line: 234, baseType: !1946, size: 64, offset: 8128)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3683, file: !3684, line: 237, baseType: !837, size: 256, offset: 8192)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3683, file: !3684, line: 243, baseType: !1448, size: 320, offset: 8448)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2845, file: !2389, line: 1111, baseType: !3881, size: 64, offset: 15424)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3684, line: 20, size: 16640, elements: !3883)
!3883 = !{!3884, !3885, !3886, !3887}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3882, file: !3684, line: 21, baseType: !74, size: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3882, file: !3684, line: 22, baseType: !1380, size: 32, offset: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3882, file: !3684, line: 23, baseType: !69, size: 192, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3882, file: !3684, line: 24, baseType: !3888, size: 16384, offset: 256)
!3888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3889, size: 16384, elements: !512)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3695, line: 51, size: 256, elements: !3890)
!3890 = !{!3891}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3889, file: !3695, line: 52, baseType: !3892, size: 256)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3695, line: 37, size: 256, elements: !3893)
!3893 = !{!3894, !3901, !3902, !3906}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3892, file: !3695, line: 39, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3896, line: 83, baseType: !3897)
!3896 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3896, line: 82, baseType: !3899)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{null, !37}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3892, file: !3695, line: 40, baseType: !54, size: 64, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3892, file: !3695, line: 46, baseType: !3903, size: 64, offset: 128)
!3903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3896, line: 86, baseType: !3904)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3896, line: 85, baseType: !1199)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3892, file: !3695, line: 48, baseType: !3699, size: 64, offset: 192)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2845, file: !2389, line: 1112, baseType: !3699, size: 64, offset: 15488)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2845, file: !2389, line: 1113, baseType: !3699, size: 64, offset: 15552)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2845, file: !2389, line: 1115, baseType: !3699, size: 64, offset: 15616)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2845, file: !2389, line: 1116, baseType: !3694, size: 192, offset: 15680)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2845, file: !2389, line: 1117, baseType: !54, size: 64, offset: 15872)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2845, file: !2389, line: 1118, baseType: !50, size: 64, offset: 15936)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2845, file: !2389, line: 1119, baseType: !7, size: 32, offset: 16000)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2845, file: !2389, line: 1121, baseType: !1054, size: 64, offset: 16064)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2845, file: !2389, line: 1125, baseType: !3916, size: 64, offset: 16128)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2389, line: 43, flags: DIFlagFwdDecl)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2845, file: !2389, line: 1127, baseType: !587, size: 32, offset: 16192)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2845, file: !2389, line: 1128, baseType: !7, size: 32, offset: 16224)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2845, file: !2389, line: 1130, baseType: !3921, size: 128, offset: 16256)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3922, line: 37, size: 128, elements: !3923)
!3922 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3923 = !{!3924, !3925, !3926}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3921, file: !3922, line: 38, baseType: !37, size: 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3921, file: !3922, line: 39, baseType: !64, size: 32, offset: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3921, file: !3922, line: 40, baseType: !3927, size: 64, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3922, line: 24, flags: DIFlagFwdDecl)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2845, file: !2389, line: 1131, baseType: !3930, size: 256, offset: 16384)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3931, line: 12, size: 256, elements: !3932)
!3931 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3932 = !{!3933, !3934, !3935, !3936}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3930, file: !3931, line: 13, baseType: !507, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3930, file: !3931, line: 14, baseType: !54, size: 64, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3930, file: !3931, line: 15, baseType: !54, size: 64, offset: 128)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3930, file: !3931, line: 16, baseType: !451, size: 8, offset: 192)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2845, file: !2389, line: 1134, baseType: !652, size: 64, offset: 16640)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2845, file: !2389, line: 1135, baseType: !652, size: 64, offset: 16704)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2845, file: !2389, line: 1138, baseType: !74, size: 32, offset: 16768)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2845, file: !2389, line: 1141, baseType: !795, size: 32, offset: 16800)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2845, file: !2389, line: 1143, baseType: !3942, size: 64, offset: 16832)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2389, line: 735, size: 64, elements: !3943)
!3943 = !{!3944}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3942, file: !2389, line: 736, baseType: !3945, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2845, file: !2389, line: 1147, baseType: !3014, size: 128, offset: 16896)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2845, file: !2389, line: 1149, baseType: !2844, size: 64, offset: 17024)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2845, file: !2389, line: 1151, baseType: !3949, size: 64, offset: 17088)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2389, line: 1151, flags: DIFlagFwdDecl)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2845, file: !2389, line: 1188, baseType: !35, size: 64, offset: 17152)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2845, file: !2389, line: 1191, baseType: !3953, size: 64, offset: 17216)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2389, line: 44, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2845, file: !2389, line: 1194, baseType: !3956, size: 64, offset: 17280)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2389, line: 45, flags: DIFlagFwdDecl)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2845, file: !2389, line: 1197, baseType: !3959, size: 64, offset: 17344)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !3961, line: 155, size: 64, elements: !3962)
!3961 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!3962 = !{!3963}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !3960, file: !3961, line: 157, baseType: !54, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2845, file: !2389, line: 1199, baseType: !3965, size: 64, offset: 17408)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2678, line: 99, size: 128, elements: !3967)
!3967 = !{!3968, !3969, !3970}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3966, file: !2678, line: 100, baseType: !841, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3966, file: !2678, line: 101, baseType: !64, size: 32, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3966, file: !2678, line: 103, baseType: !41, size: 16, offset: 96)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2845, file: !2389, line: 1202, baseType: !3972, size: 64, offset: 17472)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2389, line: 48, flags: DIFlagFwdDecl)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2845, file: !2389, line: 1205, baseType: !54, size: 64, offset: 17536)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2845, file: !2389, line: 1206, baseType: !3976, size: 64, offset: 17600)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3695, line: 14, baseType: !3978)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3695, line: 12, size: 384, elements: !3979)
!3979 = !{!3980}
!3980 = !DIDerivedType(tag: DW_TAG_member, scope: !3978, file: !3695, line: 13, baseType: !3981, size: 384)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3978, file: !3695, line: 13, size: 384, elements: !3982)
!3982 = !{!3983, !3984, !3985, !3986}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3981, file: !3695, line: 13, baseType: !37, size: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3981, file: !3695, line: 13, baseType: !37, size: 32, offset: 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3981, file: !3695, line: 13, baseType: !37, size: 32, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3981, file: !3695, line: 13, baseType: !3987, size: 256, offset: 128)
!3987 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3988, line: 37, size: 256, elements: !3989)
!3988 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3989 = !{!3990, !3995, !4008, !4014, !4023, !4050, !4055}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3987, file: !3988, line: 42, baseType: !3991, size: 64)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3987, file: !3988, line: 39, size: 64, elements: !3992)
!3992 = !{!3993, !3994}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3991, file: !3988, line: 40, baseType: !3209, size: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3991, file: !3988, line: 41, baseType: !593, size: 32, offset: 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3987, file: !3988, line: 50, baseType: !3996, size: 192)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3987, file: !3988, line: 45, size: 192, elements: !3997)
!3997 = !{!3998, !4000, !4001, !4007}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3996, file: !3988, line: 46, baseType: !3999, size: 32)
!3999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !52, line: 95, baseType: !37)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3996, file: !3988, line: 47, baseType: !37, size: 32, offset: 32)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3996, file: !3988, line: 48, baseType: !4002, size: 64, offset: 64)
!4002 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3988, line: 11, baseType: !4003)
!4003 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3988, line: 8, size: 64, elements: !4004)
!4004 = !{!4005, !4006}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4003, file: !3988, line: 9, baseType: !37, size: 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4003, file: !3988, line: 10, baseType: !35, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3996, file: !3988, line: 49, baseType: !37, size: 32, offset: 128)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3987, file: !3988, line: 57, baseType: !4009, size: 128)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3987, file: !3988, line: 53, size: 128, elements: !4010)
!4010 = !{!4011, !4012, !4013}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4009, file: !3988, line: 54, baseType: !3209, size: 32)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4009, file: !3988, line: 55, baseType: !593, size: 32, offset: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4009, file: !3988, line: 56, baseType: !4002, size: 64, offset: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3987, file: !3988, line: 66, baseType: !4015, size: 256)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3987, file: !3988, line: 60, size: 256, elements: !4016)
!4016 = !{!4017, !4018, !4019, !4020, !4022}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4015, file: !3988, line: 61, baseType: !3209, size: 32)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4015, file: !3988, line: 62, baseType: !593, size: 32, offset: 32)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4015, file: !3988, line: 63, baseType: !37, size: 32, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4015, file: !3988, line: 64, baseType: !4021, size: 64, offset: 128)
!4021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !52, line: 94, baseType: !541)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4015, file: !3988, line: 65, baseType: !4021, size: 64, offset: 192)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3987, file: !3988, line: 105, baseType: !4024, size: 256)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3987, file: !3988, line: 69, size: 256, elements: !4025)
!4025 = !{!4026, !4027}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4024, file: !3988, line: 70, baseType: !35, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, scope: !4024, file: !3988, line: 79, baseType: !4028, size: 192, offset: 64)
!4028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4024, file: !3988, line: 79, size: 192, elements: !4029)
!4029 = !{!4030, !4031, !4032, !4039, !4044}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4028, file: !3988, line: 81, baseType: !37, size: 32)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4028, file: !3988, line: 86, baseType: !973, size: 16)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4028, file: !3988, line: 92, baseType: !4033, size: 192)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4028, file: !3988, line: 88, size: 192, elements: !4034)
!4034 = !{!4035, !4037, !4038}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4033, file: !3988, line: 89, baseType: !4036, size: 64)
!4036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 64, elements: !2998)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4033, file: !3988, line: 90, baseType: !35, size: 64, offset: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4033, file: !3988, line: 91, baseType: !35, size: 64, offset: 128)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4028, file: !3988, line: 97, baseType: !4040, size: 96)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4028, file: !3988, line: 94, size: 96, elements: !4041)
!4041 = !{!4042, !4043}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4040, file: !3988, line: 95, baseType: !4036, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4040, file: !3988, line: 96, baseType: !426, size: 32, offset: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4028, file: !3988, line: 103, baseType: !4045, size: 128)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4028, file: !3988, line: 99, size: 128, elements: !4046)
!4046 = !{!4047, !4048, !4049}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4045, file: !3988, line: 100, baseType: !54, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4045, file: !3988, line: 101, baseType: !426, size: 32, offset: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4045, file: !3988, line: 102, baseType: !426, size: 32, offset: 96)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3987, file: !3988, line: 111, baseType: !4051, size: 128)
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3987, file: !3988, line: 108, size: 128, elements: !4052)
!4052 = !{!4053, !4054}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4051, file: !3988, line: 109, baseType: !542, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4051, file: !3988, line: 110, baseType: !37, size: 32, offset: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3987, file: !3988, line: 118, baseType: !4056, size: 128)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3987, file: !3988, line: 114, size: 128, elements: !4057)
!4057 = !{!4058, !4059, !4060}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4056, file: !3988, line: 115, baseType: !35, size: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4056, file: !3988, line: 116, baseType: !37, size: 32, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4056, file: !3988, line: 117, baseType: !7, size: 32, offset: 96)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2845, file: !2389, line: 1208, baseType: !3779, size: 448, offset: 17664)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2845, file: !2389, line: 1215, baseType: !652, size: 64, offset: 18112)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2845, file: !2389, line: 1217, baseType: !652, size: 64, offset: 18176)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2845, file: !2389, line: 1219, baseType: !652, size: 64, offset: 18240)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2845, file: !2389, line: 1223, baseType: !4066, size: 64, offset: 18304)
!4066 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4067, line: 99, baseType: !4068)
!4067 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4067, line: 99, size: 64, elements: !4069)
!4069 = !{!4070}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4068, file: !4067, line: 99, baseType: !3079, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2845, file: !2389, line: 1225, baseType: !622, size: 32, offset: 18368)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2845, file: !2389, line: 1226, baseType: !37, size: 32, offset: 18400)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2845, file: !2389, line: 1227, baseType: !37, size: 32, offset: 18432)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2845, file: !2389, line: 1231, baseType: !3325, size: 64, offset: 18496)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2845, file: !2389, line: 1233, baseType: !112, size: 128, offset: 18560)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2845, file: !2389, line: 1240, baseType: !4077, size: 64, offset: 18688)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2389, line: 62, flags: DIFlagFwdDecl)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2845, file: !2389, line: 1242, baseType: !4080, size: 64, offset: 18752)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2389, line: 1242, flags: DIFlagFwdDecl)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2845, file: !2389, line: 1244, baseType: !112, size: 128, offset: 18816)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2845, file: !2389, line: 1245, baseType: !4084, size: 64, offset: 18944)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2389, line: 51, flags: DIFlagFwdDecl)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2845, file: !2389, line: 1246, baseType: !837, size: 256, offset: 19008)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2845, file: !2389, line: 1247, baseType: !7, size: 32, offset: 19264)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2845, file: !2389, line: 1250, baseType: !4089, size: 64, offset: 19328)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2389, line: 57, flags: DIFlagFwdDecl)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2845, file: !2389, line: 1251, baseType: !837, size: 256, offset: 19392)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2845, file: !2389, line: 1252, baseType: !112, size: 128, offset: 19648)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2845, file: !2389, line: 1259, baseType: !2176, size: 64, offset: 19776)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2845, file: !2389, line: 1260, baseType: !973, size: 16, offset: 19840)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2845, file: !2389, line: 1261, baseType: !973, size: 16, offset: 19856)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2845, file: !2389, line: 1314, baseType: !4097, size: 64, offset: 19904)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4099, line: 62, size: 256, align: 256, elements: !4100)
!4099 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4100 = !{!4101, !4102, !4103, !4104, !4105, !4106, !4107}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4098, file: !4099, line: 75, baseType: !426, size: 32)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4098, file: !4099, line: 90, baseType: !426, size: 32, offset: 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4098, file: !4099, line: 112, baseType: !653, size: 64, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4098, file: !4099, line: 132, baseType: !426, size: 32, offset: 128)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4098, file: !4099, line: 140, baseType: !426, size: 32, offset: 160)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4098, file: !4099, line: 149, baseType: !426, size: 32, offset: 192)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4098, file: !4099, line: 154, baseType: !4108, offset: 224)
!4108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, elements: !1400)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2845, file: !2389, line: 1315, baseType: !425, size: 32, offset: 19968)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2845, file: !2389, line: 1316, baseType: !425, size: 32, offset: 20000)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2845, file: !2389, line: 1321, baseType: !54, size: 64, offset: 20032)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2845, file: !2389, line: 1325, baseType: !37, size: 32, offset: 20096)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2845, file: !2389, line: 1326, baseType: !37, size: 32, offset: 20128)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2845, file: !2389, line: 1327, baseType: !37, size: 32, offset: 20160)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2845, file: !2389, line: 1328, baseType: !37, size: 32, offset: 20192)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2845, file: !2389, line: 1329, baseType: !1055, size: 128, align: 64, offset: 20224)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2845, file: !2389, line: 1332, baseType: !4118, size: 128, offset: 20352)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4119, line: 51, size: 128, elements: !4120)
!4119 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4120 = !{!4121, !4126, !4127}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4118, file: !4119, line: 60, baseType: !4122, size: 64)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4123, line: 7, size: 64, elements: !4124)
!4123 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4124 = !{!4125}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4122, file: !4123, line: 12, baseType: !3076, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4118, file: !4119, line: 63, baseType: !451, size: 8, offset: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4118, file: !4119, line: 70, baseType: !451, size: 8, offset: 72)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2845, file: !2389, line: 1335, baseType: !2387, size: 64, offset: 20480)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2845, file: !2389, line: 1337, baseType: !4130, size: 128, offset: 20544)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4119, line: 39, size: 128, elements: !4131)
!4131 = !{!4132, !4133, !4134}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4130, file: !4119, line: 40, baseType: !1919, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4130, file: !4119, line: 42, baseType: !426, size: 32, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4130, file: !4119, line: 43, baseType: !426, size: 32, offset: 96)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2845, file: !2389, line: 1340, baseType: !4136, size: 64, offset: 20672)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2389, line: 69, flags: DIFlagFwdDecl)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2845, file: !2389, line: 1351, baseType: !37, size: 32, offset: 20736)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2845, file: !2389, line: 1352, baseType: !37, size: 32, offset: 20768)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2845, file: !2389, line: 1354, baseType: !54, size: 64, offset: 20800)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2845, file: !2389, line: 1364, baseType: !652, size: 64, offset: 20864)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2845, file: !2389, line: 1365, baseType: !652, size: 64, offset: 20928)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2845, file: !2389, line: 1412, baseType: !54, size: 64, offset: 20992)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2845, file: !2389, line: 1453, baseType: !2673, size: 64, offset: 21056)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2845, file: !2389, line: 1457, baseType: !4146, size: 64, offset: 21120)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !272, line: 61, size: 576, elements: !4148)
!4148 = !{!4149, !4150, !4169, !4172, !4173, !4206, !4216}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4147, file: !272, line: 62, baseType: !271, size: 32)
!4150 = !DIDerivedType(tag: DW_TAG_member, scope: !4147, file: !272, line: 64, baseType: !4151, size: 192, offset: 64)
!4151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4147, file: !272, line: 64, size: 192, elements: !4152)
!4152 = !{!4153, !4164}
!4153 = !DIDerivedType(tag: DW_TAG_member, scope: !4151, file: !272, line: 65, baseType: !4154, size: 192)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4151, file: !272, line: 65, size: 192, elements: !4155)
!4155 = !{!4156, !4163}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4154, file: !272, line: 66, baseType: !4157, size: 128)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4158, line: 50, size: 128, elements: !4159)
!4158 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4159 = !{!4160, !4161, !4162}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4157, file: !4158, line: 52, baseType: !54, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4157, file: !4158, line: 54, baseType: !7, size: 32, offset: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4157, file: !4158, line: 55, baseType: !7, size: 32, offset: 96)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4154, file: !272, line: 67, baseType: !54, size: 64, offset: 128)
!4164 = !DIDerivedType(tag: DW_TAG_member, scope: !4151, file: !272, line: 70, baseType: !4165, size: 192)
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4151, file: !272, line: 70, size: 192, elements: !4166)
!4166 = !{!4167, !4168}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4165, file: !272, line: 71, baseType: !1055, size: 128, align: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4165, file: !272, line: 72, baseType: !54, size: 64, offset: 128)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4147, file: !272, line: 76, baseType: !4170, size: 64, offset: 256)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !272, line: 76, flags: DIFlagFwdDecl)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4147, file: !272, line: 77, baseType: !54, size: 64, offset: 320)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4147, file: !272, line: 79, baseType: !4174, size: 64, offset: 384)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4158, line: 25, size: 256, elements: !4176)
!4176 = !{!4177, !4183, !4187}
!4177 = !DIDerivedType(tag: DW_TAG_member, scope: !4175, file: !4158, line: 26, baseType: !4178, size: 128)
!4178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4175, file: !4158, line: 26, size: 128, elements: !4179)
!4179 = !{!4180, !4182}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4178, file: !4158, line: 27, baseType: !4181, size: 128)
!4181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 128, elements: !3267)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4178, file: !4158, line: 28, baseType: !4181, size: 128)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4175, file: !4158, line: 31, baseType: !4184, size: 64, offset: 128)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4186)
!4186 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4158, line: 23, flags: DIFlagFwdDecl)
!4187 = !DIDerivedType(tag: DW_TAG_member, scope: !4175, file: !4158, line: 33, baseType: !4188, size: 64, offset: 192)
!4188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4175, file: !4158, line: 33, size: 64, elements: !4189)
!4189 = !{!4190, !4196, !4201}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4188, file: !4158, line: 38, baseType: !4191, size: 64)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4188, file: !4158, line: 34, size: 64, elements: !4192)
!4192 = !{!4193, !4194, !4195}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4191, file: !4158, line: 35, baseType: !833, size: 32)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4191, file: !4158, line: 36, baseType: !98, size: 8, offset: 32)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4191, file: !4158, line: 37, baseType: !98, size: 8, offset: 40)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4188, file: !4158, line: 42, baseType: !4197, size: 16)
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4188, file: !4158, line: 39, size: 16, elements: !4198)
!4198 = !{!4199, !4200}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4197, file: !4158, line: 40, baseType: !98, size: 8)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4197, file: !4158, line: 41, baseType: !98, size: 8, offset: 8)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4188, file: !4158, line: 46, baseType: !4202, size: 16)
!4202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4188, file: !4158, line: 43, size: 16, elements: !4203)
!4203 = !{!4204, !4205}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4202, file: !4158, line: 44, baseType: !98, size: 8)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4202, file: !4158, line: 45, baseType: !98, size: 8, offset: 8)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4147, file: !272, line: 81, baseType: !4207, size: 64, offset: 448)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !272, line: 85, size: 384, elements: !4209)
!4209 = !{!4210, !4211, !4212, !4213, !4214, !4215}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4208, file: !272, line: 86, baseType: !4170, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4208, file: !272, line: 87, baseType: !54, size: 64, offset: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4208, file: !272, line: 88, baseType: !54, size: 64, offset: 128)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4208, file: !272, line: 89, baseType: !54, size: 64, offset: 192)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4208, file: !272, line: 90, baseType: !451, size: 8, offset: 256)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4208, file: !272, line: 92, baseType: !4207, size: 64, offset: 320)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4147, file: !272, line: 82, baseType: !7, size: 32, offset: 512)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2845, file: !2389, line: 1463, baseType: !4218, offset: 21184)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2389, line: 739, elements: !1123)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2845, file: !2389, line: 1470, baseType: !1055, size: 128, align: 64, offset: 21184)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2845, file: !2389, line: 1471, baseType: !1380, size: 32, offset: 21312)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2845, file: !2389, line: 1472, baseType: !37, size: 32, offset: 21344)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2845, file: !2389, line: 1474, baseType: !2844, size: 64, offset: 21376)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2845, file: !2389, line: 1475, baseType: !1077, size: 320, offset: 21440)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2845, file: !2389, line: 1478, baseType: !4225, size: 64, offset: 21760)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2314, line: 49, size: 512, elements: !4227)
!4227 = !{!4228, !4229, !4230, !4231, !4232, !4234, !4235, !4236, !4238}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4226, file: !2314, line: 50, baseType: !4225, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4226, file: !2314, line: 51, baseType: !35, size: 64, offset: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4226, file: !2314, line: 52, baseType: !54, size: 64, offset: 128)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4226, file: !2314, line: 53, baseType: !54, size: 64, offset: 192)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4226, file: !2314, line: 54, baseType: !4233, size: 64, offset: 256)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4226, file: !2314, line: 56, baseType: !7, size: 32, offset: 320)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4226, file: !2314, line: 58, baseType: !7, size: 32, offset: 352)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4226, file: !2314, line: 59, baseType: !4237, size: 64, offset: 384)
!4237 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !40, line: 159, baseType: !652)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4226, file: !2314, line: 60, baseType: !459, size: 64, offset: 448)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2845, file: !2389, line: 1482, baseType: !1380, size: 32, offset: 21824)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2845, file: !2389, line: 1489, baseType: !35, size: 64, offset: 21888)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2845, file: !2389, line: 1504, baseType: !35, size: 64, offset: 21952)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2845, file: !2389, line: 1505, baseType: !653, size: 64, offset: 22016)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2845, file: !2389, line: 1506, baseType: !652, size: 64, offset: 22080)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2845, file: !2389, line: 1507, baseType: !653, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2845, file: !2389, line: 1508, baseType: !653, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2845, file: !2389, line: 1509, baseType: !653, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2845, file: !2389, line: 1510, baseType: !1055, size: 128, align: 64, offset: 22208)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2845, file: !2389, line: 1511, baseType: !37, size: 32, offset: 22336)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2845, file: !2389, line: 1515, baseType: !4250, size: 64, offset: 22400)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1338, line: 56, size: 64, elements: !4251)
!4251 = !{!4252}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4250, file: !1338, line: 57, baseType: !1341, size: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2845, file: !2389, line: 1518, baseType: !4250, size: 64, offset: 22464)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2845, file: !2389, line: 1528, baseType: !1055, size: 128, align: 64, offset: 22528)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2845, file: !2389, line: 1552, baseType: !4256, size: 35328, offset: 23040)
!4256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4257, line: 430, size: 35328, elements: !4258)
!4257 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4258 = !{!4259, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4288, !4289, !4290, !4291, !4292, !4293, !4296, !4297, !4298, !4299}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4256, file: !4257, line: 432, baseType: !4260, size: 192)
!4260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4261, size: 192, elements: !508)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4262, line: 16, size: 64, elements: !4263)
!4262 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4263 = !{!4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4261, file: !4262, line: 17, baseType: !108, size: 16)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4261, file: !4262, line: 18, baseType: !108, size: 16, offset: 16)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4261, file: !4262, line: 19, baseType: !108, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4261, file: !4262, line: 19, baseType: !108, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4261, file: !4262, line: 19, baseType: !108, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4261, file: !4262, line: 19, baseType: !108, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4261, file: !4262, line: 19, baseType: !108, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4261, file: !4262, line: 20, baseType: !108, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4261, file: !4262, line: 20, baseType: !108, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4261, file: !4262, line: 20, baseType: !108, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4261, file: !4262, line: 20, baseType: !108, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4261, file: !4262, line: 20, baseType: !108, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4261, file: !4262, line: 20, baseType: !108, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4256, file: !4257, line: 436, baseType: !54, size: 64, offset: 192)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4256, file: !4257, line: 440, baseType: !41, size: 16, offset: 256)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4256, file: !4257, line: 441, baseType: !41, size: 16, offset: 272)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4256, file: !4257, line: 442, baseType: !41, size: 16, offset: 288)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4256, file: !4257, line: 443, baseType: !41, size: 16, offset: 304)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4256, file: !4257, line: 447, baseType: !54, size: 64, offset: 320)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4256, file: !4257, line: 448, baseType: !54, size: 64, offset: 384)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4256, file: !4257, line: 459, baseType: !4285, size: 256, offset: 448)
!4285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4286, size: 256, elements: !1065)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4257, line: 428, flags: DIFlagFwdDecl)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4256, file: !4257, line: 461, baseType: !54, size: 64, offset: 704)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4256, file: !4257, line: 463, baseType: !54, size: 64, offset: 768)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4256, file: !4257, line: 465, baseType: !54, size: 64, offset: 832)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4256, file: !4257, line: 466, baseType: !54, size: 64, offset: 896)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4256, file: !4257, line: 467, baseType: !54, size: 64, offset: 960)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4256, file: !4257, line: 473, baseType: !4294, size: 64, offset: 1024)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4257, line: 10, flags: DIFlagFwdDecl)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4256, file: !4257, line: 480, baseType: !54, size: 64, offset: 1088)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4256, file: !4257, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4256, file: !4257, line: 491, baseType: !425, size: 32, offset: 1184)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4256, file: !4257, line: 501, baseType: !4300, size: 33792, offset: 1536)
!4300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4301, line: 448, size: 33792, elements: !4302)
!4301 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4302 = !{!4303, !4304, !4305, !4463, !4464, !4470, !4471}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4300, file: !4301, line: 461, baseType: !7, size: 32)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4300, file: !4301, line: 468, baseType: !54, size: 64, offset: 64)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4300, file: !4301, line: 476, baseType: !4306, size: 64, offset: 128)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4301, line: 356, size: 33280, align: 512, elements: !4308)
!4308 = !{!4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4307, file: !4301, line: 358, baseType: !7, size: 32)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4307, file: !4301, line: 361, baseType: !7, size: 32, offset: 32)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4307, file: !4301, line: 364, baseType: !652, size: 64, offset: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4307, file: !4301, line: 367, baseType: !652, size: 64, offset: 128)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4307, file: !4301, line: 370, baseType: !652, size: 64, offset: 192)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4307, file: !4301, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4307, file: !4301, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4307, file: !4301, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4307, file: !4301, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4307, file: !4301, line: 397, baseType: !4319, size: 32768, offset: 512)
!4319 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4301, line: 348, size: 32768, elements: !4320)
!4320 = !{!4321, !4334, !4371, !4448, !4461}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4319, file: !4301, line: 349, baseType: !4322, size: 896)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4301, line: 12, size: 896, elements: !4323)
!4323 = !{!4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4333}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4322, file: !4301, line: 13, baseType: !425, size: 32)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4322, file: !4301, line: 14, baseType: !425, size: 32, offset: 32)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4322, file: !4301, line: 15, baseType: !425, size: 32, offset: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4322, file: !4301, line: 16, baseType: !425, size: 32, offset: 96)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4322, file: !4301, line: 17, baseType: !425, size: 32, offset: 128)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4322, file: !4301, line: 18, baseType: !425, size: 32, offset: 160)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4322, file: !4301, line: 19, baseType: !425, size: 32, offset: 192)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4322, file: !4301, line: 22, baseType: !4332, size: 640, offset: 224)
!4332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 640, elements: !411)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4322, file: !4301, line: 25, baseType: !425, size: 32, offset: 864)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4319, file: !4301, line: 350, baseType: !4335, size: 4096, align: 128)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4301, line: 34, size: 4096, align: 128, elements: !4336)
!4336 = !{!4337, !4338, !4339, !4340, !4341, !4356, !4357, !4358, !4360, !4362, !4366}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4335, file: !4301, line: 35, baseType: !108, size: 16)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4335, file: !4301, line: 36, baseType: !108, size: 16, offset: 16)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4335, file: !4301, line: 37, baseType: !108, size: 16, offset: 32)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4335, file: !4301, line: 38, baseType: !108, size: 16, offset: 48)
!4341 = !DIDerivedType(tag: DW_TAG_member, scope: !4335, file: !4301, line: 39, baseType: !4342, size: 128, offset: 64)
!4342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4335, file: !4301, line: 39, size: 128, elements: !4343)
!4343 = !{!4344, !4349}
!4344 = !DIDerivedType(tag: DW_TAG_member, scope: !4342, file: !4301, line: 40, baseType: !4345, size: 128)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4342, file: !4301, line: 40, size: 128, elements: !4346)
!4346 = !{!4347, !4348}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4345, file: !4301, line: 41, baseType: !652, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4345, file: !4301, line: 42, baseType: !652, size: 64, offset: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, scope: !4342, file: !4301, line: 44, baseType: !4350, size: 128)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4342, file: !4301, line: 44, size: 128, elements: !4351)
!4351 = !{!4352, !4353, !4354, !4355}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4350, file: !4301, line: 45, baseType: !425, size: 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4350, file: !4301, line: 46, baseType: !425, size: 32, offset: 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4350, file: !4301, line: 47, baseType: !425, size: 32, offset: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4350, file: !4301, line: 48, baseType: !425, size: 32, offset: 96)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4335, file: !4301, line: 51, baseType: !425, size: 32, offset: 192)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4335, file: !4301, line: 52, baseType: !425, size: 32, offset: 224)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4335, file: !4301, line: 55, baseType: !4359, size: 1024, offset: 256)
!4359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 1024, elements: !661)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4335, file: !4301, line: 58, baseType: !4361, size: 2048, offset: 1280)
!4361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 2048, elements: !512)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4335, file: !4301, line: 60, baseType: !4363, size: 384, offset: 3328)
!4363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 384, elements: !4364)
!4364 = !{!4365}
!4365 = !DISubrange(count: 12)
!4366 = !DIDerivedType(tag: DW_TAG_member, scope: !4335, file: !4301, line: 62, baseType: !4367, size: 384, offset: 3712)
!4367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4335, file: !4301, line: 62, size: 384, elements: !4368)
!4368 = !{!4369, !4370}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4367, file: !4301, line: 63, baseType: !4363, size: 384)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4367, file: !4301, line: 64, baseType: !4363, size: 384)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4319, file: !4301, line: 351, baseType: !4372, size: 1088)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4301, line: 79, size: 1088, elements: !4373)
!4373 = !{!4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4447}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4372, file: !4301, line: 80, baseType: !425, size: 32)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4372, file: !4301, line: 81, baseType: !425, size: 32, offset: 32)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4372, file: !4301, line: 82, baseType: !425, size: 32, offset: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4372, file: !4301, line: 83, baseType: !425, size: 32, offset: 96)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4372, file: !4301, line: 84, baseType: !425, size: 32, offset: 128)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4372, file: !4301, line: 85, baseType: !425, size: 32, offset: 160)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4372, file: !4301, line: 86, baseType: !425, size: 32, offset: 192)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4372, file: !4301, line: 88, baseType: !4332, size: 640, offset: 224)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4372, file: !4301, line: 89, baseType: !98, size: 8, offset: 864)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4372, file: !4301, line: 90, baseType: !98, size: 8, offset: 872)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4372, file: !4301, line: 91, baseType: !98, size: 8, offset: 880)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4372, file: !4301, line: 92, baseType: !98, size: 8, offset: 888)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4372, file: !4301, line: 93, baseType: !98, size: 8, offset: 896)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4372, file: !4301, line: 94, baseType: !98, size: 8, offset: 904)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4372, file: !4301, line: 95, baseType: !4389, size: 64, offset: 960)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4391, line: 11, size: 128, elements: !4392)
!4391 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4392 = !{!4393, !4394}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4390, file: !4391, line: 12, baseType: !542, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4390, file: !4391, line: 13, baseType: !4395, size: 64, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4397, line: 103, size: 1344, elements: !4398)
!4397 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4398 = !{!4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4427, !4428, !4429}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4396, file: !4397, line: 109, baseType: !54, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4396, file: !4397, line: 110, baseType: !54, size: 64, offset: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4396, file: !4397, line: 111, baseType: !54, size: 64, offset: 128)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4396, file: !4397, line: 112, baseType: !54, size: 64, offset: 192)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4396, file: !4397, line: 113, baseType: !54, size: 64, offset: 256)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4396, file: !4397, line: 114, baseType: !54, size: 64, offset: 320)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4396, file: !4397, line: 117, baseType: !54, size: 64, offset: 384)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4396, file: !4397, line: 118, baseType: !54, size: 64, offset: 448)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4396, file: !4397, line: 119, baseType: !54, size: 64, offset: 512)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4396, file: !4397, line: 120, baseType: !54, size: 64, offset: 576)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4396, file: !4397, line: 121, baseType: !54, size: 64, offset: 640)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4396, file: !4397, line: 122, baseType: !54, size: 64, offset: 704)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4396, file: !4397, line: 123, baseType: !54, size: 64, offset: 768)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4396, file: !4397, line: 124, baseType: !54, size: 64, offset: 832)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4396, file: !4397, line: 125, baseType: !54, size: 64, offset: 896)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4396, file: !4397, line: 139, baseType: !54, size: 64, offset: 960)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4396, file: !4397, line: 142, baseType: !54, size: 64, offset: 1024)
!4416 = !DIDerivedType(tag: DW_TAG_member, scope: !4396, file: !4397, line: 144, baseType: !4417, size: 64, offset: 1088)
!4417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4396, file: !4397, line: 144, size: 64, elements: !4418)
!4418 = !{!4419, !4420, !4421}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4417, file: !4397, line: 146, baseType: !108, size: 16)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4417, file: !4397, line: 148, baseType: !652, size: 64)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4417, file: !4397, line: 150, baseType: !4422, size: 64)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4397, line: 59, size: 64, elements: !4423)
!4423 = !{!4424, !4425, !4426}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4422, file: !4397, line: 61, baseType: !652, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4422, file: !4397, line: 63, baseType: !652, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4422, file: !4397, line: 65, baseType: !652, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4396, file: !4397, line: 153, baseType: !54, size: 64, offset: 1152)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4396, file: !4397, line: 154, baseType: !54, size: 64, offset: 1216)
!4429 = !DIDerivedType(tag: DW_TAG_member, scope: !4396, file: !4397, line: 156, baseType: !4430, size: 64, offset: 1280)
!4430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4396, file: !4397, line: 156, size: 64, elements: !4431)
!4431 = !{!4432, !4433, !4434}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4430, file: !4397, line: 158, baseType: !108, size: 16)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4430, file: !4397, line: 160, baseType: !652, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4430, file: !4397, line: 162, baseType: !4435, size: 64)
!4435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4397, line: 69, size: 64, elements: !4436)
!4436 = !{!4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4435, file: !4397, line: 71, baseType: !652, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4435, file: !4397, line: 73, baseType: !652, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4435, file: !4397, line: 75, baseType: !652, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4435, file: !4397, line: 77, baseType: !652, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4435, file: !4397, line: 80, baseType: !652, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4435, file: !4397, line: 83, baseType: !652, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4435, file: !4397, line: 86, baseType: !652, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4435, file: !4397, line: 88, baseType: !652, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4435, file: !4397, line: 93, baseType: !652, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4435, file: !4397, line: 100, baseType: !652, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4372, file: !4301, line: 96, baseType: !425, size: 32, offset: 1024)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4319, file: !4301, line: 352, baseType: !4449, size: 4608, align: 512)
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4301, line: 333, size: 4608, align: 512, elements: !4450)
!4450 = !{!4451, !4452, !4459}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4449, file: !4301, line: 334, baseType: !4335, size: 4096, align: 128)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4449, file: !4301, line: 335, baseType: !4453, size: 512, offset: 4096)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4301, line: 312, size: 512, elements: !4454)
!4454 = !{!4455, !4456, !4457}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4453, file: !4301, line: 313, baseType: !652, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4453, file: !4301, line: 314, baseType: !652, size: 64, offset: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4453, file: !4301, line: 315, baseType: !4458, size: 384, offset: 128)
!4458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 384, elements: !1493)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4449, file: !4301, line: 336, baseType: !4460, offset: 4608)
!4460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, elements: !1400)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4319, file: !4301, line: 353, baseType: !4462, size: 32768)
!4462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 32768, elements: !3472)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4300, file: !4301, line: 484, baseType: !4306, size: 64, offset: 192)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4300, file: !4301, line: 491, baseType: !4465, size: 128, offset: 256)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4301, line: 404, size: 128, elements: !4466)
!4466 = !{!4467, !4468, !4469}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4465, file: !4301, line: 424, baseType: !652, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4465, file: !4301, line: 432, baseType: !7, size: 32, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4465, file: !4301, line: 440, baseType: !7, size: 32, offset: 96)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4300, file: !4301, line: 498, baseType: !4465, size: 128, offset: 384)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4300, file: !4301, line: 508, baseType: !4307, size: 33280, align: 512, offset: 512)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2827, file: !2828, line: 16, baseType: !69, size: 192, offset: 512)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2827, file: !2828, line: 17, baseType: !64, size: 32, offset: 704)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !731, file: !135, line: 1240, baseType: !35, size: 64, offset: 6912)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !731, file: !135, line: 1243, baseType: !425, size: 32, offset: 6976)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !731, file: !135, line: 1245, baseType: !1464, size: 64, offset: 7040)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !731, file: !135, line: 1246, baseType: !1464, size: 64, offset: 7104)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !731, file: !135, line: 1248, baseType: !426, size: 32, offset: 7168)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !731, file: !135, line: 1249, baseType: !4480, size: 64, offset: 7232)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !135, line: 634, flags: DIFlagFwdDecl)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !731, file: !135, line: 1252, baseType: !3825, size: 256, offset: 7296)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !731, file: !135, line: 1253, baseType: !4484, size: 128, offset: 7552)
!4484 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4485, line: 21, baseType: !4486)
!4485 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4485, line: 19, size: 128, elements: !4487)
!4487 = !{!4488}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4486, file: !4485, line: 20, baseType: !4489, size: 128)
!4489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, elements: !3267)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !731, file: !135, line: 1255, baseType: !7, size: 32, offset: 7680)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !731, file: !135, line: 1261, baseType: !837, size: 256, offset: 7744)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !731, file: !135, line: 1267, baseType: !31, size: 64, offset: 8000)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !731, file: !135, line: 1269, baseType: !677, size: 64, offset: 8064)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !731, file: !135, line: 1271, baseType: !4495, size: 448, offset: 8128)
!4495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2506, line: 63, size: 448, elements: !4496)
!4496 = !{!4497, !4502, !4503, !4504, !4505, !4506, !4507}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4495, file: !2506, line: 64, baseType: !4498, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!54, !4501, !2504}
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4495, file: !2506, line: 66, baseType: !4498, size: 64, offset: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4495, file: !2506, line: 69, baseType: !542, size: 64, offset: 128)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4495, file: !2506, line: 70, baseType: !37, size: 32, offset: 192)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4495, file: !2506, line: 71, baseType: !7, size: 32, offset: 224)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4495, file: !2506, line: 74, baseType: !112, size: 128, offset: 256)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4495, file: !2506, line: 85, baseType: !4508, size: 64, offset: 384)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !731, file: !135, line: 1274, baseType: !841, size: 64, offset: 8576)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !731, file: !135, line: 1280, baseType: !841, size: 64, offset: 8640)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !731, file: !135, line: 1283, baseType: !37, size: 32, offset: 8704)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !731, file: !135, line: 1286, baseType: !2438, size: 32, offset: 8736)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !731, file: !135, line: 1289, baseType: !1156, size: 64, offset: 8768)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !731, file: !135, line: 1290, baseType: !1204, size: 64, offset: 8832)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !731, file: !135, line: 1297, baseType: !1587, size: 64, offset: 8896)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !731, file: !135, line: 1304, baseType: !4517, size: 64, offset: 8960)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4518, line: 49, size: 64, elements: !4519)
!4518 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4519 = !{!4520}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4517, file: !4518, line: 50, baseType: !4521, size: 64)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4518, line: 41, size: 512, align: 512, elements: !4523)
!4523 = !{!4524, !4525, !4530}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4522, file: !4518, line: 43, baseType: !74, size: 32)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4522, file: !4518, line: 45, baseType: !4526, size: 192, offset: 64)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4518, line: 29, size: 192, elements: !4527)
!4527 = !{!4528, !4529}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4526, file: !4518, line: 30, baseType: !112, size: 128)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4526, file: !4518, line: 32, baseType: !542, size: 64, offset: 128)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4522, file: !4518, line: 46, baseType: !542, size: 64, offset: 256)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !731, file: !135, line: 1305, baseType: !4517, size: 64, offset: 9024)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !731, file: !135, line: 1306, baseType: !1055, size: 128, align: 64, offset: 9088)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !731, file: !135, line: 1307, baseType: !1095, size: 256, offset: 9216)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !731, file: !135, line: 1309, baseType: !837, size: 256, offset: 9472)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !731, file: !135, line: 1314, baseType: !37, size: 32, offset: 9728)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !731, file: !135, line: 1317, baseType: !74, size: 32, align: 512, offset: 10240)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !731, file: !135, line: 1318, baseType: !112, size: 128, offset: 10304)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !731, file: !135, line: 1320, baseType: !74, size: 32, offset: 10432)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !731, file: !135, line: 1321, baseType: !112, size: 128, offset: 10496)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !725, file: !726, line: 73, baseType: !37, size: 32, offset: 128)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !725, file: !726, line: 74, baseType: !4542, size: 64, offset: 192)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1424, line: 42, flags: DIFlagFwdDecl)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !679, file: !618, line: 141, baseType: !4546, size: 64, offset: 704)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!37, !2566, !451}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !679, file: !618, line: 142, baseType: !4550, size: 64, offset: 768)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!616, !616, !4553}
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !582)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !617, file: !618, line: 96, baseType: !730, size: 64, offset: 832)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !617, file: !618, line: 97, baseType: !54, size: 64, offset: 896)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !617, file: !618, line: 98, baseType: !35, size: 64, offset: 960)
!4558 = !DIDerivedType(tag: DW_TAG_member, scope: !617, file: !618, line: 100, baseType: !4559, size: 128, offset: 1024)
!4559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !617, file: !618, line: 100, size: 128, elements: !4560)
!4560 = !{!4561, !4562}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4559, file: !618, line: 101, baseType: !112, size: 128)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4559, file: !618, line: 102, baseType: !4563, size: 64)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !617, file: !618, line: 104, baseType: !112, size: 128, offset: 1152)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !617, file: !618, line: 105, baseType: !112, size: 128, offset: 1280)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !617, file: !618, line: 113, baseType: !4567, size: 128, offset: 1408)
!4567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !617, file: !618, line: 109, size: 128, elements: !4568)
!4568 = !{!4569, !4570, !4571}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4567, file: !618, line: 110, baseType: !1081, size: 128)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4567, file: !618, line: 111, baseType: !632, size: 128)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4567, file: !618, line: 112, baseType: !1055, size: 128, align: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !610, file: !135, line: 1968, baseType: !4573, size: 64, offset: 64)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DISubroutineType(types: !4575)
!4575 = !{!31, !616, !581, !4576}
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4578, line: 10, size: 128, elements: !4579)
!4578 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4579 = !{!4580, !4581}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4577, file: !4578, line: 11, baseType: !880, size: 64)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4577, file: !4578, line: 12, baseType: !35, size: 64, offset: 64)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !610, file: !135, line: 1969, baseType: !4583, size: 64, offset: 128)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!37, !4542, !581, !37}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !610, file: !135, line: 1970, baseType: !4587, size: 64, offset: 192)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!604, !581, !37, !451}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !610, file: !135, line: 1972, baseType: !4591, size: 64, offset: 256)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!37, !616, !507, !37}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !610, file: !135, line: 1974, baseType: !4595, size: 64, offset: 320)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!37, !4542, !581, !616, !39, !451}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !610, file: !135, line: 1976, baseType: !4599, size: 64, offset: 384)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!37, !616, !581, !616}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !610, file: !135, line: 1977, baseType: !4603, size: 64, offset: 448)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!37, !581, !616}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !610, file: !135, line: 1978, baseType: !4607, size: 64, offset: 512)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!37, !4542, !581, !616, !31}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !610, file: !135, line: 1980, baseType: !4611, size: 64, offset: 576)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!37, !4542, !581, !616, !39}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !610, file: !135, line: 1982, baseType: !4603, size: 64, offset: 640)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !610, file: !135, line: 1983, baseType: !4616, size: 64, offset: 704)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!37, !4542, !581, !616, !39, !735}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !610, file: !135, line: 1985, baseType: !4620, size: 64, offset: 768)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!37, !4542, !581, !616, !581, !616, !7}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !610, file: !135, line: 1987, baseType: !4624, size: 64, offset: 832)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!37, !4542, !616, !4627}
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !135, line: 226, size: 640, elements: !4629)
!4629 = !{!4630, !4631, !4632, !4642, !4651, !4652, !4657, !4658, !4659}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4628, file: !135, line: 227, baseType: !7, size: 32)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4628, file: !135, line: 228, baseType: !39, size: 16, offset: 32)
!4632 = !DIDerivedType(tag: DW_TAG_member, scope: !4628, file: !135, line: 241, baseType: !4633, size: 32, offset: 64)
!4633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4628, file: !135, line: 241, size: 32, elements: !4634)
!4634 = !{!4635, !4636}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4633, file: !135, line: 242, baseType: !587, size: 32)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4633, file: !135, line: 243, baseType: !4637, size: 32)
!4637 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4638, line: 16, baseType: !4639)
!4638 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4638, line: 14, size: 32, elements: !4640)
!4640 = !{!4641}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4639, file: !4638, line: 15, baseType: !592, size: 32)
!4642 = !DIDerivedType(tag: DW_TAG_member, scope: !4628, file: !135, line: 245, baseType: !4643, size: 32, offset: 96)
!4643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4628, file: !135, line: 245, size: 32, elements: !4644)
!4644 = !{!4645, !4646}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4643, file: !135, line: 246, baseType: !596, size: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4643, file: !135, line: 247, baseType: !4647, size: 32)
!4647 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4638, line: 20, baseType: !4648)
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4638, line: 18, size: 32, elements: !4649)
!4649 = !{!4650}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4648, file: !4638, line: 19, baseType: !600, size: 32)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4628, file: !135, line: 249, baseType: !56, size: 64, offset: 128)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4628, file: !135, line: 250, baseType: !4653, size: 128, offset: 192)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1465, line: 13, size: 128, elements: !4654)
!4654 = !{!4655, !4656}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4653, file: !1465, line: 14, baseType: !1464, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4653, file: !1465, line: 15, baseType: !542, size: 64, offset: 64)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4628, file: !135, line: 251, baseType: !4653, size: 128, offset: 320)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4628, file: !135, line: 252, baseType: !4653, size: 128, offset: 448)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4628, file: !135, line: 259, baseType: !1756, size: 64, offset: 576)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !610, file: !135, line: 1988, baseType: !4661, size: 64, offset: 896)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!37, !4542, !2566, !4664, !425, !7}
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4666, line: 22, size: 1280, elements: !4667)
!4666 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4667 = !{!4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4665, file: !4666, line: 23, baseType: !425, size: 32)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4665, file: !4666, line: 24, baseType: !39, size: 16, offset: 32)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4665, file: !4666, line: 25, baseType: !7, size: 32, offset: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4665, file: !4666, line: 26, baseType: !1472, size: 32, offset: 96)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4665, file: !4666, line: 27, baseType: !652, size: 64, offset: 128)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4665, file: !4666, line: 28, baseType: !652, size: 64, offset: 192)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4665, file: !4666, line: 41, baseType: !652, size: 64, offset: 256)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4665, file: !4666, line: 42, baseType: !735, size: 32, offset: 320)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4665, file: !4666, line: 43, baseType: !735, size: 32, offset: 352)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4665, file: !4666, line: 44, baseType: !587, size: 32, offset: 384)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4665, file: !4666, line: 45, baseType: !596, size: 32, offset: 416)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4665, file: !4666, line: 46, baseType: !56, size: 64, offset: 448)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4665, file: !4666, line: 47, baseType: !4653, size: 128, offset: 512)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4665, file: !4666, line: 48, baseType: !4653, size: 128, offset: 640)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4665, file: !4666, line: 49, baseType: !4653, size: 128, offset: 768)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4665, file: !4666, line: 50, baseType: !4653, size: 128, offset: 896)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4665, file: !4666, line: 51, baseType: !652, size: 64, offset: 1024)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4665, file: !4666, line: 52, baseType: !652, size: 64, offset: 1088)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4665, file: !4666, line: 53, baseType: !425, size: 32, offset: 1152)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4665, file: !4666, line: 54, baseType: !425, size: 32, offset: 1184)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4665, file: !4666, line: 55, baseType: !652, size: 64, offset: 1216)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !610, file: !135, line: 1990, baseType: !4690, size: 64, offset: 960)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!539, !616, !507, !50}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !610, file: !135, line: 1991, baseType: !4694, size: 64, offset: 1024)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!37, !581, !4697, !652, !652}
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !135, line: 55, flags: DIFlagFwdDecl)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !610, file: !135, line: 1993, baseType: !4700, size: 64, offset: 1088)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!37, !581, !37}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !610, file: !135, line: 1994, baseType: !4704, size: 64, offset: 1152)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!37, !581, !616, !1756, !7, !39}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !610, file: !135, line: 1997, baseType: !4708, size: 64, offset: 1216)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!37, !4542, !581, !1756, !39}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !610, file: !135, line: 1999, baseType: !4712, size: 64, offset: 1280)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!604, !4542, !616, !37}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !610, file: !135, line: 2001, baseType: !4716, size: 64, offset: 1344)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!37, !4542, !616, !604, !37}
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !610, file: !135, line: 2003, baseType: !4720, size: 64, offset: 1408)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!37, !4542, !616, !4723}
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !135, line: 76, flags: DIFlagFwdDecl)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !610, file: !135, line: 2005, baseType: !4726, size: 64, offset: 1472)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!37, !616, !4723}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !610, file: !135, line: 2006, baseType: !4730, size: 64, offset: 1536)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{!4733, !581}
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !135, line: 3192, size: 192, elements: !4735)
!4735 = !{!4736, !4737}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4734, file: !135, line: 3193, baseType: !3596, size: 128)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4734, file: !135, line: 3194, baseType: !425, size: 32, offset: 128)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !582, file: !135, line: 655, baseType: !730, size: 64, offset: 448)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !582, file: !135, line: 656, baseType: !577, size: 64, offset: 512)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !582, file: !135, line: 659, baseType: !35, size: 64, offset: 576)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !582, file: !135, line: 663, baseType: !54, size: 64, offset: 640)
!4742 = !DIDerivedType(tag: DW_TAG_member, scope: !582, file: !135, line: 671, baseType: !4743, size: 32, offset: 704)
!4743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !582, file: !135, line: 671, size: 32, elements: !4744)
!4744 = !{!4745, !4747}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4743, file: !135, line: 672, baseType: !4746, size: 32)
!4746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4743, file: !135, line: 673, baseType: !7, size: 32)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !582, file: !135, line: 675, baseType: !735, size: 32, offset: 736)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !582, file: !135, line: 676, baseType: !56, size: 64, offset: 768)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !582, file: !135, line: 677, baseType: !4653, size: 128, offset: 832)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !582, file: !135, line: 678, baseType: !4653, size: 128, offset: 960)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !582, file: !135, line: 679, baseType: !4653, size: 128, offset: 1088)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !582, file: !135, line: 680, baseType: !74, size: 32, offset: 1216)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !582, file: !135, line: 681, baseType: !41, size: 16, offset: 1248)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !582, file: !135, line: 682, baseType: !98, size: 8, offset: 1264)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !582, file: !135, line: 683, baseType: !98, size: 8, offset: 1272)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !582, file: !135, line: 684, baseType: !2639, size: 64, offset: 1280)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !582, file: !135, line: 691, baseType: !54, size: 64, offset: 1344)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !582, file: !135, line: 692, baseType: !1448, size: 320, offset: 1408)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !582, file: !135, line: 694, baseType: !54, size: 64, offset: 1728)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !582, file: !135, line: 695, baseType: !54, size: 64, offset: 1792)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !582, file: !135, line: 697, baseType: !1081, size: 128, offset: 1856)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !582, file: !135, line: 698, baseType: !112, size: 128, offset: 1984)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !582, file: !135, line: 707, baseType: !112, size: 128, offset: 2112)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !582, file: !135, line: 708, baseType: !112, size: 128, offset: 2240)
!4766 = !DIDerivedType(tag: DW_TAG_member, scope: !582, file: !135, line: 709, baseType: !4767, size: 128, offset: 2368)
!4767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !582, file: !135, line: 709, size: 128, elements: !4768)
!4768 = !{!4769, !4770}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4767, file: !135, line: 710, baseType: !1204, size: 64)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4767, file: !135, line: 711, baseType: !1055, size: 128, align: 64)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !582, file: !135, line: 713, baseType: !843, size: 64, offset: 2496)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !582, file: !135, line: 714, baseType: !843, size: 64, offset: 2560)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !582, file: !135, line: 715, baseType: !64, size: 32, offset: 2624)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !582, file: !135, line: 716, baseType: !64, size: 32, offset: 2656)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !582, file: !135, line: 717, baseType: !64, size: 32, offset: 2688)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !582, file: !135, line: 719, baseType: !64, size: 32, offset: 2720)
!4777 = !DIDerivedType(tag: DW_TAG_member, scope: !582, file: !135, line: 721, baseType: !4778, size: 64, offset: 2752)
!4778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !582, file: !135, line: 721, size: 64, elements: !4779)
!4779 = !{!4780, !4781}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4778, file: !135, line: 722, baseType: !1747, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4778, file: !135, line: 723, baseType: !1227, size: 64)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !582, file: !135, line: 725, baseType: !4783, size: 64, offset: 2816)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !135, line: 725, flags: DIFlagFwdDecl)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !582, file: !135, line: 726, baseType: !578, size: 1536, align: 64, offset: 2880)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !582, file: !135, line: 727, baseType: !112, size: 128, offset: 4416)
!4787 = !DIDerivedType(tag: DW_TAG_member, scope: !582, file: !135, line: 728, baseType: !4788, size: 64, offset: 4544)
!4788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !582, file: !135, line: 728, size: 64, elements: !4789)
!4789 = !{!4790, !4791, !4794, !4795}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4788, file: !135, line: 729, baseType: !2387, size: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4788, file: !135, line: 730, baseType: !4792, size: 64)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !135, line: 730, flags: DIFlagFwdDecl)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4788, file: !135, line: 731, baseType: !507, size: 64)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4788, file: !135, line: 732, baseType: !7, size: 32)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !582, file: !135, line: 735, baseType: !426, size: 32, offset: 4608)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !582, file: !135, line: 738, baseType: !426, size: 32, offset: 4640)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !582, file: !135, line: 739, baseType: !4480, size: 64, offset: 4672)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !582, file: !135, line: 750, baseType: !35, size: 64, offset: 4736)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !578, file: !135, line: 474, baseType: !3596, size: 128, offset: 64)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !578, file: !135, line: 475, baseType: !1448, size: 320, offset: 192)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !578, file: !135, line: 476, baseType: !2194, size: 32, offset: 512)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !578, file: !135, line: 477, baseType: !64, size: 32, offset: 544)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !578, file: !135, line: 482, baseType: !3014, size: 128, offset: 576)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !578, file: !135, line: 483, baseType: !54, size: 64, offset: 704)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !578, file: !135, line: 484, baseType: !54, size: 64, offset: 768)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !578, file: !135, line: 485, baseType: !4808, size: 64, offset: 832)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4810)
!4810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !135, line: 404, size: 1280, elements: !4811)
!4811 = !{!4812, !4816, !4820, !4824, !4828, !4844, !4848, !4852, !4856, !4860, !4864, !4868, !4869, !4873, !4877, !4881, !4886, !4890, !4942, !4943}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4810, file: !135, line: 405, baseType: !4813, size: 64)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!37, !1919, !1239}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4810, file: !135, line: 406, baseType: !4817, size: 64, offset: 64)
!4817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4818, size: 64)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!37, !1756, !1790}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4810, file: !135, line: 409, baseType: !4821, size: 64, offset: 128)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!37, !577, !1239}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4810, file: !135, line: 412, baseType: !4825, size: 64, offset: 192)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{!451, !577, !1790}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4810, file: !135, line: 414, baseType: !4829, size: 64, offset: 256)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{null, !4832}
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1787, line: 1276, size: 448, elements: !4834)
!4834 = !{!4835, !4836, !4837, !4839, !4840, !4841, !4842, !4843}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4833, file: !1787, line: 1277, baseType: !1756, size: 64)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4833, file: !1787, line: 1278, baseType: !577, size: 64, offset: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !4833, file: !1787, line: 1279, baseType: !4838, size: 64, offset: 128)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !4833, file: !1787, line: 1281, baseType: !54, size: 64, offset: 192)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !4833, file: !1787, line: 1282, baseType: !7, size: 32, offset: 256)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !4833, file: !1787, line: 1283, baseType: !7, size: 32, offset: 288)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !4833, file: !1787, line: 1284, baseType: !451, size: 8, offset: 320)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !4833, file: !1787, line: 1285, baseType: !54, size: 64, offset: 384)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4810, file: !135, line: 416, baseType: !4845, size: 64, offset: 320)
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!37, !1756, !577, !56, !7, !4233, !2403}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4810, file: !135, line: 419, baseType: !4849, size: 64, offset: 384)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!37, !1756, !577, !56, !7, !7, !1919, !35}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4810, file: !135, line: 424, baseType: !4853, size: 64, offset: 448)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!2670, !577, !2670}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4810, file: !135, line: 425, baseType: !4857, size: 64, offset: 512)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{null, !1790, !50, !50}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4810, file: !135, line: 426, baseType: !4861, size: 64, offset: 576)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!451, !1790, !2194}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4810, file: !135, line: 427, baseType: !4865, size: 64, offset: 640)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{null, !1790}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4810, file: !135, line: 428, baseType: !1766, size: 64, offset: 704)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4810, file: !135, line: 433, baseType: !4870, size: 64, offset: 768)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{!37, !577, !1790, !1790, !240}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4810, file: !135, line: 435, baseType: !4874, size: 64, offset: 832)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{!37, !1790}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4810, file: !135, line: 436, baseType: !4878, size: 64, offset: 896)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!451, !1790, !50, !50}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4810, file: !135, line: 438, baseType: !4882, size: 64, offset: 960)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{null, !1790, !4885, !4885}
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4810, file: !135, line: 439, baseType: !4887, size: 64, offset: 1024)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{!37, !577, !1919}
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4810, file: !135, line: 442, baseType: !4891, size: 64, offset: 1088)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{!37, !4894, !1756, !4941}
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !3961, line: 282, size: 2176, elements: !4896)
!4896 = !{!4897, !4898, !4899, !4900, !4901, !4902, !4903, !4905, !4912, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4895, file: !3961, line: 283, baseType: !1886, size: 128)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4895, file: !3961, line: 284, baseType: !54, size: 64, offset: 128)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4895, file: !3961, line: 285, baseType: !973, size: 16, offset: 192)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4895, file: !3961, line: 286, baseType: !3120, size: 320, offset: 256)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4895, file: !3961, line: 287, baseType: !888, size: 8, offset: 576)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4895, file: !3961, line: 288, baseType: !7, size: 32, offset: 608)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !4895, file: !3961, line: 289, baseType: !4904, size: 64, offset: 640)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !4895, file: !3961, line: 290, baseType: !4906, size: 64, offset: 704)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !3961, line: 250, size: 64, elements: !4908)
!4908 = !{!4909, !4910, !4911}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4907, file: !3961, line: 251, baseType: !74, size: 32)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4907, file: !3961, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4907, file: !3961, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !4895, file: !3961, line: 291, baseType: !4913, size: 128, offset: 768)
!4913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !3961, line: 274, size: 128, elements: !4914)
!4914 = !{!4915, !4916}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4913, file: !3961, line: 275, baseType: !4907, size: 64)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4913, file: !3961, line: 276, baseType: !4907, size: 64, offset: 64)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !4895, file: !3961, line: 292, baseType: !7, size: 32, offset: 896)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !4895, file: !3961, line: 293, baseType: !7, size: 32, offset: 928)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4895, file: !3961, line: 294, baseType: !7, size: 32, offset: 960)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !4895, file: !3961, line: 295, baseType: !7, size: 32, offset: 992)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !4895, file: !3961, line: 296, baseType: !7, size: 32, offset: 1024)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !4895, file: !3961, line: 297, baseType: !7, size: 32, offset: 1056)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !4895, file: !3961, line: 298, baseType: !909, size: 64, offset: 1088)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !4895, file: !3961, line: 299, baseType: !4925, size: 64, offset: 1152)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !3961, line: 269, size: 96, elements: !4927)
!4927 = !{!4928, !4929}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4926, file: !3961, line: 270, baseType: !4907, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4926, file: !3961, line: 271, baseType: !7, size: 32, offset: 64)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !4895, file: !3961, line: 300, baseType: !1695, size: 64, offset: 1216)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !4895, file: !3961, line: 301, baseType: !2665, size: 64, offset: 1280)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !4895, file: !3961, line: 302, baseType: !1756, size: 64, offset: 1344)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !4895, file: !3961, line: 303, baseType: !7, size: 32, offset: 1408)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !4895, file: !3961, line: 304, baseType: !786, size: 256, offset: 1472)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4895, file: !3961, line: 305, baseType: !74, size: 32, offset: 1728)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !4895, file: !3961, line: 318, baseType: !74, size: 32, offset: 1760)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !4895, file: !3961, line: 322, baseType: !1095, size: 256, offset: 1792)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !4895, file: !3961, line: 323, baseType: !4913, size: 128, offset: 2048)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !4895, file: !3961, line: 324, baseType: !4940, offset: 2176)
!4940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3120, elements: !1400)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4810, file: !135, line: 444, baseType: !2395, size: 64, offset: 1152)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4810, file: !135, line: 445, baseType: !4944, size: 64, offset: 1216)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{!37, !1769, !2312}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !578, file: !135, line: 486, baseType: !54, size: 64, offset: 896)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !578, file: !135, line: 487, baseType: !1448, size: 320, offset: 960)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !578, file: !135, line: 488, baseType: !2438, size: 32, offset: 1280)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !578, file: !135, line: 489, baseType: !74, size: 32, offset: 1312)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !578, file: !135, line: 490, baseType: !112, size: 128, offset: 1344)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !578, file: !135, line: 491, baseType: !35, size: 64, offset: 1472)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !568, file: !533, line: 180, baseType: !4954, size: 64, offset: 320)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{!539, !1756, !472, !567, !507, !56, !50}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !568, file: !533, line: 182, baseType: !4954, size: 64, offset: 384)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !568, file: !533, line: 184, baseType: !4959, size: 64, offset: 448)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{!37, !1756, !472, !567, !1933}
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !556, file: !533, line: 90, baseType: !4963, size: 64, offset: 192)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !556, file: !533, line: 91, baseType: !4965, size: 64, offset: 256)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !523, file: !467, line: 120, baseType: !4967, size: 64, offset: 192)
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!4970, !490}
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4972)
!4972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !13, line: 39, size: 384, elements: !4973)
!4973 = !{!4974, !4975, !4979, !4983, !4989, !4993}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4972, file: !13, line: 40, baseType: !12, size: 32)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4972, file: !13, line: 41, baseType: !4976, size: 64, offset: 64)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!451}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4972, file: !13, line: 42, baseType: !4980, size: 64, offset: 128)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!35}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4972, file: !13, line: 43, baseType: !4984, size: 64, offset: 192)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!459, !4987}
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !13, line: 19, flags: DIFlagFwdDecl)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4972, file: !13, line: 44, baseType: !4990, size: 64, offset: 256)
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{!459}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4972, file: !13, line: 45, baseType: !880, size: 64, offset: 320)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !523, file: !467, line: 121, baseType: !4995, size: 64, offset: 256)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{!459, !490}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !523, file: !467, line: 122, baseType: !4999, size: 64, offset: 320)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{null, !490, !1678, !1679}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !466, file: !467, line: 70, baseType: !3351, size: 64, offset: 384)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !466, file: !467, line: 71, baseType: !2721, size: 32, offset: 448)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !466, file: !467, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !466, file: !467, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !466, file: !467, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !466, file: !467, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !466, file: !467, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !463, file: !146, line: 707, baseType: !2768, size: 64, offset: 512)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !463, file: !146, line: 709, baseType: !5011, size: 64, offset: 576)
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5012 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !146, line: 37, flags: DIFlagFwdDecl)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !463, file: !146, line: 711, baseType: !31, size: 64, offset: 640)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !463, file: !146, line: 712, baseType: !5015, size: 64, offset: 704)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5017)
!5017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !146, line: 89, size: 384, elements: !5018)
!5018 = !{!5019, !5020, !5021, !5025, !5030, !5034}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5017, file: !146, line: 90, baseType: !31, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5017, file: !146, line: 91, baseType: !553, size: 64, offset: 64)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5017, file: !146, line: 92, baseType: !5022, size: 64, offset: 128)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{!37, !461, !502}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5017, file: !146, line: 93, baseType: !5026, size: 64, offset: 192)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!507, !461, !5029, !1678, !1679}
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5017, file: !146, line: 95, baseType: !5031, size: 64, offset: 256)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{null, !2768}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5017, file: !146, line: 97, baseType: !5035, size: 64, offset: 320)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5037)
!5037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !158, line: 286, size: 1472, elements: !5038)
!5038 = !{!5039, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5037, file: !158, line: 287, baseType: !5040, size: 64)
!5040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5041, size: 64)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{!37, !2768}
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5037, file: !158, line: 288, baseType: !5031, size: 64, offset: 64)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5037, file: !158, line: 289, baseType: !5040, size: 64, offset: 128)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5037, file: !158, line: 290, baseType: !5040, size: 64, offset: 192)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !5037, file: !158, line: 291, baseType: !5040, size: 64, offset: 256)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !5037, file: !158, line: 292, baseType: !5040, size: 64, offset: 320)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !5037, file: !158, line: 293, baseType: !5040, size: 64, offset: 384)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !5037, file: !158, line: 294, baseType: !5040, size: 64, offset: 448)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !5037, file: !158, line: 295, baseType: !5040, size: 64, offset: 512)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !5037, file: !158, line: 296, baseType: !5040, size: 64, offset: 576)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !5037, file: !158, line: 297, baseType: !5040, size: 64, offset: 640)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !5037, file: !158, line: 298, baseType: !5040, size: 64, offset: 704)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !5037, file: !158, line: 299, baseType: !5040, size: 64, offset: 768)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !5037, file: !158, line: 300, baseType: !5040, size: 64, offset: 832)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !5037, file: !158, line: 301, baseType: !5040, size: 64, offset: 896)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !5037, file: !158, line: 302, baseType: !5040, size: 64, offset: 960)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !5037, file: !158, line: 303, baseType: !5040, size: 64, offset: 1024)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !5037, file: !158, line: 304, baseType: !5040, size: 64, offset: 1088)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !5037, file: !158, line: 305, baseType: !5040, size: 64, offset: 1152)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !5037, file: !158, line: 306, baseType: !5040, size: 64, offset: 1216)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !5037, file: !158, line: 307, baseType: !5040, size: 64, offset: 1280)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !5037, file: !158, line: 308, baseType: !5040, size: 64, offset: 1344)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !5037, file: !158, line: 309, baseType: !5040, size: 64, offset: 1408)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !463, file: !146, line: 714, baseType: !5066, size: 64, offset: 768)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5068)
!5068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !391, line: 80, size: 1344, elements: !5069)
!5069 = !{!5070, !5071, !5072, !5073, !5074, !5075, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5148}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5068, file: !391, line: 81, baseType: !31, size: 64)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !5068, file: !391, line: 82, baseType: !31, size: 64, offset: 64)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !5068, file: !391, line: 83, baseType: !553, size: 64, offset: 128)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5068, file: !391, line: 84, baseType: !553, size: 64, offset: 192)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !5068, file: !391, line: 85, baseType: !553, size: 64, offset: 256)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5068, file: !391, line: 87, baseType: !5076, size: 64, offset: 320)
!5076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5077, size: 64)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!37, !2768, !5079}
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !279, line: 96, size: 1152, elements: !5081)
!5081 = !{!5082, !5083, !5084, !5085, !5086, !5087, !5088, !5101, !5111, !5112, !5113, !5114, !5115, !5123, !5124, !5125, !5126, !5127, !5128}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5080, file: !279, line: 97, baseType: !31, size: 64)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5080, file: !279, line: 98, baseType: !5066, size: 64, offset: 64)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5080, file: !279, line: 100, baseType: !766, size: 64, offset: 128)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !5080, file: !279, line: 101, baseType: !31, size: 64, offset: 192)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !5080, file: !279, line: 103, baseType: !451, size: 8, offset: 256)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !5080, file: !279, line: 104, baseType: !278, size: 32, offset: 288)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !5080, file: !279, line: 106, baseType: !5089, size: 64, offset: 320)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5091)
!5091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !5092, line: 282, size: 1600, elements: !5093)
!5092 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!5093 = !{!5094, !5095, !5096, !5100}
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5091, file: !5092, line: 283, baseType: !3825, size: 256)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5091, file: !5092, line: 284, baseType: !3825, size: 256, offset: 256)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !5091, file: !5092, line: 285, baseType: !5097, size: 1024, offset: 512)
!5097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1024, elements: !5098)
!5098 = !{!5099}
!5099 = !DISubrange(count: 128)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5091, file: !5092, line: 286, baseType: !459, size: 64, offset: 1536)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !5080, file: !279, line: 107, baseType: !5102, size: 64, offset: 384)
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 64)
!5103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5104)
!5104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !5092, line: 217, size: 256, elements: !5105)
!5105 = !{!5106, !5107, !5109, !5110}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5104, file: !5092, line: 218, baseType: !4489, size: 128)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5104, file: !5092, line: 219, baseType: !5108, size: 64, offset: 128)
!5108 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !5092, line: 15, baseType: !54)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !5104, file: !5092, line: 220, baseType: !426, size: 32, offset: 192)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !5104, file: !5092, line: 221, baseType: !426, size: 32, offset: 224)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5080, file: !279, line: 109, baseType: !5040, size: 64, offset: 448)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !5080, file: !279, line: 110, baseType: !5031, size: 64, offset: 512)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5080, file: !279, line: 111, baseType: !5040, size: 64, offset: 576)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5080, file: !279, line: 112, baseType: !5031, size: 64, offset: 640)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5080, file: !279, line: 113, baseType: !5116, size: 64, offset: 704)
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5117, size: 64)
!5117 = !DISubroutineType(types: !5118)
!5118 = !{!37, !2768, !5119}
!5119 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !158, line: 60, baseType: !5120)
!5120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !158, line: 58, size: 32, elements: !5121)
!5121 = !{!5122}
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5120, file: !158, line: 59, baseType: !37, size: 32)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5080, file: !279, line: 114, baseType: !5040, size: 64, offset: 768)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5080, file: !279, line: 115, baseType: !553, size: 64, offset: 832)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5080, file: !279, line: 116, baseType: !553, size: 64, offset: 896)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5080, file: !279, line: 118, baseType: !5035, size: 64, offset: 960)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !5080, file: !279, line: 119, baseType: !5031, size: 64, offset: 1024)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5080, file: !279, line: 121, baseType: !5129, size: 64, offset: 1088)
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5130 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !279, line: 121, flags: DIFlagFwdDecl)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5068, file: !391, line: 88, baseType: !5022, size: 64, offset: 384)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5068, file: !391, line: 89, baseType: !5040, size: 64, offset: 448)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !5068, file: !391, line: 90, baseType: !5031, size: 64, offset: 512)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5068, file: !391, line: 91, baseType: !5031, size: 64, offset: 576)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5068, file: !391, line: 92, baseType: !5031, size: 64, offset: 640)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !5068, file: !391, line: 94, baseType: !5040, size: 64, offset: 704)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !5068, file: !391, line: 95, baseType: !5040, size: 64, offset: 768)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5068, file: !391, line: 97, baseType: !5116, size: 64, offset: 832)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5068, file: !391, line: 98, baseType: !5040, size: 64, offset: 896)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !5068, file: !391, line: 100, baseType: !5040, size: 64, offset: 960)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !5068, file: !391, line: 102, baseType: !5040, size: 64, offset: 1024)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !5068, file: !391, line: 103, baseType: !5031, size: 64, offset: 1088)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5068, file: !391, line: 105, baseType: !5035, size: 64, offset: 1152)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !5068, file: !391, line: 107, baseType: !5145, size: 64, offset: 1216)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5147)
!5147 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !391, line: 107, flags: DIFlagFwdDecl)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !5068, file: !391, line: 109, baseType: !451, size: 8, offset: 1280)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !463, file: !146, line: 715, baseType: !5079, size: 64, offset: 832)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !463, file: !146, line: 717, baseType: !35, size: 64, offset: 896)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !463, file: !146, line: 719, baseType: !35, size: 64, offset: 960)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !463, file: !146, line: 721, baseType: !837, size: 256, offset: 1024)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !463, file: !146, line: 725, baseType: !5154, size: 448, offset: 1280)
!5154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !146, line: 517, size: 448, elements: !5155)
!5155 = !{!5156, !5157, !5158, !5159}
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !5154, file: !146, line: 518, baseType: !112, size: 128)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !5154, file: !146, line: 519, baseType: !112, size: 128, offset: 128)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !5154, file: !146, line: 520, baseType: !112, size: 128, offset: 256)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5154, file: !146, line: 521, baseType: !145, size: 32, offset: 384)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !463, file: !146, line: 726, baseType: !5161, size: 2496, offset: 1728)
!5161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !158, line: 663, size: 2496, elements: !5162)
!5162 = !{!5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5245, !5249}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !5161, file: !158, line: 664, baseType: !5119, size: 32)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !5161, file: !158, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !5161, file: !158, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !5161, file: !158, line: 667, baseType: !451, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !5161, file: !158, line: 668, baseType: !451, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !5161, file: !158, line: 669, baseType: !451, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !5161, file: !158, line: 670, baseType: !451, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !5161, file: !158, line: 671, baseType: !451, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !5161, file: !158, line: 672, baseType: !451, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !5161, file: !158, line: 673, baseType: !451, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !5161, file: !158, line: 674, baseType: !451, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !5161, file: !158, line: 675, baseType: !425, size: 32, offset: 64)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5161, file: !158, line: 676, baseType: !74, size: 32, offset: 96)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5161, file: !158, line: 678, baseType: !112, size: 128, offset: 128)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !5161, file: !158, line: 679, baseType: !786, size: 256, offset: 256)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5161, file: !158, line: 680, baseType: !5179, size: 64, offset: 512)
!5179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5180, size: 64)
!5180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !5181, line: 43, size: 1536, elements: !5182)
!5181 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!5182 = !{!5183, !5184, !5185, !5186, !5187, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204}
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5180, file: !5181, line: 44, baseType: !31, size: 64)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5180, file: !5181, line: 45, baseType: !37, size: 32, offset: 64)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5180, file: !5181, line: 46, baseType: !112, size: 128, offset: 128)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5180, file: !5181, line: 47, baseType: !74, size: 32, offset: 256)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5180, file: !5181, line: 48, baseType: !5188, size: 64, offset: 320)
!5188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5189, size: 64)
!5189 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !158, line: 629, flags: DIFlagFwdDecl)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5180, file: !5181, line: 49, baseType: !1077, size: 320, offset: 384)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5180, file: !5181, line: 50, baseType: !54, size: 64, offset: 704)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !5180, file: !5181, line: 51, baseType: !2963, size: 64, offset: 768)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !5180, file: !5181, line: 52, baseType: !2963, size: 64, offset: 832)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !5180, file: !5181, line: 53, baseType: !2963, size: 64, offset: 896)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !5180, file: !5181, line: 54, baseType: !2963, size: 64, offset: 960)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !5180, file: !5181, line: 55, baseType: !2963, size: 64, offset: 1024)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !5180, file: !5181, line: 56, baseType: !54, size: 64, offset: 1088)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !5180, file: !5181, line: 57, baseType: !54, size: 64, offset: 1152)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !5180, file: !5181, line: 58, baseType: !54, size: 64, offset: 1216)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !5180, file: !5181, line: 59, baseType: !54, size: 64, offset: 1280)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !5180, file: !5181, line: 60, baseType: !54, size: 64, offset: 1344)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5180, file: !5181, line: 61, baseType: !2768, size: 64, offset: 1408)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5180, file: !5181, line: 62, baseType: !451, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !5180, file: !5181, line: 63, baseType: !451, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !5161, file: !158, line: 681, baseType: !451, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !5161, file: !158, line: 682, baseType: !451, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !5161, file: !158, line: 683, baseType: !451, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !5161, file: !158, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !5161, file: !158, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !5161, file: !158, line: 690, baseType: !2955, size: 512, offset: 640)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5161, file: !158, line: 691, baseType: !652, size: 64, offset: 1152)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5161, file: !158, line: 692, baseType: !1095, size: 256, offset: 1216)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !5161, file: !158, line: 693, baseType: !69, size: 192, offset: 1472)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5161, file: !158, line: 694, baseType: !5188, size: 64, offset: 1664)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !5161, file: !158, line: 695, baseType: !64, size: 32, offset: 1728)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !5161, file: !158, line: 696, baseType: !64, size: 32, offset: 1760)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !5161, file: !158, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !5161, file: !158, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !5161, file: !158, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !5161, file: !158, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !5161, file: !158, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !5161, file: !158, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !5161, file: !158, line: 703, baseType: !451, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !5161, file: !158, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !5161, file: !158, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !5161, file: !158, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !5161, file: !158, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !5161, file: !158, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !5161, file: !158, line: 709, baseType: !7, size: 32, offset: 1824)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !5161, file: !158, line: 710, baseType: !157, size: 32, offset: 1856)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !5161, file: !158, line: 711, baseType: !165, size: 32, offset: 1888)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !5161, file: !158, line: 712, baseType: !165, size: 32, offset: 1920)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !5161, file: !158, line: 713, baseType: !37, size: 32, offset: 1952)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !5161, file: !158, line: 714, baseType: !37, size: 32, offset: 1984)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !5161, file: !158, line: 715, baseType: !652, size: 64, offset: 2048)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !5161, file: !158, line: 716, baseType: !652, size: 64, offset: 2112)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !5161, file: !158, line: 717, baseType: !652, size: 64, offset: 2176)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !5161, file: !158, line: 718, baseType: !652, size: 64, offset: 2240)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !5161, file: !158, line: 720, baseType: !5240, size: 64, offset: 2304)
!5240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5241, size: 64)
!5241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !158, line: 632, size: 64, elements: !5242)
!5242 = !{!5243, !5244}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5241, file: !158, line: 633, baseType: !74, size: 32)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5241, file: !158, line: 634, baseType: !7, size: 32, offset: 32)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !5161, file: !158, line: 721, baseType: !5246, size: 64, offset: 2368)
!5246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5247, size: 64)
!5247 = !DISubroutineType(types: !5248)
!5248 = !{null, !2768, !833}
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !5161, file: !158, line: 722, baseType: !5250, size: 64, offset: 2432)
!5250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5251, size: 64)
!5251 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !158, line: 722, flags: DIFlagFwdDecl)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !463, file: !146, line: 727, baseType: !5253, size: 64, offset: 4224)
!5253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5254, size: 64)
!5254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !158, line: 742, size: 1792, elements: !5255)
!5255 = !{!5256, !5257, !5258, !5262, !5263, !5264}
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5254, file: !158, line: 743, baseType: !5037, size: 1472)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5254, file: !158, line: 744, baseType: !5040, size: 64, offset: 1472)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5254, file: !158, line: 745, baseType: !5259, size: 64, offset: 1536)
!5259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5260, size: 64)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{null, !2768, !451}
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !5254, file: !158, line: 746, baseType: !5040, size: 64, offset: 1600)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5254, file: !158, line: 747, baseType: !5031, size: 64, offset: 1664)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !5254, file: !158, line: 748, baseType: !5031, size: 64, offset: 1728)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !463, file: !146, line: 736, baseType: !5266, size: 128, offset: 4288)
!5266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !146, line: 529, size: 128, elements: !5267)
!5267 = !{!5268, !5355}
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5266, file: !146, line: 531, baseType: !5269, size: 64)
!5269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5270, size: 64)
!5270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !5271, line: 150, size: 1408, elements: !5272)
!5271 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd3b6d3aac1ec0f42f0ed0e1454dc51c")
!5272 = !{!5273, !5274, !5275, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5343, !5344, !5345, !5346, !5350, !5351, !5352, !5353}
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !5270, file: !5271, line: 151, baseType: !112, size: 128)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5270, file: !5271, line: 152, baseType: !31, size: 64, offset: 128)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5270, file: !5271, line: 153, baseType: !5276, size: 64, offset: 192)
!5276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5277, size: 64)
!5277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5278)
!5278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !5271, line: 88, size: 640, elements: !5279)
!5279 = !{!5280, !5284, !5295, !5300, !5304, !5310, !5314, !5318, !5325, !5329}
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5278, file: !5271, line: 89, baseType: !5281, size: 64)
!5281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5282, size: 64)
!5282 = !DISubroutineType(types: !5283)
!5283 = !{!37, !5269, !418, !178}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !5278, file: !5271, line: 91, baseType: !5285, size: 64, offset: 64)
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5286, size: 64)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{!37, !5269, !5288, !178}
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !5271, line: 63, size: 640, elements: !5290)
!5290 = !{!5291, !5292, !5293}
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5289, file: !5271, line: 64, baseType: !433, size: 64)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !5289, file: !5271, line: 65, baseType: !37, size: 32, offset: 64)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !5289, file: !5271, line: 66, baseType: !5294, size: 512, offset: 96)
!5294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 512, elements: !3267)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !5278, file: !5271, line: 93, baseType: !5296, size: 64, offset: 128)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5297, size: 64)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{!37, !5269, !7, !5299}
!5299 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !40, line: 170, baseType: !54)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !5278, file: !5271, line: 94, baseType: !5301, size: 64, offset: 192)
!5301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!5302 = !DISubroutineType(types: !5303)
!5303 = !{null, !5269, !7}
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !5278, file: !5271, line: 95, baseType: !5305, size: 64, offset: 256)
!5305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5306, size: 64)
!5306 = !DISubroutineType(types: !5307)
!5307 = !{!37, !5269, !418, !5308, !7, !1185, !909}
!5308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!5309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5278, file: !5271, line: 100, baseType: !5311, size: 64, offset: 320)
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5312, size: 64)
!5312 = !DISubroutineType(types: !5313)
!5313 = !{!37, !5269, !7, !7, !35}
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5278, file: !5271, line: 102, baseType: !5315, size: 64, offset: 384)
!5315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5316, size: 64)
!5316 = !DISubroutineType(types: !5317)
!5317 = !{null, !5269, !7, !7}
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !5278, file: !5271, line: 104, baseType: !5319, size: 64, offset: 448)
!5319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5320, size: 64)
!5320 = !DISubroutineType(types: !5321)
!5321 = !{!37, !5269, !5322, !451}
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5323, size: 64)
!5323 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !5324, line: 11, flags: DIFlagFwdDecl)
!5324 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f502f2f1e55658b1d5aa186ee65843")
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !5278, file: !5271, line: 105, baseType: !5326, size: 64, offset: 512)
!5326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5327, size: 64)
!5327 = !DISubroutineType(types: !5328)
!5328 = !{null, !5269, !5322}
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !5278, file: !5271, line: 106, baseType: !5330, size: 64, offset: 576)
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = !DISubroutineType(types: !5332)
!5332 = !{!37, !5269, !5288, !1185, !909}
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !5270, file: !5271, line: 154, baseType: !35, size: 64, offset: 256)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5270, file: !5271, line: 155, baseType: !7, size: 32, offset: 320)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !5270, file: !5271, line: 156, baseType: !7, size: 32, offset: 352)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5270, file: !5271, line: 157, baseType: !837, size: 256, offset: 384)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5270, file: !5271, line: 158, baseType: !5269, size: 64, offset: 640)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5270, file: !5271, line: 161, baseType: !433, size: 64, offset: 704)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !5270, file: !5271, line: 162, baseType: !178, size: 32, offset: 768)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !5270, file: !5271, line: 163, baseType: !5341, size: 64, offset: 832)
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5342, size: 64)
!5342 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !5271, line: 117, flags: DIFlagFwdDecl)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5270, file: !5271, line: 164, baseType: !2768, size: 64, offset: 896)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "pm_dev", scope: !5270, file: !5271, line: 165, baseType: !2768, size: 64, offset: 960)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5270, file: !5271, line: 167, baseType: !5269, size: 64, offset: 1024)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "msi_parent_ops", scope: !5270, file: !5271, line: 170, baseType: !5347, size: 64, offset: 1088)
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5348, size: 64)
!5348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5349)
!5349 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_parent_ops", file: !5271, line: 49, flags: DIFlagFwdDecl)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !5270, file: !5271, line: 174, baseType: !5299, size: 64, offset: 1152)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !5270, file: !5271, line: 175, baseType: !7, size: 32, offset: 1216)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !5270, file: !5271, line: 176, baseType: !3596, size: 128, offset: 1280)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "revmap", scope: !5270, file: !5271, line: 177, baseType: !5354, offset: 1408)
!5354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5322, elements: !1400)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5266, file: !146, line: 532, baseType: !5356, size: 64, offset: 64)
!5356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5357, size: 64)
!5357 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !146, line: 49, flags: DIFlagFwdDecl)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !463, file: !146, line: 738, baseType: !5359, size: 64, offset: 4416)
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5361)
!5361 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !146, line: 738, flags: DIFlagFwdDecl)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !463, file: !146, line: 740, baseType: !5363, size: 64, offset: 4480)
!5363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !463, file: !146, line: 741, baseType: !652, size: 64, offset: 4544)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !463, file: !146, line: 746, baseType: !652, size: 64, offset: 4608)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !463, file: !146, line: 747, baseType: !5367, size: 64, offset: 4672)
!5367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5368, size: 64)
!5368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5369)
!5369 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !146, line: 747, flags: DIFlagFwdDecl)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !463, file: !146, line: 749, baseType: !5371, size: 64, offset: 4736)
!5371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5372, size: 64)
!5372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !146, line: 428, size: 128, elements: !5373)
!5373 = !{!5374, !5375, !5376}
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5372, file: !146, line: 433, baseType: !7, size: 32)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !5372, file: !146, line: 434, baseType: !7, size: 32, offset: 32)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !5372, file: !146, line: 435, baseType: !54, size: 64, offset: 64)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !463, file: !146, line: 751, baseType: !112, size: 128, offset: 4800)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !463, file: !146, line: 762, baseType: !5379, size: 64, offset: 4928)
!5379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5380, size: 64)
!5380 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !146, line: 762, flags: DIFlagFwdDecl)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !463, file: !146, line: 770, baseType: !5382, offset: 4992)
!5382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !5383, line: 5, elements: !1123)
!5383 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !463, file: !146, line: 772, baseType: !418, size: 64, offset: 4992)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !463, file: !146, line: 773, baseType: !433, size: 64, offset: 5056)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !463, file: !146, line: 776, baseType: !37, size: 32, offset: 5120)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !463, file: !146, line: 778, baseType: !735, size: 32, offset: 5152)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !463, file: !146, line: 779, baseType: !425, size: 32, offset: 5184)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !463, file: !146, line: 781, baseType: !74, size: 32, offset: 5216)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !463, file: !146, line: 782, baseType: !112, size: 128, offset: 5248)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !463, file: !146, line: 784, baseType: !5392, size: 64, offset: 5376)
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5394)
!5394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5395, line: 52, size: 768, elements: !5396)
!5395 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!5396 = !{!5397, !5398, !5399, !5400, !5401, !5405, !5409, !5410, !5411, !5412, !5416, !5420}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5394, file: !5395, line: 53, baseType: !31, size: 64)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5394, file: !5395, line: 55, baseType: !553, size: 64, offset: 64)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5394, file: !5395, line: 56, baseType: !553, size: 64, offset: 128)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5394, file: !5395, line: 58, baseType: !5022, size: 64, offset: 192)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5394, file: !5395, line: 59, baseType: !5402, size: 64, offset: 256)
!5402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5403, size: 64)
!5403 = !DISubroutineType(types: !5404)
!5404 = !{!507, !461, !5029}
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5394, file: !5395, line: 61, baseType: !5406, size: 64, offset: 320)
!5406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5407, size: 64)
!5407 = !DISubroutineType(types: !5408)
!5408 = !{null, !5392}
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5394, file: !5395, line: 62, baseType: !5031, size: 64, offset: 384)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5394, file: !5395, line: 64, baseType: !5040, size: 64, offset: 448)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5394, file: !5395, line: 66, baseType: !4970, size: 64, offset: 512)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5394, file: !5395, line: 67, baseType: !5413, size: 64, offset: 576)
!5413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5414, size: 64)
!5414 = !DISubroutineType(types: !5415)
!5415 = !{!459, !461}
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5394, file: !5395, line: 69, baseType: !5417, size: 64, offset: 640)
!5417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5418, size: 64)
!5418 = !DISubroutineType(types: !5419)
!5419 = !{null, !461, !1678, !1679}
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5394, file: !5395, line: 71, baseType: !5035, size: 64, offset: 704)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !463, file: !146, line: 785, baseType: !553, size: 64, offset: 5440)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !463, file: !146, line: 787, baseType: !5031, size: 64, offset: 5504)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !463, file: !146, line: 788, baseType: !5424, size: 64, offset: 5568)
!5424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5425 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !146, line: 46, flags: DIFlagFwdDecl)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !463, file: !146, line: 789, baseType: !5427, size: 64, offset: 5632)
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5428, size: 64)
!5428 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !146, line: 48, flags: DIFlagFwdDecl)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !463, file: !146, line: 791, baseType: !5430, size: 64, offset: 5696)
!5430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5431, size: 64)
!5431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !146, line: 597, size: 128, elements: !5432)
!5432 = !{!5433, !5434, !5435, !5436, !5437}
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !5431, file: !146, line: 598, baseType: !197, size: 32)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !5431, file: !146, line: 599, baseType: !206, size: 32, offset: 32)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !5431, file: !146, line: 600, baseType: !211, size: 32, offset: 64)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !5431, file: !146, line: 601, baseType: !451, size: 8, offset: 96)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !5431, file: !146, line: 602, baseType: !451, size: 8, offset: 104)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !463, file: !146, line: 793, baseType: !216, size: 32, offset: 5760)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !463, file: !146, line: 795, baseType: !451, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !463, file: !146, line: 796, baseType: !451, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !463, file: !146, line: 797, baseType: !451, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !463, file: !146, line: 798, baseType: !451, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !463, file: !146, line: 799, baseType: !451, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !437, file: !430, line: 131, baseType: !448, size: 64, offset: 256)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !437, file: !430, line: 133, baseType: !5446, size: 64, offset: 320)
!5446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5447, size: 64)
!5447 = !DISubroutineType(types: !5448)
!5448 = !{!172, !453}
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !437, file: !430, line: 134, baseType: !5450, size: 64, offset: 384)
!5450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5451, size: 64)
!5451 = !DISubroutineType(types: !5452)
!5452 = !{!451, !453, !31}
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !437, file: !430, line: 136, baseType: !5454, size: 64, offset: 448)
!5454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5455, size: 64)
!5455 = !DISubroutineType(types: !5456)
!5456 = !{!37, !453, !31, !7, !35, !50}
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !437, file: !430, line: 141, baseType: !5458, size: 64, offset: 512)
!5458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5459, size: 64)
!5459 = !DISubroutineType(types: !5460)
!5460 = !{!37, !453, !31, !1171, !50}
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !437, file: !430, line: 144, baseType: !5462, size: 64, offset: 576)
!5462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5463, size: 64)
!5463 = !DISubroutineType(types: !5464)
!5464 = !{!31, !453}
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !437, file: !430, line: 145, baseType: !5462, size: 64, offset: 640)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !437, file: !430, line: 146, baseType: !5467, size: 64, offset: 704)
!5467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5468, size: 64)
!5468 = !DISubroutineType(types: !5469)
!5469 = !{!433, !453}
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !437, file: !430, line: 148, baseType: !5471, size: 64, offset: 768)
!5471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5472, size: 64)
!5472 = !DISubroutineType(types: !5473)
!5473 = !{!433, !453, !433}
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !437, file: !430, line: 151, baseType: !5475, size: 64, offset: 832)
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5476, size: 64)
!5476 = !DISubroutineType(types: !5477)
!5477 = !{!433, !453, !31}
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !437, file: !430, line: 153, baseType: !5479, size: 64, offset: 896)
!5479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5480, size: 64)
!5480 = !DISubroutineType(types: !5481)
!5481 = !{!37, !453, !31, !31, !7, !7, !5482}
!5482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5483, size: 64)
!5483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !430, line: 94, size: 640, elements: !5484)
!5484 = !{!5485, !5486, !5487}
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5483, file: !430, line: 95, baseType: !433, size: 64)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !5483, file: !430, line: 96, baseType: !7, size: 32, offset: 64)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !5483, file: !430, line: 97, baseType: !5488, size: 512, offset: 128)
!5488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 512, elements: !2998)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !437, file: !430, line: 158, baseType: !5471, size: 64, offset: 960)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !437, file: !430, line: 161, baseType: !5467, size: 64, offset: 1024)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !437, file: !430, line: 163, baseType: !440, size: 64, offset: 1088)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !437, file: !430, line: 164, baseType: !5493, size: 64, offset: 1152)
!5493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5494, size: 64)
!5494 = !DISubroutineType(types: !5495)
!5495 = !{!37, !453, !5496}
!5496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5497, size: 64)
!5497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !430, line: 73, size: 128, elements: !5498)
!5498 = !{!5499, !5500, !5501}
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5497, file: !430, line: 74, baseType: !7, size: 32)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5497, file: !430, line: 75, baseType: !7, size: 32, offset: 32)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !5497, file: !430, line: 76, baseType: !453, size: 64, offset: 64)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !437, file: !430, line: 166, baseType: !5503, size: 64, offset: 1216)
!5503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5504, size: 64)
!5504 = !DISubroutineType(types: !5505)
!5505 = !{!35, !433, !37}
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !437, file: !430, line: 167, baseType: !5507, size: 64, offset: 1280)
!5507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5508, size: 64)
!5508 = !DISubroutineType(types: !5509)
!5509 = !{!37, !453, !7}
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !437, file: !430, line: 168, baseType: !5511, size: 64, offset: 1344)
!5511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5512, size: 64)
!5512 = !DISubroutineType(types: !5513)
!5513 = !{!37, !433}
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !429, file: !430, line: 44, baseType: !2768, size: 64, offset: 128)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !429, file: !430, line: 45, baseType: !112, size: 128, offset: 192)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !429, file: !430, line: 46, baseType: !112, size: 128, offset: 320)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !429, file: !430, line: 47, baseType: !98, size: 8, offset: 448)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !419, file: !420, line: 54, baseType: !5519, size: 64, offset: 704)
!5519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5520, size: 64)
!5520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !420, line: 28, size: 256, elements: !5521)
!5521 = !{!5522, !5523, !5524, !5525}
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5520, file: !420, line: 29, baseType: !507, size: 64)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5520, file: !420, line: 30, baseType: !37, size: 32, offset: 64)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5520, file: !420, line: 31, baseType: !35, size: 64, offset: 128)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5520, file: !420, line: 32, baseType: !5519, size: 64, offset: 192)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !419, file: !420, line: 55, baseType: !5519, size: 64, offset: 768)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !419, file: !420, line: 56, baseType: !418, size: 64, offset: 832)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !419, file: !420, line: 57, baseType: !418, size: 64, offset: 896)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !419, file: !420, line: 58, baseType: !418, size: 64, offset: 960)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !419, file: !420, line: 62, baseType: !54, size: 64, offset: 1024)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !419, file: !420, line: 63, baseType: !35, size: 64, offset: 1088)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !406, file: !407, line: 431, baseType: !433, size: 64, offset: 384)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "swnode", scope: !406, file: !407, line: 432, baseType: !5534, size: 64, offset: 448)
!5534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5535, size: 64)
!5535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5536)
!5536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "software_node", file: !173, line: 519, size: 192, elements: !5537)
!5537 = !{!5538, !5539, !5540}
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5536, file: !173, line: 520, baseType: !31, size: 64)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5536, file: !173, line: 521, baseType: !5534, size: 64, offset: 64)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5536, file: !173, line: 522, baseType: !5541, size: 64, offset: 128)
!5541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5542, size: 64)
!5542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5543)
!5543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !173, line: 338, size: 256, elements: !5544)
!5544 = !{!5545, !5546, !5547, !5548, !5549}
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5543, file: !173, line: 339, baseType: !31, size: 64)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5543, file: !173, line: 340, baseType: !50, size: 64, offset: 64)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !5543, file: !173, line: 341, baseType: !451, size: 8, offset: 128)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5543, file: !173, line: 342, baseType: !333, size: 32, offset: 160)
!5549 = !DIDerivedType(tag: DW_TAG_member, scope: !5543, file: !173, line: 343, baseType: !5550, size: 64, offset: 192)
!5550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5543, file: !173, line: 343, size: 64, elements: !5551)
!5551 = !{!5552, !5553}
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5550, file: !173, line: 344, baseType: !459, size: 64)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5550, file: !173, line: 351, baseType: !5554, size: 64)
!5554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5550, file: !173, line: 345, size: 64, elements: !5555)
!5555 = !{!5556, !5558, !5560, !5562, !5564}
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !5554, file: !173, line: 346, baseType: !5557, size: 64)
!5557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 64, elements: !2998)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !5554, file: !173, line: 347, baseType: !5559, size: 64)
!5559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !1065)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !5554, file: !173, line: 348, baseType: !5561, size: 64)
!5561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 64, elements: !954)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !5554, file: !173, line: 349, baseType: !5563, size: 64)
!5563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 64, elements: !3080)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5554, file: !173, line: 350, baseType: !5565, size: 64)
!5565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !3080)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !406, file: !407, line: 433, baseType: !5567, size: 64, offset: 512)
!5567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5568, size: 64)
!5568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5569)
!5569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !5570, line: 21, size: 512, elements: !5571)
!5570 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!5571 = !{!5572, !5574, !5575, !5576, !5577, !5578, !5580, !5581}
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5569, file: !5570, line: 22, baseType: !5573, size: 64)
!5573 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !40, line: 164, baseType: !4237)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5569, file: !5570, line: 23, baseType: !5573, size: 64, offset: 64)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5569, file: !5570, line: 24, baseType: !31, size: 64, offset: 128)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5569, file: !5570, line: 25, baseType: !54, size: 64, offset: 192)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5569, file: !5570, line: 26, baseType: !54, size: 64, offset: 256)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5569, file: !5570, line: 27, baseType: !5579, size: 64, offset: 320)
!5579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5569, size: 64)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !5569, file: !5570, line: 27, baseType: !5579, size: 64, offset: 384)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !5569, file: !5570, line: 27, baseType: !5579, size: 64, offset: 448)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !406, file: !407, line: 434, baseType: !7, size: 32, offset: 576)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !406, file: !407, line: 435, baseType: !37, size: 32, offset: 608)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "psmouse", scope: !403, file: !3, line: 19, baseType: !5585, size: 64, offset: 640)
!5585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5586, size: 64)
!5586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse", file: !291, line: 89, size: 3904, elements: !5587)
!5587 = !{!5588, !5589, !5592, !5677, !5678, !5679, !5680, !5700, !5702, !5703, !5704, !5705, !5706, !5707, !5708, !5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717, !5718, !5719, !5720, !5725, !5729, !5730, !5734, !5735, !5736, !5740, !5741, !5742, !5743}
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5586, file: !291, line: 90, baseType: !35, size: 64)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5586, file: !291, line: 91, baseType: !5590, size: 64, offset: 64)
!5590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5591, size: 64)
!5591 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !291, line: 91, flags: DIFlagFwdDecl)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "ps2dev", scope: !5586, file: !291, line: 92, baseType: !5593, size: 832, offset: 128)
!5593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ps2dev", file: !285, line: 48, size: 832, elements: !5594)
!5594 = !{!5595, !5660, !5661, !5662, !5663, !5664, !5665, !5666, !5672}
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "serio", scope: !5593, file: !285, line: 49, baseType: !5596, size: 64)
!5596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5597, size: 64)
!5597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio", file: !5598, line: 21, size: 8768, elements: !5599)
!5598 = !DIFile(filename: "./include/linux/serio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a9b334022147244b132d6aa1a8399b7")
!5599 = !{!5600, !5601, !5602, !5603, !5604, !5605, !5612, !5613, !5617, !5621, !5625, !5626, !5627, !5628, !5629, !5630, !5631, !5655, !5656, !5657, !5658}
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "port_data", scope: !5597, file: !5598, line: 22, baseType: !35, size: 64)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5597, file: !5598, line: 24, baseType: !3825, size: 256, offset: 64)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !5597, file: !5598, line: 25, baseType: !3825, size: 256, offset: 320)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !5597, file: !5598, line: 26, baseType: !5097, size: 1024, offset: 576)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !5597, file: !5598, line: 28, baseType: !451, size: 8, offset: 1600)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5597, file: !5598, line: 30, baseType: !5606, size: 32, offset: 1608)
!5606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_device_id", file: !5092, line: 256, size: 32, elements: !5607)
!5607 = !{!5608, !5609, !5610, !5611}
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5606, file: !5092, line: 257, baseType: !100, size: 8)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5606, file: !5092, line: 258, baseType: !100, size: 8, offset: 8)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5606, file: !5092, line: 259, baseType: !100, size: 8, offset: 16)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !5606, file: !5092, line: 260, baseType: !100, size: 8, offset: 24)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5597, file: !5598, line: 33, baseType: !74, size: 32, offset: 1664)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5597, file: !5598, line: 35, baseType: !5614, size: 64, offset: 1728)
!5614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5615, size: 64)
!5615 = !DISubroutineType(types: !5616)
!5616 = !{!37, !5596, !102}
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5597, file: !5598, line: 36, baseType: !5618, size: 64, offset: 1792)
!5618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5619, size: 64)
!5619 = !DISubroutineType(types: !5620)
!5620 = !{!37, !5596}
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !5597, file: !5598, line: 37, baseType: !5622, size: 64, offset: 1856)
!5622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5623, size: 64)
!5623 = !DISubroutineType(types: !5624)
!5624 = !{null, !5596}
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5597, file: !5598, line: 38, baseType: !5618, size: 64, offset: 1920)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !5597, file: !5598, line: 39, baseType: !5622, size: 64, offset: 1984)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5597, file: !5598, line: 41, baseType: !5596, size: 64, offset: 2048)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !5597, file: !5598, line: 43, baseType: !112, size: 128, offset: 2112)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5597, file: !5598, line: 44, baseType: !112, size: 128, offset: 2240)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5597, file: !5598, line: 46, baseType: !7, size: 32, offset: 2368)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !5597, file: !5598, line: 52, baseType: !5632, size: 64, offset: 2432)
!5632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5633, size: 64)
!5633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_driver", file: !5598, line: 68, size: 1792, elements: !5634)
!5634 = !{!5635, !5636, !5639, !5640, !5641, !5646, !5650, !5651, !5652, !5653, !5654}
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !5633, file: !5598, line: 69, baseType: !31, size: 64)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !5633, file: !5598, line: 71, baseType: !5637, size: 64, offset: 64)
!5637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5638, size: 64)
!5638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5606)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !5633, file: !5598, line: 72, baseType: !451, size: 8, offset: 128)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !5633, file: !5598, line: 74, baseType: !5622, size: 64, offset: 192)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !5633, file: !5598, line: 75, baseType: !5642, size: 64, offset: 256)
!5642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5643, size: 64)
!5643 = !DISubroutineType(types: !5644)
!5644 = !{!5645, !5596, !102, !7}
!5645 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !6, line: 17, baseType: !5)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !5633, file: !5598, line: 76, baseType: !5647, size: 64, offset: 320)
!5647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5648, size: 64)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{!37, !5596, !5632}
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !5633, file: !5598, line: 77, baseType: !5618, size: 64, offset: 384)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !5633, file: !5598, line: 78, baseType: !5618, size: 64, offset: 448)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !5633, file: !5598, line: 79, baseType: !5622, size: 64, offset: 512)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !5633, file: !5598, line: 80, baseType: !5622, size: 64, offset: 576)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5633, file: !5598, line: 82, baseType: !5080, size: 1152, offset: 640)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "drv_mutex", scope: !5597, file: !5598, line: 54, baseType: !837, size: 256, offset: 2496)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5597, file: !5598, line: 56, baseType: !463, size: 5824, offset: 2752)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5597, file: !5598, line: 58, baseType: !112, size: 128, offset: 8576)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "ps2_cmd_mutex", scope: !5597, file: !5598, line: 64, baseType: !5659, size: 64, offset: 8704)
!5659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !5593, file: !285, line: 50, baseType: !837, size: 256, offset: 64)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5593, file: !285, line: 51, baseType: !69, size: 192, offset: 320)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5593, file: !285, line: 52, baseType: !54, size: 64, offset: 512)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "cmdbuf", scope: !5593, file: !285, line: 53, baseType: !5557, size: 64, offset: 576)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcnt", scope: !5593, file: !285, line: 54, baseType: !98, size: 8, offset: 640)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "nak", scope: !5593, file: !285, line: 55, baseType: !98, size: 8, offset: 648)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "pre_receive_handler", scope: !5593, file: !285, line: 57, baseType: !5667, size: 64, offset: 704)
!5667 = !DIDerivedType(tag: DW_TAG_typedef, name: "ps2_pre_receive_handler_t", file: !285, line: 30, baseType: !5668)
!5668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5669, size: 64)
!5669 = !DISubroutineType(types: !5670)
!5670 = !{!284, !5671, !98, !7}
!5671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5593, size: 64)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "receive_handler", scope: !5593, file: !285, line: 58, baseType: !5673, size: 64, offset: 768)
!5673 = !DIDerivedType(tag: DW_TAG_typedef, name: "ps2_receive_handler_t", file: !285, line: 32, baseType: !5674)
!5674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5675, size: 64)
!5675 = !DISubroutineType(types: !5676)
!5676 = !{null, !5671, !98}
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "resync_work", scope: !5586, file: !291, line: 93, baseType: !1151, size: 704, offset: 960)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5586, file: !291, line: 94, baseType: !31, size: 64, offset: 1664)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5586, file: !291, line: 95, baseType: !31, size: 64, offset: 1728)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !5586, file: !291, line: 96, baseType: !5681, size: 64, offset: 1792)
!5681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5682, size: 64)
!5682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5683)
!5683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse_protocol", file: !291, line: 77, size: 320, elements: !5684)
!5684 = !{!5685, !5686, !5687, !5688, !5689, !5690, !5691, !5692, !5696}
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5683, file: !291, line: 78, baseType: !290, size: 32)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "maxproto", scope: !5683, file: !291, line: 79, baseType: !451, size: 8, offset: 32)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parity", scope: !5683, file: !291, line: 80, baseType: !451, size: 8, offset: 40)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "try_passthru", scope: !5683, file: !291, line: 81, baseType: !451, size: 8, offset: 48)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_companion", scope: !5683, file: !291, line: 82, baseType: !451, size: 8, offset: 56)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5683, file: !291, line: 83, baseType: !31, size: 64, offset: 64)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !5683, file: !291, line: 84, baseType: !31, size: 64, offset: 128)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5683, file: !291, line: 85, baseType: !5693, size: 64, offset: 192)
!5693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5694, size: 64)
!5694 = !DISubroutineType(types: !5695)
!5695 = !{!37, !5585, !451}
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5683, file: !291, line: 86, baseType: !5697, size: 64, offset: 256)
!5697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5698, size: 64)
!5698 = !DISubroutineType(types: !5699)
!5699 = !{!37, !5585}
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !5586, file: !291, line: 97, baseType: !5701, size: 64, offset: 1856)
!5701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !2998)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "badbyte", scope: !5586, file: !291, line: 98, baseType: !102, size: 8, offset: 1920)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "pktcnt", scope: !5586, file: !291, line: 99, baseType: !102, size: 8, offset: 1928)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "pktsize", scope: !5586, file: !291, line: 100, baseType: !102, size: 8, offset: 1936)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "oob_data_type", scope: !5586, file: !291, line: 101, baseType: !102, size: 8, offset: 1944)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "extra_buttons", scope: !5586, file: !291, line: 102, baseType: !102, size: 8, offset: 1952)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "acks_disable_command", scope: !5586, file: !291, line: 103, baseType: !451, size: 8, offset: 1960)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !5586, file: !291, line: 104, baseType: !7, size: 32, offset: 1984)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !5586, file: !291, line: 105, baseType: !54, size: 64, offset: 2048)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_sync_cnt", scope: !5586, file: !291, line: 106, baseType: !54, size: 64, offset: 2112)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "num_resyncs", scope: !5586, file: !291, line: 107, baseType: !54, size: 64, offset: 2176)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5586, file: !291, line: 108, baseType: !317, size: 32, offset: 2240)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "devname", scope: !5586, file: !291, line: 109, baseType: !2770, size: 512, offset: 2272)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !5586, file: !291, line: 110, baseType: !3825, size: 256, offset: 2784)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !5586, file: !291, line: 112, baseType: !7, size: 32, offset: 3040)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !5586, file: !291, line: 113, baseType: !7, size: 32, offset: 3072)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "resetafter", scope: !5586, file: !291, line: 114, baseType: !7, size: 32, offset: 3104)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "resync_time", scope: !5586, file: !291, line: 115, baseType: !7, size: 32, offset: 3136)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "smartscroll", scope: !5586, file: !291, line: 116, baseType: !451, size: 8, offset: 3168)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_handler", scope: !5586, file: !291, line: 118, baseType: !5721, size: 64, offset: 3200)
!5721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5722, size: 64)
!5722 = !DISubroutineType(types: !5723)
!5723 = !{!5724, !5585}
!5724 = !DIDerivedType(tag: DW_TAG_typedef, name: "psmouse_ret_t", file: !291, line: 41, baseType: !324)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !5586, file: !291, line: 119, baseType: !5726, size: 64, offset: 3264)
!5726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5727, size: 64)
!5727 = !DISubroutineType(types: !5728)
!5728 = !{null, !5585, !7}
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "set_resolution", scope: !5586, file: !291, line: 120, baseType: !5726, size: 64, offset: 3328)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "set_scale", scope: !5586, file: !291, line: 121, baseType: !5731, size: 64, offset: 3392)
!5731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5732, size: 64)
!5732 = !DISubroutineType(types: !5733)
!5733 = !{null, !5585, !329}
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !5586, file: !291, line: 123, baseType: !5697, size: 64, offset: 3456)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !5586, file: !291, line: 124, baseType: !5697, size: 64, offset: 3520)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !5586, file: !291, line: 125, baseType: !5737, size: 64, offset: 3584)
!5737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5738, size: 64)
!5738 = !DISubroutineType(types: !5739)
!5739 = !{null, !5585}
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !5586, file: !291, line: 126, baseType: !5737, size: 64, offset: 3648)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5586, file: !291, line: 127, baseType: !5697, size: 64, offset: 3712)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "pt_activate", scope: !5586, file: !291, line: 129, baseType: !5737, size: 64, offset: 3776)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "pt_deactivate", scope: !5586, file: !291, line: 130, baseType: !5737, size: 64, offset: 3840)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !403, file: !3, line: 20, baseType: !5745, size: 64, offset: 704)
!5745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5746, size: 64)
!5746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_client", file: !407, line: 330, size: 6336, elements: !5747)
!5747 = !{!5748, !5749, !5750, !5751, !5883, !5884, !5885, !5886, !5887}
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5746, file: !407, line: 331, baseType: !41, size: 16)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5746, file: !407, line: 341, baseType: !41, size: 16, offset: 16)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5746, file: !407, line: 344, baseType: !410, size: 160, offset: 32)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !5746, file: !407, line: 345, baseType: !5752, size: 64, offset: 192)
!5752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5753, size: 64)
!5753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !407, line: 719, size: 8320, elements: !5754)
!5754 = !{!5755, !5756, !5757, !5794, !5795, !5809, !5819, !5820, !5821, !5822, !5823, !5824, !5825, !5829, !5830, !5831, !5832, !5864, !5875, !5876, !5880, !5881}
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5753, file: !407, line: 720, baseType: !766, size: 64)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5753, file: !407, line: 721, baseType: !7, size: 32, offset: 64)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !5753, file: !407, line: 722, baseType: !5758, size: 64, offset: 128)
!5758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5759, size: 64)
!5759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5760)
!5760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !407, line: 541, size: 320, elements: !5761)
!5761 = !{!5762, !5775, !5776, !5789, !5790}
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !5760, file: !407, line: 551, baseType: !5763, size: 64)
!5763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5764, size: 64)
!5764 = !DISubroutineType(types: !5765)
!5765 = !{!37, !5752, !5766, !37}
!5766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5767, size: 64)
!5767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !5768, line: 73, size: 128, elements: !5769)
!5768 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26895887cd35ff637ccd2046d4f4311d")
!5769 = !{!5770, !5771, !5772, !5773}
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5767, file: !5768, line: 74, baseType: !109, size: 16)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5767, file: !5768, line: 75, baseType: !109, size: 16, offset: 16)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5767, file: !5768, line: 85, baseType: !109, size: 16, offset: 32)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5767, file: !5768, line: 86, baseType: !5774, size: 64, offset: 64)
!5774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !5760, file: !407, line: 553, baseType: !5763, size: 64, offset: 64)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !5760, file: !407, line: 555, baseType: !5777, size: 64, offset: 128)
!5777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5778, size: 64)
!5778 = !DISubroutineType(types: !5779)
!5779 = !{!37, !5752, !108, !41, !33, !98, !37, !5780}
!5780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5781, size: 64)
!5781 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !5768, line: 141, size: 272, elements: !5782)
!5782 = !{!5783, !5784, !5785}
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !5781, file: !5768, line: 142, baseType: !100, size: 8)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !5781, file: !5768, line: 143, baseType: !109, size: 16)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !5781, file: !5768, line: 144, baseType: !5786, size: 272)
!5786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 272, elements: !5787)
!5787 = !{!5788}
!5788 = !DISubrange(count: 34)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !5760, file: !407, line: 558, baseType: !5777, size: 64, offset: 192)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !5760, file: !407, line: 563, baseType: !5791, size: 64, offset: 256)
!5791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5792, size: 64)
!5792 = !DISubroutineType(types: !5793)
!5793 = !{!425, !5752}
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !5753, file: !407, line: 723, baseType: !35, size: 64, offset: 192)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !5753, file: !407, line: 726, baseType: !5796, size: 64, offset: 256)
!5796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5797, size: 64)
!5797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5798)
!5798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !407, line: 579, size: 192, elements: !5799)
!5799 = !{!5800, !5804, !5808}
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !5798, file: !407, line: 580, baseType: !5801, size: 64)
!5801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5802, size: 64)
!5802 = !DISubroutineType(types: !5803)
!5803 = !{null, !5752, !7}
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !5798, file: !407, line: 581, baseType: !5805, size: 64, offset: 64)
!5805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5806, size: 64)
!5806 = !DISubroutineType(types: !5807)
!5807 = !{!37, !5752, !7}
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !5798, file: !407, line: 582, baseType: !5801, size: 64, offset: 128)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !5753, file: !407, line: 727, baseType: !5810, size: 256, offset: 320)
!5810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !5811, line: 57, size: 256, elements: !5812)
!5811 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3b60a10bef9e89c790a516317bab43b")
!5812 = !{!5813}
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "rtmutex", scope: !5810, file: !5811, line: 58, baseType: !5814, size: 256)
!5814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_base", file: !5811, line: 23, size: 256, elements: !5815)
!5815 = !{!5816, !5817, !5818}
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !5814, file: !5811, line: 24, baseType: !795, size: 32)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !5814, file: !5811, line: 25, baseType: !3014, size: 128, offset: 64)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5814, file: !5811, line: 26, baseType: !2844, size: 64, offset: 192)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !5753, file: !407, line: 728, baseType: !5810, size: 256, offset: 576)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5753, file: !407, line: 730, baseType: !37, size: 32, offset: 832)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !5753, file: !407, line: 731, baseType: !37, size: 32, offset: 864)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5753, file: !407, line: 732, baseType: !463, size: 5824, offset: 896)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !5753, file: !407, line: 733, baseType: !54, size: 64, offset: 6720)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5753, file: !407, line: 737, baseType: !37, size: 32, offset: 6784)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5753, file: !407, line: 738, baseType: !5826, size: 384, offset: 6816)
!5826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 384, elements: !5827)
!5827 = !{!5828}
!5828 = !DISubrange(count: 48)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !5753, file: !407, line: 739, baseType: !786, size: 256, offset: 7232)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !5753, file: !407, line: 741, baseType: !837, size: 256, offset: 7488)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !5753, file: !407, line: 742, baseType: !112, size: 128, offset: 7744)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !5753, file: !407, line: 744, baseType: !5833, size: 64, offset: 7872)
!5833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5834, size: 64)
!5834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !407, line: 640, size: 832, elements: !5835)
!5835 = !{!5836, !5840, !5841, !5845, !5846, !5847, !5848, !5852, !5853, !5856, !5857, !5860, !5863}
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !5834, file: !407, line: 641, baseType: !5837, size: 64)
!5837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5838, size: 64)
!5838 = !DISubroutineType(types: !5839)
!5839 = !{!37, !5752}
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !5834, file: !407, line: 643, baseType: !5837, size: 64, offset: 64)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !5834, file: !407, line: 644, baseType: !5842, size: 64, offset: 128)
!5842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5843, size: 64)
!5843 = !DISubroutineType(types: !5844)
!5844 = !{null, !5752, !37}
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !5834, file: !407, line: 645, baseType: !5837, size: 64, offset: 192)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !5834, file: !407, line: 646, baseType: !5842, size: 64, offset: 256)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !5834, file: !407, line: 647, baseType: !5837, size: 64, offset: 320)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !5834, file: !407, line: 649, baseType: !5849, size: 64, offset: 384)
!5849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5850, size: 64)
!5850 = !DISubroutineType(types: !5851)
!5851 = !{null, !5752}
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !5834, file: !407, line: 650, baseType: !5849, size: 64, offset: 448)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !5834, file: !407, line: 653, baseType: !5854, size: 64, offset: 512)
!5854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5855, size: 64)
!5855 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !407, line: 653, flags: DIFlagFwdDecl)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !5834, file: !407, line: 654, baseType: !5854, size: 64, offset: 576)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !5834, file: !407, line: 655, baseType: !5858, size: 64, offset: 640)
!5858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5859, size: 64)
!5859 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !407, line: 655, flags: DIFlagFwdDecl)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !5834, file: !407, line: 656, baseType: !5861, size: 64, offset: 704)
!5861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5862, size: 64)
!5862 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !407, line: 656, flags: DIFlagFwdDecl)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !5834, file: !407, line: 657, baseType: !5861, size: 64, offset: 768)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5753, file: !407, line: 745, baseType: !5865, size: 64, offset: 7936)
!5865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5866, size: 64)
!5866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5867)
!5867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !407, line: 686, size: 192, elements: !5868)
!5868 = !{!5869, !5870, !5871, !5872, !5873, !5874}
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5867, file: !407, line: 687, baseType: !652, size: 64)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !5867, file: !407, line: 688, baseType: !37, size: 32, offset: 64)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !5867, file: !407, line: 689, baseType: !108, size: 16, offset: 96)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !5867, file: !407, line: 690, baseType: !108, size: 16, offset: 112)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !5867, file: !407, line: 691, baseType: !108, size: 16, offset: 128)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !5867, file: !407, line: 692, baseType: !108, size: 16, offset: 144)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !5753, file: !407, line: 747, baseType: !5269, size: 64, offset: 8000)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "bus_regulator", scope: !5753, file: !407, line: 748, baseType: !5877, size: 64, offset: 8064)
!5877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5878, size: 64)
!5878 = !DICompositeType(tag: DW_TAG_structure_type, name: "regulator", file: !5879, line: 169, flags: DIFlagFwdDecl)
!5879 = !DIFile(filename: "./include/linux/regulator/consumer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa9aafdb67bf9ffb34156cb06827210c")
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs", scope: !5753, file: !407, line: 750, baseType: !616, size: 64, offset: 8128)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "addrs_in_instantiation", scope: !5753, file: !407, line: 753, baseType: !5882, size: 128, offset: 8192)
!5882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 128, elements: !954)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5746, file: !407, line: 346, baseType: !463, size: 5824, offset: 256)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "init_irq", scope: !5746, file: !407, line: 347, baseType: !37, size: 32, offset: 6080)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5746, file: !407, line: 348, baseType: !37, size: 32, offset: 6112)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "detected", scope: !5746, file: !407, line: 349, baseType: !112, size: 128, offset: 6144)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "devres_group_id", scope: !5746, file: !407, line: 353, baseType: !35, size: 64, offset: 6272)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !403, file: !3, line: 21, baseType: !112, size: 128, offset: 768)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !403, file: !3, line: 22, baseType: !451, size: 8, offset: 896)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "need_deactivate", scope: !403, file: !3, line: 23, baseType: !451, size: 8, offset: 904)
!5891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5892, size: 64)
!5892 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !115)
!5893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5894, size: 64)
!5894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse_smbus_removal_work", file: !3, line: 131, size: 320, elements: !5895)
!5895 = !{!5896, !5897}
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5894, file: !3, line: 132, baseType: !1095, size: 256)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !5894, file: !3, line: 133, baseType: !5745, size: 64, offset: 256)
!5898 = !{!5899, !5904, !5907, !5910, !0, !5912, !5914, !5919, !5927}
!5899 = !DIGlobalVariableExpression(var: !5900, expr: !DIExpression())
!5900 = distinct !DIGlobalVariable(scope: null, file: !3, line: 282, type: !5901, isLocal: true, isDefinition: true)
!5901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 504, elements: !5902)
!5902 = !{!5903}
!5903 = !DISubrange(count: 63)
!5904 = !DIGlobalVariableExpression(var: !5905, expr: !DIExpression())
!5905 = distinct !DIGlobalVariable(scope: null, file: !3, line: 310, type: !5906, isLocal: true, isDefinition: true)
!5906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 112, elements: !3478)
!5907 = !DIGlobalVariableExpression(var: !5908, expr: !DIExpression())
!5908 = distinct !DIGlobalVariable(scope: null, file: !3, line: 316, type: !5909, isLocal: true, isDefinition: true)
!5909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 416, elements: !2026)
!5910 = !DIGlobalVariableExpression(var: !5911, expr: !DIExpression())
!5911 = distinct !DIGlobalVariable(name: "psmouse_smbus_wq", scope: !2, file: !3, line: 29, type: !1156, isLocal: true, isDefinition: true)
!5912 = !DIGlobalVariableExpression(var: !5913, expr: !DIExpression())
!5913 = distinct !DIGlobalVariable(name: "psmouse_smbus_list", scope: !2, file: !3, line: 26, type: !112, isLocal: true, isDefinition: true)
!5914 = !DIGlobalVariableExpression(var: !5915, expr: !DIExpression())
!5915 = distinct !DIGlobalVariable(scope: null, file: !355, line: 480, type: !5916, isLocal: true, isDefinition: true)
!5916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 168, elements: !5917)
!5917 = !{!5918}
!5918 = !DISubrange(count: 21)
!5919 = !DIGlobalVariableExpression(var: !5920, expr: !DIExpression())
!5920 = distinct !DIGlobalVariable(name: "__key", scope: !5921, file: !3, line: 163, type: !1208, isLocal: true, isDefinition: true)
!5921 = distinct !DISubprogram(name: "psmouse_smbus_schedule_remove", scope: !3, file: !3, line: 157, type: !5922, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5924)
!5922 = !DISubroutineType(types: !5923)
!5923 = !{null, !5745}
!5924 = !{!5925, !5926}
!5925 = !DILocalVariable(name: "client", arg: 1, scope: !5921, file: !3, line: 157, type: !5745)
!5926 = !DILocalVariable(name: "rwork", scope: !5921, file: !3, line: 159, type: !5893)
!5927 = !DIGlobalVariableExpression(var: !5928, expr: !DIExpression())
!5928 = distinct !DIGlobalVariable(name: "psmouse_smbus_notifier", scope: !2, file: !3, line: 112, type: !5929, isLocal: true, isDefinition: true)
!5929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !5930, line: 54, size: 192, elements: !5931)
!5930 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!5931 = !{!5932, !5938, !5939}
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !5929, file: !5930, line: 55, baseType: !5933, size: 64)
!5933 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !5930, line: 51, baseType: !5934)
!5934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5935, size: 64)
!5935 = !DISubroutineType(types: !5936)
!5936 = !{!37, !5937, !54, !35}
!5937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5929, size: 64)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5929, file: !5930, line: 56, baseType: !5937, size: 64, offset: 64)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5929, file: !5930, line: 57, baseType: !37, size: 32, offset: 128)
!5940 = !{i32 7, !"Dwarf Version", i32 5}
!5941 = !{i32 2, !"Debug Info Version", i32 3}
!5942 = !{i32 1, !"wchar_size", i32 2}
!5943 = !{i32 8, !"cf-protection-branch", i32 1}
!5944 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5945 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5946 = !{i32 1, !"Code Model", i32 2}
!5947 = !{i32 1, !"override-stack-alignment", i32 8}
!5948 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5949 = distinct !DISubprogram(name: "psmouse_smbus_cleanup", scope: !3, file: !3, line: 218, type: !5738, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5950)
!5950 = !{!5951, !5952, !5953, !5954, !5957, !5959}
!5951 = !DILocalVariable(name: "psmouse", arg: 1, scope: !5949, file: !3, line: 218, type: !5585)
!5952 = !DILocalVariable(name: "smbdev", scope: !5949, file: !3, line: 220, type: !402)
!5953 = !DILocalVariable(name: "tmp", scope: !5949, file: !3, line: 220, type: !402)
!5954 = !DILocalVariable(name: "__mptr", scope: !5955, file: !3, line: 224, type: !35)
!5955 = distinct !DILexicalBlock(scope: !5956, file: !3, line: 224, column: 2)
!5956 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 224, column: 2)
!5957 = !DILocalVariable(name: "__mptr", scope: !5958, file: !3, line: 224, type: !35)
!5958 = distinct !DILexicalBlock(scope: !5956, file: !3, line: 224, column: 2)
!5959 = !DILocalVariable(name: "__mptr", scope: !5960, file: !3, line: 224, type: !35)
!5960 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 224, column: 2)
!5961 = distinct !DILexicalBlock(scope: !5956, file: !3, line: 224, column: 2)
!5962 = !DILocation(line: 218, column: 44, scope: !5949)
!5963 = !DILocation(line: 220, column: 2, scope: !5949)
!5964 = !DILocation(line: 220, column: 28, scope: !5949)
!5965 = !DILocation(line: 220, column: 37, scope: !5949)
!5966 = !DILocation(line: 222, column: 2, scope: !5949)
!5967 = !DILocation(line: 224, column: 2, scope: !5955)
!5968 = !DILocation(line: 224, column: 2, scope: !5956)
!5969 = !DILocation(line: 224, column: 2, scope: !5958)
!5970 = !DILocation(line: 224, column: 2, scope: !5961)
!5971 = !DILocation(line: 225, column: 7, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 225, column: 7)
!5973 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 224, column: 67)
!5974 = !DILocation(line: 225, column: 18, scope: !5972)
!5975 = !DILocation(line: 225, column: 26, scope: !5972)
!5976 = !DILocation(line: 225, column: 15, scope: !5972)
!5977 = !DILocation(line: 225, column: 7, scope: !5973)
!5978 = !DILocation(line: 226, column: 14, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5972, file: !3, line: 225, column: 35)
!5980 = !DILocation(line: 226, column: 22, scope: !5979)
!5981 = !DILocation(line: 226, column: 4, scope: !5979)
!5982 = !DILocation(line: 227, column: 10, scope: !5979)
!5983 = !DILocation(line: 227, column: 4, scope: !5979)
!5984 = !DILocation(line: 228, column: 3, scope: !5979)
!5985 = !DILocation(line: 229, column: 2, scope: !5973)
!5986 = !DILocation(line: 224, column: 2, scope: !5960)
!5987 = distinct !{!5987, !5968, !5988, !5989, !5990}
!5988 = !DILocation(line: 229, column: 2, scope: !5956)
!5989 = !{!"llvm.loop.mustprogress"}
!5990 = !{!"llvm.loop.unroll.disable"}
!5991 = !DILocation(line: 231, column: 2, scope: !5949)
!5992 = !DILocation(line: 232, column: 1, scope: !5949)
!5993 = !DISubprogram(name: "mutex_lock", scope: !838, file: !838, line: 227, type: !5994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5994 = !DISubroutineType(types: !5995)
!5995 = !{null, !5659}
!5996 = distinct !DISubprogram(name: "list_del", scope: !5997, file: !5997, line: 227, type: !5998, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6000)
!5997 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5998 = !DISubroutineType(types: !5999)
!5999 = !{null, !115}
!6000 = !{!6001}
!6001 = !DILocalVariable(name: "entry", arg: 1, scope: !5996, file: !5997, line: 227, type: !115)
!6002 = !DILocation(line: 227, column: 47, scope: !5996)
!6003 = !DILocation(line: 229, column: 19, scope: !5996)
!6004 = !DILocation(line: 229, column: 2, scope: !5996)
!6005 = !DILocation(line: 230, column: 2, scope: !5996)
!6006 = !DILocation(line: 230, column: 9, scope: !5996)
!6007 = !DILocation(line: 230, column: 14, scope: !5996)
!6008 = !DILocation(line: 231, column: 2, scope: !5996)
!6009 = !DILocation(line: 231, column: 9, scope: !5996)
!6010 = !DILocation(line: 231, column: 14, scope: !5996)
!6011 = !DILocation(line: 232, column: 1, scope: !5996)
!6012 = !DISubprogram(name: "kfree", scope: !355, file: !355, line: 227, type: !6013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6013 = !DISubroutineType(types: !6014)
!6014 = !{null, !459}
!6015 = !DISubprogram(name: "mutex_unlock", scope: !838, file: !838, line: 246, type: !5994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6016 = distinct !DISubprogram(name: "psmouse_smbus_init", scope: !3, file: !3, line: 234, type: !6017, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6021)
!6017 = !DISubroutineType(types: !6018)
!6018 = !{!37, !5585, !6019, !459, !50, !451, !451}
!6019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6020, size: 64)
!6020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!6021 = !{!6022, !6023, !6024, !6025, !6026, !6027, !6028, !6029}
!6022 = !DILocalVariable(name: "psmouse", arg: 1, scope: !6016, file: !3, line: 234, type: !5585)
!6023 = !DILocalVariable(name: "board", arg: 2, scope: !6016, file: !3, line: 235, type: !6019)
!6024 = !DILocalVariable(name: "pdata", arg: 3, scope: !6016, file: !3, line: 236, type: !459)
!6025 = !DILocalVariable(name: "pdata_size", arg: 4, scope: !6016, file: !3, line: 236, type: !50)
!6026 = !DILocalVariable(name: "need_deactivate", arg: 5, scope: !6016, file: !3, line: 237, type: !451)
!6027 = !DILocalVariable(name: "leave_breadcrumbs", arg: 6, scope: !6016, file: !3, line: 238, type: !451)
!6028 = !DILocalVariable(name: "smbdev", scope: !6016, file: !3, line: 240, type: !402)
!6029 = !DILocalVariable(name: "error", scope: !6016, file: !3, line: 241, type: !37)
!6030 = !DILocation(line: 234, column: 40, scope: !6016)
!6031 = !DILocation(line: 235, column: 39, scope: !6016)
!6032 = !DILocation(line: 236, column: 22, scope: !6016)
!6033 = !DILocation(line: 236, column: 36, scope: !6016)
!6034 = !DILocation(line: 237, column: 15, scope: !6016)
!6035 = !DILocation(line: 238, column: 15, scope: !6016)
!6036 = !DILocation(line: 240, column: 2, scope: !6016)
!6037 = !DILocation(line: 240, column: 28, scope: !6016)
!6038 = !DILocation(line: 241, column: 2, scope: !6016)
!6039 = !DILocation(line: 241, column: 6, scope: !6016)
!6040 = !DILocation(line: 243, column: 11, scope: !6016)
!6041 = !DILocation(line: 243, column: 9, scope: !6016)
!6042 = !DILocation(line: 244, column: 7, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 244, column: 6)
!6044 = !DILocation(line: 244, column: 6, scope: !6016)
!6045 = !DILocation(line: 245, column: 3, scope: !6043)
!6046 = !DILocation(line: 247, column: 20, scope: !6016)
!6047 = !DILocation(line: 247, column: 2, scope: !6016)
!6048 = !DILocation(line: 247, column: 10, scope: !6016)
!6049 = !DILocation(line: 247, column: 18, scope: !6016)
!6050 = !DILocation(line: 248, column: 2, scope: !6016)
!6051 = !DILocation(line: 248, column: 10, scope: !6016)
!6052 = !DILocation(line: 248, column: 19, scope: !6016)
!6053 = !DILocation(line: 248, column: 18, scope: !6016)
!6054 = !DILocation(line: 249, column: 28, scope: !6016)
!6055 = !{i8 0, i8 2}
!6056 = !DILocation(line: 249, column: 2, scope: !6016)
!6057 = !DILocation(line: 249, column: 10, scope: !6016)
!6058 = !DILocation(line: 249, column: 26, scope: !6016)
!6059 = !DILocation(line: 251, column: 6, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 251, column: 6)
!6061 = !DILocation(line: 251, column: 6, scope: !6016)
!6062 = !DILocation(line: 252, column: 41, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !6060, file: !3, line: 251, column: 13)
!6064 = !DILocation(line: 252, column: 48, scope: !6063)
!6065 = !DILocation(line: 252, column: 33, scope: !6063)
!6066 = !DILocation(line: 252, column: 3, scope: !6063)
!6067 = !DILocation(line: 252, column: 11, scope: !6063)
!6068 = !DILocation(line: 252, column: 17, scope: !6063)
!6069 = !DILocation(line: 252, column: 31, scope: !6063)
!6070 = !DILocation(line: 254, column: 8, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6063, file: !3, line: 254, column: 7)
!6072 = !DILocation(line: 254, column: 16, scope: !6071)
!6073 = !DILocation(line: 254, column: 22, scope: !6071)
!6074 = !DILocation(line: 254, column: 7, scope: !6063)
!6075 = !DILocation(line: 255, column: 10, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !6071, file: !3, line: 254, column: 37)
!6077 = !DILocation(line: 255, column: 4, scope: !6076)
!6078 = !DILocation(line: 256, column: 4, scope: !6076)
!6079 = !DILocation(line: 258, column: 2, scope: !6063)
!6080 = !DILocation(line: 260, column: 6, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 260, column: 6)
!6082 = !DILocation(line: 260, column: 6, scope: !6016)
!6083 = !DILocation(line: 261, column: 22, scope: !6081)
!6084 = !DILocation(line: 261, column: 3, scope: !6081)
!6085 = !DILocation(line: 263, column: 21, scope: !6016)
!6086 = !DILocation(line: 263, column: 2, scope: !6016)
!6087 = !DILocation(line: 263, column: 11, scope: !6016)
!6088 = !DILocation(line: 263, column: 19, scope: !6016)
!6089 = !DILocation(line: 264, column: 2, scope: !6016)
!6090 = !DILocation(line: 264, column: 11, scope: !6016)
!6091 = !DILocation(line: 264, column: 28, scope: !6016)
!6092 = !DILocation(line: 265, column: 2, scope: !6016)
!6093 = !DILocation(line: 265, column: 11, scope: !6016)
!6094 = !DILocation(line: 265, column: 21, scope: !6016)
!6095 = !DILocation(line: 266, column: 2, scope: !6016)
!6096 = !DILocation(line: 266, column: 11, scope: !6016)
!6097 = !DILocation(line: 266, column: 26, scope: !6016)
!6098 = !DILocation(line: 267, column: 2, scope: !6016)
!6099 = !DILocation(line: 267, column: 11, scope: !6016)
!6100 = !DILocation(line: 267, column: 22, scope: !6016)
!6101 = !DILocation(line: 268, column: 2, scope: !6016)
!6102 = !DILocation(line: 268, column: 11, scope: !6016)
!6103 = !DILocation(line: 268, column: 23, scope: !6016)
!6104 = !DILocation(line: 270, column: 2, scope: !6016)
!6105 = !DILocation(line: 271, column: 17, scope: !6016)
!6106 = !DILocation(line: 271, column: 25, scope: !6016)
!6107 = !DILocation(line: 271, column: 2, scope: !6016)
!6108 = !DILocation(line: 272, column: 2, scope: !6016)
!6109 = !DILocation(line: 275, column: 27, scope: !6016)
!6110 = !DILocation(line: 275, column: 10, scope: !6016)
!6111 = !DILocation(line: 275, column: 8, scope: !6016)
!6112 = !DILocation(line: 277, column: 6, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 277, column: 6)
!6114 = !DILocation(line: 277, column: 14, scope: !6113)
!6115 = !DILocation(line: 277, column: 6, scope: !6016)
!6116 = !DILocation(line: 279, column: 25, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !6118, file: !3, line: 279, column: 7)
!6118 = distinct !DILexicalBlock(scope: !6113, file: !3, line: 277, column: 22)
!6119 = !DILocation(line: 279, column: 33, scope: !6117)
!6120 = !DILocation(line: 279, column: 41, scope: !6117)
!6121 = !DILocation(line: 280, column: 11, scope: !6117)
!6122 = !DILocation(line: 280, column: 20, scope: !6117)
!6123 = !DILocation(line: 280, column: 27, scope: !6117)
!6124 = !DILocation(line: 280, column: 34, scope: !6117)
!6125 = !DILocation(line: 279, column: 8, scope: !6117)
!6126 = !DILocation(line: 279, column: 7, scope: !6118)
!6127 = !DILocation(line: 282, column: 4, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6117, file: !3, line: 282, column: 4)
!6129 = !DILocation(line: 282, column: 4, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6128, file: !3, line: 282, column: 4)
!6131 = !DILocation(line: 282, column: 4, scope: !6117)
!6132 = !DILocation(line: 285, column: 3, scope: !6118)
!6133 = !DILocation(line: 292, column: 8, scope: !6016)
!6134 = !DILocation(line: 292, column: 16, scope: !6016)
!6135 = !DILocation(line: 292, column: 22, scope: !6016)
!6136 = !DILocation(line: 292, column: 2, scope: !6016)
!6137 = !DILocation(line: 293, column: 2, scope: !6016)
!6138 = !DILocation(line: 293, column: 10, scope: !6016)
!6139 = !DILocation(line: 293, column: 16, scope: !6016)
!6140 = !DILocation(line: 293, column: 30, scope: !6016)
!6141 = !DILocation(line: 295, column: 6, scope: !6142)
!6142 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 295, column: 6)
!6143 = !DILocation(line: 295, column: 12, scope: !6142)
!6144 = !DILocation(line: 295, column: 16, scope: !6142)
!6145 = !DILocation(line: 295, column: 20, scope: !6142)
!6146 = !DILocation(line: 295, column: 6, scope: !6016)
!6147 = !DILocation(line: 296, column: 3, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6142, file: !3, line: 295, column: 39)
!6149 = !DILocation(line: 297, column: 13, scope: !6148)
!6150 = !DILocation(line: 297, column: 21, scope: !6148)
!6151 = !DILocation(line: 297, column: 3, scope: !6148)
!6152 = !DILocation(line: 298, column: 3, scope: !6148)
!6153 = !DILocation(line: 300, column: 9, scope: !6148)
!6154 = !DILocation(line: 300, column: 3, scope: !6148)
!6155 = !DILocation(line: 301, column: 2, scope: !6148)
!6156 = !DILocation(line: 303, column: 9, scope: !6016)
!6157 = !DILocation(line: 303, column: 15, scope: !6016)
!6158 = !DILocation(line: 303, column: 21, scope: !6016)
!6159 = !DILocation(line: 303, column: 2, scope: !6016)
!6160 = !DILocation(line: 304, column: 1, scope: !6016)
!6161 = distinct !DISubprogram(name: "kzalloc", scope: !355, file: !355, line: 719, type: !6162, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6164)
!6162 = !DISubroutineType(types: !6163)
!6163 = !{!35, !50, !2194}
!6164 = !{!6165, !6166}
!6165 = !DILocalVariable(name: "size", arg: 1, scope: !6161, file: !355, line: 719, type: !50)
!6166 = !DILocalVariable(name: "flags", arg: 2, scope: !6161, file: !355, line: 719, type: !2194)
!6167 = !DILocation(line: 719, column: 52, scope: !6161)
!6168 = !DILocation(line: 719, column: 64, scope: !6161)
!6169 = !DILocation(line: 721, column: 17, scope: !6161)
!6170 = !DILocation(line: 721, column: 23, scope: !6161)
!6171 = !DILocation(line: 721, column: 29, scope: !6161)
!6172 = !DILocation(line: 721, column: 9, scope: !6161)
!6173 = !DILocation(line: 721, column: 2, scope: !6161)
!6174 = !DISubprogram(name: "kmemdup", scope: !6175, file: !6175, line: 219, type: !6176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6175 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6176 = !DISubroutineType(types: !6177)
!6177 = !{!35, !459, !50, !2194}
!6178 = !DISubprogram(name: "psmouse_deactivate", scope: !291, file: !291, line: 142, type: !5698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6179 = distinct !DISubprogram(name: "psmouse_smbus_process_byte", scope: !3, file: !3, line: 116, type: !5722, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6180)
!6180 = !{!6181}
!6181 = !DILocalVariable(name: "psmouse", arg: 1, scope: !6179, file: !3, line: 116, type: !5585)
!6182 = !DILocation(line: 116, column: 65, scope: !6179)
!6183 = !DILocation(line: 118, column: 2, scope: !6179)
!6184 = distinct !DISubprogram(name: "psmouse_smbus_reconnect", scope: !3, file: !3, line: 121, type: !5698, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6185)
!6185 = !{!6186, !6187}
!6186 = !DILocalVariable(name: "psmouse", arg: 1, scope: !6184, file: !3, line: 121, type: !5585)
!6187 = !DILocalVariable(name: "smbdev", scope: !6184, file: !3, line: 123, type: !402)
!6188 = !DILocation(line: 121, column: 52, scope: !6184)
!6189 = !DILocation(line: 123, column: 2, scope: !6184)
!6190 = !DILocation(line: 123, column: 28, scope: !6184)
!6191 = !DILocation(line: 123, column: 37, scope: !6184)
!6192 = !DILocation(line: 123, column: 46, scope: !6184)
!6193 = !DILocation(line: 125, column: 6, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !6184, file: !3, line: 125, column: 6)
!6195 = !DILocation(line: 125, column: 14, scope: !6194)
!6196 = !DILocation(line: 125, column: 6, scope: !6184)
!6197 = !DILocation(line: 126, column: 22, scope: !6194)
!6198 = !DILocation(line: 126, column: 3, scope: !6194)
!6199 = !DILocation(line: 129, column: 1, scope: !6184)
!6200 = !DILocation(line: 128, column: 2, scope: !6184)
!6201 = distinct !DISubprogram(name: "psmouse_smbus_disconnect", scope: !3, file: !3, line: 170, type: !5738, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6202)
!6202 = !{!6203, !6204}
!6203 = !DILocalVariable(name: "psmouse", arg: 1, scope: !6201, file: !3, line: 170, type: !5585)
!6204 = !DILocalVariable(name: "smbdev", scope: !6201, file: !3, line: 172, type: !402)
!6205 = !DILocation(line: 170, column: 54, scope: !6201)
!6206 = !DILocation(line: 172, column: 2, scope: !6201)
!6207 = !DILocation(line: 172, column: 28, scope: !6201)
!6208 = !DILocation(line: 172, column: 37, scope: !6201)
!6209 = !DILocation(line: 172, column: 46, scope: !6201)
!6210 = !DILocation(line: 174, column: 2, scope: !6201)
!6211 = !DILocation(line: 176, column: 6, scope: !6212)
!6212 = distinct !DILexicalBlock(scope: !6201, file: !3, line: 176, column: 6)
!6213 = !DILocation(line: 176, column: 14, scope: !6212)
!6214 = !DILocation(line: 176, column: 6, scope: !6201)
!6215 = !DILocation(line: 177, column: 13, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !6212, file: !3, line: 176, column: 20)
!6217 = !DILocation(line: 177, column: 21, scope: !6216)
!6218 = !DILocation(line: 177, column: 3, scope: !6216)
!6219 = !DILocation(line: 178, column: 9, scope: !6216)
!6220 = !DILocation(line: 178, column: 3, scope: !6216)
!6221 = !DILocation(line: 179, column: 2, scope: !6216)
!6222 = !DILocation(line: 180, column: 3, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !6212, file: !3, line: 179, column: 9)
!6224 = !DILocation(line: 180, column: 11, scope: !6223)
!6225 = !DILocation(line: 180, column: 16, scope: !6223)
!6226 = !DILocation(line: 181, column: 23, scope: !6223)
!6227 = !DILocation(line: 181, column: 31, scope: !6223)
!6228 = !DILocation(line: 181, column: 39, scope: !6223)
!6229 = !DILocation(line: 182, column: 9, scope: !6223)
!6230 = !DILocation(line: 182, column: 18, scope: !6223)
!6231 = !DILocation(line: 182, column: 25, scope: !6223)
!6232 = !DILocation(line: 182, column: 32, scope: !6223)
!6233 = !DILocation(line: 181, column: 3, scope: !6223)
!6234 = !DILocation(line: 186, column: 33, scope: !6223)
!6235 = !DILocation(line: 186, column: 41, scope: !6223)
!6236 = !DILocation(line: 186, column: 3, scope: !6223)
!6237 = !DILocation(line: 189, column: 2, scope: !6201)
!6238 = !DILocation(line: 191, column: 2, scope: !6201)
!6239 = !DILocation(line: 191, column: 11, scope: !6201)
!6240 = !DILocation(line: 191, column: 19, scope: !6201)
!6241 = !DILocation(line: 192, column: 1, scope: !6201)
!6242 = distinct !DISubprogram(name: "list_add_tail", scope: !5997, file: !5997, line: 181, type: !6243, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6245)
!6243 = !DISubroutineType(types: !6244)
!6244 = !{null, !115, !115}
!6245 = !{!6246, !6247}
!6246 = !DILocalVariable(name: "new", arg: 1, scope: !6242, file: !5997, line: 181, type: !115)
!6247 = !DILocalVariable(name: "head", arg: 2, scope: !6242, file: !5997, line: 181, type: !115)
!6248 = !DILocation(line: 181, column: 52, scope: !6242)
!6249 = !DILocation(line: 181, column: 75, scope: !6242)
!6250 = !DILocation(line: 183, column: 13, scope: !6242)
!6251 = !DILocation(line: 183, column: 18, scope: !6242)
!6252 = !DILocation(line: 183, column: 24, scope: !6242)
!6253 = !DILocation(line: 183, column: 30, scope: !6242)
!6254 = !DILocation(line: 183, column: 2, scope: !6242)
!6255 = !DILocation(line: 184, column: 1, scope: !6242)
!6256 = !DISubprogram(name: "i2c_for_each_dev", scope: !407, file: !407, line: 780, type: !6257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6257 = !DISubroutineType(types: !6258)
!6258 = !{!37, !35, !6259}
!6259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6260, size: 64)
!6260 = !DISubroutineType(types: !6261)
!6261 = !{!37, !2768, !35}
!6262 = distinct !DISubprogram(name: "psmouse_smbus_create_companion", scope: !3, file: !3, line: 194, type: !6260, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6263)
!6263 = !{!6264, !6265, !6266, !6267, !6269, !6270}
!6264 = !DILocalVariable(name: "dev", arg: 1, scope: !6262, file: !3, line: 194, type: !2768)
!6265 = !DILocalVariable(name: "data", arg: 2, scope: !6262, file: !3, line: 194, type: !35)
!6266 = !DILocalVariable(name: "smbdev", scope: !6262, file: !3, line: 196, type: !402)
!6267 = !DILocalVariable(name: "addr_list", scope: !6262, file: !3, line: 197, type: !6268)
!6268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 32, elements: !954)
!6269 = !DILocalVariable(name: "adapter", scope: !6262, file: !3, line: 198, type: !5752)
!6270 = !DILocalVariable(name: "client", scope: !6262, file: !3, line: 199, type: !5745)
!6271 = !DILocation(line: 194, column: 58, scope: !6262)
!6272 = !DILocation(line: 194, column: 69, scope: !6262)
!6273 = !DILocation(line: 196, column: 2, scope: !6262)
!6274 = !DILocation(line: 196, column: 28, scope: !6262)
!6275 = !DILocation(line: 196, column: 37, scope: !6262)
!6276 = !DILocation(line: 197, column: 2, scope: !6262)
!6277 = !DILocation(line: 197, column: 17, scope: !6262)
!6278 = !DILocation(line: 197, column: 31, scope: !6262)
!6279 = !DILocation(line: 197, column: 33, scope: !6262)
!6280 = !DILocation(line: 197, column: 41, scope: !6262)
!6281 = !DILocation(line: 197, column: 47, scope: !6262)
!6282 = !DILocation(line: 198, column: 2, scope: !6262)
!6283 = !DILocation(line: 198, column: 22, scope: !6262)
!6284 = !DILocation(line: 199, column: 2, scope: !6262)
!6285 = !DILocation(line: 199, column: 21, scope: !6262)
!6286 = !DILocation(line: 201, column: 31, scope: !6262)
!6287 = !DILocation(line: 201, column: 12, scope: !6262)
!6288 = !DILocation(line: 201, column: 10, scope: !6262)
!6289 = !DILocation(line: 202, column: 7, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6262, file: !3, line: 202, column: 6)
!6291 = !DILocation(line: 202, column: 6, scope: !6262)
!6292 = !DILocation(line: 203, column: 3, scope: !6290)
!6293 = !DILocation(line: 205, column: 31, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6262, file: !3, line: 205, column: 6)
!6295 = !DILocation(line: 205, column: 7, scope: !6294)
!6296 = !DILocation(line: 205, column: 6, scope: !6262)
!6297 = !DILocation(line: 206, column: 3, scope: !6294)
!6298 = !DILocation(line: 208, column: 34, scope: !6262)
!6299 = !DILocation(line: 208, column: 44, scope: !6262)
!6300 = !DILocation(line: 208, column: 52, scope: !6262)
!6301 = !DILocation(line: 209, column: 6, scope: !6262)
!6302 = !DILocation(line: 208, column: 11, scope: !6262)
!6303 = !DILocation(line: 208, column: 9, scope: !6262)
!6304 = !DILocation(line: 210, column: 13, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6262, file: !3, line: 210, column: 6)
!6306 = !DILocation(line: 210, column: 6, scope: !6305)
!6307 = !DILocation(line: 210, column: 6, scope: !6262)
!6308 = !DILocation(line: 211, column: 3, scope: !6305)
!6309 = !DILocation(line: 214, column: 19, scope: !6262)
!6310 = !DILocation(line: 214, column: 2, scope: !6262)
!6311 = !DILocation(line: 214, column: 10, scope: !6262)
!6312 = !DILocation(line: 214, column: 17, scope: !6262)
!6313 = !DILocation(line: 215, column: 2, scope: !6262)
!6314 = !DILocation(line: 216, column: 1, scope: !6262)
!6315 = !DISubprogram(name: "device_link_add", scope: !146, file: !146, line: 1250, type: !6316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6316 = !DISubroutineType(types: !6317)
!6317 = !{!6318, !2768, !2768, !425}
!6318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6319, size: 64)
!6319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_link", file: !146, line: 824, size: 6656, elements: !6320)
!6320 = !{!6321, !6322, !6323, !6324, !6325, !6326, !6327, !6328, !6329, !6330, !6331}
!6321 = !DIDerivedType(tag: DW_TAG_member, name: "supplier", scope: !6319, file: !146, line: 825, baseType: !2768, size: 64)
!6322 = !DIDerivedType(tag: DW_TAG_member, name: "s_node", scope: !6319, file: !146, line: 826, baseType: !112, size: 128, offset: 64)
!6323 = !DIDerivedType(tag: DW_TAG_member, name: "consumer", scope: !6319, file: !146, line: 827, baseType: !2768, size: 64, offset: 192)
!6324 = !DIDerivedType(tag: DW_TAG_member, name: "c_node", scope: !6319, file: !146, line: 828, baseType: !112, size: 128, offset: 256)
!6325 = !DIDerivedType(tag: DW_TAG_member, name: "link_dev", scope: !6319, file: !146, line: 829, baseType: !463, size: 5824, offset: 384)
!6326 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !6319, file: !146, line: 830, baseType: !341, size: 32, offset: 6208)
!6327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6319, file: !146, line: 831, baseType: !425, size: 32, offset: 6240)
!6328 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_active", scope: !6319, file: !146, line: 832, baseType: !1380, size: 32, offset: 6272)
!6329 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !6319, file: !146, line: 833, baseType: !2721, size: 32, offset: 6304)
!6330 = !DIDerivedType(tag: DW_TAG_member, name: "rm_work", scope: !6319, file: !146, line: 834, baseType: !1095, size: 256, offset: 6336)
!6331 = !DIDerivedType(tag: DW_TAG_member, name: "supplier_preactivated", scope: !6319, file: !146, line: 835, baseType: !451, size: 8, offset: 6592)
!6332 = !DISubprogram(name: "_dev_warn", scope: !6333, file: !6333, line: 52, type: !6334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6333 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6334 = !DISubroutineType(types: !6335)
!6335 = !{null, !461, !31, null}
!6336 = distinct !DISubprogram(name: "dev_name", scope: !146, file: !146, line: 858, type: !6337, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6339)
!6337 = !DISubroutineType(types: !6338)
!6338 = !{!31, !461}
!6339 = !{!6340}
!6340 = !DILocalVariable(name: "dev", arg: 1, scope: !6336, file: !146, line: 858, type: !461)
!6341 = !DILocation(line: 858, column: 57, scope: !6336)
!6342 = !DILocation(line: 861, column: 6, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6336, file: !146, line: 861, column: 6)
!6344 = !DILocation(line: 861, column: 11, scope: !6343)
!6345 = !DILocation(line: 861, column: 6, scope: !6336)
!6346 = !DILocation(line: 862, column: 10, scope: !6343)
!6347 = !DILocation(line: 862, column: 15, scope: !6343)
!6348 = !DILocation(line: 862, column: 3, scope: !6343)
!6349 = !DILocation(line: 864, column: 23, scope: !6336)
!6350 = !DILocation(line: 864, column: 28, scope: !6336)
!6351 = !DILocation(line: 864, column: 9, scope: !6336)
!6352 = !DILocation(line: 864, column: 2, scope: !6336)
!6353 = !DILocation(line: 865, column: 1, scope: !6336)
!6354 = distinct !DISubprogram(name: "psmouse_smbus_module_init", scope: !3, file: !3, line: 306, type: !929, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6355)
!6355 = !{!6356}
!6356 = !DILocalVariable(name: "error", scope: !6354, file: !3, line: 308, type: !37)
!6357 = !DILocation(line: 308, column: 2, scope: !6354)
!6358 = !DILocation(line: 308, column: 6, scope: !6354)
!6359 = !DILocation(line: 310, column: 21, scope: !6354)
!6360 = !DILocation(line: 310, column: 19, scope: !6354)
!6361 = !DILocation(line: 311, column: 7, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6354, file: !3, line: 311, column: 6)
!6363 = !DILocation(line: 311, column: 6, scope: !6354)
!6364 = !DILocation(line: 312, column: 3, scope: !6362)
!6365 = !DILocation(line: 314, column: 10, scope: !6354)
!6366 = !DILocation(line: 314, column: 8, scope: !6354)
!6367 = !DILocation(line: 315, column: 6, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6354, file: !3, line: 315, column: 6)
!6369 = !DILocation(line: 315, column: 6, scope: !6354)
!6370 = !DILocation(line: 316, column: 3, scope: !6371)
!6371 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 316, column: 3)
!6372 = distinct !DILexicalBlock(scope: !6368, file: !3, line: 315, column: 13)
!6373 = !DILocation(line: 316, column: 3, scope: !6374)
!6374 = distinct !DILexicalBlock(scope: !6371, file: !3, line: 316, column: 3)
!6375 = !DILocation(line: 317, column: 21, scope: !6372)
!6376 = !DILocation(line: 317, column: 3, scope: !6372)
!6377 = !DILocation(line: 318, column: 10, scope: !6372)
!6378 = !DILocation(line: 318, column: 3, scope: !6372)
!6379 = !DILocation(line: 321, column: 2, scope: !6354)
!6380 = !DILocation(line: 322, column: 1, scope: !6354)
!6381 = !DISubprogram(name: "alloc_workqueue", scope: !365, file: !365, line: 461, type: !6382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6382 = !DISubroutineType(types: !6383)
!6383 = !{!1156, !31, !7, !37, null}
!6384 = !DISubprogram(name: "bus_register_notifier", scope: !391, file: !391, line: 246, type: !6385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6385 = !DISubroutineType(types: !6386)
!6386 = !{!37, !5066, !5937}
!6387 = !DISubprogram(name: "_printk", scope: !6388, file: !6388, line: 153, type: !6389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6388 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6389 = !DISubroutineType(types: !6390)
!6390 = !{!37, !31, null}
!6391 = !DISubprogram(name: "destroy_workqueue", scope: !365, file: !365, line: 488, type: !6392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6392 = !DISubroutineType(types: !6393)
!6393 = !{null, !1156}
!6394 = distinct !DISubprogram(name: "psmouse_smbus_module_exit", scope: !3, file: !3, line: 324, type: !1199, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6395 = !DILocation(line: 326, column: 2, scope: !6394)
!6396 = !DILocation(line: 327, column: 20, scope: !6394)
!6397 = !DILocation(line: 327, column: 2, scope: !6394)
!6398 = !DILocation(line: 328, column: 1, scope: !6394)
!6399 = !DISubprogram(name: "bus_unregister_notifier", scope: !391, file: !391, line: 247, type: !6385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6400 = distinct !DISubprogram(name: "__list_del_entry", scope: !5997, file: !5997, line: 213, type: !5998, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6401)
!6401 = !{!6402}
!6402 = !DILocalVariable(name: "entry", arg: 1, scope: !6400, file: !5997, line: 213, type: !115)
!6403 = !DILocation(line: 213, column: 55, scope: !6400)
!6404 = !DILocation(line: 215, column: 30, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6400, file: !5997, line: 215, column: 6)
!6406 = !DILocation(line: 215, column: 7, scope: !6405)
!6407 = !DILocation(line: 215, column: 6, scope: !6400)
!6408 = !DILocation(line: 216, column: 3, scope: !6405)
!6409 = !DILocation(line: 218, column: 13, scope: !6400)
!6410 = !DILocation(line: 218, column: 20, scope: !6400)
!6411 = !DILocation(line: 218, column: 26, scope: !6400)
!6412 = !DILocation(line: 218, column: 33, scope: !6400)
!6413 = !DILocation(line: 218, column: 2, scope: !6400)
!6414 = !DILocation(line: 219, column: 1, scope: !6400)
!6415 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5997, file: !5997, line: 134, type: !6416, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6418)
!6416 = !DISubroutineType(types: !6417)
!6417 = !{!451, !115}
!6418 = !{!6419}
!6419 = !DILocalVariable(name: "entry", arg: 1, scope: !6415, file: !5997, line: 134, type: !115)
!6420 = !DILocation(line: 134, column: 61, scope: !6415)
!6421 = !DILocation(line: 136, column: 2, scope: !6415)
!6422 = distinct !DISubprogram(name: "__list_del", scope: !5997, file: !5997, line: 193, type: !6243, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6423)
!6423 = !{!6424, !6425}
!6424 = !DILocalVariable(name: "prev", arg: 1, scope: !6422, file: !5997, line: 193, type: !115)
!6425 = !DILocalVariable(name: "next", arg: 2, scope: !6422, file: !5997, line: 193, type: !115)
!6426 = !DILocation(line: 193, column: 50, scope: !6422)
!6427 = !DILocation(line: 193, column: 75, scope: !6422)
!6428 = !DILocation(line: 195, column: 15, scope: !6422)
!6429 = !DILocation(line: 195, column: 2, scope: !6422)
!6430 = !DILocation(line: 195, column: 8, scope: !6422)
!6431 = !DILocation(line: 195, column: 13, scope: !6422)
!6432 = !DILocation(line: 196, column: 2, scope: !6422)
!6433 = !DILocation(line: 196, column: 2, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6422, file: !5997, line: 196, column: 2)
!6435 = !DILocation(line: 196, column: 2, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6434, file: !5997, line: 196, column: 2)
!6437 = !DILocation(line: 196, column: 2, scope: !6438)
!6438 = distinct !DILexicalBlock(scope: !6434, file: !5997, line: 196, column: 2)
!6439 = !DILocation(line: 197, column: 1, scope: !6422)
!6440 = distinct !DISubprogram(name: "kmalloc", scope: !355, file: !355, line: 591, type: !6162, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6441)
!6441 = !{!6442, !6443, !6444}
!6442 = !DILocalVariable(name: "size", arg: 1, scope: !6440, file: !355, line: 591, type: !50)
!6443 = !DILocalVariable(name: "flags", arg: 2, scope: !6440, file: !355, line: 591, type: !2194)
!6444 = !DILocalVariable(name: "index", scope: !6445, file: !355, line: 594, type: !7)
!6445 = distinct !DILexicalBlock(scope: !6446, file: !355, line: 593, column: 42)
!6446 = distinct !DILexicalBlock(scope: !6440, file: !355, line: 593, column: 6)
!6447 = !DILocation(line: 591, column: 61, scope: !6440)
!6448 = !DILocation(line: 591, column: 73, scope: !6440)
!6449 = !DILocation(line: 593, column: 27, scope: !6446)
!6450 = !DILocation(line: 593, column: 6, scope: !6446)
!6451 = !DILocation(line: 593, column: 33, scope: !6446)
!6452 = !DILocation(line: 593, column: 36, scope: !6446)
!6453 = !DILocation(line: 593, column: 6, scope: !6440)
!6454 = !DILocation(line: 594, column: 3, scope: !6445)
!6455 = !DILocation(line: 594, column: 16, scope: !6445)
!6456 = !DILocation(line: 596, column: 7, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6445, file: !355, line: 596, column: 7)
!6458 = !DILocation(line: 596, column: 12, scope: !6457)
!6459 = !DILocation(line: 596, column: 7, scope: !6445)
!6460 = !DILocation(line: 597, column: 25, scope: !6457)
!6461 = !DILocation(line: 597, column: 31, scope: !6457)
!6462 = !DILocation(line: 597, column: 11, scope: !6457)
!6463 = !DILocation(line: 597, column: 4, scope: !6457)
!6464 = !DILocation(line: 599, column: 11, scope: !6445)
!6465 = !DILocation(line: 599, column: 9, scope: !6445)
!6466 = !DILocation(line: 601, column: 33, scope: !6445)
!6467 = !DILocation(line: 601, column: 40, scope: !6445)
!6468 = !DILocation(line: 601, column: 20, scope: !6445)
!6469 = !DILocation(line: 601, column: 5, scope: !6445)
!6470 = !DILocation(line: 601, column: 51, scope: !6445)
!6471 = !DILocation(line: 602, column: 5, scope: !6445)
!6472 = !DILocation(line: 602, column: 12, scope: !6445)
!6473 = !DILocation(line: 600, column: 10, scope: !6445)
!6474 = !DILocation(line: 600, column: 3, scope: !6445)
!6475 = !DILocation(line: 603, column: 2, scope: !6446)
!6476 = !DILocation(line: 604, column: 19, scope: !6440)
!6477 = !DILocation(line: 604, column: 25, scope: !6440)
!6478 = !DILocation(line: 604, column: 9, scope: !6440)
!6479 = !DILocation(line: 604, column: 2, scope: !6440)
!6480 = !DILocation(line: 605, column: 1, scope: !6440)
!6481 = !DISubprogram(name: "kmalloc_large", scope: !355, file: !355, line: 531, type: !6162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6482 = distinct !DISubprogram(name: "__kmalloc_index", scope: !355, file: !355, line: 444, type: !6483, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6485)
!6483 = !DISubroutineType(types: !6484)
!6484 = !{!7, !50, !451}
!6485 = !{!6486, !6487}
!6486 = !DILocalVariable(name: "size", arg: 1, scope: !6482, file: !355, line: 444, type: !50)
!6487 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6482, file: !355, line: 445, type: !451)
!6488 = !DILocation(line: 444, column: 60, scope: !6482)
!6489 = !DILocation(line: 445, column: 16, scope: !6482)
!6490 = !DILocation(line: 447, column: 7, scope: !6491)
!6491 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 447, column: 6)
!6492 = !DILocation(line: 447, column: 6, scope: !6482)
!6493 = !DILocation(line: 448, column: 3, scope: !6491)
!6494 = !DILocation(line: 450, column: 6, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 450, column: 6)
!6496 = !DILocation(line: 450, column: 11, scope: !6495)
!6497 = !DILocation(line: 450, column: 6, scope: !6482)
!6498 = !DILocation(line: 451, column: 3, scope: !6495)
!6499 = !DILocation(line: 453, column: 32, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 453, column: 6)
!6501 = !DILocation(line: 453, column: 37, scope: !6500)
!6502 = !DILocation(line: 453, column: 42, scope: !6500)
!6503 = !DILocation(line: 453, column: 45, scope: !6500)
!6504 = !DILocation(line: 453, column: 50, scope: !6500)
!6505 = !DILocation(line: 453, column: 6, scope: !6482)
!6506 = !DILocation(line: 454, column: 3, scope: !6500)
!6507 = !DILocation(line: 455, column: 32, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 455, column: 6)
!6509 = !DILocation(line: 455, column: 37, scope: !6508)
!6510 = !DILocation(line: 455, column: 43, scope: !6508)
!6511 = !DILocation(line: 455, column: 46, scope: !6508)
!6512 = !DILocation(line: 455, column: 51, scope: !6508)
!6513 = !DILocation(line: 455, column: 6, scope: !6482)
!6514 = !DILocation(line: 456, column: 3, scope: !6508)
!6515 = !DILocation(line: 457, column: 6, scope: !6516)
!6516 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 457, column: 6)
!6517 = !DILocation(line: 457, column: 11, scope: !6516)
!6518 = !DILocation(line: 457, column: 6, scope: !6482)
!6519 = !DILocation(line: 457, column: 26, scope: !6516)
!6520 = !DILocation(line: 458, column: 6, scope: !6521)
!6521 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 458, column: 6)
!6522 = !DILocation(line: 458, column: 11, scope: !6521)
!6523 = !DILocation(line: 458, column: 6, scope: !6482)
!6524 = !DILocation(line: 458, column: 26, scope: !6521)
!6525 = !DILocation(line: 459, column: 6, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 459, column: 6)
!6527 = !DILocation(line: 459, column: 11, scope: !6526)
!6528 = !DILocation(line: 459, column: 6, scope: !6482)
!6529 = !DILocation(line: 459, column: 26, scope: !6526)
!6530 = !DILocation(line: 460, column: 6, scope: !6531)
!6531 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 460, column: 6)
!6532 = !DILocation(line: 460, column: 11, scope: !6531)
!6533 = !DILocation(line: 460, column: 6, scope: !6482)
!6534 = !DILocation(line: 460, column: 26, scope: !6531)
!6535 = !DILocation(line: 461, column: 6, scope: !6536)
!6536 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 461, column: 6)
!6537 = !DILocation(line: 461, column: 11, scope: !6536)
!6538 = !DILocation(line: 461, column: 6, scope: !6482)
!6539 = !DILocation(line: 461, column: 26, scope: !6536)
!6540 = !DILocation(line: 462, column: 6, scope: !6541)
!6541 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 462, column: 6)
!6542 = !DILocation(line: 462, column: 11, scope: !6541)
!6543 = !DILocation(line: 462, column: 6, scope: !6482)
!6544 = !DILocation(line: 462, column: 26, scope: !6541)
!6545 = !DILocation(line: 463, column: 6, scope: !6546)
!6546 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 463, column: 6)
!6547 = !DILocation(line: 463, column: 11, scope: !6546)
!6548 = !DILocation(line: 463, column: 6, scope: !6482)
!6549 = !DILocation(line: 463, column: 26, scope: !6546)
!6550 = !DILocation(line: 464, column: 6, scope: !6551)
!6551 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 464, column: 6)
!6552 = !DILocation(line: 464, column: 11, scope: !6551)
!6553 = !DILocation(line: 464, column: 6, scope: !6482)
!6554 = !DILocation(line: 464, column: 26, scope: !6551)
!6555 = !DILocation(line: 465, column: 6, scope: !6556)
!6556 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 465, column: 6)
!6557 = !DILocation(line: 465, column: 11, scope: !6556)
!6558 = !DILocation(line: 465, column: 6, scope: !6482)
!6559 = !DILocation(line: 465, column: 26, scope: !6556)
!6560 = !DILocation(line: 466, column: 6, scope: !6561)
!6561 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 466, column: 6)
!6562 = !DILocation(line: 466, column: 11, scope: !6561)
!6563 = !DILocation(line: 466, column: 6, scope: !6482)
!6564 = !DILocation(line: 466, column: 26, scope: !6561)
!6565 = !DILocation(line: 467, column: 6, scope: !6566)
!6566 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 467, column: 6)
!6567 = !DILocation(line: 467, column: 11, scope: !6566)
!6568 = !DILocation(line: 467, column: 6, scope: !6482)
!6569 = !DILocation(line: 467, column: 26, scope: !6566)
!6570 = !DILocation(line: 468, column: 6, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 468, column: 6)
!6572 = !DILocation(line: 468, column: 11, scope: !6571)
!6573 = !DILocation(line: 468, column: 6, scope: !6482)
!6574 = !DILocation(line: 468, column: 26, scope: !6571)
!6575 = !DILocation(line: 469, column: 6, scope: !6576)
!6576 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 469, column: 6)
!6577 = !DILocation(line: 469, column: 11, scope: !6576)
!6578 = !DILocation(line: 469, column: 6, scope: !6482)
!6579 = !DILocation(line: 469, column: 26, scope: !6576)
!6580 = !DILocation(line: 470, column: 6, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 470, column: 6)
!6582 = !DILocation(line: 470, column: 11, scope: !6581)
!6583 = !DILocation(line: 470, column: 6, scope: !6482)
!6584 = !DILocation(line: 470, column: 26, scope: !6581)
!6585 = !DILocation(line: 471, column: 6, scope: !6586)
!6586 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 471, column: 6)
!6587 = !DILocation(line: 471, column: 11, scope: !6586)
!6588 = !DILocation(line: 471, column: 6, scope: !6482)
!6589 = !DILocation(line: 471, column: 26, scope: !6586)
!6590 = !DILocation(line: 472, column: 6, scope: !6591)
!6591 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 472, column: 6)
!6592 = !DILocation(line: 472, column: 11, scope: !6591)
!6593 = !DILocation(line: 472, column: 6, scope: !6482)
!6594 = !DILocation(line: 472, column: 26, scope: !6591)
!6595 = !DILocation(line: 473, column: 6, scope: !6596)
!6596 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 473, column: 6)
!6597 = !DILocation(line: 473, column: 11, scope: !6596)
!6598 = !DILocation(line: 473, column: 6, scope: !6482)
!6599 = !DILocation(line: 473, column: 26, scope: !6596)
!6600 = !DILocation(line: 474, column: 6, scope: !6601)
!6601 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 474, column: 6)
!6602 = !DILocation(line: 474, column: 11, scope: !6601)
!6603 = !DILocation(line: 474, column: 6, scope: !6482)
!6604 = !DILocation(line: 474, column: 27, scope: !6601)
!6605 = !DILocation(line: 475, column: 6, scope: !6606)
!6606 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 475, column: 6)
!6607 = !DILocation(line: 475, column: 11, scope: !6606)
!6608 = !DILocation(line: 475, column: 6, scope: !6482)
!6609 = !DILocation(line: 475, column: 32, scope: !6606)
!6610 = !DILocation(line: 477, column: 50, scope: !6611)
!6611 = distinct !DILexicalBlock(scope: !6482, file: !355, line: 477, column: 6)
!6612 = !DILocation(line: 477, column: 6, scope: !6482)
!6613 = !DILocation(line: 478, column: 3, scope: !6611)
!6614 = !DILocation(line: 478, column: 3, scope: !6615)
!6615 = distinct !DILexicalBlock(scope: !6616, file: !355, line: 478, column: 3)
!6616 = distinct !DILexicalBlock(scope: !6611, file: !355, line: 478, column: 3)
!6617 = !{i32 -2142371344}
!6618 = !DILocation(line: 478, column: 3, scope: !6616)
!6619 = !DILocation(line: 480, column: 3, scope: !6611)
!6620 = !DILocation(line: 480, column: 3, scope: !6621)
!6621 = distinct !DILexicalBlock(scope: !6611, file: !355, line: 480, column: 3)
!6622 = !DILocation(line: 480, column: 3, scope: !6623)
!6623 = distinct !DILexicalBlock(scope: !6621, file: !355, line: 480, column: 3)
!6624 = !DILocation(line: 480, column: 3, scope: !6625)
!6625 = distinct !DILexicalBlock(scope: !6621, file: !355, line: 480, column: 3)
!6626 = !{i64 2152596155, i64 2152596184, i64 2152596230, i64 2152596288, i64 2152596342, i64 2152596396, i64 2152596451, i64 2152596482}
!6627 = !DILocation(line: 483, column: 2, scope: !6482)
!6628 = !DILocation(line: 484, column: 1, scope: !6482)
!6629 = !DISubprogram(name: "kmalloc_trace", scope: !355, file: !355, line: 525, type: !6630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6630 = !DISubroutineType(types: !6631)
!6631 = !{!35, !6632, !2194, !50}
!6632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6633, size: 64)
!6633 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6634, line: 11, flags: DIFlagFwdDecl)
!6634 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6635 = distinct !DISubprogram(name: "kmalloc_type", scope: !355, file: !355, line: 401, type: !6636, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6638)
!6636 = !DISubroutineType(types: !6637)
!6637 = !{!354, !2194, !54}
!6638 = !{!6639, !6640}
!6639 = !DILocalVariable(name: "flags", arg: 1, scope: !6635, file: !355, line: 401, type: !2194)
!6640 = !DILocalVariable(name: "caller", arg: 2, scope: !6635, file: !355, line: 401, type: !54)
!6641 = !DILocation(line: 401, column: 67, scope: !6635)
!6642 = !DILocation(line: 401, column: 88, scope: !6635)
!6643 = !DILocation(line: 407, column: 6, scope: !6644)
!6644 = distinct !DILexicalBlock(scope: !6635, file: !355, line: 407, column: 6)
!6645 = !DILocation(line: 407, column: 6, scope: !6635)
!6646 = !DILocation(line: 413, column: 3, scope: !6644)
!6647 = !DILocation(line: 423, column: 38, scope: !6648)
!6648 = distinct !DILexicalBlock(scope: !6635, file: !355, line: 423, column: 6)
!6649 = !DILocation(line: 423, column: 44, scope: !6648)
!6650 = !DILocation(line: 423, column: 6, scope: !6635)
!6651 = !DILocation(line: 424, column: 3, scope: !6648)
!6652 = !DILocation(line: 426, column: 3, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6635, file: !355, line: 425, column: 6)
!6654 = !DILocation(line: 429, column: 1, scope: !6635)
!6655 = !DISubprogram(name: "__kmalloc", scope: !355, file: !355, line: 488, type: !6162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6656 = !DISubprogram(name: "__compiletime_assert_204", scope: !355, file: !355, line: 478, type: !1199, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6657 = !DISubprogram(name: "device_link_remove", scope: !146, file: !146, line: 1253, type: !6658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6658 = !DISubroutineType(types: !6659)
!6659 = !{null, !35, !2768}
!6660 = !DILocation(line: 157, column: 62, scope: !5921)
!6661 = !DILocation(line: 159, column: 2, scope: !5921)
!6662 = !DILocation(line: 159, column: 37, scope: !5921)
!6663 = !DILocation(line: 161, column: 10, scope: !5921)
!6664 = !DILocation(line: 161, column: 8, scope: !5921)
!6665 = !DILocation(line: 162, column: 6, scope: !6666)
!6666 = distinct !DILexicalBlock(scope: !5921, file: !3, line: 162, column: 6)
!6667 = !DILocation(line: 162, column: 6, scope: !5921)
!6668 = !DILocation(line: 163, column: 3, scope: !6669)
!6669 = distinct !DILexicalBlock(scope: !6666, file: !3, line: 162, column: 13)
!6670 = !DILocation(line: 163, column: 3, scope: !6671)
!6671 = distinct !DILexicalBlock(scope: !6669, file: !3, line: 163, column: 3)
!6672 = !DILocation(line: 163, column: 3, scope: !6673)
!6673 = distinct !DILexicalBlock(scope: !6671, file: !3, line: 163, column: 3)
!6674 = !DILocation(line: 164, column: 19, scope: !6669)
!6675 = !DILocation(line: 164, column: 3, scope: !6669)
!6676 = !DILocation(line: 164, column: 10, scope: !6669)
!6677 = !DILocation(line: 164, column: 17, scope: !6669)
!6678 = !DILocation(line: 166, column: 14, scope: !6669)
!6679 = !DILocation(line: 166, column: 33, scope: !6669)
!6680 = !DILocation(line: 166, column: 40, scope: !6669)
!6681 = !DILocation(line: 166, column: 3, scope: !6669)
!6682 = !DILocation(line: 167, column: 2, scope: !6669)
!6683 = !DILocation(line: 168, column: 1, scope: !5921)
!6684 = distinct !DISubprogram(name: "__init_work", scope: !365, file: !365, line: 263, type: !6685, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6687)
!6685 = !DISubroutineType(types: !6686)
!6686 = !{null, !1104, !37}
!6687 = !{!6688, !6689}
!6688 = !DILocalVariable(name: "work", arg: 1, scope: !6684, file: !365, line: 263, type: !1104)
!6689 = !DILocalVariable(name: "onstack", arg: 2, scope: !6684, file: !365, line: 263, type: !37)
!6690 = !DILocation(line: 263, column: 52, scope: !6684)
!6691 = !DILocation(line: 263, column: 62, scope: !6684)
!6692 = !DILocation(line: 263, column: 73, scope: !6684)
!6693 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5997, file: !5997, line: 35, type: !5998, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6694)
!6694 = !{!6695}
!6695 = !DILocalVariable(name: "list", arg: 1, scope: !6693, file: !5997, line: 35, type: !115)
!6696 = !DILocation(line: 35, column: 53, scope: !6693)
!6697 = !DILocation(line: 37, column: 2, scope: !6693)
!6698 = !DILocation(line: 37, column: 2, scope: !6699)
!6699 = distinct !DILexicalBlock(scope: !6693, file: !5997, line: 37, column: 2)
!6700 = !DILocation(line: 37, column: 2, scope: !6701)
!6701 = distinct !DILexicalBlock(scope: !6699, file: !5997, line: 37, column: 2)
!6702 = !DILocation(line: 37, column: 2, scope: !6703)
!6703 = distinct !DILexicalBlock(scope: !6699, file: !5997, line: 37, column: 2)
!6704 = !DILocation(line: 38, column: 2, scope: !6693)
!6705 = !DILocation(line: 38, column: 2, scope: !6706)
!6706 = distinct !DILexicalBlock(scope: !6693, file: !5997, line: 38, column: 2)
!6707 = !DILocation(line: 38, column: 2, scope: !6708)
!6708 = distinct !DILexicalBlock(scope: !6706, file: !5997, line: 38, column: 2)
!6709 = !DILocation(line: 38, column: 2, scope: !6710)
!6710 = distinct !DILexicalBlock(scope: !6706, file: !5997, line: 38, column: 2)
!6711 = !DILocation(line: 39, column: 1, scope: !6693)
!6712 = distinct !DISubprogram(name: "psmouse_smbus_remove_i2c_device", scope: !3, file: !3, line: 136, type: !1102, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6713)
!6713 = !{!6714, !6715, !6716}
!6714 = !DILocalVariable(name: "work", arg: 1, scope: !6712, file: !3, line: 136, type: !1104)
!6715 = !DILocalVariable(name: "rwork", scope: !6712, file: !3, line: 138, type: !5893)
!6716 = !DILocalVariable(name: "__mptr", scope: !6717, file: !3, line: 139, type: !35)
!6717 = distinct !DILexicalBlock(scope: !6712, file: !3, line: 139, column: 3)
!6718 = !DILocation(line: 136, column: 65, scope: !6712)
!6719 = !DILocation(line: 138, column: 2, scope: !6712)
!6720 = !DILocation(line: 138, column: 37, scope: !6712)
!6721 = !DILocation(line: 139, column: 3, scope: !6717)
!6722 = !DILocation(line: 139, column: 3, scope: !6712)
!6723 = !DILocation(line: 142, column: 24, scope: !6712)
!6724 = !DILocation(line: 142, column: 31, scope: !6712)
!6725 = !DILocation(line: 142, column: 2, scope: !6712)
!6726 = !DILocation(line: 144, column: 8, scope: !6712)
!6727 = !DILocation(line: 144, column: 2, scope: !6712)
!6728 = !DILocation(line: 145, column: 1, scope: !6712)
!6729 = distinct !DISubprogram(name: "queue_work", scope: !365, file: !365, line: 559, type: !6730, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6732)
!6730 = !DISubroutineType(types: !6731)
!6731 = !{!451, !1156, !1104}
!6732 = !{!6733, !6734}
!6733 = !DILocalVariable(name: "wq", arg: 1, scope: !6729, file: !365, line: 559, type: !1156)
!6734 = !DILocalVariable(name: "work", arg: 2, scope: !6729, file: !365, line: 560, type: !1104)
!6735 = !DILocation(line: 559, column: 56, scope: !6729)
!6736 = !DILocation(line: 560, column: 30, scope: !6729)
!6737 = !DILocation(line: 562, column: 41, scope: !6729)
!6738 = !DILocation(line: 562, column: 45, scope: !6729)
!6739 = !DILocation(line: 562, column: 9, scope: !6729)
!6740 = !DILocation(line: 562, column: 2, scope: !6729)
!6741 = !DISubprogram(name: "i2c_unregister_device", scope: !407, file: !407, line: 487, type: !5922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6742 = !DISubprogram(name: "queue_work_on", scope: !365, file: !365, line: 496, type: !6743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6743 = !DISubroutineType(types: !6744)
!6744 = !{!451, !37, !1156, !1104}
!6745 = distinct !DISubprogram(name: "__list_add", scope: !5997, file: !5997, line: 146, type: !6746, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6748)
!6746 = !DISubroutineType(types: !6747)
!6747 = !{null, !115, !115, !115}
!6748 = !{!6749, !6750, !6751}
!6749 = !DILocalVariable(name: "new", arg: 1, scope: !6745, file: !5997, line: 146, type: !115)
!6750 = !DILocalVariable(name: "prev", arg: 2, scope: !6745, file: !5997, line: 147, type: !115)
!6751 = !DILocalVariable(name: "next", arg: 3, scope: !6745, file: !5997, line: 148, type: !115)
!6752 = !DILocation(line: 146, column: 49, scope: !6745)
!6753 = !DILocation(line: 147, column: 28, scope: !6745)
!6754 = !DILocation(line: 148, column: 28, scope: !6745)
!6755 = !DILocation(line: 150, column: 24, scope: !6756)
!6756 = distinct !DILexicalBlock(scope: !6745, file: !5997, line: 150, column: 6)
!6757 = !DILocation(line: 150, column: 29, scope: !6756)
!6758 = !DILocation(line: 150, column: 35, scope: !6756)
!6759 = !DILocation(line: 150, column: 7, scope: !6756)
!6760 = !DILocation(line: 150, column: 6, scope: !6745)
!6761 = !DILocation(line: 151, column: 3, scope: !6756)
!6762 = !DILocation(line: 153, column: 15, scope: !6745)
!6763 = !DILocation(line: 153, column: 2, scope: !6745)
!6764 = !DILocation(line: 153, column: 8, scope: !6745)
!6765 = !DILocation(line: 153, column: 13, scope: !6745)
!6766 = !DILocation(line: 154, column: 14, scope: !6745)
!6767 = !DILocation(line: 154, column: 2, scope: !6745)
!6768 = !DILocation(line: 154, column: 7, scope: !6745)
!6769 = !DILocation(line: 154, column: 12, scope: !6745)
!6770 = !DILocation(line: 155, column: 14, scope: !6745)
!6771 = !DILocation(line: 155, column: 2, scope: !6745)
!6772 = !DILocation(line: 155, column: 7, scope: !6745)
!6773 = !DILocation(line: 155, column: 12, scope: !6745)
!6774 = !DILocation(line: 156, column: 2, scope: !6745)
!6775 = !DILocation(line: 156, column: 2, scope: !6776)
!6776 = distinct !DILexicalBlock(scope: !6745, file: !5997, line: 156, column: 2)
!6777 = !DILocation(line: 156, column: 2, scope: !6778)
!6778 = distinct !DILexicalBlock(scope: !6776, file: !5997, line: 156, column: 2)
!6779 = !DILocation(line: 156, column: 2, scope: !6780)
!6780 = distinct !DILexicalBlock(scope: !6776, file: !5997, line: 156, column: 2)
!6781 = !DILocation(line: 157, column: 1, scope: !6745)
!6782 = distinct !DISubprogram(name: "__list_add_valid", scope: !5997, file: !5997, line: 128, type: !6783, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6785)
!6783 = !DISubroutineType(types: !6784)
!6784 = !{!451, !115, !115, !115}
!6785 = !{!6786, !6787, !6788}
!6786 = !DILocalVariable(name: "new", arg: 1, scope: !6782, file: !5997, line: 128, type: !115)
!6787 = !DILocalVariable(name: "prev", arg: 2, scope: !6782, file: !5997, line: 129, type: !115)
!6788 = !DILocalVariable(name: "next", arg: 3, scope: !6782, file: !5997, line: 130, type: !115)
!6789 = !DILocation(line: 128, column: 55, scope: !6782)
!6790 = !DILocation(line: 129, column: 23, scope: !6782)
!6791 = !DILocation(line: 130, column: 23, scope: !6782)
!6792 = !DILocation(line: 132, column: 2, scope: !6782)
!6793 = !DISubprogram(name: "i2c_verify_adapter", scope: !407, file: !407, line: 357, type: !6794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6794 = !DISubroutineType(types: !6795)
!6795 = !{!5752, !2768}
!6796 = distinct !DISubprogram(name: "i2c_check_functionality", scope: !407, file: !407, line: 911, type: !6797, scopeLine: 912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6799)
!6797 = !DISubroutineType(types: !6798)
!6798 = !{!37, !5752, !425}
!6799 = !{!6800, !6801}
!6800 = !DILocalVariable(name: "adap", arg: 1, scope: !6796, file: !407, line: 911, type: !5752)
!6801 = !DILocalVariable(name: "func", arg: 2, scope: !6796, file: !407, line: 911, type: !425)
!6802 = !DILocation(line: 911, column: 63, scope: !6796)
!6803 = !DILocation(line: 911, column: 73, scope: !6796)
!6804 = !DILocation(line: 913, column: 10, scope: !6796)
!6805 = !DILocation(line: 913, column: 39, scope: !6796)
!6806 = !DILocation(line: 913, column: 17, scope: !6796)
!6807 = !DILocation(line: 913, column: 15, scope: !6796)
!6808 = !DILocation(line: 913, column: 49, scope: !6796)
!6809 = !DILocation(line: 913, column: 46, scope: !6796)
!6810 = !DILocation(line: 913, column: 2, scope: !6796)
!6811 = !DISubprogram(name: "i2c_new_scanned_device", scope: !407, file: !407, line: 468, type: !6812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6812 = !DISubroutineType(types: !6813)
!6813 = !{!5745, !5752, !6814, !6815, !6817}
!6814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!6815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6816, size: 64)
!6816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!6817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6818, size: 64)
!6818 = !DISubroutineType(types: !6819)
!6819 = !{!37, !5752, !41}
!6820 = distinct !DISubprogram(name: "IS_ERR", scope: !6821, file: !6821, line: 59, type: !6822, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6824)
!6821 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6822 = !DISubroutineType(types: !6823)
!6823 = !{!451, !459}
!6824 = !{!6825}
!6825 = !DILocalVariable(name: "ptr", arg: 1, scope: !6820, file: !6821, line: 59, type: !459)
!6826 = !DILocation(line: 59, column: 60, scope: !6820)
!6827 = !DILocation(line: 61, column: 9, scope: !6820)
!6828 = !DILocation(line: 61, column: 2, scope: !6820)
!6829 = distinct !DISubprogram(name: "i2c_get_functionality", scope: !407, file: !407, line: 905, type: !5792, scopeLine: 906, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6830)
!6830 = !{!6831}
!6831 = !DILocalVariable(name: "adap", arg: 1, scope: !6829, file: !407, line: 905, type: !5752)
!6832 = !DILocation(line: 905, column: 61, scope: !6829)
!6833 = !DILocation(line: 907, column: 9, scope: !6829)
!6834 = !DILocation(line: 907, column: 15, scope: !6829)
!6835 = !DILocation(line: 907, column: 21, scope: !6829)
!6836 = !DILocation(line: 907, column: 35, scope: !6829)
!6837 = !DILocation(line: 907, column: 2, scope: !6829)
!6838 = distinct !DISubprogram(name: "kobject_name", scope: !467, file: !467, line: 87, type: !495, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6839)
!6839 = !{!6840}
!6840 = !DILocalVariable(name: "kobj", arg: 1, scope: !6838, file: !467, line: 87, type: !490)
!6841 = !DILocation(line: 87, column: 62, scope: !6838)
!6842 = !DILocation(line: 89, column: 9, scope: !6838)
!6843 = !DILocation(line: 89, column: 15, scope: !6838)
!6844 = !DILocation(line: 89, column: 2, scope: !6838)
!6845 = distinct !DISubprogram(name: "psmouse_smbus_notifier_call", scope: !3, file: !3, line: 92, type: !5935, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6846)
!6846 = !{!6847, !6848, !6849, !6850, !6851, !6855}
!6847 = !DILocalVariable(name: "nb", arg: 1, scope: !6845, file: !3, line: 92, type: !5937)
!6848 = !DILocalVariable(name: "action", arg: 2, scope: !6845, file: !3, line: 93, type: !54)
!6849 = !DILocalVariable(name: "data", arg: 3, scope: !6845, file: !3, line: 93, type: !35)
!6850 = !DILocalVariable(name: "dev", scope: !6845, file: !3, line: 95, type: !2768)
!6851 = !DILocalVariable(name: "__mptr", scope: !6852, file: !3, line: 100, type: !35)
!6852 = distinct !DILexicalBlock(scope: !6853, file: !3, line: 100, column: 32)
!6853 = distinct !DILexicalBlock(scope: !6854, file: !3, line: 99, column: 7)
!6854 = distinct !DILexicalBlock(scope: !6845, file: !3, line: 97, column: 18)
!6855 = !DILocalVariable(name: "__mptr", scope: !6856, file: !3, line: 105, type: !35)
!6856 = distinct !DILexicalBlock(scope: !6857, file: !3, line: 105, column: 36)
!6857 = distinct !DILexicalBlock(scope: !6854, file: !3, line: 104, column: 7)
!6858 = !DILocation(line: 92, column: 63, scope: !6845)
!6859 = !DILocation(line: 93, column: 26, scope: !6845)
!6860 = !DILocation(line: 93, column: 40, scope: !6845)
!6861 = !DILocation(line: 95, column: 2, scope: !6845)
!6862 = !DILocation(line: 95, column: 17, scope: !6845)
!6863 = !DILocation(line: 95, column: 23, scope: !6845)
!6864 = !DILocation(line: 97, column: 10, scope: !6845)
!6865 = !DILocation(line: 97, column: 2, scope: !6845)
!6866 = !DILocation(line: 99, column: 7, scope: !6853)
!6867 = !DILocation(line: 99, column: 12, scope: !6853)
!6868 = !DILocation(line: 99, column: 17, scope: !6853)
!6869 = !DILocation(line: 99, column: 7, scope: !6854)
!6870 = !DILocation(line: 100, column: 32, scope: !6852)
!6871 = !DILocation(line: 100, column: 32, scope: !6853)
!6872 = !DILocation(line: 100, column: 4, scope: !6853)
!6873 = !DILocation(line: 101, column: 3, scope: !6854)
!6874 = !DILocation(line: 104, column: 7, scope: !6857)
!6875 = !DILocation(line: 104, column: 12, scope: !6857)
!6876 = !DILocation(line: 104, column: 17, scope: !6857)
!6877 = !DILocation(line: 104, column: 7, scope: !6854)
!6878 = !DILocation(line: 105, column: 36, scope: !6856)
!6879 = !DILocation(line: 105, column: 36, scope: !6857)
!6880 = !DILocation(line: 105, column: 4, scope: !6857)
!6881 = !DILocation(line: 106, column: 3, scope: !6854)
!6882 = !DILocation(line: 110, column: 1, scope: !6845)
!6883 = !DILocation(line: 109, column: 2, scope: !6845)
!6884 = distinct !DISubprogram(name: "psmouse_smbus_check_adapter", scope: !3, file: !3, line: 31, type: !5850, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6885)
!6885 = !{!6886, !6887, !6888, !6891}
!6886 = !DILocalVariable(name: "adapter", arg: 1, scope: !6884, file: !3, line: 31, type: !5752)
!6887 = !DILocalVariable(name: "smbdev", scope: !6884, file: !3, line: 33, type: !402)
!6888 = !DILocalVariable(name: "__mptr", scope: !6889, file: !3, line: 40, type: !35)
!6889 = distinct !DILexicalBlock(scope: !6890, file: !3, line: 40, column: 2)
!6890 = distinct !DILexicalBlock(scope: !6884, file: !3, line: 40, column: 2)
!6891 = !DILocalVariable(name: "__mptr", scope: !6892, file: !3, line: 40, type: !35)
!6892 = distinct !DILexicalBlock(scope: !6893, file: !3, line: 40, column: 2)
!6893 = distinct !DILexicalBlock(scope: !6890, file: !3, line: 40, column: 2)
!6894 = !DILocation(line: 31, column: 61, scope: !6884)
!6895 = !DILocation(line: 33, column: 2, scope: !6884)
!6896 = !DILocation(line: 33, column: 28, scope: !6884)
!6897 = !DILocation(line: 35, column: 31, scope: !6898)
!6898 = distinct !DILexicalBlock(scope: !6884, file: !3, line: 35, column: 6)
!6899 = !DILocation(line: 35, column: 7, scope: !6898)
!6900 = !DILocation(line: 35, column: 6, scope: !6884)
!6901 = !DILocation(line: 36, column: 3, scope: !6898)
!6902 = !DILocation(line: 38, column: 2, scope: !6884)
!6903 = !DILocation(line: 40, column: 2, scope: !6889)
!6904 = !DILocation(line: 40, column: 2, scope: !6890)
!6905 = !DILocation(line: 40, column: 2, scope: !6893)
!6906 = !DILocation(line: 41, column: 7, scope: !6907)
!6907 = distinct !DILexicalBlock(scope: !6908, file: !3, line: 41, column: 7)
!6908 = distinct !DILexicalBlock(scope: !6893, file: !3, line: 40, column: 57)
!6909 = !DILocation(line: 41, column: 15, scope: !6907)
!6910 = !DILocation(line: 41, column: 7, scope: !6908)
!6911 = !DILocation(line: 42, column: 4, scope: !6907)
!6912 = !DILocation(line: 44, column: 7, scope: !6913)
!6913 = distinct !DILexicalBlock(scope: !6908, file: !3, line: 44, column: 7)
!6914 = !DILocation(line: 44, column: 15, scope: !6913)
!6915 = !DILocation(line: 44, column: 7, scope: !6908)
!6916 = !DILocation(line: 45, column: 4, scope: !6913)
!6917 = !DILocation(line: 56, column: 16, scope: !6908)
!6918 = !DILocation(line: 56, column: 24, scope: !6908)
!6919 = !DILocation(line: 56, column: 33, scope: !6908)
!6920 = !DILocation(line: 56, column: 40, scope: !6908)
!6921 = !DILocation(line: 56, column: 3, scope: !6908)
!6922 = !DILocation(line: 57, column: 2, scope: !6908)
!6923 = !DILocation(line: 40, column: 2, scope: !6892)
!6924 = distinct !{!6924, !6904, !6925, !5989, !5990}
!6925 = !DILocation(line: 57, column: 2, scope: !6890)
!6926 = !DILocation(line: 59, column: 2, scope: !6884)
!6927 = !DILocation(line: 60, column: 1, scope: !6884)
!6928 = distinct !DISubprogram(name: "psmouse_smbus_detach_i2c_client", scope: !3, file: !3, line: 62, type: !5922, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6929)
!6929 = !{!6930, !6931, !6932, !6933, !6936, !6938}
!6930 = !DILocalVariable(name: "client", arg: 1, scope: !6928, file: !3, line: 62, type: !5745)
!6931 = !DILocalVariable(name: "smbdev", scope: !6928, file: !3, line: 64, type: !402)
!6932 = !DILocalVariable(name: "tmp", scope: !6928, file: !3, line: 64, type: !402)
!6933 = !DILocalVariable(name: "__mptr", scope: !6934, file: !3, line: 68, type: !35)
!6934 = distinct !DILexicalBlock(scope: !6935, file: !3, line: 68, column: 2)
!6935 = distinct !DILexicalBlock(scope: !6928, file: !3, line: 68, column: 2)
!6936 = !DILocalVariable(name: "__mptr", scope: !6937, file: !3, line: 68, type: !35)
!6937 = distinct !DILexicalBlock(scope: !6935, file: !3, line: 68, column: 2)
!6938 = !DILocalVariable(name: "__mptr", scope: !6939, file: !3, line: 68, type: !35)
!6939 = distinct !DILexicalBlock(scope: !6940, file: !3, line: 68, column: 2)
!6940 = distinct !DILexicalBlock(scope: !6935, file: !3, line: 68, column: 2)
!6941 = !DILocation(line: 62, column: 64, scope: !6928)
!6942 = !DILocation(line: 64, column: 2, scope: !6928)
!6943 = !DILocation(line: 64, column: 28, scope: !6928)
!6944 = !DILocation(line: 64, column: 37, scope: !6928)
!6945 = !DILocation(line: 66, column: 2, scope: !6928)
!6946 = !DILocation(line: 68, column: 2, scope: !6934)
!6947 = !DILocation(line: 68, column: 2, scope: !6935)
!6948 = !DILocation(line: 68, column: 2, scope: !6937)
!6949 = !DILocation(line: 68, column: 2, scope: !6940)
!6950 = !DILocation(line: 69, column: 7, scope: !6951)
!6951 = distinct !DILexicalBlock(scope: !6952, file: !3, line: 69, column: 7)
!6952 = distinct !DILexicalBlock(scope: !6940, file: !3, line: 68, column: 67)
!6953 = !DILocation(line: 69, column: 15, scope: !6951)
!6954 = !DILocation(line: 69, column: 25, scope: !6951)
!6955 = !DILocation(line: 69, column: 22, scope: !6951)
!6956 = !DILocation(line: 69, column: 7, scope: !6952)
!6957 = !DILocation(line: 70, column: 4, scope: !6951)
!6958 = !DILocation(line: 72, column: 9, scope: !6952)
!6959 = !DILocation(line: 72, column: 17, scope: !6952)
!6960 = !DILocation(line: 72, column: 21, scope: !6952)
!6961 = !DILocation(line: 72, column: 3, scope: !6952)
!6962 = !DILocation(line: 73, column: 3, scope: !6952)
!6963 = !DILocation(line: 73, column: 11, scope: !6952)
!6964 = !DILocation(line: 73, column: 15, scope: !6952)
!6965 = !DILocation(line: 73, column: 29, scope: !6952)
!6966 = !DILocation(line: 75, column: 8, scope: !6967)
!6967 = distinct !DILexicalBlock(scope: !6952, file: !3, line: 75, column: 7)
!6968 = !DILocation(line: 75, column: 16, scope: !6967)
!6969 = !DILocation(line: 75, column: 7, scope: !6952)
!6970 = !DILocation(line: 79, column: 4, scope: !6971)
!6971 = distinct !DILexicalBlock(scope: !6967, file: !3, line: 75, column: 22)
!6972 = !DILocation(line: 79, column: 12, scope: !6971)
!6973 = !DILocation(line: 79, column: 17, scope: !6971)
!6974 = !DILocation(line: 80, column: 24, scope: !6971)
!6975 = !DILocation(line: 80, column: 32, scope: !6971)
!6976 = !DILocation(line: 80, column: 40, scope: !6971)
!6977 = !DILocation(line: 81, column: 10, scope: !6971)
!6978 = !DILocation(line: 81, column: 18, scope: !6971)
!6979 = !DILocation(line: 81, column: 27, scope: !6971)
!6980 = !DILocation(line: 81, column: 34, scope: !6971)
!6981 = !DILocation(line: 81, column: 41, scope: !6971)
!6982 = !DILocation(line: 80, column: 4, scope: !6971)
!6983 = !DILocation(line: 82, column: 17, scope: !6971)
!6984 = !DILocation(line: 82, column: 25, scope: !6971)
!6985 = !DILocation(line: 82, column: 34, scope: !6971)
!6986 = !DILocation(line: 82, column: 41, scope: !6971)
!6987 = !DILocation(line: 82, column: 4, scope: !6971)
!6988 = !DILocation(line: 83, column: 3, scope: !6971)
!6989 = !DILocation(line: 84, column: 14, scope: !6990)
!6990 = distinct !DILexicalBlock(scope: !6967, file: !3, line: 83, column: 10)
!6991 = !DILocation(line: 84, column: 22, scope: !6990)
!6992 = !DILocation(line: 84, column: 4, scope: !6990)
!6993 = !DILocation(line: 85, column: 10, scope: !6990)
!6994 = !DILocation(line: 85, column: 4, scope: !6990)
!6995 = !DILocation(line: 87, column: 2, scope: !6952)
!6996 = !DILocation(line: 68, column: 2, scope: !6939)
!6997 = distinct !{!6997, !6947, !6998, !5989, !5990}
!6998 = !DILocation(line: 87, column: 2, scope: !6935)
!6999 = !DILocation(line: 89, column: 2, scope: !6928)
!7000 = !DILocation(line: 90, column: 1, scope: !6928)
!7001 = !DISubprogram(name: "serio_rescan", scope: !5598, file: !5598, line: 88, type: !5623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
