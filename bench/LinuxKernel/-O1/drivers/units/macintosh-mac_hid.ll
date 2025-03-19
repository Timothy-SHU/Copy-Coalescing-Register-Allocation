; ModuleID = 'drivers/macintosh/mac_hid.c'
source_filename = "drivers/macintosh/mac_hid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_mac_hid__269_252_mac_hid_init\22, \22a\22\09\09"
module asm "__initcall__kmod_mac_hid__269_252_mac_hid_init6:\09\09\09"
module asm ".long\09__initstub__kmod_mac_hid__269_252_mac_hid_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.ctl_table = type { ptr, ptr, i32, i16, i32, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.input_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.lock_class_key = type {}
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [12 x i64], [1 x i64], [1 x i64], [1 x i64], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
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
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.input_handle = type { ptr, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head }

@__UNIQUE_ID_file267 = internal constant [39 x i8] c"mac_hid.file=drivers/macintosh/mac_hid\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_license268 = internal constant [20 x i8] c"mac_hid.license=GPL\00", section ".modinfo", align 1, !dbg !230
@__UNIQUE_ID___addressable___initstub__kmod_mac_hid__269_252_mac_hid_init6270 = internal global ptr @__initstub__kmod_mac_hid__269_252_mac_hid_init6, section ".discard.addressable", align 8, !dbg !235
@mac_hid_sysctl_header = internal global ptr null, align 8, !dbg !246
@mouse_emulate_buttons = internal global i32 0, align 4, !dbg !244
@__exitcall_mac_hid_exit = internal global ptr @mac_hid_exit, section ".exitcall.exit", align 8, !dbg !237
@.str = private unnamed_addr constant [12 x i8] c"dev/mac_hid\00", align 1, !dbg !358
@mac_hid_files = internal global [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr @mouse_emulate_buttons, i32 4, i16 420, i32 0, ptr @mac_hid_toggle_emumouse, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.2, ptr @mouse_button2_keycode, i32 4, i16 420, i32 0, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.3, ptr @mouse_button3_keycode, i32 4, i16 420, i32 0, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 16, !dbg !375
@.str.1 = private unnamed_addr constant [23 x i8] c"mouse_button_emulation\00", align 1, !dbg !363
@.str.2 = private unnamed_addr constant [22 x i8] c"mouse_button2_keycode\00", align 1, !dbg !368
@mouse_button2_keycode = internal global i32 97, align 4, !dbg !4691
@.str.3 = private unnamed_addr constant [22 x i8] c"mouse_button3_keycode\00", align 1, !dbg !373
@mouse_button3_keycode = internal global i32 100, align 4, !dbg !4693
@mac_hid_emumouse_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mac_hid_emumouse_mutex, i64 16), ptr getelementptr (i8, ptr @mac_hid_emumouse_mutex, i64 16) } }, align 8, !dbg !380
@mac_hid_emumouse_handler = internal global %struct.input_handler { ptr null, ptr null, ptr null, ptr @mac_hid_emumouse_filter, ptr null, ptr @mac_hid_emumouse_connect, ptr @mac_hid_emumouse_disconnect, ptr null, i8 0, i32 0, ptr @.str.5, ptr @mac_hid_emumouse_ids, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, align 8, !dbg !4671
@mac_hid_create_emumouse.mac_hid_emumouse_dev_event_class = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !401
@mac_hid_create_emumouse.mac_hid_emumouse_dev_mutex_class = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !411
@mac_hid_emumouse_dev = internal global ptr null, align 8, !dbg !418
@.str.4 = private unnamed_addr constant [33 x i8] c"Macintosh mouse button emulation\00", align 1, !dbg !413
@.str.5 = private unnamed_addr constant [16 x i8] c"mac-button-emul\00", align 1, !dbg !4669
@mac_hid_emumouse_ids = internal constant [2 x %struct.input_device_id] [%struct.input_device_id { i64 16, i16 0, i16 0, i16 0, i16 0, [1 x i64] [i64 2], [12 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [2 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, i64 0 }, %struct.input_device_id zeroinitializer], align 16, !dbg !4688
@.str.6 = private unnamed_addr constant [65 x i8] c"\013mac_hid: Failed to register button emulation handle, error %d\0A\00", align 1, !dbg !4673
@.str.7 = private unnamed_addr constant [50 x i8] c"\013mac_hid: Failed to open input device, error %d\0A\00", align 1, !dbg !4678
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4683
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file267, ptr @__UNIQUE_ID_license268, ptr @__UNIQUE_ID___addressable___initstub__kmod_mac_hid__269_252_mac_hid_init6270, ptr @mac_hid_exit, ptr @__exitcall_mac_hid_exit], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_mac_hid__269_252_mac_hid_init6() #0 section ".init.text" align 16 !dbg !4707 {
entry:
  %call = call i32 @mac_hid_init() #15, !dbg !4708
  ret i32 %call, !dbg !4708
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @mac_hid_init() #0 section ".init.text" align 16 !dbg !4709 {
entry:
  %retval = alloca i32, align 4
  %call = call ptr @register_sysctl_sz(ptr noundef @.str, ptr noundef @mac_hid_files, i64 noundef 4) #16, !dbg !4710
  store ptr %call, ptr @mac_hid_sysctl_header, align 8, !dbg !4711
  %0 = load ptr, ptr @mac_hid_sysctl_header, align 8, !dbg !4712
  %tobool = icmp ne ptr %0, null, !dbg !4712
  br i1 %tobool, label %if.end, label %if.then, !dbg !4714

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4715
  br label %return, !dbg !4715

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4716
  br label %return, !dbg !4716

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !4717
  ret i32 %1, !dbg !4717
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @mac_hid_exit() #0 section ".exit.text" align 16 !dbg !4718 {
entry:
  %0 = load ptr, ptr @mac_hid_sysctl_header, align 8, !dbg !4719
  call void @unregister_sysctl_table(ptr noundef %0) #16, !dbg !4720
  %1 = load i32, ptr @mouse_emulate_buttons, align 4, !dbg !4721
  %tobool = icmp ne i32 %1, 0, !dbg !4721
  br i1 %tobool, label %if.then, label %if.end, !dbg !4723

if.then:                                          ; preds = %entry
  call void @mac_hid_stop_emulation() #16, !dbg !4724
  br label %if.end, !dbg !4724

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4725
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4726 dso_local void @unregister_sysctl_table(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mac_hid_stop_emulation() #2 align 16 !dbg !4729 {
entry:
  call void @input_unregister_handler(ptr noundef @mac_hid_emumouse_handler) #16, !dbg !4730
  call void @mac_hid_destroy_emumouse() #16, !dbg !4731
  ret void, !dbg !4732
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4733 dso_local ptr @register_sysctl_sz(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mac_hid_toggle_emumouse(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #2 align 16 !dbg !4736 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %write.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %lenp.addr = alloca ptr, align 8
  %ppos.addr = alloca ptr, align 8
  %valp = alloca ptr, align 8
  %old_val = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !4738, metadata !DIExpression()), !dbg !4746
  store i32 %write, ptr %write.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !4739, metadata !DIExpression()), !dbg !4747
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !4740, metadata !DIExpression()), !dbg !4748
  store ptr %lenp, ptr %lenp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lenp.addr, metadata !4741, metadata !DIExpression()), !dbg !4749
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !4742, metadata !DIExpression()), !dbg !4750
  call void @llvm.lifetime.start.p0(i64 8, ptr %valp) #17, !dbg !4751
  call void @llvm.dbg.declare(metadata ptr %valp, metadata !4743, metadata !DIExpression()), !dbg !4752
  %0 = load ptr, ptr %table.addr, align 8, !dbg !4753
  %data = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1, !dbg !4754
  %1 = load ptr, ptr %data, align 8, !dbg !4754
  store ptr %1, ptr %valp, align 8, !dbg !4752
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_val) #17, !dbg !4755
  call void @llvm.dbg.declare(metadata ptr %old_val, metadata !4744, metadata !DIExpression()), !dbg !4756
  %2 = load ptr, ptr %valp, align 8, !dbg !4757
  %3 = load i32, ptr %2, align 4, !dbg !4758
  store i32 %3, ptr %old_val, align 4, !dbg !4756
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #17, !dbg !4759
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !4745, metadata !DIExpression()), !dbg !4760
  %call = call i32 @mutex_lock_killable(ptr noundef @mac_hid_emumouse_mutex) #16, !dbg !4761
  store i32 %call, ptr %rc, align 4, !dbg !4762
  %4 = load i32, ptr %rc, align 4, !dbg !4763
  %tobool = icmp ne i32 %4, 0, !dbg !4763
  br i1 %tobool, label %if.then, label %if.end, !dbg !4765

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %rc, align 4, !dbg !4766
  store i32 %5, ptr %retval, align 4, !dbg !4767
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4767

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %table.addr, align 8, !dbg !4768
  %7 = load i32, ptr %write.addr, align 4, !dbg !4769
  %8 = load ptr, ptr %buffer.addr, align 8, !dbg !4770
  %9 = load ptr, ptr %lenp.addr, align 8, !dbg !4771
  %10 = load ptr, ptr %ppos.addr, align 8, !dbg !4772
  %call1 = call i32 @proc_dointvec(ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #16, !dbg !4773
  store i32 %call1, ptr %rc, align 4, !dbg !4774
  %11 = load i32, ptr %rc, align 4, !dbg !4775
  %cmp = icmp eq i32 %11, 0, !dbg !4777
  br i1 %cmp, label %land.lhs.true, label %if.end14, !dbg !4778

land.lhs.true:                                    ; preds = %if.end
  %12 = load i32, ptr %write.addr, align 4, !dbg !4779
  %tobool2 = icmp ne i32 %12, 0, !dbg !4779
  br i1 %tobool2, label %land.lhs.true3, label %if.end14, !dbg !4780

land.lhs.true3:                                   ; preds = %land.lhs.true
  %13 = load ptr, ptr %valp, align 8, !dbg !4781
  %14 = load i32, ptr %13, align 4, !dbg !4782
  %15 = load i32, ptr %old_val, align 4, !dbg !4783
  %cmp4 = icmp ne i32 %14, %15, !dbg !4784
  br i1 %cmp4, label %if.then5, label %if.end14, !dbg !4785

if.then5:                                         ; preds = %land.lhs.true3
  %16 = load ptr, ptr %valp, align 8, !dbg !4786
  %17 = load i32, ptr %16, align 4, !dbg !4789
  %cmp6 = icmp eq i32 %17, 1, !dbg !4790
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !4791

if.then7:                                         ; preds = %if.then5
  %call8 = call i32 @mac_hid_start_emulation() #16, !dbg !4792
  store i32 %call8, ptr %rc, align 4, !dbg !4793
  br label %if.end13, !dbg !4794

if.else:                                          ; preds = %if.then5
  %18 = load ptr, ptr %valp, align 8, !dbg !4795
  %19 = load i32, ptr %18, align 4, !dbg !4797
  %cmp9 = icmp eq i32 %19, 0, !dbg !4798
  br i1 %cmp9, label %if.then10, label %if.else11, !dbg !4799

if.then10:                                        ; preds = %if.else
  call void @mac_hid_stop_emulation() #16, !dbg !4800
  br label %if.end12, !dbg !4800

if.else11:                                        ; preds = %if.else
  store i32 -22, ptr %rc, align 4, !dbg !4801
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then10
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then7
  br label %if.end14, !dbg !4802

if.end14:                                         ; preds = %if.end13, %land.lhs.true3, %land.lhs.true, %if.end
  %20 = load i32, ptr %rc, align 4, !dbg !4803
  %tobool15 = icmp ne i32 %20, 0, !dbg !4803
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4805

if.then16:                                        ; preds = %if.end14
  %21 = load i32, ptr %old_val, align 4, !dbg !4806
  %22 = load ptr, ptr %valp, align 8, !dbg !4807
  store i32 %21, ptr %22, align 4, !dbg !4808
  br label %if.end17, !dbg !4809

if.end17:                                         ; preds = %if.then16, %if.end14
  call void @mutex_unlock(ptr noundef @mac_hid_emumouse_mutex) #16, !dbg !4810
  %23 = load i32, ptr %rc, align 4, !dbg !4811
  store i32 %23, ptr %retval, align 4, !dbg !4812
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4812

cleanup:                                          ; preds = %if.end17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #17, !dbg !4813
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_val) #17, !dbg !4813
  call void @llvm.lifetime.end.p0(i64 8, ptr %valp) #17, !dbg !4813
  %24 = load i32, ptr %retval, align 4, !dbg !4813
  ret i32 %24, !dbg !4813
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4814 dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4815 dso_local i32 @mutex_lock_killable(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mac_hid_start_emulation() #2 align 16 !dbg !4819 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !4822
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4821, metadata !DIExpression()), !dbg !4823
  %call = call i32 @mac_hid_create_emumouse() #16, !dbg !4824
  store i32 %call, ptr %err, align 4, !dbg !4825
  %0 = load i32, ptr %err, align 4, !dbg !4826
  %tobool = icmp ne i32 %0, 0, !dbg !4826
  br i1 %tobool, label %if.then, label %if.end, !dbg !4828

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %err, align 4, !dbg !4829
  store i32 %1, ptr %retval, align 4, !dbg !4830
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4830

if.end:                                           ; preds = %entry
  %call1 = call i32 @input_register_handler(ptr noundef @mac_hid_emumouse_handler) #16, !dbg !4831
  store i32 %call1, ptr %err, align 4, !dbg !4832
  %2 = load i32, ptr %err, align 4, !dbg !4833
  %tobool2 = icmp ne i32 %2, 0, !dbg !4833
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4835

if.then3:                                         ; preds = %if.end
  call void @mac_hid_destroy_emumouse() #16, !dbg !4836
  %3 = load i32, ptr %err, align 4, !dbg !4838
  store i32 %3, ptr %retval, align 4, !dbg !4839
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4839

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4840

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !4841
  %4 = load i32, ptr %retval, align 4, !dbg !4841
  ret i32 %4, !dbg !4841
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4842 dso_local void @mutex_unlock(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mac_hid_create_emumouse() #2 align 16 !dbg !403 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !4845
  call void @llvm.dbg.declare(metadata ptr %err, metadata !407, metadata !DIExpression()), !dbg !4846
  %call = call ptr @input_allocate_device() #16, !dbg !4847
  store ptr %call, ptr @mac_hid_emumouse_dev, align 8, !dbg !4848
  %0 = load ptr, ptr @mac_hid_emumouse_dev, align 8, !dbg !4849
  %tobool = icmp ne ptr %0, null, !dbg !4849
  br i1 %tobool, label %if.end, label %if.then, !dbg !4851

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4852
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4852

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4853

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !4854

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4854

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !4856

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !4857

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4857

do.end3:                                          ; preds = %do.cond2
  %1 = load ptr, ptr @mac_hid_emumouse_dev, align 8, !dbg !4859
  %name = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 0, !dbg !4860
  store ptr @.str.4, ptr %name, align 8, !dbg !4861
  %2 = load ptr, ptr @mac_hid_emumouse_dev, align 8, !dbg !4862
  %id = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 3, !dbg !4863
  %bustype = getelementptr inbounds %struct.input_id, ptr %id, i32 0, i32 0, !dbg !4864
  store i16 23, ptr %bustype, align 8, !dbg !4865
  %3 = load ptr, ptr @mac_hid_emumouse_dev, align 8, !dbg !4866
  %id4 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 3, !dbg !4867
  %vendor = getelementptr inbounds %struct.input_id, ptr %id4, i32 0, i32 1, !dbg !4868
  store i16 1, ptr %vendor, align 2, !dbg !4869
  %4 = load ptr, ptr @mac_hid_emumouse_dev, align 8, !dbg !4870
  %id5 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 3, !dbg !4871
  %product = getelementptr inbounds %struct.input_id, ptr %id5, i32 0, i32 2, !dbg !4872
  store i16 1, ptr %product, align 4, !dbg !4873
  %5 = load ptr, ptr @mac_hid_emumouse_dev, align 8, !dbg !4874
  %id6 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 3, !dbg !4875
  %version = getelementptr inbounds %struct.input_id, ptr %id6, i32 0, i32 3, !dbg !4876
  store i16 256, ptr %version, align 2, !dbg !4877
  %6 = load ptr, ptr @mac_hid_emumouse_dev, align 8, !dbg !4878
  %evbit = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 5, !dbg !4879
  %arrayidx = getelementptr [1 x i64], ptr %evbit, i64 0, i64 0, !dbg !4878
  store i64 6, ptr %arrayidx, align 8, !dbg !4880
  %7 = load ptr, ptr @mac_hid_emumouse_dev, align 8, !dbg !4881
  %keybit = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 6, !dbg !4882
  %arrayidx7 = getelementptr [12 x i64], ptr %keybit, i64 0, i64 4, !dbg !4881
  store i64 458752, ptr %arrayidx7, align 8, !dbg !4883
  %8 = load ptr, ptr @mac_hid_emumouse_dev, align 8, !dbg !4884
  %relbit = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 7, !dbg !4885
  %arrayidx8 = getelementptr [1 x i64], ptr %relbit, i64 0, i64 0, !dbg !4884
  store i64 3, ptr %arrayidx8, align 8, !dbg !4886
  %9 = load ptr, ptr @mac_hid_emumouse_dev, align 8, !dbg !4887
  %call9 = call i32 @input_register_device(ptr noundef %9) #16, !dbg !4888
  store i32 %call9, ptr %err, align 4, !dbg !4889
  %10 = load i32, ptr %err, align 4, !dbg !4890
  %tobool10 = icmp ne i32 %10, 0, !dbg !4890
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4892

if.then11:                                        ; preds = %do.end3
  %11 = load ptr, ptr @mac_hid_emumouse_dev, align 8, !dbg !4893
  call void @input_free_device(ptr noundef %11) #16, !dbg !4895
  store ptr null, ptr @mac_hid_emumouse_dev, align 8, !dbg !4896
  %12 = load i32, ptr %err, align 4, !dbg !4897
  store i32 %12, ptr %retval, align 4, !dbg !4898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4898

if.end12:                                         ; preds = %do.end3
  store i32 0, ptr %retval, align 4, !dbg !4899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4899

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !4900
  %13 = load i32, ptr %retval, align 4, !dbg !4900
  ret i32 %13, !dbg !4900
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4901 dso_local i32 @input_register_handler(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mac_hid_destroy_emumouse() #2 align 16 !dbg !4904 {
entry:
  %0 = load ptr, ptr @mac_hid_emumouse_dev, align 8, !dbg !4905
  call void @input_unregister_device(ptr noundef %0) #16, !dbg !4906
  store ptr null, ptr @mac_hid_emumouse_dev, align 8, !dbg !4907
  ret void, !dbg !4908
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4909 dso_local ptr @input_allocate_device() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4912 dso_local i32 @input_register_device(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4913 dso_local void @input_free_device(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @mac_hid_emumouse_filter(ptr noundef %handle, i32 noundef %type, i32 noundef %code, i32 noundef %value) #2 align 16 !dbg !4914 {
entry:
  %retval = alloca i1, align 1
  %handle.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %btn = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !4916, metadata !DIExpression()), !dbg !4921
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4917, metadata !DIExpression()), !dbg !4922
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !4918, metadata !DIExpression()), !dbg !4923
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4919, metadata !DIExpression()), !dbg !4924
  call void @llvm.lifetime.start.p0(i64 4, ptr %btn) #17, !dbg !4925
  call void @llvm.dbg.declare(metadata ptr %btn, metadata !4920, metadata !DIExpression()), !dbg !4926
  %0 = load i32, ptr %type.addr, align 4, !dbg !4927
  %cmp = icmp ne i32 %0, 1, !dbg !4929
  br i1 %cmp, label %if.then, label %if.end, !dbg !4930

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4931
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4931

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %code.addr, align 4, !dbg !4932
  %2 = load i32, ptr @mouse_button2_keycode, align 4, !dbg !4934
  %cmp1 = icmp eq i32 %1, %2, !dbg !4935
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !4936

if.then2:                                         ; preds = %if.end
  store i32 274, ptr %btn, align 4, !dbg !4937
  br label %if.end7, !dbg !4938

if.else:                                          ; preds = %if.end
  %3 = load i32, ptr %code.addr, align 4, !dbg !4939
  %4 = load i32, ptr @mouse_button3_keycode, align 4, !dbg !4941
  %cmp3 = icmp eq i32 %3, %4, !dbg !4942
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !4943

if.then4:                                         ; preds = %if.else
  store i32 273, ptr %btn, align 4, !dbg !4944
  br label %if.end6, !dbg !4945

if.else5:                                         ; preds = %if.else
  store i1 false, ptr %retval, align 1, !dbg !4946
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4946

if.end6:                                          ; preds = %if.then4
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then2
  %5 = load ptr, ptr @mac_hid_emumouse_dev, align 8, !dbg !4947
  %6 = load i32, ptr %btn, align 4, !dbg !4948
  %7 = load i32, ptr %value.addr, align 4, !dbg !4949
  call void @input_report_key(ptr noundef %5, i32 noundef %6, i32 noundef %7) #16, !dbg !4950
  %8 = load ptr, ptr @mac_hid_emumouse_dev, align 8, !dbg !4951
  call void @input_sync(ptr noundef %8) #16, !dbg !4952
  store i1 true, ptr %retval, align 1, !dbg !4953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4953

cleanup:                                          ; preds = %if.end7, %if.else5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %btn) #17, !dbg !4954
  %9 = load i1, ptr %retval, align 1, !dbg !4954
  ret i1 %9, !dbg !4954
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mac_hid_emumouse_connect(ptr noundef %handler, ptr noundef %dev, ptr noundef %id) #2 align 16 !dbg !4955 {
entry:
  %retval = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !4957, metadata !DIExpression()), !dbg !4964
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4958, metadata !DIExpression()), !dbg !4965
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !4959, metadata !DIExpression()), !dbg !4966
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #17, !dbg !4967
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !4960, metadata !DIExpression()), !dbg !4968
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !4969
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4961, metadata !DIExpression()), !dbg !4970
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4971
  %1 = load ptr, ptr @mac_hid_emumouse_dev, align 8, !dbg !4973
  %cmp = icmp eq ptr %0, %1, !dbg !4974
  br i1 %cmp, label %if.then, label %if.end, !dbg !4975

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !4976
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4976

if.end:                                           ; preds = %entry
  %call = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #18, !dbg !4977
  store ptr %call, ptr %handle, align 8, !dbg !4978
  %2 = load ptr, ptr %handle, align 8, !dbg !4979
  %tobool = icmp ne ptr %2, null, !dbg !4979
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4981

if.then1:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !4982
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4982

if.end2:                                          ; preds = %if.end
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !4983
  %4 = load ptr, ptr %handle, align 8, !dbg !4984
  %dev3 = getelementptr inbounds %struct.input_handle, ptr %4, i32 0, i32 3, !dbg !4985
  store ptr %3, ptr %dev3, align 8, !dbg !4986
  %5 = load ptr, ptr %handler.addr, align 8, !dbg !4987
  %6 = load ptr, ptr %handle, align 8, !dbg !4988
  %handler4 = getelementptr inbounds %struct.input_handle, ptr %6, i32 0, i32 4, !dbg !4989
  store ptr %5, ptr %handler4, align 8, !dbg !4990
  %7 = load ptr, ptr %handle, align 8, !dbg !4991
  %name = getelementptr inbounds %struct.input_handle, ptr %7, i32 0, i32 2, !dbg !4992
  store ptr @.str.5, ptr %name, align 8, !dbg !4993
  %8 = load ptr, ptr %handle, align 8, !dbg !4994
  %call5 = call i32 @input_register_handle(ptr noundef %8) #16, !dbg !4995
  store i32 %call5, ptr %error, align 4, !dbg !4996
  %9 = load i32, ptr %error, align 4, !dbg !4997
  %tobool6 = icmp ne i32 %9, 0, !dbg !4997
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !4999

if.then7:                                         ; preds = %if.end2
  br label %do.body, !dbg !5000

do.body:                                          ; preds = %if.then7
  br label %do.cond, !dbg !5003

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5003

do.end:                                           ; preds = %do.cond
  %10 = load i32, ptr %error, align 4, !dbg !5000
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i32 noundef %10) #15, !dbg !5000
  store i32 %call8, ptr %tmp, align 4, !dbg !5003
  %11 = load i32, ptr %tmp, align 4, !dbg !5000
  br label %err_free, !dbg !5005

if.end9:                                          ; preds = %if.end2
  %12 = load ptr, ptr %handle, align 8, !dbg !5006
  %call10 = call i32 @input_open_device(ptr noundef %12) #16, !dbg !5007
  store i32 %call10, ptr %error, align 4, !dbg !5008
  %13 = load i32, ptr %error, align 4, !dbg !5009
  %tobool11 = icmp ne i32 %13, 0, !dbg !5009
  br i1 %tobool11, label %if.then12, label %if.end18, !dbg !5011

if.then12:                                        ; preds = %if.end9
  br label %do.body13, !dbg !5012

do.body13:                                        ; preds = %if.then12
  br label %do.cond14, !dbg !5015

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5015

do.end15:                                         ; preds = %do.cond14
  %14 = load i32, ptr %error, align 4, !dbg !5012
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i32 noundef %14) #15, !dbg !5012
  store i32 %call17, ptr %tmp16, align 4, !dbg !5015
  %15 = load i32, ptr %tmp16, align 4, !dbg !5012
  br label %err_unregister, !dbg !5017

if.end18:                                         ; preds = %if.end9
  store i32 0, ptr %retval, align 4, !dbg !5018
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5018

err_unregister:                                   ; preds = %do.end15
  call void @llvm.dbg.label(metadata !4962), !dbg !5019
  %16 = load ptr, ptr %handle, align 8, !dbg !5020
  call void @input_unregister_handle(ptr noundef %16) #16, !dbg !5021
  br label %err_free, !dbg !5021

err_free:                                         ; preds = %err_unregister, %do.end
  call void @llvm.dbg.label(metadata !4963), !dbg !5022
  %17 = load ptr, ptr %handle, align 8, !dbg !5023
  call void @kfree(ptr noundef %17) #16, !dbg !5024
  %18 = load i32, ptr %error, align 4, !dbg !5025
  store i32 %18, ptr %retval, align 4, !dbg !5026
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5026

cleanup:                                          ; preds = %err_free, %if.end18, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !5027
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #17, !dbg !5027
  %19 = load i32, ptr %retval, align 4, !dbg !5027
  ret i32 %19, !dbg !5027
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mac_hid_emumouse_disconnect(ptr noundef %handle) #2 align 16 !dbg !5028 {
entry:
  %handle.addr = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !5030, metadata !DIExpression()), !dbg !5031
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !5032
  call void @input_close_device(ptr noundef %0) #16, !dbg !5033
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !5034
  call void @input_unregister_handle(ptr noundef %1) #16, !dbg !5035
  %2 = load ptr, ptr %handle.addr, align 8, !dbg !5036
  call void @kfree(ptr noundef %2) #16, !dbg !5037
  ret void, !dbg !5038
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_report_key(ptr noundef %dev, i32 noundef %code, i32 noundef %value) #5 align 16 !dbg !5039 {
entry:
  %dev.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5043, metadata !DIExpression()), !dbg !5046
  store i32 %code, ptr %code.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !5044, metadata !DIExpression()), !dbg !5047
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5045, metadata !DIExpression()), !dbg !5048
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5049
  %1 = load i32, ptr %code.addr, align 4, !dbg !5050
  %2 = load i32, ptr %value.addr, align 4, !dbg !5051
  %tobool = icmp ne i32 %2, 0, !dbg !5052
  %lnot = xor i1 %tobool, true, !dbg !5052
  %lnot1 = xor i1 %lnot, true, !dbg !5053
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5053
  call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %lnot.ext) #16, !dbg !5054
  ret void, !dbg !5055
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_sync(ptr noundef %dev) #5 align 16 !dbg !5056 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5058, metadata !DIExpression()), !dbg !5059
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5060
  call void @input_event(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16, !dbg !5061
  ret void, !dbg !5062
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5063 dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !5066 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5070, metadata !DIExpression()), !dbg !5072
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5071, metadata !DIExpression()), !dbg !5073
  %0 = load i64, ptr %size.addr, align 8, !dbg !5074
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5075
  %or = or i32 %1, 256, !dbg !5076
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !5077
  ret ptr %call, !dbg !5078
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5079 dso_local i32 @input_register_handle(ptr noundef) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5082 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5086 dso_local i32 @input_open_device(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5087 dso_local void @input_unregister_handle(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5088 dso_local void @kfree(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5091 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5093, metadata !DIExpression()), !dbg !5098
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5094, metadata !DIExpression()), !dbg !5099
  %0 = load i64, ptr %size.addr, align 8, !dbg !5100
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5101
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5102

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5103
  %tobool = icmp ne i64 %2, 0, !dbg !5103
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5104

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !5105
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5095, metadata !DIExpression()), !dbg !5106
  %3 = load i64, ptr %size.addr, align 8, !dbg !5107
  %cmp = icmp ugt i64 %3, 8192, !dbg !5109
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5110

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5111
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5112
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !5113
  store ptr %call, ptr %retval, align 8, !dbg !5114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5114

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5115
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !5115
  store i32 %call2, ptr %index, align 4, !dbg !5116
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5117
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5118
  %9 = ptrtoint ptr %8 to i64, !dbg !5118
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !5119
  %idxprom = zext i32 %call3 to i64, !dbg !5120
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5120
  %10 = load i32, ptr %index, align 4, !dbg !5121
  %idxprom4 = zext i32 %10 to i64, !dbg !5120
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5120
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5120
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5122
  %13 = load i64, ptr %size.addr, align 8, !dbg !5123
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !5124
  store ptr %call6, ptr %retval, align 8, !dbg !5125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5125

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !5126
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5127
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5128
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !5129
  store ptr %call8, ptr %retval, align 8, !dbg !5130
  br label %return, !dbg !5130

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5131
  ret ptr %16, !dbg !5131
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5132 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !5133 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5137, metadata !DIExpression()), !dbg !5139
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5138, metadata !DIExpression()), !dbg !5140
  %0 = load i64, ptr %size.addr, align 8, !dbg !5141
  %tobool = icmp ne i64 %0, 0, !dbg !5141
  br i1 %tobool, label %if.end, label %if.then, !dbg !5143

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5144
  br label %return, !dbg !5144

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5145
  %cmp = icmp ule i64 %1, 8, !dbg !5147
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5148

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5149
  br label %return, !dbg !5149

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5150
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5152
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5153

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5154
  %cmp4 = icmp ule i64 %3, 96, !dbg !5155
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5156

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5157
  br label %return, !dbg !5157

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5158
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5160
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5161

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5162
  %cmp9 = icmp ule i64 %5, 192, !dbg !5163
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5164

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5165
  br label %return, !dbg !5165

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5166
  %cmp12 = icmp ule i64 %6, 8, !dbg !5168
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5169

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5170
  br label %return, !dbg !5170

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5171
  %cmp15 = icmp ule i64 %7, 16, !dbg !5173
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5174

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5175
  br label %return, !dbg !5175

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5176
  %cmp18 = icmp ule i64 %8, 32, !dbg !5178
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5179

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5180
  br label %return, !dbg !5180

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5181
  %cmp21 = icmp ule i64 %9, 64, !dbg !5183
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5184

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5185
  br label %return, !dbg !5185

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5186
  %cmp24 = icmp ule i64 %10, 128, !dbg !5188
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5189

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5190
  br label %return, !dbg !5190

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5191
  %cmp27 = icmp ule i64 %11, 256, !dbg !5193
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5194

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5195
  br label %return, !dbg !5195

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5196
  %cmp30 = icmp ule i64 %12, 512, !dbg !5198
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5199

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5200
  br label %return, !dbg !5200

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5201
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5203
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5204

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5205
  br label %return, !dbg !5205

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5206
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5208
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5209

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5210
  br label %return, !dbg !5210

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5211
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5213
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5214

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5215
  br label %return, !dbg !5215

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5216
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5218
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5219

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5220
  br label %return, !dbg !5220

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5221
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5223
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5224

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5225
  br label %return, !dbg !5225

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5226
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5228
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5229

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5230
  br label %return, !dbg !5230

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5231
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5233
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5234

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5235
  br label %return, !dbg !5235

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5236
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5238
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5239

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5240
  br label %return, !dbg !5240

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5241
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5243
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5244

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5245
  br label %return, !dbg !5245

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5246
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5248
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5249

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5250
  br label %return, !dbg !5250

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5251
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5253
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5254

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5255
  br label %return, !dbg !5255

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5256
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5258
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5259

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5260
  br label %return, !dbg !5260

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5261, !range !5263, !noundef !410
  %tobool69 = trunc i8 %25 to i1, !dbg !5261
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5264

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5265

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #20, !dbg !5266, !srcloc !5269
  unreachable, !dbg !5266

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5270

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5271

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5272

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5274

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5272

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 480, i32 0, i64 12) #17, !dbg !5276, !srcloc !5278
  br label %do.end75, !dbg !5276

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5272

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5279
  br label %return, !dbg !5279

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5280
  ret i32 %26, !dbg !5280
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5281 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !5287 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5291, metadata !DIExpression()), !dbg !5293
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5292, metadata !DIExpression()), !dbg !5294
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5295
  %and = and i32 %0, 17, !dbg !5295
  %cmp = icmp eq i32 %and, 0, !dbg !5295
  %lnot = xor i1 %cmp, true, !dbg !5295
  %lnot1 = xor i1 %lnot, true, !dbg !5295
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5295
  %conv = sext i32 %lnot.ext to i64, !dbg !5295
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5295
  %tobool = icmp ne i64 %expval, 0, !dbg !5295
  br i1 %tobool, label %if.then, label %if.end, !dbg !5297

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5298
  br label %return, !dbg !5298

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5299
  %and2 = and i32 %1, 1, !dbg !5301
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5301
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5302

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5303
  br label %return, !dbg !5303

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5304
  br label %return, !dbg !5304

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5306
  ret i32 %2, !dbg !5306
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5307 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5308 dso_local void @__compiletime_assert_245() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5309 dso_local void @input_close_device(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5310 dso_local void @input_unregister_device(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5311 dso_local void @input_unregister_handler(ptr noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { cold noredzone }
attributes #16 = { noredzone }
attributes #17 = { nounwind }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705}
!llvm.ident = !{!4706}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file267", scope: !2, file: !3, line: 19, type: !4695, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/macintosh/.mac_hid.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/macintosh/mac_hid\22 -D KBUILD_BASENAME=\22mac_hid\22 -D KBUILD_MODNAME=\22mac_hid\22 -D __KBUILD_MODNAME=kmod_mac_hid -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/macintosh/mac_hid.ll drivers/macintosh/mac_hid.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !227, globals: !229, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/macintosh/mac_hid.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "109380452286d533906f615ca6dfa162")
!4 = !{!5, !102, !110, !117, !124, !130, !135, !141, !146, !152, !159, !165, !172, !180, !187, !196, !201, !206, !212, !217}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !7, file: !6, line: 147, baseType: !98, size: 32, elements: !99)
!6 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !6, line: 135, size: 512, elements: !8)
!8 = !{!9, !13, !15, !17, !21, !22, !38, !96, !97}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !7, file: !6, line: 136, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !6, line: 137, baseType: !14, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !7, file: !6, line: 138, baseType: !16, size: 32, offset: 128)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !7, file: !6, line: 139, baseType: !18, size: 16, offset: 160)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !19, line: 24, baseType: !20)
!19 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!20 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7, file: !6, line: 150, baseType: !5, size: 32, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !7, file: !6, line: 151, baseType: !23, size: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !6, line: 64, baseType: !25)
!25 = !DISubroutineType(types: !26)
!26 = !{!16, !27, !16, !14, !28, !34}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 61, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !31, line: 72, baseType: !32)
!31 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !31, line: 16, baseType: !33)
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !19, line: 52, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !31, line: 88, baseType: !37)
!37 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !7, file: !6, line: 152, baseType: !39, size: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !6, line: 117, size: 256, elements: !41)
!41 = !{!42, !47}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !40, file: !6, line: 118, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !19, line: 174, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 172, size: 32, elements: !45)
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !44, file: !19, line: 173, baseType: !16, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !40, file: !6, line: 119, baseType: !48, size: 192, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !49, line: 41, baseType: !50)
!49 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !49, line: 37, size: 192, elements: !51)
!51 = !{!52, !90}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !50, file: !49, line: 38, baseType: !53, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !54, line: 29, baseType: !55)
!54 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !54, line: 17, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, scope: !55, file: !54, line: 18, baseType: !58, size: 32)
!58 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !55, file: !54, line: 18, size: 32, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !58, file: !54, line: 19, baseType: !61, size: 32)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !62, line: 14, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !61, file: !62, line: 15, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !66, line: 44, baseType: !67)
!66 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !66, line: 14, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !66, line: 15, baseType: !70, size: 32)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !66, line: 15, size: 32, elements: !71)
!71 = !{!72, !73, !83}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !70, file: !66, line: 16, baseType: !43, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !66, line: 24, baseType: !74, size: 16)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !66, line: 24, size: 16, elements: !75)
!75 = !{!76, !82}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !74, file: !66, line: 25, baseType: !77, size: 8)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !78, line: 17, baseType: !79)
!78 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !80, line: 21, baseType: !81)
!80 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !74, file: !66, line: 26, baseType: !77, size: 8, offset: 8)
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !66, line: 28, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !66, line: 28, size: 32, elements: !85)
!85 = !{!86, !89}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !84, file: !66, line: 29, baseType: !87, size: 16)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !78, line: 19, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !80, line: 24, baseType: !20)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !84, file: !66, line: 30, baseType: !87, size: 16, offset: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !50, file: !49, line: 39, baseType: !91, size: 128, offset: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !19, line: 190, size: 128, elements: !92)
!92 = !{!93, !95}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !19, line: 191, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !91, file: !19, line: 191, baseType: !94, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !7, file: !6, line: 153, baseType: !14, size: 64, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !7, file: !6, line: 154, baseType: !14, size: 64, offset: 448)
!98 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!99 = !{!100, !101}
!100 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!101 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !103, line: 9, baseType: !98, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!104 = !{!105, !106, !107, !108, !109}
!105 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!106 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!107 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!108 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!109 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !111, line: 312, baseType: !98, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!114 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!115 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!116 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !118, line: 15, baseType: !98, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!119 = !{!120, !121, !122, !123}
!120 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!121 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!122 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!123 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !125, line: 26, baseType: !98, size: 32, elements: !126)
!125 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!128 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!129 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !131, line: 2052, baseType: !98, size: 32, elements: !132)
!131 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!132 = !{!133, !134}
!133 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!134 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !136, line: 54, baseType: !98, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "USRQUOTA", value: 0)
!139 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!140 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !142, line: 65, baseType: !98, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!145 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !147, line: 16, baseType: !98, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "TT_NONE", value: 0)
!150 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!151 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !153, line: 51, baseType: !98, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!154 = !{!155, !156, !157, !158}
!155 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!156 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!157 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!158 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !160, line: 45, baseType: !98, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!161 = !{!162, !163, !164}
!162 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!163 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!164 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !166, line: 487, baseType: !98, size: 32, elements: !167)
!166 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!167 = !{!168, !169, !170, !171}
!168 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!169 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!170 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!171 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !173, line: 620, baseType: !98, size: 32, elements: !174)
!173 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!174 = !{!175, !176, !177, !178, !179}
!175 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!176 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!177 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!178 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!179 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !173, line: 597, baseType: !16, size: 32, elements: !181)
!181 = !{!182, !183, !184, !185, !186}
!182 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!183 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!184 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!185 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!186 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !166, line: 547, baseType: !98, size: 32, elements: !188)
!188 = !{!189, !190, !191, !192, !193, !194, !195}
!189 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!190 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!191 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!192 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!193 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!194 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!195 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !166, line: 564, baseType: !98, size: 32, elements: !197)
!197 = !{!198, !199, !200}
!198 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!199 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!200 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !166, line: 577, baseType: !98, size: 32, elements: !202)
!202 = !{!203, !204, !205}
!203 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!204 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!205 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !166, line: 503, baseType: !98, size: 32, elements: !207)
!207 = !{!208, !209, !210, !211}
!208 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!209 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!210 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!211 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !213, line: 10, baseType: !98, size: 32, elements: !214)
!213 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!214 = !{!215, !216}
!215 = !DIEnumerator(name: "false", value: 0)
!216 = !DIEnumerator(name: "true", value: 1)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !218, line: 364, baseType: !98, size: 32, elements: !219)
!218 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!219 = !{!220, !221, !222, !223, !224, !225, !226}
!220 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!221 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!222 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!223 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!224 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!225 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!226 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!227 = !{!14, !16, !228, !33}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !19, line: 154, baseType: !98)
!229 = !{!0, !230, !235, !237, !244, !246, !358, !363, !368, !373, !375, !380, !401, !411, !413, !418, !4669, !4671, !4673, !4678, !4683, !4688, !4691, !4693}
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license268", scope: !2, file: !3, line: 19, type: !232, isLocal: true, isDefinition: true, align: 8)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 20)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_mac_hid__269_252_mac_hid_init6270", scope: !2, file: !3, line: 252, type: !14, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "__exitcall_mac_hid_exit", scope: !2, file: !3, line: 261, type: !239, isLocal: true, isDefinition: true)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !240, line: 120, baseType: !241)
!240 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{null}
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "mouse_emulate_buttons", scope: !2, file: !3, line: 21, type: !16, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "mac_hid_sysctl_header", scope: !2, file: !3, line: 242, type: !248, isLocal: true, isDefinition: true)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !6, line: 173, size: 640, elements: !250)
!250 = !{!251, !271, !284, !285, !339, !340, !342, !348}
!251 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !6, line: 174, baseType: !252, size: 192)
!252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !249, file: !6, line: 174, size: 192, elements: !253)
!253 = !{!254, !262}
!254 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !6, line: 175, baseType: !255, size: 192)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !252, file: !6, line: 175, size: 192, elements: !256)
!256 = !{!257, !258, !259, !260, !261}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !255, file: !6, line: 176, baseType: !27, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !255, file: !6, line: 177, baseType: !16, size: 32, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !255, file: !6, line: 178, baseType: !16, size: 32, offset: 96)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !255, file: !6, line: 179, baseType: !16, size: 32, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !255, file: !6, line: 180, baseType: !16, size: 32, offset: 160)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !252, file: !6, line: 182, baseType: !263, size: 128, align: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !19, line: 232, size: 128, align: 64, elements: !264)
!264 = !{!265, !267}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !263, file: !19, line: 233, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !263, file: !19, line: 234, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !266}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !249, file: !6, line: 184, baseType: !272, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !274, line: 26, size: 256, elements: !275)
!274 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!275 = !{!276, !277}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !273, file: !274, line: 27, baseType: !98, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !273, file: !274, line: 28, baseType: !278, size: 192, offset: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !279, line: 43, size: 192, elements: !280)
!279 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!280 = !{!281, !283}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !278, file: !279, line: 44, baseType: !282, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !62, line: 23, baseType: !61)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !278, file: !279, line: 45, baseType: !91, size: 128, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !249, file: !6, line: 185, baseType: !27, size: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !249, file: !6, line: 186, baseType: !286, size: 64, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !6, line: 204, size: 960, elements: !288)
!288 = !{!289, !312, !316, !335}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !287, file: !6, line: 205, baseType: !290, size: 768)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !6, line: 199, size: 768, elements: !291)
!291 = !{!292, !297}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !290, file: !6, line: 200, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!16, !296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !290, file: !6, line: 201, baseType: !298, size: 704, offset: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !6, line: 193, size: 704, elements: !299)
!299 = !{!300, !301}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !298, file: !6, line: 195, baseType: !249, size: 640)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !298, file: !6, line: 196, baseType: !302, size: 64, offset: 640)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !303, line: 12, size: 64, elements: !304)
!303 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !302, file: !303, line: 13, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !303, line: 5, size: 192, align: 64, elements: !308)
!308 = !{!309, !310, !311}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !307, file: !303, line: 6, baseType: !33, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !307, file: !303, line: 7, baseType: !306, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !307, file: !303, line: 8, baseType: !306, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !287, file: !6, line: 206, baseType: !313, size: 64, offset: 768)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!296, !286}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !287, file: !6, line: 207, baseType: !317, size: 64, offset: 832)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !248, !320, !328}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !322, line: 23, baseType: !323)
!322 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !322, line: 21, size: 32, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !323, file: !322, line: 22, baseType: !326, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !19, line: 37, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !31, line: 49, baseType: !98)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !322, line: 28, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !322, line: 26, size: 32, elements: !331)
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !330, file: !322, line: 27, baseType: !333, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !19, line: 38, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !31, line: 50, baseType: !98)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !287, file: !6, line: 209, baseType: !336, size: 64, offset: 896)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!16, !248, !27}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !249, file: !6, line: 187, baseType: !296, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !249, file: !6, line: 188, baseType: !341, size: 64, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !249, file: !6, line: 189, baseType: !343, size: 64, offset: 512)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !6, line: 157, size: 256, elements: !345)
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !344, file: !6, line: 158, baseType: !307, size: 192, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !344, file: !6, line: 159, baseType: !248, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !249, file: !6, line: 190, baseType: !349, size: 64, offset: 576)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !19, line: 194, size: 64, elements: !350)
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !349, file: !19, line: 195, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !19, line: 198, size: 128, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !19, line: 199, baseType: !352, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !353, file: !19, line: 199, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !3, line: 246, type: !360, isLocal: true, isDefinition: true)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 96, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 12)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !3, line: 219, type: !365, isLocal: true, isDefinition: true)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 184, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 23)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !3, line: 226, type: !370, isLocal: true, isDefinition: true)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 176, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 22)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !3, line: 233, type: !370, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(name: "mac_hid_files", scope: !2, file: !3, line: 217, type: !377, isLocal: true, isDefinition: true)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 4)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "mac_hid_emumouse_mutex", scope: !2, file: !3, line: 27, type: !382, isLocal: true, isDefinition: true)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !383, line: 66, size: 256, elements: !384)
!383 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!384 = !{!385, !394, !395, !400}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !382, file: !383, line: 67, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !387, line: 13, baseType: !388)
!387 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !19, line: 181, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 179, size: 64, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !389, file: !19, line: 180, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !78, line: 22, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !80, line: 30, baseType: !37)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !382, file: !383, line: 68, baseType: !282, size: 32, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !382, file: !383, line: 70, baseType: !396, size: 32, offset: 96)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !397, line: 15, size: 32, elements: !398)
!397 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !396, file: !397, line: 20, baseType: !43, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !382, file: !383, line: 72, baseType: !91, size: 128, offset: 128)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "mac_hid_emumouse_dev_event_class", scope: !403, file: !3, line: 31, type: !408, isLocal: true, isDefinition: true)
!403 = distinct !DISubprogram(name: "mac_hid_create_emumouse", scope: !3, file: !3, line: 29, type: !404, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{!16}
!406 = !{!407}
!407 = !DILocalVariable(name: "err", scope: !403, file: !3, line: 33, type: !16)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !409, line: 206, elements: !410)
!409 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!410 = !{}
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "mac_hid_emumouse_dev_mutex_class", scope: !403, file: !3, line: 32, type: !408, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !415, isLocal: true, isDefinition: true)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 264, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 33)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(name: "mac_hid_emumouse_dev", scope: !2, file: !3, line: 25, type: !420, isLocal: true, isDefinition: true)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !422, line: 137, size: 10880, elements: !423)
!422 = !DIFile(filename: "./include/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b25fc678586bfd50cf52e415a8b77c9")
!423 = !{!424, !425, !426, !427, !435, !439, !440, !442, !443, !444, !445, !446, !447, !451, !452, !453, !454, !455, !456, !474, !479, !4174, !4177, !4178, !4179, !4181, !4184, !4194, !4195, !4196, !4197, !4198, !4202, !4206, !4210, !4214, !4292, !4293, !4294, !4295, !4296, !4659, !4660, !4661, !4662, !4663, !4665, !4666, !4668}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !421, file: !422, line: 138, baseType: !10, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !421, file: !422, line: 139, baseType: !10, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !421, file: !422, line: 140, baseType: !10, size: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !421, file: !422, line: 141, baseType: !428, size: 64, offset: 192)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !429, line: 59, size: 64, elements: !430)
!429 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48bb23414dcd9e3ab2349c2bc2e9cd2c")
!430 = !{!431, !432, !433, !434}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !428, file: !429, line: 60, baseType: !88, size: 16)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !428, file: !429, line: 61, baseType: !88, size: 16, offset: 16)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !428, file: !429, line: 62, baseType: !88, size: 16, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !428, file: !429, line: 63, baseType: !88, size: 16, offset: 48)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !421, file: !422, line: 143, baseType: !436, size: 64, offset: 256)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 64, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 1)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !421, file: !422, line: 145, baseType: !436, size: 64, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !421, file: !422, line: 146, baseType: !441, size: 768, offset: 384)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 768, elements: !361)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !421, file: !422, line: 147, baseType: !436, size: 64, offset: 1152)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !421, file: !422, line: 148, baseType: !436, size: 64, offset: 1216)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !421, file: !422, line: 149, baseType: !436, size: 64, offset: 1280)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !421, file: !422, line: 150, baseType: !436, size: 64, offset: 1344)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !421, file: !422, line: 151, baseType: !436, size: 64, offset: 1408)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !421, file: !422, line: 152, baseType: !448, size: 128, offset: 1472)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 2)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !421, file: !422, line: 153, baseType: !436, size: 64, offset: 1600)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !421, file: !422, line: 155, baseType: !98, size: 32, offset: 1664)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !421, file: !422, line: 157, baseType: !98, size: 32, offset: 1696)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !421, file: !422, line: 158, baseType: !98, size: 32, offset: 1728)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !421, file: !422, line: 159, baseType: !14, size: 64, offset: 1792)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !421, file: !422, line: 161, baseType: !457, size: 64, offset: 1856)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!16, !420, !460, !473}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !429, line: 117, size: 320, elements: !463)
!463 = !{!464, !465, !466, !467, !469}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !462, file: !429, line: 119, baseType: !79, size: 8)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !462, file: !429, line: 120, baseType: !79, size: 8, offset: 8)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !462, file: !429, line: 121, baseType: !88, size: 16, offset: 16)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !462, file: !429, line: 122, baseType: !468, size: 32, offset: 32)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !80, line: 27, baseType: !98)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !462, file: !429, line: 123, baseType: !470, size: 256, offset: 64)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 256, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 32)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !421, file: !422, line: 164, baseType: !475, size: 64, offset: 1920)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!16, !420, !478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !421, file: !422, line: 167, baseType: !480, size: 64, offset: 1984)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !422, line: 546, size: 960, elements: !482)
!482 = !{!483, !552, !556, !560, !564, !565, !569, !570, !571, !572, !573, !574}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !481, file: !422, line: 547, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!16, !420, !487, !487}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !429, line: 454, size: 384, elements: !489)
!489 = !{!490, !491, !494, !495, !500, !505}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !488, file: !429, line: 455, baseType: !88, size: 16)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !488, file: !429, line: 456, baseType: !492, size: 16, offset: 16)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !80, line: 23, baseType: !493)
!493 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !488, file: !429, line: 457, baseType: !88, size: 16, offset: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !488, file: !429, line: 458, baseType: !496, size: 32, offset: 48)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !429, line: 320, size: 32, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !496, file: !429, line: 321, baseType: !88, size: 16)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !496, file: !429, line: 322, baseType: !88, size: 16, offset: 16)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !488, file: !429, line: 459, baseType: !501, size: 32, offset: 80)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !429, line: 310, size: 32, elements: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !501, file: !429, line: 311, baseType: !88, size: 16)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !501, file: !429, line: 312, baseType: !88, size: 16, offset: 16)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !488, file: !429, line: 467, baseType: !506, size: 256, offset: 128)
!506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !488, file: !429, line: 461, size: 256, elements: !507)
!507 = !{!508, !519, !525, !537, !547}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !506, file: !429, line: 462, baseType: !509, size: 80)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !429, line: 349, size: 80, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !509, file: !429, line: 350, baseType: !492, size: 16)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !509, file: !429, line: 351, baseType: !513, size: 64, offset: 16)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !429, line: 337, size: 64, elements: !514)
!514 = !{!515, !516, !517, !518}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !513, file: !429, line: 338, baseType: !88, size: 16)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !513, file: !429, line: 339, baseType: !88, size: 16, offset: 16)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !513, file: !429, line: 340, baseType: !88, size: 16, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !513, file: !429, line: 341, baseType: !88, size: 16, offset: 48)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !506, file: !429, line: 463, baseType: !520, size: 96)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !429, line: 360, size: 96, elements: !521)
!521 = !{!522, !523, !524}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !520, file: !429, line: 361, baseType: !492, size: 16)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !520, file: !429, line: 362, baseType: !492, size: 16, offset: 16)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !520, file: !429, line: 363, baseType: !513, size: 64, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !506, file: !429, line: 464, baseType: !526, size: 256)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !429, line: 405, size: 256, elements: !527)
!527 = !{!528, !529, !530, !531, !532, !533, !534, !535}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !526, file: !429, line: 406, baseType: !88, size: 16)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !526, file: !429, line: 407, baseType: !88, size: 16, offset: 16)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !526, file: !429, line: 408, baseType: !492, size: 16, offset: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !526, file: !429, line: 409, baseType: !492, size: 16, offset: 48)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !526, file: !429, line: 410, baseType: !88, size: 16, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !526, file: !429, line: 412, baseType: !513, size: 64, offset: 80)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !526, file: !429, line: 414, baseType: !468, size: 32, offset: 160)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !526, file: !429, line: 415, baseType: !536, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !506, file: !429, line: 465, baseType: !538, size: 192)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 192, elements: !449)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !429, line: 376, size: 96, elements: !540)
!540 = !{!541, !542, !543, !544, !545, !546}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !539, file: !429, line: 377, baseType: !88, size: 16)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !539, file: !429, line: 378, baseType: !88, size: 16, offset: 16)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !539, file: !429, line: 380, baseType: !492, size: 16, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !539, file: !429, line: 381, baseType: !492, size: 16, offset: 48)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !539, file: !429, line: 383, baseType: !88, size: 16, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !539, file: !429, line: 384, baseType: !492, size: 16, offset: 80)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !506, file: !429, line: 466, baseType: !548, size: 32)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !429, line: 426, size: 32, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !548, file: !429, line: 427, baseType: !88, size: 16)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !548, file: !429, line: 428, baseType: !88, size: 16, offset: 16)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !481, file: !422, line: 549, baseType: !553, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!16, !420, !16}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !481, file: !422, line: 551, baseType: !557, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!16, !420, !16, !16}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !481, file: !422, line: 552, baseType: !561, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !420, !87}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !481, file: !422, line: 553, baseType: !561, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !481, file: !422, line: 555, baseType: !566, size: 64, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !480}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !481, file: !422, line: 557, baseType: !14, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !481, file: !422, line: 559, baseType: !448, size: 128, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !481, file: !422, line: 561, baseType: !382, size: 256, offset: 576)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !481, file: !422, line: 563, baseType: !16, size: 32, offset: 832)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !481, file: !422, line: 564, baseType: !487, size: 64, offset: 896)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !481, file: !422, line: 565, baseType: !575, offset: 960)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, elements: !648)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !131, line: 994, size: 1856, align: 64, elements: !578)
!578 = !{!579, !590, !591, !593, !594, !595, !596, !597, !654, !863, !872, !4164, !4165, !4166, !4167, !4168, !4169, !4171, !4172, !4173}
!579 = !DIDerivedType(tag: DW_TAG_member, scope: !577, file: !131, line: 995, baseType: !580, size: 128)
!580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !577, file: !131, line: 995, size: 128, elements: !581)
!581 = !{!582, !588, !589}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !580, file: !131, line: 996, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !584, line: 60, size: 64, elements: !585)
!584 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!585 = !{!586}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !583, file: !584, line: 61, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !580, file: !131, line: 997, baseType: !263, size: 128, align: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !580, file: !131, line: 998, baseType: !98, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !577, file: !131, line: 1005, baseType: !53, size: 32, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !577, file: !131, line: 1006, baseType: !592, size: 32, offset: 160)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !19, line: 156, baseType: !98)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !577, file: !131, line: 1007, baseType: !386, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !577, file: !131, line: 1008, baseType: !382, size: 256, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !577, file: !131, line: 1009, baseType: !35, size: 64, offset: 512)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !577, file: !131, line: 1010, baseType: !98, size: 32, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !577, file: !131, line: 1011, baseType: !598, size: 256, offset: 640)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !131, line: 948, size: 256, elements: !599)
!599 = !{!600, !623, !650, !651, !652, !653}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !598, file: !131, line: 949, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !602, line: 34, baseType: !603)
!602 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !602, line: 25, size: 64, elements: !604)
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !603, file: !602, line: 26, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !607, line: 27, baseType: !608)
!607 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !607, line: 13, size: 64, elements: !609)
!609 = !{!610, !622}
!610 = !DIDerivedType(tag: DW_TAG_member, scope: !608, file: !607, line: 14, baseType: !611, size: 32)
!611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !608, file: !607, line: 14, size: 32, elements: !612)
!612 = !{!613, !614}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !611, file: !607, line: 15, baseType: !43, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, scope: !611, file: !607, line: 16, baseType: !615, size: 32)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !611, file: !607, line: 16, size: 32, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !615, file: !607, line: 18, baseType: !77, size: 8)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !615, file: !607, line: 19, baseType: !619, size: 24, offset: 8)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 24, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 3)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !608, file: !607, line: 26, baseType: !65, size: 32, offset: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !598, file: !131, line: 950, baseType: !624, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !103, line: 59, size: 768, elements: !626)
!626 = !{!627, !633, !634, !635, !637, !638, !639, !640}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !625, file: !103, line: 61, baseType: !628, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !629, line: 113, baseType: !630)
!629 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !629, line: 111, size: 32, elements: !631)
!631 = !{!632}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !630, file: !629, line: 112, baseType: !43, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !625, file: !103, line: 62, baseType: !98, size: 32, offset: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !625, file: !103, line: 63, baseType: !53, size: 32, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !625, file: !103, line: 65, baseType: !636, size: 256, offset: 128)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 256, elements: !378)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !625, file: !103, line: 66, baseType: !349, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !625, file: !103, line: 68, baseType: !48, size: 192, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !625, file: !103, line: 69, baseType: !263, size: 128, align: 64, offset: 640)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !625, file: !103, line: 70, baseType: !641, offset: 768)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, elements: !648)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !103, line: 54, size: 128, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !642, file: !103, line: 55, baseType: !16, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !642, file: !103, line: 56, baseType: !646, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !103, line: 56, flags: DIFlagFwdDecl)
!648 = !{!649}
!649 = !DISubrange(count: -1)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !598, file: !131, line: 951, baseType: !102, size: 32, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !598, file: !131, line: 952, baseType: !321, size: 32, offset: 160)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !598, file: !131, line: 952, baseType: !321, size: 32, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !598, file: !131, line: 953, baseType: !16, size: 32, offset: 224)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !577, file: !131, line: 1012, baseType: !655, size: 64, offset: 896)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !658, line: 110, size: 1472, elements: !659)
!658 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !679, !680, !681, !682, !683, !684, !808, !809, !810, !811, !812, !843, !846, !850, !858}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !657, file: !658, line: 111, baseType: !386, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !657, file: !658, line: 112, baseType: !321, size: 32, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !657, file: !658, line: 113, baseType: !329, size: 32, offset: 96)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !657, file: !658, line: 114, baseType: !321, size: 32, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !657, file: !658, line: 115, baseType: !329, size: 32, offset: 160)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !657, file: !658, line: 116, baseType: !321, size: 32, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !657, file: !658, line: 117, baseType: !329, size: 32, offset: 224)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !657, file: !658, line: 118, baseType: !321, size: 32, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !657, file: !658, line: 119, baseType: !329, size: 32, offset: 288)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !657, file: !658, line: 120, baseType: !98, size: 32, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !657, file: !658, line: 121, baseType: !671, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !672, line: 24, baseType: !673)
!672 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !672, line: 24, size: 64, elements: !674)
!674 = !{!675}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !673, file: !672, line: 24, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !78, line: 23, baseType: !677)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !80, line: 31, baseType: !678)
!678 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !657, file: !658, line: 122, baseType: !671, size: 64, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !657, file: !658, line: 123, baseType: !671, size: 64, offset: 512)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !657, file: !658, line: 124, baseType: !671, size: 64, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !657, file: !658, line: 125, baseType: !671, size: 64, offset: 640)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !657, file: !658, line: 127, baseType: !81, size: 8, offset: 704)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !657, file: !658, line: 129, baseType: !685, size: 64, offset: 768)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !687, line: 195, size: 1728, elements: !688)
!687 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!688 = !{!689, !690, !695, !700, !709, !712, !713, !720, !721, !722, !723, !727, !728, !729, !730, !731, !772, !793}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !686, file: !687, line: 196, baseType: !628, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !686, file: !687, line: 197, baseType: !691, size: 32, offset: 32)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !687, line: 28, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !19, line: 104, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !78, line: 20, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !80, line: 26, baseType: !16)
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !687, line: 198, baseType: !696, size: 192, offset: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !687, line: 198, size: 192, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !696, file: !687, line: 199, baseType: !91, size: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !696, file: !687, line: 200, baseType: !307, size: 192, align: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !686, file: !687, line: 205, baseType: !701, size: 320, offset: 256)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !702, line: 48, size: 320, elements: !703)
!702 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!703 = !{!704, !705, !706, !707, !708}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !701, file: !702, line: 49, baseType: !386, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !701, file: !702, line: 55, baseType: !386, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !701, file: !702, line: 57, baseType: !396, size: 32, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !701, file: !702, line: 59, baseType: !282, size: 32, offset: 160)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !701, file: !702, line: 60, baseType: !91, size: 128, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !686, file: !687, line: 206, baseType: !710, size: 64, offset: 576)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !687, line: 206, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !686, file: !687, line: 207, baseType: !14, size: 64, offset: 640)
!713 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !687, line: 208, baseType: !714, size: 64, offset: 704)
!714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !687, line: 208, size: 64, elements: !715)
!715 = !{!716, !719}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !714, file: !687, line: 209, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !718, line: 8, baseType: !393)
!718 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!719 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !714, file: !687, line: 210, baseType: !717, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !686, file: !687, line: 212, baseType: !717, size: 64, offset: 768)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !686, file: !687, line: 213, baseType: !321, size: 32, offset: 832)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !686, file: !687, line: 214, baseType: !329, size: 32, offset: 864)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !686, file: !687, line: 215, baseType: !724, size: 32, offset: 896)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !687, line: 31, baseType: !725)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !19, line: 110, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !78, line: 21, baseType: !468)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !686, file: !687, line: 216, baseType: !20, size: 16, offset: 928)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !686, file: !687, line: 217, baseType: !20, size: 16, offset: 944)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !686, file: !687, line: 221, baseType: !493, size: 16, offset: 960)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !687, line: 228, baseType: !33, size: 64, offset: 1024)
!731 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !687, line: 245, baseType: !732, size: 320, offset: 1088)
!732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !687, line: 245, size: 320, elements: !733)
!733 = !{!734, !763}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !732, file: !687, line: 246, baseType: !735, size: 320)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !687, line: 114, size: 320, elements: !736)
!736 = !{!737, !738, !750, !753, !762}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !735, file: !687, line: 116, baseType: !33, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, scope: !735, file: !687, line: 117, baseType: !739, size: 64, offset: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !735, file: !687, line: 117, size: 64, elements: !740)
!740 = !{!741, !749}
!741 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !687, line: 118, baseType: !742, size: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !739, file: !687, line: 118, size: 64, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !742, file: !687, line: 120, baseType: !87, size: 16)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !742, file: !687, line: 121, baseType: !746, size: 48, offset: 16)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 48, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 6)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !739, file: !687, line: 127, baseType: !33, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !735, file: !687, line: 129, baseType: !751, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !687, line: 102, flags: DIFlagFwdDecl)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !735, file: !687, line: 130, baseType: !754, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !687, line: 108, size: 192, elements: !756)
!756 = !{!757, !758, !759}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !755, file: !687, line: 109, baseType: !263, size: 128, align: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !755, file: !687, line: 110, baseType: !628, size: 32, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !755, file: !687, line: 111, baseType: !760, size: 8, offset: 160)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !19, line: 35, baseType: !761)
!761 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !735, file: !687, line: 131, baseType: !10, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, scope: !732, file: !687, line: 247, baseType: !764, size: 320)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !732, file: !687, line: 247, size: 320, elements: !765)
!765 = !{!766, !767, !768, !769, !770}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !764, file: !687, line: 248, baseType: !33, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !764, file: !687, line: 249, baseType: !33, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !687, line: 250, baseType: !751, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !764, file: !687, line: 251, baseType: !754, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !764, file: !687, line: 252, baseType: !771, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !687, line: 260, baseType: !773, size: 256, offset: 1408)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !687, line: 260, size: 256, elements: !774)
!774 = !{!775, !781}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !773, file: !687, line: 261, baseType: !776, size: 256)
!776 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !687, line: 134, size: 256, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !776, file: !687, line: 135, baseType: !14, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !776, file: !687, line: 136, baseType: !780, size: 256)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !378)
!781 = !DIDerivedType(tag: DW_TAG_member, scope: !773, file: !687, line: 262, baseType: !782, size: 256)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !773, file: !687, line: 262, size: 256, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !782, file: !687, line: 264, baseType: !91, size: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !782, file: !687, line: 265, baseType: !786, size: 128, offset: 128)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !787, line: 22, size: 128, elements: !788)
!787 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!788 = !{!789, !792}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !786, file: !787, line: 23, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !787, line: 23, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !786, file: !787, line: 24, baseType: !33, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !686, file: !687, line: 280, baseType: !794, size: 64, offset: 1664)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !687, line: 176, size: 192, elements: !796)
!796 = !{!797, !806, !807}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !795, file: !687, line: 177, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !687, line: 171, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!16, !685, !802, !804, !685}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !795, file: !687, line: 178, baseType: !685, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !795, file: !687, line: 179, baseType: !751, size: 64, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !657, file: !658, line: 130, baseType: !685, size: 64, offset: 832)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !657, file: !658, line: 131, baseType: !685, size: 64, offset: 896)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !657, file: !658, line: 132, baseType: !685, size: 64, offset: 960)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !657, file: !658, line: 135, baseType: !14, size: 64, offset: 1024)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !657, file: !658, line: 137, baseType: !813, size: 64, offset: 1088)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !815, line: 14, size: 1088, elements: !816)
!815 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!816 = !{!817, !818, !827, !828, !829, !830, !831, !832}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !814, file: !815, line: 15, baseType: !628, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !814, file: !815, line: 17, baseType: !819, size: 320, offset: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !820, line: 22, size: 320, elements: !821)
!820 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!821 = !{!822, !823, !824, !825}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !819, file: !820, line: 23, baseType: !282, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !819, file: !820, line: 24, baseType: !392, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !819, file: !820, line: 26, baseType: !91, size: 128, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !819, file: !820, line: 28, baseType: !826, size: 64, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !814, file: !815, line: 19, baseType: !33, size: 64, offset: 384)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !814, file: !815, line: 20, baseType: !386, size: 64, offset: 448)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !814, file: !815, line: 23, baseType: !353, size: 128, offset: 512)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !814, file: !815, line: 24, baseType: !321, size: 32, offset: 640)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !814, file: !815, line: 29, baseType: !386, size: 64, offset: 704)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !814, file: !815, line: 36, baseType: !833, size: 320, offset: 768)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !834, line: 15, size: 320, elements: !835)
!834 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!835 = !{!836, !837, !838, !839, !840, !841, !842}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !833, file: !834, line: 16, baseType: !282, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !833, file: !834, line: 18, baseType: !16, size: 32, offset: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !833, file: !834, line: 19, baseType: !16, size: 32, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !833, file: !834, line: 20, baseType: !16, size: 32, offset: 96)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !833, file: !834, line: 21, baseType: !16, size: 32, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !833, file: !834, line: 22, baseType: !33, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !833, file: !834, line: 23, baseType: !33, size: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !657, file: !658, line: 138, baseType: !844, size: 64, offset: 1152)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !322, line: 18, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !657, file: !658, line: 139, baseType: !847, size: 64, offset: 1216)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !849, line: 16, flags: DIFlagFwdDecl)
!849 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!850 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !657, file: !658, line: 140, baseType: !851, size: 64, offset: 1280)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !658, line: 25, size: 64, elements: !853)
!853 = !{!854, !855, !856}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !852, file: !658, line: 26, baseType: !43, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !852, file: !658, line: 27, baseType: !16, size: 32, offset: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !852, file: !658, line: 28, baseType: !857, offset: 64)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, elements: !648)
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !658, line: 142, baseType: !859, size: 128, offset: 1344)
!859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !658, line: 142, size: 128, elements: !860)
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !859, file: !658, line: 143, baseType: !16, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !859, file: !658, line: 144, baseType: !263, size: 128, align: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !577, file: !131, line: 1013, baseType: !864, size: 256, offset: 960)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !131, line: 970, size: 256, elements: !865)
!865 = !{!866, !867, !868, !869, !870, !871}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !864, file: !131, line: 971, baseType: !33, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !864, file: !131, line: 972, baseType: !98, size: 32, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !864, file: !131, line: 973, baseType: !98, size: 32, offset: 96)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !864, file: !131, line: 974, baseType: !98, size: 32, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !864, file: !131, line: 975, baseType: !98, size: 32, offset: 160)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !864, file: !131, line: 976, baseType: !35, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !577, file: !131, line: 1014, baseType: !873, size: 128, offset: 1216)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !874, line: 8, size: 128, elements: !875)
!874 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!875 = !{!876, !4163}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !873, file: !874, line: 9, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !879, line: 70, size: 256, elements: !880)
!879 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!880 = !{!881, !4160, !4161, !4162}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !878, file: !879, line: 71, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !884, line: 82, size: 1536, elements: !885)
!884 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!885 = !{!886, !887, !897, !905, !906, !921, !4127, !4129, !4142, !4143, !4144, !4145, !4146, !4152, !4153, !4154}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !883, file: !884, line: 84, baseType: !98, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !883, file: !884, line: 85, baseType: !888, size: 32, offset: 32)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !889, line: 275, baseType: !890)
!889 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !889, line: 275, size: 32, elements: !891)
!891 = !{!892}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !890, file: !889, line: 275, baseType: !893, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !889, line: 69, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !889, line: 64, size: 32, elements: !895)
!895 = !{!896}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !894, file: !889, line: 65, baseType: !98, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !883, file: !884, line: 86, baseType: !898, size: 128, offset: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !899, line: 38, size: 128, elements: !900)
!899 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!900 = !{!901, !903}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !898, file: !899, line: 39, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !898, file: !899, line: 39, baseType: !904, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !883, file: !884, line: 87, baseType: !882, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !883, file: !884, line: 88, baseType: !907, size: 128, offset: 256)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !884, line: 49, size: 128, elements: !908)
!908 = !{!909, !918}
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !907, file: !884, line: 50, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !907, file: !884, line: 50, size: 64, elements: !911)
!911 = !{!912, !917}
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !884, line: 51, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !884, line: 51, size: 64, elements: !914)
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !913, file: !884, line: 52, baseType: !726, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !913, file: !884, line: 52, baseType: !726, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !910, file: !884, line: 54, baseType: !676, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !907, file: !884, line: 56, baseType: !919, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !883, file: !884, line: 89, baseType: !922, size: 64, offset: 384)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !131, line: 641, size: 4800, elements: !924)
!924 = !{!925, !926, !927, !928, !929, !930, !931, !934, !935, !1129, !3943, !3944, !3945, !3946, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !4109, !4112, !4113, !4114, !4123, !4124, !4125, !4126}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !923, file: !131, line: 642, baseType: !18, size: 16)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !923, file: !131, line: 643, baseType: !20, size: 16, offset: 16)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !923, file: !131, line: 644, baseType: !321, size: 32, offset: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !923, file: !131, line: 645, baseType: !91, size: 128, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !923, file: !131, line: 646, baseType: !329, size: 32, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !923, file: !131, line: 647, baseType: !98, size: 32, offset: 224)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !923, file: !131, line: 650, baseType: !932, size: 64, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !131, line: 607, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !923, file: !131, line: 651, baseType: !932, size: 64, offset: 320)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !923, file: !131, line: 654, baseType: !936, size: 64, offset: 384)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !938)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !131, line: 1966, size: 2048, align: 512, elements: !939)
!939 = !{!940, !944, !957, !963, !967, !971, !975, !979, !983, !987, !991, !992, !998, !1002, !1040, !1071, !1078, !1084, !1088, !1092, !1096, !1100, !1104, !1110, !1114}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !938, file: !131, line: 1967, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!882, !922, !882, !98}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !938, file: !131, line: 1968, baseType: !945, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!10, !882, !922, !948}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !950, line: 10, size: 128, elements: !951)
!950 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!951 = !{!952, !956}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !949, file: !950, line: 11, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{null, !14}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !949, file: !950, line: 12, baseType: !14, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !938, file: !131, line: 1969, baseType: !958, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!16, !961, !922, !16}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !672, line: 42, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !938, file: !131, line: 1970, baseType: !964, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!932, !922, !16, !760}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !938, file: !131, line: 1972, baseType: !968, size: 64, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!16, !882, !771, !16}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !938, file: !131, line: 1974, baseType: !972, size: 64, offset: 320)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!16, !961, !922, !882, !18, !760}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !938, file: !131, line: 1976, baseType: !976, size: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!16, !882, !922, !882}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !938, file: !131, line: 1977, baseType: !980, size: 64, offset: 448)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!16, !922, !882}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !938, file: !131, line: 1978, baseType: !984, size: 64, offset: 512)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!16, !961, !922, !882, !10}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !938, file: !131, line: 1980, baseType: !988, size: 64, offset: 576)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!16, !961, !922, !882, !18}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !938, file: !131, line: 1982, baseType: !980, size: 64, offset: 640)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !938, file: !131, line: 1983, baseType: !993, size: 64, offset: 704)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!16, !961, !922, !882, !18, !996}
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !19, line: 21, baseType: !997)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !19, line: 18, baseType: !726)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !938, file: !131, line: 1985, baseType: !999, size: 64, offset: 768)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!16, !961, !922, !882, !922, !882, !98}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !938, file: !131, line: 1987, baseType: !1003, size: 64, offset: 832)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!16, !961, !882, !1006}
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !131, line: 226, size: 640, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1021, !1030, !1031, !1037, !1038, !1039}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1007, file: !131, line: 227, baseType: !98, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1007, file: !131, line: 228, baseType: !18, size: 16, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !1007, file: !131, line: 241, baseType: !1012, size: 32, offset: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1007, file: !131, line: 241, size: 32, elements: !1013)
!1013 = !{!1014, !1015}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1012, file: !131, line: 242, baseType: !321, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1012, file: !131, line: 243, baseType: !1016, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1017, line: 16, baseType: !1018)
!1017 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1017, line: 14, size: 32, elements: !1019)
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1018, file: !1017, line: 15, baseType: !326, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !1007, file: !131, line: 245, baseType: !1022, size: 32, offset: 96)
!1022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1007, file: !131, line: 245, size: 32, elements: !1023)
!1023 = !{!1024, !1025}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1022, file: !131, line: 246, baseType: !329, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1022, file: !131, line: 247, baseType: !1026, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1017, line: 20, baseType: !1027)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1017, line: 18, size: 32, elements: !1028)
!1028 = !{!1029}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1027, file: !1017, line: 19, baseType: !333, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1007, file: !131, line: 249, baseType: !35, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1007, file: !131, line: 250, baseType: !1032, size: 128, offset: 192)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !718, line: 13, size: 128, elements: !1033)
!1033 = !{!1034, !1035}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1032, file: !718, line: 14, baseType: !717, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1032, file: !718, line: 15, baseType: !1036, size: 64, offset: 64)
!1036 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1007, file: !131, line: 251, baseType: !1032, size: 128, offset: 320)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1007, file: !131, line: 252, baseType: !1032, size: 128, offset: 448)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1007, file: !131, line: 259, baseType: !576, size: 64, offset: 576)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !938, file: !131, line: 1988, baseType: !1041, size: 64, offset: 896)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!16, !961, !1044, !1046, !726, !98}
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1048, line: 22, size: 1280, elements: !1049)
!1048 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1047, file: !1048, line: 23, baseType: !726, size: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1047, file: !1048, line: 24, baseType: !18, size: 16, offset: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1047, file: !1048, line: 25, baseType: !98, size: 32, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1047, file: !1048, line: 26, baseType: !725, size: 32, offset: 96)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1047, file: !1048, line: 27, baseType: !676, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1047, file: !1048, line: 28, baseType: !676, size: 64, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1047, file: !1048, line: 41, baseType: !676, size: 64, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1047, file: !1048, line: 42, baseType: !996, size: 32, offset: 320)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1047, file: !1048, line: 43, baseType: !996, size: 32, offset: 352)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1047, file: !1048, line: 44, baseType: !321, size: 32, offset: 384)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1047, file: !1048, line: 45, baseType: !329, size: 32, offset: 416)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1047, file: !1048, line: 46, baseType: !35, size: 64, offset: 448)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1047, file: !1048, line: 47, baseType: !1032, size: 128, offset: 512)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1047, file: !1048, line: 48, baseType: !1032, size: 128, offset: 640)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1047, file: !1048, line: 49, baseType: !1032, size: 128, offset: 768)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1047, file: !1048, line: 50, baseType: !1032, size: 128, offset: 896)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1047, file: !1048, line: 51, baseType: !676, size: 64, offset: 1024)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1047, file: !1048, line: 52, baseType: !676, size: 64, offset: 1088)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1047, file: !1048, line: 53, baseType: !726, size: 32, offset: 1152)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1047, file: !1048, line: 54, baseType: !726, size: 32, offset: 1184)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1047, file: !1048, line: 55, baseType: !676, size: 64, offset: 1216)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !938, file: !131, line: 1990, baseType: !1072, size: 64, offset: 960)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!1075, !882, !771, !29}
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !19, line: 66, baseType: !1076)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !31, line: 73, baseType: !1077)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !31, line: 15, baseType: !1036)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !938, file: !131, line: 1991, baseType: !1079, size: 64, offset: 1024)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!16, !922, !1082, !676, !676}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !131, line: 55, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !938, file: !131, line: 1993, baseType: !1085, size: 64, offset: 1088)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!16, !922, !16}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !938, file: !131, line: 1994, baseType: !1089, size: 64, offset: 1152)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!16, !922, !882, !576, !98, !18}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !938, file: !131, line: 1997, baseType: !1093, size: 64, offset: 1216)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!16, !961, !922, !576, !18}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !938, file: !131, line: 1999, baseType: !1097, size: 64, offset: 1280)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!932, !961, !882, !16}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !938, file: !131, line: 2001, baseType: !1101, size: 64, offset: 1344)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!16, !961, !882, !932, !16}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !938, file: !131, line: 2003, baseType: !1105, size: 64, offset: 1408)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!16, !961, !882, !1108}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !131, line: 76, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !938, file: !131, line: 2005, baseType: !1111, size: 64, offset: 1472)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!16, !882, !1108}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !938, file: !131, line: 2006, baseType: !1115, size: 64, offset: 1536)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!1118, !922}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !131, line: 3192, size: 192, elements: !1120)
!1120 = !{!1121, !1128}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1119, file: !131, line: 3193, baseType: !1122, size: 128)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1123, line: 296, size: 128, elements: !1124)
!1123 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1124 = !{!1125, !1126, !1127}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1122, file: !1123, line: 297, baseType: !53, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1122, file: !1123, line: 299, baseType: !228, size: 32, offset: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1122, file: !1123, line: 300, baseType: !14, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1119, file: !131, line: 3194, baseType: !726, size: 32, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !923, file: !131, line: 655, baseType: !1130, size: 64, offset: 448)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !131, line: 1190, size: 10752, elements: !1132)
!1132 = !{!1133, !1134, !1135, !1136, !1137, !1138, !2293, !2425, !2465, !2548, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2565, !2569, !2570, !2573, !2576, !2579, !2582, !2583, !2584, !2625, !3818, !3819, !3820, !3821, !3822, !3823, !3826, !3828, !3835, !3836, !3837, !3838, !3897, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1131, file: !131, line: 1191, baseType: !91, size: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1131, file: !131, line: 1192, baseType: !996, size: 32, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1131, file: !131, line: 1193, baseType: !81, size: 8, offset: 160)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1131, file: !131, line: 1194, baseType: !33, size: 64, offset: 192)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1131, file: !131, line: 1195, baseType: !35, size: 64, offset: 256)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1131, file: !131, line: 1196, baseType: !1139, size: 64, offset: 320)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !131, line: 2366, size: 576, elements: !1141)
!1141 = !{!1142, !1143, !1144, !1150, !1154, !1158, !1162, !2282, !2283, !2284, !2285, !2286, !2287, !2289, !2290, !2291, !2292}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1140, file: !131, line: 2367, baseType: !10, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1140, file: !131, line: 2368, baseType: !16, size: 32, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1140, file: !131, line: 2376, baseType: !1145, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!16, !1148}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !879, line: 21, flags: DIFlagFwdDecl)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1140, file: !131, line: 2377, baseType: !1151, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1153)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !131, line: 75, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1140, file: !131, line: 2378, baseType: !1155, size: 64, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!882, !1139, !16, !10, !14}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1140, file: !131, line: 2380, baseType: !1159, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !1130}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1140, file: !131, line: 2381, baseType: !1163, size: 64, offset: 384)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !111, line: 402, size: 9216, align: 512, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1172, !1947, !1973, !1974, !1975, !1976, !1980, !1983, !1984, !1985, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2052, !2054, !2072, !2090, !2091, !2092, !2093, !2102, !2125, !2126, !2129, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2143, !2144, !2243, !2251, !2252, !2253, !2255, !2259, !2260, !2264, !2265, !2266, !2267, !2269, !2270, !2271, !2278, !2279, !2280, !2281}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1164, file: !111, line: 403, baseType: !110, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1164, file: !111, line: 406, baseType: !91, size: 128, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1164, file: !111, line: 409, baseType: !1169, size: 448, offset: 192)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 448, elements: !1170)
!1170 = !{!1171}
!1171 = !DISubrange(count: 56)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1164, file: !111, line: 417, baseType: !1173, size: 768, offset: 640)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !111, line: 45, size: 768, elements: !1174)
!1174 = !{!1175, !1941, !1942, !1943, !1946}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1173, file: !111, line: 46, baseType: !1176, size: 512)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1177, line: 64, size: 512, elements: !1178)
!1177 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1178 = !{!1179, !1180, !1181, !1183, !1227, !1820, !1931, !1936, !1937, !1938, !1939, !1940}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1176, file: !1177, line: 65, baseType: !10, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1176, file: !1177, line: 66, baseType: !91, size: 128, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1176, file: !1177, line: 67, baseType: !1182, size: 64, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1176, file: !1177, line: 68, baseType: !1184, size: 64, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1177, line: 168, size: 768, elements: !1186)
!1186 = !{!1187, !1188, !1189, !1190}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1185, file: !1177, line: 169, baseType: !91, size: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1185, file: !1177, line: 170, baseType: !53, size: 32, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1185, file: !1177, line: 171, baseType: !1176, size: 512, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1185, file: !1177, line: 172, baseType: !1191, size: 64, offset: 704)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1193)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1177, line: 133, size: 192, elements: !1194)
!1194 = !{!1195, !1202, !1207}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1193, file: !1177, line: 134, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1197)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!16, !1200}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1176)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1193, file: !1177, line: 135, baseType: !1203, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1204)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!10, !1200}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1193, file: !1177, line: 136, baseType: !1208, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1209)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!16, !1200, !1212}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1177, line: 125, size: 20736, elements: !1214)
!1214 = !{!1215, !1217, !1221, !1222, !1226}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1213, file: !1177, line: 126, baseType: !1216, size: 192)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !771, size: 192, elements: !620)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1213, file: !1177, line: 127, baseType: !1218, size: 4096, offset: 192)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !771, size: 4096, elements: !1219)
!1219 = !{!1220}
!1220 = !DISubrange(count: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1213, file: !1177, line: 128, baseType: !16, size: 32, offset: 4288)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1213, file: !1177, line: 129, baseType: !1223, size: 16384, offset: 4320)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 16384, elements: !1224)
!1224 = !{!1225}
!1225 = !DISubrange(count: 2048)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1213, file: !1177, line: 130, baseType: !16, size: 32, offset: 20704)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1176, file: !1177, line: 69, baseType: !1228, size: 64, offset: 320)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1230)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1177, line: 116, size: 384, elements: !1231)
!1231 = !{!1232, !1236, !1255, !1784, !1812, !1816}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1230, file: !1177, line: 117, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !1182}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1230, file: !1177, line: 118, baseType: !1237, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1239)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1240, line: 254, size: 128, elements: !1241)
!1240 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1241 = !{!1242, !1251}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1239, file: !1240, line: 255, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!1075, !1182, !1246, !771}
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1240, line: 30, size: 128, elements: !1248)
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1247, file: !1240, line: 31, baseType: !10, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1247, file: !1240, line: 32, baseType: !18, size: 16, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1239, file: !1240, line: 256, baseType: !1252, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!1075, !1182, !1246, !10, !29}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1230, file: !1177, line: 119, baseType: !1256, size: 64, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1240, line: 84, size: 320, elements: !1260)
!1260 = !{!1261, !1262, !1266, !1780, !1782}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1259, file: !1240, line: 85, baseType: !10, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1259, file: !1240, line: 86, baseType: !1263, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!18, !1182, !1246, !16}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1259, file: !1240, line: 88, baseType: !1267, size: 64, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!18, !1182, !1270, !16}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1240, line: 175, size: 512, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1550, !1554, !1555}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1271, file: !1240, line: 176, baseType: !1247, size: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1271, file: !1240, line: 177, baseType: !29, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1271, file: !1240, line: 178, baseType: !14, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1271, file: !1240, line: 179, baseType: !1277, size: 64, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!1280}
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !131, line: 472, size: 1536, align: 64, elements: !1282)
!1282 = !{!1283, !1284, !1285, !1286, !1287, !1288, !1293, !1294, !1295, !1542, !1543, !1544, !1547, !1548, !1549}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1281, file: !131, line: 473, baseType: !922, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1281, file: !131, line: 474, baseType: !1122, size: 128, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1281, file: !131, line: 475, baseType: !701, size: 320, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1281, file: !131, line: 476, baseType: !228, size: 32, offset: 512)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1281, file: !131, line: 477, baseType: !43, size: 32, offset: 544)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1281, file: !131, line: 482, baseType: !1289, size: 128, offset: 576)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !303, line: 26, size: 128, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1289, file: !303, line: 27, baseType: !302, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1289, file: !303, line: 28, baseType: !306, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1281, file: !131, line: 483, baseType: !33, size: 64, offset: 704)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1281, file: !131, line: 484, baseType: !33, size: 64, offset: 768)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1281, file: !131, line: 485, baseType: !1296, size: 64, offset: 832)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1298)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !131, line: 404, size: 1280, elements: !1299)
!1299 = !{!1300, !1367, !1437, !1441, !1445, !1451, !1457, !1461, !1466, !1470, !1474, !1478, !1506, !1510, !1514, !1518, !1523, !1527, !1534, !1538}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1298, file: !131, line: 405, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!16, !1304, !1365}
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1306, line: 74, size: 512, align: 128, elements: !1307)
!1306 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1307 = !{!1308, !1309, !1359, !1364}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1305, file: !1306, line: 75, baseType: !33, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, scope: !1305, file: !1306, line: 83, baseType: !1310, size: 320, offset: 64)
!1310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1305, file: !1306, line: 83, size: 320, elements: !1311)
!1311 = !{!1312, !1333, !1347, !1351, !1358}
!1312 = !DIDerivedType(tag: DW_TAG_member, scope: !1310, file: !1306, line: 84, baseType: !1313, size: 320)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1310, file: !1306, line: 84, size: 320, elements: !1314)
!1314 = !{!1315, !1326, !1327, !1332}
!1315 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !1306, line: 90, baseType: !1316, size: 128)
!1316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !1306, line: 90, size: 128, elements: !1317)
!1317 = !{!1318, !1319, !1324, !1325}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1316, file: !1306, line: 91, baseType: !91, size: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1316, file: !1306, line: 94, baseType: !1320, size: 128)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1316, file: !1306, line: 94, size: 128, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1320, file: !1306, line: 96, baseType: !14, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1320, file: !1306, line: 98, baseType: !98, size: 32, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1316, file: !1306, line: 102, baseType: !91, size: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1316, file: !1306, line: 103, baseType: !91, size: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1313, file: !1306, line: 106, baseType: !1280, size: 64, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !1306, line: 107, baseType: !1328, size: 64, offset: 192)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !1306, line: 107, size: 64, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1328, file: !1306, line: 108, baseType: !33, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1328, file: !1306, line: 109, baseType: !33, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1313, file: !1306, line: 117, baseType: !33, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1310, file: !1306, line: 119, baseType: !1334, size: 320)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1310, file: !1306, line: 119, size: 320, elements: !1335)
!1335 = !{!1336, !1337, !1340, !1341, !1342}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1334, file: !1306, line: 124, baseType: !33, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1334, file: !1306, line: 125, baseType: !1338, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1306, line: 125, flags: DIFlagFwdDecl)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1334, file: !1306, line: 126, baseType: !33, size: 64, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1334, file: !1306, line: 127, baseType: !33, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1334, file: !1306, line: 128, baseType: !1343, size: 64, offset: 256)
!1343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1334, file: !1306, line: 128, size: 64, elements: !1344)
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1343, file: !1306, line: 133, baseType: !33, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1343, file: !1306, line: 138, baseType: !386, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, scope: !1310, file: !1306, line: 141, baseType: !1348, size: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1310, file: !1306, line: 141, size: 64, elements: !1349)
!1349 = !{!1350}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1348, file: !1306, line: 142, baseType: !33, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, scope: !1310, file: !1306, line: 144, baseType: !1352, size: 128)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1310, file: !1306, line: 144, size: 128, elements: !1353)
!1353 = !{!1354, !1357}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1352, file: !1306, line: 146, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1306, line: 146, flags: DIFlagFwdDecl)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1352, file: !1306, line: 147, baseType: !14, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1310, file: !1306, line: 161, baseType: !263, size: 128, align: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, scope: !1305, file: !1306, line: 164, baseType: !1360, size: 32, offset: 384)
!1360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1305, file: !1306, line: 164, size: 32, elements: !1361)
!1361 = !{!1362, !1363}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1360, file: !1306, line: 169, baseType: !43, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1360, file: !1306, line: 177, baseType: !98, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1305, file: !1306, line: 181, baseType: !43, size: 32, offset: 416)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !131, line: 309, flags: DIFlagFwdDecl)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1298, file: !131, line: 406, baseType: !1368, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!16, !576, !1371}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1306, line: 293, size: 1536, elements: !1373)
!1373 = !{!1374, !1404, !1418}
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1372, file: !1306, line: 295, baseType: !1375, size: 512)
!1375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1372, file: !1306, line: 295, size: 512, elements: !1376)
!1376 = !{!1377, !1403}
!1377 = !DIDerivedType(tag: DW_TAG_member, scope: !1375, file: !1306, line: 296, baseType: !1378, size: 448)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1375, file: !1306, line: 296, size: 448, elements: !1379)
!1379 = !{!1380, !1381, !1390, !1391, !1392, !1401, !1402}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1378, file: !1306, line: 298, baseType: !33, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !1306, line: 299, baseType: !1382, size: 128, offset: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1378, file: !1306, line: 299, size: 128, elements: !1383)
!1383 = !{!1384, !1385}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1382, file: !1306, line: 300, baseType: !91, size: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, scope: !1382, file: !1306, line: 302, baseType: !1386, size: 128)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1382, file: !1306, line: 302, size: 128, elements: !1387)
!1387 = !{!1388, !1389}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1386, file: !1306, line: 303, baseType: !14, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1386, file: !1306, line: 305, baseType: !98, size: 32, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1378, file: !1306, line: 310, baseType: !1280, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1378, file: !1306, line: 311, baseType: !33, size: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !1306, line: 312, baseType: !1393, size: 64, offset: 320)
!1393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1378, file: !1306, line: 312, size: 64, elements: !1394)
!1394 = !{!1395, !1396}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1393, file: !1306, line: 313, baseType: !14, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1393, file: !1306, line: 314, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1306, line: 257, baseType: !1398)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1306, line: 255, size: 64, elements: !1399)
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1398, file: !1306, line: 256, baseType: !33, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1378, file: !1306, line: 316, baseType: !43, size: 32, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1378, file: !1306, line: 317, baseType: !43, size: 32, offset: 416)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1375, file: !1306, line: 323, baseType: !1305, size: 512, align: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, scope: !1372, file: !1306, line: 325, baseType: !1405, size: 512, offset: 512)
!1405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1372, file: !1306, line: 325, size: 512, elements: !1406)
!1406 = !{!1407, !1417}
!1407 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1306, line: 326, baseType: !1408, size: 320)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1405, file: !1306, line: 326, size: 320, elements: !1409)
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1415, !1416}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1408, file: !1306, line: 327, baseType: !33, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1408, file: !1306, line: 328, baseType: !33, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1408, file: !1306, line: 329, baseType: !33, size: 64, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1408, file: !1306, line: 331, baseType: !43, size: 32, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1408, file: !1306, line: 332, baseType: !43, size: 32, offset: 224)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1408, file: !1306, line: 333, baseType: !43, size: 32, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1408, file: !1306, line: 335, baseType: !98, size: 32, offset: 288)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1405, file: !1306, line: 339, baseType: !1305, size: 512, align: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1372, file: !1306, line: 341, baseType: !1419, size: 512, offset: 1024)
!1419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1372, file: !1306, line: 341, size: 512, elements: !1420)
!1420 = !{!1421, !1430, !1436}
!1421 = !DIDerivedType(tag: DW_TAG_member, scope: !1419, file: !1306, line: 342, baseType: !1422, size: 384)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1419, file: !1306, line: 342, size: 384, elements: !1423)
!1423 = !{!1424, !1425, !1426, !1427, !1428, !1429}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1422, file: !1306, line: 343, baseType: !33, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1422, file: !1306, line: 344, baseType: !33, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1422, file: !1306, line: 346, baseType: !14, size: 64, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1422, file: !1306, line: 347, baseType: !14, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1422, file: !1306, line: 348, baseType: !14, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1422, file: !1306, line: 349, baseType: !14, size: 64, offset: 320)
!1430 = !DIDerivedType(tag: DW_TAG_member, scope: !1419, file: !1306, line: 352, baseType: !1431, size: 256)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1419, file: !1306, line: 352, size: 256, elements: !1432)
!1432 = !{!1433, !1434, !1435}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1431, file: !1306, line: 353, baseType: !33, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1431, file: !1306, line: 354, baseType: !33, size: 64, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1431, file: !1306, line: 356, baseType: !91, size: 128, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1419, file: !1306, line: 359, baseType: !1305, size: 512, align: 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1298, file: !131, line: 409, baseType: !1438, size: 64, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!16, !1280, !1365}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1298, file: !131, line: 412, baseType: !1442, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!760, !1280, !1371}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1298, file: !131, line: 414, baseType: !1446, size: 64, offset: 256)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{null, !1449}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !131, line: 310, flags: DIFlagFwdDecl)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1298, file: !131, line: 416, baseType: !1452, size: 64, offset: 320)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!16, !576, !1280, !35, !98, !1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1298, file: !131, line: 419, baseType: !1458, size: 64, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!16, !576, !1280, !35, !98, !98, !1304, !14}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1298, file: !131, line: 424, baseType: !1462, size: 64, offset: 448)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!1465, !1280, !1465}
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !19, line: 131, baseType: !676)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1298, file: !131, line: 425, baseType: !1467, size: 64, offset: 512)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{null, !1371, !29, !29}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1298, file: !131, line: 426, baseType: !1471, size: 64, offset: 576)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!760, !1371, !228}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1298, file: !131, line: 427, baseType: !1475, size: 64, offset: 640)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !1371}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1298, file: !131, line: 428, baseType: !1479, size: 64, offset: 704)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!1075, !1482, !1504}
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !131, line: 373, size: 384, elements: !1484)
!1484 = !{!1485, !1486, !1487, !1491, !1492, !1493, !1494}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1483, file: !131, line: 374, baseType: !576, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1483, file: !131, line: 375, baseType: !35, size: 64, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1483, file: !131, line: 376, baseType: !1488, size: 64, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{null, !1482, !1036}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1483, file: !131, line: 377, baseType: !14, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1483, file: !131, line: 378, baseType: !16, size: 32, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1483, file: !131, line: 379, baseType: !87, size: 16, offset: 288)
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1483, file: !131, line: 380, baseType: !1495, size: 64, offset: 320)
!1495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1483, file: !131, line: 380, size: 64, elements: !1496)
!1496 = !{!1497, !1500}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1495, file: !131, line: 386, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !131, line: 386, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1495, file: !131, line: 395, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!1075, !14}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !131, line: 69, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1298, file: !131, line: 433, baseType: !1507, size: 64, offset: 768)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!16, !1280, !1371, !1371, !117}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1298, file: !131, line: 435, baseType: !1511, size: 64, offset: 832)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!16, !1371}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1298, file: !131, line: 436, baseType: !1515, size: 64, offset: 896)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!760, !1371, !29, !29}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1298, file: !131, line: 438, baseType: !1519, size: 64, offset: 960)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{null, !1371, !1522, !1522}
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1298, file: !131, line: 439, baseType: !1524, size: 64, offset: 1024)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!16, !1280, !1304}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1298, file: !131, line: 442, baseType: !1528, size: 64, offset: 1088)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!16, !1531, !576, !1533}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !131, line: 66, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1298, file: !131, line: 444, baseType: !1535, size: 64, offset: 1152)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{null, !576}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1298, file: !131, line: 445, baseType: !1539, size: 64, offset: 1216)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!16, !1482, !1504}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1281, file: !131, line: 486, baseType: !33, size: 64, offset: 896)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1281, file: !131, line: 487, baseType: !701, size: 320, offset: 960)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1281, file: !131, line: 488, baseType: !1545, size: 32, offset: 1280)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1546, line: 8, baseType: !726)
!1546 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1281, file: !131, line: 489, baseType: !53, size: 32, offset: 1312)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1281, file: !131, line: 490, baseType: !91, size: 128, offset: 1344)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1281, file: !131, line: 491, baseType: !14, size: 64, offset: 1472)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1271, file: !1240, line: 180, baseType: !1551, size: 64, offset: 320)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!1075, !576, !1182, !1270, !771, !35, !29}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1271, file: !1240, line: 182, baseType: !1551, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1271, file: !1240, line: 184, baseType: !1556, size: 64, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!16, !576, !1182, !1270, !1559}
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1306, line: 625, size: 1344, elements: !1561)
!1561 = !{!1562, !1571, !1738, !1744, !1751, !1752, !1757, !1758, !1763, !1764, !1767, !1771, !1772, !1773, !1774, !1775, !1778}
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !1306, line: 628, baseType: !1563, size: 128)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1560, file: !1306, line: 628, size: 128, elements: !1564)
!1564 = !{!1565, !1570}
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !1306, line: 629, baseType: !1566, size: 128)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !1306, line: 629, size: 128, elements: !1567)
!1567 = !{!1568, !1569}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1566, file: !1306, line: 631, baseType: !33, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1566, file: !1306, line: 632, baseType: !33, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1563, file: !1306, line: 635, baseType: !263, size: 128, align: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1560, file: !1306, line: 639, baseType: !1572, size: 64, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1306, line: 733, size: 10240, elements: !1574)
!1574 = !{!1575, !1736}
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1306, line: 734, baseType: !1576, size: 10240)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1573, file: !1306, line: 734, size: 10240, elements: !1577)
!1577 = !{!1578, !1582, !1595, !1599, !1600, !1601, !1602, !1603, !1604, !1613, !1614, !1615, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1654, !1656, !1659, !1705, !1706, !1707, !1710, !1711, !1712, !1715, !1716, !1717, !1723, !1724}
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !1306, line: 739, baseType: !1579, size: 512, align: 512)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1576, file: !1306, line: 739, size: 512, align: 512, elements: !1580)
!1580 = !{!1581}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1579, file: !1306, line: 747, baseType: !43, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1576, file: !1306, line: 750, baseType: !1583, size: 128, offset: 512)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1584, line: 218, size: 128, elements: !1585)
!1584 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1585 = !{!1586, !1593, !1594}
!1586 = !DIDerivedType(tag: DW_TAG_member, scope: !1583, file: !1584, line: 219, baseType: !1587, size: 32)
!1587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1583, file: !1584, line: 219, size: 32, elements: !1588)
!1588 = !{!1589, !1590}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1587, file: !1584, line: 220, baseType: !53, size: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1587, file: !1584, line: 221, baseType: !1591)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1584, line: 197, baseType: !1592)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1584, line: 197, elements: !410)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1583, file: !1584, line: 223, baseType: !98, size: 32, offset: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1583, file: !1584, line: 224, baseType: !14, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1576, file: !1306, line: 752, baseType: !1596, size: 64, offset: 640)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!33, !576, !33, !33, !33, !33}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1576, file: !1306, line: 756, baseType: !33, size: 64, offset: 704)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1576, file: !1306, line: 757, baseType: !33, size: 64, offset: 768)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1576, file: !1306, line: 760, baseType: !33, size: 64, offset: 832)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1576, file: !1306, line: 761, baseType: !33, size: 64, offset: 896)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1576, file: !1306, line: 763, baseType: !33, size: 64, offset: 960)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1576, file: !1306, line: 764, baseType: !1605, size: 64, offset: 1024)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1607, line: 299, baseType: !1608)
!1607 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1607, line: 299, size: 64, elements: !1609)
!1609 = !{!1610}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1608, file: !1607, line: 299, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1612, line: 18, baseType: !33)
!1612 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1576, file: !1306, line: 773, baseType: !43, size: 32, offset: 1088)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1576, file: !1306, line: 785, baseType: !43, size: 32, offset: 1120)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1576, file: !1306, line: 795, baseType: !1616, size: 64, offset: 1152)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1306, line: 726, size: 128, elements: !1618)
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1617, file: !1306, line: 727, baseType: !676, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1617, file: !1306, line: 728, baseType: !16, size: 32, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1576, file: !1306, line: 801, baseType: !33, size: 64, offset: 1216)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1576, file: !1306, line: 804, baseType: !386, size: 64, offset: 1280)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1576, file: !1306, line: 806, baseType: !16, size: 32, offset: 1344)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1576, file: !1306, line: 808, baseType: !53, size: 32, offset: 1376)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1576, file: !1306, line: 823, baseType: !701, size: 320, offset: 1408)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1576, file: !1306, line: 825, baseType: !91, size: 128, offset: 1728)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1576, file: !1306, line: 845, baseType: !16, size: 32, offset: 1856)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1576, file: !1306, line: 849, baseType: !33, size: 64, offset: 1920)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1576, file: !1306, line: 850, baseType: !33, size: 64, offset: 1984)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1576, file: !1306, line: 852, baseType: !33, size: 64, offset: 2048)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1576, file: !1306, line: 853, baseType: !33, size: 64, offset: 2112)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1576, file: !1306, line: 854, baseType: !388, size: 64, offset: 2176)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1576, file: !1306, line: 855, baseType: !33, size: 64, offset: 2240)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1576, file: !1306, line: 856, baseType: !33, size: 64, offset: 2304)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1576, file: !1306, line: 857, baseType: !33, size: 64, offset: 2368)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1576, file: !1306, line: 858, baseType: !33, size: 64, offset: 2432)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1576, file: !1306, line: 865, baseType: !893, size: 32, offset: 2496)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1576, file: !1306, line: 867, baseType: !53, size: 32, offset: 2528)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1576, file: !1306, line: 869, baseType: !33, size: 64, offset: 2560)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1576, file: !1306, line: 869, baseType: !33, size: 64, offset: 2624)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1576, file: !1306, line: 869, baseType: !33, size: 64, offset: 2688)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1576, file: !1306, line: 869, baseType: !33, size: 64, offset: 2752)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1576, file: !1306, line: 870, baseType: !33, size: 64, offset: 2816)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1576, file: !1306, line: 870, baseType: !33, size: 64, offset: 2880)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1576, file: !1306, line: 870, baseType: !33, size: 64, offset: 2944)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1576, file: !1306, line: 871, baseType: !33, size: 64, offset: 3008)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1576, file: !1306, line: 871, baseType: !33, size: 64, offset: 3072)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1576, file: !1306, line: 871, baseType: !33, size: 64, offset: 3136)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1576, file: !1306, line: 871, baseType: !33, size: 64, offset: 3200)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1576, file: !1306, line: 873, baseType: !1651, size: 3328, offset: 3264)
!1651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 3328, elements: !1652)
!1652 = !{!1653}
!1653 = !DISubrange(count: 52)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1576, file: !1306, line: 875, baseType: !1655, size: 1280, offset: 6592)
!1655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 1280, elements: !378)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1576, file: !1306, line: 877, baseType: !1657, size: 64, offset: 7872)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1306, line: 877, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1576, file: !1306, line: 880, baseType: !1660, size: 1088, offset: 7936)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1661, line: 72, baseType: !1662)
!1661 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1661, line: 23, size: 1088, elements: !1663)
!1663 = !{!1664, !1665, !1666, !1667, !1668, !1671, !1672, !1673, !1674, !1701, !1702, !1703}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1662, file: !1661, line: 28, baseType: !676, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1662, file: !1661, line: 38, baseType: !388, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1662, file: !1661, line: 40, baseType: !33, size: 64, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1662, file: !1661, line: 43, baseType: !701, size: 320, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1662, file: !1661, line: 44, baseType: !1669, size: 64, offset: 512)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1661, line: 44, flags: DIFlagFwdDecl)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1662, file: !1661, line: 48, baseType: !33, size: 64, offset: 576)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1662, file: !1661, line: 59, baseType: !382, size: 256, offset: 640)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1662, file: !1661, line: 60, baseType: !14, size: 64, offset: 896)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1662, file: !1661, line: 61, baseType: !1675, size: 64, offset: 960)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1677)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1678, line: 13, size: 1216, elements: !1679)
!1678 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1679 = !{!1680, !1681, !1682, !1683, !1684, !1685, !1686, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1677, file: !1678, line: 14, baseType: !14, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1677, file: !1678, line: 15, baseType: !33, size: 64, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1677, file: !1678, line: 17, baseType: !33, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1677, file: !1678, line: 17, baseType: !33, size: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1677, file: !1678, line: 18, baseType: !33, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1677, file: !1678, line: 18, baseType: !33, size: 64, offset: 320)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1677, file: !1678, line: 19, baseType: !1687, size: 64, offset: 384)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1677, file: !1678, line: 21, baseType: !1036, size: 64, offset: 448)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1677, file: !1678, line: 23, baseType: !1036, size: 64, offset: 512)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1677, file: !1678, line: 24, baseType: !1036, size: 64, offset: 576)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1677, file: !1678, line: 25, baseType: !1036, size: 64, offset: 640)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1677, file: !1678, line: 26, baseType: !1036, size: 64, offset: 704)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1677, file: !1678, line: 27, baseType: !1036, size: 64, offset: 768)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1677, file: !1678, line: 28, baseType: !1036, size: 64, offset: 832)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1677, file: !1678, line: 29, baseType: !1036, size: 64, offset: 896)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1677, file: !1678, line: 30, baseType: !1036, size: 64, offset: 960)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1677, file: !1678, line: 31, baseType: !1036, size: 64, offset: 1024)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1677, file: !1678, line: 32, baseType: !1036, size: 64, offset: 1088)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1677, file: !1678, line: 33, baseType: !1036, size: 64, offset: 1152)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1662, file: !1661, line: 63, baseType: !43, size: 32, offset: 1024)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1662, file: !1661, line: 69, baseType: !87, size: 16, offset: 1056)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1662, file: !1661, line: 70, baseType: !1704, size: 16, offset: 1072)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !78, line: 18, baseType: !492)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1576, file: !1306, line: 882, baseType: !33, size: 64, offset: 9024)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1576, file: !1306, line: 885, baseType: !53, size: 32, offset: 9088)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1576, file: !1306, line: 886, baseType: !1708, size: 64, offset: 9152)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1306, line: 732, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1576, file: !1306, line: 901, baseType: !844, size: 64, offset: 9216)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1576, file: !1306, line: 904, baseType: !576, size: 64, offset: 9280)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1576, file: !1306, line: 906, baseType: !1713, size: 64, offset: 9344)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1306, line: 906, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1576, file: !1306, line: 930, baseType: !43, size: 32, offset: 9408)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1576, file: !1306, line: 933, baseType: !43, size: 32, offset: 9440)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1576, file: !1306, line: 935, baseType: !1718, size: 64, offset: 9472)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !153, line: 103, size: 64, elements: !1719)
!1719 = !{!1720}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1718, file: !153, line: 104, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !153, line: 101, flags: DIFlagFwdDecl)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1576, file: !1306, line: 940, baseType: !386, size: 64, offset: 9536)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1576, file: !1306, line: 942, baseType: !1725, size: 256, offset: 9600)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1726, line: 98, size: 256, elements: !1727)
!1726 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1727 = !{!1728, !1729, !1730}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1725, file: !1726, line: 99, baseType: !386, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1725, file: !1726, line: 100, baseType: !91, size: 128, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1725, file: !1726, line: 101, baseType: !1731, size: 64, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1726, line: 21, baseType: !1732)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !1735}
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1573, file: !1306, line: 986, baseType: !1737, offset: 10240)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, elements: !648)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1560, file: !1306, line: 640, baseType: !1739, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1607, line: 297, baseType: !1740)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1607, line: 297, size: 64, elements: !1741)
!1741 = !{!1742}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1740, file: !1607, line: 297, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1612, line: 19, baseType: !33)
!1744 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !1306, line: 646, baseType: !1745, size: 64, offset: 256)
!1745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1560, file: !1306, line: 646, size: 64, elements: !1746)
!1746 = !{!1747, !1750}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1745, file: !1306, line: 647, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1749)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1306, line: 542, baseType: !33)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1745, file: !1306, line: 648, baseType: !1749, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1560, file: !1306, line: 666, baseType: !16, size: 32, offset: 320)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1560, file: !1306, line: 667, baseType: !1753, size: 64, offset: 384)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1306, line: 579, size: 320, elements: !1755)
!1755 = !{!1756}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1754, file: !1306, line: 580, baseType: !701, size: 320)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1560, file: !1306, line: 670, baseType: !760, size: 8, offset: 448)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1560, file: !1306, line: 681, baseType: !1759, size: 256, offset: 512)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1560, file: !1306, line: 678, size: 256, elements: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1759, file: !1306, line: 679, baseType: !307, size: 192, align: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1759, file: !1306, line: 680, baseType: !33, size: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1560, file: !1306, line: 689, baseType: !91, size: 128, offset: 768)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1560, file: !1306, line: 691, baseType: !1765, size: 64, offset: 896)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1306, line: 691, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1560, file: !1306, line: 694, baseType: !1768, size: 64, offset: 960)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1770)
!1770 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1306, line: 694, flags: DIFlagFwdDecl)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1560, file: !1306, line: 697, baseType: !33, size: 64, offset: 1024)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1560, file: !1306, line: 699, baseType: !576, size: 64, offset: 1088)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1560, file: !1306, line: 700, baseType: !14, size: 64, offset: 1152)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1560, file: !1306, line: 711, baseType: !386, size: 64, offset: 1216)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1560, file: !1306, line: 717, baseType: !1776, size: 64, offset: 1280)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1306, line: 717, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1560, file: !1306, line: 722, baseType: !1779, offset: 1344)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1306, line: 570, elements: !410)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1259, file: !1240, line: 90, baseType: !1781, size: 64, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1259, file: !1240, line: 91, baseType: !1783, size: 64, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1230, file: !1177, line: 120, baseType: !1785, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!1788, !1200}
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1790)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !125, line: 39, size: 384, elements: !1791)
!1791 = !{!1792, !1793, !1797, !1801, !1807, !1811}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1790, file: !125, line: 40, baseType: !124, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1790, file: !125, line: 41, baseType: !1794, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!760}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1790, file: !125, line: 42, baseType: !1798, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!14}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1790, file: !125, line: 43, baseType: !1802, size: 64, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!1687, !1805}
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !125, line: 19, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1790, file: !125, line: 44, baseType: !1808, size: 64, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!1687}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1790, file: !125, line: 45, baseType: !953, size: 64, offset: 320)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1230, file: !1177, line: 121, baseType: !1813, size: 64, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!1687, !1200}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1230, file: !1177, line: 122, baseType: !1817, size: 64, offset: 320)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{null, !1200, !320, !328}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1176, file: !1177, line: 70, baseType: !1821, size: 64, offset: 384)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1823, line: 190, size: 1152, elements: !1824)
!1823 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1824 = !{!1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1923, !1924, !1925, !1926, !1927, !1930}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1822, file: !1823, line: 191, baseType: !43, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1822, file: !1823, line: 192, baseType: !43, size: 32, offset: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1822, file: !1823, line: 202, baseType: !1821, size: 64, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1822, file: !1823, line: 203, baseType: !10, size: 64, offset: 128)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1822, file: !1823, line: 205, baseType: !307, size: 192, align: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1822, file: !1823, line: 207, baseType: !1687, size: 64, offset: 384)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1822, file: !1823, line: 208, baseType: !98, size: 32, offset: 448)
!1832 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !1823, line: 209, baseType: !1833, size: 256, offset: 512)
!1833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1822, file: !1823, line: 209, size: 256, elements: !1834)
!1834 = !{!1835, !1844, !1848}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1833, file: !1823, line: 210, baseType: !1836, size: 256)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1823, line: 153, size: 256, elements: !1837)
!1837 = !{!1838, !1839, !1840, !1843}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1836, file: !1823, line: 154, baseType: !33, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1836, file: !1823, line: 156, baseType: !302, size: 64, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1836, file: !1823, line: 162, baseType: !1841, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1823, line: 162, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1836, file: !1823, line: 167, baseType: !33, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1833, file: !1823, line: 211, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1823, line: 170, size: 64, elements: !1846)
!1846 = !{!1847}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1845, file: !1823, line: 171, baseType: !1821, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1833, file: !1823, line: 212, baseType: !1849, size: 256)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1823, line: 174, size: 256, elements: !1850)
!1850 = !{!1851, !1918, !1921, !1922}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1849, file: !1823, line: 175, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1854)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1823, line: 271, size: 768, elements: !1855)
!1855 = !{!1856, !1879, !1883, !1887, !1891, !1895, !1899, !1903, !1904, !1905, !1906, !1914}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1854, file: !1823, line: 276, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!16, !1860}
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1823, line: 251, size: 1216, elements: !1862)
!1862 = !{!1863, !1864, !1865, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1861, file: !1823, line: 253, baseType: !1821, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1861, file: !1823, line: 254, baseType: !576, size: 64, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1861, file: !1823, line: 255, baseType: !1866, size: 64, offset: 128)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1868, line: 66, flags: DIFlagFwdDecl)
!1868 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1861, file: !1823, line: 256, baseType: !14, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1861, file: !1823, line: 259, baseType: !382, size: 256, offset: 256)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1861, file: !1823, line: 260, baseType: !382, size: 256, offset: 512)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1861, file: !1823, line: 261, baseType: !16, size: 32, offset: 768)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1861, file: !1823, line: 262, baseType: !91, size: 128, offset: 832)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1861, file: !1823, line: 263, baseType: !771, size: 64, offset: 960)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1861, file: !1823, line: 265, baseType: !29, size: 64, offset: 1024)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1861, file: !1823, line: 266, baseType: !760, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1861, file: !1823, line: 267, baseType: !760, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1861, file: !1823, line: 268, baseType: !1768, size: 64, offset: 1152)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1854, file: !1823, line: 277, baseType: !1880, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !1860}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1854, file: !1823, line: 290, baseType: !1884, size: 64, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!16, !1866, !14}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1854, file: !1823, line: 292, baseType: !1888, size: 64, offset: 192)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!14, !1866, !34}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1854, file: !1823, line: 293, baseType: !1892, size: 64, offset: 256)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!14, !1866, !14, !34}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1854, file: !1823, line: 294, baseType: !1896, size: 64, offset: 320)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{null, !1866, !14}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1854, file: !1823, line: 296, baseType: !1900, size: 64, offset: 384)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!1075, !1860, !771, !29, !35}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1854, file: !1823, line: 306, baseType: !29, size: 64, offset: 448)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1854, file: !1823, line: 313, baseType: !760, size: 8, offset: 512)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1854, file: !1823, line: 314, baseType: !1900, size: 64, offset: 576)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1854, file: !1823, line: 317, baseType: !1907, size: 64, offset: 640)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!1910, !1860, !1912}
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1911, line: 59, baseType: !98)
!1911 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !131, line: 61, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1854, file: !1823, line: 320, baseType: !1915, size: 64, offset: 704)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!16, !1860, !1559}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1849, file: !1823, line: 176, baseType: !1919, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1823, line: 35, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1849, file: !1823, line: 177, baseType: !35, size: 64, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1849, file: !1823, line: 178, baseType: !1821, size: 64, offset: 192)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1822, file: !1823, line: 215, baseType: !14, size: 64, offset: 768)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1822, file: !1823, line: 221, baseType: !676, size: 64, offset: 832)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1822, file: !1823, line: 223, baseType: !20, size: 16, offset: 896)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1822, file: !1823, line: 224, baseType: !18, size: 16, offset: 912)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1822, file: !1823, line: 225, baseType: !1928, size: 64, offset: 960)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1823, line: 36, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1822, file: !1823, line: 227, baseType: !263, size: 128, align: 64, offset: 1024)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1176, file: !1177, line: 71, baseType: !1932, size: 32, offset: 448)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1933, line: 19, size: 32, elements: !1934)
!1933 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1934 = !{!1935}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1932, file: !1933, line: 20, baseType: !628, size: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1176, file: !1177, line: 73, baseType: !98, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1176, file: !1177, line: 74, baseType: !98, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1176, file: !1177, line: 75, baseType: !98, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1176, file: !1177, line: 76, baseType: !98, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1176, file: !1177, line: 77, baseType: !98, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1173, file: !111, line: 47, baseType: !1163, size: 64, offset: 512)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1173, file: !111, line: 48, baseType: !1182, size: 64, offset: 576)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1173, file: !111, line: 49, baseType: !1944, size: 64, offset: 640)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !111, line: 49, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1173, file: !111, line: 50, baseType: !272, size: 64, offset: 704)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1164, file: !111, line: 418, baseType: !1948, size: 64, offset: 1408)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !111, line: 53, size: 448, elements: !1950)
!1950 = !{!1951, !1952, !1957, !1961, !1965, !1969}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1949, file: !111, line: 54, baseType: !1247, size: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1949, file: !111, line: 55, baseType: !1953, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!1075, !1948, !1956, !771}
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1949, file: !111, line: 57, baseType: !1958, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!1075, !1948, !1956, !10, !29}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1949, file: !111, line: 59, baseType: !1962, size: 64, offset: 256)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{null, !1163, !10}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1949, file: !111, line: 60, baseType: !1966, size: 64, offset: 320)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!16, !1163}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1949, file: !111, line: 61, baseType: !1970, size: 64, offset: 384)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{null, !1163}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1164, file: !111, line: 419, baseType: !10, size: 64, offset: 1472)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1164, file: !111, line: 420, baseType: !10, size: 64, offset: 1536)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1164, file: !111, line: 421, baseType: !1182, size: 64, offset: 1600)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1164, file: !111, line: 424, baseType: !1977, size: 64, offset: 1664)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1979)
!1979 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !111, line: 424, flags: DIFlagFwdDecl)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1164, file: !111, line: 425, baseType: !1981, size: 64, offset: 1728)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1164, file: !111, line: 426, baseType: !98, size: 32, offset: 1792)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1164, file: !111, line: 435, baseType: !382, size: 256, offset: 1856)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1164, file: !111, line: 437, baseType: !1986, size: 64, offset: 2112)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1988, line: 69, size: 320, elements: !1989)
!1988 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1989 = !{!1990, !1991, !1992, !2009, !2011, !2015, !2016}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1987, file: !1988, line: 70, baseType: !10, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1987, file: !1988, line: 71, baseType: !1163, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1987, file: !1988, line: 72, baseType: !1993, size: 64, offset: 128)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1995)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1988, line: 47, size: 256, elements: !1996)
!1996 = !{!1997, !1998, !2004, !2008}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1995, file: !1988, line: 49, baseType: !98, size: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1995, file: !1988, line: 51, baseType: !1999, size: 64, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!16, !10, !2002}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1987)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1995, file: !1988, line: 53, baseType: !2005, size: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!16, !771, !2002}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1995, file: !1988, line: 55, baseType: !953, size: 64, offset: 192)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1987, file: !1988, line: 73, baseType: !2010, size: 16, offset: 192)
!2010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1987, file: !1988, line: 74, baseType: !2012, size: 8, offset: 208)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !78, line: 16, baseType: !2013)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !80, line: 20, baseType: !2014)
!2014 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1987, file: !1988, line: 75, baseType: !77, size: 8, offset: 216)
!2016 = !DIDerivedType(tag: DW_TAG_member, scope: !1987, file: !1988, line: 76, baseType: !2017, size: 64, offset: 256)
!2017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1987, file: !1988, line: 76, size: 64, elements: !2018)
!2018 = !{!2019, !2020, !2027}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2017, file: !1988, line: 77, baseType: !14, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2017, file: !1988, line: 78, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2023)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1988, line: 86, size: 128, elements: !2024)
!2024 = !{!2025, !2026}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2023, file: !1988, line: 87, baseType: !98, size: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2023, file: !1988, line: 88, baseType: !771, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2017, file: !1988, line: 79, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2030)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1988, line: 92, size: 256, elements: !2031)
!2031 = !{!2032, !2033, !2034, !2035, !2036}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2030, file: !1988, line: 94, baseType: !98, size: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2030, file: !1988, line: 95, baseType: !98, size: 32, offset: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2030, file: !1988, line: 96, baseType: !473, size: 64, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2030, file: !1988, line: 97, baseType: !1993, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2030, file: !1988, line: 98, baseType: !14, size: 64, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1164, file: !111, line: 438, baseType: !98, size: 32, offset: 2176)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1164, file: !111, line: 441, baseType: !98, size: 32, offset: 2208)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1164, file: !111, line: 442, baseType: !1977, size: 64, offset: 2240)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1164, file: !111, line: 443, baseType: !1981, size: 64, offset: 2304)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1164, file: !111, line: 444, baseType: !760, size: 8, offset: 2368)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1164, file: !111, line: 451, baseType: !760, size: 8, offset: 2376)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1164, file: !111, line: 454, baseType: !98, size: 32, offset: 2400)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1164, file: !111, line: 455, baseType: !2045, size: 64, offset: 2432)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2047, line: 23, size: 96, elements: !2048)
!2047 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2048 = !{!2049, !2050, !2051}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2046, file: !2047, line: 24, baseType: !16, size: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2046, file: !2047, line: 24, baseType: !16, size: 32, offset: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2046, file: !2047, line: 24, baseType: !16, size: 32, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1164, file: !111, line: 458, baseType: !2053, size: 64, offset: 2496)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1164, file: !111, line: 460, baseType: !2055, size: 4032, align: 512, offset: 2560)
!2055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2056, size: 4032, elements: !2070)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !111, line: 362, size: 576, elements: !2057)
!2057 = !{!2058, !2059, !2060}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2056, file: !111, line: 363, baseType: !14, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2056, file: !111, line: 364, baseType: !98, size: 32, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2056, file: !111, line: 367, baseType: !2061, size: 448, offset: 128)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !111, line: 319, size: 448, elements: !2062)
!2062 = !{!2063, !2064}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2061, file: !111, line: 320, baseType: !1163, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2061, file: !111, line: 321, baseType: !2065, size: 384, offset: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2066, line: 40, size: 384, elements: !2067)
!2066 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2067 = !{!2068}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2065, file: !2066, line: 41, baseType: !2069, size: 384, align: 64)
!2069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 384, align: 64, elements: !449)
!2070 = !{!2071}
!2071 = !DISubrange(count: 7)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1164, file: !111, line: 463, baseType: !2073, size: 192, offset: 6592)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2074, line: 8, size: 192, elements: !2075)
!2074 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2075 = !{!2076, !2077, !2079}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2073, file: !2074, line: 10, baseType: !98, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2073, file: !2074, line: 11, baseType: !2078, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2073, file: !2074, line: 12, baseType: !2080, size: 64, offset: 128)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2082, line: 59, size: 48, elements: !2083)
!2082 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2083 = !{!2084, !2085, !2086, !2087, !2088, !2089}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2081, file: !2082, line: 60, baseType: !1704, size: 16)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2081, file: !2082, line: 61, baseType: !1704, size: 16, offset: 16)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2081, file: !2082, line: 63, baseType: !98, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2081, file: !2082, line: 64, baseType: !98, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2081, file: !2082, line: 65, baseType: !98, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2081, file: !2082, line: 66, baseType: !98, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1164, file: !111, line: 465, baseType: !33, size: 64, offset: 6784)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1164, file: !111, line: 469, baseType: !98, size: 32, offset: 6848)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1164, file: !111, line: 470, baseType: !91, size: 128, offset: 6912)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1164, file: !111, line: 471, baseType: !2094, size: 64, offset: 7040)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2096, line: 33, size: 96, elements: !2097)
!2096 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2097 = !{!2098, !2099, !2100, !2101}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2095, file: !2096, line: 37, baseType: !16, size: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2095, file: !2096, line: 43, baseType: !16, size: 32, offset: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2095, file: !2096, line: 45, baseType: !20, size: 16, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2095, file: !2096, line: 47, baseType: !20, size: 16, offset: 80)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1164, file: !111, line: 476, baseType: !2103, size: 64, offset: 7104)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !111, line: 378, size: 256, elements: !2105)
!2105 = !{!2106, !2122, !2123, !2124}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2104, file: !111, line: 379, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2109, line: 204, baseType: !2110)
!2109 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2109, line: 197, size: 192, elements: !2111)
!2111 = !{!2112, !2114, !2115, !2116, !2118, !2120}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2110, file: !2109, line: 198, baseType: !2113, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2109, line: 21, baseType: !468)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2110, file: !2109, line: 199, baseType: !81, size: 8, offset: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2110, file: !2109, line: 200, baseType: !81, size: 8, offset: 40)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2110, file: !2109, line: 201, baseType: !2117, size: 16, offset: 48)
!2117 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2109, line: 17, baseType: !88)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2110, file: !2109, line: 202, baseType: !2119, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2109, line: 16, baseType: !677)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2110, file: !2109, line: 203, baseType: !2121, size: 64, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2109, line: 22, baseType: !677)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2104, file: !111, line: 380, baseType: !98, size: 32, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2104, file: !111, line: 381, baseType: !771, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2104, file: !111, line: 382, baseType: !771, size: 64, offset: 192)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1164, file: !111, line: 477, baseType: !2104, size: 256, offset: 7168)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1164, file: !111, line: 480, baseType: !2127, size: 64, offset: 7424)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !111, line: 480, flags: DIFlagFwdDecl)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1164, file: !111, line: 483, baseType: !2130, size: 64, offset: 7488)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !111, line: 483, flags: DIFlagFwdDecl)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1164, file: !111, line: 488, baseType: !771, size: 64, offset: 7552)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1164, file: !111, line: 492, baseType: !14, size: 64, offset: 7616)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1164, file: !111, line: 493, baseType: !98, size: 32, offset: 7680)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1164, file: !111, line: 495, baseType: !14, size: 64, offset: 7744)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1164, file: !111, line: 496, baseType: !98, size: 32, offset: 7808)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1164, file: !111, line: 499, baseType: !98, size: 32, offset: 7840)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1164, file: !111, line: 500, baseType: !2139, size: 64, offset: 7872)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2141, line: 45, baseType: !2142)
!2141 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1164, file: !111, line: 503, baseType: !98, size: 32, offset: 7936)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1164, file: !111, line: 504, baseType: !2145, size: 64, offset: 8000)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2148, line: 96, size: 192, elements: !2149)
!2148 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2149 = !{!2150, !2151, !2205, !2207}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2147, file: !2148, line: 97, baseType: !98, size: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2147, file: !2148, line: 98, baseType: !2152, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2148, line: 24, size: 3072, elements: !2154)
!2154 = !{!2155, !2157, !2158, !2159, !2160, !2174, !2175, !2176, !2177, !2189, !2190, !2191, !2202, !2203, !2204}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2153, file: !2148, line: 26, baseType: !2156, size: 128)
!2156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 128, elements: !449)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2153, file: !2148, line: 27, baseType: !2156, size: 128, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2153, file: !2148, line: 28, baseType: !16, size: 32, offset: 256)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2153, file: !2148, line: 31, baseType: !53, size: 32, align: 512, offset: 512)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2153, file: !2148, line: 32, baseType: !2161, size: 960, offset: 576)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2162, line: 206, size: 960, elements: !2163)
!2162 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2163 = !{!2164, !2165, !2168, !2170, !2171, !2173}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2161, file: !2162, line: 207, baseType: !266, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2161, file: !2162, line: 208, baseType: !2166, size: 256, offset: 64)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2167, size: 256, elements: !378)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2161, file: !2162, line: 209, baseType: !2169, size: 256, offset: 320)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 256, elements: !378)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2161, file: !2162, line: 213, baseType: !1036, size: 64, offset: 576)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2161, file: !2162, line: 215, baseType: !2172, size: 256, offset: 640)
!2172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1036, size: 256, elements: !378)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2161, file: !2162, line: 216, baseType: !77, size: 8, offset: 896)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2153, file: !2148, line: 33, baseType: !33, size: 64, offset: 1536)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2153, file: !2148, line: 34, baseType: !33, size: 64, offset: 1600)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2153, file: !2148, line: 35, baseType: !760, size: 8, offset: 1664)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2153, file: !2148, line: 36, baseType: !2178, size: 320, offset: 1728)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2179, line: 11, size: 320, elements: !2180)
!2179 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2180 = !{!2181, !2182, !2183, !2188}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2178, file: !2179, line: 16, baseType: !353, size: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2178, file: !2179, line: 17, baseType: !33, size: 64, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2178, file: !2179, line: 18, baseType: !2184, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{null, !2187}
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2178, file: !2179, line: 19, baseType: !726, size: 32, offset: 256)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2153, file: !2148, line: 37, baseType: !1725, size: 256, offset: 2048)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2153, file: !2148, line: 38, baseType: !263, size: 128, align: 64, offset: 2304)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2153, file: !2148, line: 39, baseType: !2192, size: 64, offset: 2432)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2148, line: 49, size: 768, elements: !2194)
!2194 = !{!2195, !2196, !2197, !2198, !2199, !2200, !2201}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2193, file: !2148, line: 50, baseType: !53, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2193, file: !2148, line: 51, baseType: !2169, size: 256, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2193, file: !2148, line: 53, baseType: !2169, size: 256, offset: 320)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2193, file: !2148, line: 54, baseType: !33, size: 64, offset: 576)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2193, file: !2148, line: 55, baseType: !2192, size: 64, offset: 640)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2193, file: !2148, line: 56, baseType: !16, size: 32, offset: 704)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2193, file: !2148, line: 57, baseType: !16, size: 32, offset: 736)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2153, file: !2148, line: 40, baseType: !33, size: 64, offset: 2496)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2153, file: !2148, line: 42, baseType: !16, size: 32, offset: 2560)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2153, file: !2148, line: 43, baseType: !2146, size: 64, offset: 2624)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2147, file: !2148, line: 99, baseType: !2206, offset: 128)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !409, line: 211, elements: !410)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2147, file: !2148, line: 100, baseType: !2208, size: 64, offset: 128)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2148, line: 63, size: 3008, elements: !2210)
!2210 = !{!2211, !2212, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2242}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2209, file: !2148, line: 64, baseType: !2192, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2209, file: !2148, line: 65, baseType: !2213, size: 192, offset: 64)
!2213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2192, size: 192, elements: !620)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2209, file: !2148, line: 67, baseType: !16, size: 32, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2209, file: !2148, line: 68, baseType: !382, size: 256, offset: 320)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2209, file: !2148, line: 69, baseType: !53, size: 32, offset: 576)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2209, file: !2148, line: 70, baseType: !382, size: 256, offset: 640)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2209, file: !2148, line: 71, baseType: !33, size: 64, offset: 896)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2209, file: !2148, line: 72, baseType: !33, size: 64, offset: 960)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2209, file: !2148, line: 73, baseType: !33, size: 64, offset: 1024)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2209, file: !2148, line: 74, baseType: !33, size: 64, offset: 1088)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2209, file: !2148, line: 75, baseType: !33, size: 64, offset: 1152)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2209, file: !2148, line: 76, baseType: !33, size: 64, offset: 1216)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2209, file: !2148, line: 77, baseType: !33, size: 64, offset: 1280)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2209, file: !2148, line: 78, baseType: !33, size: 64, offset: 1344)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2209, file: !2148, line: 79, baseType: !760, size: 8, offset: 1408)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2209, file: !2148, line: 80, baseType: !33, size: 64, offset: 1472)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2209, file: !2148, line: 81, baseType: !382, size: 256, offset: 1536)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2209, file: !2148, line: 82, baseType: !273, size: 256, offset: 1792)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2209, file: !2148, line: 84, baseType: !43, size: 32, offset: 2048)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2209, file: !2148, line: 87, baseType: !33, size: 64, offset: 2112)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2209, file: !2148, line: 88, baseType: !33, size: 64, offset: 2176)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2209, file: !2148, line: 89, baseType: !2234, size: 704, offset: 2240)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1726, line: 111, size: 704, elements: !2235)
!2235 = !{!2236, !2237, !2238, !2241}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2234, file: !1726, line: 112, baseType: !1725, size: 256)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2234, file: !1726, line: 113, baseType: !2178, size: 320, offset: 256)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2234, file: !1726, line: 116, baseType: !2239, size: 64, offset: 576)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1726, line: 18, flags: DIFlagFwdDecl)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2234, file: !1726, line: 117, baseType: !16, size: 32, offset: 640)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2209, file: !2148, line: 90, baseType: !2146, size: 64, offset: 2944)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1164, file: !111, line: 515, baseType: !2244, size: 64, offset: 8064)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2246, line: 117, size: 128, elements: !2247)
!2246 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2247 = !{!2248, !2249, !2250}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2245, file: !2246, line: 118, baseType: !693, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2245, file: !2246, line: 119, baseType: !693, size: 32, offset: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2245, file: !2246, line: 120, baseType: !1036, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1164, file: !111, line: 516, baseType: !98, size: 32, offset: 8128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1164, file: !111, line: 519, baseType: !98, size: 32, offset: 8160)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1164, file: !111, line: 520, baseType: !2254, size: 64, offset: 8192)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1164, file: !111, line: 523, baseType: !2256, size: 64, offset: 8256)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !111, line: 523, flags: DIFlagFwdDecl)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1164, file: !111, line: 524, baseType: !98, size: 32, offset: 8320)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1164, file: !111, line: 525, baseType: !2261, size: 64, offset: 8384)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !111, line: 525, flags: DIFlagFwdDecl)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1164, file: !111, line: 526, baseType: !98, size: 32, offset: 8448)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1164, file: !111, line: 533, baseType: !14, size: 64, offset: 8512)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1164, file: !111, line: 534, baseType: !98, size: 32, offset: 8576)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1164, file: !111, line: 535, baseType: !2268, size: 64, offset: 8640)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1164, file: !111, line: 536, baseType: !98, size: 32, offset: 8704)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1164, file: !111, line: 539, baseType: !16, size: 32, offset: 8736)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1164, file: !111, line: 540, baseType: !2272, size: 64, offset: 8768)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2274, line: 32, size: 64, elements: !2275)
!2274 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2275 = !{!2276, !2277}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2273, file: !2274, line: 33, baseType: !693, size: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2273, file: !2274, line: 34, baseType: !693, size: 32, offset: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1164, file: !111, line: 563, baseType: !91, size: 128, offset: 8832)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1164, file: !111, line: 565, baseType: !91, size: 128, offset: 8960)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1164, file: !111, line: 568, baseType: !241, size: 64, offset: 9088)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1164, file: !111, line: 570, baseType: !43, size: 32, offset: 9152)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1140, file: !131, line: 2382, baseType: !1139, size: 64, offset: 448)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1140, file: !131, line: 2383, baseType: !349, size: 64, offset: 512)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1140, file: !131, line: 2385, baseType: !408, offset: 576)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1140, file: !131, line: 2386, baseType: !408, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1140, file: !131, line: 2387, baseType: !408, offset: 576)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1140, file: !131, line: 2388, baseType: !2288, offset: 576)
!2288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, elements: !620)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1140, file: !131, line: 2390, baseType: !408, offset: 576)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1140, file: !131, line: 2391, baseType: !408, offset: 576)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1140, file: !131, line: 2392, baseType: !408, offset: 576)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1140, file: !131, line: 2393, baseType: !408, offset: 576)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1131, file: !131, line: 1197, baseType: !2294, size: 64, offset: 384)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2296)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !131, line: 2057, size: 1664, elements: !2297)
!2297 = !{!2298, !2302, !2306, !2307, !2311, !2315, !2319, !2320, !2321, !2325, !2329, !2333, !2334, !2335, !2341, !2345, !2346, !2350, !2351, !2352, !2353, !2357, !2361, !2408, !2423, !2424}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2296, file: !131, line: 2058, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!922, !1130}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2296, file: !131, line: 2059, baseType: !2303, size: 64, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{null, !922}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2296, file: !131, line: 2060, baseType: !2303, size: 64, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2296, file: !131, line: 2062, baseType: !2308, size: 64, offset: 192)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{null, !922, !16}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2296, file: !131, line: 2063, baseType: !2312, size: 64, offset: 256)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!16, !922, !1365}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2296, file: !131, line: 2064, baseType: !2316, size: 64, offset: 320)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!16, !922}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2296, file: !131, line: 2065, baseType: !2303, size: 64, offset: 384)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2296, file: !131, line: 2066, baseType: !1159, size: 64, offset: 448)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2296, file: !131, line: 2067, baseType: !2322, size: 64, offset: 512)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!16, !1130, !16}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2296, file: !131, line: 2068, baseType: !2326, size: 64, offset: 576)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!16, !1130, !130}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2296, file: !131, line: 2069, baseType: !2330, size: 64, offset: 640)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!16, !1130}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2296, file: !131, line: 2070, baseType: !2326, size: 64, offset: 704)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2296, file: !131, line: 2071, baseType: !2330, size: 64, offset: 768)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2296, file: !131, line: 2072, baseType: !2336, size: 64, offset: 832)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!16, !882, !2339}
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !131, line: 62, flags: DIFlagFwdDecl)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2296, file: !131, line: 2073, baseType: !2342, size: 64, offset: 896)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!16, !1130, !2078, !771}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2296, file: !131, line: 2074, baseType: !1159, size: 64, offset: 960)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2296, file: !131, line: 2076, baseType: !2347, size: 64, offset: 1024)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!16, !1866, !882}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2296, file: !131, line: 2077, baseType: !2347, size: 64, offset: 1088)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2296, file: !131, line: 2078, baseType: !2347, size: 64, offset: 1152)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2296, file: !131, line: 2079, baseType: !2347, size: 64, offset: 1216)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2296, file: !131, line: 2081, baseType: !2354, size: 64, offset: 1280)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!1075, !1130, !16, !771, !29, !35}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2296, file: !131, line: 2082, baseType: !2358, size: 64, offset: 1344)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!1075, !1130, !16, !10, !29, !35}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2296, file: !131, line: 2083, baseType: !2362, size: 64, offset: 1408)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!2365, !922}
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !136, line: 296, size: 1664, elements: !2368)
!2368 = !{!2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2393, !2394, !2395}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2367, file: !136, line: 297, baseType: !353, size: 128)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2367, file: !136, line: 298, baseType: !91, size: 128, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2367, file: !136, line: 299, baseType: !91, size: 128, offset: 256)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2367, file: !136, line: 300, baseType: !91, size: 128, offset: 384)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2367, file: !136, line: 301, baseType: !382, size: 256, offset: 512)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2367, file: !136, line: 302, baseType: !53, size: 32, offset: 768)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2367, file: !136, line: 303, baseType: !43, size: 32, offset: 800)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2367, file: !136, line: 304, baseType: !1130, size: 64, offset: 832)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2367, file: !136, line: 305, baseType: !2378, size: 64, offset: 896)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !136, line: 68, size: 64, elements: !2379)
!2379 = !{!2380, !2392}
!2380 = !DIDerivedType(tag: DW_TAG_member, scope: !2378, file: !136, line: 69, baseType: !2381, size: 32)
!2381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2378, file: !136, line: 69, size: 32, elements: !2382)
!2382 = !{!2383, !2384, !2385}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2381, file: !136, line: 70, baseType: !321, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2381, file: !136, line: 71, baseType: !329, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2381, file: !136, line: 72, baseType: !2386, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2387, line: 24, baseType: !2388)
!2387 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2387, line: 22, size: 32, elements: !2389)
!2389 = !{!2390}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2388, file: !2387, line: 23, baseType: !2391, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2387, line: 20, baseType: !327)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2378, file: !136, line: 74, baseType: !135, size: 32, offset: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2367, file: !136, line: 306, baseType: !35, size: 64, offset: 960)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2367, file: !136, line: 307, baseType: !33, size: 64, offset: 1024)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2367, file: !136, line: 308, baseType: !2396, size: 576, offset: 1088)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !136, line: 205, size: 576, elements: !2397)
!2397 = !{!2398, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2396, file: !136, line: 206, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !136, line: 66, baseType: !37)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2396, file: !136, line: 207, baseType: !2399, size: 64, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2396, file: !136, line: 208, baseType: !2399, size: 64, offset: 128)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2396, file: !136, line: 209, baseType: !2399, size: 64, offset: 192)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2396, file: !136, line: 210, baseType: !2399, size: 64, offset: 256)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2396, file: !136, line: 211, baseType: !2399, size: 64, offset: 320)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2396, file: !136, line: 212, baseType: !2399, size: 64, offset: 384)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2396, file: !136, line: 213, baseType: !717, size: 64, offset: 448)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2396, file: !136, line: 214, baseType: !717, size: 64, offset: 512)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2296, file: !131, line: 2085, baseType: !2409, size: 64, offset: 1472)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!1036, !1130, !2412}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2414, line: 15, size: 256, elements: !2415)
!2414 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2415 = !{!2416, !2417, !2418, !2419, !2420}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2413, file: !2414, line: 16, baseType: !228, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2413, file: !2414, line: 19, baseType: !16, size: 32, offset: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2413, file: !2414, line: 26, baseType: !33, size: 64, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2413, file: !2414, line: 33, baseType: !33, size: 64, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2413, file: !2414, line: 36, baseType: !2421, size: 64, offset: 192)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2414, line: 36, flags: DIFlagFwdDecl)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2296, file: !131, line: 2087, baseType: !2409, size: 64, offset: 1536)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2296, file: !131, line: 2089, baseType: !1159, size: 64, offset: 1600)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1131, file: !131, line: 1198, baseType: !2426, size: 64, offset: 448)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2428)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !136, line: 324, size: 704, elements: !2429)
!2429 = !{!2430, !2434, !2438, !2442, !2443, !2444, !2445, !2446, !2451, !2456, !2460}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2428, file: !136, line: 325, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!16, !2366}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2428, file: !136, line: 326, baseType: !2435, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!2366, !1130, !16}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2428, file: !136, line: 327, baseType: !2439, size: 64, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{null, !2366}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2428, file: !136, line: 328, baseType: !2431, size: 64, offset: 192)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2428, file: !136, line: 329, baseType: !2431, size: 64, offset: 256)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2428, file: !136, line: 330, baseType: !2431, size: 64, offset: 320)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2428, file: !136, line: 331, baseType: !2322, size: 64, offset: 384)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2428, file: !136, line: 334, baseType: !2447, size: 64, offset: 448)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!2450, !922}
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2428, file: !136, line: 335, baseType: !2452, size: 64, offset: 512)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!16, !922, !2455}
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2428, file: !136, line: 337, baseType: !2457, size: 64, offset: 576)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!16, !922, !2450}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2428, file: !136, line: 339, baseType: !2461, size: 64, offset: 640)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!16, !1130, !2464}
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1131, file: !131, line: 1199, baseType: !2466, size: 64, offset: 512)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2468)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !136, line: 430, size: 704, elements: !2469)
!2469 = !{!2470, !2474, !2475, !2479, !2480, !2481, !2496, !2519, !2523, !2524, !2547}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2468, file: !136, line: 431, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!16, !1130, !16, !16, !1044}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2468, file: !136, line: 432, baseType: !2322, size: 64, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2468, file: !136, line: 433, baseType: !2476, size: 64, offset: 128)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!16, !1130, !98}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2468, file: !136, line: 434, baseType: !2476, size: 64, offset: 192)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2468, file: !136, line: 435, baseType: !2322, size: 64, offset: 256)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2468, file: !136, line: 436, baseType: !2482, size: 64, offset: 320)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!16, !1130, !16, !2485}
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !136, line: 417, size: 256, elements: !2487)
!2487 = !{!2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2486, file: !136, line: 418, baseType: !16, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2486, file: !136, line: 419, baseType: !98, size: 32, offset: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2486, file: !136, line: 420, baseType: !98, size: 32, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2486, file: !136, line: 422, baseType: !98, size: 32, offset: 96)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2486, file: !136, line: 423, baseType: !98, size: 32, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2486, file: !136, line: 424, baseType: !98, size: 32, offset: 160)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2486, file: !136, line: 425, baseType: !98, size: 32, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2486, file: !136, line: 426, baseType: !98, size: 32, offset: 224)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2468, file: !136, line: 437, baseType: !2497, size: 64, offset: 384)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!16, !1130, !2378, !2500}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !136, line: 345, size: 960, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2501, file: !136, line: 346, baseType: !16, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2501, file: !136, line: 347, baseType: !676, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2501, file: !136, line: 348, baseType: !676, size: 64, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2501, file: !136, line: 349, baseType: !676, size: 64, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2501, file: !136, line: 350, baseType: !676, size: 64, offset: 256)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2501, file: !136, line: 351, baseType: !676, size: 64, offset: 320)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2501, file: !136, line: 352, baseType: !676, size: 64, offset: 384)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2501, file: !136, line: 353, baseType: !392, size: 64, offset: 448)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2501, file: !136, line: 355, baseType: !392, size: 64, offset: 512)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2501, file: !136, line: 356, baseType: !16, size: 32, offset: 576)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2501, file: !136, line: 357, baseType: !16, size: 32, offset: 608)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2501, file: !136, line: 358, baseType: !676, size: 64, offset: 640)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2501, file: !136, line: 359, baseType: !676, size: 64, offset: 704)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2501, file: !136, line: 360, baseType: !676, size: 64, offset: 768)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2501, file: !136, line: 361, baseType: !392, size: 64, offset: 832)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2501, file: !136, line: 362, baseType: !16, size: 32, offset: 896)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2468, file: !136, line: 438, baseType: !2520, size: 64, offset: 448)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!16, !1130, !2464, !2500}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2468, file: !136, line: 440, baseType: !2497, size: 64, offset: 512)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2468, file: !136, line: 441, baseType: !2525, size: 64, offset: 576)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!16, !1130, !2528}
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !136, line: 411, size: 1408, elements: !2530)
!2530 = !{!2531, !2532}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2529, file: !136, line: 412, baseType: !98, size: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2529, file: !136, line: 413, baseType: !2533, size: 1344, offset: 64)
!2533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2534, size: 1344, elements: !620)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !136, line: 397, size: 448, elements: !2535)
!2535 = !{!2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2546}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2534, file: !136, line: 398, baseType: !98, size: 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2534, file: !136, line: 399, baseType: !98, size: 32, offset: 32)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2534, file: !136, line: 401, baseType: !98, size: 32, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2534, file: !136, line: 402, baseType: !98, size: 32, offset: 96)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2534, file: !136, line: 403, baseType: !98, size: 32, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2534, file: !136, line: 404, baseType: !98, size: 32, offset: 160)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2534, file: !136, line: 405, baseType: !98, size: 32, offset: 192)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2534, file: !136, line: 406, baseType: !678, size: 64, offset: 256)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2534, file: !136, line: 407, baseType: !2545, size: 64, offset: 320)
!2545 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !19, line: 132, baseType: !676)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2534, file: !136, line: 408, baseType: !2545, size: 64, offset: 384)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2468, file: !136, line: 442, baseType: !2476, size: 64, offset: 640)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1131, file: !131, line: 1200, baseType: !2549, size: 64, offset: 576)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2551)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !131, line: 54, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1131, file: !131, line: 1201, baseType: !33, size: 64, offset: 640)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1131, file: !131, line: 1202, baseType: !33, size: 64, offset: 704)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1131, file: !131, line: 1203, baseType: !33, size: 64, offset: 768)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1131, file: !131, line: 1204, baseType: !882, size: 64, offset: 832)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1131, file: !131, line: 1205, baseType: !701, size: 320, offset: 896)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1131, file: !131, line: 1206, baseType: !16, size: 32, offset: 1216)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1131, file: !131, line: 1207, baseType: !43, size: 32, offset: 1248)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1131, file: !131, line: 1209, baseType: !14, size: 64, offset: 1280)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1131, file: !131, line: 1211, baseType: !2561, size: 64, offset: 1344)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2564)
!2564 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !131, line: 1211, flags: DIFlagFwdDecl)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1131, file: !131, line: 1223, baseType: !2566, size: 64, offset: 1408)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !899, line: 34, size: 64, elements: !2567)
!2567 = !{!2568}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2566, file: !899, line: 35, baseType: !902, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1131, file: !131, line: 1224, baseType: !91, size: 128, offset: 1472)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1131, file: !131, line: 1225, baseType: !2571, size: 64, offset: 1600)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !131, line: 1225, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1131, file: !131, line: 1226, baseType: !2574, size: 64, offset: 1664)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !131, line: 1226, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1131, file: !131, line: 1227, baseType: !2577, size: 64, offset: 1728)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !131, line: 50, flags: DIFlagFwdDecl)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1131, file: !131, line: 1228, baseType: !2580, size: 64, offset: 1792)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !131, line: 1228, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1131, file: !131, line: 1229, baseType: !353, size: 128, offset: 1856)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1131, file: !131, line: 1230, baseType: !98, size: 32, offset: 1984)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1131, file: !131, line: 1231, baseType: !2585, size: 2496, offset: 2048)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !136, line: 521, size: 2496, elements: !2586)
!2586 = !{!2587, !2588, !2589, !2591, !2623}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2585, file: !136, line: 522, baseType: !98, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2585, file: !136, line: 523, baseType: !701, size: 320, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2585, file: !136, line: 524, baseType: !2590, size: 192, offset: 384)
!2590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !922, size: 192, elements: !620)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2585, file: !136, line: 525, baseType: !2592, size: 1728, offset: 576)
!2592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2593, size: 1728, elements: !620)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !136, line: 222, size: 576, elements: !2594)
!2594 = !{!2595, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2593, file: !136, line: 223, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !136, line: 445, size: 256, elements: !2598)
!2598 = !{!2599, !2600, !2613, !2614}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2597, file: !136, line: 446, baseType: !16, size: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2597, file: !136, line: 447, baseType: !2601, size: 64, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2603)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !136, line: 312, size: 512, elements: !2604)
!2604 = !{!2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2603, file: !136, line: 313, baseType: !2322, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2603, file: !136, line: 314, baseType: !2322, size: 64, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2603, file: !136, line: 315, baseType: !2322, size: 64, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2603, file: !136, line: 316, baseType: !2322, size: 64, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2603, file: !136, line: 317, baseType: !2431, size: 64, offset: 256)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2603, file: !136, line: 318, baseType: !2431, size: 64, offset: 320)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2603, file: !136, line: 319, baseType: !2431, size: 64, offset: 384)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2603, file: !136, line: 320, baseType: !2461, size: 64, offset: 448)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2597, file: !136, line: 448, baseType: !1163, size: 64, offset: 128)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2597, file: !136, line: 449, baseType: !2596, size: 64, offset: 192)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2593, file: !136, line: 224, baseType: !16, size: 32, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2593, file: !136, line: 226, baseType: !91, size: 128, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2593, file: !136, line: 227, baseType: !33, size: 64, offset: 256)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2593, file: !136, line: 228, baseType: !98, size: 32, offset: 320)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2593, file: !136, line: 229, baseType: !98, size: 32, offset: 352)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2593, file: !136, line: 230, baseType: !2399, size: 64, offset: 384)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2593, file: !136, line: 231, baseType: !2399, size: 64, offset: 448)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2593, file: !136, line: 232, baseType: !14, size: 64, offset: 512)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2585, file: !136, line: 526, baseType: !2624, size: 192, offset: 2304)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2601, size: 192, elements: !620)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1131, file: !131, line: 1233, baseType: !2626, size: 2368, offset: 4544)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !131, line: 1184, size: 2368, elements: !2627)
!2627 = !{!2628, !2629, !2630}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2626, file: !131, line: 1185, baseType: !20, size: 16)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2626, file: !131, line: 1186, baseType: !20, size: 16, offset: 16)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2626, file: !131, line: 1187, baseType: !2631, size: 2304, offset: 64)
!2631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2632, size: 2304, elements: !620)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2633, line: 12, size: 768, elements: !2634)
!2633 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2634 = !{!2635, !2643, !2644, !3816, !3817}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2632, file: !2633, line: 13, baseType: !2636, size: 384)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2637, line: 17, size: 384, elements: !2638)
!2637 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2638 = !{!2639, !2640, !2641, !2642}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2636, file: !2637, line: 18, baseType: !16, size: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2636, file: !2637, line: 19, baseType: !16, size: 32, offset: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2636, file: !2637, line: 20, baseType: !48, size: 192, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2636, file: !2637, line: 22, baseType: !263, size: 128, align: 64, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2632, file: !2633, line: 14, baseType: !473, size: 64, offset: 384)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2632, file: !2633, line: 15, baseType: !2645, size: 64, offset: 448)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2646, line: 16, size: 64, elements: !2647)
!2646 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2647 = !{!2648}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2645, file: !2646, line: 17, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1868, line: 746, size: 58368, elements: !2651)
!2651 = !{!2652, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2732, !2743, !2831, !2835, !2838, !2869, !2870, !2871, !2872, !2880, !2882, !2883, !2884, !2885, !2886, !2887, !2898, !2899, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2916, !2917, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !3005, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3053, !3059, !3060, !3061, !3062, !3063, !3067, !3070, !3077, !3082, !3085, !3088, !3091, !3094, !3232, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3270, !3271, !3272, !3281, !3289, !3290, !3291, !3292, !3293, !3298, !3299, !3300, !3303, !3304, !3307, !3310, !3313, !3321, !3324, !3325, !3411, !3412, !3413, !3414, !3415, !3421, !3422, !3423, !3424, !3427, !3428, !3431, !3434, !3435, !3438, !3439, !3440, !3443, !3444, !3445, !3446, !3447, !3448, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3480, !3483, !3489, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3501, !3573, !3575, !3576, !3577, !3578, !3579, !3580, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3597, !3598, !3599}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2650, file: !1868, line: 752, baseType: !2653, size: 192)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2654, line: 56, size: 192, elements: !2655)
!2654 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2655 = !{!2656, !2657, !2658, !2659}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2653, file: !2654, line: 57, baseType: !33, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2653, file: !2654, line: 58, baseType: !33, size: 64, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2653, file: !2654, line: 59, baseType: !726, size: 32, offset: 128)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2653, file: !2654, line: 61, baseType: !726, size: 32, offset: 160)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2650, file: !1868, line: 754, baseType: !98, size: 32, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2650, file: !1868, line: 767, baseType: !14, size: 64, offset: 256)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2650, file: !1868, line: 768, baseType: !628, size: 32, offset: 320)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2650, file: !1868, line: 770, baseType: !98, size: 32, offset: 352)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2650, file: !1868, line: 771, baseType: !98, size: 32, offset: 384)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2650, file: !1868, line: 774, baseType: !16, size: 32, offset: 416)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2650, file: !1868, line: 775, baseType: !2667, size: 128, offset: 448)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2668, line: 58, size: 128, elements: !2669)
!2668 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2669 = !{!2670, !2671, !2676, !2677}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2667, file: !2668, line: 59, baseType: !583, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, scope: !2667, file: !2668, line: 60, baseType: !2672, size: 32, offset: 64)
!2672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2667, file: !2668, line: 60, size: 32, elements: !2673)
!2673 = !{!2674, !2675}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2672, file: !2668, line: 61, baseType: !98, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2672, file: !2668, line: 62, baseType: !43, size: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2667, file: !2668, line: 65, baseType: !87, size: 16, offset: 96)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2667, file: !2668, line: 65, baseType: !87, size: 16, offset: 112)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2650, file: !1868, line: 776, baseType: !98, size: 32, offset: 576)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2650, file: !1868, line: 777, baseType: !33, size: 64, offset: 640)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2650, file: !1868, line: 778, baseType: !2649, size: 64, offset: 704)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2650, file: !1868, line: 787, baseType: !16, size: 32, offset: 768)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2650, file: !1868, line: 788, baseType: !16, size: 32, offset: 800)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2650, file: !1868, line: 790, baseType: !16, size: 32, offset: 832)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2650, file: !1868, line: 792, baseType: !16, size: 32, offset: 864)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2650, file: !1868, line: 793, baseType: !16, size: 32, offset: 896)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2650, file: !1868, line: 794, baseType: !16, size: 32, offset: 928)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2650, file: !1868, line: 795, baseType: !98, size: 32, offset: 960)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2650, file: !1868, line: 797, baseType: !2689, size: 2048, offset: 1024)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1868, line: 551, size: 2048, elements: !2690)
!2690 = !{!2691, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2711, !2714, !2715, !2716}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2689, file: !1868, line: 553, baseType: !2692, size: 128)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1868, line: 411, size: 128, elements: !2693)
!2693 = !{!2694, !2695}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2692, file: !1868, line: 412, baseType: !33, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2692, file: !1868, line: 413, baseType: !726, size: 32, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2689, file: !1868, line: 554, baseType: !307, size: 192, align: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2689, file: !1868, line: 555, baseType: !676, size: 64, offset: 320)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2689, file: !1868, line: 556, baseType: !676, size: 64, offset: 384)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2689, file: !1868, line: 558, baseType: !91, size: 128, offset: 448)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2689, file: !1868, line: 559, baseType: !98, size: 32, offset: 576)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2689, file: !1868, line: 561, baseType: !676, size: 64, offset: 640)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2689, file: !1868, line: 562, baseType: !676, size: 64, offset: 704)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2689, file: !1868, line: 563, baseType: !676, size: 64, offset: 768)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2689, file: !1868, line: 564, baseType: !676, size: 64, offset: 832)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2689, file: !1868, line: 565, baseType: !392, size: 64, offset: 896)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2689, file: !1868, line: 566, baseType: !676, size: 64, offset: 960)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2689, file: !1868, line: 568, baseType: !676, size: 64, offset: 1024)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2689, file: !1868, line: 571, baseType: !16, size: 32, offset: 1088)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2689, file: !1868, line: 572, baseType: !2710, size: 64, offset: 1152)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2689, file: !1868, line: 574, baseType: !2712, size: 64, offset: 1216)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1868, line: 49, flags: DIFlagFwdDecl)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2689, file: !1868, line: 576, baseType: !2712, size: 64, offset: 1280)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2689, file: !1868, line: 578, baseType: !33, size: 64, offset: 1344)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2689, file: !1868, line: 588, baseType: !2717, size: 512, align: 512, offset: 1536)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1868, line: 497, size: 512, align: 512, elements: !2718)
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2717, file: !1868, line: 498, baseType: !676, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2717, file: !1868, line: 499, baseType: !676, size: 64, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2717, file: !1868, line: 500, baseType: !676, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2717, file: !1868, line: 501, baseType: !726, size: 32, offset: 192)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2717, file: !1868, line: 502, baseType: !726, size: 32, offset: 224)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2717, file: !1868, line: 503, baseType: !33, size: 64, offset: 256)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2717, file: !1868, line: 504, baseType: !33, size: 64, offset: 320)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2717, file: !1868, line: 505, baseType: !33, size: 64, offset: 384)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2717, file: !1868, line: 506, baseType: !2728, size: 64, align: 64, offset: 448)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1868, line: 445, size: 64, align: 64, elements: !2729)
!2729 = !{!2730, !2731}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2728, file: !1868, line: 446, baseType: !98, size: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2728, file: !1868, line: 447, baseType: !98, size: 32, offset: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2650, file: !1868, line: 798, baseType: !2733, size: 384, offset: 3072)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1868, line: 592, size: 384, elements: !2734)
!2734 = !{!2735, !2736, !2737, !2738, !2739, !2740, !2741}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2733, file: !1868, line: 593, baseType: !91, size: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2733, file: !1868, line: 594, baseType: !33, size: 64, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2733, file: !1868, line: 595, baseType: !33, size: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2733, file: !1868, line: 596, baseType: !98, size: 32, offset: 256)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2733, file: !1868, line: 597, baseType: !20, size: 16, offset: 288)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2733, file: !1868, line: 598, baseType: !20, size: 16, offset: 304)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2733, file: !1868, line: 600, baseType: !2742, size: 64, offset: 320)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2650, file: !1868, line: 799, baseType: !2744, size: 1792, offset: 3456)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1868, line: 610, size: 1792, elements: !2745)
!2745 = !{!2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2828, !2829}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2744, file: !1868, line: 611, baseType: !307, size: 192, align: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2744, file: !1868, line: 618, baseType: !676, size: 64, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2744, file: !1868, line: 619, baseType: !676, size: 64, offset: 256)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2744, file: !1868, line: 620, baseType: !676, size: 64, offset: 320)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2744, file: !1868, line: 621, baseType: !676, size: 64, offset: 384)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2744, file: !1868, line: 622, baseType: !676, size: 64, offset: 448)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2744, file: !1868, line: 629, baseType: !392, size: 64, offset: 512)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2744, file: !1868, line: 630, baseType: !676, size: 64, offset: 576)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2744, file: !1868, line: 631, baseType: !98, size: 32, offset: 640)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2744, file: !1868, line: 653, baseType: !98, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2744, file: !1868, line: 654, baseType: !98, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2744, file: !1868, line: 655, baseType: !98, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2744, file: !1868, line: 656, baseType: !98, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2744, file: !1868, line: 662, baseType: !2760, size: 512, offset: 704)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !142, line: 118, size: 512, elements: !2761)
!2761 = !{!2762, !2770, !2771, !2776, !2824, !2825, !2826, !2827}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2760, file: !142, line: 119, baseType: !2763, size: 256)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2764, line: 9, size: 256, elements: !2765)
!2764 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2765 = !{!2766, !2767}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2763, file: !2764, line: 10, baseType: !307, size: 192, align: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2763, file: !2764, line: 11, baseType: !2768, size: 64, offset: 192)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2769, line: 29, baseType: !392)
!2769 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2760, file: !142, line: 120, baseType: !2768, size: 64, offset: 256)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2760, file: !142, line: 121, baseType: !2772, size: 64, offset: 320)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!141, !2775}
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2760, file: !142, line: 122, baseType: !2777, size: 64, offset: 384)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !142, line: 159, size: 512, align: 512, elements: !2779)
!2779 = !{!2780, !2805, !2806, !2809, !2814, !2815, !2819, !2823}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2778, file: !142, line: 160, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !142, line: 215, size: 4608, align: 512, elements: !2783)
!2783 = !{!2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2782, file: !142, line: 216, baseType: !282, size: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2782, file: !142, line: 217, baseType: !98, size: 32, offset: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2782, file: !142, line: 218, baseType: !98, size: 32, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2782, file: !142, line: 219, baseType: !98, size: 32, offset: 96)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2782, file: !142, line: 220, baseType: !98, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2782, file: !142, line: 221, baseType: !98, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2782, file: !142, line: 222, baseType: !98, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2782, file: !142, line: 223, baseType: !98, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2782, file: !142, line: 224, baseType: !98, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2782, file: !142, line: 226, baseType: !98, size: 32, offset: 160)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2782, file: !142, line: 227, baseType: !20, size: 16, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2782, file: !142, line: 228, baseType: !20, size: 16, offset: 208)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2782, file: !142, line: 229, baseType: !98, size: 32, offset: 224)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2782, file: !142, line: 235, baseType: !2768, size: 64, offset: 256)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2782, file: !142, line: 236, baseType: !2775, size: 64, offset: 320)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2782, file: !142, line: 237, baseType: !2768, size: 64, offset: 384)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2782, file: !142, line: 238, baseType: !2775, size: 64, offset: 448)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2782, file: !142, line: 239, baseType: !2802, size: 4096, align: 512, offset: 512)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2778, size: 4096, align: 512, elements: !2803)
!2803 = !{!2804}
!2804 = !DISubrange(count: 8)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2778, file: !142, line: 161, baseType: !98, size: 32, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2778, file: !142, line: 162, baseType: !2807, size: 32, offset: 96)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !19, line: 32, baseType: !2808)
!2808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !31, line: 96, baseType: !16)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2778, file: !142, line: 163, baseType: !2810, size: 32, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !889, line: 274, baseType: !2811)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !889, line: 274, size: 32, elements: !2812)
!2812 = !{!2813}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2811, file: !889, line: 274, baseType: !893, size: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2778, file: !142, line: 164, baseType: !2775, size: 64, offset: 192)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2778, file: !142, line: 165, baseType: !2816, size: 128, offset: 256)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2764, line: 14, size: 128, elements: !2817)
!2817 = !{!2818}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2816, file: !2764, line: 15, baseType: !1289, size: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2778, file: !142, line: 166, baseType: !2820, size: 64, offset: 384)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!2768}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2778, file: !142, line: 167, baseType: !2768, size: 64, offset: 448)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2760, file: !142, line: 123, baseType: !77, size: 8, offset: 448)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2760, file: !142, line: 124, baseType: !77, size: 8, offset: 456)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2760, file: !142, line: 125, baseType: !77, size: 8, offset: 464)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2760, file: !142, line: 126, baseType: !77, size: 8, offset: 472)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2744, file: !1868, line: 671, baseType: !2760, size: 512, offset: 1216)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2744, file: !1868, line: 679, baseType: !2830, size: 64, offset: 1728)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2650, file: !1868, line: 800, baseType: !2832, size: 64, offset: 5248)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2834)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1868, line: 800, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2650, file: !1868, line: 809, baseType: !2836, size: 64, offset: 5312)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1868, line: 70, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2650, file: !1868, line: 825, baseType: !2839, size: 2048, align: 512, offset: 5632)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1868, line: 509, size: 2048, align: 512, elements: !2840)
!2840 = !{!2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2839, file: !1868, line: 511, baseType: !676, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2839, file: !1868, line: 512, baseType: !676, size: 64, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2839, file: !1868, line: 513, baseType: !676, size: 64, offset: 128)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2839, file: !1868, line: 514, baseType: !676, size: 64, offset: 192)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2839, file: !1868, line: 515, baseType: !676, size: 64, offset: 256)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2839, file: !1868, line: 516, baseType: !676, size: 64, offset: 320)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2839, file: !1868, line: 518, baseType: !676, size: 64, offset: 384)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2839, file: !1868, line: 519, baseType: !676, size: 64, offset: 448)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2839, file: !1868, line: 520, baseType: !392, size: 64, offset: 512)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2839, file: !1868, line: 522, baseType: !676, size: 64, offset: 576)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2839, file: !1868, line: 523, baseType: !676, size: 64, offset: 640)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2839, file: !1868, line: 524, baseType: !392, size: 64, offset: 704)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2839, file: !1868, line: 526, baseType: !392, size: 64, offset: 768)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2839, file: !1868, line: 527, baseType: !676, size: 64, offset: 832)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2839, file: !1868, line: 529, baseType: !676, size: 64, offset: 896)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2839, file: !1868, line: 530, baseType: !676, size: 64, offset: 960)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2839, file: !1868, line: 531, baseType: !676, size: 64, offset: 1024)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2839, file: !1868, line: 532, baseType: !676, size: 64, offset: 1088)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2839, file: !1868, line: 533, baseType: !676, size: 64, offset: 1152)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2839, file: !1868, line: 535, baseType: !676, size: 64, offset: 1216)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2839, file: !1868, line: 536, baseType: !676, size: 64, offset: 1280)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2839, file: !1868, line: 537, baseType: !676, size: 64, offset: 1344)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2839, file: !1868, line: 538, baseType: !676, size: 64, offset: 1408)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2839, file: !1868, line: 539, baseType: !676, size: 64, offset: 1472)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2839, file: !1868, line: 540, baseType: !676, size: 64, offset: 1536)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2839, file: !1868, line: 541, baseType: !676, size: 64, offset: 1600)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2839, file: !1868, line: 542, baseType: !676, size: 64, offset: 1664)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2839, file: !1868, line: 543, baseType: !676, size: 64, offset: 1728)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2650, file: !1868, line: 833, baseType: !98, size: 32, offset: 7680)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2650, file: !1868, line: 836, baseType: !98, size: 32, offset: 7712)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2650, file: !1868, line: 837, baseType: !16, size: 32, offset: 7744)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2650, file: !1868, line: 838, baseType: !2873, size: 64, offset: 7808)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2875)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2876, line: 19, baseType: !2877)
!2876 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2876, line: 19, size: 64, elements: !2878)
!2878 = !{!2879}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2877, file: !2876, line: 19, baseType: !436, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2650, file: !1868, line: 839, baseType: !2881, size: 64, offset: 7872)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2650, file: !1868, line: 840, baseType: !2875, size: 64, offset: 7936)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2650, file: !1868, line: 841, baseType: !14, size: 64, offset: 8000)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2650, file: !1868, line: 843, baseType: !20, size: 16, offset: 8064)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2650, file: !1868, line: 845, baseType: !20, size: 16, offset: 8080)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2650, file: !1868, line: 848, baseType: !16, size: 32, offset: 8096)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2650, file: !1868, line: 849, baseType: !2888, size: 32, offset: 8128)
!2888 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1868, line: 718, size: 32, elements: !2889)
!2889 = !{!2890, !2897}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2888, file: !1868, line: 724, baseType: !2891, size: 32)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2888, file: !1868, line: 719, size: 32, elements: !2892)
!2892 = !{!2893, !2894, !2895, !2896}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2891, file: !1868, line: 720, baseType: !77, size: 8)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2891, file: !1868, line: 721, baseType: !77, size: 8, offset: 8)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2891, file: !1868, line: 722, baseType: !77, size: 8, offset: 16)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2891, file: !1868, line: 723, baseType: !77, size: 8, offset: 24)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2888, file: !1868, line: 725, baseType: !726, size: 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2650, file: !1868, line: 850, baseType: !91, size: 128, offset: 8192)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2650, file: !1868, line: 851, baseType: !2900, size: 64, offset: 8320)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1868, line: 60, flags: DIFlagFwdDecl)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2650, file: !1868, line: 855, baseType: !33, size: 64, offset: 8384)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2650, file: !1868, line: 856, baseType: !77, size: 8, offset: 8448)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2650, file: !1868, line: 857, baseType: !77, size: 8, offset: 8456)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2650, file: !1868, line: 858, baseType: !16, size: 32, offset: 8480)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2650, file: !1868, line: 859, baseType: !91, size: 128, offset: 8512)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2650, file: !1868, line: 860, baseType: !16, size: 32, offset: 8640)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2650, file: !1868, line: 861, baseType: !91, size: 128, offset: 8704)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2650, file: !1868, line: 873, baseType: !2910, size: 256, offset: 8832)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1868, line: 376, size: 256, elements: !2911)
!2911 = !{!2912, !2913, !2914, !2915}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2910, file: !1868, line: 381, baseType: !33, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2910, file: !1868, line: 384, baseType: !678, size: 64, offset: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2910, file: !1868, line: 389, baseType: !678, size: 64, offset: 128)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2910, file: !1868, line: 392, baseType: !678, size: 64, offset: 192)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2650, file: !1868, line: 875, baseType: !91, size: 128, offset: 9088)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2650, file: !1868, line: 877, baseType: !2918, size: 320, offset: 9216)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2919, line: 86, size: 320, elements: !2920)
!2919 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2920 = !{!2921, !2922, !2923}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2918, file: !2919, line: 87, baseType: !16, size: 32)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2918, file: !2919, line: 88, baseType: !91, size: 128, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2918, file: !2919, line: 89, baseType: !91, size: 128, offset: 192)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2650, file: !1868, line: 878, baseType: !307, size: 192, align: 64, offset: 9536)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2650, file: !1868, line: 881, baseType: !1572, size: 64, offset: 9728)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2650, file: !1868, line: 882, baseType: !1572, size: 64, offset: 9792)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2650, file: !1868, line: 884, baseType: !16, size: 32, offset: 9856)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2650, file: !1868, line: 885, baseType: !16, size: 32, offset: 9888)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2650, file: !1868, line: 886, baseType: !16, size: 32, offset: 9920)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2650, file: !1868, line: 888, baseType: !16, size: 32, offset: 9952)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2650, file: !1868, line: 890, baseType: !33, size: 64, offset: 9984)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2650, file: !1868, line: 893, baseType: !98, size: 32, offset: 10048)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2650, file: !1868, line: 896, baseType: !98, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2650, file: !1868, line: 897, baseType: !98, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2650, file: !1868, line: 898, baseType: !98, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2650, file: !1868, line: 899, baseType: !98, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2650, file: !1868, line: 919, baseType: !98, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2650, file: !1868, line: 922, baseType: !98, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2650, file: !1868, line: 923, baseType: !98, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2650, file: !1868, line: 925, baseType: !98, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2650, file: !1868, line: 939, baseType: !98, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2650, file: !1868, line: 941, baseType: !98, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2650, file: !1868, line: 944, baseType: !98, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2650, file: !1868, line: 956, baseType: !98, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2650, file: !1868, line: 962, baseType: !98, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2650, file: !1868, line: 966, baseType: !98, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2650, file: !1868, line: 969, baseType: !33, size: 64, offset: 10176)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2650, file: !1868, line: 971, baseType: !2949, size: 448, offset: 10240)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !147, line: 25, size: 448, elements: !2950)
!2950 = !{!2951, !2952, !2957}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2949, file: !147, line: 26, baseType: !33, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2949, file: !147, line: 27, baseType: !2953, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!1036, !2956}
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, scope: !2949, file: !147, line: 28, baseType: !2958, size: 320, offset: 128)
!2958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2949, file: !147, line: 28, size: 320, elements: !2959)
!2959 = !{!2960, !2970, !2995}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2958, file: !147, line: 37, baseType: !2961, size: 320)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2958, file: !147, line: 30, size: 320, elements: !2962)
!2962 = !{!2963, !2965, !2966, !2967, !2968, !2969}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2961, file: !147, line: 31, baseType: !2964, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2961, file: !147, line: 32, baseType: !726, size: 32, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2961, file: !147, line: 33, baseType: !726, size: 32, offset: 96)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2961, file: !147, line: 34, baseType: !726, size: 32, offset: 128)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2961, file: !147, line: 35, baseType: !676, size: 64, offset: 192)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2961, file: !147, line: 36, baseType: !2964, size: 64, offset: 256)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2958, file: !147, line: 47, baseType: !2971, size: 192)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2958, file: !147, line: 39, size: 192, elements: !2972)
!2972 = !{!2973, !2974, !2975, !2994}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2971, file: !147, line: 40, baseType: !2807, size: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2971, file: !147, line: 41, baseType: !146, size: 32, offset: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, scope: !2971, file: !147, line: 42, baseType: !2976, size: 64, offset: 64)
!2976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2971, file: !147, line: 42, size: 64, elements: !2977)
!2977 = !{!2978, !2986}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2976, file: !147, line: 43, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2981, line: 7, size: 128, elements: !2982)
!2981 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2982 = !{!2983, !2985}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2980, file: !2981, line: 8, baseType: !2984, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !31, line: 93, baseType: !37)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2980, file: !2981, line: 9, baseType: !37, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2976, file: !147, line: 44, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2989, line: 7, size: 64, elements: !2990)
!2989 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2990 = !{!2991, !2993}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2988, file: !2989, line: 8, baseType: !2992, size: 32)
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2989, line: 5, baseType: !693)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2988, file: !2989, line: 9, baseType: !693, size: 32, offset: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2971, file: !147, line: 46, baseType: !676, size: 64, offset: 128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2958, file: !147, line: 55, baseType: !2996, size: 256)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2958, file: !147, line: 49, size: 256, elements: !2997)
!2997 = !{!2998, !3001, !3002, !3003, !3004}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2996, file: !147, line: 50, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !147, line: 14, flags: DIFlagFwdDecl)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2996, file: !147, line: 51, baseType: !16, size: 32, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2996, file: !147, line: 52, baseType: !16, size: 32, offset: 96)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2996, file: !147, line: 53, baseType: !33, size: 64, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2996, file: !147, line: 54, baseType: !33, size: 64, offset: 192)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2650, file: !1868, line: 973, baseType: !3006, size: 32, offset: 10688)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !19, line: 27, baseType: !3007)
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !31, line: 28, baseType: !16)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2650, file: !1868, line: 974, baseType: !3006, size: 32, offset: 10720)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2650, file: !1868, line: 978, baseType: !33, size: 64, offset: 10752)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2650, file: !1868, line: 987, baseType: !2649, size: 64, offset: 10816)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2650, file: !1868, line: 990, baseType: !2649, size: 64, offset: 10880)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2650, file: !1868, line: 995, baseType: !91, size: 128, offset: 10944)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2650, file: !1868, line: 996, baseType: !91, size: 128, offset: 11072)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2650, file: !1868, line: 997, baseType: !2649, size: 64, offset: 11200)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2650, file: !1868, line: 1005, baseType: !91, size: 128, offset: 11264)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2650, file: !1868, line: 1006, baseType: !91, size: 128, offset: 11392)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2650, file: !1868, line: 1009, baseType: !624, size: 64, offset: 11520)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2650, file: !1868, line: 1010, baseType: !3019, size: 512, offset: 11584)
!3019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 512, elements: !378)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2650, file: !1868, line: 1011, baseType: !91, size: 128, offset: 12096)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2650, file: !1868, line: 1012, baseType: !91, size: 128, offset: 12224)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2650, file: !1868, line: 1014, baseType: !272, size: 64, offset: 12352)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2650, file: !1868, line: 1017, baseType: !2078, size: 64, offset: 12416)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2650, file: !1868, line: 1020, baseType: !2078, size: 64, offset: 12480)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2650, file: !1868, line: 1023, baseType: !14, size: 64, offset: 12544)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2650, file: !1868, line: 1025, baseType: !676, size: 64, offset: 12608)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2650, file: !1868, line: 1026, baseType: !676, size: 64, offset: 12672)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2650, file: !1868, line: 1031, baseType: !676, size: 64, offset: 12736)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2650, file: !1868, line: 1032, baseType: !3030, size: 192, offset: 12800)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1868, line: 324, size: 192, elements: !3031)
!3031 = !{!3032, !3033, !3034}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3030, file: !1868, line: 326, baseType: !676, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3030, file: !1868, line: 327, baseType: !676, size: 64, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3030, file: !1868, line: 328, baseType: !282, size: 32, offset: 128)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2650, file: !1868, line: 1041, baseType: !33, size: 64, offset: 12992)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2650, file: !1868, line: 1042, baseType: !33, size: 64, offset: 13056)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2650, file: !1868, line: 1045, baseType: !676, size: 64, offset: 13120)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2650, file: !1868, line: 1048, baseType: !676, size: 64, offset: 13184)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2650, file: !1868, line: 1051, baseType: !33, size: 64, offset: 13248)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2650, file: !1868, line: 1052, baseType: !33, size: 64, offset: 13312)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2650, file: !1868, line: 1055, baseType: !3042, size: 640, offset: 13376)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3043, line: 132, size: 640, elements: !3044)
!3043 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3044 = !{!3045, !3051, !3052}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3042, file: !3043, line: 133, baseType: !3046, size: 576)
!3046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3047, size: 576, elements: !620)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3043, line: 117, size: 192, elements: !3048)
!3048 = !{!3049, !3050}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3047, file: !3043, line: 118, baseType: !676, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3047, file: !3043, line: 119, baseType: !2816, size: 128, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3042, file: !3043, line: 134, baseType: !98, size: 32, offset: 576)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3042, file: !3043, line: 135, baseType: !98, size: 32, offset: 608)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2650, file: !1868, line: 1058, baseType: !3054, size: 448, offset: 14016)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3043, line: 144, size: 448, elements: !3055)
!3055 = !{!3056, !3057, !3058}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3054, file: !3043, line: 145, baseType: !263, size: 128, align: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3054, file: !3043, line: 146, baseType: !382, size: 256, offset: 128)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3054, file: !3043, line: 147, baseType: !98, size: 32, offset: 384)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2650, file: !1868, line: 1064, baseType: !655, size: 64, offset: 14464)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2650, file: !1868, line: 1067, baseType: !655, size: 64, offset: 14528)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2650, file: !1868, line: 1070, baseType: !655, size: 64, offset: 14592)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2650, file: !1868, line: 1074, baseType: !685, size: 64, offset: 14656)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2650, file: !1868, line: 1084, baseType: !3064, size: 128, offset: 14720)
!3064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !3065)
!3065 = !{!3066}
!3066 = !DISubrange(count: 16)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2650, file: !1868, line: 1086, baseType: !3068, size: 64, offset: 14848)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1868, line: 55, flags: DIFlagFwdDecl)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2650, file: !1868, line: 1089, baseType: !3071, size: 64, offset: 14912)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3072, line: 12, size: 64, elements: !3073)
!3072 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3073 = !{!3074}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3071, file: !3072, line: 13, baseType: !3075, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3072, line: 8, flags: DIFlagFwdDecl)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2650, file: !1868, line: 1090, baseType: !3078, size: 128, offset: 14976)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3079, line: 13, size: 128, elements: !3080)
!3079 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3080 = !{!3081}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3078, file: !3079, line: 14, baseType: !91, size: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2650, file: !1868, line: 1097, baseType: !3083, size: 64, offset: 15104)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1868, line: 50, flags: DIFlagFwdDecl)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2650, file: !1868, line: 1100, baseType: !3086, size: 64, offset: 15168)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1868, line: 1100, flags: DIFlagFwdDecl)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2650, file: !1868, line: 1103, baseType: !3089, size: 64, offset: 15232)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1868, line: 53, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2650, file: !1868, line: 1107, baseType: !3092, size: 64, offset: 15296)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1868, line: 56, flags: DIFlagFwdDecl)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2650, file: !1868, line: 1110, baseType: !3095, size: 64, offset: 15360)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3097, line: 93, size: 8768, elements: !3098)
!3097 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3098 = !{!3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3146, !3155, !3156, !3158, !3159, !3160, !3163, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3201, !3202, !3209, !3219, !3222, !3223, !3226, !3227, !3228, !3229, !3230, !3231}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3096, file: !3097, line: 94, baseType: !628, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3096, file: !3097, line: 95, baseType: !43, size: 32, offset: 32)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3096, file: !3097, line: 96, baseType: !16, size: 32, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3096, file: !3097, line: 97, baseType: !16, size: 32, offset: 96)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3096, file: !3097, line: 98, baseType: !91, size: 128, offset: 128)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3096, file: !3097, line: 100, baseType: !48, size: 192, offset: 256)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3096, file: !3097, line: 103, baseType: !2649, size: 64, offset: 448)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3096, file: !3097, line: 106, baseType: !3107, size: 192, offset: 512)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !849, line: 32, size: 192, elements: !3108)
!3108 = !{!3109, !3110}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3107, file: !849, line: 33, baseType: !91, size: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3107, file: !849, line: 34, baseType: !3111, size: 64, offset: 128)
!3111 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3112, line: 25, baseType: !3113)
!3112 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3112, line: 23, size: 64, elements: !3114)
!3114 = !{!3115}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3113, file: !3112, line: 24, baseType: !436, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3096, file: !3097, line: 109, baseType: !349, size: 64, offset: 704)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3096, file: !3097, line: 112, baseType: !16, size: 32, offset: 768)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3096, file: !3097, line: 114, baseType: !16, size: 32, offset: 800)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3096, file: !3097, line: 115, baseType: !2649, size: 64, offset: 832)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3096, file: !3097, line: 118, baseType: !16, size: 32, offset: 896)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3096, file: !3097, line: 119, baseType: !98, size: 32, offset: 928)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3096, file: !3097, line: 121, baseType: !3123, size: 64, offset: 960)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3097, line: 80, size: 448, elements: !3125)
!3125 = !{!3126, !3127, !3133}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3124, file: !3097, line: 81, baseType: !43, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3124, file: !3097, line: 82, baseType: !3128, size: 128, offset: 64)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3097, line: 75, size: 128, elements: !3129)
!3129 = !{!3130, !3131}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3128, file: !3097, line: 76, baseType: !2649, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3128, file: !3097, line: 77, baseType: !3132, size: 64, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3124, file: !3097, line: 83, baseType: !273, size: 256, offset: 192)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3096, file: !3097, line: 132, baseType: !98, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3096, file: !3097, line: 133, baseType: !98, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3096, file: !3097, line: 138, baseType: !98, size: 32, offset: 1056)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3096, file: !3097, line: 139, baseType: !91, size: 128, offset: 1088)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3096, file: !3097, line: 142, baseType: !2760, size: 512, offset: 1216)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3096, file: !3097, line: 143, baseType: !2768, size: 64, offset: 1728)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3096, file: !3097, line: 150, baseType: !3141, size: 256, offset: 1792)
!3141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3142, size: 256, elements: !449)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3097, line: 38, size: 128, elements: !3143)
!3143 = !{!3144, !3145}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3142, file: !3097, line: 39, baseType: !676, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3142, file: !3097, line: 40, baseType: !676, size: 64, offset: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3096, file: !3097, line: 156, baseType: !3147, size: 192, offset: 2048)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3097, line: 66, size: 192, elements: !3148)
!3148 = !{!3149}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3147, file: !3097, line: 67, baseType: !3150, size: 192)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3097, line: 47, size: 192, elements: !3151)
!3151 = !{!3152, !3153, !3154}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3150, file: !3097, line: 48, baseType: !388, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3150, file: !3097, line: 49, baseType: !388, size: 64, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3150, file: !3097, line: 50, baseType: !388, size: 64, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3096, file: !3097, line: 160, baseType: !3042, size: 640, offset: 2240)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3096, file: !3097, line: 163, baseType: !3157, size: 256, offset: 2880)
!3157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !624, size: 256, elements: !378)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3096, file: !3097, line: 169, baseType: !624, size: 64, offset: 3136)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3096, file: !3097, line: 172, baseType: !16, size: 32, offset: 3200)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3096, file: !3097, line: 174, baseType: !3161, size: 64, offset: 3264)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3097, line: 174, flags: DIFlagFwdDecl)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3096, file: !3097, line: 185, baseType: !3164, size: 64, offset: 3328)
!3164 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !889, line: 860, baseType: !3165)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !889, line: 853, size: 64, elements: !3166)
!3166 = !{!3167, !3168}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3165, file: !889, line: 858, baseType: !888, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3165, file: !889, line: 859, baseType: !53, size: 32, offset: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3096, file: !3097, line: 186, baseType: !676, size: 64, offset: 3392)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3096, file: !3097, line: 186, baseType: !676, size: 64, offset: 3456)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3096, file: !3097, line: 186, baseType: !676, size: 64, offset: 3520)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3096, file: !3097, line: 186, baseType: !676, size: 64, offset: 3584)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3096, file: !3097, line: 187, baseType: !676, size: 64, offset: 3648)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3096, file: !3097, line: 188, baseType: !676, size: 64, offset: 3712)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3096, file: !3097, line: 189, baseType: !3030, size: 192, offset: 3776)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3096, file: !3097, line: 190, baseType: !33, size: 64, offset: 3968)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3096, file: !3097, line: 190, baseType: !33, size: 64, offset: 4032)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3096, file: !3097, line: 190, baseType: !33, size: 64, offset: 4096)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3096, file: !3097, line: 190, baseType: !33, size: 64, offset: 4160)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3096, file: !3097, line: 191, baseType: !33, size: 64, offset: 4224)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3096, file: !3097, line: 191, baseType: !33, size: 64, offset: 4288)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3096, file: !3097, line: 191, baseType: !33, size: 64, offset: 4352)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3096, file: !3097, line: 191, baseType: !33, size: 64, offset: 4416)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3096, file: !3097, line: 192, baseType: !33, size: 64, offset: 4480)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3096, file: !3097, line: 192, baseType: !33, size: 64, offset: 4544)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3096, file: !3097, line: 192, baseType: !33, size: 64, offset: 4608)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3096, file: !3097, line: 192, baseType: !33, size: 64, offset: 4672)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3096, file: !3097, line: 193, baseType: !33, size: 64, offset: 4736)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3096, file: !3097, line: 193, baseType: !33, size: 64, offset: 4800)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3096, file: !3097, line: 194, baseType: !3191, size: 448, offset: 4864)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3192, line: 12, size: 448, elements: !3193)
!3192 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3193 = !{!3194, !3195, !3196, !3197, !3198, !3199, !3200}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3191, file: !3192, line: 15, baseType: !676, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3191, file: !3192, line: 17, baseType: !676, size: 64, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3191, file: !3192, line: 19, baseType: !676, size: 64, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3191, file: !3192, line: 21, baseType: !676, size: 64, offset: 192)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3191, file: !3192, line: 29, baseType: !676, size: 64, offset: 256)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3191, file: !3192, line: 35, baseType: !676, size: 64, offset: 320)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3191, file: !3192, line: 44, baseType: !676, size: 64, offset: 384)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3096, file: !3097, line: 202, baseType: !678, size: 64, offset: 5312)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3096, file: !3097, line: 213, baseType: !3203, size: 2048, offset: 5376)
!3203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3204, size: 2048, elements: !3065)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3205, line: 43, size: 128, elements: !3206)
!3205 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3206 = !{!3207, !3208}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3204, file: !3205, line: 44, baseType: !32, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3204, file: !3205, line: 45, baseType: !32, size: 64, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3096, file: !3097, line: 216, baseType: !3210, size: 448, offset: 7424)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3097, line: 30, size: 448, elements: !3211)
!3211 = !{!3212, !3213, !3214, !3215, !3216, !3217, !3218}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3210, file: !3097, line: 31, baseType: !16, size: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3210, file: !3097, line: 32, baseType: !1036, size: 64, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3210, file: !3097, line: 33, baseType: !33, size: 64, offset: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3210, file: !3097, line: 34, baseType: !676, size: 64, offset: 192)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3210, file: !3097, line: 34, baseType: !676, size: 64, offset: 256)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3210, file: !3097, line: 35, baseType: !33, size: 64, offset: 320)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3210, file: !3097, line: 35, baseType: !33, size: 64, offset: 384)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3096, file: !3097, line: 219, baseType: !3220, size: 64, offset: 7872)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3097, line: 219, flags: DIFlagFwdDecl)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3096, file: !3097, line: 222, baseType: !98, size: 32, offset: 7936)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3096, file: !3097, line: 223, baseType: !3224, size: 64, offset: 8000)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3097, line: 223, flags: DIFlagFwdDecl)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3096, file: !3097, line: 230, baseType: !760, size: 8, offset: 8064)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3096, file: !3097, line: 231, baseType: !493, size: 16, offset: 8080)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3096, file: !3097, line: 232, baseType: !493, size: 16, offset: 8096)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3096, file: !3097, line: 234, baseType: !1572, size: 64, offset: 8128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3096, file: !3097, line: 237, baseType: !382, size: 256, offset: 8192)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3096, file: !3097, line: 243, baseType: !701, size: 320, offset: 8448)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2650, file: !1868, line: 1111, baseType: !3233, size: 64, offset: 15424)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3097, line: 20, size: 16640, elements: !3235)
!3235 = !{!3236, !3237, !3238, !3239}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3234, file: !3097, line: 21, baseType: !53, size: 32)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3234, file: !3097, line: 22, baseType: !628, size: 32, offset: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3234, file: !3097, line: 23, baseType: !48, size: 192, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3234, file: !3097, line: 24, baseType: !3240, size: 16384, offset: 256)
!3240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3241, size: 16384, elements: !1219)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !849, line: 51, size: 256, elements: !3242)
!3242 = !{!3243}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3241, file: !849, line: 52, baseType: !3244, size: 256)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !849, line: 37, size: 256, elements: !3245)
!3245 = !{!3246, !3253, !3254, !3258}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3244, file: !849, line: 39, baseType: !3247, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3248, line: 83, baseType: !3249)
!3248 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3248, line: 82, baseType: !3251)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{null, !16}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3244, file: !849, line: 40, baseType: !33, size: 64, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3244, file: !849, line: 46, baseType: !3255, size: 64, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3248, line: 86, baseType: !3256)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3248, line: 85, baseType: !242)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3244, file: !849, line: 48, baseType: !3111, size: 64, offset: 192)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2650, file: !1868, line: 1112, baseType: !3111, size: 64, offset: 15488)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2650, file: !1868, line: 1113, baseType: !3111, size: 64, offset: 15552)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2650, file: !1868, line: 1115, baseType: !3111, size: 64, offset: 15616)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2650, file: !1868, line: 1116, baseType: !3107, size: 192, offset: 15680)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2650, file: !1868, line: 1117, baseType: !33, size: 64, offset: 15872)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2650, file: !1868, line: 1118, baseType: !29, size: 64, offset: 15936)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2650, file: !1868, line: 1119, baseType: !98, size: 32, offset: 16000)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2650, file: !1868, line: 1121, baseType: !266, size: 64, offset: 16064)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2650, file: !1868, line: 1125, baseType: !3268, size: 64, offset: 16128)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1868, line: 43, flags: DIFlagFwdDecl)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2650, file: !1868, line: 1127, baseType: !321, size: 32, offset: 16192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2650, file: !1868, line: 1128, baseType: !98, size: 32, offset: 16224)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2650, file: !1868, line: 1130, baseType: !3273, size: 128, offset: 16256)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3274, line: 37, size: 128, elements: !3275)
!3274 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3275 = !{!3276, !3277, !3278}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3273, file: !3274, line: 38, baseType: !16, size: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3273, file: !3274, line: 39, baseType: !43, size: 32, offset: 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3273, file: !3274, line: 40, baseType: !3279, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3274, line: 24, flags: DIFlagFwdDecl)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2650, file: !1868, line: 1131, baseType: !3282, size: 256, offset: 16384)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3283, line: 12, size: 256, elements: !3284)
!3283 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3284 = !{!3285, !3286, !3287, !3288}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3282, file: !3283, line: 13, baseType: !771, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3282, file: !3283, line: 14, baseType: !33, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3282, file: !3283, line: 15, baseType: !33, size: 64, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3282, file: !3283, line: 16, baseType: !760, size: 8, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2650, file: !1868, line: 1134, baseType: !676, size: 64, offset: 16640)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2650, file: !1868, line: 1135, baseType: !676, size: 64, offset: 16704)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2650, file: !1868, line: 1138, baseType: !53, size: 32, offset: 16768)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2650, file: !1868, line: 1141, baseType: !282, size: 32, offset: 16800)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2650, file: !1868, line: 1143, baseType: !3294, size: 64, offset: 16832)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1868, line: 735, size: 64, elements: !3295)
!3295 = !{!3296}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3294, file: !1868, line: 736, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2650, file: !1868, line: 1147, baseType: !1289, size: 128, offset: 16896)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2650, file: !1868, line: 1149, baseType: !2649, size: 64, offset: 17024)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2650, file: !1868, line: 1151, baseType: !3301, size: 64, offset: 17088)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1868, line: 1151, flags: DIFlagFwdDecl)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2650, file: !1868, line: 1188, baseType: !14, size: 64, offset: 17152)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2650, file: !1868, line: 1191, baseType: !3305, size: 64, offset: 17216)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1868, line: 44, flags: DIFlagFwdDecl)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2650, file: !1868, line: 1194, baseType: !3308, size: 64, offset: 17280)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1868, line: 45, flags: DIFlagFwdDecl)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2650, file: !1868, line: 1197, baseType: !3311, size: 64, offset: 17344)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1868, line: 61, flags: DIFlagFwdDecl)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2650, file: !1868, line: 1199, baseType: !3314, size: 64, offset: 17408)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3316, line: 99, size: 128, elements: !3317)
!3316 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3317 = !{!3318, !3319, !3320}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3315, file: !3316, line: 100, baseType: !386, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3315, file: !3316, line: 101, baseType: !43, size: 32, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3315, file: !3316, line: 103, baseType: !20, size: 16, offset: 96)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2650, file: !1868, line: 1202, baseType: !3322, size: 64, offset: 17472)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1868, line: 48, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2650, file: !1868, line: 1205, baseType: !33, size: 64, offset: 17536)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2650, file: !1868, line: 1206, baseType: !3326, size: 64, offset: 17600)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !849, line: 14, baseType: !3328)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !849, line: 12, size: 384, elements: !3329)
!3329 = !{!3330}
!3330 = !DIDerivedType(tag: DW_TAG_member, scope: !3328, file: !849, line: 13, baseType: !3331, size: 384)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3328, file: !849, line: 13, size: 384, elements: !3332)
!3332 = !{!3333, !3334, !3335, !3336}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3331, file: !849, line: 13, baseType: !16, size: 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3331, file: !849, line: 13, baseType: !16, size: 32, offset: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3331, file: !849, line: 13, baseType: !16, size: 32, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3331, file: !849, line: 13, baseType: !3337, size: 256, offset: 128)
!3337 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3338, line: 37, size: 256, elements: !3339)
!3338 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3339 = !{!3340, !3345, !3358, !3364, !3373, !3400, !3405}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3337, file: !3338, line: 42, baseType: !3341, size: 64)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3337, file: !3338, line: 39, size: 64, elements: !3342)
!3342 = !{!3343, !3344}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3341, file: !3338, line: 40, baseType: !3007, size: 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3341, file: !3338, line: 41, baseType: !327, size: 32, offset: 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3337, file: !3338, line: 50, baseType: !3346, size: 192)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3337, file: !3338, line: 45, size: 192, elements: !3347)
!3347 = !{!3348, !3350, !3351, !3357}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3346, file: !3338, line: 46, baseType: !3349, size: 32)
!3349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !31, line: 95, baseType: !16)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3346, file: !3338, line: 47, baseType: !16, size: 32, offset: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3346, file: !3338, line: 48, baseType: !3352, size: 64, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3338, line: 11, baseType: !3353)
!3353 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3338, line: 8, size: 64, elements: !3354)
!3354 = !{!3355, !3356}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3353, file: !3338, line: 9, baseType: !16, size: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3353, file: !3338, line: 10, baseType: !14, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3346, file: !3338, line: 49, baseType: !16, size: 32, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3337, file: !3338, line: 57, baseType: !3359, size: 128)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3337, file: !3338, line: 53, size: 128, elements: !3360)
!3360 = !{!3361, !3362, !3363}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3359, file: !3338, line: 54, baseType: !3007, size: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3359, file: !3338, line: 55, baseType: !327, size: 32, offset: 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3359, file: !3338, line: 56, baseType: !3352, size: 64, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3337, file: !3338, line: 66, baseType: !3365, size: 256)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3337, file: !3338, line: 60, size: 256, elements: !3366)
!3366 = !{!3367, !3368, !3369, !3370, !3372}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3365, file: !3338, line: 61, baseType: !3007, size: 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3365, file: !3338, line: 62, baseType: !327, size: 32, offset: 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3365, file: !3338, line: 63, baseType: !16, size: 32, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3365, file: !3338, line: 64, baseType: !3371, size: 64, offset: 128)
!3371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !31, line: 94, baseType: !1077)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3365, file: !3338, line: 65, baseType: !3371, size: 64, offset: 192)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3337, file: !3338, line: 105, baseType: !3374, size: 256)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3337, file: !3338, line: 69, size: 256, elements: !3375)
!3375 = !{!3376, !3377}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3374, file: !3338, line: 70, baseType: !14, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, scope: !3374, file: !3338, line: 79, baseType: !3378, size: 192, offset: 64)
!3378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3374, file: !3338, line: 79, size: 192, elements: !3379)
!3379 = !{!3380, !3381, !3382, !3389, !3394}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3378, file: !3338, line: 81, baseType: !16, size: 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3378, file: !3338, line: 86, baseType: !493, size: 16)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3378, file: !3338, line: 92, baseType: !3383, size: 192)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3378, file: !3338, line: 88, size: 192, elements: !3384)
!3384 = !{!3385, !3387, !3388}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3383, file: !3338, line: 89, baseType: !3386, size: 64)
!3386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !2803)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3383, file: !3338, line: 90, baseType: !14, size: 64, offset: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3383, file: !3338, line: 91, baseType: !14, size: 64, offset: 128)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3378, file: !3338, line: 97, baseType: !3390, size: 96)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3378, file: !3338, line: 94, size: 96, elements: !3391)
!3391 = !{!3392, !3393}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3390, file: !3338, line: 95, baseType: !3386, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3390, file: !3338, line: 96, baseType: !468, size: 32, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3378, file: !3338, line: 103, baseType: !3395, size: 128)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3378, file: !3338, line: 99, size: 128, elements: !3396)
!3396 = !{!3397, !3398, !3399}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3395, file: !3338, line: 100, baseType: !33, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3395, file: !3338, line: 101, baseType: !468, size: 32, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3395, file: !3338, line: 102, baseType: !468, size: 32, offset: 96)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3337, file: !3338, line: 111, baseType: !3401, size: 128)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3337, file: !3338, line: 108, size: 128, elements: !3402)
!3402 = !{!3403, !3404}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3401, file: !3338, line: 109, baseType: !1036, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3401, file: !3338, line: 110, baseType: !16, size: 32, offset: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3337, file: !3338, line: 118, baseType: !3406, size: 128)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3337, file: !3338, line: 114, size: 128, elements: !3407)
!3407 = !{!3408, !3409, !3410}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3406, file: !3338, line: 115, baseType: !14, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3406, file: !3338, line: 116, baseType: !16, size: 32, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3406, file: !3338, line: 117, baseType: !98, size: 32, offset: 96)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2650, file: !1868, line: 1208, baseType: !3191, size: 448, offset: 17664)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2650, file: !1868, line: 1215, baseType: !676, size: 64, offset: 18112)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2650, file: !1868, line: 1217, baseType: !676, size: 64, offset: 18176)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2650, file: !1868, line: 1219, baseType: !676, size: 64, offset: 18240)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2650, file: !1868, line: 1223, baseType: !3416, size: 64, offset: 18304)
!3416 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3417, line: 99, baseType: !3418)
!3417 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3417, line: 99, size: 64, elements: !3419)
!3419 = !{!3420}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3418, file: !3417, line: 99, baseType: !436, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2650, file: !1868, line: 1225, baseType: !888, size: 32, offset: 18368)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2650, file: !1868, line: 1226, baseType: !16, size: 32, offset: 18400)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2650, file: !1868, line: 1227, baseType: !16, size: 32, offset: 18432)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2650, file: !1868, line: 1231, baseType: !3425, size: 64, offset: 18496)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1868, line: 1231, flags: DIFlagFwdDecl)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2650, file: !1868, line: 1233, baseType: !91, size: 128, offset: 18560)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2650, file: !1868, line: 1240, baseType: !3429, size: 64, offset: 18688)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1868, line: 62, flags: DIFlagFwdDecl)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2650, file: !1868, line: 1242, baseType: !3432, size: 64, offset: 18752)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1868, line: 1242, flags: DIFlagFwdDecl)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2650, file: !1868, line: 1244, baseType: !91, size: 128, offset: 18816)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2650, file: !1868, line: 1245, baseType: !3436, size: 64, offset: 18944)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1868, line: 51, flags: DIFlagFwdDecl)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2650, file: !1868, line: 1246, baseType: !382, size: 256, offset: 19008)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2650, file: !1868, line: 1247, baseType: !98, size: 32, offset: 19264)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2650, file: !1868, line: 1250, baseType: !3441, size: 64, offset: 19328)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1868, line: 57, flags: DIFlagFwdDecl)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2650, file: !1868, line: 1251, baseType: !382, size: 256, offset: 19392)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2650, file: !1868, line: 1252, baseType: !91, size: 128, offset: 19648)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2650, file: !1868, line: 1259, baseType: !1776, size: 64, offset: 19776)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2650, file: !1868, line: 1260, baseType: !493, size: 16, offset: 19840)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2650, file: !1868, line: 1261, baseType: !493, size: 16, offset: 19856)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2650, file: !1868, line: 1314, baseType: !3449, size: 64, offset: 19904)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3451, line: 62, size: 256, align: 256, elements: !3452)
!3451 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3452 = !{!3453, !3454, !3455, !3456, !3457, !3458, !3459}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3450, file: !3451, line: 75, baseType: !468, size: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3450, file: !3451, line: 90, baseType: !468, size: 32, offset: 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3450, file: !3451, line: 112, baseType: !677, size: 64, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3450, file: !3451, line: 132, baseType: !468, size: 32, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3450, file: !3451, line: 140, baseType: !468, size: 32, offset: 160)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3450, file: !3451, line: 149, baseType: !468, size: 32, offset: 192)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3450, file: !3451, line: 154, baseType: !3460, offset: 224)
!3460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, elements: !648)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2650, file: !1868, line: 1315, baseType: !726, size: 32, offset: 19968)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2650, file: !1868, line: 1316, baseType: !726, size: 32, offset: 20000)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2650, file: !1868, line: 1321, baseType: !33, size: 64, offset: 20032)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2650, file: !1868, line: 1325, baseType: !16, size: 32, offset: 20096)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2650, file: !1868, line: 1326, baseType: !16, size: 32, offset: 20128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2650, file: !1868, line: 1327, baseType: !16, size: 32, offset: 20160)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2650, file: !1868, line: 1328, baseType: !16, size: 32, offset: 20192)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2650, file: !1868, line: 1329, baseType: !263, size: 128, align: 64, offset: 20224)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2650, file: !1868, line: 1332, baseType: !3470, size: 128, offset: 20352)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3471, line: 51, size: 128, elements: !3472)
!3471 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3472 = !{!3473, !3478, !3479}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3470, file: !3471, line: 60, baseType: !3474, size: 64)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3475, line: 7, size: 64, elements: !3476)
!3475 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3476 = !{!3477}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3474, file: !3475, line: 12, baseType: !2877, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3470, file: !3471, line: 63, baseType: !760, size: 8, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3470, file: !3471, line: 70, baseType: !760, size: 8, offset: 72)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2650, file: !1868, line: 1335, baseType: !3481, size: 64, offset: 20480)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1868, line: 59, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2650, file: !1868, line: 1337, baseType: !3484, size: 128, offset: 20544)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3471, line: 39, size: 128, elements: !3485)
!3485 = !{!3486, !3487, !3488}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3484, file: !3471, line: 40, baseType: !1304, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3484, file: !3471, line: 42, baseType: !468, size: 32, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3484, file: !3471, line: 43, baseType: !468, size: 32, offset: 96)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2650, file: !1868, line: 1340, baseType: !3490, size: 64, offset: 20672)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1868, line: 69, flags: DIFlagFwdDecl)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2650, file: !1868, line: 1351, baseType: !16, size: 32, offset: 20736)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2650, file: !1868, line: 1352, baseType: !16, size: 32, offset: 20768)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2650, file: !1868, line: 1354, baseType: !33, size: 64, offset: 20800)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2650, file: !1868, line: 1364, baseType: !676, size: 64, offset: 20864)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2650, file: !1868, line: 1365, baseType: !676, size: 64, offset: 20928)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2650, file: !1868, line: 1412, baseType: !33, size: 64, offset: 20992)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2650, file: !1868, line: 1453, baseType: !3499, size: 64, offset: 21056)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1868, line: 1453, flags: DIFlagFwdDecl)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2650, file: !1868, line: 1457, baseType: !3502, size: 64, offset: 21120)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !153, line: 61, size: 576, elements: !3504)
!3504 = !{!3505, !3506, !3525, !3528, !3529, !3562, !3572}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3503, file: !153, line: 62, baseType: !152, size: 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, scope: !3503, file: !153, line: 64, baseType: !3507, size: 192, offset: 64)
!3507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3503, file: !153, line: 64, size: 192, elements: !3508)
!3508 = !{!3509, !3520}
!3509 = !DIDerivedType(tag: DW_TAG_member, scope: !3507, file: !153, line: 65, baseType: !3510, size: 192)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3507, file: !153, line: 65, size: 192, elements: !3511)
!3511 = !{!3512, !3519}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3510, file: !153, line: 66, baseType: !3513, size: 128)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3514, line: 50, size: 128, elements: !3515)
!3514 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3515 = !{!3516, !3517, !3518}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3513, file: !3514, line: 52, baseType: !33, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3513, file: !3514, line: 54, baseType: !98, size: 32, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3513, file: !3514, line: 55, baseType: !98, size: 32, offset: 96)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3510, file: !153, line: 67, baseType: !33, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, scope: !3507, file: !153, line: 70, baseType: !3521, size: 192)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3507, file: !153, line: 70, size: 192, elements: !3522)
!3522 = !{!3523, !3524}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3521, file: !153, line: 71, baseType: !263, size: 128, align: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3521, file: !153, line: 72, baseType: !33, size: 64, offset: 128)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3503, file: !153, line: 76, baseType: !3526, size: 64, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !153, line: 76, flags: DIFlagFwdDecl)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3503, file: !153, line: 77, baseType: !33, size: 64, offset: 320)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3503, file: !153, line: 79, baseType: !3530, size: 64, offset: 384)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3514, line: 25, size: 256, elements: !3532)
!3532 = !{!3533, !3539, !3543}
!3533 = !DIDerivedType(tag: DW_TAG_member, scope: !3531, file: !3514, line: 26, baseType: !3534, size: 128)
!3534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3531, file: !3514, line: 26, size: 128, elements: !3535)
!3535 = !{!3536, !3538}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3534, file: !3514, line: 27, baseType: !3537, size: 128)
!3537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 128, elements: !3065)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3534, file: !3514, line: 28, baseType: !3537, size: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3531, file: !3514, line: 31, baseType: !3540, size: 64, offset: 128)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3542)
!3542 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3514, line: 23, flags: DIFlagFwdDecl)
!3543 = !DIDerivedType(tag: DW_TAG_member, scope: !3531, file: !3514, line: 33, baseType: !3544, size: 64, offset: 192)
!3544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3531, file: !3514, line: 33, size: 64, elements: !3545)
!3545 = !{!3546, !3552, !3557}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3544, file: !3514, line: 38, baseType: !3547, size: 64)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3544, file: !3514, line: 34, size: 64, elements: !3548)
!3548 = !{!3549, !3550, !3551}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3547, file: !3514, line: 35, baseType: !693, size: 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3547, file: !3514, line: 36, baseType: !77, size: 8, offset: 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3547, file: !3514, line: 37, baseType: !77, size: 8, offset: 40)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3544, file: !3514, line: 42, baseType: !3553, size: 16)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3544, file: !3514, line: 39, size: 16, elements: !3554)
!3554 = !{!3555, !3556}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3553, file: !3514, line: 40, baseType: !77, size: 8)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3553, file: !3514, line: 41, baseType: !77, size: 8, offset: 8)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3544, file: !3514, line: 46, baseType: !3558, size: 16)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3544, file: !3514, line: 43, size: 16, elements: !3559)
!3559 = !{!3560, !3561}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3558, file: !3514, line: 44, baseType: !77, size: 8)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3558, file: !3514, line: 45, baseType: !77, size: 8, offset: 8)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3503, file: !153, line: 81, baseType: !3563, size: 64, offset: 448)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !153, line: 85, size: 384, elements: !3565)
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3564, file: !153, line: 86, baseType: !3526, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3564, file: !153, line: 87, baseType: !33, size: 64, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3564, file: !153, line: 88, baseType: !33, size: 64, offset: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3564, file: !153, line: 89, baseType: !33, size: 64, offset: 192)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3564, file: !153, line: 90, baseType: !760, size: 8, offset: 256)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3564, file: !153, line: 92, baseType: !3563, size: 64, offset: 320)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3503, file: !153, line: 82, baseType: !98, size: 32, offset: 512)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2650, file: !1868, line: 1463, baseType: !3574, offset: 21184)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1868, line: 739, elements: !410)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2650, file: !1868, line: 1470, baseType: !263, size: 128, align: 64, offset: 21184)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2650, file: !1868, line: 1471, baseType: !628, size: 32, offset: 21312)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2650, file: !1868, line: 1472, baseType: !16, size: 32, offset: 21344)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2650, file: !1868, line: 1474, baseType: !2649, size: 64, offset: 21376)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2650, file: !1868, line: 1475, baseType: !2178, size: 320, offset: 21440)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2650, file: !1868, line: 1478, baseType: !3581, size: 64, offset: 21760)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1868, line: 1478, flags: DIFlagFwdDecl)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2650, file: !1868, line: 1482, baseType: !628, size: 32, offset: 21824)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2650, file: !1868, line: 1489, baseType: !14, size: 64, offset: 21888)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2650, file: !1868, line: 1504, baseType: !14, size: 64, offset: 21952)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2650, file: !1868, line: 1505, baseType: !677, size: 64, offset: 22016)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2650, file: !1868, line: 1506, baseType: !676, size: 64, offset: 22080)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2650, file: !1868, line: 1507, baseType: !677, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2650, file: !1868, line: 1508, baseType: !677, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2650, file: !1868, line: 1509, baseType: !677, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2650, file: !1868, line: 1510, baseType: !263, size: 128, align: 64, offset: 22208)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2650, file: !1868, line: 1511, baseType: !16, size: 32, offset: 22336)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2650, file: !1868, line: 1515, baseType: !3594, size: 64, offset: 22400)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !584, line: 56, size: 64, elements: !3595)
!3595 = !{!3596}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3594, file: !584, line: 57, baseType: !587, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2650, file: !1868, line: 1518, baseType: !3594, size: 64, offset: 22464)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2650, file: !1868, line: 1528, baseType: !263, size: 128, align: 64, offset: 22528)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2650, file: !1868, line: 1552, baseType: !3600, size: 35328, offset: 23040)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3601, line: 430, size: 35328, elements: !3602)
!3601 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3602 = !{!3603, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3632, !3633, !3634, !3635, !3636, !3637, !3640, !3641, !3642, !3643}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3600, file: !3601, line: 432, baseType: !3604, size: 192)
!3604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3605, size: 192, elements: !620)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3606, line: 16, size: 64, elements: !3607)
!3606 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3607 = !{!3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3605, file: !3606, line: 17, baseType: !87, size: 16)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3605, file: !3606, line: 18, baseType: !87, size: 16, offset: 16)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3605, file: !3606, line: 19, baseType: !87, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3605, file: !3606, line: 19, baseType: !87, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3605, file: !3606, line: 19, baseType: !87, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3605, file: !3606, line: 19, baseType: !87, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3605, file: !3606, line: 19, baseType: !87, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3605, file: !3606, line: 20, baseType: !87, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3605, file: !3606, line: 20, baseType: !87, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3605, file: !3606, line: 20, baseType: !87, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3605, file: !3606, line: 20, baseType: !87, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3605, file: !3606, line: 20, baseType: !87, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3605, file: !3606, line: 20, baseType: !87, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3600, file: !3601, line: 436, baseType: !33, size: 64, offset: 192)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3600, file: !3601, line: 440, baseType: !20, size: 16, offset: 256)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3600, file: !3601, line: 441, baseType: !20, size: 16, offset: 272)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3600, file: !3601, line: 442, baseType: !20, size: 16, offset: 288)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3600, file: !3601, line: 443, baseType: !20, size: 16, offset: 304)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3600, file: !3601, line: 447, baseType: !33, size: 64, offset: 320)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3600, file: !3601, line: 448, baseType: !33, size: 64, offset: 384)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3600, file: !3601, line: 459, baseType: !3629, size: 256, offset: 448)
!3629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3630, size: 256, elements: !378)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3601, line: 428, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3600, file: !3601, line: 461, baseType: !33, size: 64, offset: 704)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3600, file: !3601, line: 463, baseType: !33, size: 64, offset: 768)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3600, file: !3601, line: 465, baseType: !33, size: 64, offset: 832)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3600, file: !3601, line: 466, baseType: !33, size: 64, offset: 896)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3600, file: !3601, line: 467, baseType: !33, size: 64, offset: 960)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3600, file: !3601, line: 473, baseType: !3638, size: 64, offset: 1024)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3601, line: 10, flags: DIFlagFwdDecl)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3600, file: !3601, line: 480, baseType: !33, size: 64, offset: 1088)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3600, file: !3601, line: 482, baseType: !98, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3600, file: !3601, line: 491, baseType: !726, size: 32, offset: 1184)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3600, file: !3601, line: 501, baseType: !3644, size: 33792, offset: 1536)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3645, line: 448, size: 33792, elements: !3646)
!3645 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3646 = !{!3647, !3648, !3649, !3807, !3808, !3814, !3815}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3644, file: !3645, line: 461, baseType: !98, size: 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3644, file: !3645, line: 468, baseType: !33, size: 64, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3644, file: !3645, line: 476, baseType: !3650, size: 64, offset: 128)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3645, line: 356, size: 33280, align: 512, elements: !3652)
!3652 = !{!3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3651, file: !3645, line: 358, baseType: !98, size: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3651, file: !3645, line: 361, baseType: !98, size: 32, offset: 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3651, file: !3645, line: 364, baseType: !676, size: 64, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3651, file: !3645, line: 367, baseType: !676, size: 64, offset: 128)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3651, file: !3645, line: 370, baseType: !676, size: 64, offset: 192)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3651, file: !3645, line: 373, baseType: !98, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3651, file: !3645, line: 376, baseType: !98, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3651, file: !3645, line: 391, baseType: !98, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3651, file: !3645, line: 394, baseType: !98, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3651, file: !3645, line: 397, baseType: !3663, size: 32768, offset: 512)
!3663 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3645, line: 348, size: 32768, elements: !3664)
!3664 = !{!3665, !3678, !3713, !3790, !3803}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3663, file: !3645, line: 349, baseType: !3666, size: 896)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3645, line: 12, size: 896, elements: !3667)
!3667 = !{!3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3677}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3666, file: !3645, line: 13, baseType: !726, size: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3666, file: !3645, line: 14, baseType: !726, size: 32, offset: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3666, file: !3645, line: 15, baseType: !726, size: 32, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3666, file: !3645, line: 16, baseType: !726, size: 32, offset: 96)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3666, file: !3645, line: 17, baseType: !726, size: 32, offset: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3666, file: !3645, line: 18, baseType: !726, size: 32, offset: 160)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3666, file: !3645, line: 19, baseType: !726, size: 32, offset: 192)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3666, file: !3645, line: 22, baseType: !3676, size: 640, offset: 224)
!3676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 640, elements: !233)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3666, file: !3645, line: 25, baseType: !726, size: 32, offset: 864)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3663, file: !3645, line: 350, baseType: !3679, size: 4096, align: 128)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3645, line: 34, size: 4096, align: 128, elements: !3680)
!3680 = !{!3681, !3682, !3683, !3684, !3685, !3700, !3701, !3702, !3704, !3706, !3708}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3679, file: !3645, line: 35, baseType: !87, size: 16)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3679, file: !3645, line: 36, baseType: !87, size: 16, offset: 16)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3679, file: !3645, line: 37, baseType: !87, size: 16, offset: 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3679, file: !3645, line: 38, baseType: !87, size: 16, offset: 48)
!3685 = !DIDerivedType(tag: DW_TAG_member, scope: !3679, file: !3645, line: 39, baseType: !3686, size: 128, offset: 64)
!3686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3679, file: !3645, line: 39, size: 128, elements: !3687)
!3687 = !{!3688, !3693}
!3688 = !DIDerivedType(tag: DW_TAG_member, scope: !3686, file: !3645, line: 40, baseType: !3689, size: 128)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3686, file: !3645, line: 40, size: 128, elements: !3690)
!3690 = !{!3691, !3692}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3689, file: !3645, line: 41, baseType: !676, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3689, file: !3645, line: 42, baseType: !676, size: 64, offset: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, scope: !3686, file: !3645, line: 44, baseType: !3694, size: 128)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3686, file: !3645, line: 44, size: 128, elements: !3695)
!3695 = !{!3696, !3697, !3698, !3699}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3694, file: !3645, line: 45, baseType: !726, size: 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3694, file: !3645, line: 46, baseType: !726, size: 32, offset: 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3694, file: !3645, line: 47, baseType: !726, size: 32, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3694, file: !3645, line: 48, baseType: !726, size: 32, offset: 96)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3679, file: !3645, line: 51, baseType: !726, size: 32, offset: 192)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3679, file: !3645, line: 52, baseType: !726, size: 32, offset: 224)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3679, file: !3645, line: 55, baseType: !3703, size: 1024, offset: 256)
!3703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 1024, elements: !471)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3679, file: !3645, line: 58, baseType: !3705, size: 2048, offset: 1280)
!3705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 2048, elements: !1219)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3679, file: !3645, line: 60, baseType: !3707, size: 384, offset: 3328)
!3707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 384, elements: !361)
!3708 = !DIDerivedType(tag: DW_TAG_member, scope: !3679, file: !3645, line: 62, baseType: !3709, size: 384, offset: 3712)
!3709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3679, file: !3645, line: 62, size: 384, elements: !3710)
!3710 = !{!3711, !3712}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3709, file: !3645, line: 63, baseType: !3707, size: 384)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3709, file: !3645, line: 64, baseType: !3707, size: 384)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3663, file: !3645, line: 351, baseType: !3714, size: 1088)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3645, line: 79, size: 1088, elements: !3715)
!3715 = !{!3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3789}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3714, file: !3645, line: 80, baseType: !726, size: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3714, file: !3645, line: 81, baseType: !726, size: 32, offset: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3714, file: !3645, line: 82, baseType: !726, size: 32, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3714, file: !3645, line: 83, baseType: !726, size: 32, offset: 96)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3714, file: !3645, line: 84, baseType: !726, size: 32, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3714, file: !3645, line: 85, baseType: !726, size: 32, offset: 160)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3714, file: !3645, line: 86, baseType: !726, size: 32, offset: 192)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3714, file: !3645, line: 88, baseType: !3676, size: 640, offset: 224)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3714, file: !3645, line: 89, baseType: !77, size: 8, offset: 864)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3714, file: !3645, line: 90, baseType: !77, size: 8, offset: 872)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3714, file: !3645, line: 91, baseType: !77, size: 8, offset: 880)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3714, file: !3645, line: 92, baseType: !77, size: 8, offset: 888)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3714, file: !3645, line: 93, baseType: !77, size: 8, offset: 896)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3714, file: !3645, line: 94, baseType: !77, size: 8, offset: 904)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3714, file: !3645, line: 95, baseType: !3731, size: 64, offset: 960)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3733, line: 11, size: 128, elements: !3734)
!3733 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3734 = !{!3735, !3736}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3732, file: !3733, line: 12, baseType: !1036, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3732, file: !3733, line: 13, baseType: !3737, size: 64, offset: 64)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3739, line: 103, size: 1344, elements: !3740)
!3739 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3740 = !{!3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3769, !3770, !3771}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3738, file: !3739, line: 109, baseType: !33, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3738, file: !3739, line: 110, baseType: !33, size: 64, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3738, file: !3739, line: 111, baseType: !33, size: 64, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3738, file: !3739, line: 112, baseType: !33, size: 64, offset: 192)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3738, file: !3739, line: 113, baseType: !33, size: 64, offset: 256)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3738, file: !3739, line: 114, baseType: !33, size: 64, offset: 320)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3738, file: !3739, line: 117, baseType: !33, size: 64, offset: 384)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3738, file: !3739, line: 118, baseType: !33, size: 64, offset: 448)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3738, file: !3739, line: 119, baseType: !33, size: 64, offset: 512)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3738, file: !3739, line: 120, baseType: !33, size: 64, offset: 576)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3738, file: !3739, line: 121, baseType: !33, size: 64, offset: 640)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3738, file: !3739, line: 122, baseType: !33, size: 64, offset: 704)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3738, file: !3739, line: 123, baseType: !33, size: 64, offset: 768)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3738, file: !3739, line: 124, baseType: !33, size: 64, offset: 832)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3738, file: !3739, line: 125, baseType: !33, size: 64, offset: 896)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3738, file: !3739, line: 139, baseType: !33, size: 64, offset: 960)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3738, file: !3739, line: 142, baseType: !33, size: 64, offset: 1024)
!3758 = !DIDerivedType(tag: DW_TAG_member, scope: !3738, file: !3739, line: 144, baseType: !3759, size: 64, offset: 1088)
!3759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3738, file: !3739, line: 144, size: 64, elements: !3760)
!3760 = !{!3761, !3762, !3763}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3759, file: !3739, line: 146, baseType: !87, size: 16)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3759, file: !3739, line: 148, baseType: !676, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3759, file: !3739, line: 150, baseType: !3764, size: 64)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3739, line: 59, size: 64, elements: !3765)
!3765 = !{!3766, !3767, !3768}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3764, file: !3739, line: 61, baseType: !676, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3764, file: !3739, line: 63, baseType: !676, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3764, file: !3739, line: 65, baseType: !676, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3738, file: !3739, line: 153, baseType: !33, size: 64, offset: 1152)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3738, file: !3739, line: 154, baseType: !33, size: 64, offset: 1216)
!3771 = !DIDerivedType(tag: DW_TAG_member, scope: !3738, file: !3739, line: 156, baseType: !3772, size: 64, offset: 1280)
!3772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3738, file: !3739, line: 156, size: 64, elements: !3773)
!3773 = !{!3774, !3775, !3776}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3772, file: !3739, line: 158, baseType: !87, size: 16)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3772, file: !3739, line: 160, baseType: !676, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3772, file: !3739, line: 162, baseType: !3777, size: 64)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3739, line: 69, size: 64, elements: !3778)
!3778 = !{!3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3777, file: !3739, line: 71, baseType: !676, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3777, file: !3739, line: 73, baseType: !676, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3777, file: !3739, line: 75, baseType: !676, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3777, file: !3739, line: 77, baseType: !676, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3777, file: !3739, line: 80, baseType: !676, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3777, file: !3739, line: 83, baseType: !676, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3777, file: !3739, line: 86, baseType: !676, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3777, file: !3739, line: 88, baseType: !676, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3777, file: !3739, line: 93, baseType: !676, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3777, file: !3739, line: 100, baseType: !676, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3714, file: !3645, line: 96, baseType: !726, size: 32, offset: 1024)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3663, file: !3645, line: 352, baseType: !3791, size: 4608, align: 512)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3645, line: 333, size: 4608, align: 512, elements: !3792)
!3792 = !{!3793, !3794, !3801}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3791, file: !3645, line: 334, baseType: !3679, size: 4096, align: 128)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3791, file: !3645, line: 335, baseType: !3795, size: 512, offset: 4096)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3645, line: 312, size: 512, elements: !3796)
!3796 = !{!3797, !3798, !3799}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3795, file: !3645, line: 313, baseType: !676, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3795, file: !3645, line: 314, baseType: !676, size: 64, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3795, file: !3645, line: 315, baseType: !3800, size: 384, offset: 128)
!3800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 384, elements: !747)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3791, file: !3645, line: 336, baseType: !3802, offset: 4608)
!3802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, elements: !648)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3663, file: !3645, line: 353, baseType: !3804, size: 32768)
!3804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 32768, elements: !3805)
!3805 = !{!3806}
!3806 = !DISubrange(count: 4096)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3644, file: !3645, line: 484, baseType: !3650, size: 64, offset: 192)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3644, file: !3645, line: 491, baseType: !3809, size: 128, offset: 256)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3645, line: 404, size: 128, elements: !3810)
!3810 = !{!3811, !3812, !3813}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3809, file: !3645, line: 424, baseType: !676, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3809, file: !3645, line: 432, baseType: !98, size: 32, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3809, file: !3645, line: 440, baseType: !98, size: 32, offset: 96)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3644, file: !3645, line: 498, baseType: !3809, size: 128, offset: 384)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3644, file: !3645, line: 508, baseType: !3651, size: 33280, align: 512, offset: 512)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2632, file: !2633, line: 16, baseType: !48, size: 192, offset: 512)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2632, file: !2633, line: 17, baseType: !43, size: 32, offset: 704)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1131, file: !131, line: 1240, baseType: !14, size: 64, offset: 6912)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1131, file: !131, line: 1243, baseType: !726, size: 32, offset: 6976)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1131, file: !131, line: 1245, baseType: !717, size: 64, offset: 7040)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1131, file: !131, line: 1246, baseType: !717, size: 64, offset: 7104)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1131, file: !131, line: 1248, baseType: !468, size: 32, offset: 7168)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1131, file: !131, line: 1249, baseType: !3824, size: 64, offset: 7232)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !131, line: 634, flags: DIFlagFwdDecl)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1131, file: !131, line: 1252, baseType: !3827, size: 256, offset: 7296)
!3827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !471)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1131, file: !131, line: 1253, baseType: !3829, size: 128, offset: 7552)
!3829 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3830, line: 21, baseType: !3831)
!3830 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3830, line: 19, size: 128, elements: !3832)
!3832 = !{!3833}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3831, file: !3830, line: 20, baseType: !3834, size: 128)
!3834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 128, elements: !3065)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1131, file: !131, line: 1255, baseType: !98, size: 32, offset: 7680)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1131, file: !131, line: 1261, baseType: !382, size: 256, offset: 7744)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1131, file: !131, line: 1267, baseType: !10, size: 64, offset: 8000)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1131, file: !131, line: 1269, baseType: !3839, size: 64, offset: 8064)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3841)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !884, line: 128, size: 1024, align: 512, elements: !3842)
!3842 = !{!3843, !3847, !3848, !3855, !3861, !3865, !3869, !3873, !3874, !3878, !3882, !3887, !3891}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3841, file: !884, line: 129, baseType: !3844, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!16, !882, !98}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3841, file: !884, line: 130, baseType: !3844, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3841, file: !884, line: 131, baseType: !3849, size: 64, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!16, !3852, !3854}
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !883)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3841, file: !884, line: 132, baseType: !3856, size: 64, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!16, !3852, !98, !10, !3859}
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !907)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3841, file: !884, line: 134, baseType: !3862, size: 64, offset: 256)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!16, !3852}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3841, file: !884, line: 135, baseType: !3866, size: 64, offset: 320)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!16, !882}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3841, file: !884, line: 136, baseType: !3870, size: 64, offset: 384)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{null, !882}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3841, file: !884, line: 137, baseType: !3870, size: 64, offset: 448)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3841, file: !884, line: 138, baseType: !3875, size: 64, offset: 512)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{null, !882, !922}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3841, file: !884, line: 139, baseType: !3879, size: 64, offset: 576)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!771, !882, !771, !16}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3841, file: !884, line: 140, baseType: !3883, size: 64, offset: 640)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!877, !3886}
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3841, file: !884, line: 141, baseType: !3888, size: 64, offset: 704)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!16, !1044, !760}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3841, file: !884, line: 142, baseType: !3892, size: 64, offset: 768)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!882, !882, !3895}
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !923)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1131, file: !131, line: 1271, baseType: !3898, size: 448, offset: 8128)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2414, line: 63, size: 448, elements: !3899)
!3899 = !{!3900, !3905, !3906, !3907, !3908, !3909, !3910}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3898, file: !2414, line: 64, baseType: !3901, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!33, !3904, !2412}
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3898, file: !2414, line: 66, baseType: !3901, size: 64, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3898, file: !2414, line: 69, baseType: !1036, size: 64, offset: 128)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3898, file: !2414, line: 70, baseType: !16, size: 32, offset: 192)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3898, file: !2414, line: 71, baseType: !98, size: 32, offset: 224)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3898, file: !2414, line: 74, baseType: !91, size: 128, offset: 256)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3898, file: !2414, line: 85, baseType: !3911, size: 64, offset: 384)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1131, file: !131, line: 1274, baseType: !386, size: 64, offset: 8576)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1131, file: !131, line: 1280, baseType: !386, size: 64, offset: 8640)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1131, file: !131, line: 1283, baseType: !16, size: 32, offset: 8704)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1131, file: !131, line: 1286, baseType: !1545, size: 32, offset: 8736)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1131, file: !131, line: 1289, baseType: !2239, size: 64, offset: 8768)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1131, file: !131, line: 1290, baseType: !349, size: 64, offset: 8832)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1131, file: !131, line: 1297, baseType: !844, size: 64, offset: 8896)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1131, file: !131, line: 1304, baseType: !3920, size: 64, offset: 8960)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3921, line: 49, size: 64, elements: !3922)
!3921 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3922 = !{!3923}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3920, file: !3921, line: 50, baseType: !3924, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3921, line: 41, size: 512, align: 512, elements: !3926)
!3926 = !{!3927, !3928, !3933}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3925, file: !3921, line: 43, baseType: !53, size: 32)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3925, file: !3921, line: 45, baseType: !3929, size: 192, offset: 64)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3921, line: 29, size: 192, elements: !3930)
!3930 = !{!3931, !3932}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3929, file: !3921, line: 30, baseType: !91, size: 128)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3929, file: !3921, line: 32, baseType: !1036, size: 64, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3925, file: !3921, line: 46, baseType: !1036, size: 64, offset: 256)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1131, file: !131, line: 1305, baseType: !3920, size: 64, offset: 9024)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1131, file: !131, line: 1306, baseType: !263, size: 128, align: 64, offset: 9088)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1131, file: !131, line: 1307, baseType: !1725, size: 256, offset: 9216)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1131, file: !131, line: 1309, baseType: !382, size: 256, offset: 9472)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1131, file: !131, line: 1314, baseType: !16, size: 32, offset: 9728)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1131, file: !131, line: 1317, baseType: !53, size: 32, align: 512, offset: 10240)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1131, file: !131, line: 1318, baseType: !91, size: 128, offset: 10304)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1131, file: !131, line: 1320, baseType: !53, size: 32, offset: 10432)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1131, file: !131, line: 1321, baseType: !91, size: 128, offset: 10496)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !923, file: !131, line: 656, baseType: !1280, size: 64, offset: 512)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !923, file: !131, line: 659, baseType: !14, size: 64, offset: 576)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !923, file: !131, line: 663, baseType: !33, size: 64, offset: 640)
!3946 = !DIDerivedType(tag: DW_TAG_member, scope: !923, file: !131, line: 671, baseType: !3947, size: 32, offset: 704)
!3947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !923, file: !131, line: 671, size: 32, elements: !3948)
!3948 = !{!3949, !3951}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3947, file: !131, line: 672, baseType: !3950, size: 32)
!3950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3947, file: !131, line: 673, baseType: !98, size: 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !923, file: !131, line: 675, baseType: !996, size: 32, offset: 736)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !923, file: !131, line: 676, baseType: !35, size: 64, offset: 768)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !923, file: !131, line: 677, baseType: !1032, size: 128, offset: 832)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !923, file: !131, line: 678, baseType: !1032, size: 128, offset: 960)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !923, file: !131, line: 679, baseType: !1032, size: 128, offset: 1088)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !923, file: !131, line: 680, baseType: !53, size: 32, offset: 1216)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !923, file: !131, line: 681, baseType: !20, size: 16, offset: 1248)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !923, file: !131, line: 682, baseType: !77, size: 8, offset: 1264)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !923, file: !131, line: 683, baseType: !77, size: 8, offset: 1272)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !923, file: !131, line: 684, baseType: !2545, size: 64, offset: 1280)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !923, file: !131, line: 691, baseType: !33, size: 64, offset: 1344)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !923, file: !131, line: 692, baseType: !701, size: 320, offset: 1408)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !923, file: !131, line: 694, baseType: !33, size: 64, offset: 1728)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !923, file: !131, line: 695, baseType: !33, size: 64, offset: 1792)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !923, file: !131, line: 697, baseType: !353, size: 128, offset: 1856)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !923, file: !131, line: 698, baseType: !91, size: 128, offset: 1984)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !923, file: !131, line: 707, baseType: !91, size: 128, offset: 2112)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !923, file: !131, line: 708, baseType: !91, size: 128, offset: 2240)
!3970 = !DIDerivedType(tag: DW_TAG_member, scope: !923, file: !131, line: 709, baseType: !3971, size: 128, offset: 2368)
!3971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !923, file: !131, line: 709, size: 128, elements: !3972)
!3972 = !{!3973, !3974}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3971, file: !131, line: 710, baseType: !349, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3971, file: !131, line: 711, baseType: !263, size: 128, align: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !923, file: !131, line: 713, baseType: !388, size: 64, offset: 2496)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !923, file: !131, line: 714, baseType: !388, size: 64, offset: 2560)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !923, file: !131, line: 715, baseType: !43, size: 32, offset: 2624)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !923, file: !131, line: 716, baseType: !43, size: 32, offset: 2656)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !923, file: !131, line: 717, baseType: !43, size: 32, offset: 2688)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !923, file: !131, line: 719, baseType: !43, size: 32, offset: 2720)
!3981 = !DIDerivedType(tag: DW_TAG_member, scope: !923, file: !131, line: 721, baseType: !3982, size: 64, offset: 2752)
!3982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !923, file: !131, line: 721, size: 64, elements: !3983)
!3983 = !{!3984, !4108}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3982, file: !131, line: 722, baseType: !3985, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3987)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !131, line: 1914, size: 2112, elements: !3988)
!3988 = !{!3989, !3990, !3994, !3998, !4002, !4003, !4004, !4010, !4023, !4027, !4031, !4032, !4036, !4037, !4041, !4046, !4047, !4051, !4055, !4061, !4062, !4066, !4067, !4071, !4075, !4076, !4081, !4085, !4089, !4093, !4097, !4098, !4104}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3987, file: !131, line: 1915, baseType: !1163, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3987, file: !131, line: 1916, baseType: !3991, size: 64, offset: 64)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!35, !576, !35, !16}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3987, file: !131, line: 1917, baseType: !3995, size: 64, offset: 128)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!1075, !576, !771, !29, !34}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3987, file: !131, line: 1918, baseType: !3999, size: 64, offset: 192)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!1075, !576, !10, !29, !34}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3987, file: !131, line: 1919, baseType: !1479, size: 64, offset: 256)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3987, file: !131, line: 1920, baseType: !1479, size: 64, offset: 320)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3987, file: !131, line: 1921, baseType: !4005, size: 64, offset: 384)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!16, !1482, !4008, !98}
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !131, line: 53, flags: DIFlagFwdDecl)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3987, file: !131, line: 1923, baseType: !4011, size: 64, offset: 448)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!16, !576, !4014}
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !131, line: 1858, size: 128, elements: !4016)
!4016 = !{!4017, !4022}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4015, file: !131, line: 1859, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !131, line: 1855, baseType: !4019)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!760, !4014, !10, !16, !35, !676, !98}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4015, file: !131, line: 1860, baseType: !35, size: 64, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3987, file: !131, line: 1924, baseType: !4024, size: 64, offset: 512)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!1910, !576, !1912}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3987, file: !131, line: 1925, baseType: !4028, size: 64, offset: 576)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!1036, !576, !98, !33}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3987, file: !131, line: 1926, baseType: !4028, size: 64, offset: 640)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3987, file: !131, line: 1927, baseType: !4033, size: 64, offset: 704)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!16, !576, !1559}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3987, file: !131, line: 1928, baseType: !33, size: 64, offset: 768)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3987, file: !131, line: 1929, baseType: !4038, size: 64, offset: 832)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!16, !922, !576}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3987, file: !131, line: 1930, baseType: !4042, size: 64, offset: 896)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!16, !576, !4045}
!4045 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !131, line: 1061, baseType: !14)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3987, file: !131, line: 1931, baseType: !4038, size: 64, offset: 960)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3987, file: !131, line: 1932, baseType: !4048, size: 64, offset: 1024)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!16, !576, !35, !35, !16}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3987, file: !131, line: 1933, baseType: !4052, size: 64, offset: 1088)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!16, !16, !576, !16}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3987, file: !131, line: 1934, baseType: !4056, size: 64, offset: 1152)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!16, !576, !16, !4059}
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !131, line: 1063, flags: DIFlagFwdDecl)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3987, file: !131, line: 1935, baseType: !1596, size: 64, offset: 1216)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3987, file: !131, line: 1936, baseType: !4063, size: 64, offset: 1280)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!16, !16}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3987, file: !131, line: 1937, baseType: !4056, size: 64, offset: 1344)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3987, file: !131, line: 1938, baseType: !4068, size: 64, offset: 1408)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!1075, !3481, !576, !34, !29, !98}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3987, file: !131, line: 1939, baseType: !4072, size: 64, offset: 1472)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!1075, !576, !34, !3481, !29, !98}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3987, file: !131, line: 1940, baseType: !1535, size: 64, offset: 1536)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3987, file: !131, line: 1941, baseType: !4077, size: 64, offset: 1600)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!16, !576, !16, !4080, !1456}
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3987, file: !131, line: 1942, baseType: !4082, size: 64, offset: 1664)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!1036, !576, !16, !35, !35}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3987, file: !131, line: 1944, baseType: !4086, size: 64, offset: 1728)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{null, !1866, !576}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3987, file: !131, line: 1948, baseType: !4090, size: 64, offset: 1792)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!1075, !576, !35, !576, !35, !29, !98}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3987, file: !131, line: 1950, baseType: !4094, size: 64, offset: 1856)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!35, !576, !35, !576, !35, !35, !98}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3987, file: !131, line: 1953, baseType: !4048, size: 64, offset: 1920)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3987, file: !131, line: 1954, baseType: !4099, size: 64, offset: 1984)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!16, !4102, !98}
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !131, line: 1911, flags: DIFlagFwdDecl)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3987, file: !131, line: 1955, baseType: !4105, size: 64, offset: 2048)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!16, !4102, !4008, !98}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3982, file: !131, line: 723, baseType: !2303, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !923, file: !131, line: 725, baseType: !4110, size: 64, offset: 2816)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !131, line: 725, flags: DIFlagFwdDecl)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !923, file: !131, line: 726, baseType: !1281, size: 1536, align: 64, offset: 2880)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !923, file: !131, line: 727, baseType: !91, size: 128, offset: 4416)
!4114 = !DIDerivedType(tag: DW_TAG_member, scope: !923, file: !131, line: 728, baseType: !4115, size: 64, offset: 4544)
!4115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !923, file: !131, line: 728, size: 64, elements: !4116)
!4116 = !{!4117, !4118, !4121, !4122}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4115, file: !131, line: 729, baseType: !3481, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4115, file: !131, line: 730, baseType: !4119, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !131, line: 730, flags: DIFlagFwdDecl)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4115, file: !131, line: 731, baseType: !771, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4115, file: !131, line: 732, baseType: !98, size: 32)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !923, file: !131, line: 735, baseType: !468, size: 32, offset: 4608)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !923, file: !131, line: 738, baseType: !468, size: 32, offset: 4640)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !923, file: !131, line: 739, baseType: !3824, size: 64, offset: 4672)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !923, file: !131, line: 750, baseType: !14, size: 64, offset: 4736)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !883, file: !884, line: 91, baseType: !4128, size: 256, offset: 448)
!4128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 256, elements: !471)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !883, file: !884, line: 94, baseType: !4130, size: 64, offset: 704)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4131, line: 25, size: 64, elements: !4132)
!4131 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4132 = !{!4133}
!4133 = !DIDerivedType(tag: DW_TAG_member, scope: !4130, file: !4131, line: 26, baseType: !4134, size: 64)
!4134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4130, file: !4131, line: 26, size: 64, elements: !4135)
!4135 = !{!4136, !4137}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4134, file: !4131, line: 28, baseType: !677, size: 64, align: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, scope: !4134, file: !4131, line: 30, baseType: !4138, size: 64)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4134, file: !4131, line: 30, size: 64, elements: !4139)
!4139 = !{!4140, !4141}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4138, file: !4131, line: 31, baseType: !53, size: 32)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4138, file: !4131, line: 32, baseType: !16, size: 32, offset: 32)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !883, file: !884, line: 95, baseType: !3839, size: 64, offset: 768)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !883, file: !884, line: 96, baseType: !1130, size: 64, offset: 832)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !883, file: !884, line: 97, baseType: !33, size: 64, offset: 896)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !883, file: !884, line: 98, baseType: !14, size: 64, offset: 960)
!4146 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !884, line: 100, baseType: !4147, size: 128, offset: 1024)
!4147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !883, file: !884, line: 100, size: 128, elements: !4148)
!4148 = !{!4149, !4150}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4147, file: !884, line: 101, baseType: !91, size: 128)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4147, file: !884, line: 102, baseType: !4151, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !883, file: !884, line: 104, baseType: !91, size: 128, offset: 1152)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !883, file: !884, line: 105, baseType: !91, size: 128, offset: 1280)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !883, file: !884, line: 113, baseType: !4155, size: 128, offset: 1408)
!4155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !883, file: !884, line: 109, size: 128, elements: !4156)
!4156 = !{!4157, !4158, !4159}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4155, file: !884, line: 110, baseType: !353, size: 128)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4155, file: !884, line: 111, baseType: !898, size: 128)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4155, file: !884, line: 112, baseType: !263, size: 128, align: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !878, file: !879, line: 72, baseType: !1130, size: 64, offset: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !878, file: !879, line: 73, baseType: !16, size: 32, offset: 128)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !878, file: !879, line: 74, baseType: !961, size: 64, offset: 192)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !873, file: !874, line: 10, baseType: !882, size: 64, offset: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !577, file: !131, line: 1015, baseType: !922, size: 64, offset: 1344)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !577, file: !131, line: 1016, baseType: !3985, size: 64, offset: 1408)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !577, file: !131, line: 1018, baseType: !676, size: 64, offset: 1472)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !577, file: !131, line: 1020, baseType: !14, size: 64, offset: 1536)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !577, file: !131, line: 1023, baseType: !14, size: 64, offset: 1600)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !577, file: !131, line: 1027, baseType: !4170, size: 64, offset: 1664)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !577, file: !131, line: 1029, baseType: !1280, size: 64, offset: 1728)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !577, file: !131, line: 1030, baseType: !1545, size: 32, offset: 1792)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !577, file: !131, line: 1031, baseType: !1545, size: 32, offset: 1824)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !421, file: !422, line: 169, baseType: !4175, size: 64, offset: 2048)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !422, line: 24, flags: DIFlagFwdDecl)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !421, file: !422, line: 171, baseType: !98, size: 32, offset: 2112)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !421, file: !422, line: 172, baseType: !2178, size: 320, offset: 2176)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !421, file: !422, line: 174, baseType: !4180, size: 64, offset: 2496)
!4180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !449)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !421, file: !422, line: 176, baseType: !4182, size: 64, offset: 2560)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !422, line: 176, flags: DIFlagFwdDecl)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !421, file: !422, line: 178, baseType: !4185, size: 64, offset: 2624)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !429, line: 93, size: 192, elements: !4187)
!4187 = !{!4188, !4189, !4190, !4191, !4192, !4193}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4186, file: !429, line: 94, baseType: !694, size: 32)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4186, file: !429, line: 95, baseType: !694, size: 32, offset: 32)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4186, file: !429, line: 96, baseType: !694, size: 32, offset: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4186, file: !429, line: 97, baseType: !694, size: 32, offset: 96)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4186, file: !429, line: 98, baseType: !694, size: 32, offset: 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4186, file: !429, line: 99, baseType: !694, size: 32, offset: 160)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !421, file: !422, line: 180, baseType: !441, size: 768, offset: 2688)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !421, file: !422, line: 181, baseType: !436, size: 64, offset: 3456)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !421, file: !422, line: 182, baseType: !436, size: 64, offset: 3520)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !421, file: !422, line: 183, baseType: !436, size: 64, offset: 3584)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !421, file: !422, line: 185, baseType: !4199, size: 64, offset: 3648)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!16, !420}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !421, file: !422, line: 186, baseType: !4203, size: 64, offset: 3712)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{null, !420}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !421, file: !422, line: 187, baseType: !4207, size: 64, offset: 3776)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!16, !420, !576}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !421, file: !422, line: 188, baseType: !4211, size: 64, offset: 3840)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!16, !420, !98, !98, !16}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !421, file: !422, line: 190, baseType: !4215, size: 64, offset: 3904)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !422, line: 345, size: 576, elements: !4217)
!4217 = !{!4218, !4219, !4220, !4221, !4222, !4290, !4291}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4216, file: !422, line: 347, baseType: !14, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4216, file: !422, line: 349, baseType: !16, size: 32, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4216, file: !422, line: 350, baseType: !10, size: 64, offset: 128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4216, file: !422, line: 352, baseType: !420, size: 64, offset: 192)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4216, file: !422, line: 353, baseType: !4223, size: 64, offset: 256)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !422, line: 310, size: 960, elements: !4225)
!4225 = !{!4226, !4227, !4231, !4242, !4246, !4250, !4279, !4283, !4284, !4285, !4286, !4287, !4288, !4289}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4224, file: !422, line: 312, baseType: !14, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4224, file: !422, line: 314, baseType: !4228, size: 64, offset: 64)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{null, !4215, !98, !98, !16}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4224, file: !422, line: 315, baseType: !4232, size: 64, offset: 128)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{null, !4215, !4235, !98}
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4237)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !422, line: 32, size: 64, elements: !4238)
!4238 = !{!4239, !4240, !4241}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4237, file: !422, line: 33, baseType: !88, size: 16)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4237, file: !422, line: 34, baseType: !88, size: 16, offset: 16)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4237, file: !422, line: 35, baseType: !694, size: 32, offset: 32)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4224, file: !422, line: 317, baseType: !4243, size: 64, offset: 192)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!760, !4215, !98, !98, !16}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4224, file: !422, line: 318, baseType: !4247, size: 64, offset: 256)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!760, !4223, !420}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4224, file: !422, line: 319, baseType: !4251, size: 64, offset: 320)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!16, !4223, !420, !4254}
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4256)
!4256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !4257, line: 362, size: 1600, elements: !4258)
!4257 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4258 = !{!4259, !4261, !4262, !4263, !4264, !4265, !4267, !4269, !4270, !4271, !4272, !4273, !4274, !4276, !4277, !4278}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4256, file: !4257, line: 364, baseType: !4260, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4257, line: 15, baseType: !33)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4256, file: !4257, line: 366, baseType: !88, size: 16, offset: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4256, file: !4257, line: 367, baseType: !88, size: 16, offset: 80)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4256, file: !4257, line: 368, baseType: !88, size: 16, offset: 96)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4256, file: !4257, line: 369, baseType: !88, size: 16, offset: 112)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4256, file: !4257, line: 371, baseType: !4266, size: 64, offset: 128)
!4266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4260, size: 64, elements: !437)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4256, file: !4257, line: 372, baseType: !4268, size: 768, offset: 192)
!4268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4260, size: 768, elements: !361)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4256, file: !4257, line: 373, baseType: !4266, size: 64, offset: 960)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4256, file: !4257, line: 374, baseType: !4266, size: 64, offset: 1024)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4256, file: !4257, line: 375, baseType: !4266, size: 64, offset: 1088)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4256, file: !4257, line: 376, baseType: !4266, size: 64, offset: 1152)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4256, file: !4257, line: 377, baseType: !4266, size: 64, offset: 1216)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4256, file: !4257, line: 378, baseType: !4275, size: 128, offset: 1280)
!4275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4260, size: 128, elements: !449)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4256, file: !4257, line: 379, baseType: !4266, size: 64, offset: 1408)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4256, file: !4257, line: 380, baseType: !4266, size: 64, offset: 1472)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4256, file: !4257, line: 382, baseType: !4260, size: 64, offset: 1536)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4224, file: !422, line: 320, baseType: !4280, size: 64, offset: 384)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{null, !4215}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4224, file: !422, line: 321, baseType: !4280, size: 64, offset: 448)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4224, file: !422, line: 323, baseType: !760, size: 8, offset: 512)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4224, file: !422, line: 324, baseType: !16, size: 32, offset: 544)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4224, file: !422, line: 325, baseType: !10, size: 64, offset: 576)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4224, file: !422, line: 327, baseType: !4254, size: 64, offset: 640)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4224, file: !422, line: 329, baseType: !91, size: 128, offset: 704)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4224, file: !422, line: 330, baseType: !91, size: 128, offset: 832)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4216, file: !422, line: 355, baseType: !91, size: 128, offset: 320)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4216, file: !422, line: 356, baseType: !91, size: 128, offset: 448)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !421, file: !422, line: 192, baseType: !53, size: 32, offset: 3968)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !421, file: !422, line: 193, baseType: !382, size: 256, offset: 4032)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !421, file: !422, line: 195, baseType: !98, size: 32, offset: 4288)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !421, file: !422, line: 196, baseType: !760, size: 8, offset: 4320)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !421, file: !422, line: 198, baseType: !4297, size: 5824, offset: 4352)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !166, line: 705, size: 5824, elements: !4298)
!4298 = !{!4299, !4300, !4302, !4305, !4306, !4359, !4442, !4443, !4444, !4445, !4446, !4453, !4545, !4558, !4568, !4572, !4574, !4575, !4576, !4580, !4587, !4588, !4591, !4594, !4598, !4601, !4602, !4603, !4604, !4605, !4606, !4636, !4637, !4638, !4641, !4644, !4653, !4654, !4655, !4656, !4657, !4658}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4297, file: !166, line: 706, baseType: !1176, size: 512)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4297, file: !166, line: 707, baseType: !4301, size: 64, offset: 512)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4297, file: !166, line: 709, baseType: !4303, size: 64, offset: 576)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !166, line: 37, flags: DIFlagFwdDecl)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4297, file: !166, line: 711, baseType: !10, size: 64, offset: 640)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4297, file: !166, line: 712, baseType: !4307, size: 64, offset: 704)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4309)
!4309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !166, line: 89, size: 384, elements: !4310)
!4310 = !{!4311, !4312, !4313, !4319, !4324, !4328}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4309, file: !166, line: 90, baseType: !10, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4309, file: !166, line: 91, baseType: !1256, size: 64, offset: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4309, file: !166, line: 92, baseType: !4314, size: 64, offset: 128)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!16, !4317, !1212}
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4297)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4309, file: !166, line: 93, baseType: !4320, size: 64, offset: 192)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!771, !4317, !4323, !320, !328}
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4309, file: !166, line: 95, baseType: !4325, size: 64, offset: 256)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{null, !4301}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4309, file: !166, line: 97, baseType: !4329, size: 64, offset: 320)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4331)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !173, line: 286, size: 1472, elements: !4332)
!4332 = !{!4333, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4331, file: !173, line: 287, baseType: !4334, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!16, !4301}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4331, file: !173, line: 288, baseType: !4325, size: 64, offset: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4331, file: !173, line: 289, baseType: !4334, size: 64, offset: 128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4331, file: !173, line: 290, baseType: !4334, size: 64, offset: 192)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4331, file: !173, line: 291, baseType: !4334, size: 64, offset: 256)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4331, file: !173, line: 292, baseType: !4334, size: 64, offset: 320)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4331, file: !173, line: 293, baseType: !4334, size: 64, offset: 384)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4331, file: !173, line: 294, baseType: !4334, size: 64, offset: 448)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4331, file: !173, line: 295, baseType: !4334, size: 64, offset: 512)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4331, file: !173, line: 296, baseType: !4334, size: 64, offset: 576)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4331, file: !173, line: 297, baseType: !4334, size: 64, offset: 640)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4331, file: !173, line: 298, baseType: !4334, size: 64, offset: 704)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4331, file: !173, line: 299, baseType: !4334, size: 64, offset: 768)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4331, file: !173, line: 300, baseType: !4334, size: 64, offset: 832)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4331, file: !173, line: 301, baseType: !4334, size: 64, offset: 896)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4331, file: !173, line: 302, baseType: !4334, size: 64, offset: 960)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4331, file: !173, line: 303, baseType: !4334, size: 64, offset: 1024)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4331, file: !173, line: 304, baseType: !4334, size: 64, offset: 1088)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4331, file: !173, line: 305, baseType: !4334, size: 64, offset: 1152)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4331, file: !173, line: 306, baseType: !4334, size: 64, offset: 1216)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4331, file: !173, line: 307, baseType: !4334, size: 64, offset: 1280)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4331, file: !173, line: 308, baseType: !4334, size: 64, offset: 1344)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4331, file: !173, line: 309, baseType: !4334, size: 64, offset: 1408)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4297, file: !166, line: 714, baseType: !4360, size: 64, offset: 768)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4362)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4363, line: 80, size: 1344, elements: !4364)
!4363 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4364 = !{!4365, !4366, !4367, !4368, !4369, !4370, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4441}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4362, file: !4363, line: 81, baseType: !10, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4362, file: !4363, line: 82, baseType: !10, size: 64, offset: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4362, file: !4363, line: 83, baseType: !1256, size: 64, offset: 128)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4362, file: !4363, line: 84, baseType: !1256, size: 64, offset: 192)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4362, file: !4363, line: 85, baseType: !1256, size: 64, offset: 256)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4362, file: !4363, line: 87, baseType: !4371, size: 64, offset: 320)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!16, !4301, !4374}
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !160, line: 96, size: 1152, elements: !4376)
!4376 = !{!4377, !4378, !4379, !4380, !4381, !4382, !4383, !4395, !4404, !4405, !4406, !4407, !4408, !4416, !4417, !4418, !4419, !4420, !4421}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4375, file: !160, line: 97, baseType: !10, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4375, file: !160, line: 98, baseType: !4360, size: 64, offset: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4375, file: !160, line: 100, baseType: !1163, size: 64, offset: 128)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4375, file: !160, line: 101, baseType: !10, size: 64, offset: 192)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4375, file: !160, line: 103, baseType: !760, size: 8, offset: 256)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4375, file: !160, line: 104, baseType: !159, size: 32, offset: 288)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4375, file: !160, line: 106, baseType: !4384, size: 64, offset: 320)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4386)
!4386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4257, line: 282, size: 1600, elements: !4387)
!4387 = !{!4388, !4389, !4390, !4394}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4386, file: !4257, line: 283, baseType: !3827, size: 256)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4386, file: !4257, line: 284, baseType: !3827, size: 256, offset: 256)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4386, file: !4257, line: 285, baseType: !4391, size: 1024, offset: 512)
!4391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1024, elements: !4392)
!4392 = !{!4393}
!4393 = !DISubrange(count: 128)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4386, file: !4257, line: 286, baseType: !1687, size: 64, offset: 1536)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4375, file: !160, line: 107, baseType: !4396, size: 64, offset: 384)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4398)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4257, line: 217, size: 256, elements: !4399)
!4399 = !{!4400, !4401, !4402, !4403}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4398, file: !4257, line: 218, baseType: !3834, size: 128)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4398, file: !4257, line: 219, baseType: !4260, size: 64, offset: 128)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4398, file: !4257, line: 220, baseType: !468, size: 32, offset: 192)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4398, file: !4257, line: 221, baseType: !468, size: 32, offset: 224)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4375, file: !160, line: 109, baseType: !4334, size: 64, offset: 448)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4375, file: !160, line: 110, baseType: !4325, size: 64, offset: 512)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4375, file: !160, line: 111, baseType: !4334, size: 64, offset: 576)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4375, file: !160, line: 112, baseType: !4325, size: 64, offset: 640)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4375, file: !160, line: 113, baseType: !4409, size: 64, offset: 704)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{!16, !4301, !4412}
!4412 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !173, line: 60, baseType: !4413)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !173, line: 58, size: 32, elements: !4414)
!4414 = !{!4415}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4413, file: !173, line: 59, baseType: !16, size: 32)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4375, file: !160, line: 114, baseType: !4334, size: 64, offset: 768)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4375, file: !160, line: 115, baseType: !1256, size: 64, offset: 832)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4375, file: !160, line: 116, baseType: !1256, size: 64, offset: 896)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4375, file: !160, line: 118, baseType: !4329, size: 64, offset: 960)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4375, file: !160, line: 119, baseType: !4325, size: 64, offset: 1024)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4375, file: !160, line: 121, baseType: !4422, size: 64, offset: 1088)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !160, line: 121, flags: DIFlagFwdDecl)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4362, file: !4363, line: 88, baseType: !4314, size: 64, offset: 384)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4362, file: !4363, line: 89, baseType: !4334, size: 64, offset: 448)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4362, file: !4363, line: 90, baseType: !4325, size: 64, offset: 512)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4362, file: !4363, line: 91, baseType: !4325, size: 64, offset: 576)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4362, file: !4363, line: 92, baseType: !4325, size: 64, offset: 640)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4362, file: !4363, line: 94, baseType: !4334, size: 64, offset: 704)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4362, file: !4363, line: 95, baseType: !4334, size: 64, offset: 768)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4362, file: !4363, line: 97, baseType: !4409, size: 64, offset: 832)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4362, file: !4363, line: 98, baseType: !4334, size: 64, offset: 896)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4362, file: !4363, line: 100, baseType: !4334, size: 64, offset: 960)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4362, file: !4363, line: 102, baseType: !4334, size: 64, offset: 1024)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4362, file: !4363, line: 103, baseType: !4325, size: 64, offset: 1088)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4362, file: !4363, line: 105, baseType: !4329, size: 64, offset: 1152)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4362, file: !4363, line: 107, baseType: !4438, size: 64, offset: 1216)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4440)
!4440 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4363, line: 107, flags: DIFlagFwdDecl)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4362, file: !4363, line: 109, baseType: !760, size: 8, offset: 1280)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4297, file: !166, line: 715, baseType: !4374, size: 64, offset: 832)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4297, file: !166, line: 717, baseType: !14, size: 64, offset: 896)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4297, file: !166, line: 719, baseType: !14, size: 64, offset: 960)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4297, file: !166, line: 721, baseType: !382, size: 256, offset: 1024)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4297, file: !166, line: 725, baseType: !4447, size: 448, offset: 1280)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !166, line: 517, size: 448, elements: !4448)
!4448 = !{!4449, !4450, !4451, !4452}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4447, file: !166, line: 518, baseType: !91, size: 128)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4447, file: !166, line: 519, baseType: !91, size: 128, offset: 128)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4447, file: !166, line: 520, baseType: !91, size: 128, offset: 256)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4447, file: !166, line: 521, baseType: !165, size: 32, offset: 384)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4297, file: !166, line: 726, baseType: !4454, size: 2496, offset: 1728)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !173, line: 663, size: 2496, elements: !4455)
!4455 = !{!4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4538, !4542}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4454, file: !173, line: 664, baseType: !4412, size: 32)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4454, file: !173, line: 665, baseType: !98, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4454, file: !173, line: 666, baseType: !98, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4454, file: !173, line: 667, baseType: !760, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4454, file: !173, line: 668, baseType: !760, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4454, file: !173, line: 669, baseType: !760, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4454, file: !173, line: 670, baseType: !760, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4454, file: !173, line: 671, baseType: !760, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4454, file: !173, line: 672, baseType: !760, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4454, file: !173, line: 673, baseType: !760, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4454, file: !173, line: 674, baseType: !760, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4454, file: !173, line: 675, baseType: !726, size: 32, offset: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4454, file: !173, line: 676, baseType: !53, size: 32, offset: 96)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4454, file: !173, line: 678, baseType: !91, size: 128, offset: 128)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4454, file: !173, line: 679, baseType: !273, size: 256, offset: 256)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4454, file: !173, line: 680, baseType: !4472, size: 64, offset: 512)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4474, line: 43, size: 1536, elements: !4475)
!4474 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4475 = !{!4476, !4477, !4478, !4479, !4480, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4473, file: !4474, line: 44, baseType: !10, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4473, file: !4474, line: 45, baseType: !16, size: 32, offset: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4473, file: !4474, line: 46, baseType: !91, size: 128, offset: 128)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4473, file: !4474, line: 47, baseType: !53, size: 32, offset: 256)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4473, file: !4474, line: 48, baseType: !4481, size: 64, offset: 320)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !173, line: 629, flags: DIFlagFwdDecl)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4473, file: !4474, line: 49, baseType: !2178, size: 320, offset: 384)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4473, file: !4474, line: 50, baseType: !33, size: 64, offset: 704)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4473, file: !4474, line: 51, baseType: !2768, size: 64, offset: 768)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4473, file: !4474, line: 52, baseType: !2768, size: 64, offset: 832)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4473, file: !4474, line: 53, baseType: !2768, size: 64, offset: 896)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4473, file: !4474, line: 54, baseType: !2768, size: 64, offset: 960)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4473, file: !4474, line: 55, baseType: !2768, size: 64, offset: 1024)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4473, file: !4474, line: 56, baseType: !33, size: 64, offset: 1088)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4473, file: !4474, line: 57, baseType: !33, size: 64, offset: 1152)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4473, file: !4474, line: 58, baseType: !33, size: 64, offset: 1216)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4473, file: !4474, line: 59, baseType: !33, size: 64, offset: 1280)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4473, file: !4474, line: 60, baseType: !33, size: 64, offset: 1344)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4473, file: !4474, line: 61, baseType: !4301, size: 64, offset: 1408)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4473, file: !4474, line: 62, baseType: !760, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4473, file: !4474, line: 63, baseType: !760, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4454, file: !173, line: 681, baseType: !760, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4454, file: !173, line: 682, baseType: !760, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4454, file: !173, line: 683, baseType: !760, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4454, file: !173, line: 684, baseType: !98, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4454, file: !173, line: 685, baseType: !98, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4454, file: !173, line: 690, baseType: !2760, size: 512, offset: 640)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4454, file: !173, line: 691, baseType: !676, size: 64, offset: 1152)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4454, file: !173, line: 692, baseType: !1725, size: 256, offset: 1216)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4454, file: !173, line: 693, baseType: !48, size: 192, offset: 1472)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4454, file: !173, line: 694, baseType: !4481, size: 64, offset: 1664)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4454, file: !173, line: 695, baseType: !43, size: 32, offset: 1728)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4454, file: !173, line: 696, baseType: !43, size: 32, offset: 1760)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4454, file: !173, line: 697, baseType: !98, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4454, file: !173, line: 698, baseType: !98, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4454, file: !173, line: 699, baseType: !98, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4454, file: !173, line: 700, baseType: !98, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4454, file: !173, line: 701, baseType: !98, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4454, file: !173, line: 702, baseType: !98, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4454, file: !173, line: 703, baseType: !760, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4454, file: !173, line: 704, baseType: !98, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4454, file: !173, line: 705, baseType: !98, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4454, file: !173, line: 706, baseType: !98, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4454, file: !173, line: 707, baseType: !98, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4454, file: !173, line: 708, baseType: !98, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4454, file: !173, line: 709, baseType: !98, size: 32, offset: 1824)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4454, file: !173, line: 710, baseType: !172, size: 32, offset: 1856)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4454, file: !173, line: 711, baseType: !180, size: 32, offset: 1888)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4454, file: !173, line: 712, baseType: !180, size: 32, offset: 1920)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4454, file: !173, line: 713, baseType: !16, size: 32, offset: 1952)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4454, file: !173, line: 714, baseType: !16, size: 32, offset: 1984)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4454, file: !173, line: 715, baseType: !676, size: 64, offset: 2048)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4454, file: !173, line: 716, baseType: !676, size: 64, offset: 2112)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4454, file: !173, line: 717, baseType: !676, size: 64, offset: 2176)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4454, file: !173, line: 718, baseType: !676, size: 64, offset: 2240)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4454, file: !173, line: 720, baseType: !4533, size: 64, offset: 2304)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !173, line: 632, size: 64, elements: !4535)
!4535 = !{!4536, !4537}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4534, file: !173, line: 633, baseType: !53, size: 32)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4534, file: !173, line: 634, baseType: !98, size: 32, offset: 32)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4454, file: !173, line: 721, baseType: !4539, size: 64, offset: 2368)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{null, !4301, !693}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4454, file: !173, line: 722, baseType: !4543, size: 64, offset: 2432)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !173, line: 722, flags: DIFlagFwdDecl)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4297, file: !166, line: 727, baseType: !4546, size: 64, offset: 4224)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !173, line: 742, size: 1792, elements: !4548)
!4548 = !{!4549, !4550, !4551, !4555, !4556, !4557}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4547, file: !173, line: 743, baseType: !4331, size: 1472)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4547, file: !173, line: 744, baseType: !4334, size: 64, offset: 1472)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4547, file: !173, line: 745, baseType: !4552, size: 64, offset: 1536)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{null, !4301, !760}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4547, file: !173, line: 746, baseType: !4334, size: 64, offset: 1600)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4547, file: !173, line: 747, baseType: !4325, size: 64, offset: 1664)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4547, file: !173, line: 748, baseType: !4325, size: 64, offset: 1728)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4297, file: !166, line: 736, baseType: !4559, size: 128, offset: 4288)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !166, line: 529, size: 128, elements: !4560)
!4560 = !{!4561, !4565}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4559, file: !166, line: 531, baseType: !4562, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4564, line: 13, flags: DIFlagFwdDecl)
!4564 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4559, file: !166, line: 532, baseType: !4566, size: 64, offset: 64)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !166, line: 49, flags: DIFlagFwdDecl)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4297, file: !166, line: 738, baseType: !4569, size: 64, offset: 4416)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4571)
!4571 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !166, line: 738, flags: DIFlagFwdDecl)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4297, file: !166, line: 740, baseType: !4573, size: 64, offset: 4480)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4297, file: !166, line: 741, baseType: !676, size: 64, offset: 4544)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4297, file: !166, line: 746, baseType: !676, size: 64, offset: 4608)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4297, file: !166, line: 747, baseType: !4577, size: 64, offset: 4672)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4579)
!4579 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !166, line: 747, flags: DIFlagFwdDecl)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4297, file: !166, line: 749, baseType: !4581, size: 64, offset: 4736)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !166, line: 428, size: 128, elements: !4583)
!4583 = !{!4584, !4585, !4586}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4582, file: !166, line: 433, baseType: !98, size: 32)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4582, file: !166, line: 434, baseType: !98, size: 32, offset: 32)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4582, file: !166, line: 435, baseType: !33, size: 64, offset: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4297, file: !166, line: 751, baseType: !91, size: 128, offset: 4800)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4297, file: !166, line: 762, baseType: !4589, size: 64, offset: 4928)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !166, line: 762, flags: DIFlagFwdDecl)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4297, file: !166, line: 770, baseType: !4592, offset: 4992)
!4592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4593, line: 5, elements: !410)
!4593 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4297, file: !166, line: 772, baseType: !4595, size: 64, offset: 4992)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4597, line: 18, flags: DIFlagFwdDecl)
!4597 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4297, file: !166, line: 773, baseType: !4599, size: 64, offset: 5056)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4363, line: 22, flags: DIFlagFwdDecl)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4297, file: !166, line: 776, baseType: !16, size: 32, offset: 5120)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4297, file: !166, line: 778, baseType: !996, size: 32, offset: 5152)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4297, file: !166, line: 779, baseType: !726, size: 32, offset: 5184)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4297, file: !166, line: 781, baseType: !53, size: 32, offset: 5216)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4297, file: !166, line: 782, baseType: !91, size: 128, offset: 5248)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4297, file: !166, line: 784, baseType: !4607, size: 64, offset: 5376)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4609)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4610, line: 52, size: 768, elements: !4611)
!4610 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4611 = !{!4612, !4613, !4614, !4615, !4616, !4620, !4624, !4625, !4626, !4627, !4631, !4635}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4609, file: !4610, line: 53, baseType: !10, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4609, file: !4610, line: 55, baseType: !1256, size: 64, offset: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4609, file: !4610, line: 56, baseType: !1256, size: 64, offset: 128)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4609, file: !4610, line: 58, baseType: !4314, size: 64, offset: 192)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4609, file: !4610, line: 59, baseType: !4617, size: 64, offset: 256)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!771, !4317, !4323}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4609, file: !4610, line: 61, baseType: !4621, size: 64, offset: 320)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{null, !4607}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4609, file: !4610, line: 62, baseType: !4325, size: 64, offset: 384)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4609, file: !4610, line: 64, baseType: !4334, size: 64, offset: 448)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4609, file: !4610, line: 66, baseType: !1788, size: 64, offset: 512)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4609, file: !4610, line: 67, baseType: !4628, size: 64, offset: 576)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!1687, !4317}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4609, file: !4610, line: 69, baseType: !4632, size: 64, offset: 640)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{null, !4317, !320, !328}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4609, file: !4610, line: 71, baseType: !4329, size: 64, offset: 704)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4297, file: !166, line: 785, baseType: !1256, size: 64, offset: 5440)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4297, file: !166, line: 787, baseType: !4325, size: 64, offset: 5504)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4297, file: !166, line: 788, baseType: !4639, size: 64, offset: 5568)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !166, line: 46, flags: DIFlagFwdDecl)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4297, file: !166, line: 789, baseType: !4642, size: 64, offset: 5632)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !166, line: 48, flags: DIFlagFwdDecl)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4297, file: !166, line: 791, baseType: !4645, size: 64, offset: 5696)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !166, line: 597, size: 128, elements: !4647)
!4647 = !{!4648, !4649, !4650, !4651, !4652}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4646, file: !166, line: 598, baseType: !187, size: 32)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4646, file: !166, line: 599, baseType: !196, size: 32, offset: 32)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4646, file: !166, line: 600, baseType: !201, size: 32, offset: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4646, file: !166, line: 601, baseType: !760, size: 8, offset: 96)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4646, file: !166, line: 602, baseType: !760, size: 8, offset: 104)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4297, file: !166, line: 793, baseType: !206, size: 32, offset: 5760)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4297, file: !166, line: 795, baseType: !760, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4297, file: !166, line: 796, baseType: !760, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4297, file: !166, line: 797, baseType: !760, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4297, file: !166, line: 798, baseType: !760, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4297, file: !166, line: 799, baseType: !760, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !421, file: !422, line: 200, baseType: !91, size: 128, offset: 10176)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !421, file: !422, line: 201, baseType: !91, size: 128, offset: 10304)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !421, file: !422, line: 203, baseType: !98, size: 32, offset: 10432)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !421, file: !422, line: 204, baseType: !98, size: 32, offset: 10464)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !421, file: !422, line: 205, baseType: !4664, size: 64, offset: 10496)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !421, file: !422, line: 207, baseType: !760, size: 8, offset: 10560)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !421, file: !422, line: 209, baseType: !4667, size: 192, offset: 10624)
!4667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2768, size: 192, elements: !620)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "inhibited", scope: !421, file: !422, line: 211, baseType: !760, size: 8, offset: 10816)
!4669 = !DIGlobalVariableExpression(var: !4670, expr: !DIExpression())
!4670 = distinct !DIGlobalVariable(scope: null, file: !3, line: 158, type: !3064, isLocal: true, isDefinition: true)
!4671 = !DIGlobalVariableExpression(var: !4672, expr: !DIExpression())
!4672 = distinct !DIGlobalVariable(name: "mac_hid_emumouse_handler", scope: !2, file: !3, line: 154, type: !4224, isLocal: true, isDefinition: true)
!4673 = !DIGlobalVariableExpression(var: !4674, expr: !DIExpression())
!4674 = distinct !DIGlobalVariable(scope: null, file: !3, line: 114, type: !4675, isLocal: true, isDefinition: true)
!4675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 520, elements: !4676)
!4676 = !{!4677}
!4677 = !DISubrange(count: 65)
!4678 = !DIGlobalVariableExpression(var: !4679, expr: !DIExpression())
!4679 = distinct !DIGlobalVariable(scope: null, file: !3, line: 122, type: !4680, isLocal: true, isDefinition: true)
!4680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 400, elements: !4681)
!4681 = !{!4682}
!4682 = !DISubrange(count: 50)
!4683 = !DIGlobalVariableExpression(var: !4684, expr: !DIExpression())
!4684 = distinct !DIGlobalVariable(scope: null, file: !218, line: 480, type: !4685, isLocal: true, isDefinition: true)
!4685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 168, elements: !4686)
!4686 = !{!4687}
!4687 = !DISubrange(count: 21)
!4688 = !DIGlobalVariableExpression(var: !4689, expr: !DIExpression())
!4689 = distinct !DIGlobalVariable(name: "mac_hid_emumouse_ids", scope: !2, file: !3, line: 144, type: !4690, isLocal: true, isDefinition: true)
!4690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4255, size: 3200, elements: !449)
!4691 = !DIGlobalVariableExpression(var: !4692, expr: !DIExpression())
!4692 = distinct !DIGlobalVariable(name: "mouse_button2_keycode", scope: !2, file: !3, line: 22, type: !16, isLocal: true, isDefinition: true)
!4693 = !DIGlobalVariableExpression(var: !4694, expr: !DIExpression())
!4694 = distinct !DIGlobalVariable(name: "mouse_button3_keycode", scope: !2, file: !3, line: 23, type: !16, isLocal: true, isDefinition: true)
!4695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 312, elements: !4696)
!4696 = !{!4697}
!4697 = !DISubrange(count: 39)
!4698 = !{i32 7, !"Dwarf Version", i32 5}
!4699 = !{i32 2, !"Debug Info Version", i32 3}
!4700 = !{i32 1, !"wchar_size", i32 2}
!4701 = !{i32 8, !"cf-protection-branch", i32 1}
!4702 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4703 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4704 = !{i32 1, !"Code Model", i32 2}
!4705 = !{i32 1, !"override-stack-alignment", i32 8}
!4706 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4707 = distinct !DISubprogram(name: "__initstub__kmod_mac_hid__269_252_mac_hid_init6", scope: !3, file: !3, line: 252, type: !404, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4708 = !DILocation(line: 252, column: 1, scope: !4707)
!4709 = distinct !DISubprogram(name: "mac_hid_init", scope: !3, file: !3, line: 244, type: !404, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4710 = !DILocation(line: 246, column: 26, scope: !4709)
!4711 = !DILocation(line: 246, column: 24, scope: !4709)
!4712 = !DILocation(line: 247, column: 7, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 247, column: 6)
!4714 = !DILocation(line: 247, column: 6, scope: !4709)
!4715 = !DILocation(line: 248, column: 3, scope: !4713)
!4716 = !DILocation(line: 250, column: 2, scope: !4709)
!4717 = !DILocation(line: 251, column: 1, scope: !4709)
!4718 = distinct !DISubprogram(name: "mac_hid_exit", scope: !3, file: !3, line: 254, type: !242, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4719 = !DILocation(line: 256, column: 26, scope: !4718)
!4720 = !DILocation(line: 256, column: 2, scope: !4718)
!4721 = !DILocation(line: 258, column: 6, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 258, column: 6)
!4723 = !DILocation(line: 258, column: 6, scope: !4718)
!4724 = !DILocation(line: 259, column: 3, scope: !4722)
!4725 = !DILocation(line: 260, column: 1, scope: !4718)
!4726 = !DISubprogram(name: "unregister_sysctl_table", scope: !6, file: !6, line: 234, type: !4727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{null, !248}
!4729 = distinct !DISubprogram(name: "mac_hid_stop_emulation", scope: !3, file: !3, line: 179, type: !242, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4730 = !DILocation(line: 181, column: 2, scope: !4729)
!4731 = !DILocation(line: 182, column: 2, scope: !4729)
!4732 = !DILocation(line: 183, column: 1, scope: !4729)
!4733 = !DISubprogram(name: "register_sysctl_sz", scope: !6, file: !6, line: 232, type: !4734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!248, !10, !27, !29}
!4736 = distinct !DISubprogram(name: "mac_hid_toggle_emumouse", scope: !3, file: !3, line: 185, type: !25, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4737)
!4737 = !{!4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745}
!4738 = !DILocalVariable(name: "table", arg: 1, scope: !4736, file: !3, line: 185, type: !27)
!4739 = !DILocalVariable(name: "write", arg: 2, scope: !4736, file: !3, line: 185, type: !16)
!4740 = !DILocalVariable(name: "buffer", arg: 3, scope: !4736, file: !3, line: 186, type: !14)
!4741 = !DILocalVariable(name: "lenp", arg: 4, scope: !4736, file: !3, line: 186, type: !28)
!4742 = !DILocalVariable(name: "ppos", arg: 5, scope: !4736, file: !3, line: 186, type: !34)
!4743 = !DILocalVariable(name: "valp", scope: !4736, file: !3, line: 188, type: !2078)
!4744 = !DILocalVariable(name: "old_val", scope: !4736, file: !3, line: 189, type: !16)
!4745 = !DILocalVariable(name: "rc", scope: !4736, file: !3, line: 190, type: !16)
!4746 = !DILocation(line: 185, column: 54, scope: !4736)
!4747 = !DILocation(line: 185, column: 65, scope: !4736)
!4748 = !DILocation(line: 186, column: 14, scope: !4736)
!4749 = !DILocation(line: 186, column: 30, scope: !4736)
!4750 = !DILocation(line: 186, column: 44, scope: !4736)
!4751 = !DILocation(line: 188, column: 2, scope: !4736)
!4752 = !DILocation(line: 188, column: 7, scope: !4736)
!4753 = !DILocation(line: 188, column: 14, scope: !4736)
!4754 = !DILocation(line: 188, column: 21, scope: !4736)
!4755 = !DILocation(line: 189, column: 2, scope: !4736)
!4756 = !DILocation(line: 189, column: 6, scope: !4736)
!4757 = !DILocation(line: 189, column: 17, scope: !4736)
!4758 = !DILocation(line: 189, column: 16, scope: !4736)
!4759 = !DILocation(line: 190, column: 2, scope: !4736)
!4760 = !DILocation(line: 190, column: 6, scope: !4736)
!4761 = !DILocation(line: 192, column: 7, scope: !4736)
!4762 = !DILocation(line: 192, column: 5, scope: !4736)
!4763 = !DILocation(line: 193, column: 6, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4736, file: !3, line: 193, column: 6)
!4765 = !DILocation(line: 193, column: 6, scope: !4736)
!4766 = !DILocation(line: 194, column: 10, scope: !4764)
!4767 = !DILocation(line: 194, column: 3, scope: !4764)
!4768 = !DILocation(line: 196, column: 21, scope: !4736)
!4769 = !DILocation(line: 196, column: 28, scope: !4736)
!4770 = !DILocation(line: 196, column: 35, scope: !4736)
!4771 = !DILocation(line: 196, column: 43, scope: !4736)
!4772 = !DILocation(line: 196, column: 49, scope: !4736)
!4773 = !DILocation(line: 196, column: 7, scope: !4736)
!4774 = !DILocation(line: 196, column: 5, scope: !4736)
!4775 = !DILocation(line: 198, column: 6, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4736, file: !3, line: 198, column: 6)
!4777 = !DILocation(line: 198, column: 9, scope: !4776)
!4778 = !DILocation(line: 198, column: 14, scope: !4776)
!4779 = !DILocation(line: 198, column: 17, scope: !4776)
!4780 = !DILocation(line: 198, column: 23, scope: !4776)
!4781 = !DILocation(line: 198, column: 27, scope: !4776)
!4782 = !DILocation(line: 198, column: 26, scope: !4776)
!4783 = !DILocation(line: 198, column: 35, scope: !4776)
!4784 = !DILocation(line: 198, column: 32, scope: !4776)
!4785 = !DILocation(line: 198, column: 6, scope: !4736)
!4786 = !DILocation(line: 199, column: 8, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4788, file: !3, line: 199, column: 7)
!4788 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 198, column: 44)
!4789 = !DILocation(line: 199, column: 7, scope: !4787)
!4790 = !DILocation(line: 199, column: 13, scope: !4787)
!4791 = !DILocation(line: 199, column: 7, scope: !4788)
!4792 = !DILocation(line: 200, column: 9, scope: !4787)
!4793 = !DILocation(line: 200, column: 7, scope: !4787)
!4794 = !DILocation(line: 200, column: 4, scope: !4787)
!4795 = !DILocation(line: 201, column: 13, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4787, file: !3, line: 201, column: 12)
!4797 = !DILocation(line: 201, column: 12, scope: !4796)
!4798 = !DILocation(line: 201, column: 18, scope: !4796)
!4799 = !DILocation(line: 201, column: 12, scope: !4787)
!4800 = !DILocation(line: 202, column: 4, scope: !4796)
!4801 = !DILocation(line: 204, column: 7, scope: !4796)
!4802 = !DILocation(line: 205, column: 2, scope: !4788)
!4803 = !DILocation(line: 208, column: 6, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4736, file: !3, line: 208, column: 6)
!4805 = !DILocation(line: 208, column: 6, scope: !4736)
!4806 = !DILocation(line: 209, column: 11, scope: !4804)
!4807 = !DILocation(line: 209, column: 4, scope: !4804)
!4808 = !DILocation(line: 209, column: 9, scope: !4804)
!4809 = !DILocation(line: 209, column: 3, scope: !4804)
!4810 = !DILocation(line: 211, column: 2, scope: !4736)
!4811 = !DILocation(line: 213, column: 9, scope: !4736)
!4812 = !DILocation(line: 213, column: 2, scope: !4736)
!4813 = !DILocation(line: 214, column: 1, scope: !4736)
!4814 = !DISubprogram(name: "proc_dointvec", scope: !6, file: !6, line: 70, type: !25, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4815 = !DISubprogram(name: "mutex_lock_killable", scope: !383, file: !383, line: 229, type: !4816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{!16, !4818}
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!4819 = distinct !DISubprogram(name: "mac_hid_start_emulation", scope: !3, file: !3, line: 162, type: !404, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4820)
!4820 = !{!4821}
!4821 = !DILocalVariable(name: "err", scope: !4819, file: !3, line: 164, type: !16)
!4822 = !DILocation(line: 164, column: 2, scope: !4819)
!4823 = !DILocation(line: 164, column: 6, scope: !4819)
!4824 = !DILocation(line: 166, column: 8, scope: !4819)
!4825 = !DILocation(line: 166, column: 6, scope: !4819)
!4826 = !DILocation(line: 167, column: 6, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 167, column: 6)
!4828 = !DILocation(line: 167, column: 6, scope: !4819)
!4829 = !DILocation(line: 168, column: 10, scope: !4827)
!4830 = !DILocation(line: 168, column: 3, scope: !4827)
!4831 = !DILocation(line: 170, column: 8, scope: !4819)
!4832 = !DILocation(line: 170, column: 6, scope: !4819)
!4833 = !DILocation(line: 171, column: 6, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 171, column: 6)
!4835 = !DILocation(line: 171, column: 6, scope: !4819)
!4836 = !DILocation(line: 172, column: 3, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 171, column: 11)
!4838 = !DILocation(line: 173, column: 10, scope: !4837)
!4839 = !DILocation(line: 173, column: 3, scope: !4837)
!4840 = !DILocation(line: 176, column: 2, scope: !4819)
!4841 = !DILocation(line: 177, column: 1, scope: !4819)
!4842 = !DISubprogram(name: "mutex_unlock", scope: !383, file: !383, line: 246, type: !4843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{null, !4818}
!4845 = !DILocation(line: 33, column: 2, scope: !403)
!4846 = !DILocation(line: 33, column: 6, scope: !403)
!4847 = !DILocation(line: 35, column: 25, scope: !403)
!4848 = !DILocation(line: 35, column: 23, scope: !403)
!4849 = !DILocation(line: 36, column: 7, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !403, file: !3, line: 36, column: 6)
!4851 = !DILocation(line: 36, column: 6, scope: !403)
!4852 = !DILocation(line: 37, column: 3, scope: !4850)
!4853 = !DILocation(line: 39, column: 2, scope: !403)
!4854 = !DILocation(line: 39, column: 2, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !403, file: !3, line: 39, column: 2)
!4856 = !DILocation(line: 41, column: 2, scope: !403)
!4857 = !DILocation(line: 41, column: 2, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !403, file: !3, line: 41, column: 2)
!4859 = !DILocation(line: 44, column: 2, scope: !403)
!4860 = !DILocation(line: 44, column: 24, scope: !403)
!4861 = !DILocation(line: 44, column: 29, scope: !403)
!4862 = !DILocation(line: 45, column: 2, scope: !403)
!4863 = !DILocation(line: 45, column: 24, scope: !403)
!4864 = !DILocation(line: 45, column: 27, scope: !403)
!4865 = !DILocation(line: 45, column: 35, scope: !403)
!4866 = !DILocation(line: 46, column: 2, scope: !403)
!4867 = !DILocation(line: 46, column: 24, scope: !403)
!4868 = !DILocation(line: 46, column: 27, scope: !403)
!4869 = !DILocation(line: 46, column: 34, scope: !403)
!4870 = !DILocation(line: 47, column: 2, scope: !403)
!4871 = !DILocation(line: 47, column: 24, scope: !403)
!4872 = !DILocation(line: 47, column: 27, scope: !403)
!4873 = !DILocation(line: 47, column: 35, scope: !403)
!4874 = !DILocation(line: 48, column: 2, scope: !403)
!4875 = !DILocation(line: 48, column: 24, scope: !403)
!4876 = !DILocation(line: 48, column: 27, scope: !403)
!4877 = !DILocation(line: 48, column: 35, scope: !403)
!4878 = !DILocation(line: 50, column: 2, scope: !403)
!4879 = !DILocation(line: 50, column: 24, scope: !403)
!4880 = !DILocation(line: 50, column: 33, scope: !403)
!4881 = !DILocation(line: 51, column: 2, scope: !403)
!4882 = !DILocation(line: 51, column: 24, scope: !403)
!4883 = !DILocation(line: 51, column: 52, scope: !403)
!4884 = !DILocation(line: 53, column: 2, scope: !403)
!4885 = !DILocation(line: 53, column: 24, scope: !403)
!4886 = !DILocation(line: 53, column: 34, scope: !403)
!4887 = !DILocation(line: 55, column: 30, scope: !403)
!4888 = !DILocation(line: 55, column: 8, scope: !403)
!4889 = !DILocation(line: 55, column: 6, scope: !403)
!4890 = !DILocation(line: 56, column: 6, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !403, file: !3, line: 56, column: 6)
!4892 = !DILocation(line: 56, column: 6, scope: !403)
!4893 = !DILocation(line: 57, column: 21, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 56, column: 11)
!4895 = !DILocation(line: 57, column: 3, scope: !4894)
!4896 = !DILocation(line: 58, column: 24, scope: !4894)
!4897 = !DILocation(line: 59, column: 10, scope: !4894)
!4898 = !DILocation(line: 59, column: 3, scope: !4894)
!4899 = !DILocation(line: 62, column: 2, scope: !403)
!4900 = !DILocation(line: 63, column: 1, scope: !403)
!4901 = !DISubprogram(name: "input_register_handler", scope: !422, file: !422, line: 396, type: !4902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{!16, !4223}
!4904 = distinct !DISubprogram(name: "mac_hid_destroy_emumouse", scope: !3, file: !3, line: 65, type: !242, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4905 = !DILocation(line: 67, column: 26, scope: !4904)
!4906 = !DILocation(line: 67, column: 2, scope: !4904)
!4907 = !DILocation(line: 68, column: 23, scope: !4904)
!4908 = !DILocation(line: 69, column: 1, scope: !4904)
!4909 = !DISubprogram(name: "input_allocate_device", scope: !422, file: !422, line: 359, type: !4910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!420}
!4912 = !DISubprogram(name: "input_register_device", scope: !422, file: !422, line: 384, type: !4200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4913 = !DISubprogram(name: "input_free_device", scope: !422, file: !422, line: 361, type: !4204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4914 = distinct !DISubprogram(name: "mac_hid_emumouse_filter", scope: !3, file: !3, line: 71, type: !4244, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4915)
!4915 = !{!4916, !4917, !4918, !4919, !4920}
!4916 = !DILocalVariable(name: "handle", arg: 1, scope: !4914, file: !3, line: 71, type: !4215)
!4917 = !DILocalVariable(name: "type", arg: 2, scope: !4914, file: !3, line: 72, type: !98)
!4918 = !DILocalVariable(name: "code", arg: 3, scope: !4914, file: !3, line: 72, type: !98)
!4919 = !DILocalVariable(name: "value", arg: 4, scope: !4914, file: !3, line: 73, type: !16)
!4920 = !DILocalVariable(name: "btn", scope: !4914, file: !3, line: 75, type: !98)
!4921 = !DILocation(line: 71, column: 58, scope: !4914)
!4922 = !DILocation(line: 72, column: 22, scope: !4914)
!4923 = !DILocation(line: 72, column: 41, scope: !4914)
!4924 = !DILocation(line: 73, column: 13, scope: !4914)
!4925 = !DILocation(line: 75, column: 2, scope: !4914)
!4926 = !DILocation(line: 75, column: 15, scope: !4914)
!4927 = !DILocation(line: 77, column: 6, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4914, file: !3, line: 77, column: 6)
!4929 = !DILocation(line: 77, column: 11, scope: !4928)
!4930 = !DILocation(line: 77, column: 6, scope: !4914)
!4931 = !DILocation(line: 78, column: 3, scope: !4928)
!4932 = !DILocation(line: 80, column: 6, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4914, file: !3, line: 80, column: 6)
!4934 = !DILocation(line: 80, column: 14, scope: !4933)
!4935 = !DILocation(line: 80, column: 11, scope: !4933)
!4936 = !DILocation(line: 80, column: 6, scope: !4914)
!4937 = !DILocation(line: 81, column: 7, scope: !4933)
!4938 = !DILocation(line: 81, column: 3, scope: !4933)
!4939 = !DILocation(line: 82, column: 11, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4933, file: !3, line: 82, column: 11)
!4941 = !DILocation(line: 82, column: 19, scope: !4940)
!4942 = !DILocation(line: 82, column: 16, scope: !4940)
!4943 = !DILocation(line: 82, column: 11, scope: !4933)
!4944 = !DILocation(line: 83, column: 7, scope: !4940)
!4945 = !DILocation(line: 83, column: 3, scope: !4940)
!4946 = !DILocation(line: 85, column: 3, scope: !4940)
!4947 = !DILocation(line: 87, column: 19, scope: !4914)
!4948 = !DILocation(line: 87, column: 41, scope: !4914)
!4949 = !DILocation(line: 87, column: 46, scope: !4914)
!4950 = !DILocation(line: 87, column: 2, scope: !4914)
!4951 = !DILocation(line: 88, column: 13, scope: !4914)
!4952 = !DILocation(line: 88, column: 2, scope: !4914)
!4953 = !DILocation(line: 90, column: 2, scope: !4914)
!4954 = !DILocation(line: 91, column: 1, scope: !4914)
!4955 = distinct !DISubprogram(name: "mac_hid_emumouse_connect", scope: !3, file: !3, line: 93, type: !4252, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4956)
!4956 = !{!4957, !4958, !4959, !4960, !4961, !4962, !4963}
!4957 = !DILocalVariable(name: "handler", arg: 1, scope: !4955, file: !3, line: 93, type: !4223)
!4958 = !DILocalVariable(name: "dev", arg: 2, scope: !4955, file: !3, line: 94, type: !420)
!4959 = !DILocalVariable(name: "id", arg: 3, scope: !4955, file: !3, line: 95, type: !4254)
!4960 = !DILocalVariable(name: "handle", scope: !4955, file: !3, line: 97, type: !4215)
!4961 = !DILocalVariable(name: "error", scope: !4955, file: !3, line: 98, type: !16)
!4962 = !DILabel(scope: !4955, name: "err_unregister", file: !3, line: 130)
!4963 = !DILabel(scope: !4955, name: "err_free", file: !3, line: 132)
!4964 = !DILocation(line: 93, column: 59, scope: !4955)
!4965 = !DILocation(line: 94, column: 27, scope: !4955)
!4966 = !DILocation(line: 95, column: 39, scope: !4955)
!4967 = !DILocation(line: 97, column: 2, scope: !4955)
!4968 = !DILocation(line: 97, column: 23, scope: !4955)
!4969 = !DILocation(line: 98, column: 2, scope: !4955)
!4970 = !DILocation(line: 98, column: 6, scope: !4955)
!4971 = !DILocation(line: 101, column: 6, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 101, column: 6)
!4973 = !DILocation(line: 101, column: 13, scope: !4972)
!4974 = !DILocation(line: 101, column: 10, scope: !4972)
!4975 = !DILocation(line: 101, column: 6, scope: !4955)
!4976 = !DILocation(line: 102, column: 3, scope: !4972)
!4977 = !DILocation(line: 104, column: 11, scope: !4955)
!4978 = !DILocation(line: 104, column: 9, scope: !4955)
!4979 = !DILocation(line: 105, column: 7, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 105, column: 6)
!4981 = !DILocation(line: 105, column: 6, scope: !4955)
!4982 = !DILocation(line: 106, column: 3, scope: !4980)
!4983 = !DILocation(line: 108, column: 16, scope: !4955)
!4984 = !DILocation(line: 108, column: 2, scope: !4955)
!4985 = !DILocation(line: 108, column: 10, scope: !4955)
!4986 = !DILocation(line: 108, column: 14, scope: !4955)
!4987 = !DILocation(line: 109, column: 20, scope: !4955)
!4988 = !DILocation(line: 109, column: 2, scope: !4955)
!4989 = !DILocation(line: 109, column: 10, scope: !4955)
!4990 = !DILocation(line: 109, column: 18, scope: !4955)
!4991 = !DILocation(line: 110, column: 2, scope: !4955)
!4992 = !DILocation(line: 110, column: 10, scope: !4955)
!4993 = !DILocation(line: 110, column: 15, scope: !4955)
!4994 = !DILocation(line: 112, column: 32, scope: !4955)
!4995 = !DILocation(line: 112, column: 10, scope: !4955)
!4996 = !DILocation(line: 112, column: 8, scope: !4955)
!4997 = !DILocation(line: 113, column: 6, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 113, column: 6)
!4999 = !DILocation(line: 113, column: 6, scope: !4955)
!5000 = !DILocation(line: 114, column: 3, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 114, column: 3)
!5002 = distinct !DILexicalBlock(scope: !4998, file: !3, line: 113, column: 13)
!5003 = !DILocation(line: 114, column: 3, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !5001, file: !3, line: 114, column: 3)
!5005 = !DILocation(line: 117, column: 3, scope: !5002)
!5006 = !DILocation(line: 120, column: 28, scope: !4955)
!5007 = !DILocation(line: 120, column: 10, scope: !4955)
!5008 = !DILocation(line: 120, column: 8, scope: !4955)
!5009 = !DILocation(line: 121, column: 6, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 121, column: 6)
!5011 = !DILocation(line: 121, column: 6, scope: !4955)
!5012 = !DILocation(line: 122, column: 3, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 122, column: 3)
!5014 = distinct !DILexicalBlock(scope: !5010, file: !3, line: 121, column: 13)
!5015 = !DILocation(line: 122, column: 3, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5013, file: !3, line: 122, column: 3)
!5017 = !DILocation(line: 125, column: 3, scope: !5014)
!5018 = !DILocation(line: 128, column: 2, scope: !4955)
!5019 = !DILocation(line: 130, column: 2, scope: !4955)
!5020 = !DILocation(line: 131, column: 26, scope: !4955)
!5021 = !DILocation(line: 131, column: 2, scope: !4955)
!5022 = !DILocation(line: 132, column: 2, scope: !4955)
!5023 = !DILocation(line: 133, column: 8, scope: !4955)
!5024 = !DILocation(line: 133, column: 2, scope: !4955)
!5025 = !DILocation(line: 134, column: 9, scope: !4955)
!5026 = !DILocation(line: 134, column: 2, scope: !4955)
!5027 = !DILocation(line: 135, column: 1, scope: !4955)
!5028 = distinct !DISubprogram(name: "mac_hid_emumouse_disconnect", scope: !3, file: !3, line: 137, type: !4281, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5029)
!5029 = !{!5030}
!5030 = !DILocalVariable(name: "handle", arg: 1, scope: !5028, file: !3, line: 137, type: !4215)
!5031 = !DILocation(line: 137, column: 62, scope: !5028)
!5032 = !DILocation(line: 139, column: 21, scope: !5028)
!5033 = !DILocation(line: 139, column: 2, scope: !5028)
!5034 = !DILocation(line: 140, column: 26, scope: !5028)
!5035 = !DILocation(line: 140, column: 2, scope: !5028)
!5036 = !DILocation(line: 141, column: 8, scope: !5028)
!5037 = !DILocation(line: 141, column: 2, scope: !5028)
!5038 = !DILocation(line: 142, column: 1, scope: !5028)
!5039 = distinct !DISubprogram(name: "input_report_key", scope: !422, file: !422, line: 423, type: !5040, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5042)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{null, !420, !98, !16}
!5042 = !{!5043, !5044, !5045}
!5043 = !DILocalVariable(name: "dev", arg: 1, scope: !5039, file: !422, line: 423, type: !420)
!5044 = !DILocalVariable(name: "code", arg: 2, scope: !5039, file: !422, line: 423, type: !98)
!5045 = !DILocalVariable(name: "value", arg: 3, scope: !5039, file: !422, line: 423, type: !16)
!5046 = !DILocation(line: 423, column: 55, scope: !5039)
!5047 = !DILocation(line: 423, column: 73, scope: !5039)
!5048 = !DILocation(line: 423, column: 83, scope: !5039)
!5049 = !DILocation(line: 425, column: 14, scope: !5039)
!5050 = !DILocation(line: 425, column: 27, scope: !5039)
!5051 = !DILocation(line: 425, column: 35, scope: !5039)
!5052 = !DILocation(line: 425, column: 34, scope: !5039)
!5053 = !DILocation(line: 425, column: 33, scope: !5039)
!5054 = !DILocation(line: 425, column: 2, scope: !5039)
!5055 = !DILocation(line: 426, column: 1, scope: !5039)
!5056 = distinct !DISubprogram(name: "input_sync", scope: !422, file: !422, line: 448, type: !4204, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5057)
!5057 = !{!5058}
!5058 = !DILocalVariable(name: "dev", arg: 1, scope: !5056, file: !422, line: 448, type: !420)
!5059 = !DILocation(line: 448, column: 49, scope: !5056)
!5060 = !DILocation(line: 450, column: 14, scope: !5056)
!5061 = !DILocation(line: 450, column: 2, scope: !5056)
!5062 = !DILocation(line: 451, column: 1, scope: !5056)
!5063 = !DISubprogram(name: "input_event", scope: !422, file: !422, line: 420, type: !5064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5064 = !DISubroutineType(types: !5065)
!5065 = !{null, !420, !98, !98, !16}
!5066 = distinct !DISubprogram(name: "kzalloc", scope: !218, file: !218, line: 719, type: !5067, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5069)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!14, !29, !228}
!5069 = !{!5070, !5071}
!5070 = !DILocalVariable(name: "size", arg: 1, scope: !5066, file: !218, line: 719, type: !29)
!5071 = !DILocalVariable(name: "flags", arg: 2, scope: !5066, file: !218, line: 719, type: !228)
!5072 = !DILocation(line: 719, column: 52, scope: !5066)
!5073 = !DILocation(line: 719, column: 64, scope: !5066)
!5074 = !DILocation(line: 721, column: 17, scope: !5066)
!5075 = !DILocation(line: 721, column: 23, scope: !5066)
!5076 = !DILocation(line: 721, column: 29, scope: !5066)
!5077 = !DILocation(line: 721, column: 9, scope: !5066)
!5078 = !DILocation(line: 721, column: 2, scope: !5066)
!5079 = !DISubprogram(name: "input_register_handle", scope: !422, file: !422, line: 406, type: !5080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{!16, !4215}
!5082 = !DISubprogram(name: "_printk", scope: !5083, file: !5083, line: 153, type: !5084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5083 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5084 = !DISubroutineType(types: !5085)
!5085 = !{!16, !10, null}
!5086 = !DISubprogram(name: "input_open_device", scope: !422, file: !422, line: 412, type: !5080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5087 = !DISubprogram(name: "input_unregister_handle", scope: !422, file: !422, line: 407, type: !4281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5088 = !DISubprogram(name: "kfree", scope: !218, file: !218, line: 227, type: !5089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5089 = !DISubroutineType(types: !5090)
!5090 = !{null, !1687}
!5091 = distinct !DISubprogram(name: "kmalloc", scope: !218, file: !218, line: 591, type: !5067, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5092)
!5092 = !{!5093, !5094, !5095}
!5093 = !DILocalVariable(name: "size", arg: 1, scope: !5091, file: !218, line: 591, type: !29)
!5094 = !DILocalVariable(name: "flags", arg: 2, scope: !5091, file: !218, line: 591, type: !228)
!5095 = !DILocalVariable(name: "index", scope: !5096, file: !218, line: 594, type: !98)
!5096 = distinct !DILexicalBlock(scope: !5097, file: !218, line: 593, column: 42)
!5097 = distinct !DILexicalBlock(scope: !5091, file: !218, line: 593, column: 6)
!5098 = !DILocation(line: 591, column: 61, scope: !5091)
!5099 = !DILocation(line: 591, column: 73, scope: !5091)
!5100 = !DILocation(line: 593, column: 27, scope: !5097)
!5101 = !DILocation(line: 593, column: 6, scope: !5097)
!5102 = !DILocation(line: 593, column: 33, scope: !5097)
!5103 = !DILocation(line: 593, column: 36, scope: !5097)
!5104 = !DILocation(line: 593, column: 6, scope: !5091)
!5105 = !DILocation(line: 594, column: 3, scope: !5096)
!5106 = !DILocation(line: 594, column: 16, scope: !5096)
!5107 = !DILocation(line: 596, column: 7, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5096, file: !218, line: 596, column: 7)
!5109 = !DILocation(line: 596, column: 12, scope: !5108)
!5110 = !DILocation(line: 596, column: 7, scope: !5096)
!5111 = !DILocation(line: 597, column: 25, scope: !5108)
!5112 = !DILocation(line: 597, column: 31, scope: !5108)
!5113 = !DILocation(line: 597, column: 11, scope: !5108)
!5114 = !DILocation(line: 597, column: 4, scope: !5108)
!5115 = !DILocation(line: 599, column: 11, scope: !5096)
!5116 = !DILocation(line: 599, column: 9, scope: !5096)
!5117 = !DILocation(line: 601, column: 33, scope: !5096)
!5118 = !DILocation(line: 601, column: 40, scope: !5096)
!5119 = !DILocation(line: 601, column: 20, scope: !5096)
!5120 = !DILocation(line: 601, column: 5, scope: !5096)
!5121 = !DILocation(line: 601, column: 51, scope: !5096)
!5122 = !DILocation(line: 602, column: 5, scope: !5096)
!5123 = !DILocation(line: 602, column: 12, scope: !5096)
!5124 = !DILocation(line: 600, column: 10, scope: !5096)
!5125 = !DILocation(line: 600, column: 3, scope: !5096)
!5126 = !DILocation(line: 603, column: 2, scope: !5097)
!5127 = !DILocation(line: 604, column: 19, scope: !5091)
!5128 = !DILocation(line: 604, column: 25, scope: !5091)
!5129 = !DILocation(line: 604, column: 9, scope: !5091)
!5130 = !DILocation(line: 604, column: 2, scope: !5091)
!5131 = !DILocation(line: 605, column: 1, scope: !5091)
!5132 = !DISubprogram(name: "kmalloc_large", scope: !218, file: !218, line: 531, type: !5067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5133 = distinct !DISubprogram(name: "__kmalloc_index", scope: !218, file: !218, line: 444, type: !5134, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5136)
!5134 = !DISubroutineType(types: !5135)
!5135 = !{!98, !29, !760}
!5136 = !{!5137, !5138}
!5137 = !DILocalVariable(name: "size", arg: 1, scope: !5133, file: !218, line: 444, type: !29)
!5138 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5133, file: !218, line: 445, type: !760)
!5139 = !DILocation(line: 444, column: 60, scope: !5133)
!5140 = !DILocation(line: 445, column: 16, scope: !5133)
!5141 = !DILocation(line: 447, column: 7, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 447, column: 6)
!5143 = !DILocation(line: 447, column: 6, scope: !5133)
!5144 = !DILocation(line: 448, column: 3, scope: !5142)
!5145 = !DILocation(line: 450, column: 6, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 450, column: 6)
!5147 = !DILocation(line: 450, column: 11, scope: !5146)
!5148 = !DILocation(line: 450, column: 6, scope: !5133)
!5149 = !DILocation(line: 451, column: 3, scope: !5146)
!5150 = !DILocation(line: 453, column: 32, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 453, column: 6)
!5152 = !DILocation(line: 453, column: 37, scope: !5151)
!5153 = !DILocation(line: 453, column: 42, scope: !5151)
!5154 = !DILocation(line: 453, column: 45, scope: !5151)
!5155 = !DILocation(line: 453, column: 50, scope: !5151)
!5156 = !DILocation(line: 453, column: 6, scope: !5133)
!5157 = !DILocation(line: 454, column: 3, scope: !5151)
!5158 = !DILocation(line: 455, column: 32, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 455, column: 6)
!5160 = !DILocation(line: 455, column: 37, scope: !5159)
!5161 = !DILocation(line: 455, column: 43, scope: !5159)
!5162 = !DILocation(line: 455, column: 46, scope: !5159)
!5163 = !DILocation(line: 455, column: 51, scope: !5159)
!5164 = !DILocation(line: 455, column: 6, scope: !5133)
!5165 = !DILocation(line: 456, column: 3, scope: !5159)
!5166 = !DILocation(line: 457, column: 6, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 457, column: 6)
!5168 = !DILocation(line: 457, column: 11, scope: !5167)
!5169 = !DILocation(line: 457, column: 6, scope: !5133)
!5170 = !DILocation(line: 457, column: 26, scope: !5167)
!5171 = !DILocation(line: 458, column: 6, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 458, column: 6)
!5173 = !DILocation(line: 458, column: 11, scope: !5172)
!5174 = !DILocation(line: 458, column: 6, scope: !5133)
!5175 = !DILocation(line: 458, column: 26, scope: !5172)
!5176 = !DILocation(line: 459, column: 6, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 459, column: 6)
!5178 = !DILocation(line: 459, column: 11, scope: !5177)
!5179 = !DILocation(line: 459, column: 6, scope: !5133)
!5180 = !DILocation(line: 459, column: 26, scope: !5177)
!5181 = !DILocation(line: 460, column: 6, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 460, column: 6)
!5183 = !DILocation(line: 460, column: 11, scope: !5182)
!5184 = !DILocation(line: 460, column: 6, scope: !5133)
!5185 = !DILocation(line: 460, column: 26, scope: !5182)
!5186 = !DILocation(line: 461, column: 6, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 461, column: 6)
!5188 = !DILocation(line: 461, column: 11, scope: !5187)
!5189 = !DILocation(line: 461, column: 6, scope: !5133)
!5190 = !DILocation(line: 461, column: 26, scope: !5187)
!5191 = !DILocation(line: 462, column: 6, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 462, column: 6)
!5193 = !DILocation(line: 462, column: 11, scope: !5192)
!5194 = !DILocation(line: 462, column: 6, scope: !5133)
!5195 = !DILocation(line: 462, column: 26, scope: !5192)
!5196 = !DILocation(line: 463, column: 6, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 463, column: 6)
!5198 = !DILocation(line: 463, column: 11, scope: !5197)
!5199 = !DILocation(line: 463, column: 6, scope: !5133)
!5200 = !DILocation(line: 463, column: 26, scope: !5197)
!5201 = !DILocation(line: 464, column: 6, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 464, column: 6)
!5203 = !DILocation(line: 464, column: 11, scope: !5202)
!5204 = !DILocation(line: 464, column: 6, scope: !5133)
!5205 = !DILocation(line: 464, column: 26, scope: !5202)
!5206 = !DILocation(line: 465, column: 6, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 465, column: 6)
!5208 = !DILocation(line: 465, column: 11, scope: !5207)
!5209 = !DILocation(line: 465, column: 6, scope: !5133)
!5210 = !DILocation(line: 465, column: 26, scope: !5207)
!5211 = !DILocation(line: 466, column: 6, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 466, column: 6)
!5213 = !DILocation(line: 466, column: 11, scope: !5212)
!5214 = !DILocation(line: 466, column: 6, scope: !5133)
!5215 = !DILocation(line: 466, column: 26, scope: !5212)
!5216 = !DILocation(line: 467, column: 6, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 467, column: 6)
!5218 = !DILocation(line: 467, column: 11, scope: !5217)
!5219 = !DILocation(line: 467, column: 6, scope: !5133)
!5220 = !DILocation(line: 467, column: 26, scope: !5217)
!5221 = !DILocation(line: 468, column: 6, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 468, column: 6)
!5223 = !DILocation(line: 468, column: 11, scope: !5222)
!5224 = !DILocation(line: 468, column: 6, scope: !5133)
!5225 = !DILocation(line: 468, column: 26, scope: !5222)
!5226 = !DILocation(line: 469, column: 6, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 469, column: 6)
!5228 = !DILocation(line: 469, column: 11, scope: !5227)
!5229 = !DILocation(line: 469, column: 6, scope: !5133)
!5230 = !DILocation(line: 469, column: 26, scope: !5227)
!5231 = !DILocation(line: 470, column: 6, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 470, column: 6)
!5233 = !DILocation(line: 470, column: 11, scope: !5232)
!5234 = !DILocation(line: 470, column: 6, scope: !5133)
!5235 = !DILocation(line: 470, column: 26, scope: !5232)
!5236 = !DILocation(line: 471, column: 6, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 471, column: 6)
!5238 = !DILocation(line: 471, column: 11, scope: !5237)
!5239 = !DILocation(line: 471, column: 6, scope: !5133)
!5240 = !DILocation(line: 471, column: 26, scope: !5237)
!5241 = !DILocation(line: 472, column: 6, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 472, column: 6)
!5243 = !DILocation(line: 472, column: 11, scope: !5242)
!5244 = !DILocation(line: 472, column: 6, scope: !5133)
!5245 = !DILocation(line: 472, column: 26, scope: !5242)
!5246 = !DILocation(line: 473, column: 6, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 473, column: 6)
!5248 = !DILocation(line: 473, column: 11, scope: !5247)
!5249 = !DILocation(line: 473, column: 6, scope: !5133)
!5250 = !DILocation(line: 473, column: 26, scope: !5247)
!5251 = !DILocation(line: 474, column: 6, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 474, column: 6)
!5253 = !DILocation(line: 474, column: 11, scope: !5252)
!5254 = !DILocation(line: 474, column: 6, scope: !5133)
!5255 = !DILocation(line: 474, column: 27, scope: !5252)
!5256 = !DILocation(line: 475, column: 6, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 475, column: 6)
!5258 = !DILocation(line: 475, column: 11, scope: !5257)
!5259 = !DILocation(line: 475, column: 6, scope: !5133)
!5260 = !DILocation(line: 475, column: 32, scope: !5257)
!5261 = !DILocation(line: 477, column: 50, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5133, file: !218, line: 477, column: 6)
!5263 = !{i8 0, i8 2}
!5264 = !DILocation(line: 477, column: 6, scope: !5133)
!5265 = !DILocation(line: 478, column: 3, scope: !5262)
!5266 = !DILocation(line: 478, column: 3, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5268, file: !218, line: 478, column: 3)
!5268 = distinct !DILexicalBlock(scope: !5262, file: !218, line: 478, column: 3)
!5269 = !{i32 -2141710061}
!5270 = !DILocation(line: 478, column: 3, scope: !5268)
!5271 = !DILocation(line: 480, column: 3, scope: !5262)
!5272 = !DILocation(line: 480, column: 3, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5262, file: !218, line: 480, column: 3)
!5274 = !DILocation(line: 480, column: 3, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5273, file: !218, line: 480, column: 3)
!5276 = !DILocation(line: 480, column: 3, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5273, file: !218, line: 480, column: 3)
!5278 = !{i64 2153257438, i64 2153257467, i64 2153257513, i64 2153257571, i64 2153257625, i64 2153257679, i64 2153257734, i64 2153257765}
!5279 = !DILocation(line: 483, column: 2, scope: !5133)
!5280 = !DILocation(line: 484, column: 1, scope: !5133)
!5281 = !DISubprogram(name: "kmalloc_trace", scope: !218, file: !218, line: 525, type: !5282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5282 = !DISubroutineType(types: !5283)
!5283 = !{!14, !5284, !228, !29}
!5284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5285, size: 64)
!5285 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5286, line: 325, flags: DIFlagFwdDecl)
!5286 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5287 = distinct !DISubprogram(name: "kmalloc_type", scope: !218, file: !218, line: 401, type: !5288, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5290)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!217, !228, !33}
!5290 = !{!5291, !5292}
!5291 = !DILocalVariable(name: "flags", arg: 1, scope: !5287, file: !218, line: 401, type: !228)
!5292 = !DILocalVariable(name: "caller", arg: 2, scope: !5287, file: !218, line: 401, type: !33)
!5293 = !DILocation(line: 401, column: 67, scope: !5287)
!5294 = !DILocation(line: 401, column: 88, scope: !5287)
!5295 = !DILocation(line: 407, column: 6, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5287, file: !218, line: 407, column: 6)
!5297 = !DILocation(line: 407, column: 6, scope: !5287)
!5298 = !DILocation(line: 413, column: 3, scope: !5296)
!5299 = !DILocation(line: 423, column: 38, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5287, file: !218, line: 423, column: 6)
!5301 = !DILocation(line: 423, column: 44, scope: !5300)
!5302 = !DILocation(line: 423, column: 6, scope: !5287)
!5303 = !DILocation(line: 424, column: 3, scope: !5300)
!5304 = !DILocation(line: 426, column: 3, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5287, file: !218, line: 425, column: 6)
!5306 = !DILocation(line: 429, column: 1, scope: !5287)
!5307 = !DISubprogram(name: "__kmalloc", scope: !218, file: !218, line: 488, type: !5067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5308 = !DISubprogram(name: "__compiletime_assert_245", scope: !218, file: !218, line: 478, type: !242, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5309 = !DISubprogram(name: "input_close_device", scope: !422, file: !422, line: 413, type: !4281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5310 = !DISubprogram(name: "input_unregister_device", scope: !422, file: !422, line: 385, type: !4204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5311 = !DISubprogram(name: "input_unregister_handler", scope: !422, file: !422, line: 397, type: !5312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5312 = !DISubroutineType(types: !5313)
!5313 = !{null, !4223}
