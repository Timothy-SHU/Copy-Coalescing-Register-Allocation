; ModuleID = 'net/rfkill/input.c'
source_filename = "net/rfkill/input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.input_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
%struct.input_handle = type { ptr, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [12 x i64], [1 x i64], [1 x i64], [1 x i64], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}

@__param_str_master_switch_mode = internal constant [26 x i8] c"rfkill.master_switch_mode\00", align 16, !dbg !0
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 8
@rfkill_master_switch_mode = internal global i32 2, align 4, !dbg !3970
@__param_master_switch_mode = internal constant %struct.kernel_param { ptr @__param_str_master_switch_mode, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.13 { ptr @rfkill_master_switch_mode } }, section "__param", align 8, !dbg !3954
@__UNIQUE_ID_master_switch_modetype267 = internal constant [40 x i8] c"rfkill.parmtype=master_switch_mode:uint\00", section ".modinfo", align 1, !dbg !3956
@__UNIQUE_ID_master_switch_mode268 = internal constant [109 x i8] c"rfkill.parm=master_switch_mode:SW_RFKILL_ALL ON should: 0=do nothing (only unlock); 1=restore; 2=unblock all\00", section ".modinfo", align 1, !dbg !3961
@rfkill_master_switch_op = internal global i32 0, align 4, !dbg !3966
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@rfkill_last_scheduled = internal global i64 0, align 8, !dbg !3968
@rfkill_handler = internal global %struct.input_handler { ptr null, ptr @rfkill_event, ptr null, ptr null, ptr null, ptr @rfkill_connect, ptr @rfkill_disconnect, ptr @rfkill_start, i8 0, i32 0, ptr @.str, ptr @rfkill_ids, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, align 8, !dbg !3975
@rfkill_op_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { ptr getelementptr (i8, ptr @rfkill_op_work, i64 8), ptr getelementptr (i8, ptr @rfkill_op_work, i64 8) }, ptr @rfkill_op_handler }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i64 -2401263026318605568 to ptr), ptr null }, i64 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 8, !dbg !4635
@.str = private unnamed_addr constant [7 x i8] c"rfkill\00", align 1, !dbg !3972
@rfkill_op_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !4617
@rfkill_op_pending = internal global i8 0, align 1, !dbg !4619
@rfkill_sw_pending = internal global [1 x i64] zeroinitializer, align 8, !dbg !4621
@rfkill_sw_state = internal global [1 x i64] zeroinitializer, align 8, !dbg !4623
@system_wq = external dso_local global ptr, align 8
@rfkill_op = internal global i32 0, align 4, !dbg !4625
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4627
@rfkill_ids = internal constant <{ { i64, i16, i16, i16, i16, [1 x i64], <{ i64, i64, i64, i64, [8 x i64] }>, [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }, { i64, i16, i16, i16, i16, [1 x i64], <{ i64, i64, i64, i64, [8 x i64] }>, [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }, { i64, i16, i16, i16, i16, [1 x i64], <{ i64, i64, i64, i64, [8 x i64] }>, [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }, { i64, i16, i16, i16, i16, [1 x i64], <{ i64, i64, i64, i64, [8 x i64] }>, [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }, { i64, i16, i16, i16, i16, [1 x i64], <{ i64, i64, i64, i64, [8 x i64] }>, [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }, %struct.input_device_id, %struct.input_device_id }> <{ { i64, i16, i16, i16, i16, [1 x i64], <{ i64, i64, i64, i64, [8 x i64] }>, [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 } { i64 48, i16 0, i16 0, i16 0, i16 0, [1 x i64] [i64 2], <{ i64, i64, i64, i64, [8 x i64] }> <{ i64 0, i64 0, i64 0, i64 70368744177664, [8 x i64] zeroinitializer }>, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [2 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, i64 0 }, { i64, i16, i16, i16, i16, [1 x i64], <{ i64, i64, i64, i64, [8 x i64] }>, [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 } { i64 48, i16 0, i16 0, i16 0, i16 0, [1 x i64] [i64 2], <{ i64, i64, i64, i64, [8 x i64] }> <{ i64 0, i64 0, i64 0, i64 35184372088832, [8 x i64] zeroinitializer }>, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [2 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, i64 0 }, { i64, i16, i16, i16, i16, [1 x i64], <{ i64, i64, i64, i64, [8 x i64] }>, [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 } { i64 48, i16 0, i16 0, i16 0, i16 0, [1 x i64] [i64 2], <{ i64, i64, i64, i64, [8 x i64] }> <{ i64 0, i64 0, i64 0, i64 140737488355328, [8 x i64] zeroinitializer }>, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [2 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, i64 0 }, { i64, i16, i16, i16, i16, [1 x i64], <{ i64, i64, i64, i64, [8 x i64] }>, [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 } { i64 48, i16 0, i16 0, i16 0, i16 0, [1 x i64] [i64 2], <{ i64, i64, i64, i64, [8 x i64] }> <{ i64 0, i64 0, i64 0, i64 18014398509481984, [8 x i64] zeroinitializer }>, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [2 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, i64 0 }, { i64, i16, i16, i16, i16, [1 x i64], <{ i64, i64, i64, i64, [8 x i64] }>, [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 } { i64 48, i16 0, i16 0, i16 0, i16 0, [1 x i64] [i64 2], <{ i64, i64, i64, i64, [8 x i64] }> <{ i64 0, i64 0, i64 0, i64 36028797018963968, [8 x i64] zeroinitializer }>, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [2 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, i64 0 }, %struct.input_device_id { i64 4112, i16 0, i16 0, i16 0, i16 0, [1 x i64] [i64 32], [12 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [2 x i64] zeroinitializer, [1 x i64] [i64 8], [1 x i64] zeroinitializer, i64 0 }, %struct.input_device_id zeroinitializer }>, align 16, !dbg !4632
@.str.3 = private unnamed_addr constant [70 x i8] c"Unknown requested operation %d! rfkill Emergency Power Off activated\0A\00", align 1, !dbg !4637
@.str.4 = private unnamed_addr constant [19 x i8] c"net/rfkill/input.c\00", align 1, !dbg !4642
@llvm.compiler.used = appending global [4 x ptr] [ptr @__param_master_switch_mode, ptr @__UNIQUE_ID_master_switch_modetype267, ptr @__UNIQUE_ID_master_switch_mode268, ptr @rfkill_handler_exit], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @rfkill_handler_init() #0 section ".init.text" align 16 !dbg !4659 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, ptr @rfkill_master_switch_mode, align 4, !dbg !4660
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 0, label %sw.bb2
  ], !dbg !4661

sw.bb:                                            ; preds = %entry
  store i32 3, ptr @rfkill_master_switch_op, align 4, !dbg !4662
  br label %sw.epilog, !dbg !4664

sw.bb1:                                           ; preds = %entry
  store i32 1, ptr @rfkill_master_switch_op, align 4, !dbg !4665
  br label %sw.epilog, !dbg !4666

sw.bb2:                                           ; preds = %entry
  store i32 2, ptr @rfkill_master_switch_op, align 4, !dbg !4667
  br label %sw.epilog, !dbg !4668

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4669
  br label %return, !dbg !4669

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %1 = load volatile i64, ptr @jiffies, align 64, !dbg !4670
  %call = call i64 @msecs_to_jiffies(i32 noundef 200) #16, !dbg !4671
  %sub = sub i64 %1, %call, !dbg !4672
  %sub3 = sub i64 %sub, 1, !dbg !4673
  store i64 %sub3, ptr @rfkill_last_scheduled, align 8, !dbg !4674
  %call4 = call i32 @input_register_handler(ptr noundef @rfkill_handler) #16, !dbg !4675
  store i32 %call4, ptr %retval, align 4, !dbg !4676
  br label %return, !dbg !4676

return:                                           ; preds = %sw.epilog, %sw.default
  %2 = load i32, ptr %retval, align 4, !dbg !4677
  ret i32 %2, !dbg !4677
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msecs_to_jiffies(i32 noundef %m) #1 align 16 !dbg !4678 {
entry:
  %retval = alloca i64, align 8
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4683, metadata !DIExpression()), !dbg !4684
  %0 = load i32, ptr %m.addr, align 4, !dbg !4685
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4687
  br i1 %1, label %if.then, label %if.else, !dbg !4688

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %m.addr, align 4, !dbg !4689
  %cmp = icmp slt i32 %2, 0, !dbg !4692
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4693

if.then1:                                         ; preds = %if.then
  store i64 4611686018427387902, ptr %retval, align 8, !dbg !4694
  br label %return, !dbg !4694

if.end:                                           ; preds = %if.then
  %3 = load i32, ptr %m.addr, align 4, !dbg !4695
  %call = call i64 @_msecs_to_jiffies(i32 noundef %3) #16, !dbg !4696
  store i64 %call, ptr %retval, align 8, !dbg !4697
  br label %return, !dbg !4697

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %m.addr, align 4, !dbg !4698
  %call2 = call i64 @__msecs_to_jiffies(i32 noundef %4) #16, !dbg !4700
  store i64 %call2, ptr %retval, align 8, !dbg !4701
  br label %return, !dbg !4701

return:                                           ; preds = %if.else, %if.end, %if.then1
  %5 = load i64, ptr %retval, align 8, !dbg !4702
  ret i64 %5, !dbg !4702
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4703 dso_local i32 @input_register_handler(ptr noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @rfkill_handler_exit() #0 section ".exit.text" align 16 !dbg !4706 {
entry:
  call void @input_unregister_handler(ptr noundef @rfkill_handler) #16, !dbg !4707
  %call = call zeroext i1 @cancel_delayed_work_sync(ptr noundef @rfkill_op_work) #16, !dbg !4708
  ret void, !dbg !4709
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4710 dso_local void @input_unregister_handler(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4713 dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_msecs_to_jiffies(i32 noundef %m) #5 align 16 !dbg !4717 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4719, metadata !DIExpression()), !dbg !4720
  %0 = load i32, ptr %m.addr, align 4, !dbg !4721
  %conv = zext i32 %0 to i64, !dbg !4721
  %add = add i64 %conv, 1, !dbg !4722
  %sub = sub i64 %add, 1, !dbg !4723
  %div = sdiv i64 %sub, 1, !dbg !4724
  ret i64 %div, !dbg !4725
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4726 dso_local i64 @__msecs_to_jiffies(i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rfkill_event(ptr noundef %handle, i32 noundef %type, i32 noundef %code, i32 noundef %data) #6 align 16 !dbg !4727 {
entry:
  %handle.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %data.addr = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !4729, metadata !DIExpression()), !dbg !4733
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4730, metadata !DIExpression()), !dbg !4734
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !4731, metadata !DIExpression()), !dbg !4735
  store i32 %data, ptr %data.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4732, metadata !DIExpression()), !dbg !4736
  %0 = load i32, ptr %type.addr, align 4, !dbg !4737
  %cmp = icmp eq i32 %0, 1, !dbg !4739
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !4740

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %data.addr, align 4, !dbg !4741
  %cmp1 = icmp eq i32 %1, 1, !dbg !4742
  br i1 %cmp1, label %if.then, label %if.else, !dbg !4743

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, ptr %code.addr, align 4, !dbg !4744
  switch i32 %2, label %sw.epilog [
    i32 238, label %sw.bb
    i32 237, label %sw.bb2
    i32 239, label %sw.bb3
    i32 246, label %sw.bb4
    i32 247, label %sw.bb5
  ], !dbg !4746

sw.bb:                                            ; preds = %if.then
  call void @rfkill_schedule_toggle(i32 noundef 1) #16, !dbg !4747
  br label %sw.epilog, !dbg !4749

sw.bb2:                                           ; preds = %if.then
  call void @rfkill_schedule_toggle(i32 noundef 2) #16, !dbg !4750
  br label %sw.epilog, !dbg !4751

sw.bb3:                                           ; preds = %if.then
  call void @rfkill_schedule_toggle(i32 noundef 3) #16, !dbg !4752
  br label %sw.epilog, !dbg !4753

sw.bb4:                                           ; preds = %if.then
  call void @rfkill_schedule_toggle(i32 noundef 4) #16, !dbg !4754
  br label %sw.epilog, !dbg !4755

sw.bb5:                                           ; preds = %if.then
  call void @rfkill_schedule_toggle(i32 noundef 0) #16, !dbg !4756
  br label %sw.epilog, !dbg !4757

sw.epilog:                                        ; preds = %if.then, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  br label %if.end10, !dbg !4758

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, ptr %type.addr, align 4, !dbg !4759
  %cmp6 = icmp eq i32 %3, 5, !dbg !4761
  br i1 %cmp6, label %land.lhs.true7, label %if.end, !dbg !4762

land.lhs.true7:                                   ; preds = %if.else
  %4 = load i32, ptr %code.addr, align 4, !dbg !4763
  %cmp8 = icmp eq i32 %4, 3, !dbg !4764
  br i1 %cmp8, label %if.then9, label %if.end, !dbg !4765

if.then9:                                         ; preds = %land.lhs.true7
  %5 = load i32, ptr %data.addr, align 4, !dbg !4766
  call void @rfkill_schedule_evsw_rfkillall(i32 noundef %5) #16, !dbg !4767
  br label %if.end, !dbg !4767

if.end:                                           ; preds = %if.then9, %land.lhs.true7, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %sw.epilog
  ret void, !dbg !4768
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rfkill_connect(ptr noundef %handler, ptr noundef %dev, ptr noundef %id) #6 align 16 !dbg !4769 {
entry:
  %retval = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !4771, metadata !DIExpression()), !dbg !4778
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4772, metadata !DIExpression()), !dbg !4779
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !4773, metadata !DIExpression()), !dbg !4780
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #17, !dbg !4781
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !4774, metadata !DIExpression()), !dbg !4782
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !4783
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4775, metadata !DIExpression()), !dbg !4784
  %call = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #18, !dbg !4785
  store ptr %call, ptr %handle, align 8, !dbg !4786
  %0 = load ptr, ptr %handle, align 8, !dbg !4787
  %tobool = icmp ne ptr %0, null, !dbg !4787
  br i1 %tobool, label %if.end, label %if.then, !dbg !4789

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4790

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !4791
  %2 = load ptr, ptr %handle, align 8, !dbg !4792
  %dev1 = getelementptr inbounds %struct.input_handle, ptr %2, i32 0, i32 3, !dbg !4793
  store ptr %1, ptr %dev1, align 8, !dbg !4794
  %3 = load ptr, ptr %handler.addr, align 8, !dbg !4795
  %4 = load ptr, ptr %handle, align 8, !dbg !4796
  %handler2 = getelementptr inbounds %struct.input_handle, ptr %4, i32 0, i32 4, !dbg !4797
  store ptr %3, ptr %handler2, align 8, !dbg !4798
  %5 = load ptr, ptr %handle, align 8, !dbg !4799
  %name = getelementptr inbounds %struct.input_handle, ptr %5, i32 0, i32 2, !dbg !4800
  store ptr @.str, ptr %name, align 8, !dbg !4801
  %6 = load ptr, ptr %handle, align 8, !dbg !4802
  %call3 = call i32 @input_register_handle(ptr noundef %6) #16, !dbg !4803
  store i32 %call3, ptr %error, align 4, !dbg !4804
  %7 = load i32, ptr %error, align 4, !dbg !4805
  %tobool4 = icmp ne i32 %7, 0, !dbg !4805
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4807

if.then5:                                         ; preds = %if.end
  br label %err_free_handle, !dbg !4808

if.end6:                                          ; preds = %if.end
  %8 = load ptr, ptr %handle, align 8, !dbg !4809
  %call7 = call i32 @input_open_device(ptr noundef %8) #16, !dbg !4810
  store i32 %call7, ptr %error, align 4, !dbg !4811
  %9 = load i32, ptr %error, align 4, !dbg !4812
  %tobool8 = icmp ne i32 %9, 0, !dbg !4812
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4814

if.then9:                                         ; preds = %if.end6
  br label %err_unregister_handle, !dbg !4815

if.end10:                                         ; preds = %if.end6
  store i32 0, ptr %retval, align 4, !dbg !4816
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4816

err_unregister_handle:                            ; preds = %if.then9
  call void @llvm.dbg.label(metadata !4776), !dbg !4817
  %10 = load ptr, ptr %handle, align 8, !dbg !4818
  call void @input_unregister_handle(ptr noundef %10) #16, !dbg !4819
  br label %err_free_handle, !dbg !4819

err_free_handle:                                  ; preds = %err_unregister_handle, %if.then5
  call void @llvm.dbg.label(metadata !4777), !dbg !4820
  %11 = load ptr, ptr %handle, align 8, !dbg !4821
  call void @kfree(ptr noundef %11) #16, !dbg !4822
  %12 = load i32, ptr %error, align 4, !dbg !4823
  store i32 %12, ptr %retval, align 4, !dbg !4824
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4824

cleanup:                                          ; preds = %err_free_handle, %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !4825
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #17, !dbg !4825
  %13 = load i32, ptr %retval, align 4, !dbg !4825
  ret i32 %13, !dbg !4825
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rfkill_disconnect(ptr noundef %handle) #6 align 16 !dbg !4826 {
entry:
  %handle.addr = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !4828, metadata !DIExpression()), !dbg !4829
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !4830
  call void @input_close_device(ptr noundef %0) #16, !dbg !4831
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !4832
  call void @input_unregister_handle(ptr noundef %1) #16, !dbg !4833
  %2 = load ptr, ptr %handle.addr, align 8, !dbg !4834
  call void @kfree(ptr noundef %2) #16, !dbg !4835
  ret void, !dbg !4836
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rfkill_start(ptr noundef %handle) #6 align 16 !dbg !4837 {
entry:
  %handle.addr = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !4839, metadata !DIExpression()), !dbg !4840
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !4841
  %dev = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 3, !dbg !4842
  %1 = load ptr, ptr %dev, align 8, !dbg !4842
  %event_lock = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 36, !dbg !4843
  call void @spin_lock_irq(ptr noundef %event_lock) #16, !dbg !4844
  %2 = load ptr, ptr %handle.addr, align 8, !dbg !4845
  %dev1 = getelementptr inbounds %struct.input_handle, ptr %2, i32 0, i32 3, !dbg !4845
  %3 = load ptr, ptr %dev1, align 8, !dbg !4845
  %evbit = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 5, !dbg !4845
  %arraydecay = getelementptr inbounds [1 x i64], ptr %evbit, i64 0, i64 0, !dbg !4845
  %4 = ptrtoint ptr %arraydecay to i64, !dbg !4845
  %cmp = icmp ne i64 %4, 0, !dbg !4845
  %conv = zext i1 %cmp to i32, !dbg !4845
  %5 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4845
  br i1 %5, label %land.lhs.true, label %cond.false, !dbg !4845

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %handle.addr, align 8, !dbg !4845
  %dev2 = getelementptr inbounds %struct.input_handle, ptr %6, i32 0, i32 3, !dbg !4845
  %7 = load ptr, ptr %dev2, align 8, !dbg !4845
  %evbit3 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 5, !dbg !4845
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %evbit3, i64 0, i64 0, !dbg !4845
  %8 = ptrtoint ptr %arraydecay4 to i64, !dbg !4845
  %cmp5 = icmp ne i64 %8, 0, !dbg !4845
  br i1 %cmp5, label %land.lhs.true7, label %cond.false, !dbg !4845

land.lhs.true7:                                   ; preds = %land.lhs.true
  %9 = load ptr, ptr %handle.addr, align 8, !dbg !4845
  %dev8 = getelementptr inbounds %struct.input_handle, ptr %9, i32 0, i32 3, !dbg !4845
  %10 = load ptr, ptr %dev8, align 8, !dbg !4845
  %evbit9 = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 5, !dbg !4845
  %arraydecay10 = getelementptr inbounds [1 x i64], ptr %evbit9, i64 0, i64 0, !dbg !4845
  %11 = load i64, ptr %arraydecay10, align 8, !dbg !4845
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !4845
  br i1 %12, label %cond.true, label %cond.false, !dbg !4847

cond.true:                                        ; preds = %land.lhs.true7
  %13 = load ptr, ptr %handle.addr, align 8, !dbg !4845
  %dev11 = getelementptr inbounds %struct.input_handle, ptr %13, i32 0, i32 3, !dbg !4845
  %14 = load ptr, ptr %dev11, align 8, !dbg !4845
  %evbit12 = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 5, !dbg !4845
  %arraydecay13 = getelementptr inbounds [1 x i64], ptr %evbit12, i64 0, i64 0, !dbg !4845
  %call = call zeroext i1 @const_test_bit(i64 noundef 5, ptr noundef %arraydecay13) #16, !dbg !4845
  br i1 %call, label %land.lhs.true20, label %if.end, !dbg !4845

cond.false:                                       ; preds = %land.lhs.true7, %land.lhs.true, %entry
  %15 = load ptr, ptr %handle.addr, align 8, !dbg !4845
  %dev15 = getelementptr inbounds %struct.input_handle, ptr %15, i32 0, i32 3, !dbg !4845
  %16 = load ptr, ptr %dev15, align 8, !dbg !4845
  %evbit16 = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 5, !dbg !4845
  %arraydecay17 = getelementptr inbounds [1 x i64], ptr %evbit16, i64 0, i64 0, !dbg !4845
  %call18 = call zeroext i1 @_test_bit(i64 noundef 5, ptr noundef %arraydecay17) #16, !dbg !4845
  br i1 %call18, label %land.lhs.true20, label %if.end, !dbg !4847

land.lhs.true20:                                  ; preds = %cond.false, %cond.true
  %17 = load ptr, ptr %handle.addr, align 8, !dbg !4848
  %dev21 = getelementptr inbounds %struct.input_handle, ptr %17, i32 0, i32 3, !dbg !4848
  %18 = load ptr, ptr %dev21, align 8, !dbg !4848
  %swbit = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 13, !dbg !4848
  %arraydecay22 = getelementptr inbounds [1 x i64], ptr %swbit, i64 0, i64 0, !dbg !4848
  %19 = ptrtoint ptr %arraydecay22 to i64, !dbg !4848
  %cmp23 = icmp ne i64 %19, 0, !dbg !4848
  %conv24 = zext i1 %cmp23 to i32, !dbg !4848
  %20 = call i1 @llvm.is.constant.i32(i32 %conv24), !dbg !4848
  br i1 %20, label %land.lhs.true25, label %cond.false41, !dbg !4848

land.lhs.true25:                                  ; preds = %land.lhs.true20
  %21 = load ptr, ptr %handle.addr, align 8, !dbg !4848
  %dev26 = getelementptr inbounds %struct.input_handle, ptr %21, i32 0, i32 3, !dbg !4848
  %22 = load ptr, ptr %dev26, align 8, !dbg !4848
  %swbit27 = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 13, !dbg !4848
  %arraydecay28 = getelementptr inbounds [1 x i64], ptr %swbit27, i64 0, i64 0, !dbg !4848
  %23 = ptrtoint ptr %arraydecay28 to i64, !dbg !4848
  %cmp29 = icmp ne i64 %23, 0, !dbg !4848
  br i1 %cmp29, label %land.lhs.true31, label %cond.false41, !dbg !4848

land.lhs.true31:                                  ; preds = %land.lhs.true25
  %24 = load ptr, ptr %handle.addr, align 8, !dbg !4848
  %dev32 = getelementptr inbounds %struct.input_handle, ptr %24, i32 0, i32 3, !dbg !4848
  %25 = load ptr, ptr %dev32, align 8, !dbg !4848
  %swbit33 = getelementptr inbounds %struct.input_dev, ptr %25, i32 0, i32 13, !dbg !4848
  %arraydecay34 = getelementptr inbounds [1 x i64], ptr %swbit33, i64 0, i64 0, !dbg !4848
  %26 = load i64, ptr %arraydecay34, align 8, !dbg !4848
  %27 = call i1 @llvm.is.constant.i64(i64 %26), !dbg !4848
  br i1 %27, label %cond.true35, label %cond.false41, !dbg !4849

cond.true35:                                      ; preds = %land.lhs.true31
  %28 = load ptr, ptr %handle.addr, align 8, !dbg !4848
  %dev36 = getelementptr inbounds %struct.input_handle, ptr %28, i32 0, i32 3, !dbg !4848
  %29 = load ptr, ptr %dev36, align 8, !dbg !4848
  %swbit37 = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 13, !dbg !4848
  %arraydecay38 = getelementptr inbounds [1 x i64], ptr %swbit37, i64 0, i64 0, !dbg !4848
  %call39 = call zeroext i1 @const_test_bit(i64 noundef 3, ptr noundef %arraydecay38) #16, !dbg !4848
  br i1 %call39, label %if.then, label %if.end, !dbg !4848

cond.false41:                                     ; preds = %land.lhs.true31, %land.lhs.true25, %land.lhs.true20
  %30 = load ptr, ptr %handle.addr, align 8, !dbg !4848
  %dev42 = getelementptr inbounds %struct.input_handle, ptr %30, i32 0, i32 3, !dbg !4848
  %31 = load ptr, ptr %dev42, align 8, !dbg !4848
  %swbit43 = getelementptr inbounds %struct.input_dev, ptr %31, i32 0, i32 13, !dbg !4848
  %arraydecay44 = getelementptr inbounds [1 x i64], ptr %swbit43, i64 0, i64 0, !dbg !4848
  %call45 = call zeroext i1 @_test_bit(i64 noundef 3, ptr noundef %arraydecay44) #16, !dbg !4848
  br i1 %call45, label %if.then, label %if.end, !dbg !4849

if.then:                                          ; preds = %cond.false41, %cond.true35
  %32 = load ptr, ptr %handle.addr, align 8, !dbg !4850
  %dev47 = getelementptr inbounds %struct.input_handle, ptr %32, i32 0, i32 3, !dbg !4850
  %33 = load ptr, ptr %dev47, align 8, !dbg !4850
  %sw = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 30, !dbg !4850
  %arraydecay48 = getelementptr inbounds [1 x i64], ptr %sw, i64 0, i64 0, !dbg !4850
  %34 = ptrtoint ptr %arraydecay48 to i64, !dbg !4850
  %cmp49 = icmp ne i64 %34, 0, !dbg !4850
  %conv50 = zext i1 %cmp49 to i32, !dbg !4850
  %35 = call i1 @llvm.is.constant.i32(i32 %conv50), !dbg !4850
  br i1 %35, label %land.lhs.true51, label %cond.false67, !dbg !4850

land.lhs.true51:                                  ; preds = %if.then
  %36 = load ptr, ptr %handle.addr, align 8, !dbg !4850
  %dev52 = getelementptr inbounds %struct.input_handle, ptr %36, i32 0, i32 3, !dbg !4850
  %37 = load ptr, ptr %dev52, align 8, !dbg !4850
  %sw53 = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 30, !dbg !4850
  %arraydecay54 = getelementptr inbounds [1 x i64], ptr %sw53, i64 0, i64 0, !dbg !4850
  %38 = ptrtoint ptr %arraydecay54 to i64, !dbg !4850
  %cmp55 = icmp ne i64 %38, 0, !dbg !4850
  br i1 %cmp55, label %land.lhs.true57, label %cond.false67, !dbg !4850

land.lhs.true57:                                  ; preds = %land.lhs.true51
  %39 = load ptr, ptr %handle.addr, align 8, !dbg !4850
  %dev58 = getelementptr inbounds %struct.input_handle, ptr %39, i32 0, i32 3, !dbg !4850
  %40 = load ptr, ptr %dev58, align 8, !dbg !4850
  %sw59 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 30, !dbg !4850
  %arraydecay60 = getelementptr inbounds [1 x i64], ptr %sw59, i64 0, i64 0, !dbg !4850
  %41 = load i64, ptr %arraydecay60, align 8, !dbg !4850
  %42 = call i1 @llvm.is.constant.i64(i64 %41), !dbg !4850
  br i1 %42, label %cond.true61, label %cond.false67, !dbg !4850

cond.true61:                                      ; preds = %land.lhs.true57
  %43 = load ptr, ptr %handle.addr, align 8, !dbg !4850
  %dev62 = getelementptr inbounds %struct.input_handle, ptr %43, i32 0, i32 3, !dbg !4850
  %44 = load ptr, ptr %dev62, align 8, !dbg !4850
  %sw63 = getelementptr inbounds %struct.input_dev, ptr %44, i32 0, i32 30, !dbg !4850
  %arraydecay64 = getelementptr inbounds [1 x i64], ptr %sw63, i64 0, i64 0, !dbg !4850
  %call65 = call zeroext i1 @const_test_bit(i64 noundef 3, ptr noundef %arraydecay64) #16, !dbg !4850
  %conv66 = zext i1 %call65 to i32, !dbg !4850
  br label %cond.end, !dbg !4850

cond.false67:                                     ; preds = %land.lhs.true57, %land.lhs.true51, %if.then
  %45 = load ptr, ptr %handle.addr, align 8, !dbg !4850
  %dev68 = getelementptr inbounds %struct.input_handle, ptr %45, i32 0, i32 3, !dbg !4850
  %46 = load ptr, ptr %dev68, align 8, !dbg !4850
  %sw69 = getelementptr inbounds %struct.input_dev, ptr %46, i32 0, i32 30, !dbg !4850
  %arraydecay70 = getelementptr inbounds [1 x i64], ptr %sw69, i64 0, i64 0, !dbg !4850
  %call71 = call zeroext i1 @_test_bit(i64 noundef 3, ptr noundef %arraydecay70) #16, !dbg !4850
  %conv72 = zext i1 %call71 to i32, !dbg !4850
  br label %cond.end, !dbg !4850

cond.end:                                         ; preds = %cond.false67, %cond.true61
  %cond = phi i32 [ %conv66, %cond.true61 ], [ %conv72, %cond.false67 ], !dbg !4850
  call void @rfkill_schedule_evsw_rfkillall(i32 noundef %cond) #16, !dbg !4851
  br label %if.end, !dbg !4851

if.end:                                           ; preds = %cond.end, %cond.false41, %cond.true35, %cond.false, %cond.true
  %47 = load ptr, ptr %handle.addr, align 8, !dbg !4852
  %dev73 = getelementptr inbounds %struct.input_handle, ptr %47, i32 0, i32 3, !dbg !4853
  %48 = load ptr, ptr %dev73, align 8, !dbg !4853
  %event_lock74 = getelementptr inbounds %struct.input_dev, ptr %48, i32 0, i32 36, !dbg !4854
  call void @spin_unlock_irq(ptr noundef %event_lock74) #16, !dbg !4855
  ret void, !dbg !4856
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rfkill_schedule_toggle(i32 noundef %type) #6 align 16 !dbg !4857 {
entry:
  %type.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4861, metadata !DIExpression()), !dbg !4868
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !4869
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4862, metadata !DIExpression()), !dbg !4870
  %call = call zeroext i1 @rfkill_is_epo_lock_active() #16, !dbg !4871
  br i1 %call, label %if.then, label %if.end, !dbg !4873

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4874

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4875

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !4876

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !4877
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4863, metadata !DIExpression()), !dbg !4877
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !4877
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4867, metadata !DIExpression()), !dbg !4877
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4877
  %conv = zext i1 %cmp to i32, !dbg !4877
  store i32 1, ptr %tmp, align 4, !dbg !4877
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !4878
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !4878
  %0 = load i32, ptr %tmp, align 4, !dbg !4877
  %call2 = call ptr @spinlock_check(ptr noundef @rfkill_op_lock) #16, !dbg !4878
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call2) #16, !dbg !4878
  store i64 %call3, ptr %flags, align 8, !dbg !4878
  br label %do.cond, !dbg !4878

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4878

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !4876

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !4876

do.end5:                                          ; preds = %do.cond4
  %1 = load i8, ptr @rfkill_op_pending, align 1, !dbg !4879, !range !4881, !noundef !574
  %tobool = trunc i8 %1 to i1, !dbg !4879
  br i1 %tobool, label %if.end23, label %if.then6, !dbg !4882

if.then6:                                         ; preds = %do.end5
  %2 = load i32, ptr %type.addr, align 4, !dbg !4883
  %3 = call i1 @llvm.is.constant.i32(i32 %2), !dbg !4883
  br i1 %3, label %land.lhs.true, label %cond.false, !dbg !4883

land.lhs.true:                                    ; preds = %if.then6
  %conv7 = zext i1 icmp ne (i64 ptrtoint (ptr @rfkill_sw_pending to i64), i64 0) to i32, !dbg !4883
  %4 = call i1 @llvm.is.constant.i32(i32 %conv7), !dbg !4883
  br i1 %4, label %land.lhs.true8, label %cond.false, !dbg !4883

land.lhs.true8:                                   ; preds = %land.lhs.true
  br i1 icmp ne (i64 ptrtoint (ptr @rfkill_sw_pending to i64), i64 0), label %land.lhs.true10, label %cond.false, !dbg !4883

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %5 = load i64, ptr @rfkill_sw_pending, align 8, !dbg !4883
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !4883
  br i1 %6, label %cond.true, label %cond.false, !dbg !4883

cond.true:                                        ; preds = %land.lhs.true10
  %7 = load i32, ptr %type.addr, align 4, !dbg !4883
  %conv11 = zext i32 %7 to i64, !dbg !4883
  call void @generic___set_bit(i64 noundef %conv11, ptr noundef @rfkill_sw_pending) #16, !dbg !4883
  br label %cond.end, !dbg !4883

cond.false:                                       ; preds = %land.lhs.true10, %land.lhs.true8, %land.lhs.true, %if.then6
  %8 = load i32, ptr %type.addr, align 4, !dbg !4883
  %conv12 = zext i32 %8 to i64, !dbg !4883
  call void @___set_bit(i64 noundef %conv12, ptr noundef @rfkill_sw_pending) #16, !dbg !4883
  br label %cond.end, !dbg !4883

cond.end:                                         ; preds = %cond.false, %cond.true
  %9 = load i32, ptr %type.addr, align 4, !dbg !4885
  %10 = call i1 @llvm.is.constant.i32(i32 %9), !dbg !4885
  br i1 %10, label %land.lhs.true13, label %cond.false20, !dbg !4885

land.lhs.true13:                                  ; preds = %cond.end
  %conv14 = zext i1 icmp ne (i64 ptrtoint (ptr @rfkill_sw_state to i64), i64 0) to i32, !dbg !4885
  %11 = call i1 @llvm.is.constant.i32(i32 %conv14), !dbg !4885
  br i1 %11, label %land.lhs.true15, label %cond.false20, !dbg !4885

land.lhs.true15:                                  ; preds = %land.lhs.true13
  br i1 icmp ne (i64 ptrtoint (ptr @rfkill_sw_state to i64), i64 0), label %land.lhs.true17, label %cond.false20, !dbg !4885

land.lhs.true17:                                  ; preds = %land.lhs.true15
  %12 = load i64, ptr @rfkill_sw_state, align 8, !dbg !4885
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !4885
  br i1 %13, label %cond.true18, label %cond.false20, !dbg !4885

cond.true18:                                      ; preds = %land.lhs.true17
  %14 = load i32, ptr %type.addr, align 4, !dbg !4885
  %conv19 = zext i32 %14 to i64, !dbg !4885
  call void @generic___change_bit(i64 noundef %conv19, ptr noundef @rfkill_sw_state) #16, !dbg !4885
  br label %cond.end22, !dbg !4885

cond.false20:                                     ; preds = %land.lhs.true17, %land.lhs.true15, %land.lhs.true13, %cond.end
  %15 = load i32, ptr %type.addr, align 4, !dbg !4885
  %conv21 = zext i32 %15 to i64, !dbg !4885
  call void @___change_bit(i64 noundef %conv21, ptr noundef @rfkill_sw_state) #16, !dbg !4885
  br label %cond.end22, !dbg !4885

cond.end22:                                       ; preds = %cond.false20, %cond.true18
  call void @rfkill_schedule_ratelimited() #16, !dbg !4886
  br label %if.end23, !dbg !4887

if.end23:                                         ; preds = %cond.end22, %do.end5
  %16 = load i64, ptr %flags, align 8, !dbg !4888
  call void @spin_unlock_irqrestore(ptr noundef @rfkill_op_lock, i64 noundef %16) #16, !dbg !4889
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4890
  br label %cleanup, !dbg !4890

cleanup:                                          ; preds = %if.end23, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !4890
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4890

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rfkill_schedule_evsw_rfkillall(i32 noundef %state) #6 align 16 !dbg !4891 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4893, metadata !DIExpression()), !dbg !4894
  %0 = load i32, ptr %state.addr, align 4, !dbg !4895
  %tobool = icmp ne i32 %0, 0, !dbg !4895
  br i1 %tobool, label %if.then, label %if.else, !dbg !4897

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @rfkill_master_switch_op, align 4, !dbg !4898
  call void @rfkill_schedule_global_op(i32 noundef %1) #16, !dbg !4899
  br label %if.end, !dbg !4899

if.else:                                          ; preds = %entry
  call void @rfkill_schedule_global_op(i32 noundef 0) #16, !dbg !4900
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4901
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4902 dso_local zeroext i1 @rfkill_is_epo_lock_active() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4904 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #1 align 16 !dbg !4909 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4915, metadata !DIExpression()), !dbg !4916
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4917
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4918
  ret ptr %1, !dbg !4919
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !4920 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4927, metadata !DIExpression()), !dbg !4931
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4928, metadata !DIExpression()), !dbg !4932
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !4933
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4929, metadata !DIExpression()), !dbg !4934
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4935
  %rem = urem i64 %0, 64, !dbg !4935
  %shl = shl i64 1, %rem, !dbg !4935
  store i64 %shl, ptr %mask, align 8, !dbg !4934
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !4936
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4930, metadata !DIExpression()), !dbg !4937
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4938
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4939
  %div = udiv i64 %2, 64, !dbg !4939
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !4940
  store ptr %add.ptr, ptr %p, align 8, !dbg !4937
  %3 = load i64, ptr %mask, align 8, !dbg !4941
  %4 = load ptr, ptr %p, align 8, !dbg !4942
  %5 = load i64, ptr %4, align 8, !dbg !4943
  %or = or i64 %5, %3, !dbg !4943
  store i64 %or, ptr %4, align 8, !dbg !4943
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !4944
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !4944
  ret void, !dbg !4944
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !4945 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4948, metadata !DIExpression()), !dbg !4950
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4949, metadata !DIExpression()), !dbg !4951
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4952
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4953
  %div = udiv i64 %1, 64, !dbg !4953
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4954
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #16, !dbg !4955
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4956
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4957
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !4958
  ret void, !dbg !4959
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___change_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !4960 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4962, metadata !DIExpression()), !dbg !4966
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4963, metadata !DIExpression()), !dbg !4967
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !4968
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4964, metadata !DIExpression()), !dbg !4969
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4970
  %rem = urem i64 %0, 64, !dbg !4970
  %shl = shl i64 1, %rem, !dbg !4970
  store i64 %shl, ptr %mask, align 8, !dbg !4969
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !4971
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4965, metadata !DIExpression()), !dbg !4972
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4973
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4974
  %div = udiv i64 %2, 64, !dbg !4974
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !4975
  store ptr %add.ptr, ptr %p, align 8, !dbg !4972
  %3 = load i64, ptr %mask, align 8, !dbg !4976
  %4 = load ptr, ptr %p, align 8, !dbg !4977
  %5 = load i64, ptr %4, align 8, !dbg !4978
  %xor = xor i64 %5, %3, !dbg !4978
  store i64 %xor, ptr %4, align 8, !dbg !4978
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !4979
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !4979
  ret void, !dbg !4979
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___change_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !4980 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4982, metadata !DIExpression()), !dbg !4984
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4983, metadata !DIExpression()), !dbg !4985
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4986
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4987
  %div = udiv i64 %1, 64, !dbg !4987
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4988
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #16, !dbg !4989
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4990
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4991
  call void @arch___change_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !4992
  ret void, !dbg !4993
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rfkill_schedule_ratelimited() #6 align 16 !dbg !4994 {
entry:
  %0 = load i64, ptr @rfkill_last_scheduled, align 8, !dbg !4995
  %call = call i64 @rfkill_ratelimit(i64 noundef %0) #16, !dbg !4997
  %call1 = call zeroext i1 @schedule_delayed_work(ptr noundef @rfkill_op_work, i64 noundef %call) #16, !dbg !4998
  br i1 %call1, label %if.then, label %if.end, !dbg !4999

if.then:                                          ; preds = %entry
  %1 = load volatile i64, ptr @jiffies, align 64, !dbg !5000
  store i64 %1, ptr @rfkill_last_scheduled, align 8, !dbg !5001
  br label %if.end, !dbg !5002

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5003
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #1 align 16 !dbg !5004 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5008, metadata !DIExpression()), !dbg !5014
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5009, metadata !DIExpression()), !dbg !5015
  br label %do.body, !dbg !5016

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !5017
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5010, metadata !DIExpression()), !dbg !5017
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !5017
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5013, metadata !DIExpression()), !dbg !5017
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5017
  %conv = zext i1 %cmp to i32, !dbg !5017
  store i32 1, ptr %tmp, align 4, !dbg !5017
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !5018
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !5018
  %0 = load i32, ptr %tmp, align 4, !dbg !5017
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5018
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5018
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5018
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #16, !dbg !5018
  br label %do.end, !dbg !5018

do.end:                                           ; preds = %do.body
  ret void, !dbg !5019
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !5020 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5028, metadata !DIExpression()), !dbg !5030
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5029, metadata !DIExpression()), !dbg !5031
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5032
  %1 = load i64, ptr %size.addr, align 8, !dbg !5033
  %conv = trunc i64 %1 to i32, !dbg !5033
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !5034
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5035
  %3 = load i64, ptr %size.addr, align 8, !dbg !5035
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #16, !dbg !5035
  ret void, !dbg !5036
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !5037 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5040, metadata !DIExpression()), !dbg !5042
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5041, metadata !DIExpression()), !dbg !5043
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5044
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5045
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !5046, !srcloc !5047
  ret void, !dbg !5048
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !5049 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5054, metadata !DIExpression()), !dbg !5056
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5055, metadata !DIExpression()), !dbg !5057
  ret i1 true, !dbg !5058
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !5059 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5064, metadata !DIExpression()), !dbg !5067
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5065, metadata !DIExpression()), !dbg !5068
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5066, metadata !DIExpression()), !dbg !5069
  ret void, !dbg !5070
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___change_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !5071 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5073, metadata !DIExpression()), !dbg !5075
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5074, metadata !DIExpression()), !dbg !5076
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5077
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5078
  call void asm sideeffect " btcq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !5079, !srcloc !5080
  ret void, !dbg !5081
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_delayed_work(ptr noundef %dwork, i64 noundef %delay) #5 align 16 !dbg !5082 {
entry:
  %dwork.addr = alloca ptr, align 8
  %delay.addr = alloca i64, align 8
  store ptr %dwork, ptr %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dwork.addr, metadata !5086, metadata !DIExpression()), !dbg !5088
  store i64 %delay, ptr %delay.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay.addr, metadata !5087, metadata !DIExpression()), !dbg !5089
  %0 = load ptr, ptr @system_wq, align 8, !dbg !5090
  %1 = load ptr, ptr %dwork.addr, align 8, !dbg !5091
  %2 = load i64, ptr %delay.addr, align 8, !dbg !5092
  %call = call zeroext i1 @queue_delayed_work(ptr noundef %0, ptr noundef %1, i64 noundef %2) #16, !dbg !5093
  ret i1 %call, !dbg !5094
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rfkill_ratelimit(i64 noundef %last) #6 align 16 !dbg !5095 {
entry:
  %last.addr = alloca i64, align 8
  %delay = alloca i64, align 8
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !5099, metadata !DIExpression()), !dbg !5101
  call void @llvm.lifetime.start.p0(i64 8, ptr %delay) #17, !dbg !5102
  call void @llvm.dbg.declare(metadata ptr %delay, metadata !5100, metadata !DIExpression()), !dbg !5103
  %call = call i64 @msecs_to_jiffies(i32 noundef 200) #16, !dbg !5104
  store i64 %call, ptr %delay, align 8, !dbg !5103
  %0 = load i64, ptr %last.addr, align 8, !dbg !5105
  %1 = load i64, ptr %delay, align 8, !dbg !5105
  %add = add i64 %0, %1, !dbg !5105
  %2 = load volatile i64, ptr @jiffies, align 64, !dbg !5105
  %sub = sub i64 %add, %2, !dbg !5105
  %cmp = icmp slt i64 %sub, 0, !dbg !5105
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5105

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5105

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %delay, align 8, !dbg !5106
  br label %cond.end, !dbg !5105

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %3, %cond.false ], !dbg !5105
  call void @llvm.lifetime.end.p0(i64 8, ptr %delay) #17, !dbg !5107
  ret i64 %cond, !dbg !5108
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_delayed_work(ptr noundef %wq, ptr noundef %dwork, i64 noundef %delay) #5 align 16 !dbg !5109 {
entry:
  %wq.addr = alloca ptr, align 8
  %dwork.addr = alloca ptr, align 8
  %delay.addr = alloca i64, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !5113, metadata !DIExpression()), !dbg !5116
  store ptr %dwork, ptr %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dwork.addr, metadata !5114, metadata !DIExpression()), !dbg !5117
  store i64 %delay, ptr %delay.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay.addr, metadata !5115, metadata !DIExpression()), !dbg !5118
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !5119
  %1 = load ptr, ptr %dwork.addr, align 8, !dbg !5120
  %2 = load i64, ptr %delay.addr, align 8, !dbg !5121
  %call = call zeroext i1 @queue_delayed_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1, i64 noundef %2) #16, !dbg !5122
  ret i1 %call, !dbg !5123
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5124 dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5127 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #2 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rfkill_schedule_global_op(i32 noundef %op) #6 align 16 !dbg !5130 {
entry:
  %op.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !5134, metadata !DIExpression()), !dbg !5141
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !5142
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5135, metadata !DIExpression()), !dbg !5143
  br label %do.body, !dbg !5144

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5145

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !5146
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5136, metadata !DIExpression()), !dbg !5146
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !5146
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5140, metadata !DIExpression()), !dbg !5146
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5146
  %conv = zext i1 %cmp to i32, !dbg !5146
  store i32 1, ptr %tmp, align 4, !dbg !5146
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !5147
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !5147
  %0 = load i32, ptr %tmp, align 4, !dbg !5146
  %call = call ptr @spinlock_check(ptr noundef @rfkill_op_lock) #16, !dbg !5147
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #16, !dbg !5147
  store i64 %call2, ptr %flags, align 8, !dbg !5147
  br label %do.cond, !dbg !5147

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5147

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5145

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5145

do.end4:                                          ; preds = %do.cond3
  %1 = load i32, ptr %op.addr, align 4, !dbg !5148
  store i32 %1, ptr @rfkill_op, align 4, !dbg !5149
  store i8 1, ptr @rfkill_op_pending, align 1, !dbg !5150
  %2 = load i32, ptr %op.addr, align 4, !dbg !5151
  %cmp5 = icmp eq i32 %2, 0, !dbg !5153
  br i1 %cmp5, label %land.lhs.true, label %if.else, !dbg !5154

land.lhs.true:                                    ; preds = %do.end4
  %call7 = call zeroext i1 @rfkill_is_epo_lock_active() #16, !dbg !5155
  br i1 %call7, label %if.else, label %if.then, !dbg !5156

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr @system_wq, align 8, !dbg !5157
  %call8 = call zeroext i1 @mod_delayed_work(ptr noundef %3, ptr noundef @rfkill_op_work, i64 noundef 0) #16, !dbg !5159
  %4 = load volatile i64, ptr @jiffies, align 64, !dbg !5160
  store i64 %4, ptr @rfkill_last_scheduled, align 8, !dbg !5161
  br label %if.end, !dbg !5162

if.else:                                          ; preds = %land.lhs.true, %do.end4
  call void @rfkill_schedule_ratelimited() #16, !dbg !5163
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i64, ptr %flags, align 8, !dbg !5164
  call void @spin_unlock_irqrestore(ptr noundef @rfkill_op_lock, i64 noundef %5) #16, !dbg !5165
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !5166
  ret void, !dbg !5166
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @mod_delayed_work(ptr noundef %wq, ptr noundef %dwork, i64 noundef %delay) #5 align 16 !dbg !5167 {
entry:
  %wq.addr = alloca ptr, align 8
  %dwork.addr = alloca ptr, align 8
  %delay.addr = alloca i64, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !5169, metadata !DIExpression()), !dbg !5172
  store ptr %dwork, ptr %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dwork.addr, metadata !5170, metadata !DIExpression()), !dbg !5173
  store i64 %delay, ptr %delay.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay.addr, metadata !5171, metadata !DIExpression()), !dbg !5174
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !5175
  %1 = load ptr, ptr %dwork.addr, align 8, !dbg !5176
  %2 = load i64, ptr %delay.addr, align 8, !dbg !5177
  %call = call zeroext i1 @mod_delayed_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1, i64 noundef %2) #16, !dbg !5178
  ret i1 %call, !dbg !5179
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5180 dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5181 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5185, metadata !DIExpression()), !dbg !5187
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5186, metadata !DIExpression()), !dbg !5188
  %0 = load i64, ptr %size.addr, align 8, !dbg !5189
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5190
  %or = or i32 %1, 256, !dbg !5191
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !5192
  ret ptr %call, !dbg !5193
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5194 dso_local i32 @input_register_handle(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5197 dso_local i32 @input_open_device(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5198 dso_local void @input_unregister_handle(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5199 dso_local void @kfree(ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !5202 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5204, metadata !DIExpression()), !dbg !5209
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5205, metadata !DIExpression()), !dbg !5210
  %0 = load i64, ptr %size.addr, align 8, !dbg !5211
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5212
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5213

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5214
  %tobool = icmp ne i64 %2, 0, !dbg !5214
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5215

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !5216
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5206, metadata !DIExpression()), !dbg !5217
  %3 = load i64, ptr %size.addr, align 8, !dbg !5218
  %cmp = icmp ugt i64 %3, 8192, !dbg !5220
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5221

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5222
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5223
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !5224
  store ptr %call, ptr %retval, align 8, !dbg !5225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5225

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5226
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !5226
  store i32 %call2, ptr %index, align 4, !dbg !5227
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5228
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5229
  %9 = ptrtoint ptr %8 to i64, !dbg !5229
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !5230
  %idxprom = zext i32 %call3 to i64, !dbg !5231
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5231
  %10 = load i32, ptr %index, align 4, !dbg !5232
  %idxprom4 = zext i32 %10 to i64, !dbg !5231
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5231
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5231
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5233
  %13 = load i64, ptr %size.addr, align 8, !dbg !5234
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !5235
  store ptr %call6, ptr %retval, align 8, !dbg !5236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5236

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !5237
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5238
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5239
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !5240
  store ptr %call8, ptr %retval, align 8, !dbg !5241
  br label %return, !dbg !5241

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5242
  ret ptr %16, !dbg !5242
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5243 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #1 align 16 !dbg !5244 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5248, metadata !DIExpression()), !dbg !5250
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5249, metadata !DIExpression()), !dbg !5251
  %0 = load i64, ptr %size.addr, align 8, !dbg !5252
  %tobool = icmp ne i64 %0, 0, !dbg !5252
  br i1 %tobool, label %if.end, label %if.then, !dbg !5254

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5255
  br label %return, !dbg !5255

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5256
  %cmp = icmp ule i64 %1, 8, !dbg !5258
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5259

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5260
  br label %return, !dbg !5260

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5261
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5263
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5264

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5265
  %cmp4 = icmp ule i64 %3, 96, !dbg !5266
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5267

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5268
  br label %return, !dbg !5268

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5269
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5271
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5272

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5273
  %cmp9 = icmp ule i64 %5, 192, !dbg !5274
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5275

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5276
  br label %return, !dbg !5276

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5277
  %cmp12 = icmp ule i64 %6, 8, !dbg !5279
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5280

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5281
  br label %return, !dbg !5281

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5282
  %cmp15 = icmp ule i64 %7, 16, !dbg !5284
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5285

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5286
  br label %return, !dbg !5286

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5287
  %cmp18 = icmp ule i64 %8, 32, !dbg !5289
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5290

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5291
  br label %return, !dbg !5291

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5292
  %cmp21 = icmp ule i64 %9, 64, !dbg !5294
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5295

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5296
  br label %return, !dbg !5296

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5297
  %cmp24 = icmp ule i64 %10, 128, !dbg !5299
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5300

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5301
  br label %return, !dbg !5301

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5302
  %cmp27 = icmp ule i64 %11, 256, !dbg !5304
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5305

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5306
  br label %return, !dbg !5306

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5307
  %cmp30 = icmp ule i64 %12, 512, !dbg !5309
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5310

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5311
  br label %return, !dbg !5311

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5312
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5314
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5315

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5316
  br label %return, !dbg !5316

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5317
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5319
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5320

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5321
  br label %return, !dbg !5321

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5322
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5324
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5325

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5326
  br label %return, !dbg !5326

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5327
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5329
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5330

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5331
  br label %return, !dbg !5331

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5332
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5334
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5335

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5336
  br label %return, !dbg !5336

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5337
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5339
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5340

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5341
  br label %return, !dbg !5341

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5342
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5344
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5345

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5346
  br label %return, !dbg !5346

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5347
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5349
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5350

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5351
  br label %return, !dbg !5351

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5352
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5354
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5355

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5356
  br label %return, !dbg !5356

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5357
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5359
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5360

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5361
  br label %return, !dbg !5361

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5362
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5364
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5365

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5366
  br label %return, !dbg !5366

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5367
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5369
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5370

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5371
  br label %return, !dbg !5371

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5372, !range !4881, !noundef !574
  %tobool69 = trunc i8 %25 to i1, !dbg !5372
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5374

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5375

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_263() #20, !dbg !5376, !srcloc !5379
  unreachable, !dbg !5376

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5380

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5381

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5382

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5384

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5382

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #17, !dbg !5386, !srcloc !5388
  br label %do.end75, !dbg !5386

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5382

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5389
  br label %return, !dbg !5389

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5390
  ret i32 %26, !dbg !5390
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5391 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #1 align 16 !dbg !5397 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5401, metadata !DIExpression()), !dbg !5403
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5402, metadata !DIExpression()), !dbg !5404
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5405
  %and = and i32 %0, 17, !dbg !5405
  %cmp = icmp eq i32 %and, 0, !dbg !5405
  %lnot = xor i1 %cmp, true, !dbg !5405
  %lnot1 = xor i1 %lnot, true, !dbg !5405
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5405
  %conv = sext i32 %lnot.ext to i64, !dbg !5405
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5405
  %tobool = icmp ne i64 %expval, 0, !dbg !5405
  br i1 %tobool, label %if.then, label %if.end, !dbg !5407

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5408
  br label %return, !dbg !5408

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5409
  %and2 = and i32 %1, 1, !dbg !5411
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5411
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5412

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5413
  br label %return, !dbg !5413

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5414
  br label %return, !dbg !5414

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5416
  ret i32 %2, !dbg !5416
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5417 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5418 dso_local void @__compiletime_assert_263() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5419 dso_local void @input_close_device(ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #1 align 16 !dbg !5420 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5424, metadata !DIExpression()), !dbg !5425
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5426
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5426
  call void @_raw_spin_lock_irq(ptr noundef %1) #16, !dbg !5426
  ret void, !dbg !5427
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !5428 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5434, metadata !DIExpression()), !dbg !5439
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5435, metadata !DIExpression()), !dbg !5440
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !5441
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5436, metadata !DIExpression()), !dbg !5442
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5443
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5444
  %div = udiv i64 %1, 64, !dbg !5444
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5445
  store ptr %add.ptr, ptr %p, align 8, !dbg !5442
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !5446
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5437, metadata !DIExpression()), !dbg !5447
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5448
  %rem = urem i64 %2, 64, !dbg !5448
  %shl = shl i64 1, %rem, !dbg !5448
  store i64 %shl, ptr %mask, align 8, !dbg !5447
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !5449
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5438, metadata !DIExpression()), !dbg !5450
  %3 = load ptr, ptr %p, align 8, !dbg !5451
  %4 = load i64, ptr %3, align 8, !dbg !5452
  store i64 %4, ptr %val, align 8, !dbg !5450
  %5 = load i64, ptr %val, align 8, !dbg !5453
  %6 = load i64, ptr %mask, align 8, !dbg !5454
  %and = and i64 %5, %6, !dbg !5455
  %tobool = icmp ne i64 %and, 0, !dbg !5456
  %lnot = xor i1 %tobool, true, !dbg !5456
  %lnot1 = xor i1 %lnot, true, !dbg !5457
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !5458
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !5458
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !5458
  ret i1 %lnot1, !dbg !5459
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !5460 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5462, metadata !DIExpression()), !dbg !5464
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5463, metadata !DIExpression()), !dbg !5465
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5466
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5467
  %div = udiv i64 %1, 64, !dbg !5467
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5468
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #16, !dbg !5469
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5470
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5471
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !5472
  ret i1 %call, !dbg !5473
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #1 align 16 !dbg !5474 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5476, metadata !DIExpression()), !dbg !5477
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5478
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5478
  call void @_raw_spin_unlock_irq(ptr noundef %1) #16, !dbg !5478
  ret void, !dbg !5479
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5480 dso_local void @_raw_spin_lock_irq(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !5483 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5485, metadata !DIExpression()), !dbg !5487
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5486, metadata !DIExpression()), !dbg !5488
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5489
  %1 = load i64, ptr %size.addr, align 8, !dbg !5490
  %conv = trunc i64 %1 to i32, !dbg !5490
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #16, !dbg !5491
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5492
  %3 = load i64, ptr %size.addr, align 8, !dbg !5492
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #16, !dbg !5492
  ret void, !dbg !5493
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !5494 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5496, metadata !DIExpression()), !dbg !5498
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5497, metadata !DIExpression()), !dbg !5499
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5500
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5501
  br i1 %1, label %cond.true, label %cond.false, !dbg !5501

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5502
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5503
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !5504
  %conv = zext i1 %call to i32, !dbg !5504
  br label %cond.end, !dbg !5501

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5505
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5506
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #16, !dbg !5507
  %conv2 = zext i1 %call1 to i32, !dbg !5507
  br label %cond.end, !dbg !5501

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5501
  %tobool = icmp ne i32 %cond, 0, !dbg !5501
  ret i1 %tobool, !dbg !5508
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !5509 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5511, metadata !DIExpression()), !dbg !5513
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5512, metadata !DIExpression()), !dbg !5514
  ret i1 true, !dbg !5515
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !5516 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5520, metadata !DIExpression()), !dbg !5522
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5521, metadata !DIExpression()), !dbg !5523
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5524
  %and = and i64 %0, 63, !dbg !5525
  %shl = shl i64 1, %and, !dbg !5526
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5527
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5528
  %shr = ashr i64 %2, 6, !dbg !5529
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5527
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5527
  %and1 = and i64 %shl, %3, !dbg !5530
  %cmp = icmp ne i64 %and1, 0, !dbg !5531
  ret i1 %cmp, !dbg !5532
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !5533 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5535, metadata !DIExpression()), !dbg !5538
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5536, metadata !DIExpression()), !dbg !5539
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #17, !dbg !5540
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5537, metadata !DIExpression()), !dbg !5541
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5542
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5543
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !5544, !srcloc !5545
  %3 = icmp ult i8 %2, 2, !dbg !5544
  call void @llvm.assume(i1 %3), !dbg !5544
  store i8 %2, ptr %oldbit, align 1, !dbg !5544
  %4 = load i8, ptr %oldbit, align 1, !dbg !5546, !range !4881, !noundef !574
  %tobool = trunc i8 %4 to i1, !dbg !5546
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #17, !dbg !5547
  ret i1 %tobool, !dbg !5548
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5549 dso_local void @_raw_spin_unlock_irq(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rfkill_op_handler(ptr noundef %work) #6 align 16 !dbg !5550 {
entry:
  %work.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %c = alloca i8, align 1
  %op = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5552, metadata !DIExpression()), !dbg !5559
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5560
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5553, metadata !DIExpression()), !dbg !5561
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #17, !dbg !5562
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5554, metadata !DIExpression()), !dbg !5563
  call void @spin_lock_irq(ptr noundef @rfkill_op_lock) #16, !dbg !5564
  br label %do.body, !dbg !5565

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8, ptr @rfkill_op_pending, align 1, !dbg !5566, !range !4881, !noundef !574
  %tobool = trunc i8 %0 to i1, !dbg !5566
  br i1 %tobool, label %if.then, label %if.end3, !dbg !5567

if.then:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %op) #17, !dbg !5568
  call void @llvm.dbg.declare(metadata ptr %op, metadata !5555, metadata !DIExpression()), !dbg !5569
  %1 = load i32, ptr @rfkill_op, align 4, !dbg !5570
  store i32 %1, ptr %op, align 4, !dbg !5569
  store i8 0, ptr @rfkill_op_pending, align 1, !dbg !5571
  call void @llvm.memset.p0.i64(ptr align 8 @rfkill_sw_pending, i8 0, i64 8, i1 false), !dbg !5572
  call void @spin_unlock_irq(ptr noundef @rfkill_op_lock) #16, !dbg !5573
  %2 = load i32, ptr %op, align 4, !dbg !5574
  call void @__rfkill_handle_global_op(i32 noundef %2) #16, !dbg !5575
  call void @spin_lock_irq(ptr noundef @rfkill_op_lock) #16, !dbg !5576
  %3 = load i8, ptr @rfkill_op_pending, align 1, !dbg !5577, !range !4881, !noundef !574
  %tobool1 = trunc i8 %3 to i1, !dbg !5577
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !5579

if.then2:                                         ; preds = %if.then
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5580

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5581
  br label %cleanup, !dbg !5581

cleanup:                                          ; preds = %if.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %op) #17, !dbg !5581
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %do.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end3, !dbg !5582

if.end3:                                          ; preds = %cleanup.cont, %do.body
  %call = call zeroext i1 @rfkill_is_epo_lock_active() #16, !dbg !5583
  br i1 %call, label %if.then4, label %if.end5, !dbg !5585

if.then4:                                         ; preds = %if.end3
  br label %do.cond, !dbg !5586

if.end5:                                          ; preds = %if.end3
  store i32 0, ptr %i, align 4, !dbg !5587
  br label %for.cond, !dbg !5589

for.cond:                                         ; preds = %for.inc, %if.end5
  %4 = load i32, ptr %i, align 4, !dbg !5590
  %cmp = icmp ult i32 %4, 9, !dbg !5592
  br i1 %cmp, label %for.body, label %for.end, !dbg !5593

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4, !dbg !5594
  %6 = call i1 @llvm.is.constant.i32(i32 %5), !dbg !5594
  br i1 %6, label %land.lhs.true, label %cond.false, !dbg !5594

land.lhs.true:                                    ; preds = %for.body
  %conv = zext i1 icmp ne (i64 ptrtoint (ptr @rfkill_sw_pending to i64), i64 0) to i32, !dbg !5594
  %7 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5594
  br i1 %7, label %land.lhs.true6, label %cond.false, !dbg !5594

land.lhs.true6:                                   ; preds = %land.lhs.true
  br i1 icmp ne (i64 ptrtoint (ptr @rfkill_sw_pending to i64), i64 0), label %land.lhs.true8, label %cond.false, !dbg !5594

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %8 = load i64, ptr @rfkill_sw_pending, align 8, !dbg !5594
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !5594
  br i1 %9, label %cond.true, label %cond.false, !dbg !5597

cond.true:                                        ; preds = %land.lhs.true8
  %10 = load i32, ptr %i, align 4, !dbg !5594
  %conv9 = zext i32 %10 to i64, !dbg !5594
  %call10 = call zeroext i1 @generic___test_and_clear_bit(i64 noundef %conv9, ptr noundef @rfkill_sw_pending) #16, !dbg !5594
  br i1 %call10, label %if.then15, label %if.end31, !dbg !5594

cond.false:                                       ; preds = %land.lhs.true8, %land.lhs.true6, %land.lhs.true, %for.body
  %11 = load i32, ptr %i, align 4, !dbg !5594
  %conv12 = zext i32 %11 to i64, !dbg !5594
  %call13 = call zeroext i1 @___test_and_clear_bit(i64 noundef %conv12, ptr noundef @rfkill_sw_pending) #16, !dbg !5594
  br i1 %call13, label %if.then15, label %if.end31, !dbg !5597

if.then15:                                        ; preds = %cond.false, %cond.true
  %12 = load i32, ptr %i, align 4, !dbg !5598
  %13 = call i1 @llvm.is.constant.i32(i32 %12), !dbg !5598
  br i1 %13, label %land.lhs.true16, label %cond.false25, !dbg !5598

land.lhs.true16:                                  ; preds = %if.then15
  %conv17 = zext i1 icmp ne (i64 ptrtoint (ptr @rfkill_sw_state to i64), i64 0) to i32, !dbg !5598
  %14 = call i1 @llvm.is.constant.i32(i32 %conv17), !dbg !5598
  br i1 %14, label %land.lhs.true18, label %cond.false25, !dbg !5598

land.lhs.true18:                                  ; preds = %land.lhs.true16
  br i1 icmp ne (i64 ptrtoint (ptr @rfkill_sw_state to i64), i64 0), label %land.lhs.true20, label %cond.false25, !dbg !5598

land.lhs.true20:                                  ; preds = %land.lhs.true18
  %15 = load i64, ptr @rfkill_sw_state, align 8, !dbg !5598
  %16 = call i1 @llvm.is.constant.i64(i64 %15), !dbg !5598
  br i1 %16, label %cond.true21, label %cond.false25, !dbg !5598

cond.true21:                                      ; preds = %land.lhs.true20
  %17 = load i32, ptr %i, align 4, !dbg !5598
  %conv22 = zext i32 %17 to i64, !dbg !5598
  %call23 = call zeroext i1 @generic___test_and_clear_bit(i64 noundef %conv22, ptr noundef @rfkill_sw_state) #16, !dbg !5598
  %conv24 = zext i1 %call23 to i32, !dbg !5598
  br label %cond.end, !dbg !5598

cond.false25:                                     ; preds = %land.lhs.true20, %land.lhs.true18, %land.lhs.true16, %if.then15
  %18 = load i32, ptr %i, align 4, !dbg !5598
  %conv26 = zext i32 %18 to i64, !dbg !5598
  %call27 = call zeroext i1 @___test_and_clear_bit(i64 noundef %conv26, ptr noundef @rfkill_sw_state) #16, !dbg !5598
  %conv28 = zext i1 %call27 to i32, !dbg !5598
  br label %cond.end, !dbg !5598

cond.end:                                         ; preds = %cond.false25, %cond.true21
  %cond = phi i32 [ %conv24, %cond.true21 ], [ %conv28, %cond.false25 ], !dbg !5598
  %tobool29 = icmp ne i32 %cond, 0, !dbg !5598
  %frombool = zext i1 %tobool29 to i8, !dbg !5600
  store i8 %frombool, ptr %c, align 1, !dbg !5600
  call void @spin_unlock_irq(ptr noundef @rfkill_op_lock) #16, !dbg !5601
  %19 = load i32, ptr %i, align 4, !dbg !5602
  %20 = load i8, ptr %c, align 1, !dbg !5603, !range !4881, !noundef !574
  %tobool30 = trunc i8 %20 to i1, !dbg !5603
  call void @__rfkill_handle_normal_op(i32 noundef %19, i1 noundef zeroext %tobool30) #16, !dbg !5604
  call void @spin_lock_irq(ptr noundef @rfkill_op_lock) #16, !dbg !5605
  br label %if.end31, !dbg !5606

if.end31:                                         ; preds = %cond.end, %cond.false, %cond.true
  br label %for.inc, !dbg !5607

for.inc:                                          ; preds = %if.end31
  %21 = load i32, ptr %i, align 4, !dbg !5608
  %inc = add i32 %21, 1, !dbg !5608
  store i32 %inc, ptr %i, align 4, !dbg !5608
  br label %for.cond, !dbg !5609, !llvm.loop !5610

for.end:                                          ; preds = %for.cond
  br label %do.cond, !dbg !5614

do.cond:                                          ; preds = %for.end, %if.then4, %cleanup
  %22 = load i8, ptr @rfkill_op_pending, align 1, !dbg !5615, !range !4881, !noundef !574
  %tobool32 = trunc i8 %22 to i1, !dbg !5615
  br i1 %tobool32, label %do.body, label %do.end, !dbg !5614, !llvm.loop !5616

do.end:                                           ; preds = %do.cond
  call void @spin_unlock_irq(ptr noundef @rfkill_op_lock) #16, !dbg !5618
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #17, !dbg !5619
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !5619
  ret void, !dbg !5619

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__rfkill_handle_global_op(i32 noundef %op) #6 align 16 !dbg !5620 {
entry:
  %op.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !5622, metadata !DIExpression()), !dbg !5631
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5632
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5623, metadata !DIExpression()), !dbg !5633
  %0 = load i32, ptr %op.addr, align 4, !dbg !5634
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ], !dbg !5635

sw.bb:                                            ; preds = %entry
  call void @rfkill_epo() #16, !dbg !5636
  br label %sw.epilog, !dbg !5637

sw.bb1:                                           ; preds = %entry
  call void @rfkill_restore_states() #16, !dbg !5638
  br label %sw.epilog, !dbg !5639

sw.bb2:                                           ; preds = %entry
  call void @rfkill_remove_epo_lock() #16, !dbg !5640
  br label %sw.epilog, !dbg !5641

sw.bb3:                                           ; preds = %entry
  call void @rfkill_remove_epo_lock() #16, !dbg !5642
  store i32 0, ptr %i, align 4, !dbg !5643
  br label %for.cond, !dbg !5645

for.cond:                                         ; preds = %for.inc, %sw.bb3
  %1 = load i32, ptr %i, align 4, !dbg !5646
  %cmp = icmp ult i32 %1, 9, !dbg !5648
  br i1 %cmp, label %for.body, label %for.end, !dbg !5649

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !5650
  call void @rfkill_switch_all(i32 noundef %2, i1 noundef zeroext false) #16, !dbg !5651
  br label %for.inc, !dbg !5651

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !dbg !5652
  %inc = add i32 %3, 1, !dbg !5652
  store i32 %inc, ptr %i, align 4, !dbg !5652
  br label %for.cond, !dbg !5653, !llvm.loop !5654

for.end:                                          ; preds = %for.cond
  br label %sw.epilog, !dbg !5656

sw.default:                                       ; preds = %entry
  call void @rfkill_epo() #16, !dbg !5657
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5658
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5624, metadata !DIExpression()), !dbg !5658
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !5658
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5659
  %tobool = icmp ne i32 %4, 0, !dbg !5659
  %lnot = xor i1 %tobool, true, !dbg !5659
  %lnot4 = xor i1 %lnot, true, !dbg !5659
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5659
  %conv = sext i32 %lnot.ext to i64, !dbg !5659
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5659
  %tobool5 = icmp ne i64 %expval, 0, !dbg !5659
  br i1 %tobool5, label %if.then, label %if.end, !dbg !5658

if.then:                                          ; preds = %sw.default
  br label %do.body, !dbg !5659

do.body:                                          ; preds = %if.then
  br label %do.body6, !dbg !5660

do.body6:                                         ; preds = %do.body
  br label %do.cond, !dbg !5661

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5661

do.end:                                           ; preds = %do.cond
  %5 = load i32, ptr %op.addr, align 4, !dbg !5660
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.3, i32 noundef %5) #16, !dbg !5660
  br label %do.body7, !dbg !5660

do.body7:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !5663
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5627, metadata !DIExpression()), !dbg !5663
  store i32 2313, ptr %__flags, align 4, !dbg !5663
  br label %do.body8, !dbg !5663

do.body8:                                         ; preds = %do.body7
  br label %do.cond9, !dbg !5664

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5664

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !5663

do.body11:                                        ; preds = %do.end10
  %6 = load i32, ptr %__flags, align 4, !dbg !5666
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 78, i32 %6, i64 12) #17, !dbg !5666, !srcloc !5668
  br label %do.cond12, !dbg !5666

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5666

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5663

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !5669

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5669

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !5660
  br label %do.cond17, !dbg !5663

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !5663

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !5660

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !5671

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !5671

do.end21:                                         ; preds = %do.cond20
  br label %do.cond22, !dbg !5660

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !5660

do.end23:                                         ; preds = %do.cond22
  br label %if.end, !dbg !5660

if.end:                                           ; preds = %do.end23, %sw.default
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !5658
  %tobool24 = icmp ne i32 %7, 0, !dbg !5658
  %lnot25 = xor i1 %tobool24, true, !dbg !5658
  %lnot27 = xor i1 %lnot25, true, !dbg !5658
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !5658
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !5658
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !5658
  store i64 %expval30, ptr %tmp, align 8, !dbg !5659
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5673
  %8 = load i64, ptr %tmp, align 8, !dbg !5658
  br label %sw.epilog, !dbg !5674

sw.epilog:                                        ; preds = %if.end, %for.end, %sw.bb2, %sw.bb1, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !5675
  ret void, !dbg !5675
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @generic___test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !5676 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  %old = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5680, metadata !DIExpression()), !dbg !5685
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5681, metadata !DIExpression()), !dbg !5686
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !5687
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5682, metadata !DIExpression()), !dbg !5688
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5689
  %rem = urem i64 %0, 64, !dbg !5689
  %shl = shl i64 1, %rem, !dbg !5689
  store i64 %shl, ptr %mask, align 8, !dbg !5688
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !5690
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5683, metadata !DIExpression()), !dbg !5691
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5692
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5693
  %div = udiv i64 %2, 64, !dbg !5693
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !5694
  store ptr %add.ptr, ptr %p, align 8, !dbg !5691
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #17, !dbg !5695
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5684, metadata !DIExpression()), !dbg !5696
  %3 = load ptr, ptr %p, align 8, !dbg !5697
  %4 = load i64, ptr %3, align 8, !dbg !5698
  store i64 %4, ptr %old, align 8, !dbg !5696
  %5 = load i64, ptr %old, align 8, !dbg !5699
  %6 = load i64, ptr %mask, align 8, !dbg !5700
  %not = xor i64 %6, -1, !dbg !5701
  %and = and i64 %5, %not, !dbg !5702
  %7 = load ptr, ptr %p, align 8, !dbg !5703
  store i64 %and, ptr %7, align 8, !dbg !5704
  %8 = load i64, ptr %old, align 8, !dbg !5705
  %9 = load i64, ptr %mask, align 8, !dbg !5706
  %and1 = and i64 %8, %9, !dbg !5707
  %cmp = icmp ne i64 %and1, 0, !dbg !5708
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #17, !dbg !5709
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !5709
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !5709
  ret i1 %cmp, !dbg !5710
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @___test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !5711 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5713, metadata !DIExpression()), !dbg !5715
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5714, metadata !DIExpression()), !dbg !5716
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5717
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5718
  call void @__instrument_read_write_bitop(i64 noundef %0, ptr noundef %1) #16, !dbg !5719
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5720
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5721
  %call = call zeroext i1 @arch___test_and_clear_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !5722
  ret i1 %call, !dbg !5723
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__rfkill_handle_normal_op(i32 noundef %type, i1 noundef zeroext %complement) #6 align 16 !dbg !5724 {
entry:
  %type.addr = alloca i32, align 4
  %complement.addr = alloca i8, align 1
  %blocked = alloca i8, align 1
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5730, metadata !DIExpression()), !dbg !5733
  %frombool = zext i1 %complement to i8
  store i8 %frombool, ptr %complement.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %complement.addr, metadata !5731, metadata !DIExpression()), !dbg !5734
  call void @llvm.lifetime.start.p0(i64 1, ptr %blocked) #17, !dbg !5735
  call void @llvm.dbg.declare(metadata ptr %blocked, metadata !5732, metadata !DIExpression()), !dbg !5736
  %0 = load i32, ptr %type.addr, align 4, !dbg !5737
  %call = call zeroext i1 @rfkill_get_global_sw_state(i32 noundef %0) #16, !dbg !5738
  %frombool1 = zext i1 %call to i8, !dbg !5739
  store i8 %frombool1, ptr %blocked, align 1, !dbg !5739
  %1 = load i8, ptr %complement.addr, align 1, !dbg !5740, !range !4881, !noundef !574
  %tobool = trunc i8 %1 to i1, !dbg !5740
  br i1 %tobool, label %if.then, label %if.end, !dbg !5742

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %blocked, align 1, !dbg !5743, !range !4881, !noundef !574
  %tobool2 = trunc i8 %2 to i1, !dbg !5743
  %lnot = xor i1 %tobool2, true, !dbg !5744
  %frombool3 = zext i1 %lnot to i8, !dbg !5745
  store i8 %frombool3, ptr %blocked, align 1, !dbg !5745
  br label %if.end, !dbg !5746

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %type.addr, align 4, !dbg !5747
  %4 = load i8, ptr %blocked, align 1, !dbg !5748, !range !4881, !noundef !574
  %tobool4 = trunc i8 %4 to i1, !dbg !5748
  call void @rfkill_switch_all(i32 noundef %3, i1 noundef zeroext %tobool4) #16, !dbg !5749
  call void @llvm.lifetime.end.p0(i64 1, ptr %blocked) #17, !dbg !5750
  ret void, !dbg !5750
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5751 dso_local void @rfkill_epo() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5752 dso_local void @rfkill_restore_states() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5753 dso_local void @rfkill_remove_epo_lock() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5754 dso_local void @rfkill_switch_all(i32 noundef, i1 noundef zeroext) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5757 dso_local void @__warn_printk(ptr noundef, ...) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__instrument_read_write_bitop(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !5760 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5764, metadata !DIExpression()), !dbg !5766
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5765, metadata !DIExpression()), !dbg !5767
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5768
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5771
  %div = sdiv i64 %1, 64, !dbg !5771
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5772
  call void @instrument_read_write(ptr noundef %add.ptr, i64 noundef 8) #16, !dbg !5773
  ret void, !dbg !5774
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch___test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !5775 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5777, metadata !DIExpression()), !dbg !5780
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5778, metadata !DIExpression()), !dbg !5781
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #17, !dbg !5782
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5779, metadata !DIExpression()), !dbg !5783
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5784
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5785
  %2 = call i8 asm sideeffect " btrq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !5786, !srcloc !5787
  %3 = icmp ult i8 %2, 2, !dbg !5786
  call void @llvm.assume(i1 %3), !dbg !5786
  store i8 %2, ptr %oldbit, align 1, !dbg !5786
  %4 = load i8, ptr %oldbit, align 1, !dbg !5788, !range !4881, !noundef !574
  %tobool = trunc i8 %4 to i1, !dbg !5788
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #17, !dbg !5789
  ret i1 %tobool, !dbg !5790
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_read_write(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !5791 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5793, metadata !DIExpression()), !dbg !5795
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5794, metadata !DIExpression()), !dbg !5796
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5797
  %1 = load i64, ptr %size.addr, align 8, !dbg !5798
  %conv = trunc i64 %1 to i32, !dbg !5798
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !5799
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5800
  %3 = load i64, ptr %size.addr, align 8, !dbg !5800
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 3) #16, !dbg !5800
  ret void, !dbg !5801
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5802 dso_local zeroext i1 @rfkill_get_global_sw_state(i32 noundef) #2

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { noredzone }
attributes #17 = { nounwind }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657}
!llvm.ident = !{!4658}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_master_switch_mode", scope: !2, file: !3, line: 35, type: !4647, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/rfkill/.input.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/rfkill/rfkill\22 -D KBUILD_BASENAME=\22input\22 -D KBUILD_MODNAME=\22rfkill\22 -D __KBUILD_MODNAME=kmod_rfkill -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/rfkill/input.ll net/rfkill/input.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !183, globals: !3953, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "net/rfkill/input.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "50401cac7b24792a0c96ccacc8feede6")
!4 = !{!5, !13, !18, !24, !29, !37, !43, !50, !57, !63, !69, !75, !81, !88, !96, !104, !113, !118, !123, !129, !142, !147, !173}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !19, line: 54, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "USRQUOTA", value: 0)
!22 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!23 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !30, line: 9, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!33 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!34 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!35 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!36 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !38, line: 16, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "TT_NONE", value: 0)
!41 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!42 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !44, line: 51, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!47 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!48 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!49 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !51, line: 15, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!54 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!55 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!56 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !58, line: 26, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rfkill_input_master_mode", file: !3, line: 23, baseType: !7, size: 32, elements: !64)
!64 = !{!65, !66, !67, !68}
!65 = !DIEnumerator(name: "RFKILL_INPUT_MASTER_UNLOCK", value: 0)
!66 = !DIEnumerator(name: "RFKILL_INPUT_MASTER_RESTORE", value: 1)
!67 = !DIEnumerator(name: "RFKILL_INPUT_MASTER_UNBLOCKALL", value: 2)
!68 = !DIEnumerator(name: "NUM_RFKILL_INPUT_MASTER_MODES", value: 3)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rfkill_sched_op", file: !3, line: 44, baseType: !7, size: 32, elements: !70)
!70 = !{!71, !72, !73, !74}
!71 = !DIEnumerator(name: "RFKILL_GLOBAL_OP_EPO", value: 0)
!72 = !DIEnumerator(name: "RFKILL_GLOBAL_OP_RESTORE", value: 1)
!73 = !DIEnumerator(name: "RFKILL_GLOBAL_OP_UNLOCK", value: 2)
!74 = !DIEnumerator(name: "RFKILL_GLOBAL_OP_UNBLOCK", value: 3)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !76, line: 45, baseType: !7, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!77 = !{!78, !79, !80}
!78 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!79 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!80 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !82, line: 487, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!83 = !{!84, !85, !86, !87}
!84 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!85 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!86 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!87 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !89, line: 620, baseType: !7, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!90 = !{!91, !92, !93, !94, !95}
!91 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!92 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!93 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!94 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!95 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !89, line: 597, baseType: !97, size: 32, elements: !98)
!97 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!98 = !{!99, !100, !101, !102, !103}
!99 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!100 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!101 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!102 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!103 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !82, line: 547, baseType: !7, size: 32, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !112}
!106 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!107 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!108 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!109 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!110 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!111 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!112 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !82, line: 564, baseType: !7, size: 32, elements: !114)
!114 = !{!115, !116, !117}
!115 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!116 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!117 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !82, line: 577, baseType: !7, size: 32, elements: !119)
!119 = !{!120, !121, !122}
!120 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!121 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!122 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !82, line: 503, baseType: !7, size: 32, elements: !124)
!124 = !{!125, !126, !127, !128}
!125 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!126 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!127 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!128 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rfkill_type", file: !130, line: 43, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/uapi/linux/rfkill.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "50953adb579023bde0d1a75916b0bf68")
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!132 = !DIEnumerator(name: "RFKILL_TYPE_ALL", value: 0)
!133 = !DIEnumerator(name: "RFKILL_TYPE_WLAN", value: 1)
!134 = !DIEnumerator(name: "RFKILL_TYPE_BLUETOOTH", value: 2)
!135 = !DIEnumerator(name: "RFKILL_TYPE_UWB", value: 3)
!136 = !DIEnumerator(name: "RFKILL_TYPE_WIMAX", value: 4)
!137 = !DIEnumerator(name: "RFKILL_TYPE_WWAN", value: 5)
!138 = !DIEnumerator(name: "RFKILL_TYPE_GPS", value: 6)
!139 = !DIEnumerator(name: "RFKILL_TYPE_FM", value: 7)
!140 = !DIEnumerator(name: "RFKILL_TYPE_NFC", value: 8)
!141 = !DIEnumerator(name: "NUM_RFKILL_TYPES", value: 9)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !143, line: 10, baseType: !7, size: 32, elements: !144)
!143 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!144 = !{!145, !146}
!145 = !DIEnumerator(name: "false", value: 0)
!146 = !DIEnumerator(name: "true", value: 1)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 30, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!150 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!151 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!152 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!153 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!154 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!155 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!156 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!157 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!158 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!159 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!160 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!161 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!162 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!163 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!164 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!165 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!166 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!167 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!168 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!169 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!170 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!171 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!172 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !174, line: 364, baseType: !7, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!175 = !{!176, !177, !178, !179, !180, !181, !182}
!176 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!177 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!178 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!179 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!180 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!181 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!182 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!183 = !{!184, !97, !325, !3948, !361, !3949, !3933, !3951, !735, !339}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !186)
!186 = !{!187, !188, !195, !200, !3624, !3650, !3651, !3652, !3653, !3657, !3660, !3661, !3662, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3729, !3733, !3751, !3768, !3769, !3770, !3771, !3780, !3803, !3804, !3807, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3821, !3822, !3908, !3916, !3917, !3918, !3920, !3924, !3925, !3929, !3930, !3931, !3932, !3934, !3935, !3936, !3943, !3944, !3945, !3947}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !185, file: !6, line: 403, baseType: !5, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !185, file: !6, line: 406, baseType: !189, size: 128, offset: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !190, line: 190, size: 128, elements: !191)
!190 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!191 = !{!192, !194}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !190, line: 191, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !189, file: !190, line: 191, baseType: !193, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !185, file: !6, line: 409, baseType: !196, size: 448, offset: 192)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 448, elements: !198)
!197 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!198 = !{!199}
!199 = !DISubrange(count: 56)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !185, file: !6, line: 417, baseType: !201, size: 768, offset: 640)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !202)
!202 = !{!203, !3618, !3619, !3620, !3623}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !201, file: !6, line: 46, baseType: !204, size: 512)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !205, line: 64, size: 512, elements: !206)
!205 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!206 = !{!207, !210, !211, !213, !302, !3505, !3608, !3613, !3614, !3615, !3616, !3617}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !204, file: !205, line: 65, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !204, file: !205, line: 66, baseType: !189, size: 128, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !204, file: !205, line: 67, baseType: !212, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !204, file: !205, line: 68, baseType: !214, size: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !205, line: 168, size: 768, elements: !216)
!216 = !{!217, !218, !261, !262}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !215, file: !205, line: 169, baseType: !189, size: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !215, file: !205, line: 170, baseType: !219, size: 32, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !220, line: 29, baseType: !221)
!220 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !220, line: 17, size: 32, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, scope: !221, file: !220, line: 18, baseType: !224, size: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !220, line: 18, size: 32, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !224, file: !220, line: 19, baseType: !227, size: 32)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !228, line: 14, size: 32, elements: !229)
!228 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !227, file: !228, line: 15, baseType: !231, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !232, line: 44, baseType: !233)
!232 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !232, line: 14, size: 32, elements: !234)
!234 = !{!235}
!235 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !232, line: 15, baseType: !236, size: 32)
!236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !233, file: !232, line: 15, size: 32, elements: !237)
!237 = !{!238, !243, !253}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !236, file: !232, line: 16, baseType: !239, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !190, line: 174, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !190, line: 172, size: 32, elements: !241)
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !240, file: !190, line: 173, baseType: !97, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !236, file: !232, line: 24, baseType: !244, size: 16)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !236, file: !232, line: 24, size: 16, elements: !245)
!245 = !{!246, !252}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !244, file: !232, line: 25, baseType: !247, size: 8)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !248, line: 17, baseType: !249)
!248 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !250, line: 21, baseType: !251)
!250 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!251 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !244, file: !232, line: 26, baseType: !247, size: 8, offset: 8)
!253 = !DIDerivedType(tag: DW_TAG_member, scope: !236, file: !232, line: 28, baseType: !254, size: 32)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !236, file: !232, line: 28, size: 32, elements: !255)
!255 = !{!256, !260}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !254, file: !232, line: 29, baseType: !257, size: 16)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !248, line: 19, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !250, line: 24, baseType: !259)
!259 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !254, file: !232, line: 30, baseType: !257, size: 16, offset: 16)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !215, file: !205, line: 171, baseType: !204, size: 512, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !215, file: !205, line: 172, baseType: !263, size: 64, offset: 704)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !205, line: 133, size: 192, elements: !266)
!266 = !{!267, !274, !279}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !265, file: !205, line: 134, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!97, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !205, line: 135, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!208, !272}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !265, file: !205, line: 136, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!97, !272, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !205, line: 125, size: 20736, elements: !286)
!286 = !{!287, !292, !296, !297, !301}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !285, file: !205, line: 126, baseType: !288, size: 192)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 192, elements: !290)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!290 = !{!291}
!291 = !DISubrange(count: 3)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !285, file: !205, line: 127, baseType: !293, size: 4096, offset: 192)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 4096, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !285, file: !205, line: 128, baseType: !97, size: 32, offset: 4288)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !285, file: !205, line: 129, baseType: !298, size: 16384, offset: 4320)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 16384, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 2048)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !285, file: !205, line: 130, baseType: !97, size: 32, offset: 20704)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !204, file: !205, line: 69, baseType: !303, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !205, line: 116, size: 384, elements: !306)
!306 = !{!307, !311, !340, !3467, !3495, !3499}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !305, file: !205, line: 117, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !212}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !305, file: !205, line: 118, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !315, line: 254, size: 128, elements: !316)
!315 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!316 = !{!317, !332}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !314, file: !315, line: 255, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!321, !212, !326, !289}
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !190, line: 66, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !323, line: 73, baseType: !324)
!323 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !323, line: 15, baseType: !325)
!325 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !315, line: 30, size: 128, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !327, file: !315, line: 31, baseType: !208, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !327, file: !315, line: 32, baseType: !331, size: 16, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !190, line: 24, baseType: !259)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !314, file: !315, line: 256, baseType: !333, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!321, !212, !326, !208, !336}
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !190, line: 61, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !323, line: 72, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !323, line: 16, baseType: !339)
!339 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !305, file: !205, line: 119, baseType: !341, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !315, line: 84, size: 320, elements: !345)
!345 = !{!346, !347, !351, !3463, !3465}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !344, file: !315, line: 85, baseType: !208, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !344, file: !315, line: 86, baseType: !348, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!331, !212, !326, !97}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !344, file: !315, line: 88, baseType: !352, size: 64, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!331, !212, !355, !97}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !315, line: 175, size: 512, elements: !357)
!357 = !{!358, !359, !360, !362, !3454, !3458, !3459}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !356, file: !315, line: 176, baseType: !327, size: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !356, file: !315, line: 177, baseType: !336, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !356, file: !315, line: 178, baseType: !361, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !356, file: !315, line: 179, baseType: !363, size: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !368)
!368 = !{!369, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3448, !3449, !3450, !3451, !3452, !3453}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !367, file: !14, line: 473, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !372)
!372 = !{!373, !374, !375, !383, !384, !391, !392, !395, !396, !3226, !3227, !3228, !3229, !3230, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3270, !3273, !3274, !3275, !3284, !3285, !3286, !3287}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !371, file: !14, line: 642, baseType: !331, size: 16)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !371, file: !14, line: 643, baseType: !259, size: 16, offset: 16)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !371, file: !14, line: 644, baseType: !376, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !377, line: 23, baseType: !378)
!377 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !377, line: 21, size: 32, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !378, file: !377, line: 22, baseType: !381, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !190, line: 37, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !323, line: 49, baseType: !7)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !371, file: !14, line: 645, baseType: !189, size: 128, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !371, file: !14, line: 646, baseType: !385, size: 32, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !377, line: 28, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !377, line: 26, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !386, file: !377, line: 27, baseType: !389, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !190, line: 38, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !323, line: 50, baseType: !7)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !371, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !371, file: !14, line: 650, baseType: !393, size: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !371, file: !14, line: 651, baseType: !393, size: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !371, file: !14, line: 654, baseType: !397, size: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !400)
!400 = !{!401, !3051, !3064, !3068, !3072, !3076, !3080, !3084, !3088, !3092, !3096, !3097, !3101, !3105, !3142, !3171, !3175, !3181, !3185, !3189, !3193, !3197, !3201, !3207, !3211}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !399, file: !14, line: 1967, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!405, !370, !405, !7}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !407, line: 82, size: 1536, elements: !408)
!407 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!408 = !{!409, !410, !420, !428, !429, !449, !450, !454, !467, !3034, !3035, !3036, !3037, !3043, !3044, !3045}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !406, file: !407, line: 84, baseType: !7, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !406, file: !407, line: 85, baseType: !411, size: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !412, line: 275, baseType: !413)
!412 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !412, line: 275, size: 32, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !413, file: !412, line: 275, baseType: !416, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !412, line: 69, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !412, line: 64, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !417, file: !412, line: 65, baseType: !7, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !406, file: !407, line: 86, baseType: !421, size: 128, offset: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !422, line: 38, size: 128, elements: !423)
!422 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!423 = !{!424, !426}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !422, line: 39, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !421, file: !422, line: 39, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !406, file: !407, line: 87, baseType: !405, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !406, file: !407, line: 88, baseType: !430, size: 128, offset: 256)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !407, line: 49, size: 128, elements: !431)
!431 = !{!432, !446}
!432 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !407, line: 50, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !407, line: 50, size: 64, elements: !434)
!434 = !{!435, !442}
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !407, line: 51, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !433, file: !407, line: 51, size: 64, elements: !437)
!437 = !{!438, !441}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !436, file: !407, line: 52, baseType: !439, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !248, line: 21, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !250, line: 27, baseType: !7)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !436, file: !407, line: 52, baseType: !439, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !433, file: !407, line: 54, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !248, line: 23, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !250, line: 31, baseType: !445)
!445 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !430, file: !407, line: 56, baseType: !447, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !406, file: !407, line: 89, baseType: !370, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !406, file: !407, line: 91, baseType: !451, size: 256, offset: 448)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 256, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !406, file: !407, line: 94, baseType: !455, size: 64, offset: 704)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !456, line: 25, size: 64, elements: !457)
!456 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !456, line: 26, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !456, line: 26, size: 64, elements: !460)
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !459, file: !456, line: 28, baseType: !444, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, scope: !459, file: !456, line: 30, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !459, file: !456, line: 30, size: 64, elements: !464)
!464 = !{!465, !466}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !463, file: !456, line: 31, baseType: !219, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !463, file: !456, line: 32, baseType: !97, size: 32, offset: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !406, file: !407, line: 95, baseType: !468, size: 64, offset: 768)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !407, line: 128, size: 1024, align: 512, elements: !471)
!471 = !{!472, !476, !477, !484, !490, !494, !498, !502, !503, !507, !511, !3024, !3028}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !470, file: !407, line: 129, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!97, !405, !7}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !470, file: !407, line: 130, baseType: !473, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !470, file: !407, line: 131, baseType: !478, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!97, !481, !483}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !470, file: !407, line: 132, baseType: !485, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!97, !481, !7, !208, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !470, file: !407, line: 134, baseType: !491, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!97, !481}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !470, file: !407, line: 135, baseType: !495, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!97, !405}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !470, file: !407, line: 136, baseType: !499, size: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !405}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !470, file: !407, line: 137, baseType: !499, size: 64, offset: 448)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !470, file: !407, line: 138, baseType: !504, size: 64, offset: 512)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !405, !370}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !470, file: !407, line: 139, baseType: !508, size: 64, offset: 576)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!289, !405, !289, !97}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !470, file: !407, line: 140, baseType: !512, size: 64, offset: 640)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!515, !3023}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !517, line: 70, size: 256, elements: !518)
!517 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!518 = !{!519, !520, !3019, !3020}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !516, file: !517, line: 71, baseType: !405, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !516, file: !517, line: 72, baseType: !521, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !523)
!523 = !{!524, !525, !528, !529, !530, !534, !583, !745, !785, !875, !879, !880, !881, !882, !883, !892, !893, !894, !895, !900, !904, !905, !908, !911, !914, !917, !918, !919, !960, !2950, !2951, !2952, !2953, !2954, !2955, !2958, !2960, !2967, !2968, !2969, !2970, !2971, !2986, !2987, !2988, !2989, !2990, !2993, !2994, !2995, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !522, file: !14, line: 1191, baseType: !189, size: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !522, file: !14, line: 1192, baseType: !526, size: 32, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !190, line: 21, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !190, line: 18, baseType: !439)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !522, file: !14, line: 1193, baseType: !251, size: 8, offset: 160)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !522, file: !14, line: 1194, baseType: !339, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !522, file: !14, line: 1195, baseType: !531, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !190, line: 52, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !323, line: 88, baseType: !533)
!533 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !522, file: !14, line: 1196, baseType: !535, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !537)
!537 = !{!538, !539, !540, !547, !551, !555, !559, !560, !561, !571, !575, !576, !577, !579, !580, !581, !582}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !536, file: !14, line: 2367, baseType: !208, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !536, file: !14, line: 2368, baseType: !97, size: 32, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !536, file: !14, line: 2376, baseType: !541, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!97, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !546, line: 32, flags: DIFlagFwdDecl)
!546 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!547 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !536, file: !14, line: 2377, baseType: !548, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !536, file: !14, line: 2378, baseType: !552, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!405, !535, !97, !208, !361}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !536, file: !14, line: 2380, baseType: !556, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !521}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !536, file: !14, line: 2381, baseType: !184, size: 64, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !536, file: !14, line: 2382, baseType: !535, size: 64, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !536, file: !14, line: 2383, baseType: !562, size: 64, offset: 512)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !190, line: 194, size: 64, elements: !563)
!563 = !{!564}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !562, file: !190, line: 195, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !190, line: 198, size: 128, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !566, file: !190, line: 199, baseType: !565, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !566, file: !190, line: 199, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !536, file: !14, line: 2385, baseType: !572, offset: 576)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !573, line: 206, elements: !574)
!573 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!574 = !{}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !536, file: !14, line: 2386, baseType: !572, offset: 576)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !536, file: !14, line: 2387, baseType: !572, offset: 576)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !536, file: !14, line: 2388, baseType: !578, offset: 576)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, elements: !290)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !536, file: !14, line: 2390, baseType: !572, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !536, file: !14, line: 2391, baseType: !572, offset: 576)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !536, file: !14, line: 2392, baseType: !572, offset: 576)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !536, file: !14, line: 2393, baseType: !572, offset: 576)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !522, file: !14, line: 1197, baseType: !584, size: 64, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !587)
!587 = !{!588, !592, !596, !597, !601, !607, !611, !612, !613, !617, !621, !625, !626, !627, !633, !638, !639, !646, !647, !648, !649, !653, !657, !726, !743, !744}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !586, file: !14, line: 2058, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!370, !521}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !586, file: !14, line: 2059, baseType: !593, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !370}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !586, file: !14, line: 2060, baseType: !593, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !586, file: !14, line: 2062, baseType: !598, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !370, !97}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !586, file: !14, line: 2063, baseType: !602, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!97, !370, !605}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !586, file: !14, line: 2064, baseType: !608, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!97, !370}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !586, file: !14, line: 2065, baseType: !593, size: 64, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !586, file: !14, line: 2066, baseType: !556, size: 64, offset: 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !586, file: !14, line: 2067, baseType: !614, size: 64, offset: 512)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!97, !521, !97}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !586, file: !14, line: 2068, baseType: !618, size: 64, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!97, !521, !13}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !586, file: !14, line: 2069, baseType: !622, size: 64, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!97, !521}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !586, file: !14, line: 2070, baseType: !618, size: 64, offset: 704)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !586, file: !14, line: 2071, baseType: !622, size: 64, offset: 768)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !586, file: !14, line: 2072, baseType: !628, size: 64, offset: 832)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!97, !405, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !586, file: !14, line: 2073, baseType: !634, size: 64, offset: 896)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!97, !521, !637, !289}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !586, file: !14, line: 2074, baseType: !556, size: 64, offset: 960)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !586, file: !14, line: 2076, baseType: !640, size: 64, offset: 1024)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!97, !643, !405}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !645, line: 66, flags: DIFlagFwdDecl)
!645 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!646 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !586, file: !14, line: 2077, baseType: !640, size: 64, offset: 1088)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !586, file: !14, line: 2078, baseType: !640, size: 64, offset: 1152)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !586, file: !14, line: 2079, baseType: !640, size: 64, offset: 1216)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !586, file: !14, line: 2081, baseType: !650, size: 64, offset: 1280)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!321, !521, !97, !289, !336, !531}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !586, file: !14, line: 2082, baseType: !654, size: 64, offset: 1344)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!321, !521, !97, !208, !336, !531}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !586, file: !14, line: 2083, baseType: !658, size: 64, offset: 1408)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!661, !370}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !664)
!664 = !{!665, !666, !667, !668, !669, !690, !691, !692, !693, !709, !710, !711}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !663, file: !19, line: 297, baseType: !566, size: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !663, file: !19, line: 298, baseType: !189, size: 128, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !663, file: !19, line: 299, baseType: !189, size: 128, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !663, file: !19, line: 300, baseType: !189, size: 128, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !663, file: !19, line: 301, baseType: !670, size: 256, offset: 512)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !671, line: 66, size: 256, elements: !672)
!671 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!672 = !{!673, !682, !684, !689}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !670, file: !671, line: 67, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !675, line: 13, baseType: !676)
!675 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !190, line: 181, baseType: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !190, line: 179, size: 64, elements: !678)
!678 = !{!679}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !677, file: !190, line: 180, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !248, line: 22, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !250, line: 30, baseType: !533)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !670, file: !671, line: 68, baseType: !683, size: 32, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !228, line: 23, baseType: !227)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !670, file: !671, line: 70, baseType: !685, size: 32, offset: 96)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !686, line: 15, size: 32, elements: !687)
!686 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !685, file: !686, line: 20, baseType: !239, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !670, file: !671, line: 72, baseType: !189, size: 128, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !663, file: !19, line: 302, baseType: !219, size: 32, offset: 768)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !663, file: !19, line: 303, baseType: !239, size: 32, offset: 800)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !663, file: !19, line: 304, baseType: !521, size: 64, offset: 832)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !663, file: !19, line: 305, baseType: !694, size: 64, offset: 896)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !695)
!695 = !{!696, !708}
!696 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !19, line: 69, baseType: !697, size: 32)
!697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !694, file: !19, line: 69, size: 32, elements: !698)
!698 = !{!699, !700, !701}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !697, file: !19, line: 70, baseType: !376, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !697, file: !19, line: 71, baseType: !385, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !697, file: !19, line: 72, baseType: !702, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !703, line: 24, baseType: !704)
!703 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !703, line: 22, size: 32, elements: !705)
!705 = !{!706}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !704, file: !703, line: 23, baseType: !707, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !703, line: 20, baseType: !382)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !663, file: !19, line: 306, baseType: !531, size: 64, offset: 960)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !663, file: !19, line: 307, baseType: !339, size: 64, offset: 1024)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !663, file: !19, line: 308, baseType: !712, size: 576, offset: 1088)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !713)
!713 = !{!714, !716, !717, !718, !719, !720, !721, !722, !725}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !712, file: !19, line: 206, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !533)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !712, file: !19, line: 207, baseType: !715, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !712, file: !19, line: 208, baseType: !715, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !712, file: !19, line: 209, baseType: !715, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !712, file: !19, line: 210, baseType: !715, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !712, file: !19, line: 211, baseType: !715, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !712, file: !19, line: 212, baseType: !715, size: 64, offset: 384)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !712, file: !19, line: 213, baseType: !723, size: 64, offset: 448)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !724, line: 8, baseType: !681)
!724 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!725 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !712, file: !19, line: 214, baseType: !723, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !586, file: !14, line: 2085, baseType: !727, size: 64, offset: 1472)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!325, !521, !730}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !732, line: 15, size: 256, elements: !733)
!732 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!733 = !{!734, !736, !737, !738, !739}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !731, file: !732, line: 16, baseType: !735, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !190, line: 154, baseType: !7)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !731, file: !732, line: 19, baseType: !97, size: 32, offset: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !731, file: !732, line: 26, baseType: !339, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !731, file: !732, line: 33, baseType: !339, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !731, file: !732, line: 36, baseType: !740, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !742, line: 33, flags: DIFlagFwdDecl)
!742 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!743 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !586, file: !14, line: 2087, baseType: !727, size: 64, offset: 1536)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !586, file: !14, line: 2089, baseType: !556, size: 64, offset: 1600)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !522, file: !14, line: 1198, baseType: !746, size: 64, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !749)
!749 = !{!750, !754, !758, !762, !763, !764, !765, !766, !771, !776, !780}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !748, file: !19, line: 325, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!97, !662}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !748, file: !19, line: 326, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!662, !521, !97}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !748, file: !19, line: 327, baseType: !759, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !662}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !748, file: !19, line: 328, baseType: !751, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !748, file: !19, line: 329, baseType: !751, size: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !748, file: !19, line: 330, baseType: !751, size: 64, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !748, file: !19, line: 331, baseType: !614, size: 64, offset: 384)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !748, file: !19, line: 334, baseType: !767, size: 64, offset: 448)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!770, !370}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !748, file: !19, line: 335, baseType: !772, size: 64, offset: 512)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!97, !370, !775}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !748, file: !19, line: 337, baseType: !777, size: 64, offset: 576)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!97, !370, !770}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !748, file: !19, line: 339, baseType: !781, size: 64, offset: 640)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!97, !521, !784}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !522, file: !14, line: 1199, baseType: !786, size: 64, offset: 512)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !789)
!789 = !{!790, !801, !802, !806, !807, !808, !823, !846, !850, !851, !874}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !788, file: !19, line: 431, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!97, !521, !97, !97, !794}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !797, line: 8, size: 128, elements: !798)
!797 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !796, file: !797, line: 9, baseType: !515, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !796, file: !797, line: 10, baseType: !405, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !788, file: !19, line: 432, baseType: !614, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !788, file: !19, line: 433, baseType: !803, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!97, !521, !7}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !788, file: !19, line: 434, baseType: !803, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !788, file: !19, line: 435, baseType: !614, size: 64, offset: 256)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !788, file: !19, line: 436, baseType: !809, size: 64, offset: 320)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!97, !521, !97, !812}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !814)
!814 = !{!815, !816, !817, !818, !819, !820, !821, !822}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !813, file: !19, line: 418, baseType: !97, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !813, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !813, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !813, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !813, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !813, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !813, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !813, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !788, file: !19, line: 437, baseType: !824, size: 64, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!97, !521, !694, !827}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !829)
!829 = !{!830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !828, file: !19, line: 346, baseType: !97, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !828, file: !19, line: 347, baseType: !443, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !828, file: !19, line: 348, baseType: !443, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !828, file: !19, line: 349, baseType: !443, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !828, file: !19, line: 350, baseType: !443, size: 64, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !828, file: !19, line: 351, baseType: !443, size: 64, offset: 320)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !828, file: !19, line: 352, baseType: !443, size: 64, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !828, file: !19, line: 353, baseType: !680, size: 64, offset: 448)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !828, file: !19, line: 355, baseType: !680, size: 64, offset: 512)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !828, file: !19, line: 356, baseType: !97, size: 32, offset: 576)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !828, file: !19, line: 357, baseType: !97, size: 32, offset: 608)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !828, file: !19, line: 358, baseType: !443, size: 64, offset: 640)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !828, file: !19, line: 359, baseType: !443, size: 64, offset: 704)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !828, file: !19, line: 360, baseType: !443, size: 64, offset: 768)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !828, file: !19, line: 361, baseType: !680, size: 64, offset: 832)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !828, file: !19, line: 362, baseType: !97, size: 32, offset: 896)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !788, file: !19, line: 438, baseType: !847, size: 64, offset: 448)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!97, !521, !784, !827}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !788, file: !19, line: 440, baseType: !824, size: 64, offset: 512)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !788, file: !19, line: 441, baseType: !852, size: 64, offset: 576)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!97, !521, !855}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !857)
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !856, file: !19, line: 412, baseType: !7, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !856, file: !19, line: 413, baseType: !860, size: 1344, offset: 64)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 1344, elements: !290)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !862)
!862 = !{!863, !864, !865, !866, !867, !868, !869, !870, !871, !873}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !861, file: !19, line: 398, baseType: !7, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !861, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !861, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !861, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !861, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !861, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !861, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !861, file: !19, line: 406, baseType: !445, size: 64, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !861, file: !19, line: 407, baseType: !872, size: 64, offset: 320)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !190, line: 132, baseType: !443)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !861, file: !19, line: 408, baseType: !872, size: 64, offset: 384)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !788, file: !19, line: 442, baseType: !803, size: 64, offset: 640)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !522, file: !14, line: 1200, baseType: !876, size: 64, offset: 576)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !878)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !522, file: !14, line: 1201, baseType: !339, size: 64, offset: 640)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !522, file: !14, line: 1202, baseType: !339, size: 64, offset: 704)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !522, file: !14, line: 1203, baseType: !339, size: 64, offset: 768)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !522, file: !14, line: 1204, baseType: !405, size: 64, offset: 832)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !522, file: !14, line: 1205, baseType: !884, size: 320, offset: 896)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !885, line: 48, size: 320, elements: !886)
!885 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!886 = !{!887, !888, !889, !890, !891}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !884, file: !885, line: 49, baseType: !674, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !884, file: !885, line: 55, baseType: !674, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !884, file: !885, line: 57, baseType: !685, size: 32, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !884, file: !885, line: 59, baseType: !683, size: 32, offset: 160)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !884, file: !885, line: 60, baseType: !189, size: 128, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !522, file: !14, line: 1206, baseType: !97, size: 32, offset: 1216)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !522, file: !14, line: 1207, baseType: !239, size: 32, offset: 1248)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !522, file: !14, line: 1209, baseType: !361, size: 64, offset: 1280)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !522, file: !14, line: 1211, baseType: !896, size: 64, offset: 1344)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !899)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !522, file: !14, line: 1223, baseType: !901, size: 64, offset: 1408)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !422, line: 34, size: 64, elements: !902)
!902 = !{!903}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !901, file: !422, line: 35, baseType: !425, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !522, file: !14, line: 1224, baseType: !189, size: 128, offset: 1472)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !522, file: !14, line: 1225, baseType: !906, size: 64, offset: 1600)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !522, file: !14, line: 1226, baseType: !909, size: 64, offset: 1664)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !522, file: !14, line: 1227, baseType: !912, size: 64, offset: 1728)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !522, file: !14, line: 1228, baseType: !915, size: 64, offset: 1792)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !522, file: !14, line: 1229, baseType: !566, size: 128, offset: 1856)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !522, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !522, file: !14, line: 1231, baseType: !920, size: 2496, offset: 2048)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !921)
!921 = !{!922, !923, !924, !926, !958}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !920, file: !19, line: 522, baseType: !7, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !920, file: !19, line: 523, baseType: !884, size: 320, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !920, file: !19, line: 524, baseType: !925, size: 192, offset: 384)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 192, elements: !290)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !920, file: !19, line: 525, baseType: !927, size: 1728, offset: 576)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 1728, elements: !290)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !929)
!929 = !{!930, !950, !951, !952, !953, !954, !955, !956, !957}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !928, file: !19, line: 223, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !933)
!933 = !{!934, !935, !948, !949}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !932, file: !19, line: 446, baseType: !97, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !932, file: !19, line: 447, baseType: !936, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !938)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !939)
!939 = !{!940, !941, !942, !943, !944, !945, !946, !947}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !938, file: !19, line: 313, baseType: !614, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !938, file: !19, line: 314, baseType: !614, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !938, file: !19, line: 315, baseType: !614, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !938, file: !19, line: 316, baseType: !614, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !938, file: !19, line: 317, baseType: !751, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !938, file: !19, line: 318, baseType: !751, size: 64, offset: 320)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !938, file: !19, line: 319, baseType: !751, size: 64, offset: 384)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !938, file: !19, line: 320, baseType: !781, size: 64, offset: 448)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !932, file: !19, line: 448, baseType: !184, size: 64, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !932, file: !19, line: 449, baseType: !931, size: 64, offset: 192)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !928, file: !19, line: 224, baseType: !97, size: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !928, file: !19, line: 226, baseType: !189, size: 128, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !928, file: !19, line: 227, baseType: !339, size: 64, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !928, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !928, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !928, file: !19, line: 230, baseType: !715, size: 64, offset: 384)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !928, file: !19, line: 231, baseType: !715, size: 64, offset: 448)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !928, file: !19, line: 232, baseType: !361, size: 64, offset: 512)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !920, file: !19, line: 526, baseType: !959, size: 192, offset: 2304)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !936, size: 192, elements: !290)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !522, file: !14, line: 1233, baseType: !961, size: 2368, offset: 4544)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !962)
!962 = !{!963, !964, !965}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !961, file: !14, line: 1185, baseType: !259, size: 16)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !961, file: !14, line: 1186, baseType: !259, size: 16, offset: 16)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !961, file: !14, line: 1187, baseType: !966, size: 2304, offset: 64)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !967, size: 2304, elements: !290)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !968, line: 12, size: 768, elements: !969)
!968 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!969 = !{!970, !992, !994, !2948, !2949}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !967, file: !968, line: 13, baseType: !971, size: 384)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !972, line: 17, size: 384, elements: !973)
!972 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!973 = !{!974, !975, !976, !983}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !971, file: !972, line: 18, baseType: !97, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !971, file: !972, line: 19, baseType: !97, size: 32, offset: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !971, file: !972, line: 20, baseType: !977, size: 192, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !978, line: 41, baseType: !979)
!978 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !978, line: 37, size: 192, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !979, file: !978, line: 38, baseType: !219, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !979, file: !978, line: 39, baseType: !189, size: 128, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !971, file: !972, line: 22, baseType: !984, size: 128, align: 64, offset: 256)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !190, line: 232, size: 128, align: 64, elements: !985)
!985 = !{!986, !988}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !984, file: !190, line: 233, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !984, file: !190, line: 234, baseType: !989, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !987}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !967, file: !968, line: 14, baseType: !993, size: 64, offset: 384)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !967, file: !968, line: 15, baseType: !995, size: 64, offset: 448)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !996, line: 16, size: 64, elements: !997)
!996 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!997 = !{!998}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !995, file: !996, line: 17, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !645, line: 746, size: 58368, elements: !1001)
!1001 = !{!1002, !1010, !1011, !1012, !1018, !1019, !1020, !1021, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1099, !1110, !1205, !1209, !1212, !1243, !1244, !1245, !1246, !1257, !1259, !1260, !1261, !1262, !1263, !1264, !1275, !1276, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1293, !1294, !1301, !1302, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !2049, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2064, !2065, !2066, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2108, !2114, !2115, !2116, !2117, !2118, !2122, !2125, !2132, !2137, !2140, !2143, !2146, !2149, !2289, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2329, !2330, !2331, !2340, !2348, !2349, !2350, !2351, !2352, !2357, !2358, !2359, !2362, !2363, !2366, !2369, !2372, !2380, !2383, !2384, !2470, !2471, !2472, !2473, !2474, !2480, !2481, !2482, !2483, !2486, !2487, !2490, !2493, !2494, !2497, !2498, !2499, !2502, !2503, !2504, !2505, !2506, !2507, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2539, !2540, !2606, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2618, !2690, !2692, !2693, !2694, !2695, !2696, !2708, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2725, !2726, !2727}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1000, file: !645, line: 752, baseType: !1003, size: 192)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1004, line: 56, size: 192, elements: !1005)
!1004 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1005 = !{!1006, !1007, !1008, !1009}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1003, file: !1004, line: 57, baseType: !339, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1003, file: !1004, line: 58, baseType: !339, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1003, file: !1004, line: 59, baseType: !439, size: 32, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1003, file: !1004, line: 61, baseType: !439, size: 32, offset: 160)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1000, file: !645, line: 754, baseType: !7, size: 32, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1000, file: !645, line: 767, baseType: !361, size: 64, offset: 256)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1000, file: !645, line: 768, baseType: !1013, size: 32, offset: 320)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1014, line: 113, baseType: !1015)
!1014 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1014, line: 111, size: 32, elements: !1016)
!1016 = !{!1017}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1015, file: !1014, line: 112, baseType: !239, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1000, file: !645, line: 770, baseType: !7, size: 32, offset: 352)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1000, file: !645, line: 771, baseType: !7, size: 32, offset: 384)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1000, file: !645, line: 774, baseType: !97, size: 32, offset: 416)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1000, file: !645, line: 775, baseType: !1022, size: 128, offset: 448)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1023, line: 58, size: 128, elements: !1024)
!1023 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1024 = !{!1025, !1031, !1036, !1037}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1022, file: !1023, line: 59, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1027, line: 60, size: 64, elements: !1028)
!1027 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1028 = !{!1029}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1026, file: !1027, line: 61, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !1023, line: 60, baseType: !1032, size: 32, offset: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1022, file: !1023, line: 60, size: 32, elements: !1033)
!1033 = !{!1034, !1035}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1032, file: !1023, line: 61, baseType: !7, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1032, file: !1023, line: 62, baseType: !239, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1022, file: !1023, line: 65, baseType: !257, size: 16, offset: 96)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1022, file: !1023, line: 65, baseType: !257, size: 16, offset: 112)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1000, file: !645, line: 776, baseType: !7, size: 32, offset: 576)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1000, file: !645, line: 777, baseType: !339, size: 64, offset: 640)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1000, file: !645, line: 778, baseType: !999, size: 64, offset: 704)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1000, file: !645, line: 787, baseType: !97, size: 32, offset: 768)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1000, file: !645, line: 788, baseType: !97, size: 32, offset: 800)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1000, file: !645, line: 790, baseType: !97, size: 32, offset: 832)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1000, file: !645, line: 792, baseType: !97, size: 32, offset: 864)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1000, file: !645, line: 793, baseType: !97, size: 32, offset: 896)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1000, file: !645, line: 794, baseType: !97, size: 32, offset: 928)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1000, file: !645, line: 795, baseType: !7, size: 32, offset: 960)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1000, file: !645, line: 797, baseType: !1049, size: 2048, offset: 1024)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !645, line: 551, size: 2048, elements: !1050)
!1050 = !{!1051, !1056, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1078, !1081, !1082, !1083}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1049, file: !645, line: 553, baseType: !1052, size: 128)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !645, line: 411, size: 128, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1052, file: !645, line: 412, baseType: !339, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1052, file: !645, line: 413, baseType: !439, size: 32, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1049, file: !645, line: 554, baseType: !1057, size: 192, align: 64, offset: 128)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1058, line: 5, size: 192, align: 64, elements: !1059)
!1058 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1059 = !{!1060, !1061, !1063}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1057, file: !1058, line: 6, baseType: !339, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1057, file: !1058, line: 7, baseType: !1062, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1057, file: !1058, line: 8, baseType: !1062, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1049, file: !645, line: 555, baseType: !443, size: 64, offset: 320)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1049, file: !645, line: 556, baseType: !443, size: 64, offset: 384)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1049, file: !645, line: 558, baseType: !189, size: 128, offset: 448)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1049, file: !645, line: 559, baseType: !7, size: 32, offset: 576)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1049, file: !645, line: 561, baseType: !443, size: 64, offset: 640)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1049, file: !645, line: 562, baseType: !443, size: 64, offset: 704)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1049, file: !645, line: 563, baseType: !443, size: 64, offset: 768)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1049, file: !645, line: 564, baseType: !443, size: 64, offset: 832)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1049, file: !645, line: 565, baseType: !680, size: 64, offset: 896)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1049, file: !645, line: 566, baseType: !443, size: 64, offset: 960)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1049, file: !645, line: 568, baseType: !443, size: 64, offset: 1024)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1049, file: !645, line: 571, baseType: !97, size: 32, offset: 1088)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1049, file: !645, line: 572, baseType: !1077, size: 64, offset: 1152)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1049, file: !645, line: 574, baseType: !1079, size: 64, offset: 1216)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !645, line: 49, flags: DIFlagFwdDecl)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1049, file: !645, line: 576, baseType: !1079, size: 64, offset: 1280)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1049, file: !645, line: 578, baseType: !339, size: 64, offset: 1344)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1049, file: !645, line: 588, baseType: !1084, size: 512, align: 512, offset: 1536)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !645, line: 497, size: 512, align: 512, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1084, file: !645, line: 498, baseType: !443, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1084, file: !645, line: 499, baseType: !443, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1084, file: !645, line: 500, baseType: !443, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1084, file: !645, line: 501, baseType: !439, size: 32, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1084, file: !645, line: 502, baseType: !439, size: 32, offset: 224)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1084, file: !645, line: 503, baseType: !339, size: 64, offset: 256)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1084, file: !645, line: 504, baseType: !339, size: 64, offset: 320)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1084, file: !645, line: 505, baseType: !339, size: 64, offset: 384)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1084, file: !645, line: 506, baseType: !1095, size: 64, align: 64, offset: 448)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !645, line: 445, size: 64, align: 64, elements: !1096)
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1095, file: !645, line: 446, baseType: !7, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1095, file: !645, line: 447, baseType: !7, size: 32, offset: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1000, file: !645, line: 798, baseType: !1100, size: 384, offset: 3072)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !645, line: 592, size: 384, elements: !1101)
!1101 = !{!1102, !1103, !1104, !1105, !1106, !1107, !1108}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1100, file: !645, line: 593, baseType: !189, size: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1100, file: !645, line: 594, baseType: !339, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1100, file: !645, line: 595, baseType: !339, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1100, file: !645, line: 596, baseType: !7, size: 32, offset: 256)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1100, file: !645, line: 597, baseType: !259, size: 16, offset: 288)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1100, file: !645, line: 598, baseType: !259, size: 16, offset: 304)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1100, file: !645, line: 600, baseType: !1109, size: 64, offset: 320)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1000, file: !645, line: 799, baseType: !1111, size: 1792, offset: 3456)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !645, line: 610, size: 1792, elements: !1112)
!1112 = !{!1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1202, !1203}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1111, file: !645, line: 611, baseType: !1057, size: 192, align: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1111, file: !645, line: 618, baseType: !443, size: 64, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1111, file: !645, line: 619, baseType: !443, size: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1111, file: !645, line: 620, baseType: !443, size: 64, offset: 320)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1111, file: !645, line: 621, baseType: !443, size: 64, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1111, file: !645, line: 622, baseType: !443, size: 64, offset: 448)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1111, file: !645, line: 629, baseType: !680, size: 64, offset: 512)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1111, file: !645, line: 630, baseType: !443, size: 64, offset: 576)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1111, file: !645, line: 631, baseType: !7, size: 32, offset: 640)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1111, file: !645, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1111, file: !645, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1111, file: !645, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1111, file: !645, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1111, file: !645, line: 662, baseType: !1127, size: 512, offset: 704)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1128)
!1128 = !{!1129, !1137, !1138, !1143, !1198, !1199, !1200, !1201}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1127, file: !25, line: 119, baseType: !1130, size: 256)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1131, line: 9, size: 256, elements: !1132)
!1131 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1130, file: !1131, line: 10, baseType: !1057, size: 192, align: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1130, file: !1131, line: 11, baseType: !1135, size: 64, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1136, line: 29, baseType: !680)
!1136 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1127, file: !25, line: 120, baseType: !1135, size: 64, offset: 256)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1127, file: !25, line: 121, baseType: !1139, size: 64, offset: 320)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!24, !1142}
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1127, file: !25, line: 122, baseType: !1144, size: 64, offset: 384)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1146)
!1146 = !{!1147, !1172, !1173, !1176, !1181, !1182, !1193, !1197}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1145, file: !25, line: 160, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1150)
!1150 = !{!1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1149, file: !25, line: 216, baseType: !683, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1149, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1149, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1149, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1149, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1149, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1149, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1149, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1149, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1149, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1149, file: !25, line: 227, baseType: !259, size: 16, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1149, file: !25, line: 228, baseType: !259, size: 16, offset: 208)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1149, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1149, file: !25, line: 235, baseType: !1135, size: 64, offset: 256)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1149, file: !25, line: 236, baseType: !1142, size: 64, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1149, file: !25, line: 237, baseType: !1135, size: 64, offset: 384)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1149, file: !25, line: 238, baseType: !1142, size: 64, offset: 448)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1149, file: !25, line: 239, baseType: !1169, size: 4096, align: 512, offset: 512)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1145, size: 4096, align: 512, elements: !1170)
!1170 = !{!1171}
!1171 = !DISubrange(count: 8)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1145, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1145, file: !25, line: 162, baseType: !1174, size: 32, offset: 96)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !190, line: 32, baseType: !1175)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !323, line: 96, baseType: !97)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1145, file: !25, line: 163, baseType: !1177, size: 32, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !412, line: 274, baseType: !1178)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !412, line: 274, size: 32, elements: !1179)
!1179 = !{!1180}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1178, file: !412, line: 274, baseType: !416, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1145, file: !25, line: 164, baseType: !1142, size: 64, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1145, file: !25, line: 165, baseType: !1183, size: 128, offset: 256)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1131, line: 14, size: 128, elements: !1184)
!1184 = !{!1185}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1183, file: !1131, line: 15, baseType: !1186, size: 128)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1058, line: 26, size: 128, elements: !1187)
!1187 = !{!1188, !1192}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1186, file: !1058, line: 27, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1058, line: 12, size: 64, elements: !1190)
!1190 = !{!1191}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1189, file: !1058, line: 13, baseType: !1062, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1186, file: !1058, line: 28, baseType: !1062, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1145, file: !25, line: 166, baseType: !1194, size: 64, offset: 384)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!1135}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1145, file: !25, line: 167, baseType: !1135, size: 64, offset: 448)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1127, file: !25, line: 123, baseType: !247, size: 8, offset: 448)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1127, file: !25, line: 124, baseType: !247, size: 8, offset: 456)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1127, file: !25, line: 125, baseType: !247, size: 8, offset: 464)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1127, file: !25, line: 126, baseType: !247, size: 8, offset: 472)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1111, file: !645, line: 671, baseType: !1127, size: 512, offset: 1216)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1111, file: !645, line: 679, baseType: !1204, size: 64, offset: 1728)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1000, file: !645, line: 800, baseType: !1206, size: 64, offset: 5248)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1208)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !645, line: 800, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1000, file: !645, line: 809, baseType: !1210, size: 64, offset: 5312)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !645, line: 70, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1000, file: !645, line: 825, baseType: !1213, size: 2048, align: 512, offset: 5632)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !645, line: 509, size: 2048, align: 512, elements: !1214)
!1214 = !{!1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1213, file: !645, line: 511, baseType: !443, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1213, file: !645, line: 512, baseType: !443, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1213, file: !645, line: 513, baseType: !443, size: 64, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1213, file: !645, line: 514, baseType: !443, size: 64, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1213, file: !645, line: 515, baseType: !443, size: 64, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1213, file: !645, line: 516, baseType: !443, size: 64, offset: 320)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1213, file: !645, line: 518, baseType: !443, size: 64, offset: 384)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1213, file: !645, line: 519, baseType: !443, size: 64, offset: 448)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1213, file: !645, line: 520, baseType: !680, size: 64, offset: 512)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1213, file: !645, line: 522, baseType: !443, size: 64, offset: 576)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1213, file: !645, line: 523, baseType: !443, size: 64, offset: 640)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1213, file: !645, line: 524, baseType: !680, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1213, file: !645, line: 526, baseType: !680, size: 64, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1213, file: !645, line: 527, baseType: !443, size: 64, offset: 832)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1213, file: !645, line: 529, baseType: !443, size: 64, offset: 896)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1213, file: !645, line: 530, baseType: !443, size: 64, offset: 960)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1213, file: !645, line: 531, baseType: !443, size: 64, offset: 1024)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1213, file: !645, line: 532, baseType: !443, size: 64, offset: 1088)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1213, file: !645, line: 533, baseType: !443, size: 64, offset: 1152)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1213, file: !645, line: 535, baseType: !443, size: 64, offset: 1216)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1213, file: !645, line: 536, baseType: !443, size: 64, offset: 1280)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1213, file: !645, line: 537, baseType: !443, size: 64, offset: 1344)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1213, file: !645, line: 538, baseType: !443, size: 64, offset: 1408)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1213, file: !645, line: 539, baseType: !443, size: 64, offset: 1472)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1213, file: !645, line: 540, baseType: !443, size: 64, offset: 1536)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1213, file: !645, line: 541, baseType: !443, size: 64, offset: 1600)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1213, file: !645, line: 542, baseType: !443, size: 64, offset: 1664)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1213, file: !645, line: 543, baseType: !443, size: 64, offset: 1728)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1000, file: !645, line: 833, baseType: !7, size: 32, offset: 7680)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1000, file: !645, line: 836, baseType: !7, size: 32, offset: 7712)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1000, file: !645, line: 837, baseType: !97, size: 32, offset: 7744)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1000, file: !645, line: 838, baseType: !1247, size: 64, offset: 7808)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1249)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1250, line: 19, baseType: !1251)
!1250 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1250, line: 19, size: 64, elements: !1252)
!1252 = !{!1253}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1251, file: !1250, line: 19, baseType: !1254, size: 64)
!1254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 64, elements: !1255)
!1255 = !{!1256}
!1256 = !DISubrange(count: 1)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1000, file: !645, line: 839, baseType: !1258, size: 64, offset: 7872)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1000, file: !645, line: 840, baseType: !1249, size: 64, offset: 7936)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1000, file: !645, line: 841, baseType: !361, size: 64, offset: 8000)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1000, file: !645, line: 843, baseType: !259, size: 16, offset: 8064)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1000, file: !645, line: 845, baseType: !259, size: 16, offset: 8080)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1000, file: !645, line: 848, baseType: !97, size: 32, offset: 8096)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1000, file: !645, line: 849, baseType: !1265, size: 32, offset: 8128)
!1265 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !645, line: 718, size: 32, elements: !1266)
!1266 = !{!1267, !1274}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1265, file: !645, line: 724, baseType: !1268, size: 32)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1265, file: !645, line: 719, size: 32, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1268, file: !645, line: 720, baseType: !247, size: 8)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1268, file: !645, line: 721, baseType: !247, size: 8, offset: 8)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1268, file: !645, line: 722, baseType: !247, size: 8, offset: 16)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1268, file: !645, line: 723, baseType: !247, size: 8, offset: 24)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1265, file: !645, line: 725, baseType: !439, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1000, file: !645, line: 850, baseType: !189, size: 128, offset: 8192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1000, file: !645, line: 851, baseType: !1277, size: 64, offset: 8320)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !645, line: 60, flags: DIFlagFwdDecl)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1000, file: !645, line: 855, baseType: !339, size: 64, offset: 8384)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1000, file: !645, line: 856, baseType: !247, size: 8, offset: 8448)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1000, file: !645, line: 857, baseType: !247, size: 8, offset: 8456)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1000, file: !645, line: 858, baseType: !97, size: 32, offset: 8480)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1000, file: !645, line: 859, baseType: !189, size: 128, offset: 8512)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1000, file: !645, line: 860, baseType: !97, size: 32, offset: 8640)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1000, file: !645, line: 861, baseType: !189, size: 128, offset: 8704)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1000, file: !645, line: 873, baseType: !1287, size: 256, offset: 8832)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !645, line: 376, size: 256, elements: !1288)
!1288 = !{!1289, !1290, !1291, !1292}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1287, file: !645, line: 381, baseType: !339, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1287, file: !645, line: 384, baseType: !445, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1287, file: !645, line: 389, baseType: !445, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1287, file: !645, line: 392, baseType: !445, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1000, file: !645, line: 875, baseType: !189, size: 128, offset: 9088)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1000, file: !645, line: 877, baseType: !1295, size: 320, offset: 9216)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1296, line: 86, size: 320, elements: !1297)
!1296 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1297 = !{!1298, !1299, !1300}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1295, file: !1296, line: 87, baseType: !97, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1295, file: !1296, line: 88, baseType: !189, size: 128, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1295, file: !1296, line: 89, baseType: !189, size: 128, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1000, file: !645, line: 878, baseType: !1057, size: 192, align: 64, offset: 9536)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1000, file: !645, line: 881, baseType: !1303, size: 64, offset: 9728)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !742, line: 733, size: 10240, elements: !1305)
!1305 = !{!1306, !1968}
!1306 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !742, line: 734, baseType: !1307, size: 10240)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !742, line: 734, size: 10240, elements: !1308)
!1308 = !{!1309, !1313, !1326, !1833, !1834, !1835, !1836, !1837, !1838, !1845, !1846, !1847, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1886, !1888, !1891, !1938, !1939, !1940, !1943, !1944, !1945, !1948, !1949, !1950, !1956, !1957}
!1309 = !DIDerivedType(tag: DW_TAG_member, scope: !1307, file: !742, line: 739, baseType: !1310, size: 512, align: 512)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1307, file: !742, line: 739, size: 512, align: 512, elements: !1311)
!1311 = !{!1312}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1310, file: !742, line: 747, baseType: !239, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1307, file: !742, line: 750, baseType: !1314, size: 128, offset: 512)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1315, line: 218, size: 128, elements: !1316)
!1315 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1316 = !{!1317, !1324, !1325}
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1314, file: !1315, line: 219, baseType: !1318, size: 32)
!1318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1314, file: !1315, line: 219, size: 32, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1318, file: !1315, line: 220, baseType: !219, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1318, file: !1315, line: 221, baseType: !1322)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1315, line: 197, baseType: !1323)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1315, line: 197, elements: !574)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1314, file: !1315, line: 223, baseType: !7, size: 32, offset: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1314, file: !1315, line: 224, baseType: !361, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1307, file: !742, line: 752, baseType: !1327, size: 64, offset: 640)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!339, !1330, !339, !339, !339, !339}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1332)
!1332 = !{!1333, !1339, !1340, !1342, !1343, !1344, !1345, !1346, !1398, !1593, !1602, !1603, !1604, !1823, !1824, !1825, !1826, !1828, !1829, !1832}
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1331, file: !14, line: 995, baseType: !1334, size: 128)
!1334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1331, file: !14, line: 995, size: 128, elements: !1335)
!1335 = !{!1336, !1337, !1338}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1334, file: !14, line: 996, baseType: !1026, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1334, file: !14, line: 997, baseType: !984, size: 128, align: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1334, file: !14, line: 998, baseType: !7, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1331, file: !14, line: 1005, baseType: !219, size: 32, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1331, file: !14, line: 1006, baseType: !1341, size: 32, offset: 160)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !190, line: 156, baseType: !7)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1331, file: !14, line: 1007, baseType: !674, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1331, file: !14, line: 1008, baseType: !670, size: 256, offset: 256)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1331, file: !14, line: 1009, baseType: !531, size: 64, offset: 512)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1331, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1331, file: !14, line: 1011, baseType: !1347, size: 256, offset: 640)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1348)
!1348 = !{!1349, !1370, !1394, !1395, !1396, !1397}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1347, file: !14, line: 949, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1351, line: 34, baseType: !1352)
!1351 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1351, line: 25, size: 64, elements: !1353)
!1353 = !{!1354}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1352, file: !1351, line: 26, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1356, line: 27, baseType: !1357)
!1356 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1356, line: 13, size: 64, elements: !1358)
!1358 = !{!1359, !1369}
!1359 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1356, line: 14, baseType: !1360, size: 32)
!1360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1356, line: 14, size: 32, elements: !1361)
!1361 = !{!1362, !1363}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1360, file: !1356, line: 15, baseType: !239, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, scope: !1360, file: !1356, line: 16, baseType: !1364, size: 32)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1360, file: !1356, line: 16, size: 32, elements: !1365)
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1364, file: !1356, line: 18, baseType: !247, size: 8)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1364, file: !1356, line: 19, baseType: !1368, size: 24, offset: 8)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 24, elements: !290)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1357, file: !1356, line: 26, baseType: !231, size: 32, offset: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1347, file: !14, line: 950, baseType: !1371, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1377, !1381, !1382, !1383, !1384}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1372, file: !30, line: 61, baseType: !1013, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1372, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1372, file: !30, line: 63, baseType: !219, size: 32, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1372, file: !30, line: 65, baseType: !1378, size: 256, offset: 128)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 256, elements: !1379)
!1379 = !{!1380}
!1380 = !DISubrange(count: 4)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1372, file: !30, line: 66, baseType: !562, size: 64, offset: 384)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1372, file: !30, line: 68, baseType: !977, size: 192, offset: 448)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1372, file: !30, line: 69, baseType: !984, size: 128, align: 64, offset: 640)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1372, file: !30, line: 70, baseType: !1385, offset: 768)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1386, elements: !1392)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1387)
!1387 = !{!1388, !1389}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1386, file: !30, line: 55, baseType: !97, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1386, file: !30, line: 56, baseType: !1390, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1392 = !{!1393}
!1393 = !DISubrange(count: -1)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1347, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1347, file: !14, line: 952, baseType: !376, size: 32, offset: 160)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1347, file: !14, line: 952, baseType: !376, size: 32, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1347, file: !14, line: 953, baseType: !97, size: 32, offset: 224)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1331, file: !14, line: 1012, baseType: !1399, size: 64, offset: 896)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1401)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1402, line: 110, size: 1472, elements: !1403)
!1402 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1403 = !{!1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1420, !1421, !1422, !1423, !1424, !1425, !1538, !1539, !1540, !1541, !1542, !1573, !1576, !1580, !1588}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1401, file: !1402, line: 111, baseType: !674, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1401, file: !1402, line: 112, baseType: !376, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1401, file: !1402, line: 113, baseType: !385, size: 32, offset: 96)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1401, file: !1402, line: 114, baseType: !376, size: 32, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1401, file: !1402, line: 115, baseType: !385, size: 32, offset: 160)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1401, file: !1402, line: 116, baseType: !376, size: 32, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1401, file: !1402, line: 117, baseType: !385, size: 32, offset: 224)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1401, file: !1402, line: 118, baseType: !376, size: 32, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1401, file: !1402, line: 119, baseType: !385, size: 32, offset: 288)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1401, file: !1402, line: 120, baseType: !7, size: 32, offset: 320)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1401, file: !1402, line: 121, baseType: !1415, size: 64, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1416, line: 24, baseType: !1417)
!1416 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1416, line: 24, size: 64, elements: !1418)
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1417, file: !1416, line: 24, baseType: !443, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1401, file: !1402, line: 122, baseType: !1415, size: 64, offset: 448)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1401, file: !1402, line: 123, baseType: !1415, size: 64, offset: 512)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1401, file: !1402, line: 124, baseType: !1415, size: 64, offset: 576)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1401, file: !1402, line: 125, baseType: !1415, size: 64, offset: 640)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1401, file: !1402, line: 127, baseType: !251, size: 8, offset: 704)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1401, file: !1402, line: 129, baseType: !1426, size: 64, offset: 768)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1428, line: 195, size: 1728, elements: !1429)
!1428 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1429 = !{!1430, !1431, !1436, !1441, !1442, !1445, !1446, !1451, !1452, !1453, !1454, !1457, !1458, !1459, !1461, !1462, !1502, !1523}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1427, file: !1428, line: 196, baseType: !1013, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1427, file: !1428, line: 197, baseType: !1432, size: 32, offset: 32)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1428, line: 28, baseType: !1433)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !190, line: 104, baseType: !1434)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !248, line: 20, baseType: !1435)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !250, line: 26, baseType: !97)
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !1428, line: 198, baseType: !1437, size: 192, offset: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1427, file: !1428, line: 198, size: 192, elements: !1438)
!1438 = !{!1439, !1440}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1437, file: !1428, line: 199, baseType: !189, size: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1437, file: !1428, line: 200, baseType: !1057, size: 192, align: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1427, file: !1428, line: 205, baseType: !884, size: 320, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1427, file: !1428, line: 206, baseType: !1443, size: 64, offset: 576)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1428, line: 206, flags: DIFlagFwdDecl)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1427, file: !1428, line: 207, baseType: !361, size: 64, offset: 640)
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !1428, line: 208, baseType: !1447, size: 64, offset: 704)
!1447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1427, file: !1428, line: 208, size: 64, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1447, file: !1428, line: 209, baseType: !723, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1447, file: !1428, line: 210, baseType: !723, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1427, file: !1428, line: 212, baseType: !723, size: 64, offset: 768)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1427, file: !1428, line: 213, baseType: !376, size: 32, offset: 832)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1427, file: !1428, line: 214, baseType: !385, size: 32, offset: 864)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1427, file: !1428, line: 215, baseType: !1455, size: 32, offset: 896)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1428, line: 31, baseType: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !190, line: 110, baseType: !439)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1427, file: !1428, line: 216, baseType: !259, size: 16, offset: 928)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1427, file: !1428, line: 217, baseType: !259, size: 16, offset: 944)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1427, file: !1428, line: 221, baseType: !1460, size: 16, offset: 960)
!1460 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1427, file: !1428, line: 228, baseType: !339, size: 64, offset: 1024)
!1462 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !1428, line: 245, baseType: !1463, size: 320, offset: 1088)
!1463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1427, file: !1428, line: 245, size: 320, elements: !1464)
!1464 = !{!1465, !1494}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1463, file: !1428, line: 246, baseType: !1466, size: 320)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1428, line: 114, size: 320, elements: !1467)
!1467 = !{!1468, !1469, !1481, !1484, !1493}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1466, file: !1428, line: 116, baseType: !339, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, scope: !1466, file: !1428, line: 117, baseType: !1470, size: 64, offset: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1466, file: !1428, line: 117, size: 64, elements: !1471)
!1471 = !{!1472, !1480}
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1470, file: !1428, line: 118, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1470, file: !1428, line: 118, size: 64, elements: !1474)
!1474 = !{!1475, !1476}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1473, file: !1428, line: 120, baseType: !257, size: 16)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1473, file: !1428, line: 121, baseType: !1477, size: 48, offset: 16)
!1477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 48, elements: !1478)
!1478 = !{!1479}
!1479 = !DISubrange(count: 6)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1470, file: !1428, line: 127, baseType: !339, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1466, file: !1428, line: 129, baseType: !1482, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1428, line: 102, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1466, file: !1428, line: 130, baseType: !1485, size: 64, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1428, line: 108, size: 192, elements: !1487)
!1487 = !{!1488, !1489, !1490}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1486, file: !1428, line: 109, baseType: !984, size: 128, align: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1486, file: !1428, line: 110, baseType: !1013, size: 32, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1486, file: !1428, line: 111, baseType: !1491, size: 8, offset: 160)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !190, line: 35, baseType: !1492)
!1492 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1466, file: !1428, line: 131, baseType: !208, size: 64, offset: 256)
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1463, file: !1428, line: 247, baseType: !1495, size: 320)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1463, file: !1428, line: 247, size: 320, elements: !1496)
!1496 = !{!1497, !1498, !1499, !1500, !1501}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1495, file: !1428, line: 248, baseType: !339, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1495, file: !1428, line: 249, baseType: !339, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1495, file: !1428, line: 250, baseType: !1482, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1495, file: !1428, line: 251, baseType: !1485, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1495, file: !1428, line: 252, baseType: !289, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !1428, line: 260, baseType: !1503, size: 256, offset: 1408)
!1503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1427, file: !1428, line: 260, size: 256, elements: !1504)
!1504 = !{!1505, !1511}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1503, file: !1428, line: 261, baseType: !1506, size: 256)
!1506 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1428, line: 134, size: 256, elements: !1507)
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1506, file: !1428, line: 135, baseType: !361, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1506, file: !1428, line: 136, baseType: !1510, size: 256)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 256, elements: !1379)
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1503, file: !1428, line: 262, baseType: !1512, size: 256)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1503, file: !1428, line: 262, size: 256, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1512, file: !1428, line: 264, baseType: !189, size: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1512, file: !1428, line: 265, baseType: !1516, size: 128, offset: 128)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1517, line: 22, size: 128, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1518 = !{!1519, !1522}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1516, file: !1517, line: 23, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1517, line: 23, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1516, file: !1517, line: 24, baseType: !339, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1427, file: !1428, line: 280, baseType: !1524, size: 64, offset: 1664)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1428, line: 176, size: 192, elements: !1526)
!1526 = !{!1527, !1536, !1537}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1525, file: !1428, line: 177, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1428, line: 171, baseType: !1529)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!97, !1426, !1532, !1534, !1426}
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1483)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1506)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1525, file: !1428, line: 178, baseType: !1426, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1525, file: !1428, line: 179, baseType: !1482, size: 64, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1401, file: !1402, line: 130, baseType: !1426, size: 64, offset: 832)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1401, file: !1402, line: 131, baseType: !1426, size: 64, offset: 896)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1401, file: !1402, line: 132, baseType: !1426, size: 64, offset: 960)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1401, file: !1402, line: 135, baseType: !361, size: 64, offset: 1024)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1401, file: !1402, line: 137, baseType: !1543, size: 64, offset: 1088)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1545, line: 14, size: 1088, elements: !1546)
!1545 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1546 = !{!1547, !1548, !1557, !1558, !1559, !1560, !1561, !1562}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1544, file: !1545, line: 15, baseType: !1013, size: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1544, file: !1545, line: 17, baseType: !1549, size: 320, offset: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1550, line: 22, size: 320, elements: !1551)
!1550 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1551 = !{!1552, !1553, !1554, !1555}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1549, file: !1550, line: 23, baseType: !683, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1549, file: !1550, line: 24, baseType: !680, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1549, file: !1550, line: 26, baseType: !189, size: 128, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1549, file: !1550, line: 28, baseType: !1556, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1544, file: !1545, line: 19, baseType: !339, size: 64, offset: 384)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1544, file: !1545, line: 20, baseType: !674, size: 64, offset: 448)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1544, file: !1545, line: 23, baseType: !566, size: 128, offset: 512)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1544, file: !1545, line: 24, baseType: !376, size: 32, offset: 640)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1544, file: !1545, line: 29, baseType: !674, size: 64, offset: 704)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1544, file: !1545, line: 36, baseType: !1563, size: 320, offset: 768)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1564, line: 15, size: 320, elements: !1565)
!1564 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1565 = !{!1566, !1567, !1568, !1569, !1570, !1571, !1572}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1563, file: !1564, line: 16, baseType: !683, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1563, file: !1564, line: 18, baseType: !97, size: 32, offset: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1563, file: !1564, line: 19, baseType: !97, size: 32, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1563, file: !1564, line: 20, baseType: !97, size: 32, offset: 96)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1563, file: !1564, line: 21, baseType: !97, size: 32, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1563, file: !1564, line: 22, baseType: !339, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1563, file: !1564, line: 23, baseType: !339, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1401, file: !1402, line: 138, baseType: !1574, size: 64, offset: 1152)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !377, line: 18, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1401, file: !1402, line: 139, baseType: !1577, size: 64, offset: 1216)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1579, line: 16, flags: DIFlagFwdDecl)
!1579 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1401, file: !1402, line: 140, baseType: !1581, size: 64, offset: 1280)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1402, line: 25, size: 64, elements: !1583)
!1583 = !{!1584, !1585, !1586}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1582, file: !1402, line: 26, baseType: !239, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1582, file: !1402, line: 27, baseType: !97, size: 32, offset: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1582, file: !1402, line: 28, baseType: !1587, offset: 64)
!1587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, elements: !1392)
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1401, file: !1402, line: 142, baseType: !1589, size: 128, offset: 1344)
!1589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1401, file: !1402, line: 142, size: 128, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1589, file: !1402, line: 143, baseType: !97, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1589, file: !1402, line: 144, baseType: !984, size: 128, align: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1331, file: !14, line: 1013, baseType: !1594, size: 256, offset: 960)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1601}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1594, file: !14, line: 971, baseType: !339, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1594, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1594, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1594, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1594, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1594, file: !14, line: 976, baseType: !531, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1331, file: !14, line: 1014, baseType: !796, size: 128, offset: 1216)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1331, file: !14, line: 1015, baseType: !370, size: 64, offset: 1344)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1331, file: !14, line: 1016, baseType: !1605, size: 64, offset: 1408)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1607)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1608)
!1608 = !{!1609, !1610, !1614, !1619, !1623, !1651, !1652, !1658, !1671, !1679, !1683, !1684, !1745, !1746, !1750, !1755, !1756, !1760, !1764, !1770, !1771, !1775, !1776, !1782, !1786, !1790, !1796, !1800, !1804, !1808, !1812, !1813, !1819}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1607, file: !14, line: 1915, baseType: !184, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1607, file: !14, line: 1916, baseType: !1611, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!531, !1330, !531, !97}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1607, file: !14, line: 1917, baseType: !1615, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!321, !1330, !289, !336, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1607, file: !14, line: 1918, baseType: !1620, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!321, !1330, !208, !336, !1618}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1607, file: !14, line: 1919, baseType: !1624, size: 64, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!321, !1627, !1649}
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1629)
!1629 = !{!1630, !1631, !1632, !1636, !1637, !1638, !1639}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1628, file: !14, line: 374, baseType: !1330, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1628, file: !14, line: 375, baseType: !531, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1628, file: !14, line: 376, baseType: !1633, size: 64, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !1627, !325}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1628, file: !14, line: 377, baseType: !361, size: 64, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1628, file: !14, line: 378, baseType: !97, size: 32, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1628, file: !14, line: 379, baseType: !257, size: 16, offset: 288)
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1628, file: !14, line: 380, baseType: !1640, size: 64, offset: 320)
!1640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1628, file: !14, line: 380, size: 64, elements: !1641)
!1641 = !{!1642, !1645}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1640, file: !14, line: 386, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1640, file: !14, line: 395, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!321, !361}
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1607, file: !14, line: 1920, baseType: !1624, size: 64, offset: 320)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1607, file: !14, line: 1921, baseType: !1653, size: 64, offset: 384)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!97, !1627, !1656, !7}
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1607, file: !14, line: 1923, baseType: !1659, size: 64, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!97, !1330, !1662}
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1664)
!1664 = !{!1665, !1670}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1663, file: !14, line: 1859, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1667)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!1491, !1662, !208, !97, !531, !443, !7}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1663, file: !14, line: 1860, baseType: !531, size: 64, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1607, file: !14, line: 1924, baseType: !1672, size: 64, offset: 512)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!1675, !1330, !1677}
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1676, line: 59, baseType: !7)
!1676 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !546, line: 31, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1607, file: !14, line: 1925, baseType: !1680, size: 64, offset: 576)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!325, !1330, !7, !339}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1607, file: !14, line: 1926, baseType: !1680, size: 64, offset: 640)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1607, file: !14, line: 1927, baseType: !1685, size: 64, offset: 704)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!97, !1330, !1688}
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !742, line: 625, size: 1344, elements: !1690)
!1690 = !{!1691, !1700, !1701, !1709, !1716, !1717, !1722, !1723, !1728, !1729, !1732, !1736, !1737, !1738, !1739, !1740, !1743}
!1691 = !DIDerivedType(tag: DW_TAG_member, scope: !1689, file: !742, line: 628, baseType: !1692, size: 128)
!1692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1689, file: !742, line: 628, size: 128, elements: !1693)
!1693 = !{!1694, !1699}
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1692, file: !742, line: 629, baseType: !1695, size: 128)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1692, file: !742, line: 629, size: 128, elements: !1696)
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1695, file: !742, line: 631, baseType: !339, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1695, file: !742, line: 632, baseType: !339, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1692, file: !742, line: 635, baseType: !984, size: 128, align: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1689, file: !742, line: 639, baseType: !1303, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1689, file: !742, line: 640, baseType: !1702, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1703, line: 297, baseType: !1704)
!1703 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1703, line: 297, size: 64, elements: !1705)
!1705 = !{!1706}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1704, file: !1703, line: 297, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1708, line: 19, baseType: !339)
!1708 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1709 = !DIDerivedType(tag: DW_TAG_member, scope: !1689, file: !742, line: 646, baseType: !1710, size: 64, offset: 256)
!1710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1689, file: !742, line: 646, size: 64, elements: !1711)
!1711 = !{!1712, !1715}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1710, file: !742, line: 647, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1714)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !742, line: 542, baseType: !339)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1710, file: !742, line: 648, baseType: !1714, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1689, file: !742, line: 666, baseType: !97, size: 32, offset: 320)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1689, file: !742, line: 667, baseType: !1718, size: 64, offset: 384)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !742, line: 579, size: 320, elements: !1720)
!1720 = !{!1721}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1719, file: !742, line: 580, baseType: !884, size: 320)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1689, file: !742, line: 670, baseType: !1491, size: 8, offset: 448)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1689, file: !742, line: 681, baseType: !1724, size: 256, offset: 512)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1689, file: !742, line: 678, size: 256, elements: !1725)
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1724, file: !742, line: 679, baseType: !1057, size: 192, align: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1724, file: !742, line: 680, baseType: !339, size: 64, offset: 192)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1689, file: !742, line: 689, baseType: !189, size: 128, offset: 768)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1689, file: !742, line: 691, baseType: !1730, size: 64, offset: 896)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !742, line: 691, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1689, file: !742, line: 694, baseType: !1733, size: 64, offset: 960)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1735)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !742, line: 694, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1689, file: !742, line: 697, baseType: !339, size: 64, offset: 1024)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1689, file: !742, line: 699, baseType: !1330, size: 64, offset: 1088)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1689, file: !742, line: 700, baseType: !361, size: 64, offset: 1152)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1689, file: !742, line: 711, baseType: !674, size: 64, offset: 1216)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1689, file: !742, line: 717, baseType: !1741, size: 64, offset: 1280)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !645, line: 54, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1689, file: !742, line: 722, baseType: !1744, offset: 1344)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !742, line: 570, elements: !574)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1607, file: !14, line: 1928, baseType: !339, size: 64, offset: 768)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1607, file: !14, line: 1929, baseType: !1747, size: 64, offset: 832)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!97, !370, !1330}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1607, file: !14, line: 1930, baseType: !1751, size: 64, offset: 896)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!97, !1330, !1754}
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !361)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1607, file: !14, line: 1931, baseType: !1747, size: 64, offset: 960)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1607, file: !14, line: 1932, baseType: !1757, size: 64, offset: 1024)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!97, !1330, !531, !531, !97}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1607, file: !14, line: 1933, baseType: !1761, size: 64, offset: 1088)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!97, !97, !1330, !97}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1607, file: !14, line: 1934, baseType: !1765, size: 64, offset: 1152)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!97, !1330, !97, !1768}
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1607, file: !14, line: 1935, baseType: !1327, size: 64, offset: 1216)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1607, file: !14, line: 1936, baseType: !1772, size: 64, offset: 1280)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!97, !97}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1607, file: !14, line: 1937, baseType: !1765, size: 64, offset: 1344)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1607, file: !14, line: 1938, baseType: !1777, size: 64, offset: 1408)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!321, !1780, !1330, !1618, !336, !7}
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !645, line: 59, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1607, file: !14, line: 1939, baseType: !1783, size: 64, offset: 1472)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!321, !1330, !1618, !1780, !336, !7}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1607, file: !14, line: 1940, baseType: !1787, size: 64, offset: 1536)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{null, !1330}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1607, file: !14, line: 1941, baseType: !1791, size: 64, offset: 1600)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!97, !1330, !97, !1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1607, file: !14, line: 1942, baseType: !1797, size: 64, offset: 1664)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!325, !1330, !97, !531, !531}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1607, file: !14, line: 1944, baseType: !1801, size: 64, offset: 1728)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{null, !643, !1330}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1607, file: !14, line: 1948, baseType: !1805, size: 64, offset: 1792)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!321, !1330, !531, !1330, !531, !336, !7}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1607, file: !14, line: 1950, baseType: !1809, size: 64, offset: 1856)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!531, !1330, !531, !1330, !531, !531, !7}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1607, file: !14, line: 1953, baseType: !1757, size: 64, offset: 1920)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1607, file: !14, line: 1954, baseType: !1814, size: 64, offset: 1984)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!97, !1817, !7}
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1607, file: !14, line: 1955, baseType: !1820, size: 64, offset: 2048)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!97, !1817, !1656, !7}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1331, file: !14, line: 1018, baseType: !443, size: 64, offset: 1472)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1331, file: !14, line: 1020, baseType: !361, size: 64, offset: 1536)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1331, file: !14, line: 1023, baseType: !361, size: 64, offset: 1600)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1331, file: !14, line: 1027, baseType: !1827, size: 64, offset: 1664)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1331, file: !14, line: 1029, baseType: !366, size: 64, offset: 1728)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1331, file: !14, line: 1030, baseType: !1830, size: 32, offset: 1792)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1831, line: 8, baseType: !439)
!1831 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1331, file: !14, line: 1031, baseType: !1830, size: 32, offset: 1824)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1307, file: !742, line: 756, baseType: !339, size: 64, offset: 704)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1307, file: !742, line: 757, baseType: !339, size: 64, offset: 768)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1307, file: !742, line: 760, baseType: !339, size: 64, offset: 832)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1307, file: !742, line: 761, baseType: !339, size: 64, offset: 896)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1307, file: !742, line: 763, baseType: !339, size: 64, offset: 960)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1307, file: !742, line: 764, baseType: !1839, size: 64, offset: 1024)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1703, line: 299, baseType: !1841)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1703, line: 299, size: 64, elements: !1842)
!1842 = !{!1843}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1841, file: !1703, line: 299, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1708, line: 18, baseType: !339)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1307, file: !742, line: 773, baseType: !239, size: 32, offset: 1088)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1307, file: !742, line: 785, baseType: !239, size: 32, offset: 1120)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1307, file: !742, line: 795, baseType: !1848, size: 64, offset: 1152)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !742, line: 726, size: 128, elements: !1850)
!1850 = !{!1851, !1852}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1849, file: !742, line: 727, baseType: !443, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1849, file: !742, line: 728, baseType: !97, size: 32, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1307, file: !742, line: 801, baseType: !339, size: 64, offset: 1216)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1307, file: !742, line: 804, baseType: !674, size: 64, offset: 1280)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1307, file: !742, line: 806, baseType: !97, size: 32, offset: 1344)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1307, file: !742, line: 808, baseType: !219, size: 32, offset: 1376)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1307, file: !742, line: 823, baseType: !884, size: 320, offset: 1408)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1307, file: !742, line: 825, baseType: !189, size: 128, offset: 1728)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1307, file: !742, line: 845, baseType: !97, size: 32, offset: 1856)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1307, file: !742, line: 849, baseType: !339, size: 64, offset: 1920)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1307, file: !742, line: 850, baseType: !339, size: 64, offset: 1984)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1307, file: !742, line: 852, baseType: !339, size: 64, offset: 2048)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1307, file: !742, line: 853, baseType: !339, size: 64, offset: 2112)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1307, file: !742, line: 854, baseType: !676, size: 64, offset: 2176)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1307, file: !742, line: 855, baseType: !339, size: 64, offset: 2240)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1307, file: !742, line: 856, baseType: !339, size: 64, offset: 2304)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1307, file: !742, line: 857, baseType: !339, size: 64, offset: 2368)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1307, file: !742, line: 858, baseType: !339, size: 64, offset: 2432)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1307, file: !742, line: 865, baseType: !416, size: 32, offset: 2496)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1307, file: !742, line: 867, baseType: !219, size: 32, offset: 2528)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1307, file: !742, line: 869, baseType: !339, size: 64, offset: 2560)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1307, file: !742, line: 869, baseType: !339, size: 64, offset: 2624)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1307, file: !742, line: 869, baseType: !339, size: 64, offset: 2688)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1307, file: !742, line: 869, baseType: !339, size: 64, offset: 2752)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1307, file: !742, line: 870, baseType: !339, size: 64, offset: 2816)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1307, file: !742, line: 870, baseType: !339, size: 64, offset: 2880)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1307, file: !742, line: 870, baseType: !339, size: 64, offset: 2944)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1307, file: !742, line: 871, baseType: !339, size: 64, offset: 3008)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1307, file: !742, line: 871, baseType: !339, size: 64, offset: 3072)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1307, file: !742, line: 871, baseType: !339, size: 64, offset: 3136)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1307, file: !742, line: 871, baseType: !339, size: 64, offset: 3200)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1307, file: !742, line: 873, baseType: !1883, size: 3328, offset: 3264)
!1883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 3328, elements: !1884)
!1884 = !{!1885}
!1885 = !DISubrange(count: 52)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1307, file: !742, line: 875, baseType: !1887, size: 1280, offset: 6592)
!1887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1549, size: 1280, elements: !1379)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1307, file: !742, line: 877, baseType: !1889, size: 64, offset: 7872)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !742, line: 877, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1307, file: !742, line: 880, baseType: !1892, size: 1088, offset: 7936)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1893, line: 72, baseType: !1894)
!1893 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1893, line: 23, size: 1088, elements: !1895)
!1895 = !{!1896, !1897, !1898, !1899, !1900, !1903, !1904, !1905, !1906, !1933, !1934, !1935}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1894, file: !1893, line: 28, baseType: !443, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1894, file: !1893, line: 38, baseType: !676, size: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1894, file: !1893, line: 40, baseType: !339, size: 64, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1894, file: !1893, line: 43, baseType: !884, size: 320, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1894, file: !1893, line: 44, baseType: !1901, size: 64, offset: 512)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1893, line: 44, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1894, file: !1893, line: 48, baseType: !339, size: 64, offset: 576)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1894, file: !1893, line: 59, baseType: !670, size: 256, offset: 640)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1894, file: !1893, line: 60, baseType: !361, size: 64, offset: 896)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1894, file: !1893, line: 61, baseType: !1907, size: 64, offset: 960)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1909)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1910, line: 13, size: 1216, elements: !1911)
!1910 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1911 = !{!1912, !1913, !1914, !1915, !1916, !1917, !1918, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1909, file: !1910, line: 14, baseType: !361, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1909, file: !1910, line: 15, baseType: !339, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1909, file: !1910, line: 17, baseType: !339, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1909, file: !1910, line: 17, baseType: !339, size: 64, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1909, file: !1910, line: 18, baseType: !339, size: 64, offset: 256)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1909, file: !1910, line: 18, baseType: !339, size: 64, offset: 320)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1909, file: !1910, line: 19, baseType: !1919, size: 64, offset: 384)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1909, file: !1910, line: 21, baseType: !325, size: 64, offset: 448)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1909, file: !1910, line: 23, baseType: !325, size: 64, offset: 512)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1909, file: !1910, line: 24, baseType: !325, size: 64, offset: 576)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1909, file: !1910, line: 25, baseType: !325, size: 64, offset: 640)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1909, file: !1910, line: 26, baseType: !325, size: 64, offset: 704)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1909, file: !1910, line: 27, baseType: !325, size: 64, offset: 768)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1909, file: !1910, line: 28, baseType: !325, size: 64, offset: 832)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1909, file: !1910, line: 29, baseType: !325, size: 64, offset: 896)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1909, file: !1910, line: 30, baseType: !325, size: 64, offset: 960)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1909, file: !1910, line: 31, baseType: !325, size: 64, offset: 1024)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1909, file: !1910, line: 32, baseType: !325, size: 64, offset: 1088)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1909, file: !1910, line: 33, baseType: !325, size: 64, offset: 1152)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1894, file: !1893, line: 63, baseType: !239, size: 32, offset: 1024)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1894, file: !1893, line: 69, baseType: !257, size: 16, offset: 1056)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1894, file: !1893, line: 70, baseType: !1936, size: 16, offset: 1072)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !248, line: 18, baseType: !1937)
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !250, line: 23, baseType: !1460)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1307, file: !742, line: 882, baseType: !339, size: 64, offset: 9024)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1307, file: !742, line: 885, baseType: !219, size: 32, offset: 9088)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1307, file: !742, line: 886, baseType: !1941, size: 64, offset: 9152)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !742, line: 732, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1307, file: !742, line: 901, baseType: !1574, size: 64, offset: 9216)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1307, file: !742, line: 904, baseType: !1330, size: 64, offset: 9280)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1307, file: !742, line: 906, baseType: !1946, size: 64, offset: 9344)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !742, line: 906, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1307, file: !742, line: 930, baseType: !239, size: 32, offset: 9408)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1307, file: !742, line: 933, baseType: !239, size: 32, offset: 9440)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1307, file: !742, line: 935, baseType: !1951, size: 64, offset: 9472)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1952)
!1952 = !{!1953}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1951, file: !44, line: 104, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1307, file: !742, line: 940, baseType: !674, size: 64, offset: 9536)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1307, file: !742, line: 942, baseType: !1958, size: 256, offset: 9600)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !148, line: 98, size: 256, elements: !1959)
!1959 = !{!1960, !1961, !1962}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1958, file: !148, line: 99, baseType: !674, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1958, file: !148, line: 100, baseType: !189, size: 128, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1958, file: !148, line: 101, baseType: !1963, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !148, line: 21, baseType: !1964)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{null, !1967}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1304, file: !742, line: 986, baseType: !1969, offset: 10240)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, elements: !1392)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1000, file: !645, line: 882, baseType: !1303, size: 64, offset: 9792)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1000, file: !645, line: 884, baseType: !97, size: 32, offset: 9856)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1000, file: !645, line: 885, baseType: !97, size: 32, offset: 9888)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1000, file: !645, line: 886, baseType: !97, size: 32, offset: 9920)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1000, file: !645, line: 888, baseType: !97, size: 32, offset: 9952)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1000, file: !645, line: 890, baseType: !339, size: 64, offset: 9984)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1000, file: !645, line: 893, baseType: !7, size: 32, offset: 10048)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1000, file: !645, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1000, file: !645, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1000, file: !645, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1000, file: !645, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1000, file: !645, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1000, file: !645, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1000, file: !645, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1000, file: !645, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1000, file: !645, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1000, file: !645, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1000, file: !645, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1000, file: !645, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1000, file: !645, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1000, file: !645, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1000, file: !645, line: 969, baseType: !339, size: 64, offset: 10176)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1000, file: !645, line: 971, baseType: !1993, size: 448, offset: 10240)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !1994)
!1994 = !{!1995, !1996, !2001}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1993, file: !38, line: 26, baseType: !339, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1993, file: !38, line: 27, baseType: !1997, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!325, !2000}
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, scope: !1993, file: !38, line: 28, baseType: !2002, size: 320, offset: 128)
!2002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1993, file: !38, line: 28, size: 320, elements: !2003)
!2003 = !{!2004, !2014, !2039}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2002, file: !38, line: 37, baseType: !2005, size: 320)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !38, line: 30, size: 320, elements: !2006)
!2006 = !{!2007, !2009, !2010, !2011, !2012, !2013}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2005, file: !38, line: 31, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2005, file: !38, line: 32, baseType: !439, size: 32, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2005, file: !38, line: 33, baseType: !439, size: 32, offset: 96)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2005, file: !38, line: 34, baseType: !439, size: 32, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2005, file: !38, line: 35, baseType: !443, size: 64, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2005, file: !38, line: 36, baseType: !2008, size: 64, offset: 256)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2002, file: !38, line: 47, baseType: !2015, size: 192)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !38, line: 39, size: 192, elements: !2016)
!2016 = !{!2017, !2018, !2019, !2038}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2015, file: !38, line: 40, baseType: !1174, size: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2015, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, scope: !2015, file: !38, line: 42, baseType: !2020, size: 64, offset: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2015, file: !38, line: 42, size: 64, elements: !2021)
!2021 = !{!2022, !2030}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2020, file: !38, line: 43, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2025, line: 7, size: 128, elements: !2026)
!2025 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2026 = !{!2027, !2029}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2024, file: !2025, line: 8, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !323, line: 93, baseType: !533)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2024, file: !2025, line: 9, baseType: !533, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2020, file: !38, line: 44, baseType: !2031, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2033, line: 7, size: 64, elements: !2034)
!2033 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2034 = !{!2035, !2037}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2032, file: !2033, line: 8, baseType: !2036, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2033, line: 5, baseType: !1434)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2032, file: !2033, line: 9, baseType: !1434, size: 32, offset: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2015, file: !38, line: 46, baseType: !443, size: 64, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2002, file: !38, line: 55, baseType: !2040, size: 256)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !38, line: 49, size: 256, elements: !2041)
!2041 = !{!2042, !2045, !2046, !2047, !2048}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2040, file: !38, line: 50, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !38, line: 14, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2040, file: !38, line: 51, baseType: !97, size: 32, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2040, file: !38, line: 52, baseType: !97, size: 32, offset: 96)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2040, file: !38, line: 53, baseType: !339, size: 64, offset: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2040, file: !38, line: 54, baseType: !339, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1000, file: !645, line: 973, baseType: !2050, size: 32, offset: 10688)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !190, line: 27, baseType: !2051)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !323, line: 28, baseType: !97)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1000, file: !645, line: 974, baseType: !2050, size: 32, offset: 10720)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1000, file: !645, line: 978, baseType: !339, size: 64, offset: 10752)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1000, file: !645, line: 987, baseType: !999, size: 64, offset: 10816)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1000, file: !645, line: 990, baseType: !999, size: 64, offset: 10880)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1000, file: !645, line: 995, baseType: !189, size: 128, offset: 10944)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1000, file: !645, line: 996, baseType: !189, size: 128, offset: 11072)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1000, file: !645, line: 997, baseType: !999, size: 64, offset: 11200)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1000, file: !645, line: 1005, baseType: !189, size: 128, offset: 11264)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1000, file: !645, line: 1006, baseType: !189, size: 128, offset: 11392)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1000, file: !645, line: 1009, baseType: !1371, size: 64, offset: 11520)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1000, file: !645, line: 1010, baseType: !2063, size: 512, offset: 11584)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 512, elements: !1379)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1000, file: !645, line: 1011, baseType: !189, size: 128, offset: 12096)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1000, file: !645, line: 1012, baseType: !189, size: 128, offset: 12224)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1000, file: !645, line: 1014, baseType: !2067, size: 64, offset: 12352)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2069, line: 26, size: 256, elements: !2070)
!2069 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2070 = !{!2071, !2072}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2068, file: !2069, line: 27, baseType: !7, size: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2068, file: !2069, line: 28, baseType: !2073, size: 192, offset: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2074, line: 43, size: 192, elements: !2075)
!2074 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2075 = !{!2076, !2077}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2073, file: !2074, line: 44, baseType: !683, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2073, file: !2074, line: 45, baseType: !189, size: 128, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1000, file: !645, line: 1017, baseType: !637, size: 64, offset: 12416)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1000, file: !645, line: 1020, baseType: !637, size: 64, offset: 12480)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1000, file: !645, line: 1023, baseType: !361, size: 64, offset: 12544)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1000, file: !645, line: 1025, baseType: !443, size: 64, offset: 12608)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1000, file: !645, line: 1026, baseType: !443, size: 64, offset: 12672)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1000, file: !645, line: 1031, baseType: !443, size: 64, offset: 12736)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1000, file: !645, line: 1032, baseType: !2085, size: 192, offset: 12800)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !645, line: 324, size: 192, elements: !2086)
!2086 = !{!2087, !2088, !2089}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2085, file: !645, line: 326, baseType: !443, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2085, file: !645, line: 327, baseType: !443, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2085, file: !645, line: 328, baseType: !683, size: 32, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1000, file: !645, line: 1041, baseType: !339, size: 64, offset: 12992)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1000, file: !645, line: 1042, baseType: !339, size: 64, offset: 13056)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1000, file: !645, line: 1045, baseType: !443, size: 64, offset: 13120)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1000, file: !645, line: 1048, baseType: !443, size: 64, offset: 13184)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1000, file: !645, line: 1051, baseType: !339, size: 64, offset: 13248)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1000, file: !645, line: 1052, baseType: !339, size: 64, offset: 13312)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1000, file: !645, line: 1055, baseType: !2097, size: 640, offset: 13376)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2098, line: 132, size: 640, elements: !2099)
!2098 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2099 = !{!2100, !2106, !2107}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2097, file: !2098, line: 133, baseType: !2101, size: 576)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2102, size: 576, elements: !290)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2098, line: 117, size: 192, elements: !2103)
!2103 = !{!2104, !2105}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2102, file: !2098, line: 118, baseType: !443, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2102, file: !2098, line: 119, baseType: !1183, size: 128, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2097, file: !2098, line: 134, baseType: !7, size: 32, offset: 576)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2097, file: !2098, line: 135, baseType: !7, size: 32, offset: 608)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1000, file: !645, line: 1058, baseType: !2109, size: 448, offset: 14016)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2098, line: 144, size: 448, elements: !2110)
!2110 = !{!2111, !2112, !2113}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2109, file: !2098, line: 145, baseType: !984, size: 128, align: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2109, file: !2098, line: 146, baseType: !670, size: 256, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2109, file: !2098, line: 147, baseType: !7, size: 32, offset: 384)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1000, file: !645, line: 1064, baseType: !1399, size: 64, offset: 14464)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1000, file: !645, line: 1067, baseType: !1399, size: 64, offset: 14528)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1000, file: !645, line: 1070, baseType: !1399, size: 64, offset: 14592)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1000, file: !645, line: 1074, baseType: !1426, size: 64, offset: 14656)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1000, file: !645, line: 1084, baseType: !2119, size: 128, offset: 14720)
!2119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 128, elements: !2120)
!2120 = !{!2121}
!2121 = !DISubrange(count: 16)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1000, file: !645, line: 1086, baseType: !2123, size: 64, offset: 14848)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !645, line: 55, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1000, file: !645, line: 1089, baseType: !2126, size: 64, offset: 14912)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2127, line: 12, size: 64, elements: !2128)
!2127 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2128 = !{!2129}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2126, file: !2127, line: 13, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2127, line: 8, flags: DIFlagFwdDecl)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1000, file: !645, line: 1090, baseType: !2133, size: 128, offset: 14976)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2134, line: 13, size: 128, elements: !2135)
!2134 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2135 = !{!2136}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2133, file: !2134, line: 14, baseType: !189, size: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1000, file: !645, line: 1097, baseType: !2138, size: 64, offset: 15104)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !645, line: 50, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1000, file: !645, line: 1100, baseType: !2141, size: 64, offset: 15168)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !645, line: 1100, flags: DIFlagFwdDecl)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1000, file: !645, line: 1103, baseType: !2144, size: 64, offset: 15232)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !645, line: 53, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1000, file: !645, line: 1107, baseType: !2147, size: 64, offset: 15296)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !645, line: 56, flags: DIFlagFwdDecl)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1000, file: !645, line: 1110, baseType: !2150, size: 64, offset: 15360)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2152, line: 93, size: 8768, elements: !2153)
!2152 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2153 = !{!2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2203, !2212, !2213, !2215, !2216, !2217, !2220, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2258, !2259, !2266, !2276, !2279, !2280, !2283, !2284, !2285, !2286, !2287, !2288}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2151, file: !2152, line: 94, baseType: !1013, size: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2151, file: !2152, line: 95, baseType: !239, size: 32, offset: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2151, file: !2152, line: 96, baseType: !97, size: 32, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2151, file: !2152, line: 97, baseType: !97, size: 32, offset: 96)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2151, file: !2152, line: 98, baseType: !189, size: 128, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2151, file: !2152, line: 100, baseType: !977, size: 192, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2151, file: !2152, line: 103, baseType: !999, size: 64, offset: 448)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2151, file: !2152, line: 106, baseType: !2162, size: 192, offset: 512)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1579, line: 32, size: 192, elements: !2163)
!2163 = !{!2164, !2165}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2162, file: !1579, line: 33, baseType: !189, size: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2162, file: !1579, line: 34, baseType: !2166, size: 64, offset: 128)
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2167, line: 25, baseType: !2168)
!2167 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2167, line: 23, size: 64, elements: !2169)
!2169 = !{!2170}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2168, file: !2167, line: 24, baseType: !1254, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2151, file: !2152, line: 109, baseType: !562, size: 64, offset: 704)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2151, file: !2152, line: 112, baseType: !97, size: 32, offset: 768)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2151, file: !2152, line: 114, baseType: !97, size: 32, offset: 800)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2151, file: !2152, line: 115, baseType: !999, size: 64, offset: 832)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2151, file: !2152, line: 118, baseType: !97, size: 32, offset: 896)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2151, file: !2152, line: 119, baseType: !7, size: 32, offset: 928)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2151, file: !2152, line: 121, baseType: !2178, size: 64, offset: 960)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2152, line: 80, size: 448, elements: !2180)
!2180 = !{!2181, !2182, !2188}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2179, file: !2152, line: 81, baseType: !239, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2179, file: !2152, line: 82, baseType: !2183, size: 128, offset: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2152, line: 75, size: 128, elements: !2184)
!2184 = !{!2185, !2186}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2183, file: !2152, line: 76, baseType: !999, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2183, file: !2152, line: 77, baseType: !2187, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2179, file: !2152, line: 83, baseType: !2068, size: 256, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2151, file: !2152, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2151, file: !2152, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2151, file: !2152, line: 138, baseType: !7, size: 32, offset: 1056)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2151, file: !2152, line: 139, baseType: !189, size: 128, offset: 1088)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2151, file: !2152, line: 142, baseType: !1127, size: 512, offset: 1216)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2151, file: !2152, line: 143, baseType: !1135, size: 64, offset: 1728)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2151, file: !2152, line: 150, baseType: !2196, size: 256, offset: 1792)
!2196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2197, size: 256, elements: !2201)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2152, line: 38, size: 128, elements: !2198)
!2198 = !{!2199, !2200}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2197, file: !2152, line: 39, baseType: !443, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2197, file: !2152, line: 40, baseType: !443, size: 64, offset: 64)
!2201 = !{!2202}
!2202 = !DISubrange(count: 2)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2151, file: !2152, line: 156, baseType: !2204, size: 192, offset: 2048)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2152, line: 66, size: 192, elements: !2205)
!2205 = !{!2206}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2204, file: !2152, line: 67, baseType: !2207, size: 192)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2152, line: 47, size: 192, elements: !2208)
!2208 = !{!2209, !2210, !2211}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2207, file: !2152, line: 48, baseType: !676, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2207, file: !2152, line: 49, baseType: !676, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2207, file: !2152, line: 50, baseType: !676, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2151, file: !2152, line: 160, baseType: !2097, size: 640, offset: 2240)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2151, file: !2152, line: 163, baseType: !2214, size: 256, offset: 2880)
!2214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1371, size: 256, elements: !1379)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2151, file: !2152, line: 169, baseType: !1371, size: 64, offset: 3136)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2151, file: !2152, line: 172, baseType: !97, size: 32, offset: 3200)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2151, file: !2152, line: 174, baseType: !2218, size: 64, offset: 3264)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2152, line: 174, flags: DIFlagFwdDecl)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2151, file: !2152, line: 185, baseType: !2221, size: 64, offset: 3328)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !412, line: 860, baseType: !2222)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 853, size: 64, elements: !2223)
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2222, file: !412, line: 858, baseType: !411, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2222, file: !412, line: 859, baseType: !219, size: 32, offset: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2151, file: !2152, line: 186, baseType: !443, size: 64, offset: 3392)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2151, file: !2152, line: 186, baseType: !443, size: 64, offset: 3456)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2151, file: !2152, line: 186, baseType: !443, size: 64, offset: 3520)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2151, file: !2152, line: 186, baseType: !443, size: 64, offset: 3584)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2151, file: !2152, line: 187, baseType: !443, size: 64, offset: 3648)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2151, file: !2152, line: 188, baseType: !443, size: 64, offset: 3712)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2151, file: !2152, line: 189, baseType: !2085, size: 192, offset: 3776)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2151, file: !2152, line: 190, baseType: !339, size: 64, offset: 3968)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2151, file: !2152, line: 190, baseType: !339, size: 64, offset: 4032)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2151, file: !2152, line: 190, baseType: !339, size: 64, offset: 4096)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2151, file: !2152, line: 190, baseType: !339, size: 64, offset: 4160)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2151, file: !2152, line: 191, baseType: !339, size: 64, offset: 4224)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2151, file: !2152, line: 191, baseType: !339, size: 64, offset: 4288)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2151, file: !2152, line: 191, baseType: !339, size: 64, offset: 4352)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2151, file: !2152, line: 191, baseType: !339, size: 64, offset: 4416)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2151, file: !2152, line: 192, baseType: !339, size: 64, offset: 4480)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2151, file: !2152, line: 192, baseType: !339, size: 64, offset: 4544)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2151, file: !2152, line: 192, baseType: !339, size: 64, offset: 4608)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2151, file: !2152, line: 192, baseType: !339, size: 64, offset: 4672)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2151, file: !2152, line: 193, baseType: !339, size: 64, offset: 4736)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2151, file: !2152, line: 193, baseType: !339, size: 64, offset: 4800)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2151, file: !2152, line: 194, baseType: !2248, size: 448, offset: 4864)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2249, line: 12, size: 448, elements: !2250)
!2249 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2250 = !{!2251, !2252, !2253, !2254, !2255, !2256, !2257}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2248, file: !2249, line: 15, baseType: !443, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2248, file: !2249, line: 17, baseType: !443, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2248, file: !2249, line: 19, baseType: !443, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2248, file: !2249, line: 21, baseType: !443, size: 64, offset: 192)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2248, file: !2249, line: 29, baseType: !443, size: 64, offset: 256)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2248, file: !2249, line: 35, baseType: !443, size: 64, offset: 320)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2248, file: !2249, line: 44, baseType: !443, size: 64, offset: 384)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2151, file: !2152, line: 202, baseType: !445, size: 64, offset: 5312)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2151, file: !2152, line: 213, baseType: !2260, size: 2048, offset: 5376)
!2260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2261, size: 2048, elements: !2120)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2262, line: 43, size: 128, elements: !2263)
!2262 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2263 = !{!2264, !2265}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2261, file: !2262, line: 44, baseType: !338, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2261, file: !2262, line: 45, baseType: !338, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2151, file: !2152, line: 216, baseType: !2267, size: 448, offset: 7424)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2152, line: 30, size: 448, elements: !2268)
!2268 = !{!2269, !2270, !2271, !2272, !2273, !2274, !2275}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2267, file: !2152, line: 31, baseType: !97, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2267, file: !2152, line: 32, baseType: !325, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2267, file: !2152, line: 33, baseType: !339, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2267, file: !2152, line: 34, baseType: !443, size: 64, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2267, file: !2152, line: 34, baseType: !443, size: 64, offset: 256)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2267, file: !2152, line: 35, baseType: !339, size: 64, offset: 320)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2267, file: !2152, line: 35, baseType: !339, size: 64, offset: 384)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2151, file: !2152, line: 219, baseType: !2277, size: 64, offset: 7872)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2152, line: 219, flags: DIFlagFwdDecl)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2151, file: !2152, line: 222, baseType: !7, size: 32, offset: 7936)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2151, file: !2152, line: 223, baseType: !2281, size: 64, offset: 8000)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2152, line: 223, flags: DIFlagFwdDecl)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2151, file: !2152, line: 230, baseType: !1491, size: 8, offset: 8064)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2151, file: !2152, line: 231, baseType: !1460, size: 16, offset: 8080)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2151, file: !2152, line: 232, baseType: !1460, size: 16, offset: 8096)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2151, file: !2152, line: 234, baseType: !1303, size: 64, offset: 8128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2151, file: !2152, line: 237, baseType: !670, size: 256, offset: 8192)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2151, file: !2152, line: 243, baseType: !884, size: 320, offset: 8448)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1000, file: !645, line: 1111, baseType: !2290, size: 64, offset: 15424)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2152, line: 20, size: 16640, elements: !2292)
!2292 = !{!2293, !2294, !2295, !2296}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2291, file: !2152, line: 21, baseType: !219, size: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2291, file: !2152, line: 22, baseType: !1013, size: 32, offset: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2291, file: !2152, line: 23, baseType: !977, size: 192, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2291, file: !2152, line: 24, baseType: !2297, size: 16384, offset: 256)
!2297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2298, size: 16384, elements: !294)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1579, line: 51, size: 256, elements: !2299)
!2299 = !{!2300}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2298, file: !1579, line: 52, baseType: !2301, size: 256)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1579, line: 37, size: 256, elements: !2302)
!2302 = !{!2303, !2310, !2311, !2317}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2301, file: !1579, line: 39, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2305, line: 83, baseType: !2306)
!2305 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2305, line: 82, baseType: !2308)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{null, !97}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2301, file: !1579, line: 40, baseType: !339, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2301, file: !1579, line: 46, baseType: !2312, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2305, line: 86, baseType: !2313)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2305, line: 85, baseType: !2315)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{null}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2301, file: !1579, line: 48, baseType: !2166, size: 64, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1000, file: !645, line: 1112, baseType: !2166, size: 64, offset: 15488)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1000, file: !645, line: 1113, baseType: !2166, size: 64, offset: 15552)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1000, file: !645, line: 1115, baseType: !2166, size: 64, offset: 15616)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1000, file: !645, line: 1116, baseType: !2162, size: 192, offset: 15680)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1000, file: !645, line: 1117, baseType: !339, size: 64, offset: 15872)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1000, file: !645, line: 1118, baseType: !336, size: 64, offset: 15936)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1000, file: !645, line: 1119, baseType: !7, size: 32, offset: 16000)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1000, file: !645, line: 1121, baseType: !987, size: 64, offset: 16064)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1000, file: !645, line: 1125, baseType: !2327, size: 64, offset: 16128)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !645, line: 43, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1000, file: !645, line: 1127, baseType: !376, size: 32, offset: 16192)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1000, file: !645, line: 1128, baseType: !7, size: 32, offset: 16224)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1000, file: !645, line: 1130, baseType: !2332, size: 128, offset: 16256)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2333, line: 37, size: 128, elements: !2334)
!2333 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2334 = !{!2335, !2336, !2337}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2332, file: !2333, line: 38, baseType: !97, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2332, file: !2333, line: 39, baseType: !239, size: 32, offset: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2332, file: !2333, line: 40, baseType: !2338, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2333, line: 24, flags: DIFlagFwdDecl)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1000, file: !645, line: 1131, baseType: !2341, size: 256, offset: 16384)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2342, line: 12, size: 256, elements: !2343)
!2342 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2343 = !{!2344, !2345, !2346, !2347}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2341, file: !2342, line: 13, baseType: !289, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2341, file: !2342, line: 14, baseType: !339, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2341, file: !2342, line: 15, baseType: !339, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2341, file: !2342, line: 16, baseType: !1491, size: 8, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1000, file: !645, line: 1134, baseType: !443, size: 64, offset: 16640)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1000, file: !645, line: 1135, baseType: !443, size: 64, offset: 16704)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1000, file: !645, line: 1138, baseType: !219, size: 32, offset: 16768)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1000, file: !645, line: 1141, baseType: !683, size: 32, offset: 16800)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1000, file: !645, line: 1143, baseType: !2353, size: 64, offset: 16832)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !645, line: 735, size: 64, elements: !2354)
!2354 = !{!2355}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2353, file: !645, line: 736, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1000, file: !645, line: 1147, baseType: !1186, size: 128, offset: 16896)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1000, file: !645, line: 1149, baseType: !999, size: 64, offset: 17024)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1000, file: !645, line: 1151, baseType: !2360, size: 64, offset: 17088)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !645, line: 1151, flags: DIFlagFwdDecl)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1000, file: !645, line: 1188, baseType: !361, size: 64, offset: 17152)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1000, file: !645, line: 1191, baseType: !2364, size: 64, offset: 17216)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !645, line: 44, flags: DIFlagFwdDecl)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1000, file: !645, line: 1194, baseType: !2367, size: 64, offset: 17280)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !645, line: 45, flags: DIFlagFwdDecl)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1000, file: !645, line: 1197, baseType: !2370, size: 64, offset: 17344)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !645, line: 61, flags: DIFlagFwdDecl)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1000, file: !645, line: 1199, baseType: !2373, size: 64, offset: 17408)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2375, line: 99, size: 128, elements: !2376)
!2375 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2376 = !{!2377, !2378, !2379}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2374, file: !2375, line: 100, baseType: !674, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2374, file: !2375, line: 101, baseType: !239, size: 32, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2374, file: !2375, line: 103, baseType: !259, size: 16, offset: 96)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1000, file: !645, line: 1202, baseType: !2381, size: 64, offset: 17472)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !645, line: 48, flags: DIFlagFwdDecl)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1000, file: !645, line: 1205, baseType: !339, size: 64, offset: 17536)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1000, file: !645, line: 1206, baseType: !2385, size: 64, offset: 17600)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1579, line: 14, baseType: !2387)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1579, line: 12, size: 384, elements: !2388)
!2388 = !{!2389}
!2389 = !DIDerivedType(tag: DW_TAG_member, scope: !2387, file: !1579, line: 13, baseType: !2390, size: 384)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2387, file: !1579, line: 13, size: 384, elements: !2391)
!2391 = !{!2392, !2393, !2394, !2395}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2390, file: !1579, line: 13, baseType: !97, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2390, file: !1579, line: 13, baseType: !97, size: 32, offset: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2390, file: !1579, line: 13, baseType: !97, size: 32, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2390, file: !1579, line: 13, baseType: !2396, size: 256, offset: 128)
!2396 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2397, line: 37, size: 256, elements: !2398)
!2397 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2398 = !{!2399, !2404, !2417, !2423, !2432, !2459, !2464}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2396, file: !2397, line: 42, baseType: !2400, size: 64)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2396, file: !2397, line: 39, size: 64, elements: !2401)
!2401 = !{!2402, !2403}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2400, file: !2397, line: 40, baseType: !2051, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2400, file: !2397, line: 41, baseType: !382, size: 32, offset: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2396, file: !2397, line: 50, baseType: !2405, size: 192)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2396, file: !2397, line: 45, size: 192, elements: !2406)
!2406 = !{!2407, !2409, !2410, !2416}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2405, file: !2397, line: 46, baseType: !2408, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !323, line: 95, baseType: !97)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2405, file: !2397, line: 47, baseType: !97, size: 32, offset: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2405, file: !2397, line: 48, baseType: !2411, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2397, line: 11, baseType: !2412)
!2412 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2397, line: 8, size: 64, elements: !2413)
!2413 = !{!2414, !2415}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2412, file: !2397, line: 9, baseType: !97, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2412, file: !2397, line: 10, baseType: !361, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2405, file: !2397, line: 49, baseType: !97, size: 32, offset: 128)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2396, file: !2397, line: 57, baseType: !2418, size: 128)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2396, file: !2397, line: 53, size: 128, elements: !2419)
!2419 = !{!2420, !2421, !2422}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2418, file: !2397, line: 54, baseType: !2051, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2418, file: !2397, line: 55, baseType: !382, size: 32, offset: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2418, file: !2397, line: 56, baseType: !2411, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2396, file: !2397, line: 66, baseType: !2424, size: 256)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2396, file: !2397, line: 60, size: 256, elements: !2425)
!2425 = !{!2426, !2427, !2428, !2429, !2431}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2424, file: !2397, line: 61, baseType: !2051, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2424, file: !2397, line: 62, baseType: !382, size: 32, offset: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2424, file: !2397, line: 63, baseType: !97, size: 32, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2424, file: !2397, line: 64, baseType: !2430, size: 64, offset: 128)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !323, line: 94, baseType: !324)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2424, file: !2397, line: 65, baseType: !2430, size: 64, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2396, file: !2397, line: 105, baseType: !2433, size: 256)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2396, file: !2397, line: 69, size: 256, elements: !2434)
!2434 = !{!2435, !2436}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2433, file: !2397, line: 70, baseType: !361, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, scope: !2433, file: !2397, line: 79, baseType: !2437, size: 192, offset: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2433, file: !2397, line: 79, size: 192, elements: !2438)
!2438 = !{!2439, !2440, !2441, !2448, !2453}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2437, file: !2397, line: 81, baseType: !97, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2437, file: !2397, line: 86, baseType: !1460, size: 16)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2437, file: !2397, line: 92, baseType: !2442, size: 192)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2437, file: !2397, line: 88, size: 192, elements: !2443)
!2443 = !{!2444, !2446, !2447}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2442, file: !2397, line: 89, baseType: !2445, size: 64)
!2445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 64, elements: !1170)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2442, file: !2397, line: 90, baseType: !361, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2442, file: !2397, line: 91, baseType: !361, size: 64, offset: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2437, file: !2397, line: 97, baseType: !2449, size: 96)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2437, file: !2397, line: 94, size: 96, elements: !2450)
!2450 = !{!2451, !2452}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2449, file: !2397, line: 95, baseType: !2445, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2449, file: !2397, line: 96, baseType: !440, size: 32, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2437, file: !2397, line: 103, baseType: !2454, size: 128)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2437, file: !2397, line: 99, size: 128, elements: !2455)
!2455 = !{!2456, !2457, !2458}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2454, file: !2397, line: 100, baseType: !339, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2454, file: !2397, line: 101, baseType: !440, size: 32, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2454, file: !2397, line: 102, baseType: !440, size: 32, offset: 96)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2396, file: !2397, line: 111, baseType: !2460, size: 128)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2396, file: !2397, line: 108, size: 128, elements: !2461)
!2461 = !{!2462, !2463}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2460, file: !2397, line: 109, baseType: !325, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2460, file: !2397, line: 110, baseType: !97, size: 32, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2396, file: !2397, line: 118, baseType: !2465, size: 128)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2396, file: !2397, line: 114, size: 128, elements: !2466)
!2466 = !{!2467, !2468, !2469}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2465, file: !2397, line: 115, baseType: !361, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2465, file: !2397, line: 116, baseType: !97, size: 32, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2465, file: !2397, line: 117, baseType: !7, size: 32, offset: 96)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1000, file: !645, line: 1208, baseType: !2248, size: 448, offset: 17664)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1000, file: !645, line: 1215, baseType: !443, size: 64, offset: 18112)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1000, file: !645, line: 1217, baseType: !443, size: 64, offset: 18176)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1000, file: !645, line: 1219, baseType: !443, size: 64, offset: 18240)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1000, file: !645, line: 1223, baseType: !2475, size: 64, offset: 18304)
!2475 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2476, line: 99, baseType: !2477)
!2476 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2476, line: 99, size: 64, elements: !2478)
!2478 = !{!2479}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2477, file: !2476, line: 99, baseType: !1254, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1000, file: !645, line: 1225, baseType: !411, size: 32, offset: 18368)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1000, file: !645, line: 1226, baseType: !97, size: 32, offset: 18400)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1000, file: !645, line: 1227, baseType: !97, size: 32, offset: 18432)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1000, file: !645, line: 1231, baseType: !2484, size: 64, offset: 18496)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !645, line: 1231, flags: DIFlagFwdDecl)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1000, file: !645, line: 1233, baseType: !189, size: 128, offset: 18560)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1000, file: !645, line: 1240, baseType: !2488, size: 64, offset: 18688)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !645, line: 62, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1000, file: !645, line: 1242, baseType: !2491, size: 64, offset: 18752)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !645, line: 1242, flags: DIFlagFwdDecl)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1000, file: !645, line: 1244, baseType: !189, size: 128, offset: 18816)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1000, file: !645, line: 1245, baseType: !2495, size: 64, offset: 18944)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !645, line: 51, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1000, file: !645, line: 1246, baseType: !670, size: 256, offset: 19008)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1000, file: !645, line: 1247, baseType: !7, size: 32, offset: 19264)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1000, file: !645, line: 1250, baseType: !2500, size: 64, offset: 19328)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !645, line: 57, flags: DIFlagFwdDecl)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1000, file: !645, line: 1251, baseType: !670, size: 256, offset: 19392)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1000, file: !645, line: 1252, baseType: !189, size: 128, offset: 19648)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1000, file: !645, line: 1259, baseType: !1741, size: 64, offset: 19776)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1000, file: !645, line: 1260, baseType: !1460, size: 16, offset: 19840)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1000, file: !645, line: 1261, baseType: !1460, size: 16, offset: 19856)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1000, file: !645, line: 1314, baseType: !2508, size: 64, offset: 19904)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2510, line: 62, size: 256, align: 256, elements: !2511)
!2510 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517, !2518}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2509, file: !2510, line: 75, baseType: !440, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2509, file: !2510, line: 90, baseType: !440, size: 32, offset: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2509, file: !2510, line: 112, baseType: !444, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2509, file: !2510, line: 132, baseType: !440, size: 32, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2509, file: !2510, line: 140, baseType: !440, size: 32, offset: 160)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2509, file: !2510, line: 149, baseType: !440, size: 32, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2509, file: !2510, line: 154, baseType: !2519, offset: 224)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, elements: !1392)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1000, file: !645, line: 1315, baseType: !439, size: 32, offset: 19968)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1000, file: !645, line: 1316, baseType: !439, size: 32, offset: 20000)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1000, file: !645, line: 1321, baseType: !339, size: 64, offset: 20032)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1000, file: !645, line: 1325, baseType: !97, size: 32, offset: 20096)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1000, file: !645, line: 1326, baseType: !97, size: 32, offset: 20128)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1000, file: !645, line: 1327, baseType: !97, size: 32, offset: 20160)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1000, file: !645, line: 1328, baseType: !97, size: 32, offset: 20192)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1000, file: !645, line: 1329, baseType: !984, size: 128, align: 64, offset: 20224)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1000, file: !645, line: 1332, baseType: !2529, size: 128, offset: 20352)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2530, line: 51, size: 128, elements: !2531)
!2530 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2531 = !{!2532, !2537, !2538}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2529, file: !2530, line: 60, baseType: !2533, size: 64)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2534, line: 7, size: 64, elements: !2535)
!2534 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2535 = !{!2536}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2533, file: !2534, line: 12, baseType: !1251, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2529, file: !2530, line: 63, baseType: !1491, size: 8, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2529, file: !2530, line: 70, baseType: !1491, size: 8, offset: 72)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1000, file: !645, line: 1335, baseType: !1780, size: 64, offset: 20480)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1000, file: !645, line: 1337, baseType: !2541, size: 128, offset: 20544)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2530, line: 39, size: 128, elements: !2542)
!2542 = !{!2543, !2604, !2605}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2541, file: !2530, line: 40, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !742, line: 74, size: 512, align: 128, elements: !2546)
!2546 = !{!2547, !2548, !2598, !2603}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2545, file: !742, line: 75, baseType: !339, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, scope: !2545, file: !742, line: 83, baseType: !2549, size: 320, offset: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2545, file: !742, line: 83, size: 320, elements: !2550)
!2550 = !{!2551, !2572, !2586, !2590, !2597}
!2551 = !DIDerivedType(tag: DW_TAG_member, scope: !2549, file: !742, line: 84, baseType: !2552, size: 320)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2549, file: !742, line: 84, size: 320, elements: !2553)
!2553 = !{!2554, !2565, !2566, !2571}
!2554 = !DIDerivedType(tag: DW_TAG_member, scope: !2552, file: !742, line: 90, baseType: !2555, size: 128)
!2555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2552, file: !742, line: 90, size: 128, elements: !2556)
!2556 = !{!2557, !2558, !2563, !2564}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2555, file: !742, line: 91, baseType: !189, size: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, scope: !2555, file: !742, line: 94, baseType: !2559, size: 128)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2555, file: !742, line: 94, size: 128, elements: !2560)
!2560 = !{!2561, !2562}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2559, file: !742, line: 96, baseType: !361, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2559, file: !742, line: 98, baseType: !7, size: 32, offset: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2555, file: !742, line: 102, baseType: !189, size: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2555, file: !742, line: 103, baseType: !189, size: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2552, file: !742, line: 106, baseType: !366, size: 64, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, scope: !2552, file: !742, line: 107, baseType: !2567, size: 64, offset: 192)
!2567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2552, file: !742, line: 107, size: 64, elements: !2568)
!2568 = !{!2569, !2570}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2567, file: !742, line: 108, baseType: !339, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2567, file: !742, line: 109, baseType: !339, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2552, file: !742, line: 117, baseType: !339, size: 64, offset: 256)
!2572 = !DIDerivedType(tag: DW_TAG_member, scope: !2549, file: !742, line: 119, baseType: !2573, size: 320)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2549, file: !742, line: 119, size: 320, elements: !2574)
!2574 = !{!2575, !2576, !2579, !2580, !2581}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2573, file: !742, line: 124, baseType: !339, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2573, file: !742, line: 125, baseType: !2577, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !742, line: 125, flags: DIFlagFwdDecl)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2573, file: !742, line: 126, baseType: !339, size: 64, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2573, file: !742, line: 127, baseType: !339, size: 64, offset: 192)
!2581 = !DIDerivedType(tag: DW_TAG_member, scope: !2573, file: !742, line: 128, baseType: !2582, size: 64, offset: 256)
!2582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2573, file: !742, line: 128, size: 64, elements: !2583)
!2583 = !{!2584, !2585}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2582, file: !742, line: 133, baseType: !339, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2582, file: !742, line: 138, baseType: !674, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, scope: !2549, file: !742, line: 141, baseType: !2587, size: 64)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2549, file: !742, line: 141, size: 64, elements: !2588)
!2588 = !{!2589}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2587, file: !742, line: 142, baseType: !339, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, scope: !2549, file: !742, line: 144, baseType: !2591, size: 128)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2549, file: !742, line: 144, size: 128, elements: !2592)
!2592 = !{!2593, !2596}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2591, file: !742, line: 146, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !742, line: 146, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2591, file: !742, line: 147, baseType: !361, size: 64, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2549, file: !742, line: 161, baseType: !984, size: 128, align: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, scope: !2545, file: !742, line: 164, baseType: !2599, size: 32, offset: 384)
!2599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2545, file: !742, line: 164, size: 32, elements: !2600)
!2600 = !{!2601, !2602}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2599, file: !742, line: 169, baseType: !239, size: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2599, file: !742, line: 177, baseType: !7, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2545, file: !742, line: 181, baseType: !239, size: 32, offset: 416)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2541, file: !2530, line: 42, baseType: !440, size: 32, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2541, file: !2530, line: 43, baseType: !440, size: 32, offset: 96)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1000, file: !645, line: 1340, baseType: !2607, size: 64, offset: 20672)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !645, line: 69, flags: DIFlagFwdDecl)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1000, file: !645, line: 1351, baseType: !97, size: 32, offset: 20736)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1000, file: !645, line: 1352, baseType: !97, size: 32, offset: 20768)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1000, file: !645, line: 1354, baseType: !339, size: 64, offset: 20800)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1000, file: !645, line: 1364, baseType: !443, size: 64, offset: 20864)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1000, file: !645, line: 1365, baseType: !443, size: 64, offset: 20928)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1000, file: !645, line: 1412, baseType: !339, size: 64, offset: 20992)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1000, file: !645, line: 1453, baseType: !2616, size: 64, offset: 21056)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !645, line: 1453, flags: DIFlagFwdDecl)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1000, file: !645, line: 1457, baseType: !2619, size: 64, offset: 21120)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2621)
!2621 = !{!2622, !2623, !2642, !2645, !2646, !2679, !2689}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2620, file: !44, line: 62, baseType: !43, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, scope: !2620, file: !44, line: 64, baseType: !2624, size: 192, offset: 64)
!2624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2620, file: !44, line: 64, size: 192, elements: !2625)
!2625 = !{!2626, !2637}
!2626 = !DIDerivedType(tag: DW_TAG_member, scope: !2624, file: !44, line: 65, baseType: !2627, size: 192)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2624, file: !44, line: 65, size: 192, elements: !2628)
!2628 = !{!2629, !2636}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2627, file: !44, line: 66, baseType: !2630, size: 128)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2631, line: 50, size: 128, elements: !2632)
!2631 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2632 = !{!2633, !2634, !2635}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2630, file: !2631, line: 52, baseType: !339, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2630, file: !2631, line: 54, baseType: !7, size: 32, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2630, file: !2631, line: 55, baseType: !7, size: 32, offset: 96)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2627, file: !44, line: 67, baseType: !339, size: 64, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, scope: !2624, file: !44, line: 70, baseType: !2638, size: 192)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2624, file: !44, line: 70, size: 192, elements: !2639)
!2639 = !{!2640, !2641}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2638, file: !44, line: 71, baseType: !984, size: 128, align: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2638, file: !44, line: 72, baseType: !339, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2620, file: !44, line: 76, baseType: !2643, size: 64, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2620, file: !44, line: 77, baseType: !339, size: 64, offset: 320)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2620, file: !44, line: 79, baseType: !2647, size: 64, offset: 384)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2631, line: 25, size: 256, elements: !2649)
!2649 = !{!2650, !2656, !2660}
!2650 = !DIDerivedType(tag: DW_TAG_member, scope: !2648, file: !2631, line: 26, baseType: !2651, size: 128)
!2651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2648, file: !2631, line: 26, size: 128, elements: !2652)
!2652 = !{!2653, !2655}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2651, file: !2631, line: 27, baseType: !2654, size: 128)
!2654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 128, elements: !2120)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2651, file: !2631, line: 28, baseType: !2654, size: 128)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2648, file: !2631, line: 31, baseType: !2657, size: 64, offset: 128)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2659)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2631, line: 23, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, scope: !2648, file: !2631, line: 33, baseType: !2661, size: 64, offset: 192)
!2661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2648, file: !2631, line: 33, size: 64, elements: !2662)
!2662 = !{!2663, !2669, !2674}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2661, file: !2631, line: 38, baseType: !2664, size: 64)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2661, file: !2631, line: 34, size: 64, elements: !2665)
!2665 = !{!2666, !2667, !2668}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2664, file: !2631, line: 35, baseType: !1434, size: 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2664, file: !2631, line: 36, baseType: !247, size: 8, offset: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2664, file: !2631, line: 37, baseType: !247, size: 8, offset: 40)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2661, file: !2631, line: 42, baseType: !2670, size: 16)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2661, file: !2631, line: 39, size: 16, elements: !2671)
!2671 = !{!2672, !2673}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2670, file: !2631, line: 40, baseType: !247, size: 8)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2670, file: !2631, line: 41, baseType: !247, size: 8, offset: 8)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2661, file: !2631, line: 46, baseType: !2675, size: 16)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2661, file: !2631, line: 43, size: 16, elements: !2676)
!2676 = !{!2677, !2678}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2675, file: !2631, line: 44, baseType: !247, size: 8)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2675, file: !2631, line: 45, baseType: !247, size: 8, offset: 8)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2620, file: !44, line: 81, baseType: !2680, size: 64, offset: 448)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !2682)
!2682 = !{!2683, !2684, !2685, !2686, !2687, !2688}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2681, file: !44, line: 86, baseType: !2643, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2681, file: !44, line: 87, baseType: !339, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2681, file: !44, line: 88, baseType: !339, size: 64, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2681, file: !44, line: 89, baseType: !339, size: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2681, file: !44, line: 90, baseType: !1491, size: 8, offset: 256)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2681, file: !44, line: 92, baseType: !2680, size: 64, offset: 320)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2620, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1000, file: !645, line: 1463, baseType: !2691, offset: 21184)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !645, line: 739, elements: !574)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1000, file: !645, line: 1470, baseType: !984, size: 128, align: 64, offset: 21184)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1000, file: !645, line: 1471, baseType: !1013, size: 32, offset: 21312)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1000, file: !645, line: 1472, baseType: !97, size: 32, offset: 21344)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1000, file: !645, line: 1474, baseType: !999, size: 64, offset: 21376)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1000, file: !645, line: 1475, baseType: !2697, size: 320, offset: 21440)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2698, line: 11, size: 320, elements: !2699)
!2698 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2699 = !{!2700, !2701, !2702, !2707}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2697, file: !2698, line: 16, baseType: !566, size: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2697, file: !2698, line: 17, baseType: !339, size: 64, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2697, file: !2698, line: 18, baseType: !2703, size: 64, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{null, !2706}
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2697, file: !2698, line: 19, baseType: !439, size: 32, offset: 256)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1000, file: !645, line: 1478, baseType: !2709, size: 64, offset: 21760)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !645, line: 1478, flags: DIFlagFwdDecl)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1000, file: !645, line: 1482, baseType: !1013, size: 32, offset: 21824)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1000, file: !645, line: 1489, baseType: !361, size: 64, offset: 21888)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1000, file: !645, line: 1504, baseType: !361, size: 64, offset: 21952)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1000, file: !645, line: 1505, baseType: !444, size: 64, offset: 22016)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1000, file: !645, line: 1506, baseType: !443, size: 64, offset: 22080)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1000, file: !645, line: 1507, baseType: !444, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1000, file: !645, line: 1508, baseType: !444, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1000, file: !645, line: 1509, baseType: !444, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1000, file: !645, line: 1510, baseType: !984, size: 128, align: 64, offset: 22208)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1000, file: !645, line: 1511, baseType: !97, size: 32, offset: 22336)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1000, file: !645, line: 1515, baseType: !2722, size: 64, offset: 22400)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1027, line: 56, size: 64, elements: !2723)
!2723 = !{!2724}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2722, file: !1027, line: 57, baseType: !1030, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1000, file: !645, line: 1518, baseType: !2722, size: 64, offset: 22464)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1000, file: !645, line: 1528, baseType: !984, size: 128, align: 64, offset: 22528)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1000, file: !645, line: 1552, baseType: !2728, size: 35328, offset: 23040)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2729, line: 430, size: 35328, elements: !2730)
!2729 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2730 = !{!2731, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2760, !2761, !2762, !2763, !2764, !2765, !2768, !2769, !2770, !2771}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2728, file: !2729, line: 432, baseType: !2732, size: 192)
!2732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2733, size: 192, elements: !290)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2734, line: 16, size: 64, elements: !2735)
!2734 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2735 = !{!2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2733, file: !2734, line: 17, baseType: !257, size: 16)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2733, file: !2734, line: 18, baseType: !257, size: 16, offset: 16)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2733, file: !2734, line: 19, baseType: !257, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2733, file: !2734, line: 19, baseType: !257, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2733, file: !2734, line: 19, baseType: !257, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2733, file: !2734, line: 19, baseType: !257, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2733, file: !2734, line: 19, baseType: !257, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2733, file: !2734, line: 20, baseType: !257, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2733, file: !2734, line: 20, baseType: !257, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2733, file: !2734, line: 20, baseType: !257, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2733, file: !2734, line: 20, baseType: !257, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2733, file: !2734, line: 20, baseType: !257, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2733, file: !2734, line: 20, baseType: !257, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2728, file: !2729, line: 436, baseType: !339, size: 64, offset: 192)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2728, file: !2729, line: 440, baseType: !259, size: 16, offset: 256)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2728, file: !2729, line: 441, baseType: !259, size: 16, offset: 272)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2728, file: !2729, line: 442, baseType: !259, size: 16, offset: 288)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2728, file: !2729, line: 443, baseType: !259, size: 16, offset: 304)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2728, file: !2729, line: 447, baseType: !339, size: 64, offset: 320)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2728, file: !2729, line: 448, baseType: !339, size: 64, offset: 384)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2728, file: !2729, line: 459, baseType: !2757, size: 256, offset: 448)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2758, size: 256, elements: !1379)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2729, line: 428, flags: DIFlagFwdDecl)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2728, file: !2729, line: 461, baseType: !339, size: 64, offset: 704)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2728, file: !2729, line: 463, baseType: !339, size: 64, offset: 768)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2728, file: !2729, line: 465, baseType: !339, size: 64, offset: 832)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2728, file: !2729, line: 466, baseType: !339, size: 64, offset: 896)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2728, file: !2729, line: 467, baseType: !339, size: 64, offset: 960)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2728, file: !2729, line: 473, baseType: !2766, size: 64, offset: 1024)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2729, line: 10, flags: DIFlagFwdDecl)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2728, file: !2729, line: 480, baseType: !339, size: 64, offset: 1088)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2728, file: !2729, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2728, file: !2729, line: 491, baseType: !439, size: 32, offset: 1184)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2728, file: !2729, line: 501, baseType: !2772, size: 33792, offset: 1536)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2773, line: 448, size: 33792, elements: !2774)
!2773 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2774 = !{!2775, !2776, !2777, !2939, !2940, !2946, !2947}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2772, file: !2773, line: 461, baseType: !7, size: 32)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2772, file: !2773, line: 468, baseType: !339, size: 64, offset: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2772, file: !2773, line: 476, baseType: !2778, size: 64, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2773, line: 356, size: 33280, align: 512, elements: !2780)
!2780 = !{!2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2779, file: !2773, line: 358, baseType: !7, size: 32)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2779, file: !2773, line: 361, baseType: !7, size: 32, offset: 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2779, file: !2773, line: 364, baseType: !443, size: 64, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2779, file: !2773, line: 367, baseType: !443, size: 64, offset: 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2779, file: !2773, line: 370, baseType: !443, size: 64, offset: 192)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2779, file: !2773, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2779, file: !2773, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2779, file: !2773, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2779, file: !2773, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2779, file: !2773, line: 397, baseType: !2791, size: 32768, offset: 512)
!2791 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2773, line: 348, size: 32768, elements: !2792)
!2792 = !{!2793, !2808, !2845, !2922, !2935}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2791, file: !2773, line: 349, baseType: !2794, size: 896)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2773, line: 12, size: 896, elements: !2795)
!2795 = !{!2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2807}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2794, file: !2773, line: 13, baseType: !439, size: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2794, file: !2773, line: 14, baseType: !439, size: 32, offset: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2794, file: !2773, line: 15, baseType: !439, size: 32, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2794, file: !2773, line: 16, baseType: !439, size: 32, offset: 96)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2794, file: !2773, line: 17, baseType: !439, size: 32, offset: 128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2794, file: !2773, line: 18, baseType: !439, size: 32, offset: 160)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2794, file: !2773, line: 19, baseType: !439, size: 32, offset: 192)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2794, file: !2773, line: 22, baseType: !2804, size: 640, offset: 224)
!2804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 640, elements: !2805)
!2805 = !{!2806}
!2806 = !DISubrange(count: 20)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2794, file: !2773, line: 25, baseType: !439, size: 32, offset: 864)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2791, file: !2773, line: 350, baseType: !2809, size: 4096, align: 128)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2773, line: 34, size: 4096, align: 128, elements: !2810)
!2810 = !{!2811, !2812, !2813, !2814, !2815, !2830, !2831, !2832, !2834, !2836, !2840}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2809, file: !2773, line: 35, baseType: !257, size: 16)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2809, file: !2773, line: 36, baseType: !257, size: 16, offset: 16)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2809, file: !2773, line: 37, baseType: !257, size: 16, offset: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2809, file: !2773, line: 38, baseType: !257, size: 16, offset: 48)
!2815 = !DIDerivedType(tag: DW_TAG_member, scope: !2809, file: !2773, line: 39, baseType: !2816, size: 128, offset: 64)
!2816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2809, file: !2773, line: 39, size: 128, elements: !2817)
!2817 = !{!2818, !2823}
!2818 = !DIDerivedType(tag: DW_TAG_member, scope: !2816, file: !2773, line: 40, baseType: !2819, size: 128)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2773, line: 40, size: 128, elements: !2820)
!2820 = !{!2821, !2822}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2819, file: !2773, line: 41, baseType: !443, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2819, file: !2773, line: 42, baseType: !443, size: 64, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, scope: !2816, file: !2773, line: 44, baseType: !2824, size: 128)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2773, line: 44, size: 128, elements: !2825)
!2825 = !{!2826, !2827, !2828, !2829}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2824, file: !2773, line: 45, baseType: !439, size: 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2824, file: !2773, line: 46, baseType: !439, size: 32, offset: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2824, file: !2773, line: 47, baseType: !439, size: 32, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2824, file: !2773, line: 48, baseType: !439, size: 32, offset: 96)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2809, file: !2773, line: 51, baseType: !439, size: 32, offset: 192)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2809, file: !2773, line: 52, baseType: !439, size: 32, offset: 224)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2809, file: !2773, line: 55, baseType: !2833, size: 1024, offset: 256)
!2833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 1024, elements: !452)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2809, file: !2773, line: 58, baseType: !2835, size: 2048, offset: 1280)
!2835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 2048, elements: !294)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2809, file: !2773, line: 60, baseType: !2837, size: 384, offset: 3328)
!2837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 384, elements: !2838)
!2838 = !{!2839}
!2839 = !DISubrange(count: 12)
!2840 = !DIDerivedType(tag: DW_TAG_member, scope: !2809, file: !2773, line: 62, baseType: !2841, size: 384, offset: 3712)
!2841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2809, file: !2773, line: 62, size: 384, elements: !2842)
!2842 = !{!2843, !2844}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2841, file: !2773, line: 63, baseType: !2837, size: 384)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2841, file: !2773, line: 64, baseType: !2837, size: 384)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2791, file: !2773, line: 351, baseType: !2846, size: 1088)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2773, line: 79, size: 1088, elements: !2847)
!2847 = !{!2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2921}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2846, file: !2773, line: 80, baseType: !439, size: 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2846, file: !2773, line: 81, baseType: !439, size: 32, offset: 32)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2846, file: !2773, line: 82, baseType: !439, size: 32, offset: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2846, file: !2773, line: 83, baseType: !439, size: 32, offset: 96)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2846, file: !2773, line: 84, baseType: !439, size: 32, offset: 128)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2846, file: !2773, line: 85, baseType: !439, size: 32, offset: 160)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2846, file: !2773, line: 86, baseType: !439, size: 32, offset: 192)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2846, file: !2773, line: 88, baseType: !2804, size: 640, offset: 224)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2846, file: !2773, line: 89, baseType: !247, size: 8, offset: 864)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2846, file: !2773, line: 90, baseType: !247, size: 8, offset: 872)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2846, file: !2773, line: 91, baseType: !247, size: 8, offset: 880)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2846, file: !2773, line: 92, baseType: !247, size: 8, offset: 888)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2846, file: !2773, line: 93, baseType: !247, size: 8, offset: 896)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2846, file: !2773, line: 94, baseType: !247, size: 8, offset: 904)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2846, file: !2773, line: 95, baseType: !2863, size: 64, offset: 960)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2865, line: 11, size: 128, elements: !2866)
!2865 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2866 = !{!2867, !2868}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2864, file: !2865, line: 12, baseType: !325, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2864, file: !2865, line: 13, baseType: !2869, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2871, line: 103, size: 1344, elements: !2872)
!2871 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2872 = !{!2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2901, !2902, !2903}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2870, file: !2871, line: 109, baseType: !339, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2870, file: !2871, line: 110, baseType: !339, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2870, file: !2871, line: 111, baseType: !339, size: 64, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2870, file: !2871, line: 112, baseType: !339, size: 64, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2870, file: !2871, line: 113, baseType: !339, size: 64, offset: 256)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2870, file: !2871, line: 114, baseType: !339, size: 64, offset: 320)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2870, file: !2871, line: 117, baseType: !339, size: 64, offset: 384)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2870, file: !2871, line: 118, baseType: !339, size: 64, offset: 448)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2870, file: !2871, line: 119, baseType: !339, size: 64, offset: 512)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2870, file: !2871, line: 120, baseType: !339, size: 64, offset: 576)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2870, file: !2871, line: 121, baseType: !339, size: 64, offset: 640)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2870, file: !2871, line: 122, baseType: !339, size: 64, offset: 704)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2870, file: !2871, line: 123, baseType: !339, size: 64, offset: 768)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2870, file: !2871, line: 124, baseType: !339, size: 64, offset: 832)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2870, file: !2871, line: 125, baseType: !339, size: 64, offset: 896)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2870, file: !2871, line: 139, baseType: !339, size: 64, offset: 960)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2870, file: !2871, line: 142, baseType: !339, size: 64, offset: 1024)
!2890 = !DIDerivedType(tag: DW_TAG_member, scope: !2870, file: !2871, line: 144, baseType: !2891, size: 64, offset: 1088)
!2891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2870, file: !2871, line: 144, size: 64, elements: !2892)
!2892 = !{!2893, !2894, !2895}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2891, file: !2871, line: 146, baseType: !257, size: 16)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2891, file: !2871, line: 148, baseType: !443, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2891, file: !2871, line: 150, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2871, line: 59, size: 64, elements: !2897)
!2897 = !{!2898, !2899, !2900}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2896, file: !2871, line: 61, baseType: !443, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2896, file: !2871, line: 63, baseType: !443, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2896, file: !2871, line: 65, baseType: !443, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2870, file: !2871, line: 153, baseType: !339, size: 64, offset: 1152)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2870, file: !2871, line: 154, baseType: !339, size: 64, offset: 1216)
!2903 = !DIDerivedType(tag: DW_TAG_member, scope: !2870, file: !2871, line: 156, baseType: !2904, size: 64, offset: 1280)
!2904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2870, file: !2871, line: 156, size: 64, elements: !2905)
!2905 = !{!2906, !2907, !2908}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2904, file: !2871, line: 158, baseType: !257, size: 16)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2904, file: !2871, line: 160, baseType: !443, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2904, file: !2871, line: 162, baseType: !2909, size: 64)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2871, line: 69, size: 64, elements: !2910)
!2910 = !{!2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2909, file: !2871, line: 71, baseType: !443, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2909, file: !2871, line: 73, baseType: !443, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2909, file: !2871, line: 75, baseType: !443, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2909, file: !2871, line: 77, baseType: !443, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2909, file: !2871, line: 80, baseType: !443, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2909, file: !2871, line: 83, baseType: !443, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2909, file: !2871, line: 86, baseType: !443, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2909, file: !2871, line: 88, baseType: !443, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2909, file: !2871, line: 93, baseType: !443, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2909, file: !2871, line: 100, baseType: !443, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2846, file: !2773, line: 96, baseType: !439, size: 32, offset: 1024)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2791, file: !2773, line: 352, baseType: !2923, size: 4608, align: 512)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2773, line: 333, size: 4608, align: 512, elements: !2924)
!2924 = !{!2925, !2926, !2933}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2923, file: !2773, line: 334, baseType: !2809, size: 4096, align: 128)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2923, file: !2773, line: 335, baseType: !2927, size: 512, offset: 4096)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2773, line: 312, size: 512, elements: !2928)
!2928 = !{!2929, !2930, !2931}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2927, file: !2773, line: 313, baseType: !443, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2927, file: !2773, line: 314, baseType: !443, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2927, file: !2773, line: 315, baseType: !2932, size: 384, offset: 128)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 384, elements: !1478)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2923, file: !2773, line: 336, baseType: !2934, offset: 4608)
!2934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, elements: !1392)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2791, file: !2773, line: 353, baseType: !2936, size: 32768)
!2936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 32768, elements: !2937)
!2937 = !{!2938}
!2938 = !DISubrange(count: 4096)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2772, file: !2773, line: 484, baseType: !2778, size: 64, offset: 192)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2772, file: !2773, line: 491, baseType: !2941, size: 128, offset: 256)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2773, line: 404, size: 128, elements: !2942)
!2942 = !{!2943, !2944, !2945}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2941, file: !2773, line: 424, baseType: !443, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2941, file: !2773, line: 432, baseType: !7, size: 32, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2941, file: !2773, line: 440, baseType: !7, size: 32, offset: 96)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2772, file: !2773, line: 498, baseType: !2941, size: 128, offset: 384)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2772, file: !2773, line: 508, baseType: !2779, size: 33280, align: 512, offset: 512)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !967, file: !968, line: 16, baseType: !977, size: 192, offset: 512)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !967, file: !968, line: 17, baseType: !239, size: 32, offset: 704)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !522, file: !14, line: 1240, baseType: !361, size: 64, offset: 6912)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !522, file: !14, line: 1243, baseType: !439, size: 32, offset: 6976)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !522, file: !14, line: 1245, baseType: !723, size: 64, offset: 7040)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !522, file: !14, line: 1246, baseType: !723, size: 64, offset: 7104)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !522, file: !14, line: 1248, baseType: !440, size: 32, offset: 7168)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !522, file: !14, line: 1249, baseType: !2956, size: 64, offset: 7232)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !522, file: !14, line: 1252, baseType: !2959, size: 256, offset: 7296)
!2959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 256, elements: !452)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !522, file: !14, line: 1253, baseType: !2961, size: 128, offset: 7552)
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2962, line: 21, baseType: !2963)
!2962 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2962, line: 19, size: 128, elements: !2964)
!2964 = !{!2965}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2963, file: !2962, line: 20, baseType: !2966, size: 128)
!2966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 128, elements: !2120)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !522, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !522, file: !14, line: 1261, baseType: !670, size: 256, offset: 7744)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !522, file: !14, line: 1267, baseType: !208, size: 64, offset: 8000)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !522, file: !14, line: 1269, baseType: !468, size: 64, offset: 8064)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !522, file: !14, line: 1271, baseType: !2972, size: 448, offset: 8128)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !732, line: 63, size: 448, elements: !2973)
!2973 = !{!2974, !2979, !2980, !2981, !2982, !2983, !2984}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2972, file: !732, line: 64, baseType: !2975, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!339, !2978, !730}
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2972, file: !732, line: 66, baseType: !2975, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2972, file: !732, line: 69, baseType: !325, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2972, file: !732, line: 70, baseType: !97, size: 32, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2972, file: !732, line: 71, baseType: !7, size: 32, offset: 224)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2972, file: !732, line: 74, baseType: !189, size: 128, offset: 256)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2972, file: !732, line: 85, baseType: !2985, size: 64, offset: 384)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !522, file: !14, line: 1274, baseType: !674, size: 64, offset: 8576)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !522, file: !14, line: 1280, baseType: !674, size: 64, offset: 8640)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !522, file: !14, line: 1283, baseType: !97, size: 32, offset: 8704)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !522, file: !14, line: 1286, baseType: !1830, size: 32, offset: 8736)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !522, file: !14, line: 1289, baseType: !2991, size: 64, offset: 8768)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !148, line: 18, flags: DIFlagFwdDecl)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !522, file: !14, line: 1290, baseType: !562, size: 64, offset: 8832)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !522, file: !14, line: 1297, baseType: !1574, size: 64, offset: 8896)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !522, file: !14, line: 1304, baseType: !2996, size: 64, offset: 8960)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2997, line: 49, size: 64, elements: !2998)
!2997 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2998 = !{!2999}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2996, file: !2997, line: 50, baseType: !3000, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2997, line: 41, size: 512, align: 512, elements: !3002)
!3002 = !{!3003, !3004, !3009}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3001, file: !2997, line: 43, baseType: !219, size: 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3001, file: !2997, line: 45, baseType: !3005, size: 192, offset: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2997, line: 29, size: 192, elements: !3006)
!3006 = !{!3007, !3008}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3005, file: !2997, line: 30, baseType: !189, size: 128)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3005, file: !2997, line: 32, baseType: !325, size: 64, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3001, file: !2997, line: 46, baseType: !325, size: 64, offset: 256)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !522, file: !14, line: 1305, baseType: !2996, size: 64, offset: 9024)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !522, file: !14, line: 1306, baseType: !984, size: 128, align: 64, offset: 9088)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !522, file: !14, line: 1307, baseType: !1958, size: 256, offset: 9216)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !522, file: !14, line: 1309, baseType: !670, size: 256, offset: 9472)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !522, file: !14, line: 1314, baseType: !97, size: 32, offset: 9728)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !522, file: !14, line: 1317, baseType: !219, size: 32, align: 512, offset: 10240)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !522, file: !14, line: 1318, baseType: !189, size: 128, offset: 10304)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !522, file: !14, line: 1320, baseType: !219, size: 32, offset: 10432)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !522, file: !14, line: 1321, baseType: !189, size: 128, offset: 10496)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !516, file: !517, line: 73, baseType: !97, size: 32, offset: 128)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !516, file: !517, line: 74, baseType: !3021, size: 64, offset: 192)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1416, line: 42, flags: DIFlagFwdDecl)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !470, file: !407, line: 141, baseType: !3025, size: 64, offset: 704)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!97, !794, !1491}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !470, file: !407, line: 142, baseType: !3029, size: 64, offset: 768)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!405, !405, !3032}
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !406, file: !407, line: 96, baseType: !521, size: 64, offset: 832)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !406, file: !407, line: 97, baseType: !339, size: 64, offset: 896)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !406, file: !407, line: 98, baseType: !361, size: 64, offset: 960)
!3037 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !407, line: 100, baseType: !3038, size: 128, offset: 1024)
!3038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !407, line: 100, size: 128, elements: !3039)
!3039 = !{!3040, !3041}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3038, file: !407, line: 101, baseType: !189, size: 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3038, file: !407, line: 102, baseType: !3042, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !406, file: !407, line: 104, baseType: !189, size: 128, offset: 1152)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !406, file: !407, line: 105, baseType: !189, size: 128, offset: 1280)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !406, file: !407, line: 113, baseType: !3046, size: 128, offset: 1408)
!3046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !407, line: 109, size: 128, elements: !3047)
!3047 = !{!3048, !3049, !3050}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3046, file: !407, line: 110, baseType: !566, size: 128)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3046, file: !407, line: 111, baseType: !421, size: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3046, file: !407, line: 112, baseType: !984, size: 128, align: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !399, file: !14, line: 1968, baseType: !3052, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!208, !405, !370, !3055}
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3057, line: 10, size: 128, elements: !3058)
!3057 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3058 = !{!3059, !3063}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3056, file: !3057, line: 11, baseType: !3060, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{null, !361}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3056, file: !3057, line: 12, baseType: !361, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !399, file: !14, line: 1969, baseType: !3065, size: 64, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!97, !3021, !370, !97}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !399, file: !14, line: 1970, baseType: !3069, size: 64, offset: 192)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!393, !370, !97, !1491}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !399, file: !14, line: 1972, baseType: !3073, size: 64, offset: 256)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!97, !405, !289, !97}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !399, file: !14, line: 1974, baseType: !3077, size: 64, offset: 320)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!97, !3021, !370, !405, !331, !1491}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !399, file: !14, line: 1976, baseType: !3081, size: 64, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!97, !405, !370, !405}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !399, file: !14, line: 1977, baseType: !3085, size: 64, offset: 448)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!97, !370, !405}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !399, file: !14, line: 1978, baseType: !3089, size: 64, offset: 512)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!97, !3021, !370, !405, !208}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !399, file: !14, line: 1980, baseType: !3093, size: 64, offset: 576)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!97, !3021, !370, !405, !331}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !399, file: !14, line: 1982, baseType: !3085, size: 64, offset: 640)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !399, file: !14, line: 1983, baseType: !3098, size: 64, offset: 704)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!97, !3021, !370, !405, !331, !526}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !399, file: !14, line: 1985, baseType: !3102, size: 64, offset: 768)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!97, !3021, !370, !405, !370, !405, !7}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !399, file: !14, line: 1987, baseType: !3106, size: 64, offset: 832)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!97, !3021, !405, !3109}
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3111)
!3111 = !{!3112, !3113, !3114, !3124, !3133, !3134, !3139, !3140, !3141}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3110, file: !14, line: 227, baseType: !7, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3110, file: !14, line: 228, baseType: !331, size: 16, offset: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, scope: !3110, file: !14, line: 241, baseType: !3115, size: 32, offset: 64)
!3115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3110, file: !14, line: 241, size: 32, elements: !3116)
!3116 = !{!3117, !3118}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3115, file: !14, line: 242, baseType: !376, size: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3115, file: !14, line: 243, baseType: !3119, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3120, line: 16, baseType: !3121)
!3120 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3120, line: 14, size: 32, elements: !3122)
!3122 = !{!3123}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3121, file: !3120, line: 15, baseType: !381, size: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, scope: !3110, file: !14, line: 245, baseType: !3125, size: 32, offset: 96)
!3125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3110, file: !14, line: 245, size: 32, elements: !3126)
!3126 = !{!3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3125, file: !14, line: 246, baseType: !385, size: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3125, file: !14, line: 247, baseType: !3129, size: 32)
!3129 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3120, line: 20, baseType: !3130)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3120, line: 18, size: 32, elements: !3131)
!3131 = !{!3132}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3130, file: !3120, line: 19, baseType: !389, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3110, file: !14, line: 249, baseType: !531, size: 64, offset: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3110, file: !14, line: 250, baseType: !3135, size: 128, offset: 192)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !724, line: 13, size: 128, elements: !3136)
!3136 = !{!3137, !3138}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3135, file: !724, line: 14, baseType: !723, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3135, file: !724, line: 15, baseType: !325, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3110, file: !14, line: 251, baseType: !3135, size: 128, offset: 320)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3110, file: !14, line: 252, baseType: !3135, size: 128, offset: 448)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3110, file: !14, line: 259, baseType: !1330, size: 64, offset: 576)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !399, file: !14, line: 1988, baseType: !3143, size: 64, offset: 896)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!97, !3021, !794, !3146, !439, !7}
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3148, line: 22, size: 1280, elements: !3149)
!3148 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3149 = !{!3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3147, file: !3148, line: 23, baseType: !439, size: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3147, file: !3148, line: 24, baseType: !331, size: 16, offset: 32)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3147, file: !3148, line: 25, baseType: !7, size: 32, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3147, file: !3148, line: 26, baseType: !1456, size: 32, offset: 96)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3147, file: !3148, line: 27, baseType: !443, size: 64, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3147, file: !3148, line: 28, baseType: !443, size: 64, offset: 192)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3147, file: !3148, line: 41, baseType: !443, size: 64, offset: 256)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3147, file: !3148, line: 42, baseType: !526, size: 32, offset: 320)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3147, file: !3148, line: 43, baseType: !526, size: 32, offset: 352)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3147, file: !3148, line: 44, baseType: !376, size: 32, offset: 384)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3147, file: !3148, line: 45, baseType: !385, size: 32, offset: 416)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3147, file: !3148, line: 46, baseType: !531, size: 64, offset: 448)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3147, file: !3148, line: 47, baseType: !3135, size: 128, offset: 512)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3147, file: !3148, line: 48, baseType: !3135, size: 128, offset: 640)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3147, file: !3148, line: 49, baseType: !3135, size: 128, offset: 768)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3147, file: !3148, line: 50, baseType: !3135, size: 128, offset: 896)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3147, file: !3148, line: 51, baseType: !443, size: 64, offset: 1024)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3147, file: !3148, line: 52, baseType: !443, size: 64, offset: 1088)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3147, file: !3148, line: 53, baseType: !439, size: 32, offset: 1152)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3147, file: !3148, line: 54, baseType: !439, size: 32, offset: 1184)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3147, file: !3148, line: 55, baseType: !443, size: 64, offset: 1216)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !399, file: !14, line: 1990, baseType: !3172, size: 64, offset: 960)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!321, !405, !289, !336}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !399, file: !14, line: 1991, baseType: !3176, size: 64, offset: 1024)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!97, !370, !3179, !443, !443}
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !399, file: !14, line: 1993, baseType: !3182, size: 64, offset: 1088)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!97, !370, !97}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !399, file: !14, line: 1994, baseType: !3186, size: 64, offset: 1152)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!97, !370, !405, !1330, !7, !331}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !399, file: !14, line: 1997, baseType: !3190, size: 64, offset: 1216)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!97, !3021, !370, !1330, !331}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !399, file: !14, line: 1999, baseType: !3194, size: 64, offset: 1280)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!393, !3021, !405, !97}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !399, file: !14, line: 2001, baseType: !3198, size: 64, offset: 1344)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!97, !3021, !405, !393, !97}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !399, file: !14, line: 2003, baseType: !3202, size: 64, offset: 1408)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!97, !3021, !405, !3205}
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !399, file: !14, line: 2005, baseType: !3208, size: 64, offset: 1472)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!97, !405, !3205}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !399, file: !14, line: 2006, baseType: !3212, size: 64, offset: 1536)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!3215, !370}
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3217)
!3217 = !{!3218, !3225}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3216, file: !14, line: 3193, baseType: !3219, size: 128)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3220, line: 296, size: 128, elements: !3221)
!3220 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3221 = !{!3222, !3223, !3224}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3219, file: !3220, line: 297, baseType: !219, size: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3219, file: !3220, line: 299, baseType: !735, size: 32, offset: 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3219, file: !3220, line: 300, baseType: !361, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3216, file: !14, line: 3194, baseType: !439, size: 32, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !371, file: !14, line: 655, baseType: !521, size: 64, offset: 448)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !371, file: !14, line: 656, baseType: !366, size: 64, offset: 512)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !371, file: !14, line: 659, baseType: !361, size: 64, offset: 576)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !371, file: !14, line: 663, baseType: !339, size: 64, offset: 640)
!3230 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !14, line: 671, baseType: !3231, size: 32, offset: 704)
!3231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !14, line: 671, size: 32, elements: !3232)
!3232 = !{!3233, !3235}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3231, file: !14, line: 672, baseType: !3234, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3231, file: !14, line: 673, baseType: !7, size: 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !371, file: !14, line: 675, baseType: !526, size: 32, offset: 736)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !371, file: !14, line: 676, baseType: !531, size: 64, offset: 768)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !371, file: !14, line: 677, baseType: !3135, size: 128, offset: 832)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !371, file: !14, line: 678, baseType: !3135, size: 128, offset: 960)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !371, file: !14, line: 679, baseType: !3135, size: 128, offset: 1088)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !371, file: !14, line: 680, baseType: !219, size: 32, offset: 1216)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !371, file: !14, line: 681, baseType: !259, size: 16, offset: 1248)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !371, file: !14, line: 682, baseType: !247, size: 8, offset: 1264)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !371, file: !14, line: 683, baseType: !247, size: 8, offset: 1272)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !371, file: !14, line: 684, baseType: !872, size: 64, offset: 1280)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !371, file: !14, line: 691, baseType: !339, size: 64, offset: 1344)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !371, file: !14, line: 692, baseType: !884, size: 320, offset: 1408)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !371, file: !14, line: 694, baseType: !339, size: 64, offset: 1728)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !371, file: !14, line: 695, baseType: !339, size: 64, offset: 1792)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !371, file: !14, line: 697, baseType: !566, size: 128, offset: 1856)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !371, file: !14, line: 698, baseType: !189, size: 128, offset: 1984)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !371, file: !14, line: 707, baseType: !189, size: 128, offset: 2112)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !371, file: !14, line: 708, baseType: !189, size: 128, offset: 2240)
!3254 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !14, line: 709, baseType: !3255, size: 128, offset: 2368)
!3255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !14, line: 709, size: 128, elements: !3256)
!3256 = !{!3257, !3258}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3255, file: !14, line: 710, baseType: !562, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3255, file: !14, line: 711, baseType: !984, size: 128, align: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !371, file: !14, line: 713, baseType: !676, size: 64, offset: 2496)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !371, file: !14, line: 714, baseType: !676, size: 64, offset: 2560)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !371, file: !14, line: 715, baseType: !239, size: 32, offset: 2624)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !371, file: !14, line: 716, baseType: !239, size: 32, offset: 2656)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !371, file: !14, line: 717, baseType: !239, size: 32, offset: 2688)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !371, file: !14, line: 719, baseType: !239, size: 32, offset: 2720)
!3265 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !14, line: 721, baseType: !3266, size: 64, offset: 2752)
!3266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !14, line: 721, size: 64, elements: !3267)
!3267 = !{!3268, !3269}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3266, file: !14, line: 722, baseType: !1605, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3266, file: !14, line: 723, baseType: !593, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !371, file: !14, line: 725, baseType: !3271, size: 64, offset: 2816)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !371, file: !14, line: 726, baseType: !367, size: 1536, align: 64, offset: 2880)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !371, file: !14, line: 727, baseType: !189, size: 128, offset: 4416)
!3275 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !14, line: 728, baseType: !3276, size: 64, offset: 4544)
!3276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !14, line: 728, size: 64, elements: !3277)
!3277 = !{!3278, !3279, !3282, !3283}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3276, file: !14, line: 729, baseType: !1780, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3276, file: !14, line: 730, baseType: !3280, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3276, file: !14, line: 731, baseType: !289, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3276, file: !14, line: 732, baseType: !7, size: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !371, file: !14, line: 735, baseType: !440, size: 32, offset: 4608)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !371, file: !14, line: 738, baseType: !440, size: 32, offset: 4640)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !371, file: !14, line: 739, baseType: !2956, size: 64, offset: 4672)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !371, file: !14, line: 750, baseType: !361, size: 64, offset: 4736)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !367, file: !14, line: 474, baseType: !3219, size: 128, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !367, file: !14, line: 475, baseType: !884, size: 320, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !367, file: !14, line: 476, baseType: !735, size: 32, offset: 512)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !367, file: !14, line: 477, baseType: !239, size: 32, offset: 544)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !367, file: !14, line: 482, baseType: !1186, size: 128, offset: 576)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !367, file: !14, line: 483, baseType: !339, size: 64, offset: 704)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !367, file: !14, line: 484, baseType: !339, size: 64, offset: 768)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !367, file: !14, line: 485, baseType: !3296, size: 64, offset: 832)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3298)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3299)
!3299 = !{!3300, !3304, !3374, !3378, !3382, !3388, !3393, !3397, !3402, !3406, !3410, !3414, !3415, !3419, !3423, !3427, !3432, !3436, !3443, !3444}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3298, file: !14, line: 405, baseType: !3301, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!97, !2544, !605}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3298, file: !14, line: 406, baseType: !3305, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!97, !1330, !3308}
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !742, line: 293, size: 1536, elements: !3310)
!3310 = !{!3311, !3341, !3355}
!3311 = !DIDerivedType(tag: DW_TAG_member, scope: !3309, file: !742, line: 295, baseType: !3312, size: 512)
!3312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3309, file: !742, line: 295, size: 512, elements: !3313)
!3313 = !{!3314, !3340}
!3314 = !DIDerivedType(tag: DW_TAG_member, scope: !3312, file: !742, line: 296, baseType: !3315, size: 448)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3312, file: !742, line: 296, size: 448, elements: !3316)
!3316 = !{!3317, !3318, !3327, !3328, !3329, !3338, !3339}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3315, file: !742, line: 298, baseType: !339, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, scope: !3315, file: !742, line: 299, baseType: !3319, size: 128, offset: 64)
!3319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3315, file: !742, line: 299, size: 128, elements: !3320)
!3320 = !{!3321, !3322}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3319, file: !742, line: 300, baseType: !189, size: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, scope: !3319, file: !742, line: 302, baseType: !3323, size: 128)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3319, file: !742, line: 302, size: 128, elements: !3324)
!3324 = !{!3325, !3326}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3323, file: !742, line: 303, baseType: !361, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3323, file: !742, line: 305, baseType: !7, size: 32, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3315, file: !742, line: 310, baseType: !366, size: 64, offset: 192)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3315, file: !742, line: 311, baseType: !339, size: 64, offset: 256)
!3329 = !DIDerivedType(tag: DW_TAG_member, scope: !3315, file: !742, line: 312, baseType: !3330, size: 64, offset: 320)
!3330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3315, file: !742, line: 312, size: 64, elements: !3331)
!3331 = !{!3332, !3333}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3330, file: !742, line: 313, baseType: !361, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3330, file: !742, line: 314, baseType: !3334, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !742, line: 257, baseType: !3335)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !742, line: 255, size: 64, elements: !3336)
!3336 = !{!3337}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3335, file: !742, line: 256, baseType: !339, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3315, file: !742, line: 316, baseType: !239, size: 32, offset: 384)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3315, file: !742, line: 317, baseType: !239, size: 32, offset: 416)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3312, file: !742, line: 323, baseType: !2545, size: 512, align: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, scope: !3309, file: !742, line: 325, baseType: !3342, size: 512, offset: 512)
!3342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3309, file: !742, line: 325, size: 512, elements: !3343)
!3343 = !{!3344, !3354}
!3344 = !DIDerivedType(tag: DW_TAG_member, scope: !3342, file: !742, line: 326, baseType: !3345, size: 320)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3342, file: !742, line: 326, size: 320, elements: !3346)
!3346 = !{!3347, !3348, !3349, !3350, !3351, !3352, !3353}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3345, file: !742, line: 327, baseType: !339, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3345, file: !742, line: 328, baseType: !339, size: 64, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3345, file: !742, line: 329, baseType: !339, size: 64, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3345, file: !742, line: 331, baseType: !239, size: 32, offset: 192)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3345, file: !742, line: 332, baseType: !239, size: 32, offset: 224)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3345, file: !742, line: 333, baseType: !239, size: 32, offset: 256)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3345, file: !742, line: 335, baseType: !7, size: 32, offset: 288)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3342, file: !742, line: 339, baseType: !2545, size: 512, align: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, scope: !3309, file: !742, line: 341, baseType: !3356, size: 512, offset: 1024)
!3356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3309, file: !742, line: 341, size: 512, elements: !3357)
!3357 = !{!3358, !3367, !3373}
!3358 = !DIDerivedType(tag: DW_TAG_member, scope: !3356, file: !742, line: 342, baseType: !3359, size: 384)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3356, file: !742, line: 342, size: 384, elements: !3360)
!3360 = !{!3361, !3362, !3363, !3364, !3365, !3366}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3359, file: !742, line: 343, baseType: !339, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3359, file: !742, line: 344, baseType: !339, size: 64, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3359, file: !742, line: 346, baseType: !361, size: 64, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3359, file: !742, line: 347, baseType: !361, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3359, file: !742, line: 348, baseType: !361, size: 64, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3359, file: !742, line: 349, baseType: !361, size: 64, offset: 320)
!3367 = !DIDerivedType(tag: DW_TAG_member, scope: !3356, file: !742, line: 352, baseType: !3368, size: 256)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3356, file: !742, line: 352, size: 256, elements: !3369)
!3369 = !{!3370, !3371, !3372}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3368, file: !742, line: 353, baseType: !339, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3368, file: !742, line: 354, baseType: !339, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3368, file: !742, line: 356, baseType: !189, size: 128, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3356, file: !742, line: 359, baseType: !2545, size: 512, align: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3298, file: !14, line: 409, baseType: !3375, size: 64, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!97, !366, !605}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3298, file: !14, line: 412, baseType: !3379, size: 64, offset: 192)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!1491, !366, !3308}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3298, file: !14, line: 414, baseType: !3383, size: 64, offset: 256)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{null, !3386}
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3298, file: !14, line: 416, baseType: !3389, size: 64, offset: 320)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!97, !1330, !366, !531, !7, !3392, !1795}
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3298, file: !14, line: 419, baseType: !3394, size: 64, offset: 384)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!97, !1330, !366, !531, !7, !7, !2544, !361}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3298, file: !14, line: 424, baseType: !3398, size: 64, offset: 448)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!3401, !366, !3401}
!3401 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !190, line: 131, baseType: !443)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3298, file: !14, line: 425, baseType: !3403, size: 64, offset: 512)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{null, !3308, !336, !336}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3298, file: !14, line: 426, baseType: !3407, size: 64, offset: 576)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!1491, !3308, !735}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3298, file: !14, line: 427, baseType: !3411, size: 64, offset: 640)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{null, !3308}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3298, file: !14, line: 428, baseType: !1624, size: 64, offset: 704)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3298, file: !14, line: 433, baseType: !3416, size: 64, offset: 768)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!97, !366, !3308, !3308, !50}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3298, file: !14, line: 435, baseType: !3420, size: 64, offset: 832)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!97, !3308}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3298, file: !14, line: 436, baseType: !3424, size: 64, offset: 896)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!1491, !3308, !336, !336}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3298, file: !14, line: 438, baseType: !3428, size: 64, offset: 960)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{null, !3308, !3431, !3431}
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3298, file: !14, line: 439, baseType: !3433, size: 64, offset: 1024)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!97, !366, !2544}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3298, file: !14, line: 442, baseType: !3437, size: 64, offset: 1088)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!97, !3440, !1330, !3442}
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3298, file: !14, line: 444, baseType: !1787, size: 64, offset: 1152)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3298, file: !14, line: 445, baseType: !3445, size: 64, offset: 1216)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!97, !1627, !1649}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !367, file: !14, line: 486, baseType: !339, size: 64, offset: 896)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !367, file: !14, line: 487, baseType: !884, size: 320, offset: 960)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !367, file: !14, line: 488, baseType: !1830, size: 32, offset: 1280)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !367, file: !14, line: 489, baseType: !219, size: 32, offset: 1312)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !367, file: !14, line: 490, baseType: !189, size: 128, offset: 1344)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !367, file: !14, line: 491, baseType: !361, size: 64, offset: 1472)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !356, file: !315, line: 180, baseType: !3455, size: 64, offset: 320)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!321, !1330, !212, !355, !289, !531, !336}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !356, file: !315, line: 182, baseType: !3455, size: 64, offset: 384)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !356, file: !315, line: 184, baseType: !3460, size: 64, offset: 448)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!97, !1330, !212, !355, !1688}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !344, file: !315, line: 90, baseType: !3464, size: 64, offset: 192)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !344, file: !315, line: 91, baseType: !3466, size: 64, offset: 256)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !305, file: !205, line: 120, baseType: !3468, size: 64, offset: 192)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!3471, !272}
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3473)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !3474)
!3474 = !{!3475, !3476, !3480, !3484, !3490, !3494}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3473, file: !58, line: 40, baseType: !57, size: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3473, file: !58, line: 41, baseType: !3477, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!1491}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3473, file: !58, line: 42, baseType: !3481, size: 64, offset: 128)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!361}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3473, file: !58, line: 43, baseType: !3485, size: 64, offset: 192)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!1919, !3488}
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3473, file: !58, line: 44, baseType: !3491, size: 64, offset: 256)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!1919}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3473, file: !58, line: 45, baseType: !3060, size: 64, offset: 320)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !305, file: !205, line: 121, baseType: !3496, size: 64, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!1919, !272}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !305, file: !205, line: 122, baseType: !3500, size: 64, offset: 320)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{null, !272, !3503, !3504}
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !204, file: !205, line: 70, baseType: !3506, size: 64, offset: 384)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !546, line: 190, size: 1152, elements: !3508)
!3508 = !{!3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3600, !3601, !3602, !3603, !3604, !3607}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3507, file: !546, line: 191, baseType: !239, size: 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3507, file: !546, line: 192, baseType: !239, size: 32, offset: 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3507, file: !546, line: 202, baseType: !3506, size: 64, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3507, file: !546, line: 203, baseType: !208, size: 64, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3507, file: !546, line: 205, baseType: !1057, size: 192, align: 64, offset: 192)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3507, file: !546, line: 207, baseType: !1919, size: 64, offset: 384)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3507, file: !546, line: 208, baseType: !7, size: 32, offset: 448)
!3516 = !DIDerivedType(tag: DW_TAG_member, scope: !3507, file: !546, line: 209, baseType: !3517, size: 256, offset: 512)
!3517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3507, file: !546, line: 209, size: 256, elements: !3518)
!3518 = !{!3519, !3528, !3532}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3517, file: !546, line: 210, baseType: !3520, size: 256)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !546, line: 153, size: 256, elements: !3521)
!3521 = !{!3522, !3523, !3524, !3527}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3520, file: !546, line: 154, baseType: !339, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3520, file: !546, line: 156, baseType: !1189, size: 64, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3520, file: !546, line: 162, baseType: !3525, size: 64, offset: 128)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !546, line: 162, flags: DIFlagFwdDecl)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3520, file: !546, line: 167, baseType: !339, size: 64, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3517, file: !546, line: 211, baseType: !3529, size: 64)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !546, line: 170, size: 64, elements: !3530)
!3530 = !{!3531}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3529, file: !546, line: 171, baseType: !3506, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3517, file: !546, line: 212, baseType: !3533, size: 256)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !546, line: 174, size: 256, elements: !3534)
!3534 = !{!3535, !3595, !3598, !3599}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3533, file: !546, line: 175, baseType: !3536, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3538)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !546, line: 271, size: 768, elements: !3539)
!3539 = !{!3540, !3560, !3564, !3568, !3572, !3576, !3580, !3584, !3585, !3586, !3587, !3591}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3538, file: !546, line: 276, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!97, !3544}
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !546, line: 251, size: 1216, elements: !3546)
!3546 = !{!3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3545, file: !546, line: 253, baseType: !3506, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3545, file: !546, line: 254, baseType: !1330, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3545, file: !546, line: 255, baseType: !643, size: 64, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3545, file: !546, line: 256, baseType: !361, size: 64, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3545, file: !546, line: 259, baseType: !670, size: 256, offset: 256)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3545, file: !546, line: 260, baseType: !670, size: 256, offset: 512)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3545, file: !546, line: 261, baseType: !97, size: 32, offset: 768)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3545, file: !546, line: 262, baseType: !189, size: 128, offset: 832)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3545, file: !546, line: 263, baseType: !289, size: 64, offset: 960)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3545, file: !546, line: 265, baseType: !336, size: 64, offset: 1024)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3545, file: !546, line: 266, baseType: !1491, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3545, file: !546, line: 267, baseType: !1491, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3545, file: !546, line: 268, baseType: !1733, size: 64, offset: 1152)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3538, file: !546, line: 277, baseType: !3561, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{null, !3544}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3538, file: !546, line: 290, baseType: !3565, size: 64, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!97, !643, !361}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3538, file: !546, line: 292, baseType: !3569, size: 64, offset: 192)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!361, !643, !1618}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3538, file: !546, line: 293, baseType: !3573, size: 64, offset: 256)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!361, !643, !361, !1618}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3538, file: !546, line: 294, baseType: !3577, size: 64, offset: 320)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{null, !643, !361}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3538, file: !546, line: 296, baseType: !3581, size: 64, offset: 384)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!321, !3544, !289, !336, !531}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3538, file: !546, line: 306, baseType: !336, size: 64, offset: 448)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3538, file: !546, line: 313, baseType: !1491, size: 8, offset: 512)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3538, file: !546, line: 314, baseType: !3581, size: 64, offset: 576)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3538, file: !546, line: 317, baseType: !3588, size: 64, offset: 640)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!1675, !3544, !1677}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3538, file: !546, line: 320, baseType: !3592, size: 64, offset: 704)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!97, !3544, !1688}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3533, file: !546, line: 176, baseType: !3596, size: 64, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !546, line: 35, flags: DIFlagFwdDecl)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3533, file: !546, line: 177, baseType: !531, size: 64, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3533, file: !546, line: 178, baseType: !3506, size: 64, offset: 192)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3507, file: !546, line: 215, baseType: !361, size: 64, offset: 768)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3507, file: !546, line: 221, baseType: !443, size: 64, offset: 832)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3507, file: !546, line: 223, baseType: !259, size: 16, offset: 896)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3507, file: !546, line: 224, baseType: !331, size: 16, offset: 912)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3507, file: !546, line: 225, baseType: !3605, size: 64, offset: 960)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !546, line: 36, flags: DIFlagFwdDecl)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3507, file: !546, line: 227, baseType: !984, size: 128, align: 64, offset: 1024)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !204, file: !205, line: 71, baseType: !3609, size: 32, offset: 448)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3610, line: 19, size: 32, elements: !3611)
!3610 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3611 = !{!3612}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3609, file: !3610, line: 20, baseType: !1013, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !204, file: !205, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !204, file: !205, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !204, file: !205, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !204, file: !205, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !204, file: !205, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !201, file: !6, line: 47, baseType: !184, size: 64, offset: 512)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !201, file: !6, line: 48, baseType: !212, size: 64, offset: 576)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !201, file: !6, line: 49, baseType: !3621, size: 64, offset: 640)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !201, file: !6, line: 50, baseType: !2067, size: 64, offset: 704)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !185, file: !6, line: 418, baseType: !3625, size: 64, offset: 1408)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3627)
!3627 = !{!3628, !3629, !3634, !3638, !3642, !3646}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3626, file: !6, line: 54, baseType: !327, size: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3626, file: !6, line: 55, baseType: !3630, size: 64, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!321, !3625, !3633, !289}
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3626, file: !6, line: 57, baseType: !3635, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!321, !3625, !3633, !208, !336}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3626, file: !6, line: 59, baseType: !3639, size: 64, offset: 256)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{null, !184, !208}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3626, file: !6, line: 60, baseType: !3643, size: 64, offset: 320)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!97, !184}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3626, file: !6, line: 61, baseType: !3647, size: 64, offset: 384)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{null, !184}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !185, file: !6, line: 419, baseType: !208, size: 64, offset: 1472)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !185, file: !6, line: 420, baseType: !208, size: 64, offset: 1536)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !185, file: !6, line: 421, baseType: !212, size: 64, offset: 1600)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !185, file: !6, line: 424, baseType: !3654, size: 64, offset: 1664)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3656)
!3656 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !185, file: !6, line: 425, baseType: !3658, size: 64, offset: 1728)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1434)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !185, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !185, file: !6, line: 435, baseType: !670, size: 256, offset: 1856)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !185, file: !6, line: 437, baseType: !3663, size: 64, offset: 2112)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3665, line: 69, size: 320, elements: !3666)
!3665 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3666 = !{!3667, !3668, !3669, !3686, !3688, !3692, !3693}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3664, file: !3665, line: 70, baseType: !208, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3664, file: !3665, line: 71, baseType: !184, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3664, file: !3665, line: 72, baseType: !3670, size: 64, offset: 128)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3672)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3665, line: 47, size: 256, elements: !3673)
!3673 = !{!3674, !3675, !3681, !3685}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3672, file: !3665, line: 49, baseType: !7, size: 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3672, file: !3665, line: 51, baseType: !3676, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!97, !208, !3679}
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3664)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3672, file: !3665, line: 53, baseType: !3682, size: 64, offset: 128)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!97, !289, !3679}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3672, file: !3665, line: 55, baseType: !3060, size: 64, offset: 192)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3664, file: !3665, line: 73, baseType: !3687, size: 16, offset: 192)
!3687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3664, file: !3665, line: 74, baseType: !3689, size: 8, offset: 208)
!3689 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !248, line: 16, baseType: !3690)
!3690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !250, line: 20, baseType: !3691)
!3691 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3664, file: !3665, line: 75, baseType: !247, size: 8, offset: 216)
!3693 = !DIDerivedType(tag: DW_TAG_member, scope: !3664, file: !3665, line: 76, baseType: !3694, size: 64, offset: 256)
!3694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3664, file: !3665, line: 76, size: 64, elements: !3695)
!3695 = !{!3696, !3697, !3704}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3694, file: !3665, line: 77, baseType: !361, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3694, file: !3665, line: 78, baseType: !3698, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3700)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3665, line: 86, size: 128, elements: !3701)
!3701 = !{!3702, !3703}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3700, file: !3665, line: 87, baseType: !7, size: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3700, file: !3665, line: 88, baseType: !289, size: 64, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3694, file: !3665, line: 79, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3707)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3665, line: 92, size: 256, elements: !3708)
!3708 = !{!3709, !3710, !3711, !3712, !3713}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3707, file: !3665, line: 94, baseType: !7, size: 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3707, file: !3665, line: 95, baseType: !7, size: 32, offset: 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3707, file: !3665, line: 96, baseType: !993, size: 64, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3707, file: !3665, line: 97, baseType: !3670, size: 64, offset: 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3707, file: !3665, line: 98, baseType: !361, size: 64, offset: 192)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !185, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !185, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !185, file: !6, line: 442, baseType: !3654, size: 64, offset: 2240)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !185, file: !6, line: 443, baseType: !3658, size: 64, offset: 2304)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !185, file: !6, line: 444, baseType: !1491, size: 8, offset: 2368)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !185, file: !6, line: 451, baseType: !1491, size: 8, offset: 2376)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !185, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !185, file: !6, line: 455, baseType: !3722, size: 64, offset: 2432)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3724, line: 23, size: 96, elements: !3725)
!3724 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3725 = !{!3726, !3727, !3728}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3723, file: !3724, line: 24, baseType: !97, size: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3723, file: !3724, line: 24, baseType: !97, size: 32, offset: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3723, file: !3724, line: 24, baseType: !97, size: 32, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !185, file: !6, line: 458, baseType: !3730, size: 64, offset: 2496)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!97}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !185, file: !6, line: 460, baseType: !3734, size: 4032, align: 512, offset: 2560)
!3734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3735, size: 4032, elements: !3749)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3736)
!3736 = !{!3737, !3738, !3739}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3735, file: !6, line: 363, baseType: !361, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3735, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3735, file: !6, line: 367, baseType: !3740, size: 448, offset: 128)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3741)
!3741 = !{!3742, !3743}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3740, file: !6, line: 320, baseType: !184, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3740, file: !6, line: 321, baseType: !3744, size: 384, offset: 64)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3745, line: 40, size: 384, elements: !3746)
!3745 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3746 = !{!3747}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3744, file: !3745, line: 41, baseType: !3748, size: 384, align: 64)
!3748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1057, size: 384, align: 64, elements: !2201)
!3749 = !{!3750}
!3750 = !DISubrange(count: 7)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !185, file: !6, line: 463, baseType: !3752, size: 192, offset: 6592)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3753, line: 8, size: 192, elements: !3754)
!3753 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3754 = !{!3755, !3756, !3757}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3752, file: !3753, line: 10, baseType: !7, size: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3752, file: !3753, line: 11, baseType: !637, size: 64, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3752, file: !3753, line: 12, baseType: !3758, size: 64, offset: 128)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3760, line: 59, size: 48, elements: !3761)
!3760 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3759, file: !3760, line: 60, baseType: !1936, size: 16)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3759, file: !3760, line: 61, baseType: !1936, size: 16, offset: 16)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3759, file: !3760, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3759, file: !3760, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3759, file: !3760, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3759, file: !3760, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !185, file: !6, line: 465, baseType: !339, size: 64, offset: 6784)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !185, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !185, file: !6, line: 470, baseType: !189, size: 128, offset: 6912)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !185, file: !6, line: 471, baseType: !3772, size: 64, offset: 7040)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3774, line: 33, size: 96, elements: !3775)
!3774 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3775 = !{!3776, !3777, !3778, !3779}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3773, file: !3774, line: 37, baseType: !97, size: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3773, file: !3774, line: 43, baseType: !97, size: 32, offset: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3773, file: !3774, line: 45, baseType: !259, size: 16, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3773, file: !3774, line: 47, baseType: !259, size: 16, offset: 80)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !185, file: !6, line: 476, baseType: !3781, size: 64, offset: 7104)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3783)
!3783 = !{!3784, !3800, !3801, !3802}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3782, file: !6, line: 379, baseType: !3785, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3787, line: 204, baseType: !3788)
!3787 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3787, line: 197, size: 192, elements: !3789)
!3789 = !{!3790, !3792, !3793, !3794, !3796, !3798}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3788, file: !3787, line: 198, baseType: !3791, size: 32)
!3791 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3787, line: 21, baseType: !440)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3788, file: !3787, line: 199, baseType: !251, size: 8, offset: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3788, file: !3787, line: 200, baseType: !251, size: 8, offset: 40)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3788, file: !3787, line: 201, baseType: !3795, size: 16, offset: 48)
!3795 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3787, line: 17, baseType: !258)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3788, file: !3787, line: 202, baseType: !3797, size: 64, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3787, line: 16, baseType: !444)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3788, file: !3787, line: 203, baseType: !3799, size: 64, offset: 128)
!3799 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3787, line: 22, baseType: !444)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3782, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3782, file: !6, line: 381, baseType: !289, size: 64, offset: 128)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3782, file: !6, line: 382, baseType: !289, size: 64, offset: 192)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !185, file: !6, line: 477, baseType: !3782, size: 256, offset: 7168)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !185, file: !6, line: 480, baseType: !3805, size: 64, offset: 7424)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !185, file: !6, line: 483, baseType: !3808, size: 64, offset: 7488)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !185, file: !6, line: 488, baseType: !289, size: 64, offset: 7552)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !185, file: !6, line: 492, baseType: !361, size: 64, offset: 7616)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !185, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !185, file: !6, line: 495, baseType: !361, size: 64, offset: 7744)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !185, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !185, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !185, file: !6, line: 500, baseType: !3817, size: 64, offset: 7872)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3819, line: 45, baseType: !3820)
!3819 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !185, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !185, file: !6, line: 504, baseType: !3823, size: 64, offset: 8000)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3826, line: 96, size: 192, elements: !3827)
!3826 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3827 = !{!3828, !3829, !3872, !3874}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3825, file: !3826, line: 97, baseType: !7, size: 32)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3825, file: !3826, line: 98, baseType: !3830, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3826, line: 24, size: 3072, elements: !3832)
!3832 = !{!3833, !3835, !3836, !3837, !3838, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3869, !3870, !3871}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3831, file: !3826, line: 26, baseType: !3834, size: 128)
!3834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 128, elements: !2201)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3831, file: !3826, line: 27, baseType: !3834, size: 128, offset: 128)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3831, file: !3826, line: 28, baseType: !97, size: 32, offset: 256)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3831, file: !3826, line: 31, baseType: !219, size: 32, align: 512, offset: 512)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3831, file: !3826, line: 32, baseType: !3839, size: 960, offset: 576)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3840, line: 206, size: 960, elements: !3841)
!3840 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3841 = !{!3842, !3843, !3846, !3848, !3849, !3851}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3839, file: !3840, line: 207, baseType: !987, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3839, file: !3840, line: 208, baseType: !3844, size: 256, offset: 64)
!3844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3845, size: 256, elements: !1379)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3839, file: !3840, line: 209, baseType: !3847, size: 256, offset: 320)
!3847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 256, elements: !1379)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3839, file: !3840, line: 213, baseType: !325, size: 64, offset: 576)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3839, file: !3840, line: 215, baseType: !3850, size: 256, offset: 640)
!3850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 256, elements: !1379)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3839, file: !3840, line: 216, baseType: !247, size: 8, offset: 896)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3831, file: !3826, line: 33, baseType: !339, size: 64, offset: 1536)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3831, file: !3826, line: 34, baseType: !339, size: 64, offset: 1600)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3831, file: !3826, line: 35, baseType: !1491, size: 8, offset: 1664)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3831, file: !3826, line: 36, baseType: !2697, size: 320, offset: 1728)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3831, file: !3826, line: 37, baseType: !1958, size: 256, offset: 2048)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3831, file: !3826, line: 38, baseType: !984, size: 128, align: 64, offset: 2304)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3831, file: !3826, line: 39, baseType: !3859, size: 64, offset: 2432)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3826, line: 49, size: 768, elements: !3861)
!3861 = !{!3862, !3863, !3864, !3865, !3866, !3867, !3868}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3860, file: !3826, line: 50, baseType: !219, size: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3860, file: !3826, line: 51, baseType: !3847, size: 256, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3860, file: !3826, line: 53, baseType: !3847, size: 256, offset: 320)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3860, file: !3826, line: 54, baseType: !339, size: 64, offset: 576)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3860, file: !3826, line: 55, baseType: !3859, size: 64, offset: 640)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3860, file: !3826, line: 56, baseType: !97, size: 32, offset: 704)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3860, file: !3826, line: 57, baseType: !97, size: 32, offset: 736)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3831, file: !3826, line: 40, baseType: !339, size: 64, offset: 2496)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3831, file: !3826, line: 42, baseType: !97, size: 32, offset: 2560)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3831, file: !3826, line: 43, baseType: !3824, size: 64, offset: 2624)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3825, file: !3826, line: 99, baseType: !3873, offset: 128)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !573, line: 211, elements: !574)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3825, file: !3826, line: 100, baseType: !3875, size: 64, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3826, line: 63, size: 3008, elements: !3877)
!3877 = !{!3878, !3879, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3907}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3876, file: !3826, line: 64, baseType: !3859, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3876, file: !3826, line: 65, baseType: !3880, size: 192, offset: 64)
!3880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3859, size: 192, elements: !290)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3876, file: !3826, line: 67, baseType: !97, size: 32, offset: 256)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3876, file: !3826, line: 68, baseType: !670, size: 256, offset: 320)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3876, file: !3826, line: 69, baseType: !219, size: 32, offset: 576)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3876, file: !3826, line: 70, baseType: !670, size: 256, offset: 640)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3876, file: !3826, line: 71, baseType: !339, size: 64, offset: 896)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3876, file: !3826, line: 72, baseType: !339, size: 64, offset: 960)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3876, file: !3826, line: 73, baseType: !339, size: 64, offset: 1024)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3876, file: !3826, line: 74, baseType: !339, size: 64, offset: 1088)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3876, file: !3826, line: 75, baseType: !339, size: 64, offset: 1152)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3876, file: !3826, line: 76, baseType: !339, size: 64, offset: 1216)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3876, file: !3826, line: 77, baseType: !339, size: 64, offset: 1280)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3876, file: !3826, line: 78, baseType: !339, size: 64, offset: 1344)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3876, file: !3826, line: 79, baseType: !1491, size: 8, offset: 1408)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3876, file: !3826, line: 80, baseType: !339, size: 64, offset: 1472)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3876, file: !3826, line: 81, baseType: !670, size: 256, offset: 1536)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3876, file: !3826, line: 82, baseType: !2068, size: 256, offset: 1792)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3876, file: !3826, line: 84, baseType: !239, size: 32, offset: 2048)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3876, file: !3826, line: 87, baseType: !339, size: 64, offset: 2112)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3876, file: !3826, line: 88, baseType: !339, size: 64, offset: 2176)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3876, file: !3826, line: 89, baseType: !3901, size: 704, offset: 2240)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !148, line: 111, size: 704, elements: !3902)
!3902 = !{!3903, !3904, !3905, !3906}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3901, file: !148, line: 112, baseType: !1958, size: 256)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3901, file: !148, line: 113, baseType: !2697, size: 320, offset: 256)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3901, file: !148, line: 116, baseType: !2991, size: 64, offset: 576)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3901, file: !148, line: 117, baseType: !97, size: 32, offset: 640)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3876, file: !3826, line: 90, baseType: !3824, size: 64, offset: 2944)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !185, file: !6, line: 515, baseType: !3909, size: 64, offset: 8064)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3911, line: 117, size: 128, elements: !3912)
!3911 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3912 = !{!3913, !3914, !3915}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3910, file: !3911, line: 118, baseType: !1434, size: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3910, file: !3911, line: 119, baseType: !1434, size: 32, offset: 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3910, file: !3911, line: 120, baseType: !325, size: 64, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !185, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !185, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !185, file: !6, line: 520, baseType: !3919, size: 64, offset: 8192)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !185, file: !6, line: 523, baseType: !3921, size: 64, offset: 8256)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !185, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !185, file: !6, line: 525, baseType: !3926, size: 64, offset: 8384)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !185, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !185, file: !6, line: 533, baseType: !361, size: 64, offset: 8512)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !185, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !185, file: !6, line: 535, baseType: !3933, size: 64, offset: 8640)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !185, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !185, file: !6, line: 539, baseType: !97, size: 32, offset: 8736)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !185, file: !6, line: 540, baseType: !3937, size: 64, offset: 8768)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3939, line: 32, size: 64, elements: !3940)
!3939 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3940 = !{!3941, !3942}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3938, file: !3939, line: 33, baseType: !1434, size: 32)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3938, file: !3939, line: 34, baseType: !1434, size: 32, offset: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !185, file: !6, line: 563, baseType: !189, size: 128, offset: 8832)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !185, file: !6, line: 565, baseType: !189, size: 128, offset: 8960)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !185, file: !6, line: 568, baseType: !3946, size: 64, offset: 9088)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !185, file: !6, line: 570, baseType: !239, size: 32, offset: 9152)
!3948 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !190, line: 42, baseType: !339)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !325)
!3953 = !{!3954, !3956, !3961, !3966, !3968, !0, !3970, !3972, !3975, !4617, !4619, !4621, !4623, !4625, !4627, !4632, !4635, !4637, !4642}
!3954 = !DIGlobalVariableExpression(var: !3955, expr: !DIExpression())
!3955 = distinct !DIGlobalVariable(name: "__param_master_switch_mode", scope: !2, file: !3, line: 35, type: !3680, isLocal: true, isDefinition: true, align: 64)
!3956 = !DIGlobalVariableExpression(var: !3957, expr: !DIExpression())
!3957 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_master_switch_modetype267", scope: !2, file: !3, line: 35, type: !3958, isLocal: true, isDefinition: true, align: 8)
!3958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 320, elements: !3959)
!3959 = !{!3960}
!3960 = !DISubrange(count: 40)
!3961 = !DIGlobalVariableExpression(var: !3962, expr: !DIExpression())
!3962 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_master_switch_mode268", scope: !2, file: !3, line: 36, type: !3963, isLocal: true, isDefinition: true, align: 8)
!3963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 872, elements: !3964)
!3964 = !{!3965}
!3965 = !DISubrange(count: 109)
!3966 = !DIGlobalVariableExpression(var: !3967, expr: !DIExpression())
!3967 = distinct !DIGlobalVariable(name: "rfkill_master_switch_op", scope: !2, file: !3, line: 51, type: !69, isLocal: true, isDefinition: true)
!3968 = !DIGlobalVariableExpression(var: !3969, expr: !DIExpression())
!3969 = distinct !DIGlobalVariable(name: "rfkill_last_scheduled", scope: !2, file: !3, line: 138, type: !339, isLocal: true, isDefinition: true)
!3970 = !DIGlobalVariableExpression(var: !3971, expr: !DIExpression())
!3971 = distinct !DIGlobalVariable(name: "rfkill_master_switch_mode", scope: !2, file: !3, line: 33, type: !63, isLocal: true, isDefinition: true)
!3972 = !DIGlobalVariableExpression(var: !3973, expr: !DIExpression())
!3973 = distinct !DIGlobalVariable(scope: null, file: !3, line: 309, type: !3974, isLocal: true, isDefinition: true)
!3974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 56, elements: !3749)
!3975 = !DIGlobalVariableExpression(var: !3976, expr: !DIExpression())
!3976 = distinct !DIGlobalVariable(name: "rfkill_handler", scope: !2, file: !3, line: 308, type: !3977, isLocal: true, isDefinition: true)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !3978, line: 310, size: 960, elements: !3979)
!3978 = !DIFile(filename: "./include/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b25fc678586bfd50cf52e415a8b77c9")
!3979 = !{!3980, !3981, !4565, !4571, !4575, !4579, !4606, !4610, !4611, !4612, !4613, !4614, !4615, !4616}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3977, file: !3978, line: 312, baseType: !361, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3977, file: !3978, line: 314, baseType: !3982, size: 64, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{null, !3985, !7, !7, !97}
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !3978, line: 345, size: 576, elements: !3987)
!3987 = !{!3988, !3989, !3990, !3991, !4561, !4563, !4564}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3986, file: !3978, line: 347, baseType: !361, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3986, file: !3978, line: 349, baseType: !97, size: 32, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3986, file: !3978, line: 350, baseType: !208, size: 64, offset: 128)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3986, file: !3978, line: 352, baseType: !3992, size: 64, offset: 192)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !3978, line: 137, size: 10880, elements: !3994)
!3994 = !{!3995, !3996, !3997, !3998, !4006, !4007, !4008, !4010, !4011, !4012, !4013, !4014, !4015, !4017, !4018, !4019, !4020, !4021, !4022, !4036, !4041, !4136, !4139, !4140, !4141, !4143, !4146, !4156, !4157, !4158, !4159, !4160, !4164, !4168, !4172, !4176, !4177, !4178, !4179, !4180, !4181, !4546, !4547, !4548, !4549, !4550, !4557, !4558, !4560}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3993, file: !3978, line: 138, baseType: !208, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3993, file: !3978, line: 139, baseType: !208, size: 64, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !3993, file: !3978, line: 140, baseType: !208, size: 64, offset: 128)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3993, file: !3978, line: 141, baseType: !3999, size: 64, offset: 192)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !4000, line: 59, size: 64, elements: !4001)
!4000 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48bb23414dcd9e3ab2349c2bc2e9cd2c")
!4001 = !{!4002, !4003, !4004, !4005}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3999, file: !4000, line: 60, baseType: !258, size: 16)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3999, file: !4000, line: 61, baseType: !258, size: 16, offset: 16)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3999, file: !4000, line: 62, baseType: !258, size: 16, offset: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3999, file: !4000, line: 63, baseType: !258, size: 16, offset: 48)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3993, file: !3978, line: 143, baseType: !1254, size: 64, offset: 256)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3993, file: !3978, line: 145, baseType: !1254, size: 64, offset: 320)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3993, file: !3978, line: 146, baseType: !4009, size: 768, offset: 384)
!4009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 768, elements: !2838)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3993, file: !3978, line: 147, baseType: !1254, size: 64, offset: 1152)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3993, file: !3978, line: 148, baseType: !1254, size: 64, offset: 1216)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3993, file: !3978, line: 149, baseType: !1254, size: 64, offset: 1280)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3993, file: !3978, line: 150, baseType: !1254, size: 64, offset: 1344)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3993, file: !3978, line: 151, baseType: !1254, size: 64, offset: 1408)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3993, file: !3978, line: 152, baseType: !4016, size: 128, offset: 1472)
!4016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 128, elements: !2201)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3993, file: !3978, line: 153, baseType: !1254, size: 64, offset: 1600)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !3993, file: !3978, line: 155, baseType: !7, size: 32, offset: 1664)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !3993, file: !3978, line: 157, baseType: !7, size: 32, offset: 1696)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !3993, file: !3978, line: 158, baseType: !7, size: 32, offset: 1728)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !3993, file: !3978, line: 159, baseType: !361, size: 64, offset: 1792)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !3993, file: !3978, line: 161, baseType: !4023, size: 64, offset: 1856)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!97, !3992, !4026, !993}
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4028)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !4000, line: 117, size: 320, elements: !4029)
!4029 = !{!4030, !4031, !4032, !4033, !4034}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4028, file: !4000, line: 119, baseType: !249, size: 8)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4028, file: !4000, line: 120, baseType: !249, size: 8, offset: 8)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4028, file: !4000, line: 121, baseType: !258, size: 16, offset: 16)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4028, file: !4000, line: 122, baseType: !440, size: 32, offset: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4028, file: !4000, line: 123, baseType: !4035, size: 256, offset: 64)
!4035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 256, elements: !452)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !3993, file: !3978, line: 164, baseType: !4037, size: 64, offset: 1920)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!97, !3992, !4040}
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !3993, file: !3978, line: 167, baseType: !4042, size: 64, offset: 1984)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !3978, line: 546, size: 960, elements: !4044)
!4044 = !{!4045, !4112, !4116, !4120, !4124, !4125, !4129, !4130, !4131, !4132, !4133, !4134}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !4043, file: !3978, line: 547, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!97, !3992, !4049, !4049}
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !4000, line: 454, size: 384, elements: !4051)
!4051 = !{!4052, !4053, !4054, !4055, !4060, !4065}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4050, file: !4000, line: 455, baseType: !258, size: 16)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4050, file: !4000, line: 456, baseType: !1937, size: 16, offset: 16)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4050, file: !4000, line: 457, baseType: !258, size: 16, offset: 32)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4050, file: !4000, line: 458, baseType: !4056, size: 32, offset: 48)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !4000, line: 320, size: 32, elements: !4057)
!4057 = !{!4058, !4059}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4056, file: !4000, line: 321, baseType: !258, size: 16)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4056, file: !4000, line: 322, baseType: !258, size: 16, offset: 16)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !4050, file: !4000, line: 459, baseType: !4061, size: 32, offset: 80)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !4000, line: 310, size: 32, elements: !4062)
!4062 = !{!4063, !4064}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4061, file: !4000, line: 311, baseType: !258, size: 16)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4061, file: !4000, line: 312, baseType: !258, size: 16, offset: 16)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4050, file: !4000, line: 467, baseType: !4066, size: 256, offset: 128)
!4066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4050, file: !4000, line: 461, size: 256, elements: !4067)
!4067 = !{!4068, !4079, !4085, !4097, !4107}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4066, file: !4000, line: 462, baseType: !4069, size: 80)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !4000, line: 349, size: 80, elements: !4070)
!4070 = !{!4071, !4072}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4069, file: !4000, line: 350, baseType: !1937, size: 16)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4069, file: !4000, line: 351, baseType: !4073, size: 64, offset: 16)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !4000, line: 337, size: 64, elements: !4074)
!4074 = !{!4075, !4076, !4077, !4078}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !4073, file: !4000, line: 338, baseType: !258, size: 16)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !4073, file: !4000, line: 339, baseType: !258, size: 16, offset: 16)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !4073, file: !4000, line: 340, baseType: !258, size: 16, offset: 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !4073, file: !4000, line: 341, baseType: !258, size: 16, offset: 48)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !4066, file: !4000, line: 463, baseType: !4080, size: 96)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !4000, line: 360, size: 96, elements: !4081)
!4081 = !{!4082, !4083, !4084}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4080, file: !4000, line: 361, baseType: !1937, size: 16)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4080, file: !4000, line: 362, baseType: !1937, size: 16, offset: 16)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4080, file: !4000, line: 363, baseType: !4073, size: 64, offset: 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !4066, file: !4000, line: 464, baseType: !4086, size: 256)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !4000, line: 405, size: 256, elements: !4087)
!4087 = !{!4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4086, file: !4000, line: 406, baseType: !258, size: 16)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4086, file: !4000, line: 407, baseType: !258, size: 16, offset: 16)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4086, file: !4000, line: 408, baseType: !1937, size: 16, offset: 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4086, file: !4000, line: 409, baseType: !1937, size: 16, offset: 48)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4086, file: !4000, line: 410, baseType: !258, size: 16, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4086, file: !4000, line: 412, baseType: !4073, size: 64, offset: 80)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4086, file: !4000, line: 414, baseType: !440, size: 32, offset: 160)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4086, file: !4000, line: 415, baseType: !4096, size: 64, offset: 192)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4066, file: !4000, line: 465, baseType: !4098, size: 192)
!4098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4099, size: 192, elements: !2201)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !4000, line: 376, size: 96, elements: !4100)
!4100 = !{!4101, !4102, !4103, !4104, !4105, !4106}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4099, file: !4000, line: 377, baseType: !258, size: 16)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4099, file: !4000, line: 378, baseType: !258, size: 16, offset: 16)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4099, file: !4000, line: 380, baseType: !1937, size: 16, offset: 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4099, file: !4000, line: 381, baseType: !1937, size: 16, offset: 48)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4099, file: !4000, line: 383, baseType: !258, size: 16, offset: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4099, file: !4000, line: 384, baseType: !1937, size: 16, offset: 80)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !4066, file: !4000, line: 466, baseType: !4108, size: 32)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !4000, line: 426, size: 32, elements: !4109)
!4109 = !{!4110, !4111}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4108, file: !4000, line: 427, baseType: !258, size: 16)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4108, file: !4000, line: 428, baseType: !258, size: 16, offset: 16)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !4043, file: !3978, line: 549, baseType: !4113, size: 64, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!97, !3992, !97}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !4043, file: !3978, line: 551, baseType: !4117, size: 64, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!97, !3992, !97, !97}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !4043, file: !3978, line: 552, baseType: !4121, size: 64, offset: 192)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{null, !3992, !257}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !4043, file: !3978, line: 553, baseType: !4121, size: 64, offset: 256)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4043, file: !3978, line: 555, baseType: !4126, size: 64, offset: 320)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{null, !4042}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4043, file: !3978, line: 557, baseType: !361, size: 64, offset: 384)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4043, file: !3978, line: 559, baseType: !4016, size: 128, offset: 448)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4043, file: !3978, line: 561, baseType: !670, size: 256, offset: 576)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !4043, file: !3978, line: 563, baseType: !97, size: 32, offset: 832)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !4043, file: !3978, line: 564, baseType: !4049, size: 64, offset: 896)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !4043, file: !3978, line: 565, baseType: !4135, offset: 960)
!4135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1330, elements: !1392)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !3993, file: !3978, line: 169, baseType: !4137, size: 64, offset: 2048)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !3978, line: 24, flags: DIFlagFwdDecl)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !3993, file: !3978, line: 171, baseType: !7, size: 32, offset: 2112)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3993, file: !3978, line: 172, baseType: !2697, size: 320, offset: 2176)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !3993, file: !3978, line: 174, baseType: !4142, size: 64, offset: 2496)
!4142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !2201)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !3993, file: !3978, line: 176, baseType: !4144, size: 64, offset: 2560)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !3978, line: 176, flags: DIFlagFwdDecl)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !3993, file: !3978, line: 178, baseType: !4147, size: 64, offset: 2624)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !4000, line: 93, size: 192, elements: !4149)
!4149 = !{!4150, !4151, !4152, !4153, !4154, !4155}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4148, file: !4000, line: 94, baseType: !1435, size: 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4148, file: !4000, line: 95, baseType: !1435, size: 32, offset: 32)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4148, file: !4000, line: 96, baseType: !1435, size: 32, offset: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4148, file: !4000, line: 97, baseType: !1435, size: 32, offset: 96)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4148, file: !4000, line: 98, baseType: !1435, size: 32, offset: 128)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4148, file: !4000, line: 99, baseType: !1435, size: 32, offset: 160)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3993, file: !3978, line: 180, baseType: !4009, size: 768, offset: 2688)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !3993, file: !3978, line: 181, baseType: !1254, size: 64, offset: 3456)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !3993, file: !3978, line: 182, baseType: !1254, size: 64, offset: 3520)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !3993, file: !3978, line: 183, baseType: !1254, size: 64, offset: 3584)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3993, file: !3978, line: 185, baseType: !4161, size: 64, offset: 3648)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!97, !3992}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3993, file: !3978, line: 186, baseType: !4165, size: 64, offset: 3712)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{null, !3992}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3993, file: !3978, line: 187, baseType: !4169, size: 64, offset: 3776)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!97, !3992, !1330}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3993, file: !3978, line: 188, baseType: !4173, size: 64, offset: 3840)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!97, !3992, !7, !7, !97}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !3993, file: !3978, line: 190, baseType: !3985, size: 64, offset: 3904)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !3993, file: !3978, line: 192, baseType: !219, size: 32, offset: 3968)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3993, file: !3978, line: 193, baseType: !670, size: 256, offset: 4032)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !3993, file: !3978, line: 195, baseType: !7, size: 32, offset: 4288)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !3993, file: !3978, line: 196, baseType: !1491, size: 8, offset: 4320)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3993, file: !3978, line: 198, baseType: !4182, size: 5824, offset: 4352)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !82, line: 705, size: 5824, elements: !4183)
!4183 = !{!4184, !4185, !4187, !4190, !4191, !4244, !4329, !4330, !4331, !4332, !4333, !4340, !4432, !4445, !4455, !4459, !4461, !4462, !4463, !4467, !4474, !4475, !4478, !4481, !4485, !4488, !4489, !4490, !4491, !4492, !4493, !4523, !4524, !4525, !4528, !4531, !4540, !4541, !4542, !4543, !4544, !4545}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4182, file: !82, line: 706, baseType: !204, size: 512)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4182, file: !82, line: 707, baseType: !4186, size: 64, offset: 512)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4182, file: !82, line: 709, baseType: !4188, size: 64, offset: 576)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !82, line: 37, flags: DIFlagFwdDecl)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4182, file: !82, line: 711, baseType: !208, size: 64, offset: 640)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4182, file: !82, line: 712, baseType: !4192, size: 64, offset: 704)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4194)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !82, line: 89, size: 384, elements: !4195)
!4195 = !{!4196, !4197, !4198, !4204, !4209, !4213}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4194, file: !82, line: 90, baseType: !208, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4194, file: !82, line: 91, baseType: !341, size: 64, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4194, file: !82, line: 92, baseType: !4199, size: 64, offset: 128)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!97, !4202, !284}
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4182)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4194, file: !82, line: 93, baseType: !4205, size: 64, offset: 192)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!289, !4202, !4208, !3503, !3504}
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4194, file: !82, line: 95, baseType: !4210, size: 64, offset: 256)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{null, !4186}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4194, file: !82, line: 97, baseType: !4214, size: 64, offset: 320)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4216)
!4216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !89, line: 286, size: 1472, elements: !4217)
!4217 = !{!4218, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4216, file: !89, line: 287, baseType: !4219, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!97, !4186}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4216, file: !89, line: 288, baseType: !4210, size: 64, offset: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4216, file: !89, line: 289, baseType: !4219, size: 64, offset: 128)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4216, file: !89, line: 290, baseType: !4219, size: 64, offset: 192)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4216, file: !89, line: 291, baseType: !4219, size: 64, offset: 256)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4216, file: !89, line: 292, baseType: !4219, size: 64, offset: 320)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4216, file: !89, line: 293, baseType: !4219, size: 64, offset: 384)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4216, file: !89, line: 294, baseType: !4219, size: 64, offset: 448)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4216, file: !89, line: 295, baseType: !4219, size: 64, offset: 512)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4216, file: !89, line: 296, baseType: !4219, size: 64, offset: 576)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4216, file: !89, line: 297, baseType: !4219, size: 64, offset: 640)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4216, file: !89, line: 298, baseType: !4219, size: 64, offset: 704)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4216, file: !89, line: 299, baseType: !4219, size: 64, offset: 768)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4216, file: !89, line: 300, baseType: !4219, size: 64, offset: 832)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4216, file: !89, line: 301, baseType: !4219, size: 64, offset: 896)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4216, file: !89, line: 302, baseType: !4219, size: 64, offset: 960)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4216, file: !89, line: 303, baseType: !4219, size: 64, offset: 1024)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4216, file: !89, line: 304, baseType: !4219, size: 64, offset: 1088)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4216, file: !89, line: 305, baseType: !4219, size: 64, offset: 1152)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4216, file: !89, line: 306, baseType: !4219, size: 64, offset: 1216)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4216, file: !89, line: 307, baseType: !4219, size: 64, offset: 1280)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4216, file: !89, line: 308, baseType: !4219, size: 64, offset: 1344)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4216, file: !89, line: 309, baseType: !4219, size: 64, offset: 1408)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4182, file: !82, line: 714, baseType: !4245, size: 64, offset: 768)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4247)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4248, line: 80, size: 1344, elements: !4249)
!4248 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4249 = !{!4250, !4251, !4252, !4253, !4254, !4255, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4328}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4247, file: !4248, line: 81, baseType: !208, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4247, file: !4248, line: 82, baseType: !208, size: 64, offset: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4247, file: !4248, line: 83, baseType: !341, size: 64, offset: 128)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4247, file: !4248, line: 84, baseType: !341, size: 64, offset: 192)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4247, file: !4248, line: 85, baseType: !341, size: 64, offset: 256)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4247, file: !4248, line: 87, baseType: !4256, size: 64, offset: 320)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!97, !4186, !4259}
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !76, line: 96, size: 1152, elements: !4261)
!4261 = !{!4262, !4263, !4264, !4265, !4266, !4267, !4268, !4281, !4291, !4292, !4293, !4294, !4295, !4303, !4304, !4305, !4306, !4307, !4308}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4260, file: !76, line: 97, baseType: !208, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4260, file: !76, line: 98, baseType: !4245, size: 64, offset: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4260, file: !76, line: 100, baseType: !184, size: 64, offset: 128)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4260, file: !76, line: 101, baseType: !208, size: 64, offset: 192)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4260, file: !76, line: 103, baseType: !1491, size: 8, offset: 256)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4260, file: !76, line: 104, baseType: !75, size: 32, offset: 288)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4260, file: !76, line: 106, baseType: !4269, size: 64, offset: 320)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4271)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4272, line: 282, size: 1600, elements: !4273)
!4272 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4273 = !{!4274, !4275, !4276, !4280}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4271, file: !4272, line: 283, baseType: !2959, size: 256)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4271, file: !4272, line: 284, baseType: !2959, size: 256, offset: 256)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4271, file: !4272, line: 285, baseType: !4277, size: 1024, offset: 512)
!4277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 1024, elements: !4278)
!4278 = !{!4279}
!4279 = !DISubrange(count: 128)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4271, file: !4272, line: 286, baseType: !1919, size: 64, offset: 1536)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4260, file: !76, line: 107, baseType: !4282, size: 64, offset: 384)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4284)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4272, line: 217, size: 256, elements: !4285)
!4285 = !{!4286, !4287, !4289, !4290}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4284, file: !4272, line: 218, baseType: !2966, size: 128)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4284, file: !4272, line: 219, baseType: !4288, size: 64, offset: 128)
!4288 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4272, line: 15, baseType: !339)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4284, file: !4272, line: 220, baseType: !440, size: 32, offset: 192)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4284, file: !4272, line: 221, baseType: !440, size: 32, offset: 224)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4260, file: !76, line: 109, baseType: !4219, size: 64, offset: 448)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4260, file: !76, line: 110, baseType: !4210, size: 64, offset: 512)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4260, file: !76, line: 111, baseType: !4219, size: 64, offset: 576)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4260, file: !76, line: 112, baseType: !4210, size: 64, offset: 640)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4260, file: !76, line: 113, baseType: !4296, size: 64, offset: 704)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!97, !4186, !4299}
!4299 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !89, line: 60, baseType: !4300)
!4300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !89, line: 58, size: 32, elements: !4301)
!4301 = !{!4302}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4300, file: !89, line: 59, baseType: !97, size: 32)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4260, file: !76, line: 114, baseType: !4219, size: 64, offset: 768)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4260, file: !76, line: 115, baseType: !341, size: 64, offset: 832)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4260, file: !76, line: 116, baseType: !341, size: 64, offset: 896)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4260, file: !76, line: 118, baseType: !4214, size: 64, offset: 960)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4260, file: !76, line: 119, baseType: !4210, size: 64, offset: 1024)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4260, file: !76, line: 121, baseType: !4309, size: 64, offset: 1088)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !76, line: 121, flags: DIFlagFwdDecl)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4247, file: !4248, line: 88, baseType: !4199, size: 64, offset: 384)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4247, file: !4248, line: 89, baseType: !4219, size: 64, offset: 448)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4247, file: !4248, line: 90, baseType: !4210, size: 64, offset: 512)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4247, file: !4248, line: 91, baseType: !4210, size: 64, offset: 576)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4247, file: !4248, line: 92, baseType: !4210, size: 64, offset: 640)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4247, file: !4248, line: 94, baseType: !4219, size: 64, offset: 704)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4247, file: !4248, line: 95, baseType: !4219, size: 64, offset: 768)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4247, file: !4248, line: 97, baseType: !4296, size: 64, offset: 832)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4247, file: !4248, line: 98, baseType: !4219, size: 64, offset: 896)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4247, file: !4248, line: 100, baseType: !4219, size: 64, offset: 960)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4247, file: !4248, line: 102, baseType: !4219, size: 64, offset: 1024)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4247, file: !4248, line: 103, baseType: !4210, size: 64, offset: 1088)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4247, file: !4248, line: 105, baseType: !4214, size: 64, offset: 1152)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4247, file: !4248, line: 107, baseType: !4325, size: 64, offset: 1216)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4327)
!4327 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4248, line: 107, flags: DIFlagFwdDecl)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4247, file: !4248, line: 109, baseType: !1491, size: 8, offset: 1280)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4182, file: !82, line: 715, baseType: !4259, size: 64, offset: 832)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4182, file: !82, line: 717, baseType: !361, size: 64, offset: 896)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4182, file: !82, line: 719, baseType: !361, size: 64, offset: 960)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4182, file: !82, line: 721, baseType: !670, size: 256, offset: 1024)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4182, file: !82, line: 725, baseType: !4334, size: 448, offset: 1280)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !82, line: 517, size: 448, elements: !4335)
!4335 = !{!4336, !4337, !4338, !4339}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4334, file: !82, line: 518, baseType: !189, size: 128)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4334, file: !82, line: 519, baseType: !189, size: 128, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4334, file: !82, line: 520, baseType: !189, size: 128, offset: 256)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4334, file: !82, line: 521, baseType: !81, size: 32, offset: 384)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4182, file: !82, line: 726, baseType: !4341, size: 2496, offset: 1728)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !89, line: 663, size: 2496, elements: !4342)
!4342 = !{!4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4425, !4429}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4341, file: !89, line: 664, baseType: !4299, size: 32)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4341, file: !89, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4341, file: !89, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4341, file: !89, line: 667, baseType: !1491, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4341, file: !89, line: 668, baseType: !1491, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4341, file: !89, line: 669, baseType: !1491, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4341, file: !89, line: 670, baseType: !1491, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4341, file: !89, line: 671, baseType: !1491, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4341, file: !89, line: 672, baseType: !1491, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4341, file: !89, line: 673, baseType: !1491, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4341, file: !89, line: 674, baseType: !1491, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4341, file: !89, line: 675, baseType: !439, size: 32, offset: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4341, file: !89, line: 676, baseType: !219, size: 32, offset: 96)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4341, file: !89, line: 678, baseType: !189, size: 128, offset: 128)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4341, file: !89, line: 679, baseType: !2068, size: 256, offset: 256)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4341, file: !89, line: 680, baseType: !4359, size: 64, offset: 512)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4361, line: 43, size: 1536, elements: !4362)
!4361 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4362 = !{!4363, !4364, !4365, !4366, !4367, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4360, file: !4361, line: 44, baseType: !208, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4360, file: !4361, line: 45, baseType: !97, size: 32, offset: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4360, file: !4361, line: 46, baseType: !189, size: 128, offset: 128)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4360, file: !4361, line: 47, baseType: !219, size: 32, offset: 256)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4360, file: !4361, line: 48, baseType: !4368, size: 64, offset: 320)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !89, line: 629, flags: DIFlagFwdDecl)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4360, file: !4361, line: 49, baseType: !2697, size: 320, offset: 384)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4360, file: !4361, line: 50, baseType: !339, size: 64, offset: 704)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4360, file: !4361, line: 51, baseType: !1135, size: 64, offset: 768)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4360, file: !4361, line: 52, baseType: !1135, size: 64, offset: 832)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4360, file: !4361, line: 53, baseType: !1135, size: 64, offset: 896)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4360, file: !4361, line: 54, baseType: !1135, size: 64, offset: 960)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4360, file: !4361, line: 55, baseType: !1135, size: 64, offset: 1024)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4360, file: !4361, line: 56, baseType: !339, size: 64, offset: 1088)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4360, file: !4361, line: 57, baseType: !339, size: 64, offset: 1152)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4360, file: !4361, line: 58, baseType: !339, size: 64, offset: 1216)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4360, file: !4361, line: 59, baseType: !339, size: 64, offset: 1280)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4360, file: !4361, line: 60, baseType: !339, size: 64, offset: 1344)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4360, file: !4361, line: 61, baseType: !4186, size: 64, offset: 1408)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4360, file: !4361, line: 62, baseType: !1491, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4360, file: !4361, line: 63, baseType: !1491, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4341, file: !89, line: 681, baseType: !1491, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4341, file: !89, line: 682, baseType: !1491, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4341, file: !89, line: 683, baseType: !1491, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4341, file: !89, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4341, file: !89, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4341, file: !89, line: 690, baseType: !1127, size: 512, offset: 640)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4341, file: !89, line: 691, baseType: !443, size: 64, offset: 1152)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4341, file: !89, line: 692, baseType: !1958, size: 256, offset: 1216)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4341, file: !89, line: 693, baseType: !977, size: 192, offset: 1472)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4341, file: !89, line: 694, baseType: !4368, size: 64, offset: 1664)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4341, file: !89, line: 695, baseType: !239, size: 32, offset: 1728)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4341, file: !89, line: 696, baseType: !239, size: 32, offset: 1760)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4341, file: !89, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4341, file: !89, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4341, file: !89, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4341, file: !89, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4341, file: !89, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4341, file: !89, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4341, file: !89, line: 703, baseType: !1491, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4341, file: !89, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4341, file: !89, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4341, file: !89, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4341, file: !89, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4341, file: !89, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4341, file: !89, line: 709, baseType: !7, size: 32, offset: 1824)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4341, file: !89, line: 710, baseType: !88, size: 32, offset: 1856)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4341, file: !89, line: 711, baseType: !96, size: 32, offset: 1888)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4341, file: !89, line: 712, baseType: !96, size: 32, offset: 1920)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4341, file: !89, line: 713, baseType: !97, size: 32, offset: 1952)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4341, file: !89, line: 714, baseType: !97, size: 32, offset: 1984)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4341, file: !89, line: 715, baseType: !443, size: 64, offset: 2048)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4341, file: !89, line: 716, baseType: !443, size: 64, offset: 2112)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4341, file: !89, line: 717, baseType: !443, size: 64, offset: 2176)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4341, file: !89, line: 718, baseType: !443, size: 64, offset: 2240)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4341, file: !89, line: 720, baseType: !4420, size: 64, offset: 2304)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !89, line: 632, size: 64, elements: !4422)
!4422 = !{!4423, !4424}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4421, file: !89, line: 633, baseType: !219, size: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4421, file: !89, line: 634, baseType: !7, size: 32, offset: 32)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4341, file: !89, line: 721, baseType: !4426, size: 64, offset: 2368)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{null, !4186, !1434}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4341, file: !89, line: 722, baseType: !4430, size: 64, offset: 2432)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !89, line: 722, flags: DIFlagFwdDecl)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4182, file: !82, line: 727, baseType: !4433, size: 64, offset: 4224)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !89, line: 742, size: 1792, elements: !4435)
!4435 = !{!4436, !4437, !4438, !4442, !4443, !4444}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4434, file: !89, line: 743, baseType: !4216, size: 1472)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4434, file: !89, line: 744, baseType: !4219, size: 64, offset: 1472)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4434, file: !89, line: 745, baseType: !4439, size: 64, offset: 1536)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{null, !4186, !1491}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4434, file: !89, line: 746, baseType: !4219, size: 64, offset: 1600)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4434, file: !89, line: 747, baseType: !4210, size: 64, offset: 1664)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4434, file: !89, line: 748, baseType: !4210, size: 64, offset: 1728)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4182, file: !82, line: 736, baseType: !4446, size: 128, offset: 4288)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !82, line: 529, size: 128, elements: !4447)
!4447 = !{!4448, !4452}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4446, file: !82, line: 531, baseType: !4449, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4451, line: 13, flags: DIFlagFwdDecl)
!4451 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4446, file: !82, line: 532, baseType: !4453, size: 64, offset: 64)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !82, line: 49, flags: DIFlagFwdDecl)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4182, file: !82, line: 738, baseType: !4456, size: 64, offset: 4416)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4458)
!4458 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !82, line: 738, flags: DIFlagFwdDecl)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4182, file: !82, line: 740, baseType: !4460, size: 64, offset: 4480)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4182, file: !82, line: 741, baseType: !443, size: 64, offset: 4544)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4182, file: !82, line: 746, baseType: !443, size: 64, offset: 4608)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4182, file: !82, line: 747, baseType: !4464, size: 64, offset: 4672)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4466)
!4466 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !82, line: 747, flags: DIFlagFwdDecl)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4182, file: !82, line: 749, baseType: !4468, size: 64, offset: 4736)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !82, line: 428, size: 128, elements: !4470)
!4470 = !{!4471, !4472, !4473}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4469, file: !82, line: 433, baseType: !7, size: 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4469, file: !82, line: 434, baseType: !7, size: 32, offset: 32)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4469, file: !82, line: 435, baseType: !339, size: 64, offset: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4182, file: !82, line: 751, baseType: !189, size: 128, offset: 4800)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4182, file: !82, line: 762, baseType: !4476, size: 64, offset: 4928)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !82, line: 762, flags: DIFlagFwdDecl)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4182, file: !82, line: 770, baseType: !4479, offset: 4992)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4480, line: 5, elements: !574)
!4480 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4182, file: !82, line: 772, baseType: !4482, size: 64, offset: 4992)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4484, line: 18, flags: DIFlagFwdDecl)
!4484 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4182, file: !82, line: 773, baseType: !4486, size: 64, offset: 5056)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4248, line: 22, flags: DIFlagFwdDecl)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4182, file: !82, line: 776, baseType: !97, size: 32, offset: 5120)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4182, file: !82, line: 778, baseType: !526, size: 32, offset: 5152)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4182, file: !82, line: 779, baseType: !439, size: 32, offset: 5184)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4182, file: !82, line: 781, baseType: !219, size: 32, offset: 5216)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4182, file: !82, line: 782, baseType: !189, size: 128, offset: 5248)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4182, file: !82, line: 784, baseType: !4494, size: 64, offset: 5376)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4496)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4497, line: 52, size: 768, elements: !4498)
!4497 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4498 = !{!4499, !4500, !4501, !4502, !4503, !4507, !4511, !4512, !4513, !4514, !4518, !4522}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4496, file: !4497, line: 53, baseType: !208, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4496, file: !4497, line: 55, baseType: !341, size: 64, offset: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4496, file: !4497, line: 56, baseType: !341, size: 64, offset: 128)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4496, file: !4497, line: 58, baseType: !4199, size: 64, offset: 192)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4496, file: !4497, line: 59, baseType: !4504, size: 64, offset: 256)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!289, !4202, !4208}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4496, file: !4497, line: 61, baseType: !4508, size: 64, offset: 320)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{null, !4494}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4496, file: !4497, line: 62, baseType: !4210, size: 64, offset: 384)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4496, file: !4497, line: 64, baseType: !4219, size: 64, offset: 448)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4496, file: !4497, line: 66, baseType: !3471, size: 64, offset: 512)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4496, file: !4497, line: 67, baseType: !4515, size: 64, offset: 576)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!1919, !4202}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4496, file: !4497, line: 69, baseType: !4519, size: 64, offset: 640)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{null, !4202, !3503, !3504}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4496, file: !4497, line: 71, baseType: !4214, size: 64, offset: 704)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4182, file: !82, line: 785, baseType: !341, size: 64, offset: 5440)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4182, file: !82, line: 787, baseType: !4210, size: 64, offset: 5504)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4182, file: !82, line: 788, baseType: !4526, size: 64, offset: 5568)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !82, line: 46, flags: DIFlagFwdDecl)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4182, file: !82, line: 789, baseType: !4529, size: 64, offset: 5632)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !82, line: 48, flags: DIFlagFwdDecl)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4182, file: !82, line: 791, baseType: !4532, size: 64, offset: 5696)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !82, line: 597, size: 128, elements: !4534)
!4534 = !{!4535, !4536, !4537, !4538, !4539}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4533, file: !82, line: 598, baseType: !104, size: 32)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4533, file: !82, line: 599, baseType: !113, size: 32, offset: 32)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4533, file: !82, line: 600, baseType: !118, size: 32, offset: 64)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4533, file: !82, line: 601, baseType: !1491, size: 8, offset: 96)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4533, file: !82, line: 602, baseType: !1491, size: 8, offset: 104)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4182, file: !82, line: 793, baseType: !123, size: 32, offset: 5760)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4182, file: !82, line: 795, baseType: !1491, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4182, file: !82, line: 796, baseType: !1491, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4182, file: !82, line: 797, baseType: !1491, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4182, file: !82, line: 798, baseType: !1491, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4182, file: !82, line: 799, baseType: !1491, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3993, file: !3978, line: 200, baseType: !189, size: 128, offset: 10176)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3993, file: !3978, line: 201, baseType: !189, size: 128, offset: 10304)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !3993, file: !3978, line: 203, baseType: !7, size: 32, offset: 10432)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !3993, file: !3978, line: 204, baseType: !7, size: 32, offset: 10464)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !3993, file: !3978, line: 205, baseType: !4551, size: 64, offset: 10496)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !3978, line: 32, size: 64, elements: !4553)
!4553 = !{!4554, !4555, !4556}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4552, file: !3978, line: 33, baseType: !258, size: 16)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4552, file: !3978, line: 34, baseType: !258, size: 16, offset: 16)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4552, file: !3978, line: 35, baseType: !1435, size: 32, offset: 32)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !3993, file: !3978, line: 207, baseType: !1491, size: 8, offset: 10560)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3993, file: !3978, line: 209, baseType: !4559, size: 192, offset: 10624)
!4559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1135, size: 192, elements: !290)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "inhibited", scope: !3993, file: !3978, line: 211, baseType: !1491, size: 8, offset: 10816)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3986, file: !3978, line: 353, baseType: !4562, size: 64, offset: 256)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !3986, file: !3978, line: 355, baseType: !189, size: 128, offset: 320)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !3986, file: !3978, line: 356, baseType: !189, size: 128, offset: 448)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3977, file: !3978, line: 315, baseType: !4566, size: 64, offset: 128)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{null, !3985, !4569, !7}
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4552)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3977, file: !3978, line: 317, baseType: !4572, size: 64, offset: 192)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!1491, !3985, !7, !7, !97}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3977, file: !3978, line: 318, baseType: !4576, size: 64, offset: 256)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!1491, !4562, !3992}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3977, file: !3978, line: 319, baseType: !4580, size: 64, offset: 320)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!97, !4562, !3992, !4583}
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4585)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !4272, line: 362, size: 1600, elements: !4586)
!4586 = !{!4587, !4588, !4589, !4590, !4591, !4592, !4594, !4596, !4597, !4598, !4599, !4600, !4601, !4603, !4604, !4605}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4585, file: !4272, line: 364, baseType: !4288, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4585, file: !4272, line: 366, baseType: !258, size: 16, offset: 64)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4585, file: !4272, line: 367, baseType: !258, size: 16, offset: 80)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4585, file: !4272, line: 368, baseType: !258, size: 16, offset: 96)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4585, file: !4272, line: 369, baseType: !258, size: 16, offset: 112)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4585, file: !4272, line: 371, baseType: !4593, size: 64, offset: 128)
!4593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4288, size: 64, elements: !1255)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4585, file: !4272, line: 372, baseType: !4595, size: 768, offset: 192)
!4595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4288, size: 768, elements: !2838)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4585, file: !4272, line: 373, baseType: !4593, size: 64, offset: 960)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4585, file: !4272, line: 374, baseType: !4593, size: 64, offset: 1024)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4585, file: !4272, line: 375, baseType: !4593, size: 64, offset: 1088)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4585, file: !4272, line: 376, baseType: !4593, size: 64, offset: 1152)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4585, file: !4272, line: 377, baseType: !4593, size: 64, offset: 1216)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4585, file: !4272, line: 378, baseType: !4602, size: 128, offset: 1280)
!4602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4288, size: 128, elements: !2201)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4585, file: !4272, line: 379, baseType: !4593, size: 64, offset: 1408)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4585, file: !4272, line: 380, baseType: !4593, size: 64, offset: 1472)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4585, file: !4272, line: 382, baseType: !4288, size: 64, offset: 1536)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3977, file: !3978, line: 320, baseType: !4607, size: 64, offset: 384)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{null, !3985}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3977, file: !3978, line: 321, baseType: !4607, size: 64, offset: 448)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !3977, file: !3978, line: 323, baseType: !1491, size: 8, offset: 512)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3977, file: !3978, line: 324, baseType: !97, size: 32, offset: 544)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3977, file: !3978, line: 325, baseType: !208, size: 64, offset: 576)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3977, file: !3978, line: 327, baseType: !4583, size: 64, offset: 640)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3977, file: !3978, line: 329, baseType: !189, size: 128, offset: 704)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3977, file: !3978, line: 330, baseType: !189, size: 128, offset: 832)
!4617 = !DIGlobalVariableExpression(var: !4618, expr: !DIExpression())
!4618 = distinct !DIGlobalVariable(name: "rfkill_op_lock", scope: !2, file: !3, line: 39, type: !219, isLocal: true, isDefinition: true)
!4619 = !DIGlobalVariableExpression(var: !4620, expr: !DIExpression())
!4620 = distinct !DIGlobalVariable(name: "rfkill_op_pending", scope: !2, file: !3, line: 40, type: !1491, isLocal: true, isDefinition: true)
!4621 = !DIGlobalVariableExpression(var: !4622, expr: !DIExpression())
!4622 = distinct !DIGlobalVariable(name: "rfkill_sw_pending", scope: !2, file: !3, line: 41, type: !1254, isLocal: true, isDefinition: true)
!4623 = !DIGlobalVariableExpression(var: !4624, expr: !DIExpression())
!4624 = distinct !DIGlobalVariable(name: "rfkill_sw_state", scope: !2, file: !3, line: 42, type: !1254, isLocal: true, isDefinition: true)
!4625 = !DIGlobalVariableExpression(var: !4626, expr: !DIExpression())
!4626 = distinct !DIGlobalVariable(name: "rfkill_op", scope: !2, file: !3, line: 52, type: !69, isLocal: true, isDefinition: true)
!4627 = !DIGlobalVariableExpression(var: !4628, expr: !DIExpression())
!4628 = distinct !DIGlobalVariable(scope: null, file: !174, line: 480, type: !4629, isLocal: true, isDefinition: true)
!4629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 168, elements: !4630)
!4630 = !{!4631}
!4631 = !DISubrange(count: 21)
!4632 = !DIGlobalVariableExpression(var: !4633, expr: !DIExpression())
!4633 = distinct !DIGlobalVariable(name: "rfkill_ids", scope: !2, file: !3, line: 274, type: !4634, isLocal: true, isDefinition: true)
!4634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4584, size: 11200, elements: !3749)
!4635 = !DIGlobalVariableExpression(var: !4636, expr: !DIExpression())
!4636 = distinct !DIGlobalVariable(name: "rfkill_op_work", scope: !2, file: !3, line: 137, type: !3901, isLocal: true, isDefinition: true)
!4637 = !DIGlobalVariableExpression(var: !4638, expr: !DIExpression())
!4638 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !4639, isLocal: true, isDefinition: true)
!4639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 560, elements: !4640)
!4640 = !{!4641}
!4641 = !DISubrange(count: 70)
!4642 = !DIGlobalVariableExpression(var: !4643, expr: !DIExpression())
!4643 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !4644, isLocal: true, isDefinition: true)
!4644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 152, elements: !4645)
!4645 = !{!4646}
!4646 = !DISubrange(count: 19)
!4647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 208, elements: !4648)
!4648 = !{!4649}
!4649 = !DISubrange(count: 26)
!4650 = !{i32 7, !"Dwarf Version", i32 5}
!4651 = !{i32 2, !"Debug Info Version", i32 3}
!4652 = !{i32 1, !"wchar_size", i32 2}
!4653 = !{i32 8, !"cf-protection-branch", i32 1}
!4654 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4655 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4656 = !{i32 1, !"Code Model", i32 2}
!4657 = !{i32 1, !"override-stack-alignment", i32 8}
!4658 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4659 = distinct !DISubprogram(name: "rfkill_handler_init", scope: !3, file: !3, line: 317, type: !3731, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4660 = !DILocation(line: 319, column: 10, scope: !4659)
!4661 = !DILocation(line: 319, column: 2, scope: !4659)
!4662 = !DILocation(line: 321, column: 27, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 319, column: 37)
!4664 = !DILocation(line: 322, column: 3, scope: !4663)
!4665 = !DILocation(line: 324, column: 27, scope: !4663)
!4666 = !DILocation(line: 325, column: 3, scope: !4663)
!4667 = !DILocation(line: 327, column: 27, scope: !4663)
!4668 = !DILocation(line: 328, column: 3, scope: !4663)
!4669 = !DILocation(line: 330, column: 3, scope: !4663)
!4670 = !DILocation(line: 335, column: 4, scope: !4659)
!4671 = !DILocation(line: 335, column: 14, scope: !4659)
!4672 = !DILocation(line: 335, column: 12, scope: !4659)
!4673 = !DILocation(line: 335, column: 49, scope: !4659)
!4674 = !DILocation(line: 334, column: 24, scope: !4659)
!4675 = !DILocation(line: 336, column: 9, scope: !4659)
!4676 = !DILocation(line: 336, column: 2, scope: !4659)
!4677 = !DILocation(line: 337, column: 1, scope: !4659)
!4678 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !4679, file: !4679, line: 515, type: !4680, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4682)
!4679 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!339, !3234}
!4682 = !{!4683}
!4683 = !DILocalVariable(name: "m", arg: 1, scope: !4678, file: !4679, line: 515, type: !3234)
!4684 = !DILocation(line: 515, column: 74, scope: !4678)
!4685 = !DILocation(line: 517, column: 27, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4678, file: !4679, line: 517, column: 6)
!4687 = !DILocation(line: 517, column: 6, scope: !4686)
!4688 = !DILocation(line: 517, column: 6, scope: !4678)
!4689 = !DILocation(line: 518, column: 12, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4691, file: !4679, line: 518, column: 7)
!4691 = distinct !DILexicalBlock(scope: !4686, file: !4679, line: 517, column: 31)
!4692 = !DILocation(line: 518, column: 14, scope: !4690)
!4693 = !DILocation(line: 518, column: 7, scope: !4691)
!4694 = !DILocation(line: 519, column: 4, scope: !4690)
!4695 = !DILocation(line: 520, column: 28, scope: !4691)
!4696 = !DILocation(line: 520, column: 10, scope: !4691)
!4697 = !DILocation(line: 520, column: 3, scope: !4691)
!4698 = !DILocation(line: 522, column: 29, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4686, file: !4679, line: 521, column: 9)
!4700 = !DILocation(line: 522, column: 10, scope: !4699)
!4701 = !DILocation(line: 522, column: 3, scope: !4699)
!4702 = !DILocation(line: 524, column: 1, scope: !4678)
!4703 = !DISubprogram(name: "input_register_handler", scope: !3978, file: !3978, line: 396, type: !4704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!97, !4562}
!4706 = distinct !DISubprogram(name: "rfkill_handler_exit", scope: !3, file: !3, line: 339, type: !2315, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4707 = !DILocation(line: 341, column: 2, scope: !4706)
!4708 = !DILocation(line: 342, column: 2, scope: !4706)
!4709 = !DILocation(line: 343, column: 1, scope: !4706)
!4710 = !DISubprogram(name: "input_unregister_handler", scope: !3978, file: !3978, line: 397, type: !4711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{null, !4562}
!4713 = !DISubprogram(name: "cancel_delayed_work_sync", scope: !148, file: !148, line: 519, type: !4714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{!1491, !4716}
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!4717 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !4679, file: !4679, line: 458, type: !4680, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4718)
!4718 = !{!4719}
!4719 = !DILocalVariable(name: "m", arg: 1, scope: !4717, file: !4679, line: 458, type: !3234)
!4720 = !DILocation(line: 458, column: 66, scope: !4717)
!4721 = !DILocation(line: 460, column: 10, scope: !4717)
!4722 = !DILocation(line: 460, column: 12, scope: !4717)
!4723 = !DILocation(line: 460, column: 34, scope: !4717)
!4724 = !DILocation(line: 460, column: 39, scope: !4717)
!4725 = !DILocation(line: 460, column: 2, scope: !4717)
!4726 = !DISubprogram(name: "__msecs_to_jiffies", scope: !4679, file: !4679, line: 451, type: !4680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4727 = distinct !DISubprogram(name: "rfkill_event", scope: !3, file: !3, line: 193, type: !3983, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4728)
!4728 = !{!4729, !4730, !4731, !4732}
!4729 = !DILocalVariable(name: "handle", arg: 1, scope: !4727, file: !3, line: 193, type: !3985)
!4730 = !DILocalVariable(name: "type", arg: 2, scope: !4727, file: !3, line: 193, type: !7)
!4731 = !DILocalVariable(name: "code", arg: 3, scope: !4727, file: !3, line: 194, type: !7)
!4732 = !DILocalVariable(name: "data", arg: 4, scope: !4727, file: !3, line: 194, type: !97)
!4733 = !DILocation(line: 193, column: 47, scope: !4727)
!4734 = !DILocation(line: 193, column: 68, scope: !4727)
!4735 = !DILocation(line: 194, column: 17, scope: !4727)
!4736 = !DILocation(line: 194, column: 27, scope: !4727)
!4737 = !DILocation(line: 196, column: 6, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 196, column: 6)
!4739 = !DILocation(line: 196, column: 11, scope: !4738)
!4740 = !DILocation(line: 196, column: 21, scope: !4738)
!4741 = !DILocation(line: 196, column: 24, scope: !4738)
!4742 = !DILocation(line: 196, column: 29, scope: !4738)
!4743 = !DILocation(line: 196, column: 6, scope: !4727)
!4744 = !DILocation(line: 197, column: 11, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4738, file: !3, line: 196, column: 35)
!4746 = !DILocation(line: 197, column: 3, scope: !4745)
!4747 = !DILocation(line: 199, column: 4, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4745, file: !3, line: 197, column: 17)
!4749 = !DILocation(line: 200, column: 4, scope: !4748)
!4750 = !DILocation(line: 202, column: 4, scope: !4748)
!4751 = !DILocation(line: 203, column: 4, scope: !4748)
!4752 = !DILocation(line: 205, column: 4, scope: !4748)
!4753 = !DILocation(line: 206, column: 4, scope: !4748)
!4754 = !DILocation(line: 208, column: 4, scope: !4748)
!4755 = !DILocation(line: 209, column: 4, scope: !4748)
!4756 = !DILocation(line: 211, column: 4, scope: !4748)
!4757 = !DILocation(line: 212, column: 4, scope: !4748)
!4758 = !DILocation(line: 214, column: 2, scope: !4745)
!4759 = !DILocation(line: 214, column: 13, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4738, file: !3, line: 214, column: 13)
!4761 = !DILocation(line: 214, column: 18, scope: !4760)
!4762 = !DILocation(line: 214, column: 27, scope: !4760)
!4763 = !DILocation(line: 214, column: 30, scope: !4760)
!4764 = !DILocation(line: 214, column: 35, scope: !4760)
!4765 = !DILocation(line: 214, column: 13, scope: !4738)
!4766 = !DILocation(line: 215, column: 34, scope: !4760)
!4767 = !DILocation(line: 215, column: 3, scope: !4760)
!4768 = !DILocation(line: 216, column: 1, scope: !4727)
!4769 = distinct !DISubprogram(name: "rfkill_connect", scope: !3, file: !3, line: 218, type: !4581, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4770)
!4770 = !{!4771, !4772, !4773, !4774, !4775, !4776, !4777}
!4771 = !DILocalVariable(name: "handler", arg: 1, scope: !4769, file: !3, line: 218, type: !4562)
!4772 = !DILocalVariable(name: "dev", arg: 2, scope: !4769, file: !3, line: 218, type: !3992)
!4773 = !DILocalVariable(name: "id", arg: 3, scope: !4769, file: !3, line: 219, type: !4583)
!4774 = !DILocalVariable(name: "handle", scope: !4769, file: !3, line: 221, type: !3985)
!4775 = !DILocalVariable(name: "error", scope: !4769, file: !3, line: 222, type: !97)
!4776 = !DILabel(scope: !4769, name: "err_unregister_handle", file: !3, line: 243)
!4777 = !DILabel(scope: !4769, name: "err_free_handle", file: !3, line: 245)
!4778 = !DILocation(line: 218, column: 49, scope: !4769)
!4779 = !DILocation(line: 218, column: 76, scope: !4769)
!4780 = !DILocation(line: 219, column: 36, scope: !4769)
!4781 = !DILocation(line: 221, column: 2, scope: !4769)
!4782 = !DILocation(line: 221, column: 23, scope: !4769)
!4783 = !DILocation(line: 222, column: 2, scope: !4769)
!4784 = !DILocation(line: 222, column: 6, scope: !4769)
!4785 = !DILocation(line: 224, column: 11, scope: !4769)
!4786 = !DILocation(line: 224, column: 9, scope: !4769)
!4787 = !DILocation(line: 225, column: 7, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 225, column: 6)
!4789 = !DILocation(line: 225, column: 6, scope: !4769)
!4790 = !DILocation(line: 226, column: 3, scope: !4788)
!4791 = !DILocation(line: 228, column: 16, scope: !4769)
!4792 = !DILocation(line: 228, column: 2, scope: !4769)
!4793 = !DILocation(line: 228, column: 10, scope: !4769)
!4794 = !DILocation(line: 228, column: 14, scope: !4769)
!4795 = !DILocation(line: 229, column: 20, scope: !4769)
!4796 = !DILocation(line: 229, column: 2, scope: !4769)
!4797 = !DILocation(line: 229, column: 10, scope: !4769)
!4798 = !DILocation(line: 229, column: 18, scope: !4769)
!4799 = !DILocation(line: 230, column: 2, scope: !4769)
!4800 = !DILocation(line: 230, column: 10, scope: !4769)
!4801 = !DILocation(line: 230, column: 15, scope: !4769)
!4802 = !DILocation(line: 233, column: 32, scope: !4769)
!4803 = !DILocation(line: 233, column: 10, scope: !4769)
!4804 = !DILocation(line: 233, column: 8, scope: !4769)
!4805 = !DILocation(line: 234, column: 6, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 234, column: 6)
!4807 = !DILocation(line: 234, column: 6, scope: !4769)
!4808 = !DILocation(line: 235, column: 3, scope: !4806)
!4809 = !DILocation(line: 237, column: 28, scope: !4769)
!4810 = !DILocation(line: 237, column: 10, scope: !4769)
!4811 = !DILocation(line: 237, column: 8, scope: !4769)
!4812 = !DILocation(line: 238, column: 6, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 238, column: 6)
!4814 = !DILocation(line: 238, column: 6, scope: !4769)
!4815 = !DILocation(line: 239, column: 3, scope: !4813)
!4816 = !DILocation(line: 241, column: 2, scope: !4769)
!4817 = !DILocation(line: 243, column: 2, scope: !4769)
!4818 = !DILocation(line: 244, column: 26, scope: !4769)
!4819 = !DILocation(line: 244, column: 2, scope: !4769)
!4820 = !DILocation(line: 245, column: 2, scope: !4769)
!4821 = !DILocation(line: 246, column: 8, scope: !4769)
!4822 = !DILocation(line: 246, column: 2, scope: !4769)
!4823 = !DILocation(line: 247, column: 9, scope: !4769)
!4824 = !DILocation(line: 247, column: 2, scope: !4769)
!4825 = !DILocation(line: 248, column: 1, scope: !4769)
!4826 = distinct !DISubprogram(name: "rfkill_disconnect", scope: !3, file: !3, line: 267, type: !4608, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4827)
!4827 = !{!4828}
!4828 = !DILocalVariable(name: "handle", arg: 1, scope: !4826, file: !3, line: 267, type: !3985)
!4829 = !DILocation(line: 267, column: 52, scope: !4826)
!4830 = !DILocation(line: 269, column: 21, scope: !4826)
!4831 = !DILocation(line: 269, column: 2, scope: !4826)
!4832 = !DILocation(line: 270, column: 26, scope: !4826)
!4833 = !DILocation(line: 270, column: 2, scope: !4826)
!4834 = !DILocation(line: 271, column: 8, scope: !4826)
!4835 = !DILocation(line: 271, column: 2, scope: !4826)
!4836 = !DILocation(line: 272, column: 1, scope: !4826)
!4837 = distinct !DISubprogram(name: "rfkill_start", scope: !3, file: !3, line: 250, type: !4608, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4838)
!4838 = !{!4839}
!4839 = !DILocalVariable(name: "handle", arg: 1, scope: !4837, file: !3, line: 250, type: !3985)
!4840 = !DILocation(line: 250, column: 47, scope: !4837)
!4841 = !DILocation(line: 257, column: 17, scope: !4837)
!4842 = !DILocation(line: 257, column: 25, scope: !4837)
!4843 = !DILocation(line: 257, column: 30, scope: !4837)
!4844 = !DILocation(line: 257, column: 2, scope: !4837)
!4845 = !DILocation(line: 259, column: 6, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 259, column: 6)
!4847 = !DILocation(line: 259, column: 42, scope: !4846)
!4848 = !DILocation(line: 260, column: 6, scope: !4846)
!4849 = !DILocation(line: 259, column: 6, scope: !4837)
!4850 = !DILocation(line: 261, column: 34, scope: !4846)
!4851 = !DILocation(line: 261, column: 3, scope: !4846)
!4852 = !DILocation(line: 264, column: 19, scope: !4837)
!4853 = !DILocation(line: 264, column: 27, scope: !4837)
!4854 = !DILocation(line: 264, column: 32, scope: !4837)
!4855 = !DILocation(line: 264, column: 2, scope: !4837)
!4856 = !DILocation(line: 265, column: 1, scope: !4837)
!4857 = distinct !DISubprogram(name: "rfkill_schedule_toggle", scope: !3, file: !3, line: 169, type: !4858, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4860)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{null, !129}
!4860 = !{!4861, !4862, !4863, !4867}
!4861 = !DILocalVariable(name: "type", arg: 1, scope: !4857, file: !3, line: 169, type: !129)
!4862 = !DILocalVariable(name: "flags", scope: !4857, file: !3, line: 171, type: !339)
!4863 = !DILocalVariable(name: "__dummy", scope: !4864, file: !3, line: 176, type: !339)
!4864 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 176, column: 2)
!4865 = distinct !DILexicalBlock(scope: !4866, file: !3, line: 176, column: 2)
!4866 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 176, column: 2)
!4867 = !DILocalVariable(name: "__dummy2", scope: !4864, file: !3, line: 176, type: !339)
!4868 = !DILocation(line: 169, column: 53, scope: !4857)
!4869 = !DILocation(line: 171, column: 2, scope: !4857)
!4870 = !DILocation(line: 171, column: 16, scope: !4857)
!4871 = !DILocation(line: 173, column: 6, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 173, column: 6)
!4873 = !DILocation(line: 173, column: 6, scope: !4857)
!4874 = !DILocation(line: 174, column: 3, scope: !4872)
!4875 = !DILocation(line: 176, column: 2, scope: !4857)
!4876 = !DILocation(line: 176, column: 2, scope: !4866)
!4877 = !DILocation(line: 176, column: 2, scope: !4864)
!4878 = !DILocation(line: 176, column: 2, scope: !4865)
!4879 = !DILocation(line: 177, column: 7, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 177, column: 6)
!4881 = !{i8 0, i8 2}
!4882 = !DILocation(line: 177, column: 6, scope: !4857)
!4883 = !DILocation(line: 178, column: 3, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 177, column: 26)
!4885 = !DILocation(line: 179, column: 3, scope: !4884)
!4886 = !DILocation(line: 180, column: 3, scope: !4884)
!4887 = !DILocation(line: 181, column: 2, scope: !4884)
!4888 = !DILocation(line: 182, column: 42, scope: !4857)
!4889 = !DILocation(line: 182, column: 2, scope: !4857)
!4890 = !DILocation(line: 183, column: 1, scope: !4857)
!4891 = distinct !DISubprogram(name: "rfkill_schedule_evsw_rfkillall", scope: !3, file: !3, line: 185, type: !2308, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4892)
!4892 = !{!4893}
!4893 = !DILocalVariable(name: "state", arg: 1, scope: !4891, file: !3, line: 185, type: !97)
!4894 = !DILocation(line: 185, column: 48, scope: !4891)
!4895 = !DILocation(line: 187, column: 6, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 187, column: 6)
!4897 = !DILocation(line: 187, column: 6, scope: !4891)
!4898 = !DILocation(line: 188, column: 29, scope: !4896)
!4899 = !DILocation(line: 188, column: 3, scope: !4896)
!4900 = !DILocation(line: 190, column: 3, scope: !4896)
!4901 = !DILocation(line: 191, column: 1, scope: !4891)
!4902 = !DISubprogram(name: "rfkill_is_epo_lock_active", scope: !4903, file: !4903, line: 16, type: !3478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4903 = !DIFile(filename: "net/rfkill/rfkill.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4f58e98d58f4b41960cd303f50c3ae5")
!4904 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !4905, file: !4905, line: 32, type: !4906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4905 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!339, !4908}
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!4909 = distinct !DISubprogram(name: "spinlock_check", scope: !4910, file: !4910, line: 324, type: !4911, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4914)
!4910 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!4908, !4913}
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!4914 = !{!4915}
!4915 = !DILocalVariable(name: "lock", arg: 1, scope: !4909, file: !4910, line: 324, type: !4913)
!4916 = !DILocation(line: 324, column: 67, scope: !4909)
!4917 = !DILocation(line: 326, column: 10, scope: !4909)
!4918 = !DILocation(line: 326, column: 16, scope: !4909)
!4919 = !DILocation(line: 326, column: 2, scope: !4909)
!4920 = distinct !DISubprogram(name: "generic___set_bit", scope: !4921, file: !4921, line: 28, type: !4922, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4926)
!4921 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!4922 = !DISubroutineType(types: !4923)
!4923 = !{null, !339, !4924}
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !339)
!4926 = !{!4927, !4928, !4929, !4930}
!4927 = !DILocalVariable(name: "nr", arg: 1, scope: !4920, file: !4921, line: 28, type: !339)
!4928 = !DILocalVariable(name: "addr", arg: 2, scope: !4920, file: !4921, line: 28, type: !4924)
!4929 = !DILocalVariable(name: "mask", scope: !4920, file: !4921, line: 30, type: !339)
!4930 = !DILocalVariable(name: "p", scope: !4920, file: !4921, line: 31, type: !3933)
!4931 = !DILocation(line: 28, column: 33, scope: !4920)
!4932 = !DILocation(line: 28, column: 61, scope: !4920)
!4933 = !DILocation(line: 30, column: 2, scope: !4920)
!4934 = !DILocation(line: 30, column: 16, scope: !4920)
!4935 = !DILocation(line: 30, column: 23, scope: !4920)
!4936 = !DILocation(line: 31, column: 2, scope: !4920)
!4937 = !DILocation(line: 31, column: 17, scope: !4920)
!4938 = !DILocation(line: 31, column: 39, scope: !4920)
!4939 = !DILocation(line: 31, column: 47, scope: !4920)
!4940 = !DILocation(line: 31, column: 45, scope: !4920)
!4941 = !DILocation(line: 33, column: 9, scope: !4920)
!4942 = !DILocation(line: 33, column: 3, scope: !4920)
!4943 = !DILocation(line: 33, column: 6, scope: !4920)
!4944 = !DILocation(line: 34, column: 1, scope: !4920)
!4945 = distinct !DISubprogram(name: "___set_bit", scope: !4946, file: !4946, line: 26, type: !4922, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4947)
!4946 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!4947 = !{!4948, !4949}
!4948 = !DILocalVariable(name: "nr", arg: 1, scope: !4945, file: !4946, line: 26, type: !339)
!4949 = !DILocalVariable(name: "addr", arg: 2, scope: !4945, file: !4946, line: 26, type: !4924)
!4950 = !DILocation(line: 26, column: 26, scope: !4945)
!4951 = !DILocation(line: 26, column: 54, scope: !4945)
!4952 = !DILocation(line: 28, column: 19, scope: !4945)
!4953 = !DILocation(line: 28, column: 26, scope: !4945)
!4954 = !DILocation(line: 28, column: 24, scope: !4945)
!4955 = !DILocation(line: 28, column: 2, scope: !4945)
!4956 = !DILocation(line: 29, column: 17, scope: !4945)
!4957 = !DILocation(line: 29, column: 21, scope: !4945)
!4958 = !DILocation(line: 29, column: 2, scope: !4945)
!4959 = !DILocation(line: 30, column: 1, scope: !4945)
!4960 = distinct !DISubprogram(name: "generic___change_bit", scope: !4921, file: !4921, line: 55, type: !4922, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4961)
!4961 = !{!4962, !4963, !4964, !4965}
!4962 = !DILocalVariable(name: "nr", arg: 1, scope: !4960, file: !4921, line: 55, type: !339)
!4963 = !DILocalVariable(name: "addr", arg: 2, scope: !4960, file: !4921, line: 55, type: !4924)
!4964 = !DILocalVariable(name: "mask", scope: !4960, file: !4921, line: 57, type: !339)
!4965 = !DILocalVariable(name: "p", scope: !4960, file: !4921, line: 58, type: !3933)
!4966 = !DILocation(line: 55, column: 36, scope: !4960)
!4967 = !DILocation(line: 55, column: 64, scope: !4960)
!4968 = !DILocation(line: 57, column: 2, scope: !4960)
!4969 = !DILocation(line: 57, column: 16, scope: !4960)
!4970 = !DILocation(line: 57, column: 23, scope: !4960)
!4971 = !DILocation(line: 58, column: 2, scope: !4960)
!4972 = !DILocation(line: 58, column: 17, scope: !4960)
!4973 = !DILocation(line: 58, column: 39, scope: !4960)
!4974 = !DILocation(line: 58, column: 47, scope: !4960)
!4975 = !DILocation(line: 58, column: 45, scope: !4960)
!4976 = !DILocation(line: 60, column: 8, scope: !4960)
!4977 = !DILocation(line: 60, column: 3, scope: !4960)
!4978 = !DILocation(line: 60, column: 5, scope: !4960)
!4979 = !DILocation(line: 61, column: 1, scope: !4960)
!4980 = distinct !DISubprogram(name: "___change_bit", scope: !4946, file: !4946, line: 58, type: !4922, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4981)
!4981 = !{!4982, !4983}
!4982 = !DILocalVariable(name: "nr", arg: 1, scope: !4980, file: !4946, line: 58, type: !339)
!4983 = !DILocalVariable(name: "addr", arg: 2, scope: !4980, file: !4946, line: 58, type: !4924)
!4984 = !DILocation(line: 58, column: 29, scope: !4980)
!4985 = !DILocation(line: 58, column: 57, scope: !4980)
!4986 = !DILocation(line: 60, column: 19, scope: !4980)
!4987 = !DILocation(line: 60, column: 26, scope: !4980)
!4988 = !DILocation(line: 60, column: 24, scope: !4980)
!4989 = !DILocation(line: 60, column: 2, scope: !4980)
!4990 = !DILocation(line: 61, column: 20, scope: !4980)
!4991 = !DILocation(line: 61, column: 24, scope: !4980)
!4992 = !DILocation(line: 61, column: 2, scope: !4980)
!4993 = !DILocation(line: 62, column: 1, scope: !4980)
!4994 = distinct !DISubprogram(name: "rfkill_schedule_ratelimited", scope: !3, file: !3, line: 146, type: !2315, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4995 = !DILocation(line: 149, column: 24, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 148, column: 6)
!4997 = !DILocation(line: 149, column: 7, scope: !4996)
!4998 = !DILocation(line: 148, column: 6, scope: !4996)
!4999 = !DILocation(line: 148, column: 6, scope: !4994)
!5000 = !DILocation(line: 150, column: 27, scope: !4996)
!5001 = !DILocation(line: 150, column: 25, scope: !4996)
!5002 = !DILocation(line: 150, column: 3, scope: !4996)
!5003 = !DILocation(line: 151, column: 1, scope: !4994)
!5004 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4910, file: !4910, line: 404, type: !5005, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5007)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{null, !4913, !339}
!5007 = !{!5008, !5009, !5010, !5013}
!5008 = !DILocalVariable(name: "lock", arg: 1, scope: !5004, file: !4910, line: 404, type: !4913)
!5009 = !DILocalVariable(name: "flags", arg: 2, scope: !5004, file: !4910, line: 404, type: !339)
!5010 = !DILocalVariable(name: "__dummy", scope: !5011, file: !4910, line: 406, type: !339)
!5011 = distinct !DILexicalBlock(scope: !5012, file: !4910, line: 406, column: 2)
!5012 = distinct !DILexicalBlock(scope: !5004, file: !4910, line: 406, column: 2)
!5013 = !DILocalVariable(name: "__dummy2", scope: !5011, file: !4910, line: 406, type: !339)
!5014 = !DILocation(line: 404, column: 64, scope: !5004)
!5015 = !DILocation(line: 404, column: 84, scope: !5004)
!5016 = !DILocation(line: 406, column: 2, scope: !5004)
!5017 = !DILocation(line: 406, column: 2, scope: !5011)
!5018 = !DILocation(line: 406, column: 2, scope: !5012)
!5019 = !DILocation(line: 407, column: 1, scope: !5004)
!5020 = distinct !DISubprogram(name: "instrument_write", scope: !5021, file: !5021, line: 38, type: !5022, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5027)
!5021 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5022 = !DISubroutineType(types: !5023)
!5023 = !{null, !5024, !336}
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5026)
!5026 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5027 = !{!5028, !5029}
!5028 = !DILocalVariable(name: "v", arg: 1, scope: !5020, file: !5021, line: 38, type: !5024)
!5029 = !DILocalVariable(name: "size", arg: 2, scope: !5020, file: !5021, line: 38, type: !336)
!5030 = !DILocation(line: 38, column: 67, scope: !5020)
!5031 = !DILocation(line: 38, column: 77, scope: !5020)
!5032 = !DILocation(line: 40, column: 20, scope: !5020)
!5033 = !DILocation(line: 40, column: 23, scope: !5020)
!5034 = !DILocation(line: 40, column: 2, scope: !5020)
!5035 = !DILocation(line: 41, column: 2, scope: !5020)
!5036 = !DILocation(line: 42, column: 1, scope: !5020)
!5037 = distinct !DISubprogram(name: "arch___set_bit", scope: !5038, file: !5038, line: 66, type: !4922, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5039)
!5038 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5039 = !{!5040, !5041}
!5040 = !DILocalVariable(name: "nr", arg: 1, scope: !5037, file: !5038, line: 66, type: !339)
!5041 = !DILocalVariable(name: "addr", arg: 2, scope: !5037, file: !5038, line: 66, type: !4924)
!5042 = !DILocation(line: 66, column: 30, scope: !5037)
!5043 = !DILocation(line: 66, column: 58, scope: !5037)
!5044 = !DILocation(line: 68, column: 44, scope: !5037)
!5045 = !DILocation(line: 68, column: 56, scope: !5037)
!5046 = !DILocation(line: 68, column: 2, scope: !5037)
!5047 = !{i64 2148212208}
!5048 = !DILocation(line: 69, column: 1, scope: !5037)
!5049 = distinct !DISubprogram(name: "kasan_check_write", scope: !5050, file: !5050, line: 44, type: !5051, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5053)
!5050 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5051 = !DISubroutineType(types: !5052)
!5052 = !{!1491, !5024, !7}
!5053 = !{!5054, !5055}
!5054 = !DILocalVariable(name: "p", arg: 1, scope: !5049, file: !5050, line: 44, type: !5024)
!5055 = !DILocalVariable(name: "size", arg: 2, scope: !5049, file: !5050, line: 44, type: !7)
!5056 = !DILocation(line: 44, column: 59, scope: !5049)
!5057 = !DILocation(line: 44, column: 75, scope: !5049)
!5058 = !DILocation(line: 46, column: 2, scope: !5049)
!5059 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5060, file: !5060, line: 229, type: !5061, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5063)
!5060 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5061 = !DISubroutineType(types: !5062)
!5062 = !{null, !5024, !336, !97}
!5063 = !{!5064, !5065, !5066}
!5064 = !DILocalVariable(name: "ptr", arg: 1, scope: !5059, file: !5060, line: 229, type: !5024)
!5065 = !DILocalVariable(name: "size", arg: 2, scope: !5059, file: !5060, line: 229, type: !336)
!5066 = !DILocalVariable(name: "type", arg: 3, scope: !5059, file: !5060, line: 230, type: !97)
!5067 = !DILocation(line: 229, column: 60, scope: !5059)
!5068 = !DILocation(line: 229, column: 72, scope: !5059)
!5069 = !DILocation(line: 230, column: 15, scope: !5059)
!5070 = !DILocation(line: 230, column: 23, scope: !5059)
!5071 = distinct !DISubprogram(name: "arch___change_bit", scope: !5038, file: !5038, line: 117, type: !4922, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5072)
!5072 = !{!5073, !5074}
!5073 = !DILocalVariable(name: "nr", arg: 1, scope: !5071, file: !5038, line: 117, type: !339)
!5074 = !DILocalVariable(name: "addr", arg: 2, scope: !5071, file: !5038, line: 117, type: !4924)
!5075 = !DILocation(line: 117, column: 33, scope: !5071)
!5076 = !DILocation(line: 117, column: 61, scope: !5071)
!5077 = !DILocation(line: 119, column: 44, scope: !5071)
!5078 = !DILocation(line: 119, column: 56, scope: !5071)
!5079 = !DILocation(line: 119, column: 2, scope: !5071)
!5080 = !{i64 2148214838}
!5081 = !DILocation(line: 120, column: 1, scope: !5071)
!5082 = distinct !DISubprogram(name: "schedule_delayed_work", scope: !148, file: !148, line: 688, type: !5083, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5085)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!1491, !4716, !339}
!5085 = !{!5086, !5087}
!5086 = !DILocalVariable(name: "dwork", arg: 1, scope: !5082, file: !148, line: 688, type: !4716)
!5087 = !DILocalVariable(name: "delay", arg: 2, scope: !5082, file: !148, line: 689, type: !339)
!5088 = !DILocation(line: 688, column: 63, scope: !5082)
!5089 = !DILocation(line: 689, column: 21, scope: !5082)
!5090 = !DILocation(line: 691, column: 28, scope: !5082)
!5091 = !DILocation(line: 691, column: 39, scope: !5082)
!5092 = !DILocation(line: 691, column: 46, scope: !5082)
!5093 = !DILocation(line: 691, column: 9, scope: !5082)
!5094 = !DILocation(line: 691, column: 2, scope: !5082)
!5095 = distinct !DISubprogram(name: "rfkill_ratelimit", scope: !3, file: !3, line: 140, type: !5096, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5098)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{!339, !3950}
!5098 = !{!5099, !5100}
!5099 = !DILocalVariable(name: "last", arg: 1, scope: !5095, file: !3, line: 140, type: !3950)
!5100 = !DILocalVariable(name: "delay", scope: !5095, file: !3, line: 142, type: !3950)
!5101 = !DILocation(line: 140, column: 59, scope: !5095)
!5102 = !DILocation(line: 142, column: 2, scope: !5095)
!5103 = !DILocation(line: 142, column: 22, scope: !5095)
!5104 = !DILocation(line: 142, column: 30, scope: !5095)
!5105 = !DILocation(line: 143, column: 9, scope: !5095)
!5106 = !DILocation(line: 143, column: 49, scope: !5095)
!5107 = !DILocation(line: 144, column: 1, scope: !5095)
!5108 = !DILocation(line: 143, column: 2, scope: !5095)
!5109 = distinct !DISubprogram(name: "queue_delayed_work", scope: !148, file: !148, line: 573, type: !5110, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5112)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!1491, !2991, !4716, !339}
!5112 = !{!5113, !5114, !5115}
!5113 = !DILocalVariable(name: "wq", arg: 1, scope: !5109, file: !148, line: 573, type: !2991)
!5114 = !DILocalVariable(name: "dwork", arg: 2, scope: !5109, file: !148, line: 574, type: !4716)
!5115 = !DILocalVariable(name: "delay", arg: 3, scope: !5109, file: !148, line: 575, type: !339)
!5116 = !DILocation(line: 573, column: 64, scope: !5109)
!5117 = !DILocation(line: 574, column: 32, scope: !5109)
!5118 = !DILocation(line: 575, column: 25, scope: !5109)
!5119 = !DILocation(line: 577, column: 49, scope: !5109)
!5120 = !DILocation(line: 577, column: 53, scope: !5109)
!5121 = !DILocation(line: 577, column: 60, scope: !5109)
!5122 = !DILocation(line: 577, column: 9, scope: !5109)
!5123 = !DILocation(line: 577, column: 2, scope: !5109)
!5124 = !DISubprogram(name: "queue_delayed_work_on", scope: !148, file: !148, line: 500, type: !5125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!1491, !97, !2991, !4716, !339}
!5127 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !4905, file: !4905, line: 43, type: !5128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{null, !4908, !339}
!5130 = distinct !DISubprogram(name: "rfkill_schedule_global_op", scope: !3, file: !3, line: 153, type: !5131, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5133)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{null, !69}
!5133 = !{!5134, !5135, !5136, !5140}
!5134 = !DILocalVariable(name: "op", arg: 1, scope: !5130, file: !3, line: 153, type: !69)
!5135 = !DILocalVariable(name: "flags", scope: !5130, file: !3, line: 155, type: !339)
!5136 = !DILocalVariable(name: "__dummy", scope: !5137, file: !3, line: 157, type: !339)
!5137 = distinct !DILexicalBlock(scope: !5138, file: !3, line: 157, column: 2)
!5138 = distinct !DILexicalBlock(scope: !5139, file: !3, line: 157, column: 2)
!5139 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 157, column: 2)
!5140 = !DILocalVariable(name: "__dummy2", scope: !5137, file: !3, line: 157, type: !339)
!5141 = !DILocation(line: 153, column: 60, scope: !5130)
!5142 = !DILocation(line: 155, column: 2, scope: !5130)
!5143 = !DILocation(line: 155, column: 16, scope: !5130)
!5144 = !DILocation(line: 157, column: 2, scope: !5130)
!5145 = !DILocation(line: 157, column: 2, scope: !5139)
!5146 = !DILocation(line: 157, column: 2, scope: !5137)
!5147 = !DILocation(line: 157, column: 2, scope: !5138)
!5148 = !DILocation(line: 158, column: 14, scope: !5130)
!5149 = !DILocation(line: 158, column: 12, scope: !5130)
!5150 = !DILocation(line: 159, column: 20, scope: !5130)
!5151 = !DILocation(line: 160, column: 6, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 160, column: 6)
!5153 = !DILocation(line: 160, column: 9, scope: !5152)
!5154 = !DILocation(line: 160, column: 33, scope: !5152)
!5155 = !DILocation(line: 160, column: 37, scope: !5152)
!5156 = !DILocation(line: 160, column: 6, scope: !5130)
!5157 = !DILocation(line: 162, column: 20, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 160, column: 66)
!5159 = !DILocation(line: 162, column: 3, scope: !5158)
!5160 = !DILocation(line: 163, column: 27, scope: !5158)
!5161 = !DILocation(line: 163, column: 25, scope: !5158)
!5162 = !DILocation(line: 164, column: 2, scope: !5158)
!5163 = !DILocation(line: 165, column: 3, scope: !5152)
!5164 = !DILocation(line: 166, column: 42, scope: !5130)
!5165 = !DILocation(line: 166, column: 2, scope: !5130)
!5166 = !DILocation(line: 167, column: 1, scope: !5130)
!5167 = distinct !DISubprogram(name: "mod_delayed_work", scope: !148, file: !148, line: 588, type: !5110, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5168)
!5168 = !{!5169, !5170, !5171}
!5169 = !DILocalVariable(name: "wq", arg: 1, scope: !5167, file: !148, line: 588, type: !2991)
!5170 = !DILocalVariable(name: "dwork", arg: 2, scope: !5167, file: !148, line: 589, type: !4716)
!5171 = !DILocalVariable(name: "delay", arg: 3, scope: !5167, file: !148, line: 590, type: !339)
!5172 = !DILocation(line: 588, column: 62, scope: !5167)
!5173 = !DILocation(line: 589, column: 30, scope: !5167)
!5174 = !DILocation(line: 590, column: 23, scope: !5167)
!5175 = !DILocation(line: 592, column: 47, scope: !5167)
!5176 = !DILocation(line: 592, column: 51, scope: !5167)
!5177 = !DILocation(line: 592, column: 58, scope: !5167)
!5178 = !DILocation(line: 592, column: 9, scope: !5167)
!5179 = !DILocation(line: 592, column: 2, scope: !5167)
!5180 = !DISubprogram(name: "mod_delayed_work_on", scope: !148, file: !148, line: 502, type: !5125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5181 = distinct !DISubprogram(name: "kzalloc", scope: !174, file: !174, line: 719, type: !5182, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5184)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!361, !336, !735}
!5184 = !{!5185, !5186}
!5185 = !DILocalVariable(name: "size", arg: 1, scope: !5181, file: !174, line: 719, type: !336)
!5186 = !DILocalVariable(name: "flags", arg: 2, scope: !5181, file: !174, line: 719, type: !735)
!5187 = !DILocation(line: 719, column: 52, scope: !5181)
!5188 = !DILocation(line: 719, column: 64, scope: !5181)
!5189 = !DILocation(line: 721, column: 17, scope: !5181)
!5190 = !DILocation(line: 721, column: 23, scope: !5181)
!5191 = !DILocation(line: 721, column: 29, scope: !5181)
!5192 = !DILocation(line: 721, column: 9, scope: !5181)
!5193 = !DILocation(line: 721, column: 2, scope: !5181)
!5194 = !DISubprogram(name: "input_register_handle", scope: !3978, file: !3978, line: 406, type: !5195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{!97, !3985}
!5197 = !DISubprogram(name: "input_open_device", scope: !3978, file: !3978, line: 412, type: !5195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5198 = !DISubprogram(name: "input_unregister_handle", scope: !3978, file: !3978, line: 407, type: !4608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5199 = !DISubprogram(name: "kfree", scope: !174, file: !174, line: 227, type: !5200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{null, !1919}
!5202 = distinct !DISubprogram(name: "kmalloc", scope: !174, file: !174, line: 591, type: !5182, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5203)
!5203 = !{!5204, !5205, !5206}
!5204 = !DILocalVariable(name: "size", arg: 1, scope: !5202, file: !174, line: 591, type: !336)
!5205 = !DILocalVariable(name: "flags", arg: 2, scope: !5202, file: !174, line: 591, type: !735)
!5206 = !DILocalVariable(name: "index", scope: !5207, file: !174, line: 594, type: !7)
!5207 = distinct !DILexicalBlock(scope: !5208, file: !174, line: 593, column: 42)
!5208 = distinct !DILexicalBlock(scope: !5202, file: !174, line: 593, column: 6)
!5209 = !DILocation(line: 591, column: 61, scope: !5202)
!5210 = !DILocation(line: 591, column: 73, scope: !5202)
!5211 = !DILocation(line: 593, column: 27, scope: !5208)
!5212 = !DILocation(line: 593, column: 6, scope: !5208)
!5213 = !DILocation(line: 593, column: 33, scope: !5208)
!5214 = !DILocation(line: 593, column: 36, scope: !5208)
!5215 = !DILocation(line: 593, column: 6, scope: !5202)
!5216 = !DILocation(line: 594, column: 3, scope: !5207)
!5217 = !DILocation(line: 594, column: 16, scope: !5207)
!5218 = !DILocation(line: 596, column: 7, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5207, file: !174, line: 596, column: 7)
!5220 = !DILocation(line: 596, column: 12, scope: !5219)
!5221 = !DILocation(line: 596, column: 7, scope: !5207)
!5222 = !DILocation(line: 597, column: 25, scope: !5219)
!5223 = !DILocation(line: 597, column: 31, scope: !5219)
!5224 = !DILocation(line: 597, column: 11, scope: !5219)
!5225 = !DILocation(line: 597, column: 4, scope: !5219)
!5226 = !DILocation(line: 599, column: 11, scope: !5207)
!5227 = !DILocation(line: 599, column: 9, scope: !5207)
!5228 = !DILocation(line: 601, column: 33, scope: !5207)
!5229 = !DILocation(line: 601, column: 40, scope: !5207)
!5230 = !DILocation(line: 601, column: 20, scope: !5207)
!5231 = !DILocation(line: 601, column: 5, scope: !5207)
!5232 = !DILocation(line: 601, column: 51, scope: !5207)
!5233 = !DILocation(line: 602, column: 5, scope: !5207)
!5234 = !DILocation(line: 602, column: 12, scope: !5207)
!5235 = !DILocation(line: 600, column: 10, scope: !5207)
!5236 = !DILocation(line: 600, column: 3, scope: !5207)
!5237 = !DILocation(line: 603, column: 2, scope: !5208)
!5238 = !DILocation(line: 604, column: 19, scope: !5202)
!5239 = !DILocation(line: 604, column: 25, scope: !5202)
!5240 = !DILocation(line: 604, column: 9, scope: !5202)
!5241 = !DILocation(line: 604, column: 2, scope: !5202)
!5242 = !DILocation(line: 605, column: 1, scope: !5202)
!5243 = !DISubprogram(name: "kmalloc_large", scope: !174, file: !174, line: 531, type: !5182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5244 = distinct !DISubprogram(name: "__kmalloc_index", scope: !174, file: !174, line: 444, type: !5245, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5247)
!5245 = !DISubroutineType(types: !5246)
!5246 = !{!7, !336, !1491}
!5247 = !{!5248, !5249}
!5248 = !DILocalVariable(name: "size", arg: 1, scope: !5244, file: !174, line: 444, type: !336)
!5249 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5244, file: !174, line: 445, type: !1491)
!5250 = !DILocation(line: 444, column: 60, scope: !5244)
!5251 = !DILocation(line: 445, column: 16, scope: !5244)
!5252 = !DILocation(line: 447, column: 7, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 447, column: 6)
!5254 = !DILocation(line: 447, column: 6, scope: !5244)
!5255 = !DILocation(line: 448, column: 3, scope: !5253)
!5256 = !DILocation(line: 450, column: 6, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 450, column: 6)
!5258 = !DILocation(line: 450, column: 11, scope: !5257)
!5259 = !DILocation(line: 450, column: 6, scope: !5244)
!5260 = !DILocation(line: 451, column: 3, scope: !5257)
!5261 = !DILocation(line: 453, column: 32, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 453, column: 6)
!5263 = !DILocation(line: 453, column: 37, scope: !5262)
!5264 = !DILocation(line: 453, column: 42, scope: !5262)
!5265 = !DILocation(line: 453, column: 45, scope: !5262)
!5266 = !DILocation(line: 453, column: 50, scope: !5262)
!5267 = !DILocation(line: 453, column: 6, scope: !5244)
!5268 = !DILocation(line: 454, column: 3, scope: !5262)
!5269 = !DILocation(line: 455, column: 32, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 455, column: 6)
!5271 = !DILocation(line: 455, column: 37, scope: !5270)
!5272 = !DILocation(line: 455, column: 43, scope: !5270)
!5273 = !DILocation(line: 455, column: 46, scope: !5270)
!5274 = !DILocation(line: 455, column: 51, scope: !5270)
!5275 = !DILocation(line: 455, column: 6, scope: !5244)
!5276 = !DILocation(line: 456, column: 3, scope: !5270)
!5277 = !DILocation(line: 457, column: 6, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 457, column: 6)
!5279 = !DILocation(line: 457, column: 11, scope: !5278)
!5280 = !DILocation(line: 457, column: 6, scope: !5244)
!5281 = !DILocation(line: 457, column: 26, scope: !5278)
!5282 = !DILocation(line: 458, column: 6, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 458, column: 6)
!5284 = !DILocation(line: 458, column: 11, scope: !5283)
!5285 = !DILocation(line: 458, column: 6, scope: !5244)
!5286 = !DILocation(line: 458, column: 26, scope: !5283)
!5287 = !DILocation(line: 459, column: 6, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 459, column: 6)
!5289 = !DILocation(line: 459, column: 11, scope: !5288)
!5290 = !DILocation(line: 459, column: 6, scope: !5244)
!5291 = !DILocation(line: 459, column: 26, scope: !5288)
!5292 = !DILocation(line: 460, column: 6, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 460, column: 6)
!5294 = !DILocation(line: 460, column: 11, scope: !5293)
!5295 = !DILocation(line: 460, column: 6, scope: !5244)
!5296 = !DILocation(line: 460, column: 26, scope: !5293)
!5297 = !DILocation(line: 461, column: 6, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 461, column: 6)
!5299 = !DILocation(line: 461, column: 11, scope: !5298)
!5300 = !DILocation(line: 461, column: 6, scope: !5244)
!5301 = !DILocation(line: 461, column: 26, scope: !5298)
!5302 = !DILocation(line: 462, column: 6, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 462, column: 6)
!5304 = !DILocation(line: 462, column: 11, scope: !5303)
!5305 = !DILocation(line: 462, column: 6, scope: !5244)
!5306 = !DILocation(line: 462, column: 26, scope: !5303)
!5307 = !DILocation(line: 463, column: 6, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 463, column: 6)
!5309 = !DILocation(line: 463, column: 11, scope: !5308)
!5310 = !DILocation(line: 463, column: 6, scope: !5244)
!5311 = !DILocation(line: 463, column: 26, scope: !5308)
!5312 = !DILocation(line: 464, column: 6, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 464, column: 6)
!5314 = !DILocation(line: 464, column: 11, scope: !5313)
!5315 = !DILocation(line: 464, column: 6, scope: !5244)
!5316 = !DILocation(line: 464, column: 26, scope: !5313)
!5317 = !DILocation(line: 465, column: 6, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 465, column: 6)
!5319 = !DILocation(line: 465, column: 11, scope: !5318)
!5320 = !DILocation(line: 465, column: 6, scope: !5244)
!5321 = !DILocation(line: 465, column: 26, scope: !5318)
!5322 = !DILocation(line: 466, column: 6, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 466, column: 6)
!5324 = !DILocation(line: 466, column: 11, scope: !5323)
!5325 = !DILocation(line: 466, column: 6, scope: !5244)
!5326 = !DILocation(line: 466, column: 26, scope: !5323)
!5327 = !DILocation(line: 467, column: 6, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 467, column: 6)
!5329 = !DILocation(line: 467, column: 11, scope: !5328)
!5330 = !DILocation(line: 467, column: 6, scope: !5244)
!5331 = !DILocation(line: 467, column: 26, scope: !5328)
!5332 = !DILocation(line: 468, column: 6, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 468, column: 6)
!5334 = !DILocation(line: 468, column: 11, scope: !5333)
!5335 = !DILocation(line: 468, column: 6, scope: !5244)
!5336 = !DILocation(line: 468, column: 26, scope: !5333)
!5337 = !DILocation(line: 469, column: 6, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 469, column: 6)
!5339 = !DILocation(line: 469, column: 11, scope: !5338)
!5340 = !DILocation(line: 469, column: 6, scope: !5244)
!5341 = !DILocation(line: 469, column: 26, scope: !5338)
!5342 = !DILocation(line: 470, column: 6, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 470, column: 6)
!5344 = !DILocation(line: 470, column: 11, scope: !5343)
!5345 = !DILocation(line: 470, column: 6, scope: !5244)
!5346 = !DILocation(line: 470, column: 26, scope: !5343)
!5347 = !DILocation(line: 471, column: 6, scope: !5348)
!5348 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 471, column: 6)
!5349 = !DILocation(line: 471, column: 11, scope: !5348)
!5350 = !DILocation(line: 471, column: 6, scope: !5244)
!5351 = !DILocation(line: 471, column: 26, scope: !5348)
!5352 = !DILocation(line: 472, column: 6, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 472, column: 6)
!5354 = !DILocation(line: 472, column: 11, scope: !5353)
!5355 = !DILocation(line: 472, column: 6, scope: !5244)
!5356 = !DILocation(line: 472, column: 26, scope: !5353)
!5357 = !DILocation(line: 473, column: 6, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 473, column: 6)
!5359 = !DILocation(line: 473, column: 11, scope: !5358)
!5360 = !DILocation(line: 473, column: 6, scope: !5244)
!5361 = !DILocation(line: 473, column: 26, scope: !5358)
!5362 = !DILocation(line: 474, column: 6, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 474, column: 6)
!5364 = !DILocation(line: 474, column: 11, scope: !5363)
!5365 = !DILocation(line: 474, column: 6, scope: !5244)
!5366 = !DILocation(line: 474, column: 27, scope: !5363)
!5367 = !DILocation(line: 475, column: 6, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 475, column: 6)
!5369 = !DILocation(line: 475, column: 11, scope: !5368)
!5370 = !DILocation(line: 475, column: 6, scope: !5244)
!5371 = !DILocation(line: 475, column: 32, scope: !5368)
!5372 = !DILocation(line: 477, column: 50, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5244, file: !174, line: 477, column: 6)
!5374 = !DILocation(line: 477, column: 6, scope: !5244)
!5375 = !DILocation(line: 478, column: 3, scope: !5373)
!5376 = !DILocation(line: 478, column: 3, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5378, file: !174, line: 478, column: 3)
!5378 = distinct !DILexicalBlock(scope: !5373, file: !174, line: 478, column: 3)
!5379 = !{i32 -2141132536}
!5380 = !DILocation(line: 478, column: 3, scope: !5378)
!5381 = !DILocation(line: 480, column: 3, scope: !5373)
!5382 = !DILocation(line: 480, column: 3, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5373, file: !174, line: 480, column: 3)
!5384 = !DILocation(line: 480, column: 3, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5383, file: !174, line: 480, column: 3)
!5386 = !DILocation(line: 480, column: 3, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5383, file: !174, line: 480, column: 3)
!5388 = !{i64 2153834963, i64 2153834992, i64 2153835038, i64 2153835096, i64 2153835150, i64 2153835204, i64 2153835259, i64 2153835290}
!5389 = !DILocation(line: 483, column: 2, scope: !5244)
!5390 = !DILocation(line: 484, column: 1, scope: !5244)
!5391 = !DISubprogram(name: "kmalloc_trace", scope: !174, file: !174, line: 525, type: !5392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5392 = !DISubroutineType(types: !5393)
!5393 = !{!361, !5394, !735, !336}
!5394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5395, size: 64)
!5395 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5396, line: 325, flags: DIFlagFwdDecl)
!5396 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5397 = distinct !DISubprogram(name: "kmalloc_type", scope: !174, file: !174, line: 401, type: !5398, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5400)
!5398 = !DISubroutineType(types: !5399)
!5399 = !{!173, !735, !339}
!5400 = !{!5401, !5402}
!5401 = !DILocalVariable(name: "flags", arg: 1, scope: !5397, file: !174, line: 401, type: !735)
!5402 = !DILocalVariable(name: "caller", arg: 2, scope: !5397, file: !174, line: 401, type: !339)
!5403 = !DILocation(line: 401, column: 67, scope: !5397)
!5404 = !DILocation(line: 401, column: 88, scope: !5397)
!5405 = !DILocation(line: 407, column: 6, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5397, file: !174, line: 407, column: 6)
!5407 = !DILocation(line: 407, column: 6, scope: !5397)
!5408 = !DILocation(line: 413, column: 3, scope: !5406)
!5409 = !DILocation(line: 423, column: 38, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5397, file: !174, line: 423, column: 6)
!5411 = !DILocation(line: 423, column: 44, scope: !5410)
!5412 = !DILocation(line: 423, column: 6, scope: !5397)
!5413 = !DILocation(line: 424, column: 3, scope: !5410)
!5414 = !DILocation(line: 426, column: 3, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5397, file: !174, line: 425, column: 6)
!5416 = !DILocation(line: 429, column: 1, scope: !5397)
!5417 = !DISubprogram(name: "__kmalloc", scope: !174, file: !174, line: 488, type: !5182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5418 = !DISubprogram(name: "__compiletime_assert_263", scope: !174, file: !174, line: 478, type: !2315, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5419 = !DISubprogram(name: "input_close_device", scope: !3978, file: !3978, line: 413, type: !4608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5420 = distinct !DISubprogram(name: "spin_lock_irq", scope: !4910, file: !4910, line: 374, type: !5421, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5423)
!5421 = !DISubroutineType(types: !5422)
!5422 = !{null, !4913}
!5423 = !{!5424}
!5424 = !DILocalVariable(name: "lock", arg: 1, scope: !5420, file: !4910, line: 374, type: !4913)
!5425 = !DILocation(line: 374, column: 55, scope: !5420)
!5426 = !DILocation(line: 376, column: 2, scope: !5420)
!5427 = !DILocation(line: 377, column: 1, scope: !5420)
!5428 = distinct !DISubprogram(name: "const_test_bit", scope: !4921, file: !4921, line: 166, type: !5429, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5433)
!5429 = !DISubroutineType(types: !5430)
!5430 = !{!1491, !339, !5431}
!5431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5432, size: 64)
!5432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4925)
!5433 = !{!5434, !5435, !5436, !5437, !5438}
!5434 = !DILocalVariable(name: "nr", arg: 1, scope: !5428, file: !4921, line: 166, type: !339)
!5435 = !DILocalVariable(name: "addr", arg: 2, scope: !5428, file: !4921, line: 166, type: !5431)
!5436 = !DILocalVariable(name: "p", scope: !5428, file: !4921, line: 168, type: !3949)
!5437 = !DILocalVariable(name: "mask", scope: !5428, file: !4921, line: 169, type: !339)
!5438 = !DILocalVariable(name: "val", scope: !5428, file: !4921, line: 170, type: !339)
!5439 = !DILocation(line: 166, column: 30, scope: !5428)
!5440 = !DILocation(line: 166, column: 64, scope: !5428)
!5441 = !DILocation(line: 168, column: 2, scope: !5428)
!5442 = !DILocation(line: 168, column: 23, scope: !5428)
!5443 = !DILocation(line: 168, column: 50, scope: !5428)
!5444 = !DILocation(line: 168, column: 57, scope: !5428)
!5445 = !DILocation(line: 168, column: 55, scope: !5428)
!5446 = !DILocation(line: 169, column: 2, scope: !5428)
!5447 = !DILocation(line: 169, column: 16, scope: !5428)
!5448 = !DILocation(line: 169, column: 23, scope: !5428)
!5449 = !DILocation(line: 170, column: 2, scope: !5428)
!5450 = !DILocation(line: 170, column: 16, scope: !5428)
!5451 = !DILocation(line: 170, column: 23, scope: !5428)
!5452 = !DILocation(line: 170, column: 22, scope: !5428)
!5453 = !DILocation(line: 172, column: 12, scope: !5428)
!5454 = !DILocation(line: 172, column: 18, scope: !5428)
!5455 = !DILocation(line: 172, column: 16, scope: !5428)
!5456 = !DILocation(line: 172, column: 10, scope: !5428)
!5457 = !DILocation(line: 172, column: 9, scope: !5428)
!5458 = !DILocation(line: 173, column: 1, scope: !5428)
!5459 = !DILocation(line: 172, column: 2, scope: !5428)
!5460 = distinct !DISubprogram(name: "_test_bit", scope: !4946, file: !4946, line: 139, type: !5429, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5461)
!5461 = !{!5462, !5463}
!5462 = !DILocalVariable(name: "nr", arg: 1, scope: !5460, file: !4946, line: 139, type: !339)
!5463 = !DILocalVariable(name: "addr", arg: 2, scope: !5460, file: !4946, line: 139, type: !5431)
!5464 = !DILocation(line: 139, column: 25, scope: !5460)
!5465 = !DILocation(line: 139, column: 59, scope: !5460)
!5466 = !DILocation(line: 141, column: 25, scope: !5460)
!5467 = !DILocation(line: 141, column: 32, scope: !5460)
!5468 = !DILocation(line: 141, column: 30, scope: !5460)
!5469 = !DILocation(line: 141, column: 2, scope: !5460)
!5470 = !DILocation(line: 142, column: 23, scope: !5460)
!5471 = !DILocation(line: 142, column: 27, scope: !5460)
!5472 = !DILocation(line: 142, column: 9, scope: !5460)
!5473 = !DILocation(line: 142, column: 2, scope: !5460)
!5474 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !4910, file: !4910, line: 399, type: !5421, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5475)
!5475 = !{!5476}
!5476 = !DILocalVariable(name: "lock", arg: 1, scope: !5474, file: !4910, line: 399, type: !4913)
!5477 = !DILocation(line: 399, column: 57, scope: !5474)
!5478 = !DILocation(line: 401, column: 2, scope: !5474)
!5479 = !DILocation(line: 402, column: 1, scope: !5474)
!5480 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !4905, file: !4905, line: 29, type: !5481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{null, !4908}
!5483 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5021, file: !5021, line: 66, type: !5022, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5484)
!5484 = !{!5485, !5486}
!5485 = !DILocalVariable(name: "v", arg: 1, scope: !5483, file: !5021, line: 66, type: !5024)
!5486 = !DILocalVariable(name: "size", arg: 2, scope: !5483, file: !5021, line: 66, type: !336)
!5487 = !DILocation(line: 66, column: 73, scope: !5483)
!5488 = !DILocation(line: 66, column: 83, scope: !5483)
!5489 = !DILocation(line: 68, column: 19, scope: !5483)
!5490 = !DILocation(line: 68, column: 22, scope: !5483)
!5491 = !DILocation(line: 68, column: 2, scope: !5483)
!5492 = !DILocation(line: 69, column: 2, scope: !5483)
!5493 = !DILocation(line: 70, column: 1, scope: !5483)
!5494 = distinct !DISubprogram(name: "arch_test_bit", scope: !5038, file: !5038, line: 237, type: !5429, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5495)
!5495 = !{!5496, !5497}
!5496 = !DILocalVariable(name: "nr", arg: 1, scope: !5494, file: !5038, line: 237, type: !339)
!5497 = !DILocalVariable(name: "addr", arg: 2, scope: !5494, file: !5038, line: 237, type: !5431)
!5498 = !DILocation(line: 237, column: 29, scope: !5494)
!5499 = !DILocation(line: 237, column: 63, scope: !5494)
!5500 = !DILocation(line: 239, column: 30, scope: !5494)
!5501 = !DILocation(line: 239, column: 9, scope: !5494)
!5502 = !DILocation(line: 239, column: 54, scope: !5494)
!5503 = !DILocation(line: 239, column: 58, scope: !5494)
!5504 = !DILocation(line: 239, column: 36, scope: !5494)
!5505 = !DILocation(line: 240, column: 26, scope: !5494)
!5506 = !DILocation(line: 240, column: 30, scope: !5494)
!5507 = !DILocation(line: 240, column: 8, scope: !5494)
!5508 = !DILocation(line: 239, column: 2, scope: !5494)
!5509 = distinct !DISubprogram(name: "kasan_check_read", scope: !5050, file: !5050, line: 40, type: !5051, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5510)
!5510 = !{!5511, !5512}
!5511 = !DILocalVariable(name: "p", arg: 1, scope: !5509, file: !5050, line: 40, type: !5024)
!5512 = !DILocalVariable(name: "size", arg: 2, scope: !5509, file: !5050, line: 40, type: !7)
!5513 = !DILocation(line: 40, column: 58, scope: !5509)
!5514 = !DILocation(line: 40, column: 74, scope: !5509)
!5515 = !DILocation(line: 42, column: 2, scope: !5509)
!5516 = distinct !DISubprogram(name: "constant_test_bit", scope: !5038, file: !5038, line: 204, type: !5517, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5519)
!5517 = !DISubroutineType(types: !5518)
!5518 = !{!1491, !325, !5431}
!5519 = !{!5520, !5521}
!5520 = !DILocalVariable(name: "nr", arg: 1, scope: !5516, file: !5038, line: 204, type: !325)
!5521 = !DILocalVariable(name: "addr", arg: 2, scope: !5516, file: !5038, line: 204, type: !5431)
!5522 = !DILocation(line: 204, column: 52, scope: !5516)
!5523 = !DILocation(line: 204, column: 86, scope: !5516)
!5524 = !DILocation(line: 206, column: 19, scope: !5516)
!5525 = !DILocation(line: 206, column: 22, scope: !5516)
!5526 = !DILocation(line: 206, column: 15, scope: !5516)
!5527 = !DILocation(line: 207, column: 4, scope: !5516)
!5528 = !DILocation(line: 207, column: 9, scope: !5516)
!5529 = !DILocation(line: 207, column: 12, scope: !5516)
!5530 = !DILocation(line: 206, column: 44, scope: !5516)
!5531 = !DILocation(line: 207, column: 37, scope: !5516)
!5532 = !DILocation(line: 206, column: 2, scope: !5516)
!5533 = distinct !DISubprogram(name: "variable_test_bit", scope: !5038, file: !5038, line: 224, type: !5517, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5534)
!5534 = !{!5535, !5536, !5537}
!5535 = !DILocalVariable(name: "nr", arg: 1, scope: !5533, file: !5038, line: 224, type: !325)
!5536 = !DILocalVariable(name: "addr", arg: 2, scope: !5533, file: !5038, line: 224, type: !5431)
!5537 = !DILocalVariable(name: "oldbit", scope: !5533, file: !5038, line: 226, type: !1491)
!5538 = !DILocation(line: 224, column: 52, scope: !5533)
!5539 = !DILocation(line: 224, column: 86, scope: !5533)
!5540 = !DILocation(line: 226, column: 2, scope: !5533)
!5541 = !DILocation(line: 226, column: 7, scope: !5533)
!5542 = !DILocation(line: 231, column: 33, scope: !5533)
!5543 = !DILocation(line: 231, column: 46, scope: !5533)
!5544 = !DILocation(line: 228, column: 2, scope: !5533)
!5545 = !{i64 2148224894, i64 2148224968}
!5546 = !DILocation(line: 233, column: 9, scope: !5533)
!5547 = !DILocation(line: 234, column: 1, scope: !5533)
!5548 = !DILocation(line: 233, column: 2, scope: !5533)
!5549 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !4905, file: !4905, line: 41, type: !5481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5550 = distinct !DISubprogram(name: "rfkill_op_handler", scope: !3, file: !3, line: 94, type: !1965, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5551)
!5551 = !{!5552, !5553, !5554, !5555}
!5552 = !DILocalVariable(name: "work", arg: 1, scope: !5550, file: !3, line: 94, type: !1967)
!5553 = !DILocalVariable(name: "i", scope: !5550, file: !3, line: 96, type: !7)
!5554 = !DILocalVariable(name: "c", scope: !5550, file: !3, line: 97, type: !1491)
!5555 = !DILocalVariable(name: "op", scope: !5556, file: !3, line: 102, type: !69)
!5556 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 101, column: 26)
!5557 = distinct !DILexicalBlock(scope: !5558, file: !3, line: 101, column: 7)
!5558 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 100, column: 5)
!5559 = !DILocation(line: 94, column: 51, scope: !5550)
!5560 = !DILocation(line: 96, column: 2, scope: !5550)
!5561 = !DILocation(line: 96, column: 15, scope: !5550)
!5562 = !DILocation(line: 97, column: 2, scope: !5550)
!5563 = !DILocation(line: 97, column: 7, scope: !5550)
!5564 = !DILocation(line: 99, column: 2, scope: !5550)
!5565 = !DILocation(line: 100, column: 2, scope: !5550)
!5566 = !DILocation(line: 101, column: 7, scope: !5557)
!5567 = !DILocation(line: 101, column: 7, scope: !5558)
!5568 = !DILocation(line: 102, column: 4, scope: !5556)
!5569 = !DILocation(line: 102, column: 25, scope: !5556)
!5570 = !DILocation(line: 102, column: 30, scope: !5556)
!5571 = !DILocation(line: 103, column: 22, scope: !5556)
!5572 = !DILocation(line: 104, column: 4, scope: !5556)
!5573 = !DILocation(line: 106, column: 4, scope: !5556)
!5574 = !DILocation(line: 108, column: 30, scope: !5556)
!5575 = !DILocation(line: 108, column: 4, scope: !5556)
!5576 = !DILocation(line: 110, column: 4, scope: !5556)
!5577 = !DILocation(line: 116, column: 8, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5556, file: !3, line: 116, column: 8)
!5579 = !DILocation(line: 116, column: 8, scope: !5556)
!5580 = !DILocation(line: 117, column: 5, scope: !5578)
!5581 = !DILocation(line: 118, column: 3, scope: !5557)
!5582 = !DILocation(line: 118, column: 3, scope: !5556)
!5583 = !DILocation(line: 120, column: 7, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5558, file: !3, line: 120, column: 7)
!5585 = !DILocation(line: 120, column: 7, scope: !5558)
!5586 = !DILocation(line: 121, column: 4, scope: !5584)
!5587 = !DILocation(line: 123, column: 10, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5558, file: !3, line: 123, column: 3)
!5589 = !DILocation(line: 123, column: 8, scope: !5588)
!5590 = !DILocation(line: 123, column: 15, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5588, file: !3, line: 123, column: 3)
!5592 = !DILocation(line: 123, column: 17, scope: !5591)
!5593 = !DILocation(line: 123, column: 3, scope: !5588)
!5594 = !DILocation(line: 124, column: 8, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 124, column: 8)
!5596 = distinct !DILexicalBlock(scope: !5591, file: !3, line: 123, column: 42)
!5597 = !DILocation(line: 124, column: 8, scope: !5596)
!5598 = !DILocation(line: 125, column: 9, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 124, column: 52)
!5600 = !DILocation(line: 125, column: 7, scope: !5599)
!5601 = !DILocation(line: 126, column: 5, scope: !5599)
!5602 = !DILocation(line: 128, column: 31, scope: !5599)
!5603 = !DILocation(line: 128, column: 34, scope: !5599)
!5604 = !DILocation(line: 128, column: 5, scope: !5599)
!5605 = !DILocation(line: 130, column: 5, scope: !5599)
!5606 = !DILocation(line: 131, column: 4, scope: !5599)
!5607 = !DILocation(line: 132, column: 3, scope: !5596)
!5608 = !DILocation(line: 123, column: 38, scope: !5591)
!5609 = !DILocation(line: 123, column: 3, scope: !5591)
!5610 = distinct !{!5610, !5593, !5611, !5612, !5613}
!5611 = !DILocation(line: 132, column: 3, scope: !5588)
!5612 = !{!"llvm.loop.mustprogress"}
!5613 = !{!"llvm.loop.unroll.disable"}
!5614 = !DILocation(line: 133, column: 2, scope: !5558)
!5615 = !DILocation(line: 133, column: 11, scope: !5550)
!5616 = distinct !{!5616, !5565, !5617, !5612, !5613}
!5617 = !DILocation(line: 133, column: 28, scope: !5550)
!5618 = !DILocation(line: 134, column: 2, scope: !5550)
!5619 = !DILocation(line: 135, column: 1, scope: !5550)
!5620 = distinct !DISubprogram(name: "__rfkill_handle_global_op", scope: !3, file: !3, line: 54, type: !5131, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5621)
!5621 = !{!5622, !5623, !5624, !5627}
!5622 = !DILocalVariable(name: "op", arg: 1, scope: !5620, file: !3, line: 54, type: !69)
!5623 = !DILocalVariable(name: "i", scope: !5620, file: !3, line: 56, type: !7)
!5624 = !DILocalVariable(name: "__ret_warn_on", scope: !5625, file: !3, line: 76, type: !97)
!5625 = distinct !DILexicalBlock(scope: !5626, file: !3, line: 76, column: 3)
!5626 = distinct !DILexicalBlock(scope: !5620, file: !3, line: 58, column: 14)
!5627 = !DILocalVariable(name: "__flags", scope: !5628, file: !3, line: 76, type: !97)
!5628 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 76, column: 3)
!5629 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 76, column: 3)
!5630 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 76, column: 3)
!5631 = !DILocation(line: 54, column: 60, scope: !5620)
!5632 = !DILocation(line: 56, column: 2, scope: !5620)
!5633 = !DILocation(line: 56, column: 15, scope: !5620)
!5634 = !DILocation(line: 58, column: 10, scope: !5620)
!5635 = !DILocation(line: 58, column: 2, scope: !5620)
!5636 = !DILocation(line: 60, column: 3, scope: !5626)
!5637 = !DILocation(line: 61, column: 3, scope: !5626)
!5638 = !DILocation(line: 63, column: 3, scope: !5626)
!5639 = !DILocation(line: 64, column: 3, scope: !5626)
!5640 = !DILocation(line: 66, column: 3, scope: !5626)
!5641 = !DILocation(line: 67, column: 3, scope: !5626)
!5642 = !DILocation(line: 69, column: 3, scope: !5626)
!5643 = !DILocation(line: 70, column: 10, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5626, file: !3, line: 70, column: 3)
!5645 = !DILocation(line: 70, column: 8, scope: !5644)
!5646 = !DILocation(line: 70, column: 15, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 70, column: 3)
!5648 = !DILocation(line: 70, column: 17, scope: !5647)
!5649 = !DILocation(line: 70, column: 3, scope: !5644)
!5650 = !DILocation(line: 71, column: 22, scope: !5647)
!5651 = !DILocation(line: 71, column: 4, scope: !5647)
!5652 = !DILocation(line: 70, column: 38, scope: !5647)
!5653 = !DILocation(line: 70, column: 3, scope: !5647)
!5654 = distinct !{!5654, !5649, !5655, !5612, !5613}
!5655 = !DILocation(line: 71, column: 30, scope: !5644)
!5656 = !DILocation(line: 72, column: 3, scope: !5626)
!5657 = !DILocation(line: 75, column: 3, scope: !5626)
!5658 = !DILocation(line: 76, column: 3, scope: !5625)
!5659 = !DILocation(line: 76, column: 3, scope: !5630)
!5660 = !DILocation(line: 76, column: 3, scope: !5629)
!5661 = !DILocation(line: 76, column: 3, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 76, column: 3)
!5663 = !DILocation(line: 76, column: 3, scope: !5628)
!5664 = !DILocation(line: 76, column: 3, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5628, file: !3, line: 76, column: 3)
!5666 = !DILocation(line: 76, column: 3, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5628, file: !3, line: 76, column: 3)
!5668 = !{i64 2154047163, i64 2154047192, i64 2154047238, i64 2154047296, i64 2154047350, i64 2154047404, i64 2154047459, i64 2154047490, i64 2154047798, i64 2154047804, i64 2154047851, i64 2154047874, i64 2154047900}
!5669 = !DILocation(line: 76, column: 3, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5628, file: !3, line: 76, column: 3)
!5671 = !DILocation(line: 76, column: 3, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 76, column: 3)
!5673 = !DILocation(line: 76, column: 3, scope: !5626)
!5674 = !DILocation(line: 79, column: 2, scope: !5626)
!5675 = !DILocation(line: 80, column: 1, scope: !5620)
!5676 = distinct !DISubprogram(name: "generic___test_and_clear_bit", scope: !4921, file: !4921, line: 93, type: !5677, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5679)
!5677 = !DISubroutineType(types: !5678)
!5678 = !{!1491, !339, !4924}
!5679 = !{!5680, !5681, !5682, !5683, !5684}
!5680 = !DILocalVariable(name: "nr", arg: 1, scope: !5676, file: !4921, line: 93, type: !339)
!5681 = !DILocalVariable(name: "addr", arg: 2, scope: !5676, file: !4921, line: 93, type: !4924)
!5682 = !DILocalVariable(name: "mask", scope: !5676, file: !4921, line: 95, type: !339)
!5683 = !DILocalVariable(name: "p", scope: !5676, file: !4921, line: 96, type: !3933)
!5684 = !DILocalVariable(name: "old", scope: !5676, file: !4921, line: 97, type: !339)
!5685 = !DILocation(line: 93, column: 44, scope: !5676)
!5686 = !DILocation(line: 93, column: 72, scope: !5676)
!5687 = !DILocation(line: 95, column: 2, scope: !5676)
!5688 = !DILocation(line: 95, column: 16, scope: !5676)
!5689 = !DILocation(line: 95, column: 23, scope: !5676)
!5690 = !DILocation(line: 96, column: 2, scope: !5676)
!5691 = !DILocation(line: 96, column: 17, scope: !5676)
!5692 = !DILocation(line: 96, column: 39, scope: !5676)
!5693 = !DILocation(line: 96, column: 47, scope: !5676)
!5694 = !DILocation(line: 96, column: 45, scope: !5676)
!5695 = !DILocation(line: 97, column: 2, scope: !5676)
!5696 = !DILocation(line: 97, column: 16, scope: !5676)
!5697 = !DILocation(line: 97, column: 23, scope: !5676)
!5698 = !DILocation(line: 97, column: 22, scope: !5676)
!5699 = !DILocation(line: 99, column: 7, scope: !5676)
!5700 = !DILocation(line: 99, column: 14, scope: !5676)
!5701 = !DILocation(line: 99, column: 13, scope: !5676)
!5702 = !DILocation(line: 99, column: 11, scope: !5676)
!5703 = !DILocation(line: 99, column: 3, scope: !5676)
!5704 = !DILocation(line: 99, column: 5, scope: !5676)
!5705 = !DILocation(line: 100, column: 10, scope: !5676)
!5706 = !DILocation(line: 100, column: 16, scope: !5676)
!5707 = !DILocation(line: 100, column: 14, scope: !5676)
!5708 = !DILocation(line: 100, column: 22, scope: !5676)
!5709 = !DILocation(line: 101, column: 1, scope: !5676)
!5710 = !DILocation(line: 100, column: 2, scope: !5676)
!5711 = distinct !DISubprogram(name: "___test_and_clear_bit", scope: !4946, file: !4946, line: 112, type: !5677, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5712)
!5712 = !{!5713, !5714}
!5713 = !DILocalVariable(name: "nr", arg: 1, scope: !5711, file: !4946, line: 112, type: !339)
!5714 = !DILocalVariable(name: "addr", arg: 2, scope: !5711, file: !4946, line: 112, type: !4924)
!5715 = !DILocation(line: 112, column: 37, scope: !5711)
!5716 = !DILocation(line: 112, column: 65, scope: !5711)
!5717 = !DILocation(line: 114, column: 32, scope: !5711)
!5718 = !DILocation(line: 114, column: 36, scope: !5711)
!5719 = !DILocation(line: 114, column: 2, scope: !5711)
!5720 = !DILocation(line: 115, column: 35, scope: !5711)
!5721 = !DILocation(line: 115, column: 39, scope: !5711)
!5722 = !DILocation(line: 115, column: 9, scope: !5711)
!5723 = !DILocation(line: 115, column: 2, scope: !5711)
!5724 = distinct !DISubprogram(name: "__rfkill_handle_normal_op", scope: !3, file: !3, line: 82, type: !5725, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5729)
!5725 = !DISubroutineType(types: !5726)
!5726 = !{null, !5727, !5728}
!5727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!5728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1491)
!5729 = !{!5730, !5731, !5732}
!5730 = !DILocalVariable(name: "type", arg: 1, scope: !5724, file: !3, line: 82, type: !5727)
!5731 = !DILocalVariable(name: "complement", arg: 2, scope: !5724, file: !3, line: 83, type: !5728)
!5732 = !DILocalVariable(name: "blocked", scope: !5724, file: !3, line: 85, type: !1491)
!5733 = !DILocation(line: 82, column: 62, scope: !5724)
!5734 = !DILocation(line: 83, column: 22, scope: !5724)
!5735 = !DILocation(line: 85, column: 2, scope: !5724)
!5736 = !DILocation(line: 85, column: 7, scope: !5724)
!5737 = !DILocation(line: 87, column: 39, scope: !5724)
!5738 = !DILocation(line: 87, column: 12, scope: !5724)
!5739 = !DILocation(line: 87, column: 10, scope: !5724)
!5740 = !DILocation(line: 88, column: 6, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 88, column: 6)
!5742 = !DILocation(line: 88, column: 6, scope: !5724)
!5743 = !DILocation(line: 89, column: 14, scope: !5741)
!5744 = !DILocation(line: 89, column: 13, scope: !5741)
!5745 = !DILocation(line: 89, column: 11, scope: !5741)
!5746 = !DILocation(line: 89, column: 3, scope: !5741)
!5747 = !DILocation(line: 91, column: 20, scope: !5724)
!5748 = !DILocation(line: 91, column: 26, scope: !5724)
!5749 = !DILocation(line: 91, column: 2, scope: !5724)
!5750 = !DILocation(line: 92, column: 1, scope: !5724)
!5751 = !DISubprogram(name: "rfkill_epo", scope: !4903, file: !4903, line: 13, type: !2315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5752 = !DISubprogram(name: "rfkill_restore_states", scope: !4903, file: !4903, line: 14, type: !2315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5753 = !DISubprogram(name: "rfkill_remove_epo_lock", scope: !4903, file: !4903, line: 15, type: !2315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5754 = !DISubprogram(name: "rfkill_switch_all", scope: !4903, file: !4903, line: 12, type: !5755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5755 = !DISubroutineType(types: !5756)
!5756 = !{null, !5727, !1491}
!5757 = !DISubprogram(name: "__warn_printk", scope: !3774, file: !3774, line: 93, type: !5758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5758 = !DISubroutineType(types: !5759)
!5759 = !{null, !208, null}
!5760 = distinct !DISubprogram(name: "__instrument_read_write_bitop", scope: !4946, file: !4946, line: 64, type: !5761, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5763)
!5761 = !DISubroutineType(types: !5762)
!5762 = !{null, !325, !4924}
!5763 = !{!5764, !5765}
!5764 = !DILocalVariable(name: "nr", arg: 1, scope: !5760, file: !4946, line: 64, type: !325)
!5765 = !DILocalVariable(name: "addr", arg: 2, scope: !5760, file: !4946, line: 64, type: !4924)
!5766 = !DILocation(line: 64, column: 64, scope: !5760)
!5767 = !DILocation(line: 64, column: 92, scope: !5760)
!5768 = !DILocation(line: 84, column: 25, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5770, file: !4946, line: 83, column: 9)
!5770 = distinct !DILexicalBlock(scope: !5760, file: !4946, line: 66, column: 6)
!5771 = !DILocation(line: 84, column: 32, scope: !5769)
!5772 = !DILocation(line: 84, column: 30, scope: !5769)
!5773 = !DILocation(line: 84, column: 3, scope: !5769)
!5774 = !DILocation(line: 86, column: 1, scope: !5760)
!5775 = distinct !DISubprogram(name: "arch___test_and_clear_bit", scope: !5038, file: !5038, line: 174, type: !5677, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5776)
!5776 = !{!5777, !5778, !5779}
!5777 = !DILocalVariable(name: "nr", arg: 1, scope: !5775, file: !5038, line: 174, type: !339)
!5778 = !DILocalVariable(name: "addr", arg: 2, scope: !5775, file: !5038, line: 174, type: !4924)
!5779 = !DILocalVariable(name: "oldbit", scope: !5775, file: !5038, line: 176, type: !1491)
!5780 = !DILocation(line: 174, column: 41, scope: !5775)
!5781 = !DILocation(line: 174, column: 69, scope: !5775)
!5782 = !DILocation(line: 176, column: 2, scope: !5775)
!5783 = !DILocation(line: 176, column: 7, scope: !5775)
!5784 = !DILocation(line: 181, column: 10, scope: !5775)
!5785 = !DILocation(line: 181, column: 22, scope: !5775)
!5786 = !DILocation(line: 178, column: 2, scope: !5775)
!5787 = !{i64 2148221231, i64 2148221308}
!5788 = !DILocation(line: 182, column: 9, scope: !5775)
!5789 = !DILocation(line: 183, column: 1, scope: !5775)
!5790 = !DILocation(line: 182, column: 2, scope: !5775)
!5791 = distinct !DISubprogram(name: "instrument_read_write", scope: !5021, file: !5021, line: 52, type: !5022, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5792)
!5792 = !{!5793, !5794}
!5793 = !DILocalVariable(name: "v", arg: 1, scope: !5791, file: !5021, line: 52, type: !5024)
!5794 = !DILocalVariable(name: "size", arg: 2, scope: !5791, file: !5021, line: 52, type: !336)
!5795 = !DILocation(line: 52, column: 72, scope: !5791)
!5796 = !DILocation(line: 52, column: 82, scope: !5791)
!5797 = !DILocation(line: 54, column: 20, scope: !5791)
!5798 = !DILocation(line: 54, column: 23, scope: !5791)
!5799 = !DILocation(line: 54, column: 2, scope: !5791)
!5800 = !DILocation(line: 55, column: 2, scope: !5791)
!5801 = !DILocation(line: 56, column: 1, scope: !5791)
!5802 = !DISubprogram(name: "rfkill_get_global_sw_state", scope: !4903, file: !4903, line: 17, type: !5803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5803 = !DISubroutineType(types: !5804)
!5804 = !{!1491, !5727}
