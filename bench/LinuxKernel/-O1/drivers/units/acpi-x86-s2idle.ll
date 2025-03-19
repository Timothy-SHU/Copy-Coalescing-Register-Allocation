; ModuleID = 'drivers/acpi/x86/s2idle.c'
source_filename = "drivers/acpi/x86/s2idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_register_lps0_dev: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_register_lps0_dev ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_unregister_lps0_dev: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_unregister_lps0_dev ; .previous"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.guid_t = type { [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.acpi_scan_handler = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, ptr, ptr, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.platform_s2idle_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpuinfo_x86 = type { %union.anon.16, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.18, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.16 = type { i32 }
%union.anon.18 = type { i64, [88 x i8] }
%struct.acpi_device_id = type { [16 x i8], i64, i32, i32 }
%struct.amd_lps0_hid_device_data = type { i8 }
%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.lpi_constraints = type { ptr, i32 }
%struct.acpi_device = type { i32, i32, ptr, %struct.fwnode_handle, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, ptr, ptr, ptr, ptr, %struct.device, i32, i32, %struct.list_head, %struct.mutex, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], i32, %struct.acpi_pnp_type, i64, ptr, %struct.list_head, [40 x i8], [20 x i8], ptr }
%struct.acpi_pnp_type = type { i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state], i8 }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.14, i32, i32, %struct.list_head }
%struct.anon.14 = type { i8 }
%struct.acpi_device_wakeup = type { ptr, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, ptr, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { ptr, ptr }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, ptr }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_dir = type { ptr }
%struct.acpi_device_data = type { ptr, %struct.list_head, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.acpi_s2idle_dev_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.anon.17 = type { i8, i8, i8, i8 }
%struct.anon.21 = type { i32, i32, ptr }
%struct.lpi_device_constraint_amd = type { ptr, i32, i32, i32 }
%struct.anon.22 = type { i32, i32, ptr }
%union.acpi_object = type { %struct.anon.24 }
%struct.anon.24 = type { i32, i32, i64, i32 }
%struct.anon.19 = type { i32, i64 }
%struct.anon.20 = type { i32, i32, ptr }
%struct.lpi_device_info = type { ptr, i32, ptr }
%struct.lpi_device_constraint = type { i32, i32, i32 }

@__param_str_sleep_no_lps0 = internal constant [19 x i8] c"acpi.sleep_no_lps0\00", align 16, !dbg !0
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@sleep_no_lps0 = internal global i8 0, section ".data..read_mostly", align 1, !dbg !5325
@__param_sleep_no_lps0 = internal constant %struct.kernel_param { ptr @__param_str_sleep_no_lps0, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.13 { ptr @sleep_no_lps0 } }, section "__param", align 8, !dbg !5309
@__UNIQUE_ID_sleep_no_lps0type333 = internal constant [33 x i8] c"acpi.parmtype=sleep_no_lps0:bool\00", section ".modinfo", align 1, !dbg !5311
@__UNIQUE_ID_sleep_no_lps0334 = internal constant [69 x i8] c"acpi.parm=sleep_no_lps0:Do not use the special LPS0 device interface\00", section ".modinfo", align 1, !dbg !5316
@lpi_constraints_table = internal global ptr null, align 8, !dbg !5343
@lpi_constraints_table_size = internal global i32 0, align 4, !dbg !5350
@lps0_device_handle = internal global ptr null, align 8, !dbg !5327
@pm_debug_messages_on = external dso_local global i8, align 1
@lps0_dsm_func_mask = internal global i32 0, align 4, !dbg !5337
@lps0_dsm_guid = internal global %struct.guid_t zeroinitializer, align 1, !dbg !5331
@lps0_dsm_func_mask_microsoft = internal global i32 0, align 4, !dbg !5341
@lps0_dsm_guid_microsoft = internal global %struct.guid_t zeroinitializer, align 1, !dbg !5339
@lps0_s2idle_devops_head = internal global %struct.list_head { ptr @lps0_s2idle_devops_head, ptr @lps0_s2idle_devops_head }, align 8, !dbg !5400
@lps0_handler = internal global %struct.acpi_scan_handler { ptr @lps0_device_ids, %struct.list_head zeroinitializer, ptr null, ptr @lps0_device_attach, ptr null, ptr null, ptr null, %struct.acpi_hotplug_profile zeroinitializer }, align 8, !dbg !5402
@acpi_s2idle_ops_lps0 = internal constant %struct.platform_s2idle_ops { ptr @acpi_s2idle_begin, ptr @acpi_s2idle_prepare, ptr @acpi_s2idle_prepare_late, ptr @acpi_s2idle_check, ptr @acpi_s2idle_wake, ptr @acpi_s2idle_restore_early, ptr @acpi_s2idle_restore, ptr @acpi_s2idle_end }, align 8, !dbg !5704
@__UNIQUE_ID___addressable_acpi_register_lps0_dev335 = internal global ptr @acpi_register_lps0_dev, section ".discard.addressable", align 8, !dbg !5321
@__UNIQUE_ID___addressable_acpi_unregister_lps0_dev336 = internal global ptr @acpi_unregister_lps0_dev, section ".discard.addressable", align 8, !dbg !5323
@.str = private unnamed_addr constant [3 x i8] c"\016\00", align 1, !dbg !5352
@.str.1 = private unnamed_addr constant [34 x i8] c"LPI: Device not power manageable\0A\00", align 1, !dbg !5355
@.str.2 = private unnamed_addr constant [68 x i8] c"LPI: Constraint not met; min power state:%s current power state:%s\0A\00", align 1, !dbg !5360
@rev_id = internal global i32 0, align 4, !dbg !5378
@lps0_dsm_state = internal global i32 0, align 4, !dbg !5380
@.str.3 = private unnamed_addr constant [29 x i8] c"%s transitioned to state %s\0A\00", align 1, !dbg !5365
@.str.4 = private unnamed_addr constant [13 x i8] c"Successfully\00", align 1, !dbg !5370
@.str.5 = private unnamed_addr constant [10 x i8] c"Failed to\00", align 1, !dbg !5375
@.str.6 = private unnamed_addr constant [11 x i8] c"screen off\00", align 1, !dbg !5382
@.str.7 = private unnamed_addr constant [10 x i8] c"screen on\00", align 1, !dbg !5387
@.str.8 = private unnamed_addr constant [11 x i8] c"lps0 entry\00", align 1, !dbg !5389
@.str.9 = private unnamed_addr constant [10 x i8] c"lps0 exit\00", align 1, !dbg !5391
@.str.10 = private unnamed_addr constant [14 x i8] c"lps0 ms entry\00", align 1, !dbg !5393
@.str.11 = private unnamed_addr constant [13 x i8] c"lps0 ms exit\00", align 1, !dbg !5396
@.str.12 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1, !dbg !5398
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@lps0_device_ids = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [16 x i8] c"PNP0D80\00\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !5662
@.str.13 = private unnamed_addr constant [37 x i8] c"11e00d56-ce64-47ce-837b-1f898f9aa461\00", align 1, !dbg !5665
@lps0_device_attach.dev_id = internal global ptr null, align 8, !dbg !5670
@amd_hid_ids = internal constant [5 x %struct.acpi_device_id] [%struct.acpi_device_id { [16 x i8] c"AMD0004\00\00\00\00\00\00\00\00\00", i64 ptrtoint (ptr @amd_picasso to i64), i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"AMD0005\00\00\00\00\00\00\00\00\00", i64 ptrtoint (ptr @amd_picasso to i64), i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"AMDI0005\00\00\00\00\00\00\00\00", i64 ptrtoint (ptr @amd_picasso to i64), i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"AMDI0006\00\00\00\00\00\00\00\00", i64 ptrtoint (ptr @amd_cezanne to i64), i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !5685
@amd_cezanne = internal constant %struct.amd_lps0_hid_device_data zeroinitializer, align 1, !dbg !5690
@.str.14 = private unnamed_addr constant [37 x i8] c"e3f32452-febc-43ce-9039-932122d37721\00", align 1, !dbg !5679
@.str.15 = private unnamed_addr constant [37 x i8] c"c4eb40a0-6cd2-11e2-bcfd-0800200c9a66\00", align 1, !dbg !5681
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@mem_sleep_default = external dso_local global i32, align 4
@acpi_sleep_default_s3 = external dso_local global i8, align 1
@mem_sleep_current = external dso_local global i32, align 4
@.str.16 = private unnamed_addr constant [56 x i8] c"\016Low-power S0 idle used by default for system suspend\0A\00", align 1, !dbg !5683
@amd_picasso = internal constant %struct.amd_lps0_hid_device_data { i8 1 }, align 1, !dbg !5688
@.str.17 = private unnamed_addr constant [3 x i8] c"\013\00", align 1, !dbg !5692
@.str.18 = private unnamed_addr constant [28 x i8] c"Duplicate constraints list\0A\00", align 1, !dbg !5694
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.19 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5699
@llvm.compiler.used = appending global [5 x ptr] [ptr @__param_sleep_no_lps0, ptr @__UNIQUE_ID_sleep_no_lps0type333, ptr @__UNIQUE_ID_sleep_no_lps0334, ptr @__UNIQUE_ID___addressable_acpi_register_lps0_dev335, ptr @__UNIQUE_ID___addressable_acpi_unregister_lps0_dev336], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_lps0_constraint(ptr noundef %adev) #0 align 16 !dbg !5729 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !5731, metadata !DIExpression()), !dbg !5735
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !5736
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5732, metadata !DIExpression()), !dbg !5737
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5738
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5733, metadata !DIExpression()), !dbg !5738
  store i32 0, ptr %i, align 4, !dbg !5738
  br label %for.cond, !dbg !5738

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr @lpi_constraints_table, align 8, !dbg !5739
  %1 = load i32, ptr %i, align 4, !dbg !5739
  %idxprom = sext i32 %1 to i64, !dbg !5739
  %arrayidx = getelementptr %struct.lpi_constraints, ptr %0, i64 %idxprom, !dbg !5739
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !5739
  %2 = load i32, ptr %i, align 4, !dbg !5739
  %3 = load i32, ptr @lpi_constraints_table_size, align 4, !dbg !5739
  %cmp = icmp slt i32 %2, %3, !dbg !5739
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !5738

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5738

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %adev.addr, align 8, !dbg !5741
  %handle = getelementptr inbounds %struct.acpi_device, ptr %4, i32 0, i32 2, !dbg !5744
  %5 = load ptr, ptr %handle, align 8, !dbg !5744
  %6 = load ptr, ptr %entry1, align 8, !dbg !5745
  %handle2 = getelementptr inbounds %struct.lpi_constraints, ptr %6, i32 0, i32 0, !dbg !5746
  %7 = load ptr, ptr %handle2, align 8, !dbg !5746
  %cmp3 = icmp eq ptr %5, %7, !dbg !5747
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5748

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %entry1, align 8, !dbg !5749
  %min_dstate = getelementptr inbounds %struct.lpi_constraints, ptr %8, i32 0, i32 1, !dbg !5750
  %9 = load i32, ptr %min_dstate, align 8, !dbg !5750
  store i32 %9, ptr %retval, align 4, !dbg !5751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5751

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5752

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4, !dbg !5739
  %inc = add i32 %10, 1, !dbg !5739
  store i32 %inc, ptr %i, align 4, !dbg !5739
  br label %for.cond, !dbg !5739, !llvm.loop !5753

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5739
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup4 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  store i32 255, ptr %retval, align 4, !dbg !5757
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup4, !dbg !5757

cleanup4:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !5758
  %11 = load i32, ptr %retval, align 4, !dbg !5758
  ret i32 %11, !dbg !5758
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_s2idle_prepare_late() #0 align 16 !dbg !5759 {
entry:
  %retval = alloca i32, align 4
  %handler = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr23 = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler) #16, !dbg !5768
  call void @llvm.dbg.declare(metadata ptr %handler, metadata !5761, metadata !DIExpression()), !dbg !5769
  %0 = load ptr, ptr @lps0_device_handle, align 8, !dbg !5770
  %tobool = icmp ne ptr %0, null, !dbg !5770
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5772

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr @sleep_no_lps0, align 1, !dbg !5773, !range !5774, !noundef !604
  %tobool1 = trunc i8 %1 to i1, !dbg !5773
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5775

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !5776
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5776

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8, ptr @pm_debug_messages_on, align 1, !dbg !5777, !range !5774, !noundef !604
  %tobool2 = trunc i8 %2 to i1, !dbg !5777
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5779

if.then3:                                         ; preds = %if.end
  call void @lpi_check_constraints() #17, !dbg !5780
  br label %if.end4, !dbg !5780

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load i32, ptr @lps0_dsm_func_mask, align 4, !dbg !5781
  %cmp = icmp sgt i32 %3, 0, !dbg !5783
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !5784

if.then5:                                         ; preds = %if.end4
  %call = call zeroext i1 @acpi_s2idle_vendor_amd() #17, !dbg !5785
  %4 = zext i1 %call to i64, !dbg !5785
  %cond = select i1 %call, i32 4, i32 3, !dbg !5785
  %5 = load i32, ptr @lps0_dsm_func_mask, align 4, !dbg !5786
  %6 = load i64, ptr @lps0_dsm_guid, align 1, !dbg !5787
  %7 = load i64, ptr getelementptr inbounds ({ i64, i64 }, ptr @lps0_dsm_guid, i32 0, i32 1), align 1, !dbg !5787
  call void @acpi_sleep_run_lps0_dsm(i32 noundef %cond, i32 noundef %5, i64 %6, i64 %7) #17, !dbg !5787
  br label %if.end6, !dbg !5787

if.end6:                                          ; preds = %if.then5, %if.end4
  %8 = load i32, ptr @lps0_dsm_func_mask_microsoft, align 4, !dbg !5788
  %cmp7 = icmp sgt i32 %8, 0, !dbg !5790
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5791

if.then8:                                         ; preds = %if.end6
  %9 = load i32, ptr @lps0_dsm_func_mask_microsoft, align 4, !dbg !5792
  %10 = load i64, ptr @lps0_dsm_guid_microsoft, align 1, !dbg !5793
  %11 = load i64, ptr getelementptr inbounds ({ i64, i64 }, ptr @lps0_dsm_guid_microsoft, i32 0, i32 1), align 1, !dbg !5793
  call void @acpi_sleep_run_lps0_dsm(i32 noundef 3, i32 noundef %9, i64 %10, i64 %11) #17, !dbg !5793
  br label %if.end9, !dbg !5793

if.end9:                                          ; preds = %if.then8, %if.end6
  %12 = load i32, ptr @lps0_dsm_func_mask, align 4, !dbg !5794
  %cmp10 = icmp sgt i32 %12, 0, !dbg !5796
  br i1 %cmp10, label %if.then11, label %if.end14, !dbg !5797

if.then11:                                        ; preds = %if.end9
  %call12 = call zeroext i1 @acpi_s2idle_vendor_amd() #17, !dbg !5798
  %13 = zext i1 %call12 to i64, !dbg !5798
  %cond13 = select i1 %call12, i32 2, i32 5, !dbg !5798
  %14 = load i32, ptr @lps0_dsm_func_mask, align 4, !dbg !5799
  %15 = load i64, ptr @lps0_dsm_guid, align 1, !dbg !5800
  %16 = load i64, ptr getelementptr inbounds ({ i64, i64 }, ptr @lps0_dsm_guid, i32 0, i32 1), align 1, !dbg !5800
  call void @acpi_sleep_run_lps0_dsm(i32 noundef %cond13, i32 noundef %14, i64 %15, i64 %16) #17, !dbg !5800
  br label %if.end14, !dbg !5800

if.end14:                                         ; preds = %if.then11, %if.end9
  %17 = load i32, ptr @lps0_dsm_func_mask_microsoft, align 4, !dbg !5801
  %cmp15 = icmp sgt i32 %17, 0, !dbg !5803
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5804

if.then16:                                        ; preds = %if.end14
  %18 = load i32, ptr @lps0_dsm_func_mask_microsoft, align 4, !dbg !5805
  %19 = load i64, ptr @lps0_dsm_guid_microsoft, align 1, !dbg !5807
  %20 = load i64, ptr getelementptr inbounds ({ i64, i64 }, ptr @lps0_dsm_guid_microsoft, i32 0, i32 1), align 1, !dbg !5807
  call void @acpi_sleep_run_lps0_dsm(i32 noundef 7, i32 noundef %18, i64 %19, i64 %20) #17, !dbg !5807
  %21 = load i32, ptr @lps0_dsm_func_mask_microsoft, align 4, !dbg !5808
  %22 = load i64, ptr @lps0_dsm_guid_microsoft, align 1, !dbg !5809
  %23 = load i64, ptr getelementptr inbounds ({ i64, i64 }, ptr @lps0_dsm_guid_microsoft, i32 0, i32 1), align 1, !dbg !5809
  call void @acpi_sleep_run_lps0_dsm(i32 noundef 5, i32 noundef %21, i64 %22, i64 %23) #17, !dbg !5809
  br label %if.end17, !dbg !5810

if.end17:                                         ; preds = %if.then16, %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5811
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5762, metadata !DIExpression()), !dbg !5811
  %24 = load ptr, ptr @lps0_s2idle_devops_head, align 8, !dbg !5811
  store ptr %24, ptr %__mptr, align 8, !dbg !5811
  %25 = load ptr, ptr %__mptr, align 8, !dbg !5811
  %add.ptr = getelementptr i8, ptr %25, i64 0, !dbg !5811
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5811
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5812
  %26 = load ptr, ptr %tmp, align 8, !dbg !5811
  store ptr %26, ptr %handler, align 8, !dbg !5812
  br label %for.cond, !dbg !5812

for.cond:                                         ; preds = %for.inc, %if.end17
  %27 = load ptr, ptr %handler, align 8, !dbg !5813
  %list_node = getelementptr inbounds %struct.acpi_s2idle_dev_ops, ptr %27, i32 0, i32 0, !dbg !5813
  %cmp18 = icmp eq ptr %list_node, @lps0_s2idle_devops_head, !dbg !5813
  %lnot = xor i1 %cmp18, true, !dbg !5813
  br i1 %lnot, label %for.body, label %for.end, !dbg !5812

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %handler, align 8, !dbg !5814
  %prepare = getelementptr inbounds %struct.acpi_s2idle_dev_ops, ptr %28, i32 0, i32 1, !dbg !5817
  %29 = load ptr, ptr %prepare, align 8, !dbg !5817
  %tobool19 = icmp ne ptr %29, null, !dbg !5814
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !5818

if.then20:                                        ; preds = %for.body
  %30 = load ptr, ptr %handler, align 8, !dbg !5819
  %prepare21 = getelementptr inbounds %struct.acpi_s2idle_dev_ops, ptr %30, i32 0, i32 1, !dbg !5820
  %31 = load ptr, ptr %prepare21, align 8, !dbg !5820
  call void %31() #17, !dbg !5819
  br label %if.end22, !dbg !5819

if.end22:                                         ; preds = %if.then20, %for.body
  br label %for.inc, !dbg !5821

for.inc:                                          ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr23) #16, !dbg !5822
  call void @llvm.dbg.declare(metadata ptr %__mptr23, metadata !5765, metadata !DIExpression()), !dbg !5822
  %32 = load ptr, ptr %handler, align 8, !dbg !5822
  %list_node24 = getelementptr inbounds %struct.acpi_s2idle_dev_ops, ptr %32, i32 0, i32 0, !dbg !5822
  %next = getelementptr inbounds %struct.list_head, ptr %list_node24, i32 0, i32 0, !dbg !5822
  %33 = load ptr, ptr %next, align 8, !dbg !5822
  store ptr %33, ptr %__mptr23, align 8, !dbg !5822
  %34 = load ptr, ptr %__mptr23, align 8, !dbg !5822
  %add.ptr26 = getelementptr i8, ptr %34, i64 0, !dbg !5822
  store ptr %add.ptr26, ptr %tmp25, align 8, !dbg !5822
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr23) #16, !dbg !5813
  %35 = load ptr, ptr %tmp25, align 8, !dbg !5822
  store ptr %35, ptr %handler, align 8, !dbg !5813
  br label %for.cond, !dbg !5813, !llvm.loop !5823

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5825
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5825

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler) #16, !dbg !5826
  %36 = load i32, ptr %retval, align 4, !dbg !5826
  ret i32 %36, !dbg !5826
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lpi_check_constraints() #0 align 16 !dbg !5827 {
entry:
  %entry1 = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %adev = alloca ptr, align 8
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !5835
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5829, metadata !DIExpression()), !dbg !5836
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5837
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5830, metadata !DIExpression()), !dbg !5837
  store i32 0, ptr %i, align 4, !dbg !5837
  br label %for.cond, !dbg !5837

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr @lpi_constraints_table, align 8, !dbg !5838
  %1 = load i32, ptr %i, align 4, !dbg !5838
  %idxprom = sext i32 %1 to i64, !dbg !5838
  %arrayidx = getelementptr %struct.lpi_constraints, ptr %0, i64 %idxprom, !dbg !5838
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !5838
  %2 = load i32, ptr %i, align 4, !dbg !5838
  %3 = load i32, ptr @lpi_constraints_table_size, align 4, !dbg !5838
  %cmp = icmp slt i32 %2, %3, !dbg !5838
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !5837

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5838
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #16, !dbg !5839
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !5832, metadata !DIExpression()), !dbg !5840
  %4 = load ptr, ptr %entry1, align 8, !dbg !5841
  %handle = getelementptr inbounds %struct.lpi_constraints, ptr %4, i32 0, i32 0, !dbg !5842
  %5 = load ptr, ptr %handle, align 8, !dbg !5842
  %call = call ptr @acpi_fetch_acpi_dev(ptr noundef %5) #17, !dbg !5843
  store ptr %call, ptr %adev, align 8, !dbg !5840
  %6 = load ptr, ptr %adev, align 8, !dbg !5844
  %tobool = icmp ne ptr %6, null, !dbg !5844
  br i1 %tobool, label %if.end, label %if.then, !dbg !5846

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5847

if.end:                                           ; preds = %for.body
  store i32 0, ptr %tmp, align 4, !dbg !5848
  %7 = load i32, ptr %tmp, align 4, !dbg !5851
  %8 = load ptr, ptr %adev, align 8, !dbg !5852
  %flags = getelementptr inbounds %struct.acpi_device, ptr %8, i32 0, i32 7, !dbg !5854
  %bf.load = load i32, ptr %flags, align 4, !dbg !5855
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !5855
  %bf.clear = and i32 %bf.lshr, 1, !dbg !5855
  %tobool2 = icmp ne i32 %bf.clear, 0, !dbg !5852
  br i1 %tobool2, label %if.end6, label %if.then3, !dbg !5856

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %entry1, align 8, !dbg !5857
  %handle4 = getelementptr inbounds %struct.lpi_constraints, ptr %9, i32 0, i32 0, !dbg !5857
  %10 = load ptr, ptr %handle4, align 8, !dbg !5857
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %10, ptr noundef @.str.1) #17, !dbg !5857
  %11 = load ptr, ptr %entry1, align 8, !dbg !5859
  %handle5 = getelementptr inbounds %struct.lpi_constraints, ptr %11, i32 0, i32 0, !dbg !5860
  store ptr null, ptr %handle5, align 8, !dbg !5861
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5862

if.end6:                                          ; preds = %if.end
  %12 = load ptr, ptr %adev, align 8, !dbg !5863
  %power = getelementptr inbounds %struct.acpi_device, ptr %12, i32 0, i32 9, !dbg !5865
  %state = getelementptr inbounds %struct.acpi_device_power, ptr %power, i32 0, i32 0, !dbg !5866
  %13 = load i32, ptr %state, align 8, !dbg !5866
  %14 = load ptr, ptr %entry1, align 8, !dbg !5867
  %min_dstate = getelementptr inbounds %struct.lpi_constraints, ptr %14, i32 0, i32 1, !dbg !5868
  %15 = load i32, ptr %min_dstate, align 8, !dbg !5868
  %cmp7 = icmp slt i32 %13, %15, !dbg !5869
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !5870

if.then8:                                         ; preds = %if.end6
  %16 = load ptr, ptr %entry1, align 8, !dbg !5871
  %handle9 = getelementptr inbounds %struct.lpi_constraints, ptr %16, i32 0, i32 0, !dbg !5871
  %17 = load ptr, ptr %handle9, align 8, !dbg !5871
  %18 = load ptr, ptr %entry1, align 8, !dbg !5871
  %min_dstate10 = getelementptr inbounds %struct.lpi_constraints, ptr %18, i32 0, i32 1, !dbg !5871
  %19 = load i32, ptr %min_dstate10, align 8, !dbg !5871
  %call11 = call ptr @acpi_power_state_string(i32 noundef %19) #17, !dbg !5871
  %20 = load ptr, ptr %adev, align 8, !dbg !5871
  %power12 = getelementptr inbounds %struct.acpi_device, ptr %20, i32 0, i32 9, !dbg !5871
  %state13 = getelementptr inbounds %struct.acpi_device_power, ptr %power12, i32 0, i32 0, !dbg !5871
  %21 = load i32, ptr %state13, align 8, !dbg !5871
  %call14 = call ptr @acpi_power_state_string(i32 noundef %21) #17, !dbg !5871
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %17, ptr noundef @.str.2, ptr noundef %call11, ptr noundef %call14) #17, !dbg !5871
  br label %if.end15, !dbg !5871

if.end15:                                         ; preds = %if.then8, %if.end6
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5872
  br label %cleanup, !dbg !5872

cleanup:                                          ; preds = %if.end15, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #16, !dbg !5872
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5873

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %22 = load i32, ptr %i, align 4, !dbg !5838
  %inc = add i32 %22, 1, !dbg !5838
  store i32 %inc, ptr %i, align 4, !dbg !5838
  br label %for.cond, !dbg !5838, !llvm.loop !5874

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !5876
  ret void, !dbg !5876

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_sleep_run_lps0_dsm(i32 noundef %func, i32 noundef %func_mask, i64 %dsm_guid.coerce0, i64 %dsm_guid.coerce1) #0 align 16 !dbg !5877 {
entry:
  %dsm_guid = alloca %struct.guid_t, align 1
  %func.addr = alloca i32, align 4
  %func_mask.addr = alloca i32, align 4
  %out_obj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %0 = getelementptr inbounds { i64, i64 }, ptr %dsm_guid, i32 0, i32 0
  store i64 %dsm_guid.coerce0, ptr %0, align 1
  %1 = getelementptr inbounds { i64, i64 }, ptr %dsm_guid, i32 0, i32 1
  store i64 %dsm_guid.coerce1, ptr %1, align 1
  store i32 %func, ptr %func.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !5881, metadata !DIExpression()), !dbg !5885
  store i32 %func_mask, ptr %func_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %func_mask.addr, metadata !5882, metadata !DIExpression()), !dbg !5886
  call void @llvm.dbg.declare(metadata ptr %dsm_guid, metadata !5883, metadata !DIExpression()), !dbg !5887
  call void @llvm.lifetime.start.p0(i64 8, ptr %out_obj) #16, !dbg !5888
  call void @llvm.dbg.declare(metadata ptr %out_obj, metadata !5884, metadata !DIExpression()), !dbg !5889
  %2 = load i32, ptr %func_mask.addr, align 4, !dbg !5890
  %3 = load i32, ptr %func.addr, align 4, !dbg !5892
  %shl = shl i32 1, %3, !dbg !5893
  %and = and i32 %2, %shl, !dbg !5894
  %tobool = icmp ne i32 %and, 0, !dbg !5894
  br i1 %tobool, label %if.end, label %if.then, !dbg !5895

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5896

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr @lps0_device_handle, align 8, !dbg !5897
  %5 = load i32, ptr @rev_id, align 4, !dbg !5898
  %conv = sext i32 %5 to i64, !dbg !5898
  %6 = load i32, ptr %func.addr, align 4, !dbg !5899
  %conv1 = zext i32 %6 to i64, !dbg !5899
  %call = call ptr @acpi_evaluate_dsm(ptr noundef %4, ptr noundef %dsm_guid, i64 noundef %conv, i64 noundef %conv1, ptr noundef null) #17, !dbg !5900
  store ptr %call, ptr %out_obj, align 8, !dbg !5901
  %7 = load ptr, ptr %out_obj, align 8, !dbg !5902
  call void @acpi_os_free(ptr noundef %7) #17, !dbg !5902
  %8 = load i32, ptr %func.addr, align 4, !dbg !5903
  store i32 %8, ptr @lps0_dsm_state, align 4, !dbg !5904
  %9 = load i8, ptr @pm_debug_messages_on, align 1, !dbg !5905, !range !5774, !noundef !604
  %tobool2 = trunc i8 %9 to i1, !dbg !5905
  br i1 %tobool2, label %if.then3, label %if.end6, !dbg !5907

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr @lps0_device_handle, align 8, !dbg !5908
  %11 = load ptr, ptr %out_obj, align 8, !dbg !5908
  %tobool4 = icmp ne ptr %11, null, !dbg !5908
  %12 = zext i1 %tobool4 to i64, !dbg !5908
  %cond = select i1 %tobool4, ptr @.str.4, ptr @.str.5, !dbg !5908
  %13 = load i32, ptr @lps0_dsm_state, align 4, !dbg !5908
  %call5 = call ptr @acpi_sleep_dsm_state_to_str(i32 noundef %13) #17, !dbg !5908
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %10, ptr noundef @.str.3, ptr noundef %cond, ptr noundef %call5) #17, !dbg !5908
  br label %if.end6, !dbg !5910

if.end6:                                          ; preds = %if.then3, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5911
  br label %cleanup, !dbg !5911

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %out_obj) #16, !dbg !5911
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5911

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_s2idle_vendor_amd() #0 align 16 !dbg !5912 {
entry:
  %0 = load i8, ptr getelementptr inbounds (%struct.anon.17, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !5913
  %conv = zext i8 %0 to i32, !dbg !5914
  %cmp = icmp eq i32 %conv, 2, !dbg !5915
  ret i1 %cmp, !dbg !5916
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_s2idle_check() #0 align 16 !dbg !5917 {
entry:
  %handler = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler) #16, !dbg !5926
  call void @llvm.dbg.declare(metadata ptr %handler, metadata !5919, metadata !DIExpression()), !dbg !5927
  %0 = load ptr, ptr @lps0_device_handle, align 8, !dbg !5928
  %tobool = icmp ne ptr %0, null, !dbg !5928
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5930

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr @sleep_no_lps0, align 1, !dbg !5931, !range !5774, !noundef !604
  %tobool1 = trunc i8 %1 to i1, !dbg !5931
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5932

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5933

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5934
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5920, metadata !DIExpression()), !dbg !5934
  %2 = load ptr, ptr @lps0_s2idle_devops_head, align 8, !dbg !5934
  store ptr %2, ptr %__mptr, align 8, !dbg !5934
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5934
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !5934
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5934
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5935
  %4 = load ptr, ptr %tmp, align 8, !dbg !5934
  store ptr %4, ptr %handler, align 8, !dbg !5935
  br label %for.cond, !dbg !5935

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %handler, align 8, !dbg !5936
  %list_node = getelementptr inbounds %struct.acpi_s2idle_dev_ops, ptr %5, i32 0, i32 0, !dbg !5936
  %cmp = icmp eq ptr %list_node, @lps0_s2idle_devops_head, !dbg !5936
  %lnot = xor i1 %cmp, true, !dbg !5936
  br i1 %lnot, label %for.body, label %for.end, !dbg !5935

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %handler, align 8, !dbg !5937
  %check = getelementptr inbounds %struct.acpi_s2idle_dev_ops, ptr %6, i32 0, i32 2, !dbg !5940
  %7 = load ptr, ptr %check, align 8, !dbg !5940
  %tobool2 = icmp ne ptr %7, null, !dbg !5937
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !5941

if.then3:                                         ; preds = %for.body
  %8 = load ptr, ptr %handler, align 8, !dbg !5942
  %check4 = getelementptr inbounds %struct.acpi_s2idle_dev_ops, ptr %8, i32 0, i32 2, !dbg !5943
  %9 = load ptr, ptr %check4, align 8, !dbg !5943
  call void %9() #17, !dbg !5942
  br label %if.end5, !dbg !5942

if.end5:                                          ; preds = %if.then3, %for.body
  br label %for.inc, !dbg !5944

for.inc:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #16, !dbg !5945
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !5923, metadata !DIExpression()), !dbg !5945
  %10 = load ptr, ptr %handler, align 8, !dbg !5945
  %list_node7 = getelementptr inbounds %struct.acpi_s2idle_dev_ops, ptr %10, i32 0, i32 0, !dbg !5945
  %next = getelementptr inbounds %struct.list_head, ptr %list_node7, i32 0, i32 0, !dbg !5945
  %11 = load ptr, ptr %next, align 8, !dbg !5945
  store ptr %11, ptr %__mptr6, align 8, !dbg !5945
  %12 = load ptr, ptr %__mptr6, align 8, !dbg !5945
  %add.ptr9 = getelementptr i8, ptr %12, i64 0, !dbg !5945
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !5945
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #16, !dbg !5936
  %13 = load ptr, ptr %tmp8, align 8, !dbg !5945
  store ptr %13, ptr %handler, align 8, !dbg !5936
  br label %for.cond, !dbg !5936, !llvm.loop !5946

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5948
  br label %cleanup, !dbg !5948

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler) #16, !dbg !5948
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5948

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_s2idle_restore_early() #0 align 16 !dbg !5949 {
entry:
  %handler = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler) #16, !dbg !5958
  call void @llvm.dbg.declare(metadata ptr %handler, metadata !5951, metadata !DIExpression()), !dbg !5959
  %0 = load ptr, ptr @lps0_device_handle, align 8, !dbg !5960
  %tobool = icmp ne ptr %0, null, !dbg !5960
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5962

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr @sleep_no_lps0, align 1, !dbg !5963, !range !5774, !noundef !604
  %tobool1 = trunc i8 %1 to i1, !dbg !5963
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5964

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5965

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5966
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5952, metadata !DIExpression()), !dbg !5966
  %2 = load ptr, ptr @lps0_s2idle_devops_head, align 8, !dbg !5966
  store ptr %2, ptr %__mptr, align 8, !dbg !5966
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5966
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !5966
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5967
  %4 = load ptr, ptr %tmp, align 8, !dbg !5966
  store ptr %4, ptr %handler, align 8, !dbg !5967
  br label %for.cond, !dbg !5967

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %handler, align 8, !dbg !5968
  %list_node = getelementptr inbounds %struct.acpi_s2idle_dev_ops, ptr %5, i32 0, i32 0, !dbg !5968
  %cmp = icmp eq ptr %list_node, @lps0_s2idle_devops_head, !dbg !5968
  %lnot = xor i1 %cmp, true, !dbg !5968
  br i1 %lnot, label %for.body, label %for.end, !dbg !5967

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %handler, align 8, !dbg !5969
  %restore = getelementptr inbounds %struct.acpi_s2idle_dev_ops, ptr %6, i32 0, i32 3, !dbg !5971
  %7 = load ptr, ptr %restore, align 8, !dbg !5971
  %tobool2 = icmp ne ptr %7, null, !dbg !5969
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !5972

if.then3:                                         ; preds = %for.body
  %8 = load ptr, ptr %handler, align 8, !dbg !5973
  %restore4 = getelementptr inbounds %struct.acpi_s2idle_dev_ops, ptr %8, i32 0, i32 3, !dbg !5974
  %9 = load ptr, ptr %restore4, align 8, !dbg !5974
  call void %9() #17, !dbg !5973
  br label %if.end5, !dbg !5973

if.end5:                                          ; preds = %if.then3, %for.body
  br label %for.inc, !dbg !5971

for.inc:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #16, !dbg !5975
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !5955, metadata !DIExpression()), !dbg !5975
  %10 = load ptr, ptr %handler, align 8, !dbg !5975
  %list_node7 = getelementptr inbounds %struct.acpi_s2idle_dev_ops, ptr %10, i32 0, i32 0, !dbg !5975
  %next = getelementptr inbounds %struct.list_head, ptr %list_node7, i32 0, i32 0, !dbg !5975
  %11 = load ptr, ptr %next, align 8, !dbg !5975
  store ptr %11, ptr %__mptr6, align 8, !dbg !5975
  %12 = load ptr, ptr %__mptr6, align 8, !dbg !5975
  %add.ptr9 = getelementptr i8, ptr %12, i64 0, !dbg !5975
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !5975
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #16, !dbg !5968
  %13 = load ptr, ptr %tmp8, align 8, !dbg !5975
  store ptr %13, ptr %handler, align 8, !dbg !5968
  br label %for.cond, !dbg !5968, !llvm.loop !5976

for.end:                                          ; preds = %for.cond
  %14 = load i32, ptr @lps0_dsm_func_mask, align 4, !dbg !5978
  %cmp10 = icmp sgt i32 %14, 0, !dbg !5980
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !5981

if.then11:                                        ; preds = %for.end
  %call = call zeroext i1 @acpi_s2idle_vendor_amd() #17, !dbg !5982
  %15 = zext i1 %call to i64, !dbg !5982
  %cond = select i1 %call, i32 3, i32 6, !dbg !5982
  %16 = load i32, ptr @lps0_dsm_func_mask, align 4, !dbg !5983
  %17 = load i64, ptr @lps0_dsm_guid, align 1, !dbg !5984
  %18 = load i64, ptr getelementptr inbounds ({ i64, i64 }, ptr @lps0_dsm_guid, i32 0, i32 1), align 1, !dbg !5984
  call void @acpi_sleep_run_lps0_dsm(i32 noundef %cond, i32 noundef %16, i64 %17, i64 %18) #17, !dbg !5984
  br label %if.end12, !dbg !5984

if.end12:                                         ; preds = %if.then11, %for.end
  %19 = load i32, ptr @lps0_dsm_func_mask_microsoft, align 4, !dbg !5985
  %cmp13 = icmp sgt i32 %19, 0, !dbg !5987
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !5988

if.then14:                                        ; preds = %if.end12
  %20 = load i32, ptr @lps0_dsm_func_mask_microsoft, align 4, !dbg !5989
  %21 = load i64, ptr @lps0_dsm_guid_microsoft, align 1, !dbg !5990
  %22 = load i64, ptr getelementptr inbounds ({ i64, i64 }, ptr @lps0_dsm_guid_microsoft, i32 0, i32 1), align 1, !dbg !5990
  call void @acpi_sleep_run_lps0_dsm(i32 noundef 6, i32 noundef %20, i64 %21, i64 %22) #17, !dbg !5990
  br label %if.end15, !dbg !5990

if.end15:                                         ; preds = %if.then14, %if.end12
  %23 = load i32, ptr @lps0_dsm_func_mask_microsoft, align 4, !dbg !5991
  %cmp16 = icmp sgt i32 %23, 0, !dbg !5993
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !5994

if.then17:                                        ; preds = %if.end15
  %24 = load i32, ptr @lps0_dsm_func_mask_microsoft, align 4, !dbg !5995
  %25 = load i64, ptr @lps0_dsm_guid_microsoft, align 1, !dbg !5996
  %26 = load i64, ptr getelementptr inbounds ({ i64, i64 }, ptr @lps0_dsm_guid_microsoft, i32 0, i32 1), align 1, !dbg !5996
  call void @acpi_sleep_run_lps0_dsm(i32 noundef 8, i32 noundef %24, i64 %25, i64 %26) #17, !dbg !5996
  br label %if.end18, !dbg !5996

if.end18:                                         ; preds = %if.then17, %if.end15
  %27 = load i32, ptr @lps0_dsm_func_mask_microsoft, align 4, !dbg !5997
  %cmp19 = icmp sgt i32 %27, 0, !dbg !5999
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !6000

if.then20:                                        ; preds = %if.end18
  %28 = load i32, ptr @lps0_dsm_func_mask_microsoft, align 4, !dbg !6001
  %29 = load i64, ptr @lps0_dsm_guid_microsoft, align 1, !dbg !6002
  %30 = load i64, ptr getelementptr inbounds ({ i64, i64 }, ptr @lps0_dsm_guid_microsoft, i32 0, i32 1), align 1, !dbg !6002
  call void @acpi_sleep_run_lps0_dsm(i32 noundef 4, i32 noundef %28, i64 %29, i64 %30) #17, !dbg !6002
  br label %if.end21, !dbg !6002

if.end21:                                         ; preds = %if.then20, %if.end18
  %31 = load i32, ptr @lps0_dsm_func_mask, align 4, !dbg !6003
  %cmp22 = icmp sgt i32 %31, 0, !dbg !6005
  br i1 %cmp22, label %if.then23, label %if.end26, !dbg !6006

if.then23:                                        ; preds = %if.end21
  %call24 = call zeroext i1 @acpi_s2idle_vendor_amd() #17, !dbg !6007
  %32 = zext i1 %call24 to i64, !dbg !6007
  %cond25 = select i1 %call24, i32 5, i32 4, !dbg !6007
  %33 = load i32, ptr @lps0_dsm_func_mask, align 4, !dbg !6008
  %34 = load i64, ptr @lps0_dsm_guid, align 1, !dbg !6009
  %35 = load i64, ptr getelementptr inbounds ({ i64, i64 }, ptr @lps0_dsm_guid, i32 0, i32 1), align 1, !dbg !6009
  call void @acpi_sleep_run_lps0_dsm(i32 noundef %cond25, i32 noundef %33, i64 %34, i64 %35) #17, !dbg !6009
  br label %if.end26, !dbg !6009

if.end26:                                         ; preds = %if.then23, %if.end21
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6010
  br label %cleanup, !dbg !6010

cleanup:                                          ; preds = %if.end26, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler) #16, !dbg !6010
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6010

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @acpi_s2idle_setup() #3 section ".init.text" align 16 !dbg !6011 {
entry:
  %call = call i32 @acpi_scan_add_handler(ptr noundef @lps0_handler) #17, !dbg !6012
  call void @s2idle_set_ops(ptr noundef @acpi_s2idle_ops_lps0) #17, !dbg !6013
  ret void, !dbg !6014
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6015 dso_local i32 @acpi_scan_add_handler(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6018 dso_local void @s2idle_set_ops(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_register_lps0_dev(ptr noundef %arg) #0 align 16 !dbg !6022 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca ptr, align 8
  %sleep_flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6026, metadata !DIExpression()), !dbg !6028
  call void @llvm.lifetime.start.p0(i64 4, ptr %sleep_flags) #16, !dbg !6029
  call void @llvm.dbg.declare(metadata ptr %sleep_flags, metadata !6027, metadata !DIExpression()), !dbg !6030
  %0 = load ptr, ptr @lps0_device_handle, align 8, !dbg !6031
  %tobool = icmp ne ptr %0, null, !dbg !6031
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6033

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr @sleep_no_lps0, align 1, !dbg !6034, !range !5774, !noundef !604
  %tobool1 = trunc i8 %1 to i1, !dbg !6034
  br i1 %tobool1, label %if.then, label %if.end, !dbg !6035

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, ptr %retval, align 4, !dbg !6036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6036

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @lock_system_sleep() #17, !dbg !6037
  store i32 %call, ptr %sleep_flags, align 4, !dbg !6038
  %2 = load ptr, ptr %arg.addr, align 8, !dbg !6039
  %list_node = getelementptr inbounds %struct.acpi_s2idle_dev_ops, ptr %2, i32 0, i32 0, !dbg !6040
  call void @list_add(ptr noundef %list_node, ptr noundef @lps0_s2idle_devops_head) #17, !dbg !6041
  %3 = load i32, ptr %sleep_flags, align 4, !dbg !6042
  call void @unlock_system_sleep(i32 noundef %3) #17, !dbg !6043
  store i32 0, ptr %retval, align 4, !dbg !6044
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6044

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sleep_flags) #16, !dbg !6045
  %4 = load i32, ptr %retval, align 4, !dbg !6045
  ret i32 %4, !dbg !6045
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6046 dso_local i32 @lock_system_sleep() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !6049 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6054, metadata !DIExpression()), !dbg !6056
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6055, metadata !DIExpression()), !dbg !6057
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6058
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6059
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6060
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !6061
  %3 = load ptr, ptr %next, align 8, !dbg !6061
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #17, !dbg !6062
  ret void, !dbg !6063
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6064 dso_local void @unlock_system_sleep(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_unregister_lps0_dev(ptr noundef %arg) #0 align 16 !dbg !6067 {
entry:
  %arg.addr = alloca ptr, align 8
  %sleep_flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6071, metadata !DIExpression()), !dbg !6073
  call void @llvm.lifetime.start.p0(i64 4, ptr %sleep_flags) #16, !dbg !6074
  call void @llvm.dbg.declare(metadata ptr %sleep_flags, metadata !6072, metadata !DIExpression()), !dbg !6075
  %0 = load ptr, ptr @lps0_device_handle, align 8, !dbg !6076
  %tobool = icmp ne ptr %0, null, !dbg !6076
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6078

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr @sleep_no_lps0, align 1, !dbg !6079, !range !5774, !noundef !604
  %tobool1 = trunc i8 %1 to i1, !dbg !6079
  br i1 %tobool1, label %if.then, label %if.end, !dbg !6080

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6081

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @lock_system_sleep() #17, !dbg !6082
  store i32 %call, ptr %sleep_flags, align 4, !dbg !6083
  %2 = load ptr, ptr %arg.addr, align 8, !dbg !6084
  %list_node = getelementptr inbounds %struct.acpi_s2idle_dev_ops, ptr %2, i32 0, i32 0, !dbg !6085
  call void @list_del(ptr noundef %list_node) #17, !dbg !6086
  %3 = load i32, ptr %sleep_flags, align 4, !dbg !6087
  call void @unlock_system_sleep(i32 noundef %3) #17, !dbg !6088
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6089
  br label %cleanup, !dbg !6089

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sleep_flags) #16, !dbg !6089
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6089

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !6090 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6094, metadata !DIExpression()), !dbg !6095
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6096
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !6097
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6098
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6099
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6100
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6101
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6102
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6103
  ret void, !dbg !6104
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6105 dso_local ptr @acpi_fetch_acpi_dev(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6108 dso_local void @acpi_handle_printk(ptr noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6111 dso_local ptr @acpi_power_state_string(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6114 dso_local ptr @acpi_evaluate_dsm(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #5 align 16 !dbg !6119 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !6122, metadata !DIExpression()), !dbg !6123
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !6124
  call void @kfree(ptr noundef %0) #17, !dbg !6125
  ret void, !dbg !6126
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_sleep_dsm_state_to_str(i32 noundef %state) #0 align 16 !dbg !6127 {
entry:
  %retval = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6131, metadata !DIExpression()), !dbg !6132
  %0 = load i32, ptr @lps0_dsm_func_mask_microsoft, align 4, !dbg !6133
  %tobool = icmp ne i32 %0, 0, !dbg !6133
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !6135

lor.lhs.false:                                    ; preds = %entry
  %call = call zeroext i1 @acpi_s2idle_vendor_amd() #17, !dbg !6136
  br i1 %call, label %if.else, label %if.then, !dbg !6137

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load i32, ptr %state.addr, align 4, !dbg !6138
  switch i32 %1, label %sw.epilog [
    i32 3, label %sw.bb
    i32 4, label %sw.bb1
    i32 5, label %sw.bb2
    i32 6, label %sw.bb3
    i32 7, label %sw.bb4
    i32 8, label %sw.bb5
  ], !dbg !6140

sw.bb:                                            ; preds = %if.then
  store ptr @.str.6, ptr %retval, align 8, !dbg !6141
  br label %return, !dbg !6141

sw.bb1:                                           ; preds = %if.then
  store ptr @.str.7, ptr %retval, align 8, !dbg !6143
  br label %return, !dbg !6143

sw.bb2:                                           ; preds = %if.then
  store ptr @.str.8, ptr %retval, align 8, !dbg !6144
  br label %return, !dbg !6144

sw.bb3:                                           ; preds = %if.then
  store ptr @.str.9, ptr %retval, align 8, !dbg !6145
  br label %return, !dbg !6145

sw.bb4:                                           ; preds = %if.then
  store ptr @.str.10, ptr %retval, align 8, !dbg !6146
  br label %return, !dbg !6146

sw.bb5:                                           ; preds = %if.then
  store ptr @.str.11, ptr %retval, align 8, !dbg !6147
  br label %return, !dbg !6147

sw.epilog:                                        ; preds = %if.then
  br label %if.end, !dbg !6148

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i32, ptr %state.addr, align 4, !dbg !6149
  switch i32 %2, label %sw.epilog10 [
    i32 5, label %sw.bb6
    i32 4, label %sw.bb7
    i32 2, label %sw.bb8
    i32 3, label %sw.bb9
  ], !dbg !6151

sw.bb6:                                           ; preds = %if.else
  store ptr @.str.7, ptr %retval, align 8, !dbg !6152
  br label %return, !dbg !6152

sw.bb7:                                           ; preds = %if.else
  store ptr @.str.6, ptr %retval, align 8, !dbg !6154
  br label %return, !dbg !6154

sw.bb8:                                           ; preds = %if.else
  store ptr @.str.8, ptr %retval, align 8, !dbg !6155
  br label %return, !dbg !6155

sw.bb9:                                           ; preds = %if.else
  store ptr @.str.9, ptr %retval, align 8, !dbg !6156
  br label %return, !dbg !6156

sw.epilog10:                                      ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %sw.epilog10, %sw.epilog
  store ptr @.str.12, ptr %retval, align 8, !dbg !6157
  br label %return, !dbg !6157

return:                                           ; preds = %if.end, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %3 = load ptr, ptr %retval, align 8, !dbg !6158
  ret ptr %3, !dbg !6158
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6159 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lps0_device_attach(ptr noundef %adev, ptr noundef %not_used) #0 align 16 !dbg !5672 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca ptr, align 8
  %not_used.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !5674, metadata !DIExpression()), !dbg !6162
  store ptr %not_used, ptr %not_used.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %not_used.addr, metadata !5675, metadata !DIExpression()), !dbg !6163
  %0 = load ptr, ptr @lps0_device_handle, align 8, !dbg !6164
  %tobool = icmp ne ptr %0, null, !dbg !6164
  br i1 %tobool, label %if.then, label %if.end, !dbg !6166

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6167
  br label %return, !dbg !6167

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !6168
  %handle = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 2, !dbg !6169
  %2 = load ptr, ptr %handle, align 8, !dbg !6169
  %call = call i32 @validate_dsm(ptr noundef %2, ptr noundef @.str.13, i32 noundef 0, ptr noundef @lps0_dsm_guid_microsoft) #17, !dbg !6170
  store i32 %call, ptr @lps0_dsm_func_mask_microsoft, align 4, !dbg !6171
  %call1 = call zeroext i1 @acpi_s2idle_vendor_amd() #17, !dbg !6172
  br i1 %call1, label %if.then2, label %if.else25, !dbg !6173

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !6174
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5676, metadata !DIExpression()), !dbg !6175
  store ptr @amd_hid_ids, ptr @lps0_device_attach.dev_id, align 8, !dbg !6176
  br label %for.cond, !dbg !6178

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load ptr, ptr @lps0_device_attach.dev_id, align 8, !dbg !6179
  %id = getelementptr inbounds %struct.acpi_device_id, ptr %3, i32 0, i32 0, !dbg !6181
  %arrayidx = getelementptr [16 x i8], ptr %id, i64 0, i64 0, !dbg !6179
  %4 = load i8, ptr %arrayidx, align 8, !dbg !6179
  %tobool3 = icmp ne i8 %4, 0, !dbg !6182
  br i1 %tobool3, label %for.body, label %for.end, !dbg !6182

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %adev.addr, align 8, !dbg !6183
  %6 = load ptr, ptr @lps0_device_attach.dev_id, align 8, !dbg !6185
  %id4 = getelementptr inbounds %struct.acpi_device_id, ptr %6, i32 0, i32 0, !dbg !6186
  %arraydecay = getelementptr inbounds [16 x i8], ptr %id4, i64 0, i64 0, !dbg !6185
  %call5 = call zeroext i1 @acpi_dev_hid_uid_match(ptr noundef %5, ptr noundef %arraydecay, ptr noundef null) #17, !dbg !6187
  br i1 %call5, label %if.then6, label %if.end7, !dbg !6188

if.then6:                                         ; preds = %for.body
  br label %for.end, !dbg !6189

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !6190

for.inc:                                          ; preds = %if.end7
  %7 = load ptr, ptr @lps0_device_attach.dev_id, align 8, !dbg !6191
  %incdec.ptr = getelementptr %struct.acpi_device_id, ptr %7, i32 1, !dbg !6191
  store ptr %incdec.ptr, ptr @lps0_device_attach.dev_id, align 8, !dbg !6191
  br label %for.cond, !dbg !6192, !llvm.loop !6193

for.end:                                          ; preds = %if.then6, %for.cond
  %8 = load ptr, ptr @lps0_device_attach.dev_id, align 8, !dbg !6195
  %id8 = getelementptr inbounds %struct.acpi_device_id, ptr %8, i32 0, i32 0, !dbg !6197
  %arrayidx9 = getelementptr [16 x i8], ptr %id8, i64 0, i64 0, !dbg !6195
  %9 = load i8, ptr %arrayidx9, align 8, !dbg !6195
  %tobool10 = icmp ne i8 %9, 0, !dbg !6195
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !6198

if.then11:                                        ; preds = %for.end
  %10 = load ptr, ptr @lps0_device_attach.dev_id, align 8, !dbg !6199
  %driver_data = getelementptr inbounds %struct.acpi_device_id, ptr %10, i32 0, i32 1, !dbg !6200
  %11 = load i64, ptr %driver_data, align 8, !dbg !6200
  %12 = inttoptr i64 %11 to ptr, !dbg !6201
  store ptr %12, ptr %data, align 8, !dbg !6202
  br label %if.end12, !dbg !6203

if.else:                                          ; preds = %for.end
  store ptr @amd_cezanne, ptr %data, align 8, !dbg !6204
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  %13 = load ptr, ptr %adev.addr, align 8, !dbg !6205
  %handle13 = getelementptr inbounds %struct.acpi_device, ptr %13, i32 0, i32 2, !dbg !6206
  %14 = load ptr, ptr %handle13, align 8, !dbg !6206
  %15 = load i32, ptr @rev_id, align 4, !dbg !6207
  %call14 = call i32 @validate_dsm(ptr noundef %14, ptr noundef @.str.14, i32 noundef %15, ptr noundef @lps0_dsm_guid) #17, !dbg !6208
  store i32 %call14, ptr @lps0_dsm_func_mask, align 4, !dbg !6209
  %16 = load i32, ptr @lps0_dsm_func_mask, align 4, !dbg !6210
  %cmp = icmp sgt i32 %16, 3, !dbg !6212
  br i1 %cmp, label %land.lhs.true, label %if.else17, !dbg !6213

land.lhs.true:                                    ; preds = %if.end12
  %17 = load ptr, ptr %data, align 8, !dbg !6214
  %check_off_by_one = getelementptr inbounds %struct.amd_lps0_hid_device_data, ptr %17, i32 0, i32 0, !dbg !6215
  %18 = load i8, ptr %check_off_by_one, align 1, !dbg !6215, !range !5774, !noundef !604
  %tobool15 = trunc i8 %18 to i1, !dbg !6215
  br i1 %tobool15, label %if.then16, label %if.else17, !dbg !6216

if.then16:                                        ; preds = %land.lhs.true
  %19 = load i32, ptr @lps0_dsm_func_mask, align 4, !dbg !6217
  %shl = shl i32 %19, 1, !dbg !6219
  %or = or i32 %shl, 1, !dbg !6220
  store i32 %or, ptr @lps0_dsm_func_mask, align 4, !dbg !6221
  store i32 0, ptr %tmp, align 4, !dbg !6222
  %20 = load i32, ptr %tmp, align 4, !dbg !6225
  br label %if.end24, !dbg !6226

if.else17:                                        ; preds = %land.lhs.true, %if.end12
  %21 = load i32, ptr @lps0_dsm_func_mask_microsoft, align 4, !dbg !6227
  %cmp18 = icmp sgt i32 %21, 0, !dbg !6229
  br i1 %cmp18, label %land.lhs.true19, label %if.end23, !dbg !6230

land.lhs.true19:                                  ; preds = %if.else17
  %22 = load i32, ptr @rev_id, align 4, !dbg !6231
  %tobool20 = icmp ne i32 %22, 0, !dbg !6231
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !6232

if.then21:                                        ; preds = %land.lhs.true19
  store i32 -22, ptr @lps0_dsm_func_mask_microsoft, align 4, !dbg !6233
  store i32 0, ptr %tmp22, align 4, !dbg !6235
  %23 = load i32, ptr %tmp22, align 4, !dbg !6238
  br label %if.end23, !dbg !6239

if.end23:                                         ; preds = %if.then21, %land.lhs.true19, %if.else17
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !6240
  br label %if.end28, !dbg !6241

if.else25:                                        ; preds = %if.end
  store i32 1, ptr @rev_id, align 4, !dbg !6242
  %24 = load ptr, ptr %adev.addr, align 8, !dbg !6244
  %handle26 = getelementptr inbounds %struct.acpi_device, ptr %24, i32 0, i32 2, !dbg !6245
  %25 = load ptr, ptr %handle26, align 8, !dbg !6245
  %26 = load i32, ptr @rev_id, align 4, !dbg !6246
  %call27 = call i32 @validate_dsm(ptr noundef %25, ptr noundef @.str.15, i32 noundef %26, ptr noundef @lps0_dsm_guid) #17, !dbg !6247
  store i32 %call27, ptr @lps0_dsm_func_mask, align 4, !dbg !6248
  store i32 -22, ptr @lps0_dsm_func_mask_microsoft, align 4, !dbg !6249
  br label %if.end28

if.end28:                                         ; preds = %if.else25, %if.end24
  %27 = load i32, ptr @lps0_dsm_func_mask, align 4, !dbg !6250
  %cmp29 = icmp slt i32 %27, 0, !dbg !6252
  br i1 %cmp29, label %land.lhs.true30, label %if.end33, !dbg !6253

land.lhs.true30:                                  ; preds = %if.end28
  %28 = load i32, ptr @lps0_dsm_func_mask_microsoft, align 4, !dbg !6254
  %cmp31 = icmp slt i32 %28, 0, !dbg !6255
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !6256

if.then32:                                        ; preds = %land.lhs.true30
  store i32 0, ptr %retval, align 4, !dbg !6257
  br label %return, !dbg !6257

if.end33:                                         ; preds = %land.lhs.true30, %if.end28
  %29 = load ptr, ptr %adev.addr, align 8, !dbg !6258
  %handle34 = getelementptr inbounds %struct.acpi_device, ptr %29, i32 0, i32 2, !dbg !6259
  %30 = load ptr, ptr %handle34, align 8, !dbg !6259
  store ptr %30, ptr @lps0_device_handle, align 8, !dbg !6260
  %call35 = call zeroext i1 @acpi_s2idle_vendor_amd() #17, !dbg !6261
  br i1 %call35, label %if.then36, label %if.else37, !dbg !6263

if.then36:                                        ; preds = %if.end33
  call void @lpi_device_get_constraints_amd() #17, !dbg !6264
  br label %if.end38, !dbg !6264

if.else37:                                        ; preds = %if.end33
  call void @lpi_device_get_constraints() #17, !dbg !6265
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %if.then36
  %31 = load i32, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 38), align 1, !dbg !6266
  %and = and i32 %31, 2097152, !dbg !6268
  %tobool39 = icmp ne i32 %and, 0, !dbg !6268
  br i1 %tobool39, label %land.lhs.true40, label %if.end47, !dbg !6269

land.lhs.true40:                                  ; preds = %if.end38
  %32 = load i32, ptr @mem_sleep_default, align 4, !dbg !6270
  %cmp41 = icmp sgt i32 %32, 3, !dbg !6271
  br i1 %cmp41, label %land.lhs.true42, label %if.end47, !dbg !6272

land.lhs.true42:                                  ; preds = %land.lhs.true40
  %33 = load i8, ptr @acpi_sleep_default_s3, align 1, !dbg !6273, !range !5774, !noundef !604
  %tobool43 = trunc i8 %33 to i1, !dbg !6273
  br i1 %tobool43, label %if.end47, label %if.then44, !dbg !6274

if.then44:                                        ; preds = %land.lhs.true42
  store i32 1, ptr @mem_sleep_current, align 4, !dbg !6275
  br label %do.body, !dbg !6277

do.body:                                          ; preds = %if.then44
  br label %do.end, !dbg !6279

do.end:                                           ; preds = %do.body
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef @.str.16) #18, !dbg !6277
  store i32 %call46, ptr %tmp45, align 4, !dbg !6279
  %34 = load i32, ptr %tmp45, align 4, !dbg !6277
  br label %if.end47, !dbg !6281

if.end47:                                         ; preds = %do.end, %land.lhs.true42, %land.lhs.true40, %if.end38
  call void @acpi_ec_mark_gpe_for_wake() #17, !dbg !6282
  store i32 0, ptr %retval, align 4, !dbg !6283
  br label %return, !dbg !6283

return:                                           ; preds = %if.end47, %if.then32, %if.then
  %35 = load i32, ptr %retval, align 4, !dbg !6284
  ret i32 %35, !dbg !6284
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @validate_dsm(ptr noundef %handle, ptr noundef %uuid, i32 noundef %rev, ptr noundef %dsm_guid) #0 align 16 !dbg !6285 {
entry:
  %handle.addr = alloca ptr, align 8
  %uuid.addr = alloca ptr, align 8
  %rev.addr = alloca i32, align 4
  %dsm_guid.addr = alloca ptr, align 8
  %obj = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !6290, metadata !DIExpression()), !dbg !6297
  store ptr %uuid, ptr %uuid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uuid.addr, metadata !6291, metadata !DIExpression()), !dbg !6298
  store i32 %rev, ptr %rev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rev.addr, metadata !6292, metadata !DIExpression()), !dbg !6299
  store ptr %dsm_guid, ptr %dsm_guid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dsm_guid.addr, metadata !6293, metadata !DIExpression()), !dbg !6300
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #16, !dbg !6301
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !6294, metadata !DIExpression()), !dbg !6302
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6303
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6295, metadata !DIExpression()), !dbg !6304
  store i32 -22, ptr %ret, align 4, !dbg !6304
  %0 = load ptr, ptr %uuid.addr, align 8, !dbg !6305
  %1 = load ptr, ptr %dsm_guid.addr, align 8, !dbg !6306
  %call = call i32 @guid_parse(ptr noundef %0, ptr noundef %1) #17, !dbg !6307
  %2 = load ptr, ptr %handle.addr, align 8, !dbg !6308
  %3 = load ptr, ptr %dsm_guid.addr, align 8, !dbg !6309
  %4 = load i32, ptr %rev.addr, align 4, !dbg !6310
  %conv = sext i32 %4 to i64, !dbg !6310
  %call1 = call ptr @acpi_evaluate_dsm(ptr noundef %2, ptr noundef %3, i64 noundef %conv, i64 noundef 0, ptr noundef null) #17, !dbg !6311
  store ptr %call1, ptr %obj, align 8, !dbg !6312
  %5 = load ptr, ptr %obj, align 8, !dbg !6313
  %tobool = icmp ne ptr %5, null, !dbg !6313
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6315

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %obj, align 8, !dbg !6316
  %7 = load i32, ptr %6, align 8, !dbg !6317
  %cmp = icmp ne i32 %7, 3, !dbg !6318
  br i1 %cmp, label %if.then, label %lor.lhs.false3, !dbg !6319

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr %obj, align 8, !dbg !6320
  %length = getelementptr inbounds %struct.anon.21, ptr %8, i32 0, i32 1, !dbg !6321
  %9 = load i32, ptr %length, align 4, !dbg !6321
  %cmp4 = icmp eq i32 %9, 0, !dbg !6322
  br i1 %cmp4, label %if.then, label %lor.lhs.false6, !dbg !6323

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %10 = load ptr, ptr %obj, align 8, !dbg !6324
  %length7 = getelementptr inbounds %struct.anon.21, ptr %10, i32 0, i32 1, !dbg !6325
  %11 = load i32, ptr %length7, align 4, !dbg !6325
  %conv8 = zext i32 %11 to i64, !dbg !6324
  %cmp9 = icmp ugt i64 %conv8, 4, !dbg !6326
  br i1 %cmp9, label %if.then, label %if.end, !dbg !6327

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 0, ptr %tmp, align 4, !dbg !6328
  %12 = load i32, ptr %tmp, align 4, !dbg !6332
  br label %out, !dbg !6333

if.end:                                           ; preds = %lor.lhs.false6
  %13 = load ptr, ptr %obj, align 8, !dbg !6334
  %pointer = getelementptr inbounds %struct.anon.21, ptr %13, i32 0, i32 2, !dbg !6335
  %14 = load ptr, ptr %pointer, align 8, !dbg !6335
  %15 = load i32, ptr %14, align 4, !dbg !6336
  store i32 %15, ptr %ret, align 4, !dbg !6337
  store i32 0, ptr %tmp11, align 4, !dbg !6338
  %16 = load i32, ptr %tmp11, align 4, !dbg !6341
  br label %out, !dbg !6342

out:                                              ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !6296), !dbg !6343
  %17 = load ptr, ptr %obj, align 8, !dbg !6344
  call void @acpi_os_free(ptr noundef %17) #17, !dbg !6344
  %18 = load i32, ptr %ret, align 4, !dbg !6345
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6346
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #16, !dbg !6346
  ret i32 %18, !dbg !6347
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6348 dso_local zeroext i1 @acpi_dev_hid_uid_match(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lpi_device_get_constraints_amd() #0 align 16 !dbg !6351 {
entry:
  %out_obj = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %package = alloca ptr, align 8
  %tmp14 = alloca i32, align 4
  %info_obj = alloca ptr, align 8
  %dev_info = alloca %struct.lpi_device_constraint_amd, align 8
  %list = alloca ptr, align 8
  %status = alloca i32, align 4
  %obj = alloca ptr, align 8
  %tmp41 = alloca i32, align 4
  %tmp72 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %out_obj) #16, !dbg !6382
  call void @llvm.dbg.declare(metadata ptr %out_obj, metadata !6353, metadata !DIExpression()), !dbg !6383
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !6384
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6354, metadata !DIExpression()), !dbg !6385
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #16, !dbg !6384
  call void @llvm.dbg.declare(metadata ptr %j, metadata !6355, metadata !DIExpression()), !dbg !6386
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #16, !dbg !6384
  call void @llvm.dbg.declare(metadata ptr %k, metadata !6356, metadata !DIExpression()), !dbg !6387
  %0 = load ptr, ptr @lps0_device_handle, align 8, !dbg !6388
  %1 = load i32, ptr @rev_id, align 4, !dbg !6389
  %conv = sext i32 %1 to i64, !dbg !6389
  %call = call ptr @acpi_evaluate_dsm_typed(ptr noundef %0, ptr noundef @lps0_dsm_guid, i64 noundef %conv, i64 noundef 1, ptr noundef null, i32 noundef 4) #17, !dbg !6390
  store ptr %call, ptr %out_obj, align 8, !dbg !6391
  store i32 0, ptr %tmp, align 4, !dbg !6392
  %2 = load i32, ptr %tmp, align 4, !dbg !6395
  %3 = load ptr, ptr %out_obj, align 8, !dbg !6396
  %tobool = icmp ne ptr %3, null, !dbg !6396
  br i1 %tobool, label %if.end, label %if.then, !dbg !6398

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup73, !dbg !6399

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !6400
  br label %for.cond, !dbg !6401

for.cond:                                         ; preds = %for.inc69, %if.end
  %4 = load i32, ptr %i, align 4, !dbg !6402
  %5 = load ptr, ptr %out_obj, align 8, !dbg !6403
  %count = getelementptr inbounds %struct.anon.22, ptr %5, i32 0, i32 1, !dbg !6404
  %6 = load i32, ptr %count, align 4, !dbg !6404
  %cmp = icmp ult i32 %4, %6, !dbg !6405
  br i1 %cmp, label %for.body, label %for.end71, !dbg !6406

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %package) #16, !dbg !6407
  call void @llvm.dbg.declare(metadata ptr %package, metadata !6357, metadata !DIExpression()), !dbg !6408
  %7 = load ptr, ptr %out_obj, align 8, !dbg !6409
  %elements = getelementptr inbounds %struct.anon.22, ptr %7, i32 0, i32 2, !dbg !6410
  %8 = load ptr, ptr %elements, align 8, !dbg !6410
  %9 = load i32, ptr %i, align 4, !dbg !6411
  %idxprom = sext i32 %9 to i64, !dbg !6409
  %arrayidx = getelementptr %union.acpi_object, ptr %8, i64 %idxprom, !dbg !6409
  store ptr %arrayidx, ptr %package, align 8, !dbg !6408
  %10 = load ptr, ptr %package, align 8, !dbg !6412
  %11 = load i32, ptr %10, align 8, !dbg !6413
  %cmp2 = icmp eq i32 %11, 4, !dbg !6414
  br i1 %cmp2, label %if.then4, label %if.end65, !dbg !6415

if.then4:                                         ; preds = %for.body
  %12 = load ptr, ptr @lpi_constraints_table, align 8, !dbg !6416
  %tobool5 = icmp ne ptr %12, null, !dbg !6416
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6418

if.then6:                                         ; preds = %if.then4
  %13 = load ptr, ptr @lps0_device_handle, align 8, !dbg !6419
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.17, ptr noundef %13, ptr noundef @.str.18) #17, !dbg !6419
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup66, !dbg !6421

if.end7:                                          ; preds = %if.then4
  %14 = load ptr, ptr %package, align 8, !dbg !6422
  %count8 = getelementptr inbounds %struct.anon.22, ptr %14, i32 0, i32 1, !dbg !6423
  %15 = load i32, ptr %count8, align 4, !dbg !6423
  %conv9 = zext i32 %15 to i64, !dbg !6422
  %call10 = call noalias ptr @kcalloc(i64 noundef %conv9, i64 noundef 16, i32 noundef 3264) #19, !dbg !6424
  store ptr %call10, ptr @lpi_constraints_table, align 8, !dbg !6425
  %16 = load ptr, ptr @lpi_constraints_table, align 8, !dbg !6426
  %tobool11 = icmp ne ptr %16, null, !dbg !6426
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !6428

if.then12:                                        ; preds = %if.end7
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup66, !dbg !6429

if.end13:                                         ; preds = %if.end7
  store i32 0, ptr %tmp14, align 4, !dbg !6430
  %17 = load i32, ptr %tmp14, align 4, !dbg !6433
  store i32 0, ptr %j, align 4, !dbg !6434
  br label %for.cond15, !dbg !6435

for.cond15:                                       ; preds = %for.inc62, %if.end13
  %18 = load i32, ptr %j, align 4, !dbg !6436
  %19 = load ptr, ptr %package, align 8, !dbg !6437
  %count16 = getelementptr inbounds %struct.anon.22, ptr %19, i32 0, i32 1, !dbg !6438
  %20 = load i32, ptr %count16, align 4, !dbg !6438
  %cmp17 = icmp ult i32 %18, %20, !dbg !6439
  br i1 %cmp17, label %for.body19, label %for.end64, !dbg !6440

for.body19:                                       ; preds = %for.cond15
  call void @llvm.lifetime.start.p0(i64 8, ptr %info_obj) #16, !dbg !6441
  call void @llvm.dbg.declare(metadata ptr %info_obj, metadata !6361, metadata !DIExpression()), !dbg !6442
  %21 = load ptr, ptr %package, align 8, !dbg !6443
  %elements20 = getelementptr inbounds %struct.anon.22, ptr %21, i32 0, i32 2, !dbg !6444
  %22 = load ptr, ptr %elements20, align 8, !dbg !6444
  %23 = load i32, ptr %j, align 4, !dbg !6445
  %idxprom21 = sext i32 %23 to i64, !dbg !6443
  %arrayidx22 = getelementptr %union.acpi_object, ptr %22, i64 %idxprom21, !dbg !6443
  store ptr %arrayidx22, ptr %info_obj, align 8, !dbg !6442
  call void @llvm.lifetime.start.p0(i64 24, ptr %dev_info) #16, !dbg !6446
  call void @llvm.dbg.declare(metadata ptr %dev_info, metadata !6367, metadata !DIExpression()), !dbg !6447
  call void @llvm.memset.p0.i64(ptr align 8 %dev_info, i8 0, i64 24, i1 false), !dbg !6447
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #16, !dbg !6448
  call void @llvm.dbg.declare(metadata ptr %list, metadata !6374, metadata !DIExpression()), !dbg !6449
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #16, !dbg !6450
  call void @llvm.dbg.declare(metadata ptr %status, metadata !6375, metadata !DIExpression()), !dbg !6451
  %24 = load ptr, ptr @lpi_constraints_table, align 8, !dbg !6452
  %25 = load i32, ptr @lpi_constraints_table_size, align 4, !dbg !6453
  %idxprom23 = sext i32 %25 to i64, !dbg !6452
  %arrayidx24 = getelementptr %struct.lpi_constraints, ptr %24, i64 %idxprom23, !dbg !6452
  store ptr %arrayidx24, ptr %list, align 8, !dbg !6454
  store i32 0, ptr %k, align 4, !dbg !6455
  br label %for.cond25, !dbg !6456

for.cond25:                                       ; preds = %for.inc, %for.body19
  %26 = load i32, ptr %k, align 4, !dbg !6457
  %27 = load ptr, ptr %info_obj, align 8, !dbg !6458
  %count26 = getelementptr inbounds %struct.anon.22, ptr %27, i32 0, i32 1, !dbg !6459
  %28 = load i32, ptr %count26, align 4, !dbg !6459
  %cmp27 = icmp ult i32 %26, %28, !dbg !6460
  br i1 %cmp27, label %for.body29, label %for.end, !dbg !6461

for.body29:                                       ; preds = %for.cond25
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #16, !dbg !6462
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !6377, metadata !DIExpression()), !dbg !6463
  %29 = load ptr, ptr %info_obj, align 8, !dbg !6464
  %elements30 = getelementptr inbounds %struct.anon.22, ptr %29, i32 0, i32 2, !dbg !6465
  %30 = load ptr, ptr %elements30, align 8, !dbg !6465
  %31 = load i32, ptr %k, align 4, !dbg !6466
  %idxprom31 = sext i32 %31 to i64, !dbg !6464
  %arrayidx32 = getelementptr %union.acpi_object, ptr %30, i64 %idxprom31, !dbg !6464
  store ptr %arrayidx32, ptr %obj, align 8, !dbg !6463
  %32 = load i32, ptr %k, align 4, !dbg !6467
  switch i32 %32, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb34
    i32 2, label %sw.bb35
    i32 3, label %sw.bb38
  ], !dbg !6468

sw.bb:                                            ; preds = %for.body29
  %33 = load ptr, ptr %obj, align 8, !dbg !6469
  %value = getelementptr inbounds %struct.anon.19, ptr %33, i32 0, i32 1, !dbg !6471
  %34 = load i64, ptr %value, align 8, !dbg !6471
  %conv33 = trunc i64 %34 to i32, !dbg !6469
  %enabled = getelementptr inbounds %struct.lpi_device_constraint_amd, ptr %dev_info, i32 0, i32 1, !dbg !6472
  store i32 %conv33, ptr %enabled, align 8, !dbg !6473
  br label %sw.epilog, !dbg !6474

sw.bb34:                                          ; preds = %for.body29
  %35 = load ptr, ptr %obj, align 8, !dbg !6475
  %pointer = getelementptr inbounds %struct.anon.20, ptr %35, i32 0, i32 2, !dbg !6476
  %36 = load ptr, ptr %pointer, align 8, !dbg !6476
  %name = getelementptr inbounds %struct.lpi_device_constraint_amd, ptr %dev_info, i32 0, i32 0, !dbg !6477
  store ptr %36, ptr %name, align 8, !dbg !6478
  br label %sw.epilog, !dbg !6479

sw.bb35:                                          ; preds = %for.body29
  %37 = load ptr, ptr %obj, align 8, !dbg !6480
  %value36 = getelementptr inbounds %struct.anon.19, ptr %37, i32 0, i32 1, !dbg !6481
  %38 = load i64, ptr %value36, align 8, !dbg !6481
  %conv37 = trunc i64 %38 to i32, !dbg !6480
  %function_states = getelementptr inbounds %struct.lpi_device_constraint_amd, ptr %dev_info, i32 0, i32 2, !dbg !6482
  store i32 %conv37, ptr %function_states, align 4, !dbg !6483
  br label %sw.epilog, !dbg !6484

sw.bb38:                                          ; preds = %for.body29
  %39 = load ptr, ptr %obj, align 8, !dbg !6485
  %value39 = getelementptr inbounds %struct.anon.19, ptr %39, i32 0, i32 1, !dbg !6486
  %40 = load i64, ptr %value39, align 8, !dbg !6486
  %conv40 = trunc i64 %40 to i32, !dbg !6485
  %min_dstate = getelementptr inbounds %struct.lpi_device_constraint_amd, ptr %dev_info, i32 0, i32 3, !dbg !6487
  store i32 %conv40, ptr %min_dstate, align 8, !dbg !6488
  br label %sw.epilog, !dbg !6489

sw.epilog:                                        ; preds = %for.body29, %sw.bb38, %sw.bb35, %sw.bb34, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #16, !dbg !6490
  br label %for.inc, !dbg !6491

for.inc:                                          ; preds = %sw.epilog
  %41 = load i32, ptr %k, align 4, !dbg !6492
  %inc = add i32 %41, 1, !dbg !6492
  store i32 %inc, ptr %k, align 4, !dbg !6492
  br label %for.cond25, !dbg !6493, !llvm.loop !6494

for.end:                                          ; preds = %for.cond25
  store i32 0, ptr %tmp41, align 4, !dbg !6496
  %42 = load i32, ptr %tmp41, align 4, !dbg !6499
  %enabled42 = getelementptr inbounds %struct.lpi_device_constraint_amd, ptr %dev_info, i32 0, i32 1, !dbg !6500
  %43 = load i32, ptr %enabled42, align 8, !dbg !6500
  %tobool43 = icmp ne i32 %43, 0, !dbg !6502
  br i1 %tobool43, label %lor.lhs.false, label %if.then49, !dbg !6503

lor.lhs.false:                                    ; preds = %for.end
  %name44 = getelementptr inbounds %struct.lpi_device_constraint_amd, ptr %dev_info, i32 0, i32 0, !dbg !6504
  %44 = load ptr, ptr %name44, align 8, !dbg !6504
  %tobool45 = icmp ne ptr %44, null, !dbg !6505
  br i1 %tobool45, label %lor.lhs.false46, label %if.then49, !dbg !6506

lor.lhs.false46:                                  ; preds = %lor.lhs.false
  %min_dstate47 = getelementptr inbounds %struct.lpi_device_constraint_amd, ptr %dev_info, i32 0, i32 3, !dbg !6507
  %45 = load i32, ptr %min_dstate47, align 8, !dbg !6507
  %tobool48 = icmp ne i32 %45, 0, !dbg !6508
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !6509

if.then49:                                        ; preds = %lor.lhs.false46, %lor.lhs.false, %for.end
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6510

if.end50:                                         ; preds = %lor.lhs.false46
  %name51 = getelementptr inbounds %struct.lpi_device_constraint_amd, ptr %dev_info, i32 0, i32 0, !dbg !6511
  %46 = load ptr, ptr %name51, align 8, !dbg !6511
  %47 = load ptr, ptr %list, align 8, !dbg !6512
  %handle = getelementptr inbounds %struct.lpi_constraints, ptr %47, i32 0, i32 0, !dbg !6513
  %call52 = call i32 @acpi_get_handle(ptr noundef null, ptr noundef %46, ptr noundef %handle) #17, !dbg !6514
  store i32 %call52, ptr %status, align 4, !dbg !6515
  %48 = load i32, ptr %status, align 4, !dbg !6516
  %tobool53 = icmp ne i32 %48, 0, !dbg !6516
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !6518

if.then54:                                        ; preds = %if.end50
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6519

if.end55:                                         ; preds = %if.end50
  %min_dstate56 = getelementptr inbounds %struct.lpi_device_constraint_amd, ptr %dev_info, i32 0, i32 3, !dbg !6520
  %49 = load i32, ptr %min_dstate56, align 8, !dbg !6520
  %50 = load ptr, ptr %list, align 8, !dbg !6521
  %min_dstate57 = getelementptr inbounds %struct.lpi_constraints, ptr %50, i32 0, i32 1, !dbg !6522
  store i32 %49, ptr %min_dstate57, align 8, !dbg !6523
  %51 = load i32, ptr @lpi_constraints_table_size, align 4, !dbg !6524
  %inc58 = add i32 %51, 1, !dbg !6524
  store i32 %inc58, ptr @lpi_constraints_table_size, align 4, !dbg !6524
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6525
  br label %cleanup, !dbg !6525

cleanup:                                          ; preds = %if.end55, %if.then54, %if.then49
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #16, !dbg !6525
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #16, !dbg !6525
  call void @llvm.lifetime.end.p0(i64 24, ptr %dev_info) #16, !dbg !6525
  call void @llvm.lifetime.end.p0(i64 8, ptr %info_obj) #16, !dbg !6525
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 8, label %for.inc62
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc62, !dbg !6526

for.inc62:                                        ; preds = %cleanup.cont, %cleanup
  %52 = load i32, ptr %j, align 4, !dbg !6527
  %inc63 = add i32 %52, 1, !dbg !6527
  store i32 %inc63, ptr %j, align 4, !dbg !6527
  br label %for.cond15, !dbg !6528, !llvm.loop !6529

for.end64:                                        ; preds = %for.cond15
  br label %if.end65, !dbg !6531

if.end65:                                         ; preds = %for.end64, %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6532
  br label %cleanup66, !dbg !6532

cleanup66:                                        ; preds = %if.then12, %if.then6, %if.end65
  call void @llvm.lifetime.end.p0(i64 8, ptr %package) #16, !dbg !6532
  %cleanup.dest67 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest67, label %cleanup73 [
    i32 0, label %cleanup.cont68
    i32 5, label %free_acpi_buffer
  ]

cleanup.cont68:                                   ; preds = %cleanup66
  br label %for.inc69, !dbg !6533

for.inc69:                                        ; preds = %cleanup.cont68
  %53 = load i32, ptr %i, align 4, !dbg !6534
  %inc70 = add i32 %53, 1, !dbg !6534
  store i32 %inc70, ptr %i, align 4, !dbg !6534
  br label %for.cond, !dbg !6535, !llvm.loop !6536

for.end71:                                        ; preds = %for.cond
  store i32 0, ptr %tmp72, align 4, !dbg !6538
  %54 = load i32, ptr %tmp72, align 4, !dbg !6541
  br label %free_acpi_buffer, !dbg !6542

free_acpi_buffer:                                 ; preds = %for.end71, %cleanup66
  call void @llvm.dbg.label(metadata !6381), !dbg !6543
  %55 = load ptr, ptr %out_obj, align 8, !dbg !6544
  call void @acpi_os_free(ptr noundef %55) #17, !dbg !6544
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6545
  br label %cleanup73, !dbg !6545

cleanup73:                                        ; preds = %free_acpi_buffer, %cleanup66, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #16, !dbg !6545
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #16, !dbg !6545
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6545
  call void @llvm.lifetime.end.p0(i64 8, ptr %out_obj) #16, !dbg !6545
  %cleanup.dest77 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest77, label %unreachable [
    i32 0, label %cleanup.cont78
    i32 1, label %cleanup.cont78
  ]

cleanup.cont78:                                   ; preds = %cleanup73, %cleanup73
  ret void, !dbg !6545

unreachable:                                      ; preds = %cleanup73, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lpi_device_get_constraints() #0 align 16 !dbg !6546 {
entry:
  %out_obj = alloca ptr, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %constraint = alloca ptr, align 8
  %status = alloca i32, align 4
  %package = alloca ptr, align 8
  %info = alloca %struct.lpi_device_info, align 8
  %package_count = alloca i32, align 4
  %j = alloca i32, align 4
  %element = alloca ptr, align 8
  %tmp41 = alloca i32, align 4
  %info_obj = alloca ptr, align 8
  %cnstr_pkg = alloca ptr, align 8
  %obj = alloca ptr, align 8
  %dev_info = alloca %struct.lpi_device_constraint, align 4
  %tmp63 = alloca i32, align 4
  %tmp74 = alloca i32, align 4
  %tmp85 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %out_obj) #16, !dbg !6581
  call void @llvm.dbg.declare(metadata ptr %out_obj, metadata !6548, metadata !DIExpression()), !dbg !6582
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !6583
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6549, metadata !DIExpression()), !dbg !6584
  %0 = load ptr, ptr @lps0_device_handle, align 8, !dbg !6585
  %call = call ptr @acpi_evaluate_dsm_typed(ptr noundef %0, ptr noundef @lps0_dsm_guid, i64 noundef 1, i64 noundef 1, ptr noundef null, i32 noundef 4) #17, !dbg !6586
  store ptr %call, ptr %out_obj, align 8, !dbg !6587
  store i32 0, ptr %tmp, align 4, !dbg !6588
  %1 = load i32, ptr %tmp, align 4, !dbg !6591
  %2 = load ptr, ptr %out_obj, align 8, !dbg !6592
  %tobool = icmp ne ptr %2, null, !dbg !6592
  br i1 %tobool, label %if.end, label %if.then, !dbg !6594

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86, !dbg !6595

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %out_obj, align 8, !dbg !6596
  %count = getelementptr inbounds %struct.anon.22, ptr %3, i32 0, i32 1, !dbg !6597
  %4 = load i32, ptr %count, align 4, !dbg !6597
  %conv = zext i32 %4 to i64, !dbg !6596
  %call1 = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 16, i32 noundef 3264) #19, !dbg !6598
  store ptr %call1, ptr @lpi_constraints_table, align 8, !dbg !6599
  %5 = load ptr, ptr @lpi_constraints_table, align 8, !dbg !6600
  %tobool2 = icmp ne ptr %5, null, !dbg !6600
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6602

if.then3:                                         ; preds = %if.end
  br label %free_acpi_buffer, !dbg !6603

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %tmp5, align 4, !dbg !6604
  %6 = load i32, ptr %tmp5, align 4, !dbg !6607
  store i32 0, ptr %i, align 4, !dbg !6608
  br label %for.cond, !dbg !6609

for.cond:                                         ; preds = %for.inc82, %if.end4
  %7 = load i32, ptr %i, align 4, !dbg !6610
  %8 = load ptr, ptr %out_obj, align 8, !dbg !6611
  %count6 = getelementptr inbounds %struct.anon.22, ptr %8, i32 0, i32 1, !dbg !6612
  %9 = load i32, ptr %count6, align 4, !dbg !6612
  %cmp = icmp ult i32 %7, %9, !dbg !6613
  br i1 %cmp, label %for.body, label %for.end84, !dbg !6614

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %constraint) #16, !dbg !6615
  call void @llvm.dbg.declare(metadata ptr %constraint, metadata !6550, metadata !DIExpression()), !dbg !6616
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #16, !dbg !6617
  call void @llvm.dbg.declare(metadata ptr %status, metadata !6554, metadata !DIExpression()), !dbg !6618
  call void @llvm.lifetime.start.p0(i64 8, ptr %package) #16, !dbg !6619
  call void @llvm.dbg.declare(metadata ptr %package, metadata !6555, metadata !DIExpression()), !dbg !6620
  %10 = load ptr, ptr %out_obj, align 8, !dbg !6621
  %elements = getelementptr inbounds %struct.anon.22, ptr %10, i32 0, i32 2, !dbg !6622
  %11 = load ptr, ptr %elements, align 8, !dbg !6622
  %12 = load i32, ptr %i, align 4, !dbg !6623
  %idxprom = sext i32 %12 to i64, !dbg !6621
  %arrayidx = getelementptr %union.acpi_object, ptr %11, i64 %idxprom, !dbg !6621
  store ptr %arrayidx, ptr %package, align 8, !dbg !6620
  call void @llvm.lifetime.start.p0(i64 24, ptr %info) #16, !dbg !6624
  call void @llvm.dbg.declare(metadata ptr %info, metadata !6556, metadata !DIExpression()), !dbg !6625
  call void @llvm.memset.p0.i64(ptr align 8 %info, i8 0, i64 24, i1 false), !dbg !6625
  call void @llvm.lifetime.start.p0(i64 4, ptr %package_count) #16, !dbg !6626
  call void @llvm.dbg.declare(metadata ptr %package_count, metadata !6562, metadata !DIExpression()), !dbg !6627
  store i32 0, ptr %package_count, align 4, !dbg !6627
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #16, !dbg !6626
  call void @llvm.dbg.declare(metadata ptr %j, metadata !6563, metadata !DIExpression()), !dbg !6628
  %13 = load ptr, ptr %package, align 8, !dbg !6629
  %tobool8 = icmp ne ptr %13, null, !dbg !6629
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !6631

if.then9:                                         ; preds = %for.body
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6632

if.end10:                                         ; preds = %for.body
  store i32 0, ptr %j, align 4, !dbg !6633
  br label %for.cond11, !dbg !6634

for.cond11:                                       ; preds = %for.inc, %if.end10
  %14 = load i32, ptr %j, align 4, !dbg !6635
  %15 = load ptr, ptr %package, align 8, !dbg !6636
  %count12 = getelementptr inbounds %struct.anon.22, ptr %15, i32 0, i32 1, !dbg !6637
  %16 = load i32, ptr %count12, align 4, !dbg !6637
  %cmp13 = icmp ult i32 %14, %16, !dbg !6638
  br i1 %cmp13, label %for.body15, label %for.end, !dbg !6639

for.body15:                                       ; preds = %for.cond11
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #16, !dbg !6640
  call void @llvm.dbg.declare(metadata ptr %element, metadata !6564, metadata !DIExpression()), !dbg !6641
  %17 = load ptr, ptr %package, align 8, !dbg !6642
  %elements16 = getelementptr inbounds %struct.anon.22, ptr %17, i32 0, i32 2, !dbg !6643
  %18 = load ptr, ptr %elements16, align 8, !dbg !6643
  %19 = load i32, ptr %j, align 4, !dbg !6644
  %idxprom17 = sext i32 %19 to i64, !dbg !6642
  %arrayidx18 = getelementptr %union.acpi_object, ptr %18, i64 %idxprom17, !dbg !6642
  store ptr %arrayidx18, ptr %element, align 8, !dbg !6641
  %20 = load ptr, ptr %element, align 8, !dbg !6645
  %21 = load i32, ptr %20, align 8, !dbg !6646
  switch i32 %21, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb20
    i32 4, label %sw.bb21
  ], !dbg !6647

sw.bb:                                            ; preds = %for.body15
  %22 = load ptr, ptr %element, align 8, !dbg !6648
  %value = getelementptr inbounds %struct.anon.19, ptr %22, i32 0, i32 1, !dbg !6650
  %23 = load i64, ptr %value, align 8, !dbg !6650
  %conv19 = trunc i64 %23 to i32, !dbg !6648
  %enabled = getelementptr inbounds %struct.lpi_device_info, ptr %info, i32 0, i32 1, !dbg !6651
  store i32 %conv19, ptr %enabled, align 8, !dbg !6652
  br label %sw.epilog, !dbg !6653

sw.bb20:                                          ; preds = %for.body15
  %24 = load ptr, ptr %element, align 8, !dbg !6654
  %pointer = getelementptr inbounds %struct.anon.20, ptr %24, i32 0, i32 2, !dbg !6655
  %25 = load ptr, ptr %pointer, align 8, !dbg !6655
  %name = getelementptr inbounds %struct.lpi_device_info, ptr %info, i32 0, i32 0, !dbg !6656
  store ptr %25, ptr %name, align 8, !dbg !6657
  br label %sw.epilog, !dbg !6658

sw.bb21:                                          ; preds = %for.body15
  %26 = load ptr, ptr %element, align 8, !dbg !6659
  %count22 = getelementptr inbounds %struct.anon.22, ptr %26, i32 0, i32 1, !dbg !6660
  %27 = load i32, ptr %count22, align 4, !dbg !6660
  store i32 %27, ptr %package_count, align 4, !dbg !6661
  %28 = load ptr, ptr %element, align 8, !dbg !6662
  %elements23 = getelementptr inbounds %struct.anon.22, ptr %28, i32 0, i32 2, !dbg !6663
  %29 = load ptr, ptr %elements23, align 8, !dbg !6663
  %package24 = getelementptr inbounds %struct.lpi_device_info, ptr %info, i32 0, i32 2, !dbg !6664
  store ptr %29, ptr %package24, align 8, !dbg !6665
  br label %sw.epilog, !dbg !6666

sw.epilog:                                        ; preds = %for.body15, %sw.bb21, %sw.bb20, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #16, !dbg !6667
  br label %for.inc, !dbg !6668

for.inc:                                          ; preds = %sw.epilog
  %30 = load i32, ptr %j, align 4, !dbg !6669
  %inc = add i32 %30, 1, !dbg !6669
  store i32 %inc, ptr %j, align 4, !dbg !6669
  br label %for.cond11, !dbg !6670, !llvm.loop !6671

for.end:                                          ; preds = %for.cond11
  %enabled25 = getelementptr inbounds %struct.lpi_device_info, ptr %info, i32 0, i32 1, !dbg !6673
  %31 = load i32, ptr %enabled25, align 8, !dbg !6673
  %tobool26 = icmp ne i32 %31, 0, !dbg !6675
  br i1 %tobool26, label %lor.lhs.false, label %if.then32, !dbg !6676

lor.lhs.false:                                    ; preds = %for.end
  %package27 = getelementptr inbounds %struct.lpi_device_info, ptr %info, i32 0, i32 2, !dbg !6677
  %32 = load ptr, ptr %package27, align 8, !dbg !6677
  %tobool28 = icmp ne ptr %32, null, !dbg !6678
  br i1 %tobool28, label %lor.lhs.false29, label %if.then32, !dbg !6679

lor.lhs.false29:                                  ; preds = %lor.lhs.false
  %name30 = getelementptr inbounds %struct.lpi_device_info, ptr %info, i32 0, i32 0, !dbg !6680
  %33 = load ptr, ptr %name30, align 8, !dbg !6680
  %tobool31 = icmp ne ptr %33, null, !dbg !6681
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !6682

if.then32:                                        ; preds = %lor.lhs.false29, %lor.lhs.false, %for.end
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6683

if.end33:                                         ; preds = %lor.lhs.false29
  %34 = load ptr, ptr @lpi_constraints_table, align 8, !dbg !6684
  %35 = load i32, ptr @lpi_constraints_table_size, align 4, !dbg !6685
  %idxprom34 = sext i32 %35 to i64, !dbg !6684
  %arrayidx35 = getelementptr %struct.lpi_constraints, ptr %34, i64 %idxprom34, !dbg !6684
  store ptr %arrayidx35, ptr %constraint, align 8, !dbg !6686
  %name36 = getelementptr inbounds %struct.lpi_device_info, ptr %info, i32 0, i32 0, !dbg !6687
  %36 = load ptr, ptr %name36, align 8, !dbg !6687
  %37 = load ptr, ptr %constraint, align 8, !dbg !6688
  %handle = getelementptr inbounds %struct.lpi_constraints, ptr %37, i32 0, i32 0, !dbg !6689
  %call37 = call i32 @acpi_get_handle(ptr noundef null, ptr noundef %36, ptr noundef %handle) #17, !dbg !6690
  store i32 %call37, ptr %status, align 4, !dbg !6691
  %38 = load i32, ptr %status, align 4, !dbg !6692
  %tobool38 = icmp ne i32 %38, 0, !dbg !6692
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !6694

if.then39:                                        ; preds = %if.end33
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6695

if.end40:                                         ; preds = %if.end33
  store i32 0, ptr %tmp41, align 4, !dbg !6696
  %39 = load i32, ptr %tmp41, align 4, !dbg !6699
  %40 = load ptr, ptr %constraint, align 8, !dbg !6700
  %min_dstate = getelementptr inbounds %struct.lpi_constraints, ptr %40, i32 0, i32 1, !dbg !6701
  store i32 -1, ptr %min_dstate, align 8, !dbg !6702
  store i32 0, ptr %j, align 4, !dbg !6703
  br label %for.cond42, !dbg !6704

for.cond42:                                       ; preds = %for.inc67, %if.end40
  %41 = load i32, ptr %j, align 4, !dbg !6705
  %42 = load i32, ptr %package_count, align 4, !dbg !6706
  %cmp43 = icmp slt i32 %41, %42, !dbg !6707
  br i1 %cmp43, label %for.body45, label %for.end69, !dbg !6708

for.body45:                                       ; preds = %for.cond42
  call void @llvm.lifetime.start.p0(i64 8, ptr %info_obj) #16, !dbg !6709
  call void @llvm.dbg.declare(metadata ptr %info_obj, metadata !6568, metadata !DIExpression()), !dbg !6710
  %package46 = getelementptr inbounds %struct.lpi_device_info, ptr %info, i32 0, i32 2, !dbg !6711
  %43 = load ptr, ptr %package46, align 8, !dbg !6711
  %44 = load i32, ptr %j, align 4, !dbg !6712
  %idxprom47 = sext i32 %44 to i64, !dbg !6713
  %arrayidx48 = getelementptr %union.acpi_object, ptr %43, i64 %idxprom47, !dbg !6713
  store ptr %arrayidx48, ptr %info_obj, align 8, !dbg !6710
  call void @llvm.lifetime.start.p0(i64 8, ptr %cnstr_pkg) #16, !dbg !6714
  call void @llvm.dbg.declare(metadata ptr %cnstr_pkg, metadata !6572, metadata !DIExpression()), !dbg !6715
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #16, !dbg !6716
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !6573, metadata !DIExpression()), !dbg !6717
  call void @llvm.lifetime.start.p0(i64 12, ptr %dev_info) #16, !dbg !6718
  call void @llvm.dbg.declare(metadata ptr %dev_info, metadata !6574, metadata !DIExpression()), !dbg !6719
  %45 = load ptr, ptr %info_obj, align 8, !dbg !6720
  %46 = load i32, ptr %45, align 8, !dbg !6721
  switch i32 %46, label %sw.epilog66 [
    i32 1, label %sw.epilog66
    i32 4, label %sw.bb49
  ], !dbg !6722

sw.bb49:                                          ; preds = %for.body45
  %47 = load ptr, ptr %info_obj, align 8, !dbg !6723
  %count50 = getelementptr inbounds %struct.anon.22, ptr %47, i32 0, i32 1, !dbg !6726
  %48 = load i32, ptr %count50, align 4, !dbg !6726
  %cmp51 = icmp ult i32 %48, 2, !dbg !6727
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !6728

if.then53:                                        ; preds = %sw.bb49
  br label %sw.epilog66, !dbg !6729

if.end54:                                         ; preds = %sw.bb49
  %49 = load ptr, ptr %info_obj, align 8, !dbg !6730
  %elements55 = getelementptr inbounds %struct.anon.22, ptr %49, i32 0, i32 2, !dbg !6731
  %50 = load ptr, ptr %elements55, align 8, !dbg !6731
  store ptr %50, ptr %cnstr_pkg, align 8, !dbg !6732
  %51 = load ptr, ptr %cnstr_pkg, align 8, !dbg !6733
  %arrayidx56 = getelementptr %union.acpi_object, ptr %51, i64 0, !dbg !6733
  store ptr %arrayidx56, ptr %obj, align 8, !dbg !6734
  %52 = load ptr, ptr %obj, align 8, !dbg !6735
  %value57 = getelementptr inbounds %struct.anon.19, ptr %52, i32 0, i32 1, !dbg !6736
  %53 = load i64, ptr %value57, align 8, !dbg !6736
  %conv58 = trunc i64 %53 to i32, !dbg !6735
  %uid = getelementptr inbounds %struct.lpi_device_constraint, ptr %dev_info, i32 0, i32 0, !dbg !6737
  store i32 %conv58, ptr %uid, align 4, !dbg !6738
  %54 = load ptr, ptr %cnstr_pkg, align 8, !dbg !6739
  %arrayidx59 = getelementptr %union.acpi_object, ptr %54, i64 1, !dbg !6739
  store ptr %arrayidx59, ptr %obj, align 8, !dbg !6740
  %55 = load ptr, ptr %obj, align 8, !dbg !6741
  %value60 = getelementptr inbounds %struct.anon.19, ptr %55, i32 0, i32 1, !dbg !6742
  %56 = load i64, ptr %value60, align 8, !dbg !6742
  %conv61 = trunc i64 %56 to i32, !dbg !6741
  %min_dstate62 = getelementptr inbounds %struct.lpi_device_constraint, ptr %dev_info, i32 0, i32 1, !dbg !6743
  store i32 %conv61, ptr %min_dstate62, align 4, !dbg !6744
  store i32 0, ptr %tmp63, align 4, !dbg !6745
  %57 = load i32, ptr %tmp63, align 4, !dbg !6748
  %min_dstate64 = getelementptr inbounds %struct.lpi_device_constraint, ptr %dev_info, i32 0, i32 1, !dbg !6749
  %58 = load i32, ptr %min_dstate64, align 4, !dbg !6749
  %59 = load ptr, ptr %constraint, align 8, !dbg !6750
  %min_dstate65 = getelementptr inbounds %struct.lpi_constraints, ptr %59, i32 0, i32 1, !dbg !6751
  store i32 %58, ptr %min_dstate65, align 8, !dbg !6752
  br label %sw.epilog66, !dbg !6753

sw.epilog66:                                      ; preds = %for.body45, %if.end54, %if.then53, %for.body45
  call void @llvm.lifetime.end.p0(i64 12, ptr %dev_info) #16, !dbg !6754
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #16, !dbg !6754
  call void @llvm.lifetime.end.p0(i64 8, ptr %cnstr_pkg) #16, !dbg !6754
  call void @llvm.lifetime.end.p0(i64 8, ptr %info_obj) #16, !dbg !6754
  br label %for.inc67, !dbg !6755

for.inc67:                                        ; preds = %sw.epilog66
  %60 = load i32, ptr %j, align 4, !dbg !6756
  %inc68 = add i32 %60, 1, !dbg !6756
  store i32 %inc68, ptr %j, align 4, !dbg !6756
  br label %for.cond42, !dbg !6757, !llvm.loop !6758

for.end69:                                        ; preds = %for.cond42
  %61 = load ptr, ptr %constraint, align 8, !dbg !6760
  %min_dstate70 = getelementptr inbounds %struct.lpi_constraints, ptr %61, i32 0, i32 1, !dbg !6762
  %62 = load i32, ptr %min_dstate70, align 8, !dbg !6762
  %cmp71 = icmp slt i32 %62, 0, !dbg !6763
  br i1 %cmp71, label %if.then73, label %if.end75, !dbg !6764

if.then73:                                        ; preds = %for.end69
  store i32 0, ptr %tmp74, align 4, !dbg !6765
  %63 = load i32, ptr %tmp74, align 4, !dbg !6769
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6770

if.end75:                                         ; preds = %for.end69
  %64 = load i32, ptr @lpi_constraints_table_size, align 4, !dbg !6771
  %inc76 = add i32 %64, 1, !dbg !6771
  store i32 %inc76, ptr @lpi_constraints_table_size, align 4, !dbg !6771
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6772
  br label %cleanup, !dbg !6772

cleanup:                                          ; preds = %if.end75, %if.then73, %if.then39, %if.then32, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #16, !dbg !6772
  call void @llvm.lifetime.end.p0(i64 4, ptr %package_count) #16, !dbg !6772
  call void @llvm.lifetime.end.p0(i64 24, ptr %info) #16, !dbg !6772
  call void @llvm.lifetime.end.p0(i64 8, ptr %package) #16, !dbg !6772
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #16, !dbg !6772
  call void @llvm.lifetime.end.p0(i64 8, ptr %constraint) #16, !dbg !6772
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %for.inc82
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc82, !dbg !6773

for.inc82:                                        ; preds = %cleanup.cont, %cleanup
  %65 = load i32, ptr %i, align 4, !dbg !6774
  %inc83 = add i32 %65, 1, !dbg !6774
  store i32 %inc83, ptr %i, align 4, !dbg !6774
  br label %for.cond, !dbg !6775, !llvm.loop !6776

for.end84:                                        ; preds = %for.cond
  store i32 0, ptr %tmp85, align 4, !dbg !6778
  %66 = load i32, ptr %tmp85, align 4, !dbg !6781
  br label %free_acpi_buffer, !dbg !6782

free_acpi_buffer:                                 ; preds = %for.end84, %if.then3
  call void @llvm.dbg.label(metadata !6580), !dbg !6783
  %67 = load ptr, ptr %out_obj, align 8, !dbg !6784
  call void @acpi_os_free(ptr noundef %67) #17, !dbg !6784
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6785
  br label %cleanup86, !dbg !6785

cleanup86:                                        ; preds = %free_acpi_buffer, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6785
  call void @llvm.lifetime.end.p0(i64 8, ptr %out_obj) #16, !dbg !6785
  %cleanup.dest88 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest88, label %unreachable [
    i32 0, label %cleanup.cont89
    i32 1, label %cleanup.cont89
  ]

cleanup.cont89:                                   ; preds = %cleanup86, %cleanup86
  ret void, !dbg !6785

unreachable:                                      ; preds = %cleanup86, %cleanup
  unreachable
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6786 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6790 dso_local void @acpi_ec_mark_gpe_for_wake() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6791 dso_local i32 @guid_parse(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_evaluate_dsm_typed(ptr noundef %handle, ptr noundef %guid, i64 noundef %rev, i64 noundef %func, ptr noundef %argv4, i32 noundef %type) #5 align 16 !dbg !6794 {
entry:
  %handle.addr = alloca ptr, align 8
  %guid.addr = alloca ptr, align 8
  %rev.addr = alloca i64, align 8
  %func.addr = alloca i64, align 8
  %argv4.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %obj = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !6798, metadata !DIExpression()), !dbg !6805
  store ptr %guid, ptr %guid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %guid.addr, metadata !6799, metadata !DIExpression()), !dbg !6806
  store i64 %rev, ptr %rev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rev.addr, metadata !6800, metadata !DIExpression()), !dbg !6807
  store i64 %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !6801, metadata !DIExpression()), !dbg !6808
  store ptr %argv4, ptr %argv4.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %argv4.addr, metadata !6802, metadata !DIExpression()), !dbg !6809
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6803, metadata !DIExpression()), !dbg !6810
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #16, !dbg !6811
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !6804, metadata !DIExpression()), !dbg !6812
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !6813
  %1 = load ptr, ptr %guid.addr, align 8, !dbg !6814
  %2 = load i64, ptr %rev.addr, align 8, !dbg !6815
  %3 = load i64, ptr %func.addr, align 8, !dbg !6816
  %4 = load ptr, ptr %argv4.addr, align 8, !dbg !6817
  %call = call ptr @acpi_evaluate_dsm(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) #17, !dbg !6818
  store ptr %call, ptr %obj, align 8, !dbg !6819
  %5 = load ptr, ptr %obj, align 8, !dbg !6820
  %tobool = icmp ne ptr %5, null, !dbg !6820
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6822

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %obj, align 8, !dbg !6823
  %7 = load i32, ptr %6, align 8, !dbg !6824
  %8 = load i32, ptr %type.addr, align 4, !dbg !6825
  %cmp = icmp ne i32 %7, %8, !dbg !6826
  br i1 %cmp, label %if.then, label %if.end, !dbg !6827

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %obj, align 8, !dbg !6828
  call void @acpi_os_free(ptr noundef %9) #17, !dbg !6828
  store ptr null, ptr %obj, align 8, !dbg !6830
  br label %if.end, !dbg !6831

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load ptr, ptr %obj, align 8, !dbg !6832
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #16, !dbg !6833
  ret ptr %10, !dbg !6834
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6835 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6839, metadata !DIExpression()), !dbg !6842
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6840, metadata !DIExpression()), !dbg !6843
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6841, metadata !DIExpression()), !dbg !6844
  %0 = load i64, ptr %n.addr, align 8, !dbg !6845
  %1 = load i64, ptr %size.addr, align 8, !dbg !6846
  %2 = load i32, ptr %flags.addr, align 4, !dbg !6847
  %or = or i32 %2, 256, !dbg !6848
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #19, !dbg !6849
  ret ptr %call, !dbg !6850
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6851 dso_local i32 @acpi_get_handle(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6856 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6858, metadata !DIExpression()), !dbg !6862
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6859, metadata !DIExpression()), !dbg !6863
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6860, metadata !DIExpression()), !dbg !6864
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !6865
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6861, metadata !DIExpression()), !dbg !6866
  %0 = load i64, ptr %n.addr, align 8, !dbg !6867
  %1 = load i64, ptr %size.addr, align 8, !dbg !6867
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6867
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6867
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6867
  store i64 %4, ptr %bytes, align 8, !dbg !6867
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !6867
  %lnot = xor i1 %call, true, !dbg !6867
  %lnot1 = xor i1 %lnot, true, !dbg !6867
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6867
  %conv = sext i32 %lnot.ext to i64, !dbg !6867
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6867
  %tobool = icmp ne i64 %expval, 0, !dbg !6867
  br i1 %tobool, label %if.then, label %if.end, !dbg !6869

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6870
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6870

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6871
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !6873
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !6874

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !6875
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6876
  br i1 %8, label %if.then2, label %if.end4, !dbg !6877

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !6878
  %10 = load i32, ptr %flags.addr, align 4, !dbg !6879
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #20, !dbg !6880
  store ptr %call3, ptr %retval, align 8, !dbg !6881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6881

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !6882
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6883
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #20, !dbg !6884
  store ptr %call5, ptr %retval, align 8, !dbg !6885
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6885

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !6886
  %13 = load ptr, ptr %retval, align 8, !dbg !6886
  ret ptr %13, !dbg !6886
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #5 align 16 !dbg !6887 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6892, metadata !DIExpression()), !dbg !6893
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6894, !range !5774, !noundef !604
  %tobool = trunc i8 %0 to i1, !dbg !6894
  %lnot = xor i1 %tobool, true, !dbg !6894
  %lnot1 = xor i1 %lnot, true, !dbg !6894
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6894
  %conv = sext i32 %lnot.ext to i64, !dbg !6894
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6894
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6894
  ret i1 %tobool2, !dbg !6895
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !6896 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6900, metadata !DIExpression()), !dbg !6905
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6901, metadata !DIExpression()), !dbg !6906
  %0 = load i64, ptr %size.addr, align 8, !dbg !6907
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6908
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6909

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6910
  %tobool = icmp ne i64 %2, 0, !dbg !6910
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6911

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6912
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6902, metadata !DIExpression()), !dbg !6913
  %3 = load i64, ptr %size.addr, align 8, !dbg !6914
  %cmp = icmp ugt i64 %3, 8192, !dbg !6916
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6917

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6918
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6919
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !6920
  store ptr %call, ptr %retval, align 8, !dbg !6921
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6921

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6922
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6922
  store i32 %call2, ptr %index, align 4, !dbg !6923
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6924
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6925
  %9 = ptrtoint ptr %8 to i64, !dbg !6925
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6926
  %idxprom = zext i32 %call3 to i64, !dbg !6927
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6927
  %10 = load i32, ptr %index, align 4, !dbg !6928
  %idxprom4 = zext i32 %10 to i64, !dbg !6927
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6927
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6927
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6929
  %13 = load i64, ptr %size.addr, align 8, !dbg !6930
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !6931
  store ptr %call6, ptr %retval, align 8, !dbg !6932
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6932

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6933
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6934
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6935
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !6936
  store ptr %call8, ptr %retval, align 8, !dbg !6937
  br label %return, !dbg !6937

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6938
  ret ptr %16, !dbg !6938
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6939 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6940 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #13 align 16 !dbg !6941 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6945, metadata !DIExpression()), !dbg !6947
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6946, metadata !DIExpression()), !dbg !6948
  %0 = load i64, ptr %size.addr, align 8, !dbg !6949
  %tobool = icmp ne i64 %0, 0, !dbg !6949
  br i1 %tobool, label %if.end, label %if.then, !dbg !6951

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6952
  br label %return, !dbg !6952

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6953
  %cmp = icmp ule i64 %1, 8, !dbg !6955
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6956

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6957
  br label %return, !dbg !6957

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6958
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6960
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6961

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6962
  %cmp4 = icmp ule i64 %3, 96, !dbg !6963
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6964

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6965
  br label %return, !dbg !6965

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6966
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6968
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6969

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6970
  %cmp9 = icmp ule i64 %5, 192, !dbg !6971
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6972

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6973
  br label %return, !dbg !6973

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6974
  %cmp12 = icmp ule i64 %6, 8, !dbg !6976
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6977

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6978
  br label %return, !dbg !6978

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6979
  %cmp15 = icmp ule i64 %7, 16, !dbg !6981
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6982

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6983
  br label %return, !dbg !6983

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6984
  %cmp18 = icmp ule i64 %8, 32, !dbg !6986
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6987

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6988
  br label %return, !dbg !6988

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6989
  %cmp21 = icmp ule i64 %9, 64, !dbg !6991
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6992

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6993
  br label %return, !dbg !6993

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6994
  %cmp24 = icmp ule i64 %10, 128, !dbg !6996
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6997

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6998
  br label %return, !dbg !6998

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6999
  %cmp27 = icmp ule i64 %11, 256, !dbg !7001
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7002

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7003
  br label %return, !dbg !7003

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7004
  %cmp30 = icmp ule i64 %12, 512, !dbg !7006
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7007

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7008
  br label %return, !dbg !7008

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7009
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7011
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7012

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7013
  br label %return, !dbg !7013

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7014
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7016
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7017

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7018
  br label %return, !dbg !7018

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7019
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7021
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7022

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7023
  br label %return, !dbg !7023

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7024
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7026
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7027

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7028
  br label %return, !dbg !7028

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7029
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7031
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7032

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7033
  br label %return, !dbg !7033

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7034
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7036
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7037

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7038
  br label %return, !dbg !7038

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7039
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7041
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7042

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7043
  br label %return, !dbg !7043

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7044
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7046
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7047

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7048
  br label %return, !dbg !7048

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7049
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7051
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7052

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7053
  br label %return, !dbg !7053

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7054
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7056
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7057

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7058
  br label %return, !dbg !7058

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7059
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7061
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7062

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7063
  br label %return, !dbg !7063

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7064
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7066
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7067

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7068
  br label %return, !dbg !7068

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7069, !range !5774, !noundef !604
  %tobool69 = trunc i8 %25 to i1, !dbg !7069
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7071

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7072

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_125() #22, !dbg !7073, !srcloc !7076
  unreachable, !dbg !7073

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7077

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7078

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7079

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7081

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7079

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.19, i32 480, i32 0, i64 12) #16, !dbg !7083, !srcloc !7085
  br label %do.end75, !dbg !7083

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7079

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7086
  br label %return, !dbg !7086

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7087
  ret i32 %26, !dbg !7087
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7088 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #13 align 16 !dbg !7094 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7098, metadata !DIExpression()), !dbg !7100
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7099, metadata !DIExpression()), !dbg !7101
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7102
  %and = and i32 %0, 17, !dbg !7102
  %cmp = icmp eq i32 %and, 0, !dbg !7102
  %lnot = xor i1 %cmp, true, !dbg !7102
  %lnot1 = xor i1 %lnot, true, !dbg !7102
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7102
  %conv = sext i32 %lnot.ext to i64, !dbg !7102
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7102
  %tobool = icmp ne i64 %expval, 0, !dbg !7102
  br i1 %tobool, label %if.then, label %if.end, !dbg !7104

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7105
  br label %return, !dbg !7105

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7106
  %and2 = and i32 %1, 1, !dbg !7108
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7108
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7109

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7110
  br label %return, !dbg !7110

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7111
  br label %return, !dbg !7111

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7113
  ret i32 %2, !dbg !7113
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7114 dso_local void @__compiletime_assert_125() #15

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_s2idle_begin() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_s2idle_prepare() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @acpi_s2idle_wake() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_s2idle_restore() #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_s2idle_end() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !7115 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7119, metadata !DIExpression()), !dbg !7122
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7120, metadata !DIExpression()), !dbg !7123
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7121, metadata !DIExpression()), !dbg !7124
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7125
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !7127
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7128
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !7129
  br i1 %call, label %if.end, label %if.then, !dbg !7130

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !7131

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !7132
  %4 = load ptr, ptr %next.addr, align 8, !dbg !7133
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !7134
  store ptr %3, ptr %prev1, align 8, !dbg !7135
  %5 = load ptr, ptr %next.addr, align 8, !dbg !7136
  %6 = load ptr, ptr %new.addr, align 8, !dbg !7137
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !7138
  store ptr %5, ptr %next2, align 8, !dbg !7139
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !7140
  %8 = load ptr, ptr %new.addr, align 8, !dbg !7141
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !7142
  store ptr %7, ptr %prev3, align 8, !dbg !7143
  br label %do.body, !dbg !7144

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !7145

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !7147

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !7145

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !7149
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !7149
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !7149
  store volatile ptr %9, ptr %next6, align 8, !dbg !7149
  br label %do.end7, !dbg !7149

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !7145

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !7151
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !7152 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7156, metadata !DIExpression()), !dbg !7159
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7157, metadata !DIExpression()), !dbg !7160
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7158, metadata !DIExpression()), !dbg !7161
  ret i1 true, !dbg !7162
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !7163 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7165, metadata !DIExpression()), !dbg !7166
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !7167
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !7169
  br i1 %call, label %if.end, label %if.then, !dbg !7170

if.then:                                          ; preds = %entry
  br label %return, !dbg !7171

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !7172
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7173
  %2 = load ptr, ptr %prev, align 8, !dbg !7173
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !7174
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !7175
  %4 = load ptr, ptr %next, align 8, !dbg !7175
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !7176
  br label %return, !dbg !7177

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !7177
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !7178 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7182, metadata !DIExpression()), !dbg !7183
  ret i1 true, !dbg !7184
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !7185 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7187, metadata !DIExpression()), !dbg !7189
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7188, metadata !DIExpression()), !dbg !7190
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !7191
  %1 = load ptr, ptr %next.addr, align 8, !dbg !7192
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7193
  store ptr %0, ptr %prev1, align 8, !dbg !7194
  br label %do.body, !dbg !7195

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !7196

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !7198

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !7196

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7200
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !7200
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !7200
  store volatile ptr %2, ptr %next4, align 8, !dbg !7200
  br label %do.end5, !dbg !7200

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !7196

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !7202
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(0,1) }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5720, !5721, !5722, !5723, !5724, !5725, !5726, !5727}
!llvm.ident = !{!5728}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_sleep_no_lps0", scope: !2, file: !3, line: 28, type: !5717, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/x86/.s2idle.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22s2idle\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/x86/s2idle.ll drivers/acpi/x86/s2idle.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !274, globals: !5308, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/x86/s2idle.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6cbca51aa1cb6c6f137e3c3b687f4e8f")
!4 = !{!5, !13, !18, !23, !31, !127, !135, !151, !157, !163, !170, !175, !183, !190, !196, !202, !211, !216, !221, !227, !239, !245, !252, !259, !264}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !14, line: 32, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!17 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !19, line: 2052, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!22 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !24, line: 9, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!25 = !{!26, !27, !28, !29, !30}
!26 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!27 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!28 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!29 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!30 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !33, file: !32, line: 147, baseType: !7, size: 32, elements: !124)
!32 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !32, line: 135, size: 512, elements: !34)
!34 = !{!35, !39, !41, !43, !47, !48, !64, !122, !123}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !33, file: !32, line: 136, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !32, line: 137, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !33, file: !32, line: 138, baseType: !42, size: 32, offset: 128)
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !33, file: !32, line: 139, baseType: !44, size: 16, offset: 160)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !45, line: 24, baseType: !46)
!45 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !32, line: 150, baseType: !31, size: 32, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !33, file: !32, line: 151, baseType: !49, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !32, line: 64, baseType: !51)
!51 = !DISubroutineType(types: !52)
!52 = !{!42, !53, !42, !40, !54, !60}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 61, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !57, line: 72, baseType: !58)
!57 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !57, line: 16, baseType: !59)
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !45, line: 52, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !57, line: 88, baseType: !63)
!63 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !33, file: !32, line: 152, baseType: !65, size: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !32, line: 117, size: 256, elements: !67)
!67 = !{!68, !73}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !66, file: !32, line: 118, baseType: !69, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !45, line: 174, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 172, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !70, file: !45, line: 173, baseType: !42, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !66, file: !32, line: 119, baseType: !74, size: 192, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !75, line: 41, baseType: !76)
!75 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !75, line: 37, size: 192, elements: !77)
!77 = !{!78, !116}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !76, file: !75, line: 38, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !80, line: 29, baseType: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !80, line: 17, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !80, line: 18, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !80, line: 18, size: 32, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !84, file: !80, line: 19, baseType: !87, size: 32)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !88, line: 14, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !87, file: !88, line: 15, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !92, line: 44, baseType: !93)
!92 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !92, line: 14, size: 32, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !92, line: 15, baseType: !96, size: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !93, file: !92, line: 15, size: 32, elements: !97)
!97 = !{!98, !99, !109}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !96, file: !92, line: 16, baseType: !69, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 24, baseType: !100, size: 16)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 24, size: 16, elements: !101)
!101 = !{!102, !108}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !100, file: !92, line: 25, baseType: !103, size: 8)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !104, line: 17, baseType: !105)
!104 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !106, line: 21, baseType: !107)
!106 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!107 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !100, file: !92, line: 26, baseType: !103, size: 8, offset: 8)
!109 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 28, baseType: !110, size: 32)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 28, size: 32, elements: !111)
!111 = !{!112, !115}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !110, file: !92, line: 29, baseType: !113, size: 16)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !104, line: 19, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !106, line: 24, baseType: !46)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !110, file: !92, line: 30, baseType: !113, size: 16, offset: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !76, file: !75, line: 39, baseType: !117, size: 128, offset: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !45, line: 190, size: 128, elements: !118)
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !45, line: 191, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !117, file: !45, line: 191, baseType: !120, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !33, file: !32, line: 153, baseType: !40, size: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !33, file: !32, line: 154, baseType: !40, size: 64, offset: 448)
!124 = !{!125, !126}
!125 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!126 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !128, line: 68, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!129 = !{!130, !131, !132, !133, !134}
!130 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!131 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!132 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!133 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!134 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !136, line: 1325, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!138 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!139 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!140 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!141 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!142 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!143 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!144 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!145 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!146 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!147 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!148 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!149 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!150 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !152, line: 54, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!153 = !{!154, !155, !156}
!154 = !DIEnumerator(name: "USRQUOTA", value: 0)
!155 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!156 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !158, line: 45, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!159 = !{!160, !161, !162}
!160 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!161 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!162 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !164, line: 487, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!165 = !{!166, !167, !168, !169}
!166 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!167 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!168 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!169 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !171, line: 65, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!172 = !{!173, !174}
!173 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!174 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !176, line: 620, baseType: !7, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!179 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!180 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!181 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!182 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !176, line: 597, baseType: !42, size: 32, elements: !184)
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!186 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!187 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!188 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!189 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !191, line: 30, baseType: !7, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!192 = !{!193, !194, !195}
!193 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!194 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!195 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !197, line: 26, baseType: !7, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!198 = !{!199, !200, !201}
!199 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!200 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!201 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !164, line: 547, baseType: !7, size: 32, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210}
!204 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!205 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!206 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!207 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!208 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!209 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!210 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !164, line: 564, baseType: !7, size: 32, elements: !212)
!212 = !{!213, !214, !215}
!213 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!214 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!215 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !164, line: 577, baseType: !7, size: 32, elements: !217)
!217 = !{!218, !219, !220}
!218 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!219 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!220 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !164, line: 503, baseType: !7, size: 32, elements: !222)
!222 = !{!223, !224, !225, !226}
!223 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!224 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!225 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!226 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !228, line: 44, baseType: !7, size: 32, elements: !229)
!228 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!229 = !{!230, !231, !232, !233, !234, !235, !236, !237, !238}
!230 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!231 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!232 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!233 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!234 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!235 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!236 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!237 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!238 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !240, line: 16, baseType: !7, size: 32, elements: !241)
!240 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!241 = !{!242, !243, !244}
!242 = !DIEnumerator(name: "TT_NONE", value: 0)
!243 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!244 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !246, line: 51, baseType: !7, size: 32, elements: !247)
!246 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!247 = !{!248, !249, !250, !251}
!248 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!249 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!250 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!251 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !253, line: 15, baseType: !7, size: 32, elements: !254)
!253 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!254 = !{!255, !256, !257, !258}
!255 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!256 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!257 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!258 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !260, line: 10, baseType: !7, size: 32, elements: !261)
!260 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!261 = !{!262, !263}
!262 = !DIEnumerator(name: "false", value: 0)
!263 = !DIEnumerator(name: "true", value: 1)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !265, line: 364, baseType: !7, size: 32, elements: !266)
!265 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!266 = !{!267, !268, !269, !270, !271, !272, !273}
!267 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!268 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!269 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!270 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!271 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!272 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!273 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!274 = !{!275, !103, !40, !5290, !5298, !5304, !685, !2284, !1660, !59, !5306}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !277)
!277 = !{!278, !279, !280, !284, !4976, !5002, !5003, !5004, !5005, !5009, !5012, !5013, !5014, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5080, !5084, !5102, !5119, !5120, !5121, !5122, !5131, !5154, !5155, !5158, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5172, !5173, !5252, !5260, !5261, !5262, !5263, !5267, !5268, !5272, !5273, !5274, !5275, !5277, !5278, !5279, !5286, !5287, !5288, !5289}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !276, file: !6, line: 403, baseType: !5, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !276, file: !6, line: 406, baseType: !117, size: 128, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !276, file: !6, line: 409, baseType: !281, size: 448, offset: 192)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 448, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 56)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !276, file: !6, line: 417, baseType: !285, size: 768, offset: 640)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !286)
!286 = !{!287, !4970, !4971, !4972, !4975}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !285, file: !6, line: 46, baseType: !288, size: 512)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !289, line: 64, size: 512, elements: !290)
!289 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!290 = !{!291, !292, !293, !295, !342, !4963, !4964, !4965, !4966, !4967, !4968, !4969}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !288, file: !289, line: 65, baseType: !36, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !288, file: !289, line: 66, baseType: !117, size: 128, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !288, file: !289, line: 67, baseType: !294, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !288, file: !289, line: 68, baseType: !296, size: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !289, line: 168, size: 768, elements: !298)
!298 = !{!299, !300, !301, !302}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !297, file: !289, line: 169, baseType: !117, size: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !297, file: !289, line: 170, baseType: !79, size: 32, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !297, file: !289, line: 171, baseType: !288, size: 512, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !297, file: !289, line: 172, baseType: !303, size: 64, offset: 704)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !289, line: 133, size: 192, elements: !306)
!306 = !{!307, !314, !319}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !305, file: !289, line: 134, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!42, !312}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !289, line: 135, baseType: !315, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!36, !312}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !305, file: !289, line: 136, baseType: !320, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!42, !312, !324}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !289, line: 125, size: 20736, elements: !326)
!326 = !{!327, !332, !336, !337, !341}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !325, file: !289, line: 126, baseType: !328, size: 192)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 192, elements: !330)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!330 = !{!331}
!331 = !DISubrange(count: 3)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !325, file: !289, line: 127, baseType: !333, size: 4096, offset: 192)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 4096, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !325, file: !289, line: 128, baseType: !42, size: 32, offset: 4288)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !325, file: !289, line: 129, baseType: !338, size: 16384, offset: 4320)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 16384, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 2048)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !325, file: !289, line: 130, baseType: !42, size: 32, offset: 20704)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !288, file: !289, line: 69, baseType: !343, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !289, line: 116, size: 384, elements: !346)
!346 = !{!347, !351, !374, !4951, !4955, !4959}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !345, file: !289, line: 117, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !294}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !345, file: !289, line: 118, baseType: !352, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !355, line: 254, size: 128, elements: !356)
!355 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!356 = !{!357, !370}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !354, file: !355, line: 255, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!361, !294, !365, !329}
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !45, line: 66, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !57, line: 73, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !57, line: 15, baseType: !364)
!364 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !355, line: 30, size: 128, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !366, file: !355, line: 31, baseType: !36, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !366, file: !355, line: 32, baseType: !44, size: 16, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !354, file: !355, line: 256, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!361, !294, !365, !36, !55}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !345, file: !289, line: 119, baseType: !375, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !355, line: 84, size: 320, elements: !379)
!379 = !{!380, !381, !385, !4947, !4949}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !378, file: !355, line: 85, baseType: !36, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !378, file: !355, line: 86, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!44, !294, !365, !42}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !378, file: !355, line: 88, baseType: !386, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!44, !294, !389, !42}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !355, line: 175, size: 512, elements: !391)
!391 = !{!392, !393, !394, !395, !4938, !4942, !4943}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !390, file: !355, line: 176, baseType: !366, size: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !390, file: !355, line: 177, baseType: !55, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !390, file: !355, line: 178, baseType: !40, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !390, file: !355, line: 179, baseType: !396, size: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !19, line: 472, size: 1536, align: 64, elements: !401)
!401 = !{!402, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4932, !4933, !4934, !4935, !4936, !4937}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !400, file: !19, line: 473, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !19, line: 641, size: 4800, elements: !405)
!405 = !{!406, !407, !408, !416, !417, !424, !425, !428, !429, !4722, !4723, !4724, !4725, !4726, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4766, !4769, !4770, !4771, !4780, !4781, !4782, !4783}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !404, file: !19, line: 642, baseType: !44, size: 16)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !404, file: !19, line: 643, baseType: !46, size: 16, offset: 16)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !404, file: !19, line: 644, baseType: !409, size: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !410, line: 23, baseType: !411)
!410 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !410, line: 21, size: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !411, file: !410, line: 22, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !45, line: 37, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !57, line: 49, baseType: !7)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !404, file: !19, line: 645, baseType: !117, size: 128, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !404, file: !19, line: 646, baseType: !418, size: 32, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !410, line: 28, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !410, line: 26, size: 32, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !419, file: !410, line: 27, baseType: !422, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !45, line: 38, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !57, line: 50, baseType: !7)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !404, file: !19, line: 647, baseType: !7, size: 32, offset: 224)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !404, file: !19, line: 650, baseType: !426, size: 64, offset: 256)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !19, line: 607, flags: DIFlagFwdDecl)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !404, file: !19, line: 651, baseType: !426, size: 64, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !404, file: !19, line: 654, baseType: !430, size: 64, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !19, line: 1966, size: 2048, align: 512, elements: !433)
!433 = !{!434, !4556, !4566, !4570, !4574, !4578, !4582, !4586, !4590, !4594, !4598, !4599, !4603, !4607, !4644, !4673, !4677, !4683, !4687, !4691, !4695, !4699, !4703, !4709, !4713}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !432, file: !19, line: 1967, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!438, !403, !438, !7}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !440, line: 82, size: 1536, elements: !441)
!440 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!441 = !{!442, !443, !453, !461, !462, !482, !483, !487, !500, !4539, !4540, !4541, !4542, !4548, !4549, !4550}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !439, file: !440, line: 84, baseType: !7, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !439, file: !440, line: 85, baseType: !444, size: 32, offset: 32)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !445, line: 275, baseType: !446)
!445 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !445, line: 275, size: 32, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !446, file: !445, line: 275, baseType: !449, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !445, line: 69, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !445, line: 64, size: 32, elements: !451)
!451 = !{!452}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !450, file: !445, line: 65, baseType: !7, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !439, file: !440, line: 86, baseType: !454, size: 128, offset: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !455, line: 38, size: 128, elements: !456)
!455 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!456 = !{!457, !459}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !454, file: !455, line: 39, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !454, file: !455, line: 39, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !439, file: !440, line: 87, baseType: !438, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !439, file: !440, line: 88, baseType: !463, size: 128, offset: 256)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !440, line: 49, size: 128, elements: !464)
!464 = !{!465, !479}
!465 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !440, line: 50, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !463, file: !440, line: 50, size: 64, elements: !467)
!467 = !{!468, !475}
!468 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !440, line: 51, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !466, file: !440, line: 51, size: 64, elements: !470)
!470 = !{!471, !474}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !469, file: !440, line: 52, baseType: !472, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !104, line: 21, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !106, line: 27, baseType: !7)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !469, file: !440, line: 52, baseType: !472, size: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !466, file: !440, line: 54, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !104, line: 23, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !106, line: 31, baseType: !478)
!478 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !463, file: !440, line: 56, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !439, file: !440, line: 89, baseType: !403, size: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !439, file: !440, line: 91, baseType: !484, size: 256, offset: 448)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !439, file: !440, line: 94, baseType: !488, size: 64, offset: 704)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !489, line: 25, size: 64, elements: !490)
!489 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_member, scope: !488, file: !489, line: 26, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !488, file: !489, line: 26, size: 64, elements: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !492, file: !489, line: 28, baseType: !477, size: 64, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, scope: !492, file: !489, line: 30, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !492, file: !489, line: 30, size: 64, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !496, file: !489, line: 31, baseType: !79, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !496, file: !489, line: 32, baseType: !42, size: 32, offset: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !439, file: !440, line: 95, baseType: !501, size: 64, offset: 768)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !440, line: 128, size: 1024, align: 512, elements: !504)
!504 = !{!505, !509, !510, !517, !523, !527, !531, !535, !536, !540, !544, !4529, !4533}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !503, file: !440, line: 129, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!42, !438, !7}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !503, file: !440, line: 130, baseType: !506, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !503, file: !440, line: 131, baseType: !511, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!42, !514, !516}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !503, file: !440, line: 132, baseType: !518, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!42, !514, !7, !36, !521}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !503, file: !440, line: 134, baseType: !524, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!42, !514}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !503, file: !440, line: 135, baseType: !528, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!42, !438}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !503, file: !440, line: 136, baseType: !532, size: 64, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !438}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !503, file: !440, line: 137, baseType: !532, size: 64, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !503, file: !440, line: 138, baseType: !537, size: 64, offset: 512)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !438, !403}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !503, file: !440, line: 139, baseType: !541, size: 64, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!329, !438, !329, !42}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !503, file: !440, line: 140, baseType: !545, size: 64, offset: 640)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!548, !4528}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !550, line: 70, size: 256, elements: !551)
!550 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!551 = !{!552, !553, !4524, !4525}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !549, file: !550, line: 71, baseType: !438, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !549, file: !550, line: 72, baseType: !554, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !19, line: 1190, size: 10752, elements: !556)
!556 = !{!557, !558, !561, !562, !563, !564, !613, !1983, !2023, !2108, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2125, !2129, !2130, !2753, !2756, !2826, !2829, !2830, !2831, !2872, !4459, !4460, !4461, !4462, !4463, !4464, !4467, !4468, !4474, !4475, !4476, !4477, !4478, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !555, file: !19, line: 1191, baseType: !117, size: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !555, file: !19, line: 1192, baseType: !559, size: 32, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !45, line: 21, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !45, line: 18, baseType: !472)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !555, file: !19, line: 1193, baseType: !107, size: 8, offset: 160)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !555, file: !19, line: 1194, baseType: !59, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !555, file: !19, line: 1195, baseType: !61, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !555, file: !19, line: 1196, baseType: !565, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !19, line: 2366, size: 576, elements: !567)
!567 = !{!568, !569, !570, !577, !581, !585, !589, !590, !591, !601, !605, !606, !607, !609, !610, !611, !612}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !566, file: !19, line: 2367, baseType: !36, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !566, file: !19, line: 2368, baseType: !42, size: 32, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !566, file: !19, line: 2376, baseType: !571, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!42, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !576, line: 32, flags: DIFlagFwdDecl)
!576 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!577 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !566, file: !19, line: 2377, baseType: !578, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !19, line: 75, flags: DIFlagFwdDecl)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !566, file: !19, line: 2378, baseType: !582, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!438, !565, !42, !36, !40}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !566, file: !19, line: 2380, baseType: !586, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !554}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !566, file: !19, line: 2381, baseType: !275, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !566, file: !19, line: 2382, baseType: !565, size: 64, offset: 448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !566, file: !19, line: 2383, baseType: !592, size: 64, offset: 512)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !45, line: 194, size: 64, elements: !593)
!593 = !{!594}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !592, file: !45, line: 195, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !45, line: 198, size: 128, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !596, file: !45, line: 199, baseType: !595, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !596, file: !45, line: 199, baseType: !600, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !566, file: !19, line: 2385, baseType: !602, offset: 576)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !603, line: 206, elements: !604)
!603 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!604 = !{}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !566, file: !19, line: 2386, baseType: !602, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !566, file: !19, line: 2387, baseType: !602, offset: 576)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !566, file: !19, line: 2388, baseType: !608, offset: 576)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, elements: !330)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !566, file: !19, line: 2390, baseType: !602, offset: 576)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !566, file: !19, line: 2391, baseType: !602, offset: 576)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !566, file: !19, line: 2392, baseType: !602, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !566, file: !19, line: 2393, baseType: !602, offset: 576)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !555, file: !19, line: 1197, baseType: !614, size: 64, offset: 384)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !19, line: 2057, size: 1664, elements: !617)
!617 = !{!618, !622, !626, !627, !631, !655, !659, !660, !661, !665, !669, !673, !674, !675, !681, !686, !687, !1908, !1909, !1910, !1911, !1915, !1919, !1966, !1981, !1982}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !616, file: !19, line: 2058, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!403, !554}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !616, file: !19, line: 2059, baseType: !623, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !403}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !616, file: !19, line: 2060, baseType: !623, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !616, file: !19, line: 2062, baseType: !628, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !403, !42}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !616, file: !19, line: 2063, baseType: !632, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!42, !403, !635}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 42, size: 384, elements: !637)
!637 = !{!638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !636, file: !14, line: 43, baseType: !364, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !636, file: !14, line: 45, baseType: !364, size: 64, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !636, file: !14, line: 52, baseType: !61, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !636, file: !14, line: 53, baseType: !61, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !636, file: !14, line: 55, baseType: !13, size: 32, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !636, file: !14, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !636, file: !14, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !636, file: !14, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !636, file: !14, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !636, file: !14, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !636, file: !14, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !636, file: !14, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !636, file: !14, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !636, file: !14, line: 78, baseType: !652, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !14, line: 78, flags: DIFlagFwdDecl)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !616, file: !19, line: 2064, baseType: !656, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!42, !403}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !616, file: !19, line: 2065, baseType: !623, size: 64, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !616, file: !19, line: 2066, baseType: !586, size: 64, offset: 448)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !616, file: !19, line: 2067, baseType: !662, size: 64, offset: 512)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!42, !554, !42}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !616, file: !19, line: 2068, baseType: !666, size: 64, offset: 576)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!42, !554, !18}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !616, file: !19, line: 2069, baseType: !670, size: 64, offset: 640)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!42, !554}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !616, file: !19, line: 2070, baseType: !666, size: 64, offset: 704)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !616, file: !19, line: 2071, baseType: !670, size: 64, offset: 768)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !616, file: !19, line: 2072, baseType: !676, size: 64, offset: 832)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!42, !438, !679}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !19, line: 62, flags: DIFlagFwdDecl)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !616, file: !19, line: 2073, baseType: !682, size: 64, offset: 896)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!42, !554, !685, !329}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !616, file: !19, line: 2074, baseType: !586, size: 64, offset: 960)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !616, file: !19, line: 2076, baseType: !688, size: 64, offset: 1024)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!42, !691, !438}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !693, line: 17, size: 960, elements: !694)
!693 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!694 = !{!695, !696, !697, !698, !699, !700, !701, !702, !723, !744, !745, !1907}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !692, file: !693, line: 18, baseType: !329, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !692, file: !693, line: 19, baseType: !55, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !692, file: !693, line: 20, baseType: !55, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !692, file: !693, line: 21, baseType: !55, size: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !692, file: !693, line: 22, baseType: !55, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !692, file: !693, line: 23, baseType: !61, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !692, file: !693, line: 24, baseType: !61, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !692, file: !693, line: 25, baseType: !703, size: 256, offset: 448)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !704, line: 66, size: 256, elements: !705)
!704 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!705 = !{!706, !715, !717, !722}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !703, file: !704, line: 67, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !708, line: 13, baseType: !709)
!708 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !45, line: 181, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 179, size: 64, elements: !711)
!711 = !{!712}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !710, file: !45, line: 180, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !104, line: 22, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !106, line: 30, baseType: !63)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !703, file: !704, line: 68, baseType: !716, size: 32, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !88, line: 23, baseType: !87)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !703, file: !704, line: 70, baseType: !718, size: 32, offset: 96)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !719, line: 15, size: 32, elements: !720)
!719 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!720 = !{!721}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !718, file: !719, line: 20, baseType: !69, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !703, file: !704, line: 72, baseType: !117, size: 128, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !692, file: !693, line: 26, baseType: !724, size: 64, offset: 704)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !693, line: 32, size: 256, elements: !727)
!727 = !{!728, !732, !736, !740}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !726, file: !693, line: 33, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!40, !691, !60}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !726, file: !693, line: 34, baseType: !733, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !691, !40}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !726, file: !693, line: 35, baseType: !737, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!40, !691, !40, !60}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !726, file: !693, line: 36, baseType: !741, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!42, !691, !40}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !692, file: !693, line: 27, baseType: !42, size: 32, offset: 768)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !692, file: !693, line: 28, baseType: !746, size: 64, offset: 832)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !19, line: 994, size: 1856, align: 64, elements: !749)
!749 = !{!750, !769, !770, !772, !773, !774, !775, !776, !833, !1192, !1201, !1207, !1208, !1897, !1898, !1899, !1900, !1902, !1903, !1906}
!750 = !DIDerivedType(tag: DW_TAG_member, scope: !748, file: !19, line: 995, baseType: !751, size: 128)
!751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !748, file: !19, line: 995, size: 128, elements: !752)
!752 = !{!753, !759, !768}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !751, file: !19, line: 996, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !755, line: 60, size: 64, elements: !756)
!755 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!756 = !{!757}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !754, file: !755, line: 61, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !751, file: !19, line: 997, baseType: !760, size: 128, align: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !45, line: 232, size: 128, align: 64, elements: !761)
!761 = !{!762, !764}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !760, file: !45, line: 233, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !760, file: !45, line: 234, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !763}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !751, file: !19, line: 998, baseType: !7, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !748, file: !19, line: 1005, baseType: !79, size: 32, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !748, file: !19, line: 1006, baseType: !771, size: 32, offset: 160)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !45, line: 156, baseType: !7)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !748, file: !19, line: 1007, baseType: !707, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !748, file: !19, line: 1008, baseType: !703, size: 256, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !748, file: !19, line: 1009, baseType: !61, size: 64, offset: 512)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !748, file: !19, line: 1010, baseType: !7, size: 32, offset: 576)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !748, file: !19, line: 1011, baseType: !777, size: 256, offset: 640)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !19, line: 948, size: 256, elements: !778)
!778 = !{!779, !800, !829, !830, !831, !832}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !777, file: !19, line: 949, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !781, line: 34, baseType: !782)
!781 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !781, line: 25, size: 64, elements: !783)
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !782, file: !781, line: 26, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !786, line: 27, baseType: !787)
!786 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !786, line: 13, size: 64, elements: !788)
!788 = !{!789, !799}
!789 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !786, line: 14, baseType: !790, size: 32)
!790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !787, file: !786, line: 14, size: 32, elements: !791)
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !790, file: !786, line: 15, baseType: !69, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !786, line: 16, baseType: !794, size: 32)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !790, file: !786, line: 16, size: 32, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !794, file: !786, line: 18, baseType: !103, size: 8)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !794, file: !786, line: 19, baseType: !798, size: 24, offset: 8)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 24, elements: !330)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !787, file: !786, line: 26, baseType: !91, size: 32, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !777, file: !19, line: 950, baseType: !801, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !24, line: 59, size: 768, elements: !803)
!803 = !{!804, !810, !811, !812, !816, !817, !818, !819}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !802, file: !24, line: 61, baseType: !805, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !806, line: 113, baseType: !807)
!806 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !806, line: 111, size: 32, elements: !808)
!808 = !{!809}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !807, file: !806, line: 112, baseType: !69, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !802, file: !24, line: 62, baseType: !7, size: 32, offset: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !802, file: !24, line: 63, baseType: !79, size: 32, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !802, file: !24, line: 65, baseType: !813, size: 256, offset: 128)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 256, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 4)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !802, file: !24, line: 66, baseType: !592, size: 64, offset: 384)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !802, file: !24, line: 68, baseType: !74, size: 192, offset: 448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !802, file: !24, line: 69, baseType: !760, size: 128, align: 64, offset: 640)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !802, file: !24, line: 70, baseType: !820, offset: 768)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !821, elements: !827)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !24, line: 54, size: 128, elements: !822)
!822 = !{!823, !824}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !821, file: !24, line: 55, baseType: !42, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !821, file: !24, line: 56, baseType: !825, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !24, line: 56, flags: DIFlagFwdDecl)
!827 = !{!828}
!828 = !DISubrange(count: -1)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !777, file: !19, line: 951, baseType: !23, size: 32, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !777, file: !19, line: 952, baseType: !409, size: 32, offset: 160)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !777, file: !19, line: 952, baseType: !409, size: 32, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !777, file: !19, line: 953, baseType: !42, size: 32, offset: 224)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !748, file: !19, line: 1012, baseType: !834, size: 64, offset: 896)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !837, line: 110, size: 1472, elements: !838)
!837 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!838 = !{!839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !855, !856, !857, !858, !859, !860, !990, !991, !992, !993, !994, !1025, !1178, !1179, !1187}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !836, file: !837, line: 111, baseType: !707, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !836, file: !837, line: 112, baseType: !409, size: 32, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !836, file: !837, line: 113, baseType: !418, size: 32, offset: 96)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !836, file: !837, line: 114, baseType: !409, size: 32, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !836, file: !837, line: 115, baseType: !418, size: 32, offset: 160)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !836, file: !837, line: 116, baseType: !409, size: 32, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !836, file: !837, line: 117, baseType: !418, size: 32, offset: 224)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !836, file: !837, line: 118, baseType: !409, size: 32, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !836, file: !837, line: 119, baseType: !418, size: 32, offset: 288)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !836, file: !837, line: 120, baseType: !7, size: 32, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !836, file: !837, line: 121, baseType: !850, size: 64, offset: 384)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !851, line: 24, baseType: !852)
!851 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !851, line: 24, size: 64, elements: !853)
!853 = !{!854}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !852, file: !851, line: 24, baseType: !476, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !836, file: !837, line: 122, baseType: !850, size: 64, offset: 448)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !836, file: !837, line: 123, baseType: !850, size: 64, offset: 512)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !836, file: !837, line: 124, baseType: !850, size: 64, offset: 576)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !836, file: !837, line: 125, baseType: !850, size: 64, offset: 640)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !836, file: !837, line: 127, baseType: !107, size: 8, offset: 704)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !836, file: !837, line: 129, baseType: !861, size: 64, offset: 768)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !863, line: 195, size: 1728, elements: !864)
!863 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!864 = !{!865, !866, !871, !883, !892, !895, !896, !903, !904, !905, !906, !909, !910, !911, !913, !914, !954, !975}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !862, file: !863, line: 196, baseType: !805, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !862, file: !863, line: 197, baseType: !867, size: 32, offset: 32)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !863, line: 28, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !45, line: 104, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !104, line: 20, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !106, line: 26, baseType: !42)
!871 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !863, line: 198, baseType: !872, size: 192, offset: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !862, file: !863, line: 198, size: 192, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !872, file: !863, line: 199, baseType: !117, size: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !872, file: !863, line: 200, baseType: !876, size: 192, align: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !877, line: 5, size: 192, align: 64, elements: !878)
!877 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!878 = !{!879, !880, !882}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !876, file: !877, line: 6, baseType: !59, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !876, file: !877, line: 7, baseType: !881, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !876, file: !877, line: 8, baseType: !881, size: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !862, file: !863, line: 205, baseType: !884, size: 320, offset: 256)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !885, line: 48, size: 320, elements: !886)
!885 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!886 = !{!887, !888, !889, !890, !891}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !884, file: !885, line: 49, baseType: !707, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !884, file: !885, line: 55, baseType: !707, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !884, file: !885, line: 57, baseType: !718, size: 32, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !884, file: !885, line: 59, baseType: !716, size: 32, offset: 160)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !884, file: !885, line: 60, baseType: !117, size: 128, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !862, file: !863, line: 206, baseType: !893, size: 64, offset: 576)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !863, line: 206, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !862, file: !863, line: 207, baseType: !40, size: 64, offset: 640)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !863, line: 208, baseType: !897, size: 64, offset: 704)
!897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !862, file: !863, line: 208, size: 64, elements: !898)
!898 = !{!899, !902}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !897, file: !863, line: 209, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !901, line: 8, baseType: !714)
!901 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!902 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !897, file: !863, line: 210, baseType: !900, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !862, file: !863, line: 212, baseType: !900, size: 64, offset: 768)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !862, file: !863, line: 213, baseType: !409, size: 32, offset: 832)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !862, file: !863, line: 214, baseType: !418, size: 32, offset: 864)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !862, file: !863, line: 215, baseType: !907, size: 32, offset: 896)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !863, line: 31, baseType: !908)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !45, line: 110, baseType: !472)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !862, file: !863, line: 216, baseType: !46, size: 16, offset: 928)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !862, file: !863, line: 217, baseType: !46, size: 16, offset: 944)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !862, file: !863, line: 221, baseType: !912, size: 16, offset: 960)
!912 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !862, file: !863, line: 228, baseType: !59, size: 64, offset: 1024)
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !863, line: 245, baseType: !915, size: 320, offset: 1088)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !862, file: !863, line: 245, size: 320, elements: !916)
!916 = !{!917, !946}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !915, file: !863, line: 246, baseType: !918, size: 320)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !863, line: 114, size: 320, elements: !919)
!919 = !{!920, !921, !933, !936, !945}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !918, file: !863, line: 116, baseType: !59, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !918, file: !863, line: 117, baseType: !922, size: 64, offset: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !918, file: !863, line: 117, size: 64, elements: !923)
!923 = !{!924, !932}
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !863, line: 118, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !863, line: 118, size: 64, elements: !926)
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !925, file: !863, line: 120, baseType: !113, size: 16)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !925, file: !863, line: 121, baseType: !929, size: 48, offset: 16)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 48, elements: !930)
!930 = !{!931}
!931 = !DISubrange(count: 6)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !922, file: !863, line: 127, baseType: !59, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !918, file: !863, line: 129, baseType: !934, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !863, line: 102, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !918, file: !863, line: 130, baseType: !937, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !863, line: 108, size: 192, elements: !939)
!939 = !{!940, !941, !942}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !938, file: !863, line: 109, baseType: !760, size: 128, align: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !938, file: !863, line: 110, baseType: !805, size: 32, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !938, file: !863, line: 111, baseType: !943, size: 8, offset: 160)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !45, line: 35, baseType: !944)
!944 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !918, file: !863, line: 131, baseType: !36, size: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !863, line: 247, baseType: !947, size: 320)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !915, file: !863, line: 247, size: 320, elements: !948)
!948 = !{!949, !950, !951, !952, !953}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !947, file: !863, line: 248, baseType: !59, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !947, file: !863, line: 249, baseType: !59, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !947, file: !863, line: 250, baseType: !934, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !947, file: !863, line: 251, baseType: !937, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !947, file: !863, line: 252, baseType: !329, size: 64, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !863, line: 260, baseType: !955, size: 256, offset: 1408)
!955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !862, file: !863, line: 260, size: 256, elements: !956)
!956 = !{!957, !963}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !955, file: !863, line: 261, baseType: !958, size: 256)
!958 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !863, line: 134, size: 256, elements: !959)
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !958, file: !863, line: 135, baseType: !40, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !958, file: !863, line: 136, baseType: !962, size: 256)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !814)
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !955, file: !863, line: 262, baseType: !964, size: 256)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !955, file: !863, line: 262, size: 256, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !964, file: !863, line: 264, baseType: !117, size: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !964, file: !863, line: 265, baseType: !968, size: 128, offset: 128)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !969, line: 22, size: 128, elements: !970)
!969 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!970 = !{!971, !974}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !968, file: !969, line: 23, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !969, line: 23, flags: DIFlagFwdDecl)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !968, file: !969, line: 24, baseType: !59, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !862, file: !863, line: 280, baseType: !976, size: 64, offset: 1664)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !863, line: 176, size: 192, elements: !978)
!978 = !{!979, !988, !989}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !977, file: !863, line: 177, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !863, line: 171, baseType: !981)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!42, !861, !984, !986, !861}
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !935)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !958)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !977, file: !863, line: 178, baseType: !861, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !977, file: !863, line: 179, baseType: !934, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !836, file: !837, line: 130, baseType: !861, size: 64, offset: 832)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !836, file: !837, line: 131, baseType: !861, size: 64, offset: 896)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !836, file: !837, line: 132, baseType: !861, size: 64, offset: 960)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !836, file: !837, line: 135, baseType: !40, size: 64, offset: 1024)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !836, file: !837, line: 137, baseType: !995, size: 64, offset: 1088)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !997, line: 14, size: 1088, elements: !998)
!997 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!998 = !{!999, !1000, !1009, !1010, !1011, !1012, !1013, !1014}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !996, file: !997, line: 15, baseType: !805, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !996, file: !997, line: 17, baseType: !1001, size: 320, offset: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1002, line: 22, size: 320, elements: !1003)
!1002 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1003 = !{!1004, !1005, !1006, !1007}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1001, file: !1002, line: 23, baseType: !716, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1001, file: !1002, line: 24, baseType: !713, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1001, file: !1002, line: 26, baseType: !117, size: 128, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1001, file: !1002, line: 28, baseType: !1008, size: 64, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !996, file: !997, line: 19, baseType: !59, size: 64, offset: 384)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !996, file: !997, line: 20, baseType: !707, size: 64, offset: 448)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !996, file: !997, line: 23, baseType: !596, size: 128, offset: 512)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !996, file: !997, line: 24, baseType: !409, size: 32, offset: 640)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !996, file: !997, line: 29, baseType: !707, size: 64, offset: 704)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !996, file: !997, line: 36, baseType: !1015, size: 320, offset: 768)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1016, line: 15, size: 320, elements: !1017)
!1016 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1023, !1024}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1015, file: !1016, line: 16, baseType: !716, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1015, file: !1016, line: 18, baseType: !42, size: 32, offset: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1015, file: !1016, line: 19, baseType: !42, size: 32, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1015, file: !1016, line: 20, baseType: !42, size: 32, offset: 96)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1015, file: !1016, line: 21, baseType: !42, size: 32, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1015, file: !1016, line: 22, baseType: !59, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1015, file: !1016, line: 23, baseType: !59, size: 64, offset: 256)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !836, file: !837, line: 138, baseType: !1026, size: 64, offset: 1152)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1028, line: 68, size: 4800, elements: !1029)
!1028 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1029 = !{!1030, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1069, !1070, !1071, !1072, !1073, !1074, !1086, !1159, !1160, !1174, !1176}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1027, file: !1028, line: 69, baseType: !1031, size: 576)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1028, line: 23, size: 576, elements: !1032)
!1032 = !{!1033, !1034}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1031, file: !1028, line: 24, baseType: !472, size: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, scope: !1031, file: !1028, line: 25, baseType: !1035, size: 512, offset: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1031, file: !1028, line: 25, size: 512, elements: !1036)
!1036 = !{!1037, !1046}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1035, file: !1028, line: 26, baseType: !1038, size: 480)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 480, elements: !1044)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1028, line: 17, size: 96, elements: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1039, file: !1028, line: 18, baseType: !472, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1039, file: !1028, line: 19, baseType: !472, size: 32, offset: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1039, file: !1028, line: 20, baseType: !472, size: 32, offset: 64)
!1044 = !{!1045}
!1045 = !DISubrange(count: 5)
!1046 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !1028, line: 27, baseType: !1047, size: 128)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1035, file: !1028, line: 27, size: 128, elements: !1048)
!1048 = !{!1049, !1051}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1047, file: !1028, line: 28, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1047, file: !1028, line: 29, baseType: !1050, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1027, file: !1028, line: 70, baseType: !1031, size: 576, offset: 576)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1027, file: !1028, line: 71, baseType: !1031, size: 576, offset: 1152)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1027, file: !1028, line: 72, baseType: !1026, size: 64, offset: 1728)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1027, file: !1028, line: 73, baseType: !42, size: 32, offset: 1792)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1027, file: !1028, line: 74, baseType: !409, size: 32, offset: 1824)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1027, file: !1028, line: 75, baseType: !418, size: 32, offset: 1856)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1027, file: !1028, line: 76, baseType: !1059, size: 192, offset: 1920)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1060, line: 9, size: 192, elements: !1061)
!1060 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1061 = !{!1062, !1063, !1067, !1068}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1059, file: !1060, line: 10, baseType: !707, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1059, file: !1060, line: 11, baseType: !1064, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1066)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1060, line: 7, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1059, file: !1060, line: 12, baseType: !7, size: 32, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1059, file: !1060, line: 13, baseType: !805, size: 32, offset: 160)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1027, file: !1028, line: 77, baseType: !59, size: 64, offset: 2112)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1027, file: !1028, line: 80, baseType: !943, size: 8, offset: 2176)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1027, file: !1028, line: 88, baseType: !117, size: 128, offset: 2240)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1027, file: !1028, line: 89, baseType: !861, size: 64, offset: 2368)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1027, file: !1028, line: 90, baseType: !884, size: 320, offset: 2432)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1027, file: !1028, line: 97, baseType: !1075, size: 256, offset: 2752)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1076, line: 98, size: 256, elements: !1077)
!1076 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1077 = !{!1078, !1079, !1080}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1075, file: !1076, line: 99, baseType: !707, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1075, file: !1076, line: 100, baseType: !117, size: 128, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1075, file: !1076, line: 101, baseType: !1081, size: 64, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1076, line: 21, baseType: !1082)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !1085}
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1027, file: !1028, line: 99, baseType: !1087, size: 768, offset: 3008)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !32, line: 199, size: 768, elements: !1088)
!1088 = !{!1089, !1094}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1087, file: !32, line: 200, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!42, !1093}
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1087, file: !32, line: 201, baseType: !1095, size: 704, offset: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !32, line: 193, size: 704, elements: !1096)
!1096 = !{!1097, !1155}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1095, file: !32, line: 195, baseType: !1098, size: 640)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !32, line: 173, size: 640, elements: !1099)
!1099 = !{!1100, !1112, !1124, !1125, !1145, !1146, !1148, !1154}
!1100 = !DIDerivedType(tag: DW_TAG_member, scope: !1098, file: !32, line: 174, baseType: !1101, size: 192)
!1101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1098, file: !32, line: 174, size: 192, elements: !1102)
!1102 = !{!1103, !1111}
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !32, line: 175, baseType: !1104, size: 192)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1101, file: !32, line: 175, size: 192, elements: !1105)
!1105 = !{!1106, !1107, !1108, !1109, !1110}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1104, file: !32, line: 176, baseType: !53, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1104, file: !32, line: 177, baseType: !42, size: 32, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1104, file: !32, line: 178, baseType: !42, size: 32, offset: 96)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1104, file: !32, line: 179, baseType: !42, size: 32, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1104, file: !32, line: 180, baseType: !42, size: 32, offset: 160)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1101, file: !32, line: 182, baseType: !760, size: 128, align: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1098, file: !32, line: 184, baseType: !1113, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1115, line: 26, size: 256, elements: !1116)
!1115 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1114, file: !1115, line: 27, baseType: !7, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1114, file: !1115, line: 28, baseType: !1119, size: 192, offset: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1120, line: 43, size: 192, elements: !1121)
!1120 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1121 = !{!1122, !1123}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1119, file: !1120, line: 44, baseType: !716, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1119, file: !1120, line: 45, baseType: !117, size: 128, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1098, file: !32, line: 185, baseType: !53, size: 64, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1098, file: !32, line: 186, baseType: !1126, size: 64, offset: 320)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !32, line: 204, size: 960, elements: !1128)
!1128 = !{!1129, !1130, !1134, !1141}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1127, file: !32, line: 205, baseType: !1087, size: 768)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1127, file: !32, line: 206, baseType: !1131, size: 64, offset: 768)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!1093, !1126}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1127, file: !32, line: 207, baseType: !1135, size: 64, offset: 832)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !1138, !1139, !1140}
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1127, file: !32, line: 209, baseType: !1142, size: 64, offset: 896)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!42, !1138, !53}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1098, file: !32, line: 187, baseType: !1093, size: 64, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1098, file: !32, line: 188, baseType: !1147, size: 64, offset: 448)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1098, file: !32, line: 189, baseType: !1149, size: 64, offset: 512)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !32, line: 157, size: 256, elements: !1151)
!1151 = !{!1152, !1153}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1150, file: !32, line: 158, baseType: !876, size: 192, align: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1150, file: !32, line: 159, baseType: !1138, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1098, file: !32, line: 190, baseType: !592, size: 64, offset: 576)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1095, file: !32, line: 196, baseType: !1156, size: 64, offset: 640)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !877, line: 12, size: 64, elements: !1157)
!1157 = !{!1158}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1156, file: !877, line: 13, baseType: !881, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1027, file: !1028, line: 100, baseType: !1138, size: 64, offset: 3776)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1027, file: !1028, line: 102, baseType: !1161, size: 64, offset: 3840)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1028, line: 107, size: 1152, elements: !1163)
!1163 = !{!1164, !1165, !1166, !1167, !1168, !1172}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1162, file: !1028, line: 108, baseType: !596, size: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1162, file: !1028, line: 109, baseType: !1026, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1162, file: !1028, line: 110, baseType: !409, size: 32, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1162, file: !1028, line: 111, baseType: !69, size: 32, offset: 224)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1162, file: !1028, line: 112, baseType: !1169, size: 640, offset: 256)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 640, elements: !1170)
!1170 = !{!1171}
!1171 = !DISubrange(count: 10)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1162, file: !1028, line: 113, baseType: !1173, size: 256, offset: 896)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 256, elements: !814)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1027, file: !1028, line: 103, baseType: !1175, size: 640, offset: 3904)
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 640, elements: !1170)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1027, file: !1028, line: 104, baseType: !1177, size: 256, offset: 4544)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 256, elements: !814)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !836, file: !837, line: 139, baseType: !1161, size: 64, offset: 1216)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !836, file: !837, line: 140, baseType: !1180, size: 64, offset: 1280)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !837, line: 25, size: 64, elements: !1182)
!1182 = !{!1183, !1184, !1185}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1181, file: !837, line: 26, baseType: !69, size: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1181, file: !837, line: 27, baseType: !42, size: 32, offset: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1181, file: !837, line: 28, baseType: !1186, offset: 64)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, elements: !827)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !837, line: 142, baseType: !1188, size: 128, offset: 1344)
!1188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !837, line: 142, size: 128, elements: !1189)
!1189 = !{!1190, !1191}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1188, file: !837, line: 143, baseType: !42, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1188, file: !837, line: 144, baseType: !760, size: 128, align: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !748, file: !19, line: 1013, baseType: !1193, size: 256, offset: 960)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !19, line: 970, size: 256, elements: !1194)
!1194 = !{!1195, !1196, !1197, !1198, !1199, !1200}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1193, file: !19, line: 971, baseType: !59, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1193, file: !19, line: 972, baseType: !7, size: 32, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1193, file: !19, line: 973, baseType: !7, size: 32, offset: 96)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1193, file: !19, line: 974, baseType: !7, size: 32, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1193, file: !19, line: 975, baseType: !7, size: 32, offset: 160)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1193, file: !19, line: 976, baseType: !61, size: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !748, file: !19, line: 1014, baseType: !1202, size: 128, offset: 1216)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1203, line: 8, size: 128, elements: !1204)
!1203 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1202, file: !1203, line: 9, baseType: !548, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1202, file: !1203, line: 10, baseType: !438, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !748, file: !19, line: 1015, baseType: !403, size: 64, offset: 1344)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !748, file: !19, line: 1016, baseType: !1209, size: 64, offset: 1408)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1211)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !19, line: 1914, size: 2112, elements: !1212)
!1212 = !{!1213, !1214, !1219, !1223, !1227, !1781, !1782, !1788, !1801, !1809, !1813, !1814, !1818, !1819, !1823, !1828, !1829, !1833, !1837, !1843, !1844, !1848, !1849, !1856, !1860, !1864, !1870, !1874, !1878, !1882, !1886, !1887, !1893}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1211, file: !19, line: 1915, baseType: !275, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1211, file: !19, line: 1916, baseType: !1215, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!61, !1218, !61, !42}
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1211, file: !19, line: 1917, baseType: !1220, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!361, !1218, !329, !55, !60}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1211, file: !19, line: 1918, baseType: !1224, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!361, !1218, !36, !55, !60}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1211, file: !19, line: 1919, baseType: !1228, size: 64, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!361, !1231, !1778}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !19, line: 373, size: 384, elements: !1233)
!1233 = !{!1234, !1235, !1236, !1240, !1241, !1242, !1243}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1232, file: !19, line: 374, baseType: !1218, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1232, file: !19, line: 375, baseType: !61, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1232, file: !19, line: 376, baseType: !1237, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !1231, !364}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1232, file: !19, line: 377, baseType: !40, size: 64, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1232, file: !19, line: 378, baseType: !42, size: 32, offset: 256)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1232, file: !19, line: 379, baseType: !113, size: 16, offset: 288)
!1243 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !19, line: 380, baseType: !1244, size: 64, offset: 320)
!1244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1232, file: !19, line: 380, size: 64, elements: !1245)
!1245 = !{!1246, !1774}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1244, file: !19, line: 386, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1249, line: 998, size: 448, elements: !1250)
!1249 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1250 = !{!1251, !1760, !1761}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1248, file: !1249, line: 999, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !136, line: 293, size: 1536, elements: !1254)
!1254 = !{!1255, !1727, !1741}
!1255 = !DIDerivedType(tag: DW_TAG_member, scope: !1253, file: !136, line: 295, baseType: !1256, size: 512)
!1256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1253, file: !136, line: 295, size: 512, elements: !1257)
!1257 = !{!1258, !1284}
!1258 = !DIDerivedType(tag: DW_TAG_member, scope: !1256, file: !136, line: 296, baseType: !1259, size: 448)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1256, file: !136, line: 296, size: 448, elements: !1260)
!1260 = !{!1261, !1262, !1271, !1272, !1273, !1282, !1283}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1259, file: !136, line: 298, baseType: !59, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !136, line: 299, baseType: !1263, size: 128, offset: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !136, line: 299, size: 128, elements: !1264)
!1264 = !{!1265, !1266}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1263, file: !136, line: 300, baseType: !117, size: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !136, line: 302, baseType: !1267, size: 128)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1263, file: !136, line: 302, size: 128, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1267, file: !136, line: 303, baseType: !40, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1267, file: !136, line: 305, baseType: !7, size: 32, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1259, file: !136, line: 310, baseType: !399, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1259, file: !136, line: 311, baseType: !59, size: 64, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !136, line: 312, baseType: !1274, size: 64, offset: 320)
!1274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !136, line: 312, size: 64, elements: !1275)
!1275 = !{!1276, !1277}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1274, file: !136, line: 313, baseType: !40, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1274, file: !136, line: 314, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !136, line: 257, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 255, size: 64, elements: !1280)
!1280 = !{!1281}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1279, file: !136, line: 256, baseType: !59, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1259, file: !136, line: 316, baseType: !69, size: 32, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1259, file: !136, line: 317, baseType: !69, size: 32, offset: 416)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1256, file: !136, line: 323, baseType: !1285, size: 512, align: 128)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !136, line: 74, size: 512, align: 128, elements: !1286)
!1286 = !{!1287, !1288, !1721, !1726}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1285, file: !136, line: 75, baseType: !59, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !136, line: 83, baseType: !1289, size: 320, offset: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !136, line: 83, size: 320, elements: !1290)
!1290 = !{!1291, !1312, !1326, !1330, !1720}
!1291 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !136, line: 84, baseType: !1292, size: 320)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !136, line: 84, size: 320, elements: !1293)
!1293 = !{!1294, !1305, !1306, !1311}
!1294 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !136, line: 90, baseType: !1295, size: 128)
!1295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1292, file: !136, line: 90, size: 128, elements: !1296)
!1296 = !{!1297, !1298, !1303, !1304}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1295, file: !136, line: 91, baseType: !117, size: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, scope: !1295, file: !136, line: 94, baseType: !1299, size: 128)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1295, file: !136, line: 94, size: 128, elements: !1300)
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1299, file: !136, line: 96, baseType: !40, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1299, file: !136, line: 98, baseType: !7, size: 32, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1295, file: !136, line: 102, baseType: !117, size: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1295, file: !136, line: 103, baseType: !117, size: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1292, file: !136, line: 106, baseType: !399, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !136, line: 107, baseType: !1307, size: 64, offset: 192)
!1307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1292, file: !136, line: 107, size: 64, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1307, file: !136, line: 108, baseType: !59, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1307, file: !136, line: 109, baseType: !59, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1292, file: !136, line: 117, baseType: !59, size: 64, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !136, line: 119, baseType: !1313, size: 320)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !136, line: 119, size: 320, elements: !1314)
!1314 = !{!1315, !1316, !1319, !1320, !1321}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1313, file: !136, line: 124, baseType: !59, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1313, file: !136, line: 125, baseType: !1317, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !136, line: 125, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1313, file: !136, line: 126, baseType: !59, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1313, file: !136, line: 127, baseType: !59, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !136, line: 128, baseType: !1322, size: 64, offset: 256)
!1322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !136, line: 128, size: 64, elements: !1323)
!1323 = !{!1324, !1325}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1322, file: !136, line: 133, baseType: !59, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1322, file: !136, line: 138, baseType: !707, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !136, line: 141, baseType: !1327, size: 64)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !136, line: 141, size: 64, elements: !1328)
!1328 = !{!1329}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1327, file: !136, line: 142, baseType: !59, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !136, line: 144, baseType: !1331, size: 128)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !136, line: 144, size: 128, elements: !1332)
!1332 = !{!1333, !1719}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1331, file: !136, line: 146, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !128, line: 126, size: 1216, elements: !1336)
!1336 = !{!1337, !1347, !1368, !1369, !1370, !1371, !1372, !1701, !1702, !1703}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1335, file: !128, line: 127, baseType: !1338, size: 384)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !128, line: 21, size: 384, elements: !1339)
!1339 = !{!1340, !1341, !1343, !1344, !1345, !1346}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1338, file: !128, line: 22, baseType: !59, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1338, file: !128, line: 23, baseType: !1342, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1338, file: !128, line: 24, baseType: !1342, size: 64, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1338, file: !128, line: 25, baseType: !59, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1338, file: !128, line: 26, baseType: !59, size: 64, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1338, file: !128, line: 27, baseType: !59, size: 64, offset: 320)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1335, file: !128, line: 128, baseType: !1348, size: 128, offset: 384)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1349, line: 105, size: 128, elements: !1350)
!1349 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1350 = !{!1351, !1352}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1348, file: !1349, line: 110, baseType: !59, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1348, file: !1349, line: 118, baseType: !1353, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1349, line: 95, size: 448, elements: !1355)
!1355 = !{!1356, !1357, !1363, !1364, !1365, !1366, !1367}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1354, file: !1349, line: 96, baseType: !707, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1354, file: !1349, line: 97, baseType: !1358, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1349, line: 60, baseType: !1360)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !1362}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1354, file: !1349, line: 98, baseType: !1358, size: 64, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1354, file: !1349, line: 99, baseType: !943, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1354, file: !1349, line: 100, baseType: !943, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1354, file: !1349, line: 101, baseType: !760, size: 128, align: 64, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1354, file: !1349, line: 102, baseType: !1362, size: 64, offset: 384)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1335, file: !128, line: 129, baseType: !1114, size: 256, offset: 512)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1335, file: !128, line: 130, baseType: !127, size: 32, offset: 768)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1335, file: !128, line: 131, baseType: !7, size: 32, offset: 800)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1335, file: !128, line: 132, baseType: !59, size: 64, offset: 832)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1335, file: !128, line: 133, baseType: !1373, size: 64, offset: 896)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1375)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !128, line: 77, size: 192, elements: !1376)
!1376 = !{!1377, !1382, !1697}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1375, file: !128, line: 83, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !1381}
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1375, file: !128, line: 89, baseType: !1383, size: 64, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !136, line: 1184, baseType: !7)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1389, line: 512, size: 896, elements: !1390)
!1389 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1390 = !{!1391, !1664, !1665, !1672, !1679, !1689, !1690, !1691, !1693, !1695}
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !1389, line: 513, baseType: !1392, size: 320)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1388, file: !1389, line: 513, size: 320, elements: !1393)
!1393 = !{!1394, !1659, !1661, !1662, !1663}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1392, file: !1389, line: 514, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !136, line: 625, size: 1344, elements: !1397)
!1397 = !{!1398, !1407, !1564, !1570, !1577, !1578, !1583, !1584, !1589, !1590, !1593, !1652, !1653, !1654, !1655, !1656, !1657}
!1398 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !136, line: 628, baseType: !1399, size: 128)
!1399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1396, file: !136, line: 628, size: 128, elements: !1400)
!1400 = !{!1401, !1406}
!1401 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !136, line: 629, baseType: !1402, size: 128)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1399, file: !136, line: 629, size: 128, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1402, file: !136, line: 631, baseType: !59, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1402, file: !136, line: 632, baseType: !59, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1399, file: !136, line: 635, baseType: !760, size: 128, align: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1396, file: !136, line: 639, baseType: !1408, size: 64, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !136, line: 733, size: 10240, elements: !1410)
!1410 = !{!1411, !1562}
!1411 = !DIDerivedType(tag: DW_TAG_member, scope: !1409, file: !136, line: 734, baseType: !1412, size: 10240)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1409, file: !136, line: 734, size: 10240, elements: !1413)
!1413 = !{!1414, !1418, !1431, !1435, !1436, !1437, !1438, !1439, !1440, !1449, !1450, !1451, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1490, !1492, !1495, !1542, !1543, !1544, !1547, !1548, !1549, !1552, !1553, !1554, !1560, !1561}
!1414 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !136, line: 739, baseType: !1415, size: 512, align: 512)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1412, file: !136, line: 739, size: 512, align: 512, elements: !1416)
!1416 = !{!1417}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1415, file: !136, line: 747, baseType: !69, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1412, file: !136, line: 750, baseType: !1419, size: 128, offset: 512)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1420, line: 218, size: 128, elements: !1421)
!1420 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1421 = !{!1422, !1429, !1430}
!1422 = !DIDerivedType(tag: DW_TAG_member, scope: !1419, file: !1420, line: 219, baseType: !1423, size: 32)
!1423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1419, file: !1420, line: 219, size: 32, elements: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1423, file: !1420, line: 220, baseType: !79, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1423, file: !1420, line: 221, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1420, line: 197, baseType: !1428)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1420, line: 197, elements: !604)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1419, file: !1420, line: 223, baseType: !7, size: 32, offset: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1419, file: !1420, line: 224, baseType: !40, size: 64, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1412, file: !136, line: 752, baseType: !1432, size: 64, offset: 640)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!59, !1218, !59, !59, !59, !59}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1412, file: !136, line: 756, baseType: !59, size: 64, offset: 704)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1412, file: !136, line: 757, baseType: !59, size: 64, offset: 768)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1412, file: !136, line: 760, baseType: !59, size: 64, offset: 832)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1412, file: !136, line: 761, baseType: !59, size: 64, offset: 896)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1412, file: !136, line: 763, baseType: !59, size: 64, offset: 960)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1412, file: !136, line: 764, baseType: !1441, size: 64, offset: 1024)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1443, line: 299, baseType: !1444)
!1443 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1443, line: 299, size: 64, elements: !1445)
!1445 = !{!1446}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1444, file: !1443, line: 299, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1448, line: 18, baseType: !59)
!1448 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1412, file: !136, line: 773, baseType: !69, size: 32, offset: 1088)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1412, file: !136, line: 785, baseType: !69, size: 32, offset: 1120)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1412, file: !136, line: 795, baseType: !1452, size: 64, offset: 1152)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !136, line: 726, size: 128, elements: !1454)
!1454 = !{!1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1453, file: !136, line: 727, baseType: !476, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1453, file: !136, line: 728, baseType: !42, size: 32, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1412, file: !136, line: 801, baseType: !59, size: 64, offset: 1216)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1412, file: !136, line: 804, baseType: !707, size: 64, offset: 1280)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1412, file: !136, line: 806, baseType: !42, size: 32, offset: 1344)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1412, file: !136, line: 808, baseType: !79, size: 32, offset: 1376)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1412, file: !136, line: 823, baseType: !884, size: 320, offset: 1408)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1412, file: !136, line: 825, baseType: !117, size: 128, offset: 1728)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1412, file: !136, line: 845, baseType: !42, size: 32, offset: 1856)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1412, file: !136, line: 849, baseType: !59, size: 64, offset: 1920)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1412, file: !136, line: 850, baseType: !59, size: 64, offset: 1984)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1412, file: !136, line: 852, baseType: !59, size: 64, offset: 2048)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1412, file: !136, line: 853, baseType: !59, size: 64, offset: 2112)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1412, file: !136, line: 854, baseType: !709, size: 64, offset: 2176)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1412, file: !136, line: 855, baseType: !59, size: 64, offset: 2240)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1412, file: !136, line: 856, baseType: !59, size: 64, offset: 2304)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1412, file: !136, line: 857, baseType: !59, size: 64, offset: 2368)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1412, file: !136, line: 858, baseType: !59, size: 64, offset: 2432)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1412, file: !136, line: 865, baseType: !449, size: 32, offset: 2496)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1412, file: !136, line: 867, baseType: !79, size: 32, offset: 2528)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1412, file: !136, line: 869, baseType: !59, size: 64, offset: 2560)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1412, file: !136, line: 869, baseType: !59, size: 64, offset: 2624)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1412, file: !136, line: 869, baseType: !59, size: 64, offset: 2688)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1412, file: !136, line: 869, baseType: !59, size: 64, offset: 2752)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1412, file: !136, line: 870, baseType: !59, size: 64, offset: 2816)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1412, file: !136, line: 870, baseType: !59, size: 64, offset: 2880)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1412, file: !136, line: 870, baseType: !59, size: 64, offset: 2944)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1412, file: !136, line: 871, baseType: !59, size: 64, offset: 3008)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1412, file: !136, line: 871, baseType: !59, size: 64, offset: 3072)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1412, file: !136, line: 871, baseType: !59, size: 64, offset: 3136)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1412, file: !136, line: 871, baseType: !59, size: 64, offset: 3200)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1412, file: !136, line: 873, baseType: !1487, size: 3328, offset: 3264)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 3328, elements: !1488)
!1488 = !{!1489}
!1489 = !DISubrange(count: 52)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1412, file: !136, line: 875, baseType: !1491, size: 1280, offset: 6592)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1001, size: 1280, elements: !814)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1412, file: !136, line: 877, baseType: !1493, size: 64, offset: 7872)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !136, line: 877, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1412, file: !136, line: 880, baseType: !1496, size: 1088, offset: 7936)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1497, line: 72, baseType: !1498)
!1497 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1497, line: 23, size: 1088, elements: !1499)
!1499 = !{!1500, !1501, !1502, !1503, !1504, !1507, !1508, !1509, !1510, !1537, !1538, !1539}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1498, file: !1497, line: 28, baseType: !476, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1498, file: !1497, line: 38, baseType: !709, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1498, file: !1497, line: 40, baseType: !59, size: 64, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1498, file: !1497, line: 43, baseType: !884, size: 320, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1498, file: !1497, line: 44, baseType: !1505, size: 64, offset: 512)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1497, line: 44, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1498, file: !1497, line: 48, baseType: !59, size: 64, offset: 576)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1498, file: !1497, line: 59, baseType: !703, size: 256, offset: 640)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1498, file: !1497, line: 60, baseType: !40, size: 64, offset: 896)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1498, file: !1497, line: 61, baseType: !1511, size: 64, offset: 960)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1513)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1514, line: 13, size: 1216, elements: !1515)
!1514 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1515 = !{!1516, !1517, !1518, !1519, !1520, !1521, !1522, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1513, file: !1514, line: 14, baseType: !40, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1513, file: !1514, line: 15, baseType: !59, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1513, file: !1514, line: 17, baseType: !59, size: 64, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1513, file: !1514, line: 17, baseType: !59, size: 64, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1513, file: !1514, line: 18, baseType: !59, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1513, file: !1514, line: 18, baseType: !59, size: 64, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1513, file: !1514, line: 19, baseType: !1523, size: 64, offset: 384)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1513, file: !1514, line: 21, baseType: !364, size: 64, offset: 448)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1513, file: !1514, line: 23, baseType: !364, size: 64, offset: 512)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1513, file: !1514, line: 24, baseType: !364, size: 64, offset: 576)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1513, file: !1514, line: 25, baseType: !364, size: 64, offset: 640)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1513, file: !1514, line: 26, baseType: !364, size: 64, offset: 704)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1513, file: !1514, line: 27, baseType: !364, size: 64, offset: 768)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1513, file: !1514, line: 28, baseType: !364, size: 64, offset: 832)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1513, file: !1514, line: 29, baseType: !364, size: 64, offset: 896)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1513, file: !1514, line: 30, baseType: !364, size: 64, offset: 960)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1513, file: !1514, line: 31, baseType: !364, size: 64, offset: 1024)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1513, file: !1514, line: 32, baseType: !364, size: 64, offset: 1088)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1513, file: !1514, line: 33, baseType: !364, size: 64, offset: 1152)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1498, file: !1497, line: 63, baseType: !69, size: 32, offset: 1024)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1498, file: !1497, line: 69, baseType: !113, size: 16, offset: 1056)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1498, file: !1497, line: 70, baseType: !1540, size: 16, offset: 1072)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !104, line: 18, baseType: !1541)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !106, line: 23, baseType: !912)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1412, file: !136, line: 882, baseType: !59, size: 64, offset: 9024)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1412, file: !136, line: 885, baseType: !79, size: 32, offset: 9088)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1412, file: !136, line: 886, baseType: !1545, size: 64, offset: 9152)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !136, line: 732, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1412, file: !136, line: 901, baseType: !1026, size: 64, offset: 9216)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1412, file: !136, line: 904, baseType: !1218, size: 64, offset: 9280)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1412, file: !136, line: 906, baseType: !1550, size: 64, offset: 9344)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !136, line: 906, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1412, file: !136, line: 930, baseType: !69, size: 32, offset: 9408)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1412, file: !136, line: 933, baseType: !69, size: 32, offset: 9440)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1412, file: !136, line: 935, baseType: !1555, size: 64, offset: 9472)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !246, line: 103, size: 64, elements: !1556)
!1556 = !{!1557}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1555, file: !246, line: 104, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !246, line: 101, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1412, file: !136, line: 940, baseType: !707, size: 64, offset: 9536)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1412, file: !136, line: 942, baseType: !1075, size: 256, offset: 9600)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1409, file: !136, line: 986, baseType: !1563, offset: 10240)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, elements: !827)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1396, file: !136, line: 640, baseType: !1565, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1443, line: 297, baseType: !1566)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1443, line: 297, size: 64, elements: !1567)
!1567 = !{!1568}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1566, file: !1443, line: 297, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1448, line: 19, baseType: !59)
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !136, line: 646, baseType: !1571, size: 64, offset: 256)
!1571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1396, file: !136, line: 646, size: 64, elements: !1572)
!1572 = !{!1573, !1576}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1571, file: !136, line: 647, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1575)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !136, line: 542, baseType: !59)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1571, file: !136, line: 648, baseType: !1575, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1396, file: !136, line: 666, baseType: !42, size: 32, offset: 320)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1396, file: !136, line: 667, baseType: !1579, size: 64, offset: 384)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !136, line: 579, size: 320, elements: !1581)
!1581 = !{!1582}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1580, file: !136, line: 580, baseType: !884, size: 320)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1396, file: !136, line: 670, baseType: !943, size: 8, offset: 448)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1396, file: !136, line: 681, baseType: !1585, size: 256, offset: 512)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1396, file: !136, line: 678, size: 256, elements: !1586)
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1585, file: !136, line: 679, baseType: !876, size: 192, align: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1585, file: !136, line: 680, baseType: !59, size: 64, offset: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1396, file: !136, line: 689, baseType: !117, size: 128, offset: 768)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1396, file: !136, line: 691, baseType: !1591, size: 64, offset: 896)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !136, line: 691, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1396, file: !136, line: 694, baseType: !1594, size: 64, offset: 960)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1596)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1389, line: 563, size: 1024, elements: !1597)
!1597 = !{!1598, !1602, !1603, !1607, !1611, !1615, !1616, !1620, !1624, !1628, !1629, !1630, !1634, !1638, !1644, !1648}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1596, file: !1389, line: 564, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !1395}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1596, file: !1389, line: 569, baseType: !1599, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1596, file: !1389, line: 571, baseType: !1604, size: 64, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!42, !1395, !59}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1596, file: !1389, line: 572, baseType: !1608, size: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!42, !1395}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1596, file: !1389, line: 578, baseType: !1612, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!42, !1395, !59, !59, !59}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1596, file: !1389, line: 580, baseType: !1383, size: 64, offset: 320)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1596, file: !1389, line: 581, baseType: !1617, size: 64, offset: 384)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!1386, !1387, !7}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1596, file: !1389, line: 582, baseType: !1621, size: 64, offset: 448)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!1386, !1387, !59, !59}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1596, file: !1389, line: 584, baseType: !1625, size: 64, offset: 512)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!59, !1395}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1596, file: !1389, line: 588, baseType: !1383, size: 64, offset: 576)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1596, file: !1389, line: 591, baseType: !1383, size: 64, offset: 640)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1596, file: !1389, line: 597, baseType: !1631, size: 64, offset: 704)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!42, !1395, !59, !40, !42, !42}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1596, file: !1389, line: 603, baseType: !1635, size: 64, offset: 768)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!36, !1395}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1596, file: !1389, line: 613, baseType: !1639, size: 64, offset: 832)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!42, !1395, !1642}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !136, line: 717, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1596, file: !1389, line: 625, baseType: !1645, size: 64, offset: 896)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!1642, !1395, !59}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1596, file: !1389, line: 633, baseType: !1649, size: 64, offset: 960)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!1381, !1395, !59}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1396, file: !136, line: 697, baseType: !59, size: 64, offset: 1024)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1396, file: !136, line: 699, baseType: !1218, size: 64, offset: 1088)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1396, file: !136, line: 700, baseType: !40, size: 64, offset: 1152)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1396, file: !136, line: 711, baseType: !707, size: 64, offset: 1216)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1396, file: !136, line: 717, baseType: !1642, size: 64, offset: 1280)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1396, file: !136, line: 722, baseType: !1658, offset: 1344)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !136, line: 570, elements: !604)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1392, file: !1389, line: 515, baseType: !1660, size: 32, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !45, line: 154, baseType: !7)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1392, file: !1389, line: 516, baseType: !59, size: 64, offset: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1392, file: !1389, line: 517, baseType: !59, size: 64, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1392, file: !1389, line: 518, baseType: !59, size: 64, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1388, file: !1389, line: 520, baseType: !135, size: 32, offset: 320)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1388, file: !1389, line: 522, baseType: !1666, size: 64, offset: 384)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1448, line: 22, baseType: !1668)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1448, line: 22, size: 64, elements: !1669)
!1669 = !{!1670}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1668, file: !1448, line: 22, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1448, line: 15, baseType: !59)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1388, file: !1389, line: 524, baseType: !1673, size: 64, offset: 448)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1443, line: 372, baseType: !1675)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1443, line: 372, size: 64, elements: !1676)
!1676 = !{!1677}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1675, file: !1443, line: 372, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1448, line: 16, baseType: !59)
!1679 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !1389, line: 527, baseType: !1680, size: 64, offset: 512)
!1680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1388, file: !1389, line: 527, size: 64, elements: !1681)
!1681 = !{!1682, !1688}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1680, file: !1389, line: 528, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1448, line: 21, baseType: !1684)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1448, line: 21, size: 64, elements: !1685)
!1685 = !{!1686}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1684, file: !1448, line: 21, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1448, line: 14, baseType: !59)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1680, file: !1389, line: 529, baseType: !1667, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1388, file: !1389, line: 534, baseType: !1381, size: 64, offset: 576)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1388, file: !1389, line: 535, baseType: !1381, size: 64, offset: 640)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1388, file: !1389, line: 541, baseType: !1692, size: 64, offset: 704)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1388, file: !1389, line: 545, baseType: !1694, size: 64, offset: 768)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1388, file: !1389, line: 549, baseType: !1696, size: 64, offset: 832)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1443, line: 520, baseType: !1381)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1375, file: !128, line: 100, baseType: !1698, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!42, !1334, !59, !59, !42}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1335, file: !128, line: 134, baseType: !40, size: 64, offset: 960)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1335, file: !128, line: 135, baseType: !42, size: 32, offset: 1024)
!1703 = !DIDerivedType(tag: DW_TAG_member, scope: !1335, file: !128, line: 136, baseType: !1704, size: 128, offset: 1088)
!1704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1335, file: !128, line: 136, size: 128, elements: !1705)
!1705 = !{!1706, !1712}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1704, file: !128, line: 137, baseType: !1707, size: 128)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1708, line: 6, size: 128, elements: !1709)
!1708 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1707, file: !1708, line: 7, baseType: !476, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1707, file: !1708, line: 8, baseType: !476, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, scope: !1704, file: !128, line: 138, baseType: !1713)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1704, file: !128, line: 138, elements: !1714)
!1714 = !{!1715, !1717}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1713, file: !128, line: 138, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1713, file: !128, line: 138, elements: !604)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1713, file: !128, line: 138, baseType: !1718)
!1718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1707, elements: !827)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1331, file: !136, line: 147, baseType: !40, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1289, file: !136, line: 161, baseType: !760, size: 128, align: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !136, line: 164, baseType: !1722, size: 32, offset: 384)
!1722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !136, line: 164, size: 32, elements: !1723)
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1722, file: !136, line: 169, baseType: !69, size: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1722, file: !136, line: 177, baseType: !7, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1285, file: !136, line: 181, baseType: !69, size: 32, offset: 416)
!1727 = !DIDerivedType(tag: DW_TAG_member, scope: !1253, file: !136, line: 325, baseType: !1728, size: 512, offset: 512)
!1728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1253, file: !136, line: 325, size: 512, elements: !1729)
!1729 = !{!1730, !1740}
!1730 = !DIDerivedType(tag: DW_TAG_member, scope: !1728, file: !136, line: 326, baseType: !1731, size: 320)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1728, file: !136, line: 326, size: 320, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738, !1739}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1731, file: !136, line: 327, baseType: !59, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1731, file: !136, line: 328, baseType: !59, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1731, file: !136, line: 329, baseType: !59, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1731, file: !136, line: 331, baseType: !69, size: 32, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1731, file: !136, line: 332, baseType: !69, size: 32, offset: 224)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1731, file: !136, line: 333, baseType: !69, size: 32, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1731, file: !136, line: 335, baseType: !7, size: 32, offset: 288)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1728, file: !136, line: 339, baseType: !1285, size: 512, align: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, scope: !1253, file: !136, line: 341, baseType: !1742, size: 512, offset: 1024)
!1742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1253, file: !136, line: 341, size: 512, elements: !1743)
!1743 = !{!1744, !1753, !1759}
!1744 = !DIDerivedType(tag: DW_TAG_member, scope: !1742, file: !136, line: 342, baseType: !1745, size: 384)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1742, file: !136, line: 342, size: 384, elements: !1746)
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1752}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1745, file: !136, line: 343, baseType: !59, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1745, file: !136, line: 344, baseType: !59, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1745, file: !136, line: 346, baseType: !40, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1745, file: !136, line: 347, baseType: !40, size: 64, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1745, file: !136, line: 348, baseType: !40, size: 64, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1745, file: !136, line: 349, baseType: !40, size: 64, offset: 320)
!1753 = !DIDerivedType(tag: DW_TAG_member, scope: !1742, file: !136, line: 352, baseType: !1754, size: 256)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1742, file: !136, line: 352, size: 256, elements: !1755)
!1755 = !{!1756, !1757, !1758}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1754, file: !136, line: 353, baseType: !59, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1754, file: !136, line: 354, baseType: !59, size: 64, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1754, file: !136, line: 356, baseType: !117, size: 128, offset: 128)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1742, file: !136, line: 359, baseType: !1285, size: 512, align: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1248, file: !1249, line: 1000, baseType: !42, size: 32, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1248, file: !1249, line: 1001, baseType: !1762, size: 320, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !75, line: 14, baseType: !1763)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !75, line: 30, size: 320, elements: !1764)
!1764 = !{!1765, !1766, !1767, !1773}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1763, file: !75, line: 31, baseType: !7, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1763, file: !75, line: 32, baseType: !40, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1763, file: !75, line: 33, baseType: !1768, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !75, line: 16, baseType: !1769)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!42, !1772, !7, !42, !40}
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1763, file: !75, line: 34, baseType: !117, size: 128, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1244, file: !19, line: 395, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!361, !40}
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1780, line: 17, flags: DIFlagFwdDecl)
!1780 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1211, file: !19, line: 1920, baseType: !1228, size: 64, offset: 320)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1211, file: !19, line: 1921, baseType: !1783, size: 64, offset: 384)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!42, !1231, !1786, !7}
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !19, line: 53, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1211, file: !19, line: 1923, baseType: !1789, size: 64, offset: 448)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!42, !1218, !1792}
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !19, line: 1858, size: 128, elements: !1794)
!1794 = !{!1795, !1800}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1793, file: !19, line: 1859, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !19, line: 1855, baseType: !1797)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!943, !1792, !36, !42, !61, !476, !7}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1793, file: !19, line: 1860, baseType: !61, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1211, file: !19, line: 1924, baseType: !1802, size: 64, offset: 512)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!1805, !1218, !1807}
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1806, line: 59, baseType: !7)
!1806 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !576, line: 31, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1211, file: !19, line: 1925, baseType: !1810, size: 64, offset: 576)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!364, !1218, !7, !59}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1211, file: !19, line: 1926, baseType: !1810, size: 64, offset: 640)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1211, file: !19, line: 1927, baseType: !1815, size: 64, offset: 704)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!42, !1218, !1395}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1211, file: !19, line: 1928, baseType: !59, size: 64, offset: 768)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1211, file: !19, line: 1929, baseType: !1820, size: 64, offset: 832)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!42, !403, !1218}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1211, file: !19, line: 1930, baseType: !1824, size: 64, offset: 896)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!42, !1218, !1827}
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !19, line: 1061, baseType: !40)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1211, file: !19, line: 1931, baseType: !1820, size: 64, offset: 960)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1211, file: !19, line: 1932, baseType: !1830, size: 64, offset: 1024)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!42, !1218, !61, !61, !42}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1211, file: !19, line: 1933, baseType: !1834, size: 64, offset: 1088)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!42, !42, !1218, !42}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1211, file: !19, line: 1934, baseType: !1838, size: 64, offset: 1152)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!42, !1218, !42, !1841}
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !19, line: 1063, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1211, file: !19, line: 1935, baseType: !1432, size: 64, offset: 1216)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1211, file: !19, line: 1936, baseType: !1845, size: 64, offset: 1280)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!42, !42}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1211, file: !19, line: 1937, baseType: !1838, size: 64, offset: 1344)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1211, file: !19, line: 1938, baseType: !1850, size: 64, offset: 1408)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!361, !1853, !1218, !60, !55, !7}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1855, line: 59, flags: DIFlagFwdDecl)
!1855 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1211, file: !19, line: 1939, baseType: !1857, size: 64, offset: 1472)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!361, !1218, !60, !1853, !55, !7}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1211, file: !19, line: 1940, baseType: !1861, size: 64, offset: 1536)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !1218}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1211, file: !19, line: 1941, baseType: !1865, size: 64, offset: 1600)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!42, !1218, !42, !1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1211, file: !19, line: 1942, baseType: !1871, size: 64, offset: 1664)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!364, !1218, !42, !61, !61}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1211, file: !19, line: 1944, baseType: !1875, size: 64, offset: 1728)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{null, !691, !1218}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1211, file: !19, line: 1948, baseType: !1879, size: 64, offset: 1792)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!361, !1218, !61, !1218, !61, !55, !7}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1211, file: !19, line: 1950, baseType: !1883, size: 64, offset: 1856)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!61, !1218, !61, !1218, !61, !61, !7}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1211, file: !19, line: 1953, baseType: !1830, size: 64, offset: 1920)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1211, file: !19, line: 1954, baseType: !1888, size: 64, offset: 1984)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!42, !1891, !7}
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !19, line: 1911, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1211, file: !19, line: 1955, baseType: !1894, size: 64, offset: 2048)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!42, !1891, !1786, !7}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !748, file: !19, line: 1018, baseType: !476, size: 64, offset: 1472)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !748, file: !19, line: 1020, baseType: !40, size: 64, offset: 1536)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !748, file: !19, line: 1023, baseType: !40, size: 64, offset: 1600)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !748, file: !19, line: 1027, baseType: !1901, size: 64, offset: 1664)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !748, file: !19, line: 1029, baseType: !399, size: 64, offset: 1728)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !748, file: !19, line: 1030, baseType: !1904, size: 32, offset: 1792)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1905, line: 8, baseType: !472)
!1905 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !748, file: !19, line: 1031, baseType: !1904, size: 32, offset: 1824)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !692, file: !693, line: 29, baseType: !40, size: 64, offset: 896)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !616, file: !19, line: 2077, baseType: !688, size: 64, offset: 1088)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !616, file: !19, line: 2078, baseType: !688, size: 64, offset: 1152)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !616, file: !19, line: 2079, baseType: !688, size: 64, offset: 1216)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !616, file: !19, line: 2081, baseType: !1912, size: 64, offset: 1280)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!361, !554, !42, !329, !55, !61}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !616, file: !19, line: 2082, baseType: !1916, size: 64, offset: 1344)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!361, !554, !42, !36, !55, !61}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !616, file: !19, line: 2083, baseType: !1920, size: 64, offset: 1408)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!1923, !403}
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !152, line: 296, size: 1664, elements: !1926)
!1926 = !{!1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1951, !1952, !1953}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1925, file: !152, line: 297, baseType: !596, size: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1925, file: !152, line: 298, baseType: !117, size: 128, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1925, file: !152, line: 299, baseType: !117, size: 128, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1925, file: !152, line: 300, baseType: !117, size: 128, offset: 384)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1925, file: !152, line: 301, baseType: !703, size: 256, offset: 512)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1925, file: !152, line: 302, baseType: !79, size: 32, offset: 768)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1925, file: !152, line: 303, baseType: !69, size: 32, offset: 800)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1925, file: !152, line: 304, baseType: !554, size: 64, offset: 832)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1925, file: !152, line: 305, baseType: !1936, size: 64, offset: 896)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !152, line: 68, size: 64, elements: !1937)
!1937 = !{!1938, !1950}
!1938 = !DIDerivedType(tag: DW_TAG_member, scope: !1936, file: !152, line: 69, baseType: !1939, size: 32)
!1939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1936, file: !152, line: 69, size: 32, elements: !1940)
!1940 = !{!1941, !1942, !1943}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1939, file: !152, line: 70, baseType: !409, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1939, file: !152, line: 71, baseType: !418, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1939, file: !152, line: 72, baseType: !1944, size: 32)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1945, line: 24, baseType: !1946)
!1945 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1945, line: 22, size: 32, elements: !1947)
!1947 = !{!1948}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1946, file: !1945, line: 23, baseType: !1949, size: 32)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1945, line: 20, baseType: !415)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1936, file: !152, line: 74, baseType: !151, size: 32, offset: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1925, file: !152, line: 306, baseType: !61, size: 64, offset: 960)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1925, file: !152, line: 307, baseType: !59, size: 64, offset: 1024)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1925, file: !152, line: 308, baseType: !1954, size: 576, offset: 1088)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !152, line: 205, size: 576, elements: !1955)
!1955 = !{!1956, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1954, file: !152, line: 206, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !152, line: 66, baseType: !63)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1954, file: !152, line: 207, baseType: !1957, size: 64, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1954, file: !152, line: 208, baseType: !1957, size: 64, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1954, file: !152, line: 209, baseType: !1957, size: 64, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1954, file: !152, line: 210, baseType: !1957, size: 64, offset: 256)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1954, file: !152, line: 211, baseType: !1957, size: 64, offset: 320)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1954, file: !152, line: 212, baseType: !1957, size: 64, offset: 384)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1954, file: !152, line: 213, baseType: !900, size: 64, offset: 448)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1954, file: !152, line: 214, baseType: !900, size: 64, offset: 512)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !616, file: !19, line: 2085, baseType: !1967, size: 64, offset: 1472)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!364, !554, !1970}
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1972, line: 15, size: 256, elements: !1973)
!1972 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1973 = !{!1974, !1975, !1976, !1977, !1978}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1971, file: !1972, line: 16, baseType: !1660, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1971, file: !1972, line: 19, baseType: !42, size: 32, offset: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1971, file: !1972, line: 26, baseType: !59, size: 64, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1971, file: !1972, line: 33, baseType: !59, size: 64, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1971, file: !1972, line: 36, baseType: !1979, size: 64, offset: 192)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !136, line: 33, flags: DIFlagFwdDecl)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !616, file: !19, line: 2087, baseType: !1967, size: 64, offset: 1536)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !616, file: !19, line: 2089, baseType: !586, size: 64, offset: 1600)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !555, file: !19, line: 1198, baseType: !1984, size: 64, offset: 448)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1986)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !152, line: 324, size: 704, elements: !1987)
!1987 = !{!1988, !1992, !1996, !2000, !2001, !2002, !2003, !2004, !2009, !2014, !2018}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1986, file: !152, line: 325, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!42, !1924}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1986, file: !152, line: 326, baseType: !1993, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!1924, !554, !42}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1986, file: !152, line: 327, baseType: !1997, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{null, !1924}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1986, file: !152, line: 328, baseType: !1989, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1986, file: !152, line: 329, baseType: !1989, size: 64, offset: 256)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1986, file: !152, line: 330, baseType: !1989, size: 64, offset: 320)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1986, file: !152, line: 331, baseType: !662, size: 64, offset: 384)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1986, file: !152, line: 334, baseType: !2005, size: 64, offset: 448)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!2008, !403}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1986, file: !152, line: 335, baseType: !2010, size: 64, offset: 512)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!42, !403, !2013}
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1986, file: !152, line: 337, baseType: !2015, size: 64, offset: 576)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!42, !403, !2008}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1986, file: !152, line: 339, baseType: !2019, size: 64, offset: 640)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!42, !554, !2022}
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !555, file: !19, line: 1199, baseType: !2024, size: 64, offset: 512)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2026)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !152, line: 430, size: 704, elements: !2027)
!2027 = !{!2028, !2034, !2035, !2039, !2040, !2041, !2056, !2079, !2083, !2084, !2107}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2026, file: !152, line: 431, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!42, !554, !42, !42, !2032}
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1202)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2026, file: !152, line: 432, baseType: !662, size: 64, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2026, file: !152, line: 433, baseType: !2036, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!42, !554, !7}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2026, file: !152, line: 434, baseType: !2036, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2026, file: !152, line: 435, baseType: !662, size: 64, offset: 256)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2026, file: !152, line: 436, baseType: !2042, size: 64, offset: 320)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!42, !554, !42, !2045}
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !152, line: 417, size: 256, elements: !2047)
!2047 = !{!2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2046, file: !152, line: 418, baseType: !42, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2046, file: !152, line: 419, baseType: !7, size: 32, offset: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2046, file: !152, line: 420, baseType: !7, size: 32, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2046, file: !152, line: 422, baseType: !7, size: 32, offset: 96)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2046, file: !152, line: 423, baseType: !7, size: 32, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2046, file: !152, line: 424, baseType: !7, size: 32, offset: 160)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2046, file: !152, line: 425, baseType: !7, size: 32, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2046, file: !152, line: 426, baseType: !7, size: 32, offset: 224)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2026, file: !152, line: 437, baseType: !2057, size: 64, offset: 384)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!42, !554, !1936, !2060}
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !152, line: 345, size: 960, elements: !2062)
!2062 = !{!2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2061, file: !152, line: 346, baseType: !42, size: 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2061, file: !152, line: 347, baseType: !476, size: 64, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2061, file: !152, line: 348, baseType: !476, size: 64, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2061, file: !152, line: 349, baseType: !476, size: 64, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2061, file: !152, line: 350, baseType: !476, size: 64, offset: 256)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2061, file: !152, line: 351, baseType: !476, size: 64, offset: 320)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2061, file: !152, line: 352, baseType: !476, size: 64, offset: 384)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2061, file: !152, line: 353, baseType: !713, size: 64, offset: 448)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2061, file: !152, line: 355, baseType: !713, size: 64, offset: 512)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2061, file: !152, line: 356, baseType: !42, size: 32, offset: 576)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2061, file: !152, line: 357, baseType: !42, size: 32, offset: 608)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2061, file: !152, line: 358, baseType: !476, size: 64, offset: 640)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2061, file: !152, line: 359, baseType: !476, size: 64, offset: 704)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2061, file: !152, line: 360, baseType: !476, size: 64, offset: 768)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2061, file: !152, line: 361, baseType: !713, size: 64, offset: 832)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2061, file: !152, line: 362, baseType: !42, size: 32, offset: 896)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2026, file: !152, line: 438, baseType: !2080, size: 64, offset: 448)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!42, !554, !2022, !2060}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2026, file: !152, line: 440, baseType: !2057, size: 64, offset: 512)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2026, file: !152, line: 441, baseType: !2085, size: 64, offset: 576)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!42, !554, !2088}
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !152, line: 411, size: 1408, elements: !2090)
!2090 = !{!2091, !2092}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2089, file: !152, line: 412, baseType: !7, size: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2089, file: !152, line: 413, baseType: !2093, size: 1344, offset: 64)
!2093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2094, size: 1344, elements: !330)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !152, line: 397, size: 448, elements: !2095)
!2095 = !{!2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2106}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2094, file: !152, line: 398, baseType: !7, size: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2094, file: !152, line: 399, baseType: !7, size: 32, offset: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2094, file: !152, line: 401, baseType: !7, size: 32, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2094, file: !152, line: 402, baseType: !7, size: 32, offset: 96)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2094, file: !152, line: 403, baseType: !7, size: 32, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2094, file: !152, line: 404, baseType: !7, size: 32, offset: 160)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2094, file: !152, line: 405, baseType: !7, size: 32, offset: 192)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2094, file: !152, line: 406, baseType: !478, size: 64, offset: 256)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2094, file: !152, line: 407, baseType: !2105, size: 64, offset: 320)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !45, line: 132, baseType: !476)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2094, file: !152, line: 408, baseType: !2105, size: 64, offset: 384)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2026, file: !152, line: 442, baseType: !2036, size: 64, offset: 640)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !555, file: !19, line: 1200, baseType: !2109, size: 64, offset: 576)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2111)
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !19, line: 54, flags: DIFlagFwdDecl)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !555, file: !19, line: 1201, baseType: !59, size: 64, offset: 640)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !555, file: !19, line: 1202, baseType: !59, size: 64, offset: 704)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !555, file: !19, line: 1203, baseType: !59, size: 64, offset: 768)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !555, file: !19, line: 1204, baseType: !438, size: 64, offset: 832)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !555, file: !19, line: 1205, baseType: !884, size: 320, offset: 896)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !555, file: !19, line: 1206, baseType: !42, size: 32, offset: 1216)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !555, file: !19, line: 1207, baseType: !69, size: 32, offset: 1248)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !555, file: !19, line: 1209, baseType: !40, size: 64, offset: 1280)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !555, file: !19, line: 1211, baseType: !2121, size: 64, offset: 1344)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2124)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !19, line: 1211, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !555, file: !19, line: 1223, baseType: !2126, size: 64, offset: 1408)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !455, line: 34, size: 64, elements: !2127)
!2127 = !{!2128}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2126, file: !455, line: 35, baseType: !458, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !555, file: !19, line: 1224, baseType: !117, size: 128, offset: 1472)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !555, file: !19, line: 1225, baseType: !2131, size: 64, offset: 1600)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2133, line: 40, size: 7424, elements: !2134)
!2133 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2134 = !{!2135, !2137, !2138, !2141, !2145, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2172, !2173}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2132, file: !2133, line: 41, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !45, line: 131, baseType: !476)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2132, file: !2133, line: 42, baseType: !2136, size: 64, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2132, file: !2133, line: 43, baseType: !2139, size: 64, offset: 128)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1855, line: 1453, flags: DIFlagFwdDecl)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2132, file: !2133, line: 44, baseType: !2142, size: 64, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2144, line: 74, flags: DIFlagFwdDecl)
!2144 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2132, file: !2133, line: 45, baseType: !2146, size: 64, offset: 256)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2133, line: 45, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2132, file: !2133, line: 46, baseType: !59, size: 64, offset: 320)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2132, file: !2133, line: 47, baseType: !943, size: 8, offset: 384)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2132, file: !2133, line: 48, baseType: !103, size: 8, offset: 392)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2132, file: !2133, line: 49, baseType: !943, size: 8, offset: 400)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2132, file: !2133, line: 50, baseType: !943, size: 8, offset: 408)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2132, file: !2133, line: 51, baseType: !559, size: 32, offset: 416)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2132, file: !2133, line: 52, baseType: !69, size: 32, offset: 448)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2132, file: !2133, line: 53, baseType: !79, size: 32, offset: 480)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2132, file: !2133, line: 54, baseType: !403, size: 64, offset: 512)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2132, file: !2133, line: 55, baseType: !40, size: 64, offset: 576)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2132, file: !2133, line: 56, baseType: !40, size: 64, offset: 640)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2132, file: !2133, line: 57, baseType: !2160, size: 64, offset: 704)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2162)
!2162 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2133, line: 57, flags: DIFlagFwdDecl)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2132, file: !2133, line: 58, baseType: !703, size: 256, offset: 768)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2132, file: !2133, line: 60, baseType: !42, size: 32, offset: 1024)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2132, file: !2133, line: 61, baseType: !42, size: 32, offset: 1056)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2132, file: !2133, line: 62, baseType: !294, size: 64, offset: 1088)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2132, file: !2133, line: 65, baseType: !703, size: 256, offset: 1152)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2132, file: !2133, line: 66, baseType: !554, size: 64, offset: 1408)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2132, file: !2133, line: 68, baseType: !2170, size: 64, offset: 1472)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2133, line: 68, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2132, file: !2133, line: 72, baseType: !943, size: 8, offset: 1536)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2132, file: !2133, line: 77, baseType: !2174, size: 5824, offset: 1600)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !164, line: 705, size: 5824, elements: !2175)
!2175 = !{!2176, !2177, !2179, !2182, !2183, !2236, !2325, !2326, !2327, !2328, !2329, !2336, !2511, !2524, !2534, !2538, !2540, !2541, !2542, !2546, !2553, !2554, !2557, !2560, !2564, !2668, !2669, !2670, !2671, !2672, !2673, !2730, !2731, !2732, !2735, !2738, !2747, !2748, !2749, !2750, !2751, !2752}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2174, file: !164, line: 706, baseType: !288, size: 512)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2174, file: !164, line: 707, baseType: !2178, size: 64, offset: 512)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2174, file: !164, line: 709, baseType: !2180, size: 64, offset: 576)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !164, line: 37, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2174, file: !164, line: 711, baseType: !36, size: 64, offset: 640)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2174, file: !164, line: 712, baseType: !2184, size: 64, offset: 704)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2186)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !164, line: 89, size: 384, elements: !2187)
!2187 = !{!2188, !2189, !2190, !2196, !2201, !2205}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2186, file: !164, line: 90, baseType: !36, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2186, file: !164, line: 91, baseType: !375, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2186, file: !164, line: 92, baseType: !2191, size: 64, offset: 128)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!42, !2194, !324}
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2174)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2186, file: !164, line: 93, baseType: !2197, size: 64, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!329, !2194, !2200, !1139, !1140}
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2186, file: !164, line: 95, baseType: !2202, size: 64, offset: 256)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{null, !2178}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2186, file: !164, line: 97, baseType: !2206, size: 64, offset: 320)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2208)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !176, line: 286, size: 1472, elements: !2209)
!2209 = !{!2210, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2208, file: !176, line: 287, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!42, !2178}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2208, file: !176, line: 288, baseType: !2202, size: 64, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2208, file: !176, line: 289, baseType: !2211, size: 64, offset: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2208, file: !176, line: 290, baseType: !2211, size: 64, offset: 192)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2208, file: !176, line: 291, baseType: !2211, size: 64, offset: 256)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2208, file: !176, line: 292, baseType: !2211, size: 64, offset: 320)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2208, file: !176, line: 293, baseType: !2211, size: 64, offset: 384)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2208, file: !176, line: 294, baseType: !2211, size: 64, offset: 448)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2208, file: !176, line: 295, baseType: !2211, size: 64, offset: 512)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2208, file: !176, line: 296, baseType: !2211, size: 64, offset: 576)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2208, file: !176, line: 297, baseType: !2211, size: 64, offset: 640)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2208, file: !176, line: 298, baseType: !2211, size: 64, offset: 704)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2208, file: !176, line: 299, baseType: !2211, size: 64, offset: 768)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2208, file: !176, line: 300, baseType: !2211, size: 64, offset: 832)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2208, file: !176, line: 301, baseType: !2211, size: 64, offset: 896)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2208, file: !176, line: 302, baseType: !2211, size: 64, offset: 960)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2208, file: !176, line: 303, baseType: !2211, size: 64, offset: 1024)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2208, file: !176, line: 304, baseType: !2211, size: 64, offset: 1088)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2208, file: !176, line: 305, baseType: !2211, size: 64, offset: 1152)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2208, file: !176, line: 306, baseType: !2211, size: 64, offset: 1216)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2208, file: !176, line: 307, baseType: !2211, size: 64, offset: 1280)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2208, file: !176, line: 308, baseType: !2211, size: 64, offset: 1344)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2208, file: !176, line: 309, baseType: !2211, size: 64, offset: 1408)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2174, file: !164, line: 714, baseType: !2237, size: 64, offset: 768)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2239)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2240, line: 80, size: 1344, elements: !2241)
!2240 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2241 = !{!2242, !2243, !2244, !2245, !2246, !2247, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2324}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2239, file: !2240, line: 81, baseType: !36, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2239, file: !2240, line: 82, baseType: !36, size: 64, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2239, file: !2240, line: 83, baseType: !375, size: 64, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2239, file: !2240, line: 84, baseType: !375, size: 64, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2239, file: !2240, line: 85, baseType: !375, size: 64, offset: 256)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2239, file: !2240, line: 87, baseType: !2248, size: 64, offset: 320)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!42, !2178, !2251}
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !158, line: 96, size: 1152, elements: !2253)
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2259, !2260, !2274, !2287, !2288, !2289, !2290, !2291, !2299, !2300, !2301, !2302, !2303, !2304}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2252, file: !158, line: 97, baseType: !36, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2252, file: !158, line: 98, baseType: !2237, size: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2252, file: !158, line: 100, baseType: !275, size: 64, offset: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2252, file: !158, line: 101, baseType: !36, size: 64, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2252, file: !158, line: 103, baseType: !943, size: 8, offset: 256)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2252, file: !158, line: 104, baseType: !157, size: 32, offset: 288)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2252, file: !158, line: 106, baseType: !2261, size: 64, offset: 320)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2263)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2264, line: 282, size: 1600, elements: !2265)
!2264 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!2265 = !{!2266, !2268, !2269, !2273}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2263, file: !2264, line: 283, baseType: !2267, size: 256)
!2267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !485)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2263, file: !2264, line: 284, baseType: !2267, size: 256, offset: 256)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !2263, file: !2264, line: 285, baseType: !2270, size: 1024, offset: 512)
!2270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1024, elements: !2271)
!2271 = !{!2272}
!2272 = !DISubrange(count: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2263, file: !2264, line: 286, baseType: !1523, size: 64, offset: 1536)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2252, file: !158, line: 107, baseType: !2275, size: 64, offset: 384)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2277)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2264, line: 217, size: 256, elements: !2278)
!2278 = !{!2279, !2283, !2285, !2286}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2277, file: !2264, line: 218, baseType: !2280, size: 128)
!2280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 128, elements: !2281)
!2281 = !{!2282}
!2282 = !DISubrange(count: 16)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2277, file: !2264, line: 219, baseType: !2284, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !2264, line: 15, baseType: !59)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !2277, file: !2264, line: 220, baseType: !473, size: 32, offset: 192)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !2277, file: !2264, line: 221, baseType: !473, size: 32, offset: 224)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2252, file: !158, line: 109, baseType: !2211, size: 64, offset: 448)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2252, file: !158, line: 110, baseType: !2202, size: 64, offset: 512)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2252, file: !158, line: 111, baseType: !2211, size: 64, offset: 576)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2252, file: !158, line: 112, baseType: !2202, size: 64, offset: 640)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2252, file: !158, line: 113, baseType: !2292, size: 64, offset: 704)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!42, !2178, !2295}
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !176, line: 60, baseType: !2296)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !176, line: 58, size: 32, elements: !2297)
!2297 = !{!2298}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2296, file: !176, line: 59, baseType: !42, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2252, file: !158, line: 114, baseType: !2211, size: 64, offset: 768)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2252, file: !158, line: 115, baseType: !375, size: 64, offset: 832)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2252, file: !158, line: 116, baseType: !375, size: 64, offset: 896)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2252, file: !158, line: 118, baseType: !2206, size: 64, offset: 960)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2252, file: !158, line: 119, baseType: !2202, size: 64, offset: 1024)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2252, file: !158, line: 121, baseType: !2305, size: 64, offset: 1088)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !158, line: 121, flags: DIFlagFwdDecl)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2239, file: !2240, line: 88, baseType: !2191, size: 64, offset: 384)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2239, file: !2240, line: 89, baseType: !2211, size: 64, offset: 448)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2239, file: !2240, line: 90, baseType: !2202, size: 64, offset: 512)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2239, file: !2240, line: 91, baseType: !2202, size: 64, offset: 576)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2239, file: !2240, line: 92, baseType: !2202, size: 64, offset: 640)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2239, file: !2240, line: 94, baseType: !2211, size: 64, offset: 704)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2239, file: !2240, line: 95, baseType: !2211, size: 64, offset: 768)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2239, file: !2240, line: 97, baseType: !2292, size: 64, offset: 832)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2239, file: !2240, line: 98, baseType: !2211, size: 64, offset: 896)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2239, file: !2240, line: 100, baseType: !2211, size: 64, offset: 960)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2239, file: !2240, line: 102, baseType: !2211, size: 64, offset: 1024)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2239, file: !2240, line: 103, baseType: !2202, size: 64, offset: 1088)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2239, file: !2240, line: 105, baseType: !2206, size: 64, offset: 1152)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2239, file: !2240, line: 107, baseType: !2321, size: 64, offset: 1216)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2323)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2240, line: 107, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2239, file: !2240, line: 109, baseType: !943, size: 8, offset: 1280)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2174, file: !164, line: 715, baseType: !2251, size: 64, offset: 832)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2174, file: !164, line: 717, baseType: !40, size: 64, offset: 896)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2174, file: !164, line: 719, baseType: !40, size: 64, offset: 960)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2174, file: !164, line: 721, baseType: !703, size: 256, offset: 1024)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2174, file: !164, line: 725, baseType: !2330, size: 448, offset: 1280)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !164, line: 517, size: 448, elements: !2331)
!2331 = !{!2332, !2333, !2334, !2335}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2330, file: !164, line: 518, baseType: !117, size: 128)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2330, file: !164, line: 519, baseType: !117, size: 128, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2330, file: !164, line: 520, baseType: !117, size: 128, offset: 256)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2330, file: !164, line: 521, baseType: !163, size: 32, offset: 384)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2174, file: !164, line: 726, baseType: !2337, size: 2496, offset: 1728)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !176, line: 663, size: 2496, elements: !2338)
!2338 = !{!2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2394, !2395, !2396, !2397, !2398, !2399, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2504, !2508}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2337, file: !176, line: 664, baseType: !2295, size: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2337, file: !176, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2337, file: !176, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2337, file: !176, line: 667, baseType: !943, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2337, file: !176, line: 668, baseType: !943, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2337, file: !176, line: 669, baseType: !943, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2337, file: !176, line: 670, baseType: !943, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2337, file: !176, line: 671, baseType: !943, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2337, file: !176, line: 672, baseType: !943, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2337, file: !176, line: 673, baseType: !943, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2337, file: !176, line: 674, baseType: !943, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2337, file: !176, line: 675, baseType: !472, size: 32, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2337, file: !176, line: 676, baseType: !79, size: 32, offset: 96)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2337, file: !176, line: 678, baseType: !117, size: 128, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2337, file: !176, line: 679, baseType: !1114, size: 256, offset: 256)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2337, file: !176, line: 680, baseType: !2355, size: 64, offset: 512)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2357, line: 43, size: 1536, elements: !2358)
!2357 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2358 = !{!2359, !2360, !2361, !2362, !2363, !2366, !2378, !2379, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2356, file: !2357, line: 44, baseType: !36, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2356, file: !2357, line: 45, baseType: !42, size: 32, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2356, file: !2357, line: 46, baseType: !117, size: 128, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2356, file: !2357, line: 47, baseType: !79, size: 32, offset: 256)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2356, file: !2357, line: 48, baseType: !2364, size: 64, offset: 320)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !176, line: 629, flags: DIFlagFwdDecl)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2356, file: !2357, line: 49, baseType: !2367, size: 320, offset: 384)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2368, line: 11, size: 320, elements: !2369)
!2368 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2369 = !{!2370, !2371, !2372, !2377}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2367, file: !2368, line: 16, baseType: !596, size: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2367, file: !2368, line: 17, baseType: !59, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2367, file: !2368, line: 18, baseType: !2373, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !2376}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2367, file: !2368, line: 19, baseType: !472, size: 32, offset: 256)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2356, file: !2357, line: 50, baseType: !59, size: 64, offset: 704)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2356, file: !2357, line: 51, baseType: !2380, size: 64, offset: 768)
!2380 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2381, line: 29, baseType: !713)
!2381 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2356, file: !2357, line: 52, baseType: !2380, size: 64, offset: 832)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2356, file: !2357, line: 53, baseType: !2380, size: 64, offset: 896)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2356, file: !2357, line: 54, baseType: !2380, size: 64, offset: 960)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2356, file: !2357, line: 55, baseType: !2380, size: 64, offset: 1024)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2356, file: !2357, line: 56, baseType: !59, size: 64, offset: 1088)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2356, file: !2357, line: 57, baseType: !59, size: 64, offset: 1152)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2356, file: !2357, line: 58, baseType: !59, size: 64, offset: 1216)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2356, file: !2357, line: 59, baseType: !59, size: 64, offset: 1280)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2356, file: !2357, line: 60, baseType: !59, size: 64, offset: 1344)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2356, file: !2357, line: 61, baseType: !2178, size: 64, offset: 1408)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2356, file: !2357, line: 62, baseType: !943, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2356, file: !2357, line: 63, baseType: !943, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2337, file: !176, line: 681, baseType: !943, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2337, file: !176, line: 682, baseType: !943, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2337, file: !176, line: 683, baseType: !943, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2337, file: !176, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2337, file: !176, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2337, file: !176, line: 690, baseType: !2400, size: 512, offset: 640)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !171, line: 118, size: 512, elements: !2401)
!2401 = !{!2402, !2408, !2409, !2414, !2466, !2467, !2468, !2469}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2400, file: !171, line: 119, baseType: !2403, size: 256)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2404, line: 9, size: 256, elements: !2405)
!2404 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2405 = !{!2406, !2407}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2403, file: !2404, line: 10, baseType: !876, size: 192, align: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2403, file: !2404, line: 11, baseType: !2380, size: 64, offset: 192)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2400, file: !171, line: 120, baseType: !2380, size: 64, offset: 256)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2400, file: !171, line: 121, baseType: !2410, size: 64, offset: 320)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!170, !2413}
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2400, file: !171, line: 122, baseType: !2415, size: 64, offset: 384)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !171, line: 159, size: 512, align: 512, elements: !2417)
!2417 = !{!2418, !2443, !2444, !2447, !2452, !2453, !2461, !2465}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2416, file: !171, line: 160, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !171, line: 215, size: 4608, align: 512, elements: !2421)
!2421 = !{!2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2420, file: !171, line: 216, baseType: !716, size: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2420, file: !171, line: 217, baseType: !7, size: 32, offset: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2420, file: !171, line: 218, baseType: !7, size: 32, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2420, file: !171, line: 219, baseType: !7, size: 32, offset: 96)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2420, file: !171, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2420, file: !171, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2420, file: !171, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2420, file: !171, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2420, file: !171, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2420, file: !171, line: 226, baseType: !7, size: 32, offset: 160)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2420, file: !171, line: 227, baseType: !46, size: 16, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2420, file: !171, line: 228, baseType: !46, size: 16, offset: 208)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2420, file: !171, line: 229, baseType: !7, size: 32, offset: 224)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2420, file: !171, line: 235, baseType: !2380, size: 64, offset: 256)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2420, file: !171, line: 236, baseType: !2413, size: 64, offset: 320)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2420, file: !171, line: 237, baseType: !2380, size: 64, offset: 384)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2420, file: !171, line: 238, baseType: !2413, size: 64, offset: 448)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2420, file: !171, line: 239, baseType: !2440, size: 4096, align: 512, offset: 512)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2416, size: 4096, align: 512, elements: !2441)
!2441 = !{!2442}
!2442 = !DISubrange(count: 8)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2416, file: !171, line: 161, baseType: !7, size: 32, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2416, file: !171, line: 162, baseType: !2445, size: 32, offset: 96)
!2445 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !45, line: 32, baseType: !2446)
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !57, line: 96, baseType: !42)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2416, file: !171, line: 163, baseType: !2448, size: 32, offset: 128)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !445, line: 274, baseType: !2449)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !445, line: 274, size: 32, elements: !2450)
!2450 = !{!2451}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2449, file: !445, line: 274, baseType: !449, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2416, file: !171, line: 164, baseType: !2413, size: 64, offset: 192)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2416, file: !171, line: 165, baseType: !2454, size: 128, offset: 256)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2404, line: 14, size: 128, elements: !2455)
!2455 = !{!2456}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2454, file: !2404, line: 15, baseType: !2457, size: 128)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !877, line: 26, size: 128, elements: !2458)
!2458 = !{!2459, !2460}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2457, file: !877, line: 27, baseType: !1156, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2457, file: !877, line: 28, baseType: !881, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2416, file: !171, line: 166, baseType: !2462, size: 64, offset: 384)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!2380}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2416, file: !171, line: 167, baseType: !2380, size: 64, offset: 448)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2400, file: !171, line: 123, baseType: !103, size: 8, offset: 448)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2400, file: !171, line: 124, baseType: !103, size: 8, offset: 456)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2400, file: !171, line: 125, baseType: !103, size: 8, offset: 464)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2400, file: !171, line: 126, baseType: !103, size: 8, offset: 472)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2337, file: !176, line: 691, baseType: !476, size: 64, offset: 1152)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2337, file: !176, line: 692, baseType: !1075, size: 256, offset: 1216)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2337, file: !176, line: 693, baseType: !74, size: 192, offset: 1472)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2337, file: !176, line: 694, baseType: !2364, size: 64, offset: 1664)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2337, file: !176, line: 695, baseType: !69, size: 32, offset: 1728)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2337, file: !176, line: 696, baseType: !69, size: 32, offset: 1760)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2337, file: !176, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2337, file: !176, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2337, file: !176, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2337, file: !176, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2337, file: !176, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2337, file: !176, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2337, file: !176, line: 703, baseType: !943, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2337, file: !176, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2337, file: !176, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2337, file: !176, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2337, file: !176, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2337, file: !176, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2337, file: !176, line: 709, baseType: !7, size: 32, offset: 1824)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2337, file: !176, line: 710, baseType: !175, size: 32, offset: 1856)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2337, file: !176, line: 711, baseType: !183, size: 32, offset: 1888)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2337, file: !176, line: 712, baseType: !183, size: 32, offset: 1920)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2337, file: !176, line: 713, baseType: !42, size: 32, offset: 1952)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2337, file: !176, line: 714, baseType: !42, size: 32, offset: 1984)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2337, file: !176, line: 715, baseType: !476, size: 64, offset: 2048)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2337, file: !176, line: 716, baseType: !476, size: 64, offset: 2112)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2337, file: !176, line: 717, baseType: !476, size: 64, offset: 2176)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2337, file: !176, line: 718, baseType: !476, size: 64, offset: 2240)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2337, file: !176, line: 720, baseType: !2499, size: 64, offset: 2304)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !176, line: 632, size: 64, elements: !2501)
!2501 = !{!2502, !2503}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2500, file: !176, line: 633, baseType: !79, size: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2500, file: !176, line: 634, baseType: !7, size: 32, offset: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2337, file: !176, line: 721, baseType: !2505, size: 64, offset: 2368)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{null, !2178, !869}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2337, file: !176, line: 722, baseType: !2509, size: 64, offset: 2432)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !176, line: 722, flags: DIFlagFwdDecl)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2174, file: !164, line: 727, baseType: !2512, size: 64, offset: 4224)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !176, line: 742, size: 1792, elements: !2514)
!2514 = !{!2515, !2516, !2517, !2521, !2522, !2523}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2513, file: !176, line: 743, baseType: !2208, size: 1472)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2513, file: !176, line: 744, baseType: !2211, size: 64, offset: 1472)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2513, file: !176, line: 745, baseType: !2518, size: 64, offset: 1536)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{null, !2178, !943}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2513, file: !176, line: 746, baseType: !2211, size: 64, offset: 1600)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2513, file: !176, line: 747, baseType: !2202, size: 64, offset: 1664)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2513, file: !176, line: 748, baseType: !2202, size: 64, offset: 1728)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2174, file: !164, line: 736, baseType: !2525, size: 128, offset: 4288)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !164, line: 529, size: 128, elements: !2526)
!2526 = !{!2527, !2531}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2525, file: !164, line: 531, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2530, line: 13, flags: DIFlagFwdDecl)
!2530 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2525, file: !164, line: 532, baseType: !2532, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !164, line: 49, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2174, file: !164, line: 738, baseType: !2535, size: 64, offset: 4416)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2537)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !164, line: 738, flags: DIFlagFwdDecl)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2174, file: !164, line: 740, baseType: !2539, size: 64, offset: 4480)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2174, file: !164, line: 741, baseType: !476, size: 64, offset: 4544)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2174, file: !164, line: 746, baseType: !476, size: 64, offset: 4608)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2174, file: !164, line: 747, baseType: !2543, size: 64, offset: 4672)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2545)
!2545 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !164, line: 747, flags: DIFlagFwdDecl)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2174, file: !164, line: 749, baseType: !2547, size: 64, offset: 4736)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !164, line: 428, size: 128, elements: !2549)
!2549 = !{!2550, !2551, !2552}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2548, file: !164, line: 433, baseType: !7, size: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2548, file: !164, line: 434, baseType: !7, size: 32, offset: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2548, file: !164, line: 435, baseType: !59, size: 64, offset: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2174, file: !164, line: 751, baseType: !117, size: 128, offset: 4800)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2174, file: !164, line: 762, baseType: !2555, size: 64, offset: 4928)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !164, line: 762, flags: DIFlagFwdDecl)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2174, file: !164, line: 770, baseType: !2558, offset: 4992)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2559, line: 5, elements: !604)
!2559 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2174, file: !164, line: 772, baseType: !2561, size: 64, offset: 4992)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2563, line: 18, flags: DIFlagFwdDecl)
!2563 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2174, file: !164, line: 773, baseType: !2565, size: 64, offset: 5056)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2567, line: 41, size: 512, elements: !2568)
!2567 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!2568 = !{!2569, !2570, !2664, !2665, !2666, !2667}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2566, file: !2567, line: 42, baseType: !2565, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2566, file: !2567, line: 43, baseType: !2571, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2573)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2567, line: 125, size: 1408, elements: !2574)
!2574 = !{!2575, !2579, !2583, !2589, !2593, !2594, !2598, !2602, !2606, !2611, !2615, !2616, !2620, !2624, !2628, !2639, !2640, !2641, !2642, !2652, !2656, !2660}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2573, file: !2567, line: 126, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!2565, !2565}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2573, file: !2567, line: 127, baseType: !2580, size: 64, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{null, !2565}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2573, file: !2567, line: 128, baseType: !2584, size: 64, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!943, !2587}
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2566)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2573, file: !2567, line: 129, baseType: !2590, size: 64, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!1523, !2587, !2194}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !2573, file: !2567, line: 131, baseType: !2584, size: 64, offset: 256)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !2573, file: !2567, line: 133, baseType: !2595, size: 64, offset: 320)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!190, !2587}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2573, file: !2567, line: 134, baseType: !2599, size: 64, offset: 384)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!943, !2587, !36}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2573, file: !2567, line: 136, baseType: !2603, size: 64, offset: 448)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!42, !2587, !36, !7, !40, !55}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2573, file: !2567, line: 141, baseType: !2607, size: 64, offset: 512)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!42, !2587, !36, !2610, !55}
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2573, file: !2567, line: 144, baseType: !2612, size: 64, offset: 576)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!36, !2587}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2573, file: !2567, line: 145, baseType: !2612, size: 64, offset: 640)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2573, file: !2567, line: 146, baseType: !2617, size: 64, offset: 704)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!2565, !2587}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2573, file: !2567, line: 148, baseType: !2621, size: 64, offset: 768)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!2565, !2587, !2565}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2573, file: !2567, line: 151, baseType: !2625, size: 64, offset: 832)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!2565, !2587, !36}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2573, file: !2567, line: 153, baseType: !2629, size: 64, offset: 896)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!42, !2587, !36, !36, !7, !7, !2632}
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2567, line: 94, size: 640, elements: !2634)
!2634 = !{!2635, !2636, !2637}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2633, file: !2567, line: 95, baseType: !2565, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2633, file: !2567, line: 96, baseType: !7, size: 32, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2633, file: !2567, line: 97, baseType: !2638, size: 512, offset: 128)
!2638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 512, elements: !2441)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2573, file: !2567, line: 158, baseType: !2621, size: 64, offset: 960)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2573, file: !2567, line: 161, baseType: !2617, size: 64, offset: 1024)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2573, file: !2567, line: 163, baseType: !2576, size: 64, offset: 1088)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2573, file: !2567, line: 164, baseType: !2643, size: 64, offset: 1152)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!42, !2587, !2646}
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2567, line: 73, size: 128, elements: !2648)
!2648 = !{!2649, !2650, !2651}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2647, file: !2567, line: 74, baseType: !7, size: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2647, file: !2567, line: 75, baseType: !7, size: 32, offset: 32)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2647, file: !2567, line: 76, baseType: !2587, size: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !2573, file: !2567, line: 166, baseType: !2653, size: 64, offset: 1216)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!40, !2565, !42}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !2573, file: !2567, line: 167, baseType: !2657, size: 64, offset: 1280)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!42, !2587, !7}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2573, file: !2567, line: 168, baseType: !2661, size: 64, offset: 1344)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!42, !2565}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2566, file: !2567, line: 44, baseType: !2178, size: 64, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2566, file: !2567, line: 45, baseType: !117, size: 128, offset: 192)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2566, file: !2567, line: 46, baseType: !117, size: 128, offset: 320)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2566, file: !2567, line: 47, baseType: !103, size: 8, offset: 448)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2174, file: !164, line: 776, baseType: !42, size: 32, offset: 5120)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2174, file: !164, line: 778, baseType: !559, size: 32, offset: 5152)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2174, file: !164, line: 779, baseType: !472, size: 32, offset: 5184)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2174, file: !164, line: 781, baseType: !79, size: 32, offset: 5216)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2174, file: !164, line: 782, baseType: !117, size: 128, offset: 5248)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2174, file: !164, line: 784, baseType: !2674, size: 64, offset: 5376)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2676)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2677, line: 52, size: 768, elements: !2678)
!2677 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2678 = !{!2679, !2680, !2681, !2682, !2683, !2687, !2691, !2692, !2693, !2721, !2725, !2729}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2676, file: !2677, line: 53, baseType: !36, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2676, file: !2677, line: 55, baseType: !375, size: 64, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2676, file: !2677, line: 56, baseType: !375, size: 64, offset: 128)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2676, file: !2677, line: 58, baseType: !2191, size: 64, offset: 192)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2676, file: !2677, line: 59, baseType: !2684, size: 64, offset: 256)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!329, !2194, !2200}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2676, file: !2677, line: 61, baseType: !2688, size: 64, offset: 320)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{null, !2674}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2676, file: !2677, line: 62, baseType: !2202, size: 64, offset: 384)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2676, file: !2677, line: 64, baseType: !2211, size: 64, offset: 448)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2676, file: !2677, line: 66, baseType: !2694, size: 64, offset: 512)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2696)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !197, line: 39, size: 384, elements: !2697)
!2697 = !{!2698, !2699, !2703, !2707, !2713, !2717}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2696, file: !197, line: 40, baseType: !196, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2696, file: !197, line: 41, baseType: !2700, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!943}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2696, file: !197, line: 42, baseType: !2704, size: 64, offset: 128)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!40}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2696, file: !197, line: 43, baseType: !2708, size: 64, offset: 192)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!1523, !2711}
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !197, line: 19, flags: DIFlagFwdDecl)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2696, file: !197, line: 44, baseType: !2714, size: 64, offset: 256)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!1523}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2696, file: !197, line: 45, baseType: !2718, size: 64, offset: 320)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{null, !40}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2676, file: !2677, line: 67, baseType: !2722, size: 64, offset: 576)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!1523, !2194}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2676, file: !2677, line: 69, baseType: !2726, size: 64, offset: 640)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{null, !2194, !1139, !1140}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2676, file: !2677, line: 71, baseType: !2206, size: 64, offset: 704)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2174, file: !164, line: 785, baseType: !375, size: 64, offset: 5440)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2174, file: !164, line: 787, baseType: !2202, size: 64, offset: 5504)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2174, file: !164, line: 788, baseType: !2733, size: 64, offset: 5568)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !164, line: 46, flags: DIFlagFwdDecl)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2174, file: !164, line: 789, baseType: !2736, size: 64, offset: 5632)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !164, line: 48, flags: DIFlagFwdDecl)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2174, file: !164, line: 791, baseType: !2739, size: 64, offset: 5696)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !164, line: 597, size: 128, elements: !2741)
!2741 = !{!2742, !2743, !2744, !2745, !2746}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2740, file: !164, line: 598, baseType: !202, size: 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2740, file: !164, line: 599, baseType: !211, size: 32, offset: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2740, file: !164, line: 600, baseType: !216, size: 32, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2740, file: !164, line: 601, baseType: !943, size: 8, offset: 96)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2740, file: !164, line: 602, baseType: !943, size: 8, offset: 104)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2174, file: !164, line: 793, baseType: !221, size: 32, offset: 5760)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2174, file: !164, line: 795, baseType: !943, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2174, file: !164, line: 796, baseType: !943, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2174, file: !164, line: 797, baseType: !943, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2174, file: !164, line: 798, baseType: !943, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2174, file: !164, line: 799, baseType: !943, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !555, file: !19, line: 1226, baseType: !2754, size: 64, offset: 1664)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !19, line: 1226, flags: DIFlagFwdDecl)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !555, file: !19, line: 1227, baseType: !2757, size: 64, offset: 1728)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !228, line: 163, size: 6848, elements: !2759)
!2759 = !{!2760, !2761, !2762, !2763, !2764, !2765, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2818, !2819, !2820, !2821, !2823, !2824, !2825}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2758, file: !228, line: 164, baseType: !476, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2758, file: !228, line: 165, baseType: !876, size: 192, align: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !2758, file: !228, line: 166, baseType: !117, size: 128, offset: 256)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2758, file: !228, line: 167, baseType: !59, size: 64, offset: 384)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !2758, file: !228, line: 168, baseType: !59, size: 64, offset: 448)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2758, file: !228, line: 170, baseType: !2766, size: 32, offset: 512)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2767, line: 19, size: 32, elements: !2768)
!2767 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2768 = !{!2769}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2766, file: !2767, line: 20, baseType: !805, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2758, file: !228, line: 171, baseType: !7, size: 32, offset: 544)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !2758, file: !228, line: 172, baseType: !7, size: 32, offset: 576)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !2758, file: !228, line: 173, baseType: !7, size: 32, offset: 608)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !2758, file: !228, line: 173, baseType: !7, size: 32, offset: 640)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !2758, file: !228, line: 179, baseType: !707, size: 64, offset: 704)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !2758, file: !228, line: 184, baseType: !59, size: 64, offset: 768)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !2758, file: !228, line: 186, baseType: !2777, size: 4672, offset: 832)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !228, line: 105, size: 4672, elements: !2778)
!2778 = !{!2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2803, !2804, !2805, !2806, !2807, !2816, !2817}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2777, file: !228, line: 106, baseType: !2757, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2777, file: !228, line: 108, baseType: !59, size: 64, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !2777, file: !228, line: 109, baseType: !59, size: 64, offset: 128)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !2777, file: !228, line: 111, baseType: !117, size: 128, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !2777, file: !228, line: 112, baseType: !117, size: 128, offset: 320)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !2777, file: !228, line: 113, baseType: !117, size: 128, offset: 448)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !2777, file: !228, line: 114, baseType: !117, size: 128, offset: 576)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2777, file: !228, line: 115, baseType: !79, size: 32, offset: 704)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !2777, file: !228, line: 117, baseType: !69, size: 32, offset: 736)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !2777, file: !228, line: 118, baseType: !1491, size: 1280, offset: 768)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !2777, file: !228, line: 120, baseType: !59, size: 64, offset: 2048)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !2777, file: !228, line: 121, baseType: !59, size: 64, offset: 2112)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !2777, file: !228, line: 122, baseType: !59, size: 64, offset: 2176)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !2777, file: !228, line: 123, baseType: !59, size: 64, offset: 2240)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !2777, file: !228, line: 124, baseType: !59, size: 64, offset: 2304)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !2777, file: !228, line: 132, baseType: !59, size: 64, offset: 2368)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !2777, file: !228, line: 133, baseType: !59, size: 64, offset: 2432)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !2777, file: !228, line: 135, baseType: !2797, size: 384, offset: 2496)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !2798, line: 76, size: 384, elements: !2799)
!2798 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!2799 = !{!2800, !2801, !2802}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2797, file: !2798, line: 78, baseType: !1001, size: 320)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2797, file: !2798, line: 80, baseType: !7, size: 32, offset: 320)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2797, file: !2798, line: 81, baseType: !716, size: 32, offset: 352)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !2777, file: !228, line: 136, baseType: !42, size: 32, offset: 2880)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !2777, file: !228, line: 137, baseType: !227, size: 32, offset: 2912)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !2777, file: !228, line: 139, baseType: !79, size: 32, offset: 2944)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !2777, file: !228, line: 140, baseType: !117, size: 128, offset: 3008)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !2777, file: !228, line: 141, baseType: !2808, size: 704, offset: 3136)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1076, line: 111, size: 704, elements: !2809)
!2809 = !{!2810, !2811, !2812, !2815}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2808, file: !1076, line: 112, baseType: !1075, size: 256)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2808, file: !1076, line: 113, baseType: !2367, size: 320, offset: 256)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2808, file: !1076, line: 116, baseType: !2813, size: 64, offset: 576)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1076, line: 18, flags: DIFlagFwdDecl)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2808, file: !1076, line: 117, baseType: !42, size: 32, offset: 640)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !2777, file: !228, line: 142, baseType: !2808, size: 704, offset: 3840)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !2777, file: !228, line: 144, baseType: !117, size: 128, offset: 4544)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !2758, file: !228, line: 187, baseType: !117, size: 128, offset: 5504)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !2758, file: !228, line: 193, baseType: !74, size: 192, offset: 5632)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2758, file: !228, line: 195, baseType: !2178, size: 64, offset: 5824)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2758, file: !228, line: 196, baseType: !2822, size: 512, offset: 5888)
!2822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 512, elements: !334)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2758, file: !228, line: 197, baseType: !2178, size: 64, offset: 6400)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !2758, file: !228, line: 199, baseType: !2367, size: 320, offset: 6464)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !2758, file: !228, line: 202, baseType: !438, size: 64, offset: 6784)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !555, file: !19, line: 1228, baseType: !2827, size: 64, offset: 1792)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !19, line: 1228, flags: DIFlagFwdDecl)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !555, file: !19, line: 1229, baseType: !596, size: 128, offset: 1856)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !555, file: !19, line: 1230, baseType: !7, size: 32, offset: 1984)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !555, file: !19, line: 1231, baseType: !2832, size: 2496, offset: 2048)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !152, line: 521, size: 2496, elements: !2833)
!2833 = !{!2834, !2835, !2836, !2838, !2870}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2832, file: !152, line: 522, baseType: !7, size: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2832, file: !152, line: 523, baseType: !884, size: 320, offset: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2832, file: !152, line: 524, baseType: !2837, size: 192, offset: 384)
!2837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 192, elements: !330)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2832, file: !152, line: 525, baseType: !2839, size: 1728, offset: 576)
!2839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2840, size: 1728, elements: !330)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !152, line: 222, size: 576, elements: !2841)
!2841 = !{!2842, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2840, file: !152, line: 223, baseType: !2843, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !152, line: 445, size: 256, elements: !2845)
!2845 = !{!2846, !2847, !2860, !2861}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2844, file: !152, line: 446, baseType: !42, size: 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2844, file: !152, line: 447, baseType: !2848, size: 64, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2850)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !152, line: 312, size: 512, elements: !2851)
!2851 = !{!2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2850, file: !152, line: 313, baseType: !662, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2850, file: !152, line: 314, baseType: !662, size: 64, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2850, file: !152, line: 315, baseType: !662, size: 64, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2850, file: !152, line: 316, baseType: !662, size: 64, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2850, file: !152, line: 317, baseType: !1989, size: 64, offset: 256)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2850, file: !152, line: 318, baseType: !1989, size: 64, offset: 320)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2850, file: !152, line: 319, baseType: !1989, size: 64, offset: 384)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2850, file: !152, line: 320, baseType: !2019, size: 64, offset: 448)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2844, file: !152, line: 448, baseType: !275, size: 64, offset: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2844, file: !152, line: 449, baseType: !2843, size: 64, offset: 192)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2840, file: !152, line: 224, baseType: !42, size: 32, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2840, file: !152, line: 226, baseType: !117, size: 128, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2840, file: !152, line: 227, baseType: !59, size: 64, offset: 256)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2840, file: !152, line: 228, baseType: !7, size: 32, offset: 320)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2840, file: !152, line: 229, baseType: !7, size: 32, offset: 352)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2840, file: !152, line: 230, baseType: !1957, size: 64, offset: 384)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2840, file: !152, line: 231, baseType: !1957, size: 64, offset: 448)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2840, file: !152, line: 232, baseType: !40, size: 64, offset: 512)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2832, file: !152, line: 526, baseType: !2871, size: 192, offset: 2304)
!2871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2848, size: 192, elements: !330)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !555, file: !19, line: 1233, baseType: !2873, size: 2368, offset: 4544)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !19, line: 1184, size: 2368, elements: !2874)
!2874 = !{!2875, !2876, !2877}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2873, file: !19, line: 1185, baseType: !46, size: 16)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2873, file: !19, line: 1186, baseType: !46, size: 16, offset: 16)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2873, file: !19, line: 1187, baseType: !2878, size: 2304, offset: 64)
!2878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2879, size: 2304, elements: !330)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2880, line: 12, size: 768, elements: !2881)
!2880 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2881 = !{!2882, !2890, !2892, !4457, !4458}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2879, file: !2880, line: 13, baseType: !2883, size: 384)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2884, line: 17, size: 384, elements: !2885)
!2884 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2885 = !{!2886, !2887, !2888, !2889}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2883, file: !2884, line: 18, baseType: !42, size: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2883, file: !2884, line: 19, baseType: !42, size: 32, offset: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2883, file: !2884, line: 20, baseType: !74, size: 192, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2883, file: !2884, line: 22, baseType: !760, size: 128, align: 64, offset: 256)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2879, file: !2880, line: 14, baseType: !2891, size: 64, offset: 384)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2879, file: !2880, line: 15, baseType: !2893, size: 64, offset: 448)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2894, line: 16, size: 64, elements: !2895)
!2894 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2895 = !{!2896}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2893, file: !2894, line: 17, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1855, line: 746, size: 58368, elements: !2899)
!2899 = !{!2900, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2980, !2991, !3011, !3015, !3018, !3049, !3050, !3051, !3052, !3063, !3065, !3066, !3067, !3068, !3069, !3070, !3081, !3082, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3099, !3100, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3188, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3236, !3242, !3243, !3244, !3245, !3246, !3248, !3251, !3258, !3263, !3266, !3269, !3272, !3663, !3863, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3901, !3902, !3903, !3912, !3920, !3921, !3922, !3923, !3924, !3929, !3930, !3931, !3934, !3935, !3938, !3941, !3947, !3954, !3957, !3958, !4044, !4045, !4046, !4047, !4048, !4054, !4055, !4056, !4057, !4058, !4059, !4062, !4065, !4066, !4069, !4070, !4071, !4074, !4075, !4076, !4077, !4078, !4079, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4111, !4112, !4118, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4200, !4202, !4203, !4204, !4205, !4206, !4207, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4236, !4237, !4238}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2898, file: !1855, line: 752, baseType: !2901, size: 192)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2902, line: 56, size: 192, elements: !2903)
!2902 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2903 = !{!2904, !2905, !2906, !2907}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2901, file: !2902, line: 57, baseType: !59, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2901, file: !2902, line: 58, baseType: !59, size: 64, offset: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2901, file: !2902, line: 59, baseType: !472, size: 32, offset: 128)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2901, file: !2902, line: 61, baseType: !472, size: 32, offset: 160)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2898, file: !1855, line: 754, baseType: !7, size: 32, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2898, file: !1855, line: 767, baseType: !40, size: 64, offset: 256)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2898, file: !1855, line: 768, baseType: !805, size: 32, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2898, file: !1855, line: 770, baseType: !7, size: 32, offset: 352)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2898, file: !1855, line: 771, baseType: !7, size: 32, offset: 384)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2898, file: !1855, line: 774, baseType: !42, size: 32, offset: 416)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2898, file: !1855, line: 775, baseType: !2915, size: 128, offset: 448)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2916, line: 58, size: 128, elements: !2917)
!2916 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2917 = !{!2918, !2919, !2924, !2925}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2915, file: !2916, line: 59, baseType: !754, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, scope: !2915, file: !2916, line: 60, baseType: !2920, size: 32, offset: 64)
!2920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2915, file: !2916, line: 60, size: 32, elements: !2921)
!2921 = !{!2922, !2923}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2920, file: !2916, line: 61, baseType: !7, size: 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2920, file: !2916, line: 62, baseType: !69, size: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2915, file: !2916, line: 65, baseType: !113, size: 16, offset: 96)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2915, file: !2916, line: 65, baseType: !113, size: 16, offset: 112)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2898, file: !1855, line: 776, baseType: !7, size: 32, offset: 576)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2898, file: !1855, line: 777, baseType: !59, size: 64, offset: 640)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2898, file: !1855, line: 778, baseType: !2897, size: 64, offset: 704)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2898, file: !1855, line: 787, baseType: !42, size: 32, offset: 768)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2898, file: !1855, line: 788, baseType: !42, size: 32, offset: 800)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2898, file: !1855, line: 790, baseType: !42, size: 32, offset: 832)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2898, file: !1855, line: 792, baseType: !42, size: 32, offset: 864)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2898, file: !1855, line: 793, baseType: !42, size: 32, offset: 896)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2898, file: !1855, line: 794, baseType: !42, size: 32, offset: 928)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2898, file: !1855, line: 795, baseType: !7, size: 32, offset: 960)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2898, file: !1855, line: 797, baseType: !2937, size: 2048, offset: 1024)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1855, line: 551, size: 2048, elements: !2938)
!2938 = !{!2939, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2959, !2962, !2963, !2964}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2937, file: !1855, line: 553, baseType: !2940, size: 128)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1855, line: 411, size: 128, elements: !2941)
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2940, file: !1855, line: 412, baseType: !59, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2940, file: !1855, line: 413, baseType: !472, size: 32, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2937, file: !1855, line: 554, baseType: !876, size: 192, align: 64, offset: 128)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2937, file: !1855, line: 555, baseType: !476, size: 64, offset: 320)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2937, file: !1855, line: 556, baseType: !476, size: 64, offset: 384)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2937, file: !1855, line: 558, baseType: !117, size: 128, offset: 448)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2937, file: !1855, line: 559, baseType: !7, size: 32, offset: 576)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2937, file: !1855, line: 561, baseType: !476, size: 64, offset: 640)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2937, file: !1855, line: 562, baseType: !476, size: 64, offset: 704)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2937, file: !1855, line: 563, baseType: !476, size: 64, offset: 768)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2937, file: !1855, line: 564, baseType: !476, size: 64, offset: 832)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2937, file: !1855, line: 565, baseType: !713, size: 64, offset: 896)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2937, file: !1855, line: 566, baseType: !476, size: 64, offset: 960)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2937, file: !1855, line: 568, baseType: !476, size: 64, offset: 1024)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2937, file: !1855, line: 571, baseType: !42, size: 32, offset: 1088)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2937, file: !1855, line: 572, baseType: !2958, size: 64, offset: 1152)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2937, file: !1855, line: 574, baseType: !2960, size: 64, offset: 1216)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1855, line: 49, flags: DIFlagFwdDecl)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2937, file: !1855, line: 576, baseType: !2960, size: 64, offset: 1280)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2937, file: !1855, line: 578, baseType: !59, size: 64, offset: 1344)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2937, file: !1855, line: 588, baseType: !2965, size: 512, align: 512, offset: 1536)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1855, line: 497, size: 512, align: 512, elements: !2966)
!2966 = !{!2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2965, file: !1855, line: 498, baseType: !476, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2965, file: !1855, line: 499, baseType: !476, size: 64, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2965, file: !1855, line: 500, baseType: !476, size: 64, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2965, file: !1855, line: 501, baseType: !472, size: 32, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2965, file: !1855, line: 502, baseType: !472, size: 32, offset: 224)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2965, file: !1855, line: 503, baseType: !59, size: 64, offset: 256)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2965, file: !1855, line: 504, baseType: !59, size: 64, offset: 320)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2965, file: !1855, line: 505, baseType: !59, size: 64, offset: 384)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2965, file: !1855, line: 506, baseType: !2976, size: 64, align: 64, offset: 448)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1855, line: 445, size: 64, align: 64, elements: !2977)
!2977 = !{!2978, !2979}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2976, file: !1855, line: 446, baseType: !7, size: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2976, file: !1855, line: 447, baseType: !7, size: 32, offset: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2898, file: !1855, line: 798, baseType: !2981, size: 384, offset: 3072)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1855, line: 592, size: 384, elements: !2982)
!2982 = !{!2983, !2984, !2985, !2986, !2987, !2988, !2989}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2981, file: !1855, line: 593, baseType: !117, size: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2981, file: !1855, line: 594, baseType: !59, size: 64, offset: 128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2981, file: !1855, line: 595, baseType: !59, size: 64, offset: 192)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2981, file: !1855, line: 596, baseType: !7, size: 32, offset: 256)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2981, file: !1855, line: 597, baseType: !46, size: 16, offset: 288)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2981, file: !1855, line: 598, baseType: !46, size: 16, offset: 304)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2981, file: !1855, line: 600, baseType: !2990, size: 64, offset: 320)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2898, file: !1855, line: 799, baseType: !2992, size: 1792, offset: 3456)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1855, line: 610, size: 1792, elements: !2993)
!2993 = !{!2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2992, file: !1855, line: 611, baseType: !876, size: 192, align: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2992, file: !1855, line: 618, baseType: !476, size: 64, offset: 192)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2992, file: !1855, line: 619, baseType: !476, size: 64, offset: 256)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2992, file: !1855, line: 620, baseType: !476, size: 64, offset: 320)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2992, file: !1855, line: 621, baseType: !476, size: 64, offset: 384)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2992, file: !1855, line: 622, baseType: !476, size: 64, offset: 448)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2992, file: !1855, line: 629, baseType: !713, size: 64, offset: 512)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2992, file: !1855, line: 630, baseType: !476, size: 64, offset: 576)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2992, file: !1855, line: 631, baseType: !7, size: 32, offset: 640)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2992, file: !1855, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2992, file: !1855, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2992, file: !1855, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2992, file: !1855, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2992, file: !1855, line: 662, baseType: !2400, size: 512, offset: 704)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2992, file: !1855, line: 671, baseType: !2400, size: 512, offset: 1216)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2992, file: !1855, line: 679, baseType: !3010, size: 64, offset: 1728)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2898, file: !1855, line: 800, baseType: !3012, size: 64, offset: 5248)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3014)
!3014 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1855, line: 800, flags: DIFlagFwdDecl)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2898, file: !1855, line: 809, baseType: !3016, size: 64, offset: 5312)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1855, line: 70, flags: DIFlagFwdDecl)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2898, file: !1855, line: 825, baseType: !3019, size: 2048, align: 512, offset: 5632)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1855, line: 509, size: 2048, align: 512, elements: !3020)
!3020 = !{!3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3019, file: !1855, line: 511, baseType: !476, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3019, file: !1855, line: 512, baseType: !476, size: 64, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3019, file: !1855, line: 513, baseType: !476, size: 64, offset: 128)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3019, file: !1855, line: 514, baseType: !476, size: 64, offset: 192)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3019, file: !1855, line: 515, baseType: !476, size: 64, offset: 256)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3019, file: !1855, line: 516, baseType: !476, size: 64, offset: 320)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3019, file: !1855, line: 518, baseType: !476, size: 64, offset: 384)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3019, file: !1855, line: 519, baseType: !476, size: 64, offset: 448)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3019, file: !1855, line: 520, baseType: !713, size: 64, offset: 512)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3019, file: !1855, line: 522, baseType: !476, size: 64, offset: 576)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3019, file: !1855, line: 523, baseType: !476, size: 64, offset: 640)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3019, file: !1855, line: 524, baseType: !713, size: 64, offset: 704)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3019, file: !1855, line: 526, baseType: !713, size: 64, offset: 768)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3019, file: !1855, line: 527, baseType: !476, size: 64, offset: 832)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3019, file: !1855, line: 529, baseType: !476, size: 64, offset: 896)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3019, file: !1855, line: 530, baseType: !476, size: 64, offset: 960)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3019, file: !1855, line: 531, baseType: !476, size: 64, offset: 1024)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3019, file: !1855, line: 532, baseType: !476, size: 64, offset: 1088)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3019, file: !1855, line: 533, baseType: !476, size: 64, offset: 1152)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3019, file: !1855, line: 535, baseType: !476, size: 64, offset: 1216)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3019, file: !1855, line: 536, baseType: !476, size: 64, offset: 1280)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3019, file: !1855, line: 537, baseType: !476, size: 64, offset: 1344)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3019, file: !1855, line: 538, baseType: !476, size: 64, offset: 1408)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3019, file: !1855, line: 539, baseType: !476, size: 64, offset: 1472)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3019, file: !1855, line: 540, baseType: !476, size: 64, offset: 1536)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3019, file: !1855, line: 541, baseType: !476, size: 64, offset: 1600)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3019, file: !1855, line: 542, baseType: !476, size: 64, offset: 1664)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3019, file: !1855, line: 543, baseType: !476, size: 64, offset: 1728)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2898, file: !1855, line: 833, baseType: !7, size: 32, offset: 7680)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2898, file: !1855, line: 836, baseType: !7, size: 32, offset: 7712)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2898, file: !1855, line: 837, baseType: !42, size: 32, offset: 7744)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2898, file: !1855, line: 838, baseType: !3053, size: 64, offset: 7808)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3055)
!3055 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3056, line: 19, baseType: !3057)
!3056 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3056, line: 19, size: 64, elements: !3058)
!3058 = !{!3059}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3057, file: !3056, line: 19, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !3061)
!3061 = !{!3062}
!3062 = !DISubrange(count: 1)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2898, file: !1855, line: 839, baseType: !3064, size: 64, offset: 7872)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2898, file: !1855, line: 840, baseType: !3055, size: 64, offset: 7936)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2898, file: !1855, line: 841, baseType: !40, size: 64, offset: 8000)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2898, file: !1855, line: 843, baseType: !46, size: 16, offset: 8064)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2898, file: !1855, line: 845, baseType: !46, size: 16, offset: 8080)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2898, file: !1855, line: 848, baseType: !42, size: 32, offset: 8096)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2898, file: !1855, line: 849, baseType: !3071, size: 32, offset: 8128)
!3071 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1855, line: 718, size: 32, elements: !3072)
!3072 = !{!3073, !3080}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3071, file: !1855, line: 724, baseType: !3074, size: 32)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3071, file: !1855, line: 719, size: 32, elements: !3075)
!3075 = !{!3076, !3077, !3078, !3079}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3074, file: !1855, line: 720, baseType: !103, size: 8)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3074, file: !1855, line: 721, baseType: !103, size: 8, offset: 8)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3074, file: !1855, line: 722, baseType: !103, size: 8, offset: 16)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3074, file: !1855, line: 723, baseType: !103, size: 8, offset: 24)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3071, file: !1855, line: 725, baseType: !472, size: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2898, file: !1855, line: 850, baseType: !117, size: 128, offset: 8192)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2898, file: !1855, line: 851, baseType: !3083, size: 64, offset: 8320)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1855, line: 60, flags: DIFlagFwdDecl)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2898, file: !1855, line: 855, baseType: !59, size: 64, offset: 8384)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2898, file: !1855, line: 856, baseType: !103, size: 8, offset: 8448)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2898, file: !1855, line: 857, baseType: !103, size: 8, offset: 8456)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2898, file: !1855, line: 858, baseType: !42, size: 32, offset: 8480)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2898, file: !1855, line: 859, baseType: !117, size: 128, offset: 8512)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2898, file: !1855, line: 860, baseType: !42, size: 32, offset: 8640)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2898, file: !1855, line: 861, baseType: !117, size: 128, offset: 8704)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2898, file: !1855, line: 873, baseType: !3093, size: 256, offset: 8832)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1855, line: 376, size: 256, elements: !3094)
!3094 = !{!3095, !3096, !3097, !3098}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3093, file: !1855, line: 381, baseType: !59, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3093, file: !1855, line: 384, baseType: !478, size: 64, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3093, file: !1855, line: 389, baseType: !478, size: 64, offset: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3093, file: !1855, line: 392, baseType: !478, size: 64, offset: 192)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2898, file: !1855, line: 875, baseType: !117, size: 128, offset: 9088)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2898, file: !1855, line: 877, baseType: !3101, size: 320, offset: 9216)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3102, line: 86, size: 320, elements: !3103)
!3102 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3103 = !{!3104, !3105, !3106}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3101, file: !3102, line: 87, baseType: !42, size: 32)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3101, file: !3102, line: 88, baseType: !117, size: 128, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3101, file: !3102, line: 89, baseType: !117, size: 128, offset: 192)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2898, file: !1855, line: 878, baseType: !876, size: 192, align: 64, offset: 9536)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2898, file: !1855, line: 881, baseType: !1408, size: 64, offset: 9728)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2898, file: !1855, line: 882, baseType: !1408, size: 64, offset: 9792)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2898, file: !1855, line: 884, baseType: !42, size: 32, offset: 9856)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2898, file: !1855, line: 885, baseType: !42, size: 32, offset: 9888)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2898, file: !1855, line: 886, baseType: !42, size: 32, offset: 9920)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2898, file: !1855, line: 888, baseType: !42, size: 32, offset: 9952)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2898, file: !1855, line: 890, baseType: !59, size: 64, offset: 9984)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2898, file: !1855, line: 893, baseType: !7, size: 32, offset: 10048)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2898, file: !1855, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2898, file: !1855, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2898, file: !1855, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2898, file: !1855, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2898, file: !1855, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2898, file: !1855, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2898, file: !1855, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2898, file: !1855, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2898, file: !1855, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2898, file: !1855, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2898, file: !1855, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2898, file: !1855, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2898, file: !1855, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2898, file: !1855, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2898, file: !1855, line: 969, baseType: !59, size: 64, offset: 10176)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2898, file: !1855, line: 971, baseType: !3132, size: 448, offset: 10240)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !240, line: 25, size: 448, elements: !3133)
!3133 = !{!3134, !3135, !3140}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3132, file: !240, line: 26, baseType: !59, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3132, file: !240, line: 27, baseType: !3136, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!364, !3139}
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, scope: !3132, file: !240, line: 28, baseType: !3141, size: 320, offset: 128)
!3141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3132, file: !240, line: 28, size: 320, elements: !3142)
!3142 = !{!3143, !3153, !3178}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3141, file: !240, line: 37, baseType: !3144, size: 320)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3141, file: !240, line: 30, size: 320, elements: !3145)
!3145 = !{!3146, !3148, !3149, !3150, !3151, !3152}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3144, file: !240, line: 31, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3144, file: !240, line: 32, baseType: !472, size: 32, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3144, file: !240, line: 33, baseType: !472, size: 32, offset: 96)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3144, file: !240, line: 34, baseType: !472, size: 32, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3144, file: !240, line: 35, baseType: !476, size: 64, offset: 192)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3144, file: !240, line: 36, baseType: !3147, size: 64, offset: 256)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3141, file: !240, line: 47, baseType: !3154, size: 192)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3141, file: !240, line: 39, size: 192, elements: !3155)
!3155 = !{!3156, !3157, !3158, !3177}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3154, file: !240, line: 40, baseType: !2445, size: 32)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3154, file: !240, line: 41, baseType: !239, size: 32, offset: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, scope: !3154, file: !240, line: 42, baseType: !3159, size: 64, offset: 64)
!3159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3154, file: !240, line: 42, size: 64, elements: !3160)
!3160 = !{!3161, !3169}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3159, file: !240, line: 43, baseType: !3162, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3164, line: 7, size: 128, elements: !3165)
!3164 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3165 = !{!3166, !3168}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3163, file: !3164, line: 8, baseType: !3167, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !57, line: 93, baseType: !63)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3163, file: !3164, line: 9, baseType: !63, size: 64, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3159, file: !240, line: 44, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3172, line: 7, size: 64, elements: !3173)
!3172 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3173 = !{!3174, !3176}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3171, file: !3172, line: 8, baseType: !3175, size: 32)
!3175 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3172, line: 5, baseType: !869)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3171, file: !3172, line: 9, baseType: !869, size: 32, offset: 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3154, file: !240, line: 46, baseType: !476, size: 64, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3141, file: !240, line: 55, baseType: !3179, size: 256)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3141, file: !240, line: 49, size: 256, elements: !3180)
!3180 = !{!3181, !3184, !3185, !3186, !3187}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3179, file: !240, line: 50, baseType: !3182, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !240, line: 14, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3179, file: !240, line: 51, baseType: !42, size: 32, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3179, file: !240, line: 52, baseType: !42, size: 32, offset: 96)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3179, file: !240, line: 53, baseType: !59, size: 64, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3179, file: !240, line: 54, baseType: !59, size: 64, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2898, file: !1855, line: 973, baseType: !3189, size: 32, offset: 10688)
!3189 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !45, line: 27, baseType: !3190)
!3190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !57, line: 28, baseType: !42)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2898, file: !1855, line: 974, baseType: !3189, size: 32, offset: 10720)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2898, file: !1855, line: 978, baseType: !59, size: 64, offset: 10752)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2898, file: !1855, line: 987, baseType: !2897, size: 64, offset: 10816)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2898, file: !1855, line: 990, baseType: !2897, size: 64, offset: 10880)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2898, file: !1855, line: 995, baseType: !117, size: 128, offset: 10944)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2898, file: !1855, line: 996, baseType: !117, size: 128, offset: 11072)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2898, file: !1855, line: 997, baseType: !2897, size: 64, offset: 11200)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2898, file: !1855, line: 1005, baseType: !117, size: 128, offset: 11264)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2898, file: !1855, line: 1006, baseType: !117, size: 128, offset: 11392)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2898, file: !1855, line: 1009, baseType: !801, size: 64, offset: 11520)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2898, file: !1855, line: 1010, baseType: !3202, size: 512, offset: 11584)
!3202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 512, elements: !814)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2898, file: !1855, line: 1011, baseType: !117, size: 128, offset: 12096)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2898, file: !1855, line: 1012, baseType: !117, size: 128, offset: 12224)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2898, file: !1855, line: 1014, baseType: !1113, size: 64, offset: 12352)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2898, file: !1855, line: 1017, baseType: !685, size: 64, offset: 12416)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2898, file: !1855, line: 1020, baseType: !685, size: 64, offset: 12480)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2898, file: !1855, line: 1023, baseType: !40, size: 64, offset: 12544)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2898, file: !1855, line: 1025, baseType: !476, size: 64, offset: 12608)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2898, file: !1855, line: 1026, baseType: !476, size: 64, offset: 12672)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2898, file: !1855, line: 1031, baseType: !476, size: 64, offset: 12736)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2898, file: !1855, line: 1032, baseType: !3213, size: 192, offset: 12800)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1855, line: 324, size: 192, elements: !3214)
!3214 = !{!3215, !3216, !3217}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3213, file: !1855, line: 326, baseType: !476, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3213, file: !1855, line: 327, baseType: !476, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3213, file: !1855, line: 328, baseType: !716, size: 32, offset: 128)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2898, file: !1855, line: 1041, baseType: !59, size: 64, offset: 12992)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2898, file: !1855, line: 1042, baseType: !59, size: 64, offset: 13056)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2898, file: !1855, line: 1045, baseType: !476, size: 64, offset: 13120)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2898, file: !1855, line: 1048, baseType: !476, size: 64, offset: 13184)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2898, file: !1855, line: 1051, baseType: !59, size: 64, offset: 13248)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2898, file: !1855, line: 1052, baseType: !59, size: 64, offset: 13312)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2898, file: !1855, line: 1055, baseType: !3225, size: 640, offset: 13376)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3226, line: 132, size: 640, elements: !3227)
!3226 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3227 = !{!3228, !3234, !3235}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3225, file: !3226, line: 133, baseType: !3229, size: 576)
!3229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3230, size: 576, elements: !330)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3226, line: 117, size: 192, elements: !3231)
!3231 = !{!3232, !3233}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3230, file: !3226, line: 118, baseType: !476, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3230, file: !3226, line: 119, baseType: !2454, size: 128, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3225, file: !3226, line: 134, baseType: !7, size: 32, offset: 576)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3225, file: !3226, line: 135, baseType: !7, size: 32, offset: 608)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2898, file: !1855, line: 1058, baseType: !3237, size: 448, offset: 14016)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3226, line: 144, size: 448, elements: !3238)
!3238 = !{!3239, !3240, !3241}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3237, file: !3226, line: 145, baseType: !760, size: 128, align: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3237, file: !3226, line: 146, baseType: !703, size: 256, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3237, file: !3226, line: 147, baseType: !7, size: 32, offset: 384)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2898, file: !1855, line: 1064, baseType: !834, size: 64, offset: 14464)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2898, file: !1855, line: 1067, baseType: !834, size: 64, offset: 14528)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2898, file: !1855, line: 1070, baseType: !834, size: 64, offset: 14592)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2898, file: !1855, line: 1074, baseType: !861, size: 64, offset: 14656)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2898, file: !1855, line: 1084, baseType: !3247, size: 128, offset: 14720)
!3247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 128, elements: !2281)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2898, file: !1855, line: 1086, baseType: !3249, size: 64, offset: 14848)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1855, line: 55, flags: DIFlagFwdDecl)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2898, file: !1855, line: 1089, baseType: !3252, size: 64, offset: 14912)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3253, line: 12, size: 64, elements: !3254)
!3253 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3254 = !{!3255}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3252, file: !3253, line: 13, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3253, line: 8, flags: DIFlagFwdDecl)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2898, file: !1855, line: 1090, baseType: !3259, size: 128, offset: 14976)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3260, line: 13, size: 128, elements: !3261)
!3260 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3261 = !{!3262}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3259, file: !3260, line: 14, baseType: !117, size: 128)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2898, file: !1855, line: 1097, baseType: !3264, size: 64, offset: 15104)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1855, line: 50, flags: DIFlagFwdDecl)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2898, file: !1855, line: 1100, baseType: !3267, size: 64, offset: 15168)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1855, line: 1100, flags: DIFlagFwdDecl)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2898, file: !1855, line: 1103, baseType: !3270, size: 64, offset: 15232)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1855, line: 53, flags: DIFlagFwdDecl)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2898, file: !1855, line: 1107, baseType: !3273, size: 64, offset: 15296)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3275, line: 31, size: 576, elements: !3276)
!3275 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3276 = !{!3277, !3278, !3281, !3284, !3287, !3288, !3291, !3294, !3295}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3274, file: !3275, line: 32, baseType: !805, size: 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3274, file: !3275, line: 33, baseType: !3279, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3275, line: 9, flags: DIFlagFwdDecl)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3274, file: !3275, line: 34, baseType: !3282, size: 64, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3275, line: 10, flags: DIFlagFwdDecl)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3274, file: !3275, line: 35, baseType: !3285, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3275, line: 8, flags: DIFlagFwdDecl)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3274, file: !3275, line: 36, baseType: !825, size: 64, offset: 256)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3274, file: !3275, line: 37, baseType: !3289, size: 64, offset: 320)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !863, line: 34, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3274, file: !3275, line: 38, baseType: !3292, size: 64, offset: 384)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3275, line: 38, flags: DIFlagFwdDecl)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3274, file: !3275, line: 39, baseType: !3292, size: 64, offset: 448)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3274, file: !3275, line: 40, baseType: !3296, size: 64, offset: 512)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3298, line: 771, size: 384, elements: !3299)
!3298 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!3299 = !{!3300, !3301, !3302, !3303}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3297, file: !3298, line: 772, baseType: !1059, size: 192)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3297, file: !3298, line: 773, baseType: !1026, size: 64, offset: 192)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3297, file: !3298, line: 774, baseType: !1161, size: 64, offset: 256)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3297, file: !3298, line: 775, baseType: !3304, size: 64, offset: 320)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3306, line: 209, size: 4736, elements: !3307)
!3306 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3307 = !{!3308, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3305, file: !3306, line: 215, baseType: !3309, size: 896)
!3309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3310, size: 896, elements: !3457)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3306, line: 152, size: 1600, elements: !3312)
!3312 = !{!3313, !3508, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3641}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3311, file: !3306, line: 154, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3306, line: 389, size: 7872, elements: !3316)
!3316 = !{!3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3420, !3426, !3427, !3431, !3432, !3433, !3434, !3435, !3436, !3454, !3455, !3459, !3460, !3461, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3495, !3498, !3499, !3506}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3315, file: !3306, line: 391, baseType: !3311, size: 1600)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3315, file: !3306, line: 393, baseType: !59, size: 64, offset: 1600)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3315, file: !3306, line: 401, baseType: !42, size: 32, offset: 1664)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3315, file: !3306, line: 404, baseType: !42, size: 32, offset: 1696)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3315, file: !3306, line: 417, baseType: !42, size: 32, offset: 1728)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3315, file: !3306, line: 418, baseType: !42, size: 32, offset: 1760)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3315, file: !3306, line: 419, baseType: !42, size: 32, offset: 1792)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3315, file: !3306, line: 432, baseType: !42, size: 32, offset: 1824)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3315, file: !3306, line: 433, baseType: !42, size: 32, offset: 1856)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3315, file: !3306, line: 434, baseType: !42, size: 32, offset: 1888)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3315, file: !3306, line: 436, baseType: !42, size: 32, offset: 1920)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3315, file: !3306, line: 439, baseType: !7, size: 32, offset: 1952)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3315, file: !3306, line: 441, baseType: !3330, size: 64, offset: 1984)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !576, line: 190, size: 1152, elements: !3332)
!3332 = !{!3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3412, !3413, !3414, !3415, !3416, !3419}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3331, file: !576, line: 191, baseType: !69, size: 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3331, file: !576, line: 192, baseType: !69, size: 32, offset: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3331, file: !576, line: 202, baseType: !3330, size: 64, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3331, file: !576, line: 203, baseType: !36, size: 64, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3331, file: !576, line: 205, baseType: !876, size: 192, align: 64, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3331, file: !576, line: 207, baseType: !1523, size: 64, offset: 384)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3331, file: !576, line: 208, baseType: !7, size: 32, offset: 448)
!3340 = !DIDerivedType(tag: DW_TAG_member, scope: !3331, file: !576, line: 209, baseType: !3341, size: 256, offset: 512)
!3341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3331, file: !576, line: 209, size: 256, elements: !3342)
!3342 = !{!3343, !3352, !3356}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3341, file: !576, line: 210, baseType: !3344, size: 256)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !576, line: 153, size: 256, elements: !3345)
!3345 = !{!3346, !3347, !3348, !3351}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3344, file: !576, line: 154, baseType: !59, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3344, file: !576, line: 156, baseType: !1156, size: 64, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3344, file: !576, line: 162, baseType: !3349, size: 64, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !576, line: 162, flags: DIFlagFwdDecl)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3344, file: !576, line: 167, baseType: !59, size: 64, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3341, file: !576, line: 211, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !576, line: 170, size: 64, elements: !3354)
!3354 = !{!3355}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3353, file: !576, line: 171, baseType: !3330, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3341, file: !576, line: 212, baseType: !3357, size: 256)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !576, line: 174, size: 256, elements: !3358)
!3358 = !{!3359, !3407, !3410, !3411}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3357, file: !576, line: 175, baseType: !3360, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3362)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !576, line: 271, size: 768, elements: !3363)
!3363 = !{!3364, !3384, !3388, !3389, !3390, !3391, !3392, !3396, !3397, !3398, !3399, !3403}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3362, file: !576, line: 276, baseType: !3365, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!42, !3368}
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !576, line: 251, size: 1216, elements: !3370)
!3370 = !{!3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3369, file: !576, line: 253, baseType: !3330, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3369, file: !576, line: 254, baseType: !1218, size: 64, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3369, file: !576, line: 255, baseType: !691, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3369, file: !576, line: 256, baseType: !40, size: 64, offset: 192)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3369, file: !576, line: 259, baseType: !703, size: 256, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3369, file: !576, line: 260, baseType: !703, size: 256, offset: 512)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3369, file: !576, line: 261, baseType: !42, size: 32, offset: 768)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3369, file: !576, line: 262, baseType: !117, size: 128, offset: 832)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3369, file: !576, line: 263, baseType: !329, size: 64, offset: 960)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3369, file: !576, line: 265, baseType: !55, size: 64, offset: 1024)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3369, file: !576, line: 266, baseType: !943, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3369, file: !576, line: 267, baseType: !943, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3369, file: !576, line: 268, baseType: !1594, size: 64, offset: 1152)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3362, file: !576, line: 277, baseType: !3385, size: 64, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{null, !3368}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3362, file: !576, line: 290, baseType: !741, size: 64, offset: 128)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3362, file: !576, line: 292, baseType: !729, size: 64, offset: 192)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3362, file: !576, line: 293, baseType: !737, size: 64, offset: 256)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3362, file: !576, line: 294, baseType: !733, size: 64, offset: 320)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3362, file: !576, line: 296, baseType: !3393, size: 64, offset: 384)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!361, !3368, !329, !55, !61}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3362, file: !576, line: 306, baseType: !55, size: 64, offset: 448)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3362, file: !576, line: 313, baseType: !943, size: 8, offset: 512)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3362, file: !576, line: 314, baseType: !3393, size: 64, offset: 576)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3362, file: !576, line: 317, baseType: !3400, size: 64, offset: 640)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!1805, !3368, !1807}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3362, file: !576, line: 320, baseType: !3404, size: 64, offset: 704)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!42, !3368, !1395}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3357, file: !576, line: 176, baseType: !3408, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !576, line: 35, flags: DIFlagFwdDecl)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3357, file: !576, line: 177, baseType: !61, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3357, file: !576, line: 178, baseType: !3330, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3331, file: !576, line: 215, baseType: !40, size: 64, offset: 768)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3331, file: !576, line: 221, baseType: !476, size: 64, offset: 832)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3331, file: !576, line: 223, baseType: !46, size: 16, offset: 896)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3331, file: !576, line: 224, baseType: !44, size: 16, offset: 912)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3331, file: !576, line: 225, baseType: !3417, size: 64, offset: 960)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !576, line: 36, flags: DIFlagFwdDecl)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3331, file: !576, line: 227, baseType: !760, size: 128, align: 64, offset: 1024)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3315, file: !3306, line: 442, baseType: !3421, size: 448, offset: 2048)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3306, line: 138, size: 448, elements: !3422)
!3422 = !{!3423, !3424, !3425}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3421, file: !3306, line: 140, baseType: !3330, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3421, file: !3306, line: 141, baseType: !59, size: 64, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3421, file: !3306, line: 142, baseType: !2367, size: 320, offset: 128)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3315, file: !3306, line: 443, baseType: !3421, size: 448, offset: 2496)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3315, file: !3306, line: 446, baseType: !3428, offset: 2944)
!3428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3421, elements: !3429)
!3429 = !{!3430}
!3430 = !DISubrange(count: 0)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3315, file: !3306, line: 455, baseType: !113, size: 16, offset: 2944)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3315, file: !3306, line: 456, baseType: !113, size: 16, offset: 2960)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3315, file: !3306, line: 457, baseType: !113, size: 16, offset: 2976)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3315, file: !3306, line: 458, baseType: !113, size: 16, offset: 2992)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3315, file: !3306, line: 461, baseType: !3309, size: 896, offset: 3008)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3315, file: !3306, line: 463, baseType: !3437, size: 64, offset: 3904)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3306, line: 537, size: 41664, elements: !3439)
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3453}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3438, file: !3306, line: 538, baseType: !3349, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3438, file: !3306, line: 541, baseType: !7, size: 32, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3438, file: !3306, line: 544, baseType: !42, size: 32, offset: 96)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3438, file: !3306, line: 547, baseType: !117, size: 128, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3438, file: !3306, line: 548, baseType: !760, size: 128, align: 64, offset: 256)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3438, file: !3306, line: 555, baseType: !3315, size: 7872, offset: 384)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3438, file: !3306, line: 558, baseType: !3314, size: 64, offset: 8256)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3438, file: !3306, line: 561, baseType: !69, size: 32, offset: 8320)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3438, file: !3306, line: 564, baseType: !7, size: 32, offset: 8352)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3438, file: !3306, line: 567, baseType: !3450, size: 32768, offset: 8384)
!3450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32768, elements: !3451)
!3451 = !{!3452}
!3452 = !DISubrange(count: 4096)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3438, file: !3306, line: 570, baseType: !2822, size: 512, offset: 41152)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3315, file: !3306, line: 469, baseType: !117, size: 128, offset: 3968)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3315, file: !3306, line: 478, baseType: !3456, size: 1792, offset: 4096)
!3456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 1792, elements: !3457)
!3457 = !{!3458}
!3458 = !DISubrange(count: 14)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3315, file: !3306, line: 487, baseType: !3314, size: 64, offset: 5888)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3315, file: !3306, line: 488, baseType: !3314, size: 64, offset: 5952)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3315, file: !3306, line: 491, baseType: !3462, size: 64, offset: 6016)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3306, line: 327, size: 896, elements: !3464)
!3464 = !{!3465, !3468, !3478, !3479, !3480, !3481, !3482}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3463, file: !3306, line: 332, baseType: !3466)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3467, line: 64, elements: !604)
!3467 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3463, file: !3306, line: 333, baseType: !3469, size: 192)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3306, line: 299, size: 192, elements: !3470)
!3470 = !{!3471}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3469, file: !3306, line: 300, baseType: !3472, size: 192)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3473, line: 17, size: 192, elements: !3474)
!3473 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3474 = !{!3475, !3476, !3477}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3472, file: !3473, line: 18, baseType: !476, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3472, file: !3473, line: 19, baseType: !476, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3472, file: !3473, line: 20, baseType: !478, size: 64, offset: 128)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3463, file: !3306, line: 339, baseType: !3469, size: 192, offset: 192)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3463, file: !3306, line: 347, baseType: !3469, size: 192, offset: 384)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3463, file: !3306, line: 353, baseType: !3469, size: 192, offset: 576)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3463, file: !3306, line: 366, baseType: !3314, size: 64, offset: 768)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3463, file: !3306, line: 367, baseType: !3314, size: 64, offset: 832)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3315, file: !3306, line: 492, baseType: !117, size: 128, offset: 6080)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3315, file: !3306, line: 495, baseType: !3469, size: 192, offset: 6208)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3315, file: !3306, line: 496, baseType: !3469, size: 192, offset: 6400)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3315, file: !3306, line: 497, baseType: !3213, size: 192, offset: 6592)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3315, file: !3306, line: 503, baseType: !117, size: 128, offset: 6784)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3315, file: !3306, line: 504, baseType: !703, size: 256, offset: 6912)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3315, file: !3306, line: 507, baseType: !74, size: 192, offset: 7168)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3315, file: !3306, line: 510, baseType: !1075, size: 256, offset: 7360)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3315, file: !3306, line: 513, baseType: !3492, size: 64, offset: 7616)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3494, line: 214, elements: !604)
!3494 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3315, file: !3306, line: 516, baseType: !3496, offset: 7680)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3497, line: 76, elements: !604)
!3497 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3315, file: !3306, line: 519, baseType: !69, size: 32, offset: 7680)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3315, file: !3306, line: 522, baseType: !3500, size: 128, offset: 7712)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3306, line: 370, size: 128, elements: !3501)
!3501 = !{!3502, !3503, !3504, !3505}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3500, file: !3306, line: 372, baseType: !943, size: 8)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3500, file: !3306, line: 375, baseType: !42, size: 32, offset: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3500, file: !3306, line: 380, baseType: !42, size: 32, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3500, file: !3306, line: 386, baseType: !42, size: 32, offset: 96)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3315, file: !3306, line: 529, baseType: !3507, offset: 7872)
!3507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3314, elements: !827)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3311, file: !3306, line: 157, baseType: !3509, size: 64, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3306, line: 669, size: 1984, elements: !3511)
!3511 = !{!3512, !3516, !3520, !3524, !3525, !3526, !3527, !3531, !3535, !3536, !3542, !3546, !3547, !3551, !3555, !3559, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3586, !3587, !3624, !3625}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3510, file: !3306, line: 670, baseType: !3513, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!3310, !3310}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3510, file: !3306, line: 671, baseType: !3517, size: 64, offset: 64)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!42, !3310}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3510, file: !3306, line: 672, baseType: !3521, size: 64, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{null, !3310}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3510, file: !3306, line: 673, baseType: !3521, size: 64, offset: 192)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3510, file: !3306, line: 674, baseType: !3521, size: 64, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3510, file: !3306, line: 675, baseType: !3521, size: 64, offset: 320)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3510, file: !3306, line: 676, baseType: !3528, size: 64, offset: 384)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{null, !3310, !42}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3510, file: !3306, line: 677, baseType: !3532, size: 64, offset: 448)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!42, !691, !3310}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3510, file: !3306, line: 679, baseType: !3532, size: 64, offset: 512)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3510, file: !3306, line: 682, baseType: !3537, size: 64, offset: 576)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!42, !3540}
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3306, line: 30, flags: DIFlagFwdDecl)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3510, file: !3306, line: 683, baseType: !3543, size: 64, offset: 640)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{null, !3540}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3510, file: !3306, line: 684, baseType: !3543, size: 64, offset: 704)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3510, file: !3306, line: 685, baseType: !3548, size: 64, offset: 768)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{null}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3510, file: !3306, line: 686, baseType: !3552, size: 64, offset: 832)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!42, !2897, !3304}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3510, file: !3306, line: 688, baseType: !3556, size: 64, offset: 896)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{null, !2897, !3304}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3510, file: !3306, line: 689, baseType: !3560, size: 64, offset: 960)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{null, !2897}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3510, file: !3306, line: 690, baseType: !3560, size: 64, offset: 1024)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3510, file: !3306, line: 691, baseType: !3560, size: 64, offset: 1088)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3510, file: !3306, line: 692, baseType: !3521, size: 64, offset: 1152)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3510, file: !3306, line: 694, baseType: !943, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3510, file: !3306, line: 707, baseType: !943, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3510, file: !3306, line: 719, baseType: !943, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3510, file: !3306, line: 722, baseType: !42, size: 32, offset: 1248)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3510, file: !3306, line: 723, baseType: !36, size: 64, offset: 1280)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3510, file: !3306, line: 726, baseType: !36, size: 64, offset: 1344)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3510, file: !3306, line: 729, baseType: !3437, size: 64, offset: 1408)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3510, file: !3306, line: 732, baseType: !3574, size: 192, offset: 1472)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3575, line: 19, size: 192, elements: !3576)
!3575 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3576 = !{!3577, !3584, !3585}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3574, file: !3575, line: 20, baseType: !3578, size: 128)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3579, line: 296, size: 128, elements: !3580)
!3579 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3580 = !{!3581, !3582, !3583}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3578, file: !3579, line: 297, baseType: !79, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3578, file: !3579, line: 299, baseType: !1660, size: 32, offset: 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3578, file: !3579, line: 300, baseType: !40, size: 64, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3574, file: !3575, line: 21, baseType: !7, size: 32, offset: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3574, file: !3575, line: 22, baseType: !7, size: 32, offset: 160)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3510, file: !3306, line: 738, baseType: !117, size: 128, offset: 1664)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3510, file: !3306, line: 744, baseType: !3588, size: 64, offset: 1792)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3306, line: 580, size: 1728, elements: !3590)
!3590 = !{!3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3600, !3601, !3602, !3606, !3610, !3611, !3612, !3613, !3614, !3618, !3622, !3623}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3589, file: !3306, line: 586, baseType: !2822, size: 512)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3589, file: !3306, line: 587, baseType: !59, size: 64, offset: 512)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3589, file: !3306, line: 593, baseType: !55, size: 64, offset: 576)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3589, file: !3306, line: 596, baseType: !7, size: 32, offset: 640)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3589, file: !3306, line: 604, baseType: !7, size: 32, offset: 672)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3589, file: !3306, line: 610, baseType: !3509, size: 64, offset: 704)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3589, file: !3306, line: 611, baseType: !117, size: 128, offset: 768)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3589, file: !3306, line: 612, baseType: !3599, size: 64, offset: 896)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3589, file: !3306, line: 614, baseType: !3365, size: 64, offset: 960)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3589, file: !3306, line: 615, baseType: !3385, size: 64, offset: 1024)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3589, file: !3306, line: 621, baseType: !3603, size: 64, offset: 1088)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!476, !3310, !3588}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3589, file: !3306, line: 625, baseType: !3607, size: 64, offset: 1152)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!713, !3310, !3588}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3589, file: !3306, line: 628, baseType: !741, size: 64, offset: 1216)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3589, file: !3306, line: 631, baseType: !729, size: 64, offset: 1280)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3589, file: !3306, line: 632, baseType: !737, size: 64, offset: 1344)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3589, file: !3306, line: 633, baseType: !733, size: 64, offset: 1408)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3589, file: !3306, line: 640, baseType: !3615, size: 64, offset: 1472)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!42, !3310, !3588, !476}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3589, file: !3306, line: 645, baseType: !3619, size: 64, offset: 1536)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!42, !3310, !3588, !713}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3589, file: !3306, line: 654, baseType: !3393, size: 64, offset: 1600)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3589, file: !3306, line: 657, baseType: !3400, size: 64, offset: 1664)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3510, file: !3306, line: 745, baseType: !3588, size: 64, offset: 1856)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3510, file: !3306, line: 754, baseType: !7, size: 32, offset: 1920)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3311, file: !3306, line: 160, baseType: !1348, size: 128, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3311, file: !3306, line: 163, baseType: !117, size: 128, offset: 256)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3311, file: !3306, line: 164, baseType: !117, size: 128, offset: 384)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3311, file: !3306, line: 167, baseType: !117, size: 128, offset: 512)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3311, file: !3306, line: 173, baseType: !42, size: 32, offset: 640)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3311, file: !3306, line: 175, baseType: !7, size: 32, offset: 672)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3311, file: !3306, line: 183, baseType: !476, size: 64, offset: 704)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3311, file: !3306, line: 189, baseType: !69, size: 32, offset: 768)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3311, file: !3306, line: 192, baseType: !1075, size: 256, offset: 832)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3311, file: !3306, line: 193, baseType: !3636, size: 448, offset: 1088)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1076, line: 120, size: 448, elements: !3637)
!3637 = !{!3638, !3639, !3640}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3636, file: !1076, line: 121, baseType: !1075, size: 256)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3636, file: !1076, line: 122, baseType: !760, size: 128, align: 64, offset: 256)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3636, file: !1076, line: 125, baseType: !2813, size: 64, offset: 384)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3311, file: !3306, line: 199, baseType: !3310, size: 64, offset: 1536)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3305, file: !3306, line: 218, baseType: !805, size: 32, offset: 896)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3305, file: !3306, line: 226, baseType: !3304, size: 64, offset: 960)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3305, file: !3306, line: 229, baseType: !3314, size: 64, offset: 1024)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3305, file: !3306, line: 232, baseType: !42, size: 32, offset: 1088)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3305, file: !3306, line: 241, baseType: !117, size: 128, offset: 1152)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3305, file: !3306, line: 242, baseType: !117, size: 128, offset: 1280)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3305, file: !3306, line: 243, baseType: !117, size: 128, offset: 1408)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3305, file: !3306, line: 246, baseType: !117, size: 128, offset: 1536)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3305, file: !3306, line: 255, baseType: !3456, size: 1792, offset: 1664)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3305, file: !3306, line: 258, baseType: !117, size: 128, offset: 3456)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3305, file: !3306, line: 259, baseType: !117, size: 128, offset: 3584)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3305, file: !3306, line: 265, baseType: !596, size: 128, offset: 3712)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3305, file: !3306, line: 271, baseType: !117, size: 128, offset: 3840)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3305, file: !3306, line: 277, baseType: !117, size: 128, offset: 3968)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3305, file: !3306, line: 278, baseType: !117, size: 128, offset: 4096)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3305, file: !3306, line: 279, baseType: !117, size: 128, offset: 4224)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3305, file: !3306, line: 288, baseType: !3314, size: 64, offset: 4352)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3305, file: !3306, line: 289, baseType: !3314, size: 64, offset: 4416)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3305, file: !3306, line: 290, baseType: !3304, size: 64, offset: 4480)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3305, file: !3306, line: 293, baseType: !943, size: 8, offset: 4544)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3305, file: !3306, line: 296, baseType: !760, size: 128, align: 64, offset: 4608)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2898, file: !1855, line: 1110, baseType: !3664, size: 64, offset: 15360)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3666, line: 93, size: 8768, elements: !3667)
!3666 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3667 = !{!3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3718, !3727, !3728, !3730, !3731, !3732, !3735, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3773, !3774, !3781, !3791, !3853, !3854, !3857, !3858, !3859, !3860, !3861, !3862}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3665, file: !3666, line: 94, baseType: !805, size: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3665, file: !3666, line: 95, baseType: !69, size: 32, offset: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3665, file: !3666, line: 96, baseType: !42, size: 32, offset: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3665, file: !3666, line: 97, baseType: !42, size: 32, offset: 96)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3665, file: !3666, line: 98, baseType: !117, size: 128, offset: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3665, file: !3666, line: 100, baseType: !74, size: 192, offset: 256)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3665, file: !3666, line: 103, baseType: !2897, size: 64, offset: 448)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3665, file: !3666, line: 106, baseType: !3676, size: 192, offset: 512)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3677, line: 32, size: 192, elements: !3678)
!3677 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3678 = !{!3679, !3680}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3676, file: !3677, line: 33, baseType: !117, size: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3676, file: !3677, line: 34, baseType: !3681, size: 64, offset: 128)
!3681 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3682, line: 25, baseType: !3683)
!3682 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3682, line: 23, size: 64, elements: !3684)
!3684 = !{!3685}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3683, file: !3682, line: 24, baseType: !3060, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3665, file: !3666, line: 109, baseType: !592, size: 64, offset: 704)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3665, file: !3666, line: 112, baseType: !42, size: 32, offset: 768)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3665, file: !3666, line: 114, baseType: !42, size: 32, offset: 800)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3665, file: !3666, line: 115, baseType: !2897, size: 64, offset: 832)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3665, file: !3666, line: 118, baseType: !42, size: 32, offset: 896)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3665, file: !3666, line: 119, baseType: !7, size: 32, offset: 928)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3665, file: !3666, line: 121, baseType: !3693, size: 64, offset: 960)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3666, line: 80, size: 448, elements: !3695)
!3695 = !{!3696, !3697, !3703}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3694, file: !3666, line: 81, baseType: !69, size: 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3694, file: !3666, line: 82, baseType: !3698, size: 128, offset: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3666, line: 75, size: 128, elements: !3699)
!3699 = !{!3700, !3701}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3698, file: !3666, line: 76, baseType: !2897, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3698, file: !3666, line: 77, baseType: !3702, size: 64, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3694, file: !3666, line: 83, baseType: !1114, size: 256, offset: 192)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3665, file: !3666, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3665, file: !3666, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3665, file: !3666, line: 138, baseType: !7, size: 32, offset: 1056)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3665, file: !3666, line: 139, baseType: !117, size: 128, offset: 1088)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3665, file: !3666, line: 142, baseType: !2400, size: 512, offset: 1216)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3665, file: !3666, line: 143, baseType: !2380, size: 64, offset: 1728)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3665, file: !3666, line: 150, baseType: !3711, size: 256, offset: 1792)
!3711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3712, size: 256, elements: !3716)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3666, line: 38, size: 128, elements: !3713)
!3713 = !{!3714, !3715}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3712, file: !3666, line: 39, baseType: !476, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3712, file: !3666, line: 40, baseType: !476, size: 64, offset: 64)
!3716 = !{!3717}
!3717 = !DISubrange(count: 2)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3665, file: !3666, line: 156, baseType: !3719, size: 192, offset: 2048)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3666, line: 66, size: 192, elements: !3720)
!3720 = !{!3721}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3719, file: !3666, line: 67, baseType: !3722, size: 192)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3666, line: 47, size: 192, elements: !3723)
!3723 = !{!3724, !3725, !3726}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3722, file: !3666, line: 48, baseType: !709, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3722, file: !3666, line: 49, baseType: !709, size: 64, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3722, file: !3666, line: 50, baseType: !709, size: 64, offset: 128)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3665, file: !3666, line: 160, baseType: !3225, size: 640, offset: 2240)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3665, file: !3666, line: 163, baseType: !3729, size: 256, offset: 2880)
!3729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !801, size: 256, elements: !814)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3665, file: !3666, line: 169, baseType: !801, size: 64, offset: 3136)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3665, file: !3666, line: 172, baseType: !42, size: 32, offset: 3200)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3665, file: !3666, line: 174, baseType: !3733, size: 64, offset: 3264)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3666, line: 174, flags: DIFlagFwdDecl)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3665, file: !3666, line: 185, baseType: !3736, size: 64, offset: 3328)
!3736 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !445, line: 860, baseType: !3737)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !445, line: 853, size: 64, elements: !3738)
!3738 = !{!3739, !3740}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3737, file: !445, line: 858, baseType: !444, size: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3737, file: !445, line: 859, baseType: !79, size: 32, offset: 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3665, file: !3666, line: 186, baseType: !476, size: 64, offset: 3392)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3665, file: !3666, line: 186, baseType: !476, size: 64, offset: 3456)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3665, file: !3666, line: 186, baseType: !476, size: 64, offset: 3520)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3665, file: !3666, line: 186, baseType: !476, size: 64, offset: 3584)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3665, file: !3666, line: 187, baseType: !476, size: 64, offset: 3648)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3665, file: !3666, line: 188, baseType: !476, size: 64, offset: 3712)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3665, file: !3666, line: 189, baseType: !3213, size: 192, offset: 3776)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3665, file: !3666, line: 190, baseType: !59, size: 64, offset: 3968)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3665, file: !3666, line: 190, baseType: !59, size: 64, offset: 4032)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3665, file: !3666, line: 190, baseType: !59, size: 64, offset: 4096)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3665, file: !3666, line: 190, baseType: !59, size: 64, offset: 4160)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3665, file: !3666, line: 191, baseType: !59, size: 64, offset: 4224)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3665, file: !3666, line: 191, baseType: !59, size: 64, offset: 4288)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3665, file: !3666, line: 191, baseType: !59, size: 64, offset: 4352)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3665, file: !3666, line: 191, baseType: !59, size: 64, offset: 4416)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3665, file: !3666, line: 192, baseType: !59, size: 64, offset: 4480)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3665, file: !3666, line: 192, baseType: !59, size: 64, offset: 4544)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3665, file: !3666, line: 192, baseType: !59, size: 64, offset: 4608)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3665, file: !3666, line: 192, baseType: !59, size: 64, offset: 4672)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3665, file: !3666, line: 193, baseType: !59, size: 64, offset: 4736)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3665, file: !3666, line: 193, baseType: !59, size: 64, offset: 4800)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3665, file: !3666, line: 194, baseType: !3763, size: 448, offset: 4864)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3764, line: 12, size: 448, elements: !3765)
!3764 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3765 = !{!3766, !3767, !3768, !3769, !3770, !3771, !3772}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3763, file: !3764, line: 15, baseType: !476, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3763, file: !3764, line: 17, baseType: !476, size: 64, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3763, file: !3764, line: 19, baseType: !476, size: 64, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3763, file: !3764, line: 21, baseType: !476, size: 64, offset: 192)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3763, file: !3764, line: 29, baseType: !476, size: 64, offset: 256)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3763, file: !3764, line: 35, baseType: !476, size: 64, offset: 320)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3763, file: !3764, line: 44, baseType: !476, size: 64, offset: 384)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3665, file: !3666, line: 202, baseType: !478, size: 64, offset: 5312)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3665, file: !3666, line: 213, baseType: !3775, size: 2048, offset: 5376)
!3775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3776, size: 2048, elements: !2281)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3777, line: 43, size: 128, elements: !3778)
!3777 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3778 = !{!3779, !3780}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3776, file: !3777, line: 44, baseType: !58, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3776, file: !3777, line: 45, baseType: !58, size: 64, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3665, file: !3666, line: 216, baseType: !3782, size: 448, offset: 7424)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3666, line: 30, size: 448, elements: !3783)
!3783 = !{!3784, !3785, !3786, !3787, !3788, !3789, !3790}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3782, file: !3666, line: 31, baseType: !42, size: 32)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3782, file: !3666, line: 32, baseType: !364, size: 64, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3782, file: !3666, line: 33, baseType: !59, size: 64, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3782, file: !3666, line: 34, baseType: !476, size: 64, offset: 192)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3782, file: !3666, line: 34, baseType: !476, size: 64, offset: 256)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3782, file: !3666, line: 35, baseType: !59, size: 64, offset: 320)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3782, file: !3666, line: 35, baseType: !59, size: 64, offset: 384)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3665, file: !3666, line: 219, baseType: !3792, size: 64, offset: 7872)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3794, line: 41, size: 3456, elements: !3795)
!3794 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!3795 = !{!3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3793, file: !3794, line: 47, baseType: !114, size: 16)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3793, file: !3794, line: 48, baseType: !473, size: 32, offset: 32)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3793, file: !3794, line: 54, baseType: !105, size: 8, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !3793, file: !3794, line: 55, baseType: !105, size: 8, offset: 72)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !3793, file: !3794, line: 73, baseType: !477, size: 64, align: 64, offset: 128)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !3793, file: !3794, line: 74, baseType: !477, size: 64, offset: 192)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !3793, file: !3794, line: 81, baseType: !477, size: 64, offset: 256)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !3793, file: !3794, line: 82, baseType: !477, size: 64, offset: 320)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !3793, file: !3794, line: 85, baseType: !477, size: 64, offset: 384)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !3793, file: !3794, line: 86, baseType: !477, size: 64, offset: 448)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !3793, file: !3794, line: 94, baseType: !477, size: 64, offset: 512)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !3793, file: !3794, line: 102, baseType: !477, size: 64, offset: 576)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !3793, file: !3794, line: 107, baseType: !2267, size: 256, offset: 640)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !3793, file: !3794, line: 108, baseType: !105, size: 8, align: 64, offset: 896)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !3793, file: !3794, line: 110, baseType: !3811, size: 24, offset: 904)
!3811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 24, elements: !330)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !3793, file: !3794, line: 111, baseType: !473, size: 32, align: 64, offset: 960)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !3793, file: !3794, line: 113, baseType: !473, size: 32, offset: 992)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !3793, file: !3794, line: 114, baseType: !473, size: 32, offset: 1024)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !3793, file: !3794, line: 115, baseType: !473, size: 32, offset: 1056)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !3793, file: !3794, line: 117, baseType: !473, size: 32, offset: 1088)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !3793, file: !3794, line: 118, baseType: !477, size: 64, align: 64, offset: 1152)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3793, file: !3794, line: 120, baseType: !477, size: 64, offset: 1216)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3793, file: !3794, line: 121, baseType: !477, size: 64, offset: 1280)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3793, file: !3794, line: 122, baseType: !477, size: 64, offset: 1344)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3793, file: !3794, line: 123, baseType: !477, size: 64, offset: 1408)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !3793, file: !3794, line: 133, baseType: !477, size: 64, offset: 1472)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !3793, file: !3794, line: 137, baseType: !477, size: 64, offset: 1536)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !3793, file: !3794, line: 142, baseType: !477, size: 64, offset: 1600)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !3793, file: !3794, line: 143, baseType: !477, size: 64, offset: 1664)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !3793, file: !3794, line: 146, baseType: !477, size: 64, offset: 1728)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !3793, file: !3794, line: 147, baseType: !477, size: 64, offset: 1792)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !3793, file: !3794, line: 148, baseType: !477, size: 64, offset: 1856)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !3793, file: !3794, line: 149, baseType: !477, size: 64, offset: 1920)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3793, file: !3794, line: 154, baseType: !477, size: 64, offset: 1984)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3793, file: !3794, line: 155, baseType: !477, size: 64, offset: 2048)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3793, file: !3794, line: 156, baseType: !477, size: 64, offset: 2112)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3793, file: !3794, line: 158, baseType: !477, size: 64, offset: 2176)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3793, file: !3794, line: 159, baseType: !477, size: 64, offset: 2240)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !3793, file: !3794, line: 162, baseType: !477, size: 64, offset: 2304)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !3793, file: !3794, line: 163, baseType: !477, size: 64, offset: 2368)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !3793, file: !3794, line: 164, baseType: !477, size: 64, offset: 2432)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !3793, file: !3794, line: 167, baseType: !477, size: 64, offset: 2496)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !3793, file: !3794, line: 168, baseType: !477, size: 64, offset: 2560)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !3793, file: !3794, line: 171, baseType: !477, size: 64, offset: 2624)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !3793, file: !3794, line: 172, baseType: !477, size: 64, offset: 2688)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !3793, file: !3794, line: 175, baseType: !477, size: 64, offset: 2752)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !3793, file: !3794, line: 178, baseType: !477, size: 64, offset: 2816)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !3793, file: !3794, line: 179, baseType: !477, size: 64, offset: 2880)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !3793, file: !3794, line: 182, baseType: !473, size: 32, offset: 2944)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !3793, file: !3794, line: 186, baseType: !477, size: 64, align: 64, offset: 3008)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !3793, file: !3794, line: 194, baseType: !477, size: 64, offset: 3072)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !3793, file: !3794, line: 195, baseType: !477, size: 64, offset: 3136)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !3793, file: !3794, line: 199, baseType: !477, size: 64, offset: 3200)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !3793, file: !3794, line: 200, baseType: !477, size: 64, offset: 3264)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !3793, file: !3794, line: 203, baseType: !477, size: 64, offset: 3328)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !3793, file: !3794, line: 204, baseType: !477, size: 64, offset: 3392)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3665, file: !3666, line: 222, baseType: !7, size: 32, offset: 7936)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3665, file: !3666, line: 223, baseType: !3855, size: 64, offset: 8000)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3666, line: 223, flags: DIFlagFwdDecl)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3665, file: !3666, line: 230, baseType: !943, size: 8, offset: 8064)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3665, file: !3666, line: 231, baseType: !912, size: 16, offset: 8080)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3665, file: !3666, line: 232, baseType: !912, size: 16, offset: 8096)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3665, file: !3666, line: 234, baseType: !1408, size: 64, offset: 8128)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3665, file: !3666, line: 237, baseType: !703, size: 256, offset: 8192)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3665, file: !3666, line: 243, baseType: !884, size: 320, offset: 8448)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2898, file: !1855, line: 1111, baseType: !3864, size: 64, offset: 15424)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3666, line: 20, size: 16640, elements: !3866)
!3866 = !{!3867, !3868, !3869, !3870}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3865, file: !3666, line: 21, baseType: !79, size: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3865, file: !3666, line: 22, baseType: !805, size: 32, offset: 32)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3865, file: !3666, line: 23, baseType: !74, size: 192, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3865, file: !3666, line: 24, baseType: !3871, size: 16384, offset: 256)
!3871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3872, size: 16384, elements: !334)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3677, line: 51, size: 256, elements: !3873)
!3873 = !{!3874}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3872, file: !3677, line: 52, baseType: !3875, size: 256)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3677, line: 37, size: 256, elements: !3876)
!3876 = !{!3877, !3884, !3885, !3889}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3875, file: !3677, line: 39, baseType: !3878, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3879, line: 83, baseType: !3880)
!3879 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3879, line: 82, baseType: !3882)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{null, !42}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3875, file: !3677, line: 40, baseType: !59, size: 64, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3875, file: !3677, line: 46, baseType: !3886, size: 64, offset: 128)
!3886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3879, line: 86, baseType: !3887)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3879, line: 85, baseType: !3549)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3875, file: !3677, line: 48, baseType: !3681, size: 64, offset: 192)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2898, file: !1855, line: 1112, baseType: !3681, size: 64, offset: 15488)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2898, file: !1855, line: 1113, baseType: !3681, size: 64, offset: 15552)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2898, file: !1855, line: 1115, baseType: !3681, size: 64, offset: 15616)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2898, file: !1855, line: 1116, baseType: !3676, size: 192, offset: 15680)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2898, file: !1855, line: 1117, baseType: !59, size: 64, offset: 15872)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2898, file: !1855, line: 1118, baseType: !55, size: 64, offset: 15936)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2898, file: !1855, line: 1119, baseType: !7, size: 32, offset: 16000)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2898, file: !1855, line: 1121, baseType: !763, size: 64, offset: 16064)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2898, file: !1855, line: 1125, baseType: !3899, size: 64, offset: 16128)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1855, line: 43, flags: DIFlagFwdDecl)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2898, file: !1855, line: 1127, baseType: !409, size: 32, offset: 16192)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2898, file: !1855, line: 1128, baseType: !7, size: 32, offset: 16224)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2898, file: !1855, line: 1130, baseType: !3904, size: 128, offset: 16256)
!3904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3905, line: 37, size: 128, elements: !3906)
!3905 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3906 = !{!3907, !3908, !3909}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3904, file: !3905, line: 38, baseType: !42, size: 32)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3904, file: !3905, line: 39, baseType: !69, size: 32, offset: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3904, file: !3905, line: 40, baseType: !3910, size: 64, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3905, line: 24, flags: DIFlagFwdDecl)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2898, file: !1855, line: 1131, baseType: !3913, size: 256, offset: 16384)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3914, line: 12, size: 256, elements: !3915)
!3914 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3915 = !{!3916, !3917, !3918, !3919}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3913, file: !3914, line: 13, baseType: !329, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3913, file: !3914, line: 14, baseType: !59, size: 64, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3913, file: !3914, line: 15, baseType: !59, size: 64, offset: 128)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3913, file: !3914, line: 16, baseType: !943, size: 8, offset: 192)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2898, file: !1855, line: 1134, baseType: !476, size: 64, offset: 16640)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2898, file: !1855, line: 1135, baseType: !476, size: 64, offset: 16704)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2898, file: !1855, line: 1138, baseType: !79, size: 32, offset: 16768)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2898, file: !1855, line: 1141, baseType: !716, size: 32, offset: 16800)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2898, file: !1855, line: 1143, baseType: !3925, size: 64, offset: 16832)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1855, line: 735, size: 64, elements: !3926)
!3926 = !{!3927}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3925, file: !1855, line: 736, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2898, file: !1855, line: 1147, baseType: !2457, size: 128, offset: 16896)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2898, file: !1855, line: 1149, baseType: !2897, size: 64, offset: 17024)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2898, file: !1855, line: 1151, baseType: !3932, size: 64, offset: 17088)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1855, line: 1151, flags: DIFlagFwdDecl)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2898, file: !1855, line: 1188, baseType: !40, size: 64, offset: 17152)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2898, file: !1855, line: 1191, baseType: !3936, size: 64, offset: 17216)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1855, line: 44, flags: DIFlagFwdDecl)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2898, file: !1855, line: 1194, baseType: !3939, size: 64, offset: 17280)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1855, line: 45, flags: DIFlagFwdDecl)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2898, file: !1855, line: 1197, baseType: !3942, size: 64, offset: 17344)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !3944, line: 155, size: 64, elements: !3945)
!3944 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!3945 = !{!3946}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !3943, file: !3944, line: 157, baseType: !59, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2898, file: !1855, line: 1199, baseType: !3948, size: 64, offset: 17408)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2144, line: 99, size: 128, elements: !3950)
!3950 = !{!3951, !3952, !3953}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3949, file: !2144, line: 100, baseType: !707, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3949, file: !2144, line: 101, baseType: !69, size: 32, offset: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3949, file: !2144, line: 103, baseType: !46, size: 16, offset: 96)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2898, file: !1855, line: 1202, baseType: !3955, size: 64, offset: 17472)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1855, line: 48, flags: DIFlagFwdDecl)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2898, file: !1855, line: 1205, baseType: !59, size: 64, offset: 17536)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2898, file: !1855, line: 1206, baseType: !3959, size: 64, offset: 17600)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3677, line: 14, baseType: !3961)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3677, line: 12, size: 384, elements: !3962)
!3962 = !{!3963}
!3963 = !DIDerivedType(tag: DW_TAG_member, scope: !3961, file: !3677, line: 13, baseType: !3964, size: 384)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3961, file: !3677, line: 13, size: 384, elements: !3965)
!3965 = !{!3966, !3967, !3968, !3969}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3964, file: !3677, line: 13, baseType: !42, size: 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3964, file: !3677, line: 13, baseType: !42, size: 32, offset: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3964, file: !3677, line: 13, baseType: !42, size: 32, offset: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3964, file: !3677, line: 13, baseType: !3970, size: 256, offset: 128)
!3970 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3971, line: 37, size: 256, elements: !3972)
!3971 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3972 = !{!3973, !3978, !3991, !3997, !4006, !4033, !4038}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3970, file: !3971, line: 42, baseType: !3974, size: 64)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3970, file: !3971, line: 39, size: 64, elements: !3975)
!3975 = !{!3976, !3977}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3974, file: !3971, line: 40, baseType: !3190, size: 32)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3974, file: !3971, line: 41, baseType: !415, size: 32, offset: 32)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3970, file: !3971, line: 50, baseType: !3979, size: 192)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3970, file: !3971, line: 45, size: 192, elements: !3980)
!3980 = !{!3981, !3983, !3984, !3990}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3979, file: !3971, line: 46, baseType: !3982, size: 32)
!3982 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !57, line: 95, baseType: !42)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3979, file: !3971, line: 47, baseType: !42, size: 32, offset: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3979, file: !3971, line: 48, baseType: !3985, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3971, line: 11, baseType: !3986)
!3986 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3971, line: 8, size: 64, elements: !3987)
!3987 = !{!3988, !3989}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3986, file: !3971, line: 9, baseType: !42, size: 32)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3986, file: !3971, line: 10, baseType: !40, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3979, file: !3971, line: 49, baseType: !42, size: 32, offset: 128)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3970, file: !3971, line: 57, baseType: !3992, size: 128)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3970, file: !3971, line: 53, size: 128, elements: !3993)
!3993 = !{!3994, !3995, !3996}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3992, file: !3971, line: 54, baseType: !3190, size: 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3992, file: !3971, line: 55, baseType: !415, size: 32, offset: 32)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3992, file: !3971, line: 56, baseType: !3985, size: 64, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3970, file: !3971, line: 66, baseType: !3998, size: 256)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3970, file: !3971, line: 60, size: 256, elements: !3999)
!3999 = !{!4000, !4001, !4002, !4003, !4005}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3998, file: !3971, line: 61, baseType: !3190, size: 32)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3998, file: !3971, line: 62, baseType: !415, size: 32, offset: 32)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3998, file: !3971, line: 63, baseType: !42, size: 32, offset: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3998, file: !3971, line: 64, baseType: !4004, size: 64, offset: 128)
!4004 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !57, line: 94, baseType: !363)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3998, file: !3971, line: 65, baseType: !4004, size: 64, offset: 192)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3970, file: !3971, line: 105, baseType: !4007, size: 256)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3970, file: !3971, line: 69, size: 256, elements: !4008)
!4008 = !{!4009, !4010}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4007, file: !3971, line: 70, baseType: !40, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, scope: !4007, file: !3971, line: 79, baseType: !4011, size: 192, offset: 64)
!4011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4007, file: !3971, line: 79, size: 192, elements: !4012)
!4012 = !{!4013, !4014, !4015, !4022, !4027}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4011, file: !3971, line: 81, baseType: !42, size: 32)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4011, file: !3971, line: 86, baseType: !912, size: 16)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4011, file: !3971, line: 92, baseType: !4016, size: 192)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4011, file: !3971, line: 88, size: 192, elements: !4017)
!4017 = !{!4018, !4020, !4021}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4016, file: !3971, line: 89, baseType: !4019, size: 64)
!4019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !2441)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4016, file: !3971, line: 90, baseType: !40, size: 64, offset: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4016, file: !3971, line: 91, baseType: !40, size: 64, offset: 128)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4011, file: !3971, line: 97, baseType: !4023, size: 96)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4011, file: !3971, line: 94, size: 96, elements: !4024)
!4024 = !{!4025, !4026}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4023, file: !3971, line: 95, baseType: !4019, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4023, file: !3971, line: 96, baseType: !473, size: 32, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4011, file: !3971, line: 103, baseType: !4028, size: 128)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4011, file: !3971, line: 99, size: 128, elements: !4029)
!4029 = !{!4030, !4031, !4032}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4028, file: !3971, line: 100, baseType: !59, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4028, file: !3971, line: 101, baseType: !473, size: 32, offset: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4028, file: !3971, line: 102, baseType: !473, size: 32, offset: 96)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3970, file: !3971, line: 111, baseType: !4034, size: 128)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3970, file: !3971, line: 108, size: 128, elements: !4035)
!4035 = !{!4036, !4037}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4034, file: !3971, line: 109, baseType: !364, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4034, file: !3971, line: 110, baseType: !42, size: 32, offset: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3970, file: !3971, line: 118, baseType: !4039, size: 128)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3970, file: !3971, line: 114, size: 128, elements: !4040)
!4040 = !{!4041, !4042, !4043}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4039, file: !3971, line: 115, baseType: !40, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4039, file: !3971, line: 116, baseType: !42, size: 32, offset: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4039, file: !3971, line: 117, baseType: !7, size: 32, offset: 96)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2898, file: !1855, line: 1208, baseType: !3763, size: 448, offset: 17664)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2898, file: !1855, line: 1215, baseType: !476, size: 64, offset: 18112)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2898, file: !1855, line: 1217, baseType: !476, size: 64, offset: 18176)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2898, file: !1855, line: 1219, baseType: !476, size: 64, offset: 18240)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2898, file: !1855, line: 1223, baseType: !4049, size: 64, offset: 18304)
!4049 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4050, line: 99, baseType: !4051)
!4050 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4051 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4050, line: 99, size: 64, elements: !4052)
!4052 = !{!4053}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4051, file: !4050, line: 99, baseType: !3060, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2898, file: !1855, line: 1225, baseType: !444, size: 32, offset: 18368)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2898, file: !1855, line: 1226, baseType: !42, size: 32, offset: 18400)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2898, file: !1855, line: 1227, baseType: !42, size: 32, offset: 18432)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2898, file: !1855, line: 1231, baseType: !3304, size: 64, offset: 18496)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2898, file: !1855, line: 1233, baseType: !117, size: 128, offset: 18560)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2898, file: !1855, line: 1240, baseType: !4060, size: 64, offset: 18688)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1855, line: 62, flags: DIFlagFwdDecl)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2898, file: !1855, line: 1242, baseType: !4063, size: 64, offset: 18752)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1855, line: 1242, flags: DIFlagFwdDecl)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2898, file: !1855, line: 1244, baseType: !117, size: 128, offset: 18816)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2898, file: !1855, line: 1245, baseType: !4067, size: 64, offset: 18944)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1855, line: 51, flags: DIFlagFwdDecl)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2898, file: !1855, line: 1246, baseType: !703, size: 256, offset: 19008)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2898, file: !1855, line: 1247, baseType: !7, size: 32, offset: 19264)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2898, file: !1855, line: 1250, baseType: !4072, size: 64, offset: 19328)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1855, line: 57, flags: DIFlagFwdDecl)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2898, file: !1855, line: 1251, baseType: !703, size: 256, offset: 19392)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2898, file: !1855, line: 1252, baseType: !117, size: 128, offset: 19648)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2898, file: !1855, line: 1259, baseType: !1642, size: 64, offset: 19776)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2898, file: !1855, line: 1260, baseType: !912, size: 16, offset: 19840)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2898, file: !1855, line: 1261, baseType: !912, size: 16, offset: 19856)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2898, file: !1855, line: 1314, baseType: !4080, size: 64, offset: 19904)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4082, line: 62, size: 256, align: 256, elements: !4083)
!4082 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4083 = !{!4084, !4085, !4086, !4087, !4088, !4089, !4090}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4081, file: !4082, line: 75, baseType: !473, size: 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4081, file: !4082, line: 90, baseType: !473, size: 32, offset: 32)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4081, file: !4082, line: 112, baseType: !477, size: 64, offset: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4081, file: !4082, line: 132, baseType: !473, size: 32, offset: 128)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4081, file: !4082, line: 140, baseType: !473, size: 32, offset: 160)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4081, file: !4082, line: 149, baseType: !473, size: 32, offset: 192)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4081, file: !4082, line: 154, baseType: !4091, offset: 224)
!4091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, elements: !827)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2898, file: !1855, line: 1315, baseType: !472, size: 32, offset: 19968)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2898, file: !1855, line: 1316, baseType: !472, size: 32, offset: 20000)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2898, file: !1855, line: 1321, baseType: !59, size: 64, offset: 20032)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2898, file: !1855, line: 1325, baseType: !42, size: 32, offset: 20096)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2898, file: !1855, line: 1326, baseType: !42, size: 32, offset: 20128)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2898, file: !1855, line: 1327, baseType: !42, size: 32, offset: 20160)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2898, file: !1855, line: 1328, baseType: !42, size: 32, offset: 20192)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2898, file: !1855, line: 1329, baseType: !760, size: 128, align: 64, offset: 20224)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2898, file: !1855, line: 1332, baseType: !4101, size: 128, offset: 20352)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4102, line: 51, size: 128, elements: !4103)
!4102 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4103 = !{!4104, !4109, !4110}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4101, file: !4102, line: 60, baseType: !4105, size: 64)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4106, line: 7, size: 64, elements: !4107)
!4106 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4107 = !{!4108}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4105, file: !4106, line: 12, baseType: !3057, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4101, file: !4102, line: 63, baseType: !943, size: 8, offset: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4101, file: !4102, line: 70, baseType: !943, size: 8, offset: 72)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2898, file: !1855, line: 1335, baseType: !1853, size: 64, offset: 20480)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2898, file: !1855, line: 1337, baseType: !4113, size: 128, offset: 20544)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4102, line: 39, size: 128, elements: !4114)
!4114 = !{!4115, !4116, !4117}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4113, file: !4102, line: 40, baseType: !1381, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4113, file: !4102, line: 42, baseType: !473, size: 32, offset: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4113, file: !4102, line: 43, baseType: !473, size: 32, offset: 96)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2898, file: !1855, line: 1340, baseType: !4119, size: 64, offset: 20672)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1855, line: 69, flags: DIFlagFwdDecl)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2898, file: !1855, line: 1351, baseType: !42, size: 32, offset: 20736)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2898, file: !1855, line: 1352, baseType: !42, size: 32, offset: 20768)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2898, file: !1855, line: 1354, baseType: !59, size: 64, offset: 20800)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2898, file: !1855, line: 1364, baseType: !476, size: 64, offset: 20864)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2898, file: !1855, line: 1365, baseType: !476, size: 64, offset: 20928)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2898, file: !1855, line: 1412, baseType: !59, size: 64, offset: 20992)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2898, file: !1855, line: 1453, baseType: !2139, size: 64, offset: 21056)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2898, file: !1855, line: 1457, baseType: !4129, size: 64, offset: 21120)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !246, line: 61, size: 576, elements: !4131)
!4131 = !{!4132, !4133, !4152, !4155, !4156, !4189, !4199}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4130, file: !246, line: 62, baseType: !245, size: 32)
!4133 = !DIDerivedType(tag: DW_TAG_member, scope: !4130, file: !246, line: 64, baseType: !4134, size: 192, offset: 64)
!4134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4130, file: !246, line: 64, size: 192, elements: !4135)
!4135 = !{!4136, !4147}
!4136 = !DIDerivedType(tag: DW_TAG_member, scope: !4134, file: !246, line: 65, baseType: !4137, size: 192)
!4137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4134, file: !246, line: 65, size: 192, elements: !4138)
!4138 = !{!4139, !4146}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4137, file: !246, line: 66, baseType: !4140, size: 128)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4141, line: 50, size: 128, elements: !4142)
!4141 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4142 = !{!4143, !4144, !4145}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4140, file: !4141, line: 52, baseType: !59, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4140, file: !4141, line: 54, baseType: !7, size: 32, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4140, file: !4141, line: 55, baseType: !7, size: 32, offset: 96)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4137, file: !246, line: 67, baseType: !59, size: 64, offset: 128)
!4147 = !DIDerivedType(tag: DW_TAG_member, scope: !4134, file: !246, line: 70, baseType: !4148, size: 192)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4134, file: !246, line: 70, size: 192, elements: !4149)
!4149 = !{!4150, !4151}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4148, file: !246, line: 71, baseType: !760, size: 128, align: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4148, file: !246, line: 72, baseType: !59, size: 64, offset: 128)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4130, file: !246, line: 76, baseType: !4153, size: 64, offset: 256)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !246, line: 76, flags: DIFlagFwdDecl)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4130, file: !246, line: 77, baseType: !59, size: 64, offset: 320)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4130, file: !246, line: 79, baseType: !4157, size: 64, offset: 384)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4141, line: 25, size: 256, elements: !4159)
!4159 = !{!4160, !4166, !4170}
!4160 = !DIDerivedType(tag: DW_TAG_member, scope: !4158, file: !4141, line: 26, baseType: !4161, size: 128)
!4161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4158, file: !4141, line: 26, size: 128, elements: !4162)
!4162 = !{!4163, !4165}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4161, file: !4141, line: 27, baseType: !4164, size: 128)
!4164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !2281)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4161, file: !4141, line: 28, baseType: !4164, size: 128)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4158, file: !4141, line: 31, baseType: !4167, size: 64, offset: 128)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4169)
!4169 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4141, line: 23, flags: DIFlagFwdDecl)
!4170 = !DIDerivedType(tag: DW_TAG_member, scope: !4158, file: !4141, line: 33, baseType: !4171, size: 64, offset: 192)
!4171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4158, file: !4141, line: 33, size: 64, elements: !4172)
!4172 = !{!4173, !4179, !4184}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4171, file: !4141, line: 38, baseType: !4174, size: 64)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4171, file: !4141, line: 34, size: 64, elements: !4175)
!4175 = !{!4176, !4177, !4178}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4174, file: !4141, line: 35, baseType: !869, size: 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4174, file: !4141, line: 36, baseType: !103, size: 8, offset: 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4174, file: !4141, line: 37, baseType: !103, size: 8, offset: 40)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4171, file: !4141, line: 42, baseType: !4180, size: 16)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4171, file: !4141, line: 39, size: 16, elements: !4181)
!4181 = !{!4182, !4183}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4180, file: !4141, line: 40, baseType: !103, size: 8)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4180, file: !4141, line: 41, baseType: !103, size: 8, offset: 8)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4171, file: !4141, line: 46, baseType: !4185, size: 16)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4171, file: !4141, line: 43, size: 16, elements: !4186)
!4186 = !{!4187, !4188}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4185, file: !4141, line: 44, baseType: !103, size: 8)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4185, file: !4141, line: 45, baseType: !103, size: 8, offset: 8)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4130, file: !246, line: 81, baseType: !4190, size: 64, offset: 448)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !246, line: 85, size: 384, elements: !4192)
!4192 = !{!4193, !4194, !4195, !4196, !4197, !4198}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4191, file: !246, line: 86, baseType: !4153, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4191, file: !246, line: 87, baseType: !59, size: 64, offset: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4191, file: !246, line: 88, baseType: !59, size: 64, offset: 128)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4191, file: !246, line: 89, baseType: !59, size: 64, offset: 192)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4191, file: !246, line: 90, baseType: !943, size: 8, offset: 256)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4191, file: !246, line: 92, baseType: !4190, size: 64, offset: 320)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4130, file: !246, line: 82, baseType: !7, size: 32, offset: 512)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2898, file: !1855, line: 1463, baseType: !4201, offset: 21184)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1855, line: 739, elements: !604)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2898, file: !1855, line: 1470, baseType: !760, size: 128, align: 64, offset: 21184)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2898, file: !1855, line: 1471, baseType: !805, size: 32, offset: 21312)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2898, file: !1855, line: 1472, baseType: !42, size: 32, offset: 21344)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2898, file: !1855, line: 1474, baseType: !2897, size: 64, offset: 21376)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2898, file: !1855, line: 1475, baseType: !2367, size: 320, offset: 21440)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2898, file: !1855, line: 1478, baseType: !4208, size: 64, offset: 21760)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1780, line: 49, size: 512, elements: !4210)
!4210 = !{!4211, !4212, !4213, !4214, !4215, !4217, !4218, !4219, !4221}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4209, file: !1780, line: 50, baseType: !4208, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4209, file: !1780, line: 51, baseType: !40, size: 64, offset: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4209, file: !1780, line: 52, baseType: !59, size: 64, offset: 128)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4209, file: !1780, line: 53, baseType: !59, size: 64, offset: 192)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4209, file: !1780, line: 54, baseType: !4216, size: 64, offset: 256)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4209, file: !1780, line: 56, baseType: !7, size: 32, offset: 320)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4209, file: !1780, line: 58, baseType: !7, size: 32, offset: 352)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4209, file: !1780, line: 59, baseType: !4220, size: 64, offset: 384)
!4220 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !45, line: 159, baseType: !476)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4209, file: !1780, line: 60, baseType: !1523, size: 64, offset: 448)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2898, file: !1855, line: 1482, baseType: !805, size: 32, offset: 21824)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2898, file: !1855, line: 1489, baseType: !40, size: 64, offset: 21888)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2898, file: !1855, line: 1504, baseType: !40, size: 64, offset: 21952)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2898, file: !1855, line: 1505, baseType: !477, size: 64, offset: 22016)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2898, file: !1855, line: 1506, baseType: !476, size: 64, offset: 22080)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2898, file: !1855, line: 1507, baseType: !477, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2898, file: !1855, line: 1508, baseType: !477, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2898, file: !1855, line: 1509, baseType: !477, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2898, file: !1855, line: 1510, baseType: !760, size: 128, align: 64, offset: 22208)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2898, file: !1855, line: 1511, baseType: !42, size: 32, offset: 22336)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2898, file: !1855, line: 1515, baseType: !4233, size: 64, offset: 22400)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !755, line: 56, size: 64, elements: !4234)
!4234 = !{!4235}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4233, file: !755, line: 57, baseType: !758, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2898, file: !1855, line: 1518, baseType: !4233, size: 64, offset: 22464)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2898, file: !1855, line: 1528, baseType: !760, size: 128, align: 64, offset: 22528)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2898, file: !1855, line: 1552, baseType: !4239, size: 35328, offset: 23040)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4240, line: 430, size: 35328, elements: !4241)
!4240 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4241 = !{!4242, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4271, !4272, !4273, !4274, !4275, !4276, !4279, !4280, !4281, !4282}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4239, file: !4240, line: 432, baseType: !4243, size: 192)
!4243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4244, size: 192, elements: !330)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4245, line: 16, size: 64, elements: !4246)
!4245 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4246 = !{!4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4244, file: !4245, line: 17, baseType: !113, size: 16)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4244, file: !4245, line: 18, baseType: !113, size: 16, offset: 16)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4244, file: !4245, line: 19, baseType: !113, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4244, file: !4245, line: 19, baseType: !113, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4244, file: !4245, line: 19, baseType: !113, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4244, file: !4245, line: 19, baseType: !113, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4244, file: !4245, line: 19, baseType: !113, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4244, file: !4245, line: 20, baseType: !113, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4244, file: !4245, line: 20, baseType: !113, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4244, file: !4245, line: 20, baseType: !113, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4244, file: !4245, line: 20, baseType: !113, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4244, file: !4245, line: 20, baseType: !113, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4244, file: !4245, line: 20, baseType: !113, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4239, file: !4240, line: 436, baseType: !59, size: 64, offset: 192)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4239, file: !4240, line: 440, baseType: !46, size: 16, offset: 256)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4239, file: !4240, line: 441, baseType: !46, size: 16, offset: 272)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4239, file: !4240, line: 442, baseType: !46, size: 16, offset: 288)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4239, file: !4240, line: 443, baseType: !46, size: 16, offset: 304)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4239, file: !4240, line: 447, baseType: !59, size: 64, offset: 320)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4239, file: !4240, line: 448, baseType: !59, size: 64, offset: 384)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4239, file: !4240, line: 459, baseType: !4268, size: 256, offset: 448)
!4268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4269, size: 256, elements: !814)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4240, line: 428, flags: DIFlagFwdDecl)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4239, file: !4240, line: 461, baseType: !59, size: 64, offset: 704)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4239, file: !4240, line: 463, baseType: !59, size: 64, offset: 768)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4239, file: !4240, line: 465, baseType: !59, size: 64, offset: 832)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4239, file: !4240, line: 466, baseType: !59, size: 64, offset: 896)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4239, file: !4240, line: 467, baseType: !59, size: 64, offset: 960)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4239, file: !4240, line: 473, baseType: !4277, size: 64, offset: 1024)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4240, line: 10, flags: DIFlagFwdDecl)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4239, file: !4240, line: 480, baseType: !59, size: 64, offset: 1088)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4239, file: !4240, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4239, file: !4240, line: 491, baseType: !472, size: 32, offset: 1184)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4239, file: !4240, line: 501, baseType: !4283, size: 33792, offset: 1536)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4284, line: 448, size: 33792, elements: !4285)
!4284 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4285 = !{!4286, !4287, !4288, !4448, !4449, !4455, !4456}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4283, file: !4284, line: 461, baseType: !7, size: 32)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4283, file: !4284, line: 468, baseType: !59, size: 64, offset: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4283, file: !4284, line: 476, baseType: !4289, size: 64, offset: 128)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4284, line: 356, size: 33280, align: 512, elements: !4291)
!4291 = !{!4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4290, file: !4284, line: 358, baseType: !7, size: 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4290, file: !4284, line: 361, baseType: !7, size: 32, offset: 32)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4290, file: !4284, line: 364, baseType: !476, size: 64, offset: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4290, file: !4284, line: 367, baseType: !476, size: 64, offset: 128)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4290, file: !4284, line: 370, baseType: !476, size: 64, offset: 192)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4290, file: !4284, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4290, file: !4284, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4290, file: !4284, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4290, file: !4284, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4290, file: !4284, line: 397, baseType: !4302, size: 32768, offset: 512)
!4302 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4284, line: 348, size: 32768, elements: !4303)
!4303 = !{!4304, !4319, !4356, !4433, !4446}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4302, file: !4284, line: 349, baseType: !4305, size: 896)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4284, line: 12, size: 896, elements: !4306)
!4306 = !{!4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4318}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4305, file: !4284, line: 13, baseType: !472, size: 32)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4305, file: !4284, line: 14, baseType: !472, size: 32, offset: 32)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4305, file: !4284, line: 15, baseType: !472, size: 32, offset: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4305, file: !4284, line: 16, baseType: !472, size: 32, offset: 96)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4305, file: !4284, line: 17, baseType: !472, size: 32, offset: 128)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4305, file: !4284, line: 18, baseType: !472, size: 32, offset: 160)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4305, file: !4284, line: 19, baseType: !472, size: 32, offset: 192)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4305, file: !4284, line: 22, baseType: !4315, size: 640, offset: 224)
!4315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 640, elements: !4316)
!4316 = !{!4317}
!4317 = !DISubrange(count: 20)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4305, file: !4284, line: 25, baseType: !472, size: 32, offset: 864)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4302, file: !4284, line: 350, baseType: !4320, size: 4096, align: 128)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4284, line: 34, size: 4096, align: 128, elements: !4321)
!4321 = !{!4322, !4323, !4324, !4325, !4326, !4341, !4342, !4343, !4345, !4347, !4351}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4320, file: !4284, line: 35, baseType: !113, size: 16)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4320, file: !4284, line: 36, baseType: !113, size: 16, offset: 16)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4320, file: !4284, line: 37, baseType: !113, size: 16, offset: 32)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4320, file: !4284, line: 38, baseType: !113, size: 16, offset: 48)
!4326 = !DIDerivedType(tag: DW_TAG_member, scope: !4320, file: !4284, line: 39, baseType: !4327, size: 128, offset: 64)
!4327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4320, file: !4284, line: 39, size: 128, elements: !4328)
!4328 = !{!4329, !4334}
!4329 = !DIDerivedType(tag: DW_TAG_member, scope: !4327, file: !4284, line: 40, baseType: !4330, size: 128)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4327, file: !4284, line: 40, size: 128, elements: !4331)
!4331 = !{!4332, !4333}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4330, file: !4284, line: 41, baseType: !476, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4330, file: !4284, line: 42, baseType: !476, size: 64, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, scope: !4327, file: !4284, line: 44, baseType: !4335, size: 128)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4327, file: !4284, line: 44, size: 128, elements: !4336)
!4336 = !{!4337, !4338, !4339, !4340}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4335, file: !4284, line: 45, baseType: !472, size: 32)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4335, file: !4284, line: 46, baseType: !472, size: 32, offset: 32)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4335, file: !4284, line: 47, baseType: !472, size: 32, offset: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4335, file: !4284, line: 48, baseType: !472, size: 32, offset: 96)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4320, file: !4284, line: 51, baseType: !472, size: 32, offset: 192)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4320, file: !4284, line: 52, baseType: !472, size: 32, offset: 224)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4320, file: !4284, line: 55, baseType: !4344, size: 1024, offset: 256)
!4344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 1024, elements: !485)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4320, file: !4284, line: 58, baseType: !4346, size: 2048, offset: 1280)
!4346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 2048, elements: !334)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4320, file: !4284, line: 60, baseType: !4348, size: 384, offset: 3328)
!4348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 384, elements: !4349)
!4349 = !{!4350}
!4350 = !DISubrange(count: 12)
!4351 = !DIDerivedType(tag: DW_TAG_member, scope: !4320, file: !4284, line: 62, baseType: !4352, size: 384, offset: 3712)
!4352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4320, file: !4284, line: 62, size: 384, elements: !4353)
!4353 = !{!4354, !4355}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4352, file: !4284, line: 63, baseType: !4348, size: 384)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4352, file: !4284, line: 64, baseType: !4348, size: 384)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4302, file: !4284, line: 351, baseType: !4357, size: 1088)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4284, line: 79, size: 1088, elements: !4358)
!4358 = !{!4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4432}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4357, file: !4284, line: 80, baseType: !472, size: 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4357, file: !4284, line: 81, baseType: !472, size: 32, offset: 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4357, file: !4284, line: 82, baseType: !472, size: 32, offset: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4357, file: !4284, line: 83, baseType: !472, size: 32, offset: 96)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4357, file: !4284, line: 84, baseType: !472, size: 32, offset: 128)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4357, file: !4284, line: 85, baseType: !472, size: 32, offset: 160)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4357, file: !4284, line: 86, baseType: !472, size: 32, offset: 192)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4357, file: !4284, line: 88, baseType: !4315, size: 640, offset: 224)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4357, file: !4284, line: 89, baseType: !103, size: 8, offset: 864)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4357, file: !4284, line: 90, baseType: !103, size: 8, offset: 872)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4357, file: !4284, line: 91, baseType: !103, size: 8, offset: 880)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4357, file: !4284, line: 92, baseType: !103, size: 8, offset: 888)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4357, file: !4284, line: 93, baseType: !103, size: 8, offset: 896)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4357, file: !4284, line: 94, baseType: !103, size: 8, offset: 904)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4357, file: !4284, line: 95, baseType: !4374, size: 64, offset: 960)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4376, line: 11, size: 128, elements: !4377)
!4376 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4377 = !{!4378, !4379}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4375, file: !4376, line: 12, baseType: !364, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4375, file: !4376, line: 13, baseType: !4380, size: 64, offset: 64)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4382, line: 103, size: 1344, elements: !4383)
!4382 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4383 = !{!4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4412, !4413, !4414}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4381, file: !4382, line: 109, baseType: !59, size: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4381, file: !4382, line: 110, baseType: !59, size: 64, offset: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4381, file: !4382, line: 111, baseType: !59, size: 64, offset: 128)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4381, file: !4382, line: 112, baseType: !59, size: 64, offset: 192)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4381, file: !4382, line: 113, baseType: !59, size: 64, offset: 256)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4381, file: !4382, line: 114, baseType: !59, size: 64, offset: 320)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4381, file: !4382, line: 117, baseType: !59, size: 64, offset: 384)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4381, file: !4382, line: 118, baseType: !59, size: 64, offset: 448)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4381, file: !4382, line: 119, baseType: !59, size: 64, offset: 512)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4381, file: !4382, line: 120, baseType: !59, size: 64, offset: 576)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4381, file: !4382, line: 121, baseType: !59, size: 64, offset: 640)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4381, file: !4382, line: 122, baseType: !59, size: 64, offset: 704)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4381, file: !4382, line: 123, baseType: !59, size: 64, offset: 768)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4381, file: !4382, line: 124, baseType: !59, size: 64, offset: 832)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4381, file: !4382, line: 125, baseType: !59, size: 64, offset: 896)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4381, file: !4382, line: 139, baseType: !59, size: 64, offset: 960)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4381, file: !4382, line: 142, baseType: !59, size: 64, offset: 1024)
!4401 = !DIDerivedType(tag: DW_TAG_member, scope: !4381, file: !4382, line: 144, baseType: !4402, size: 64, offset: 1088)
!4402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4381, file: !4382, line: 144, size: 64, elements: !4403)
!4403 = !{!4404, !4405, !4406}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4402, file: !4382, line: 146, baseType: !113, size: 16)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4402, file: !4382, line: 148, baseType: !476, size: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4402, file: !4382, line: 150, baseType: !4407, size: 64)
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4382, line: 59, size: 64, elements: !4408)
!4408 = !{!4409, !4410, !4411}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4407, file: !4382, line: 61, baseType: !476, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4407, file: !4382, line: 63, baseType: !476, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4407, file: !4382, line: 65, baseType: !476, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4381, file: !4382, line: 153, baseType: !59, size: 64, offset: 1152)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4381, file: !4382, line: 154, baseType: !59, size: 64, offset: 1216)
!4414 = !DIDerivedType(tag: DW_TAG_member, scope: !4381, file: !4382, line: 156, baseType: !4415, size: 64, offset: 1280)
!4415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4381, file: !4382, line: 156, size: 64, elements: !4416)
!4416 = !{!4417, !4418, !4419}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4415, file: !4382, line: 158, baseType: !113, size: 16)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4415, file: !4382, line: 160, baseType: !476, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4415, file: !4382, line: 162, baseType: !4420, size: 64)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4382, line: 69, size: 64, elements: !4421)
!4421 = !{!4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4420, file: !4382, line: 71, baseType: !476, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4420, file: !4382, line: 73, baseType: !476, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4420, file: !4382, line: 75, baseType: !476, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4420, file: !4382, line: 77, baseType: !476, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4420, file: !4382, line: 80, baseType: !476, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4420, file: !4382, line: 83, baseType: !476, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4420, file: !4382, line: 86, baseType: !476, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4420, file: !4382, line: 88, baseType: !476, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4420, file: !4382, line: 93, baseType: !476, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4420, file: !4382, line: 100, baseType: !476, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4357, file: !4284, line: 96, baseType: !472, size: 32, offset: 1024)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4302, file: !4284, line: 352, baseType: !4434, size: 4608, align: 512)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4284, line: 333, size: 4608, align: 512, elements: !4435)
!4435 = !{!4436, !4437, !4444}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4434, file: !4284, line: 334, baseType: !4320, size: 4096, align: 128)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4434, file: !4284, line: 335, baseType: !4438, size: 512, offset: 4096)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4284, line: 312, size: 512, elements: !4439)
!4439 = !{!4440, !4441, !4442}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4438, file: !4284, line: 313, baseType: !476, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4438, file: !4284, line: 314, baseType: !476, size: 64, offset: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4438, file: !4284, line: 315, baseType: !4443, size: 384, offset: 128)
!4443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 384, elements: !930)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4434, file: !4284, line: 336, baseType: !4445, offset: 4608)
!4445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, elements: !827)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4302, file: !4284, line: 353, baseType: !4447, size: 32768)
!4447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 32768, elements: !3451)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4283, file: !4284, line: 484, baseType: !4289, size: 64, offset: 192)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4283, file: !4284, line: 491, baseType: !4450, size: 128, offset: 256)
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4284, line: 404, size: 128, elements: !4451)
!4451 = !{!4452, !4453, !4454}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4450, file: !4284, line: 424, baseType: !476, size: 64)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4450, file: !4284, line: 432, baseType: !7, size: 32, offset: 64)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4450, file: !4284, line: 440, baseType: !7, size: 32, offset: 96)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4283, file: !4284, line: 498, baseType: !4450, size: 128, offset: 384)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4283, file: !4284, line: 508, baseType: !4290, size: 33280, align: 512, offset: 512)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2879, file: !2880, line: 16, baseType: !74, size: 192, offset: 512)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2879, file: !2880, line: 17, baseType: !69, size: 32, offset: 704)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !555, file: !19, line: 1240, baseType: !40, size: 64, offset: 6912)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !555, file: !19, line: 1243, baseType: !472, size: 32, offset: 6976)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !555, file: !19, line: 1245, baseType: !900, size: 64, offset: 7040)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !555, file: !19, line: 1246, baseType: !900, size: 64, offset: 7104)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !555, file: !19, line: 1248, baseType: !473, size: 32, offset: 7168)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !555, file: !19, line: 1249, baseType: !4465, size: 64, offset: 7232)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !19, line: 634, flags: DIFlagFwdDecl)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !555, file: !19, line: 1252, baseType: !2267, size: 256, offset: 7296)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !555, file: !19, line: 1253, baseType: !4469, size: 128, offset: 7552)
!4469 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4470, line: 21, baseType: !4471)
!4470 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4470, line: 19, size: 128, elements: !4472)
!4472 = !{!4473}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4471, file: !4470, line: 20, baseType: !2280, size: 128)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !555, file: !19, line: 1255, baseType: !7, size: 32, offset: 7680)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !555, file: !19, line: 1261, baseType: !703, size: 256, offset: 7744)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !555, file: !19, line: 1267, baseType: !36, size: 64, offset: 8000)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !555, file: !19, line: 1269, baseType: !501, size: 64, offset: 8064)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !555, file: !19, line: 1271, baseType: !4479, size: 448, offset: 8128)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1972, line: 63, size: 448, elements: !4480)
!4480 = !{!4481, !4486, !4487, !4488, !4489, !4490, !4491}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4479, file: !1972, line: 64, baseType: !4482, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!59, !4485, !1970}
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4479, file: !1972, line: 66, baseType: !4482, size: 64, offset: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4479, file: !1972, line: 69, baseType: !364, size: 64, offset: 128)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4479, file: !1972, line: 70, baseType: !42, size: 32, offset: 192)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4479, file: !1972, line: 71, baseType: !7, size: 32, offset: 224)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4479, file: !1972, line: 74, baseType: !117, size: 128, offset: 256)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4479, file: !1972, line: 85, baseType: !4492, size: 64, offset: 384)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !555, file: !19, line: 1274, baseType: !707, size: 64, offset: 8576)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !555, file: !19, line: 1280, baseType: !707, size: 64, offset: 8640)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !555, file: !19, line: 1283, baseType: !42, size: 32, offset: 8704)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !555, file: !19, line: 1286, baseType: !1904, size: 32, offset: 8736)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !555, file: !19, line: 1289, baseType: !2813, size: 64, offset: 8768)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !555, file: !19, line: 1290, baseType: !592, size: 64, offset: 8832)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !555, file: !19, line: 1297, baseType: !1026, size: 64, offset: 8896)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !555, file: !19, line: 1304, baseType: !4501, size: 64, offset: 8960)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4502, line: 49, size: 64, elements: !4503)
!4502 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4503 = !{!4504}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4501, file: !4502, line: 50, baseType: !4505, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4502, line: 41, size: 512, align: 512, elements: !4507)
!4507 = !{!4508, !4509, !4514}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4506, file: !4502, line: 43, baseType: !79, size: 32)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4506, file: !4502, line: 45, baseType: !4510, size: 192, offset: 64)
!4510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4502, line: 29, size: 192, elements: !4511)
!4511 = !{!4512, !4513}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4510, file: !4502, line: 30, baseType: !117, size: 128)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4510, file: !4502, line: 32, baseType: !364, size: 64, offset: 128)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4506, file: !4502, line: 46, baseType: !364, size: 64, offset: 256)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !555, file: !19, line: 1305, baseType: !4501, size: 64, offset: 9024)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !555, file: !19, line: 1306, baseType: !760, size: 128, align: 64, offset: 9088)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !555, file: !19, line: 1307, baseType: !1075, size: 256, offset: 9216)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !555, file: !19, line: 1309, baseType: !703, size: 256, offset: 9472)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !555, file: !19, line: 1314, baseType: !42, size: 32, offset: 9728)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !555, file: !19, line: 1317, baseType: !79, size: 32, align: 512, offset: 10240)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !555, file: !19, line: 1318, baseType: !117, size: 128, offset: 10304)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !555, file: !19, line: 1320, baseType: !79, size: 32, offset: 10432)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !555, file: !19, line: 1321, baseType: !117, size: 128, offset: 10496)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !549, file: !550, line: 73, baseType: !42, size: 32, offset: 128)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !549, file: !550, line: 74, baseType: !4526, size: 64, offset: 192)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !851, line: 42, flags: DIFlagFwdDecl)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !503, file: !440, line: 141, baseType: !4530, size: 64, offset: 704)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!42, !2032, !943}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !503, file: !440, line: 142, baseType: !4534, size: 64, offset: 768)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DISubroutineType(types: !4536)
!4536 = !{!438, !438, !4537}
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !439, file: !440, line: 96, baseType: !554, size: 64, offset: 832)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !439, file: !440, line: 97, baseType: !59, size: 64, offset: 896)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !439, file: !440, line: 98, baseType: !40, size: 64, offset: 960)
!4542 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !440, line: 100, baseType: !4543, size: 128, offset: 1024)
!4543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !439, file: !440, line: 100, size: 128, elements: !4544)
!4544 = !{!4545, !4546}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4543, file: !440, line: 101, baseType: !117, size: 128)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4543, file: !440, line: 102, baseType: !4547, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !439, file: !440, line: 104, baseType: !117, size: 128, offset: 1152)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !439, file: !440, line: 105, baseType: !117, size: 128, offset: 1280)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !439, file: !440, line: 113, baseType: !4551, size: 128, offset: 1408)
!4551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !439, file: !440, line: 109, size: 128, elements: !4552)
!4552 = !{!4553, !4554, !4555}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4551, file: !440, line: 110, baseType: !596, size: 128)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4551, file: !440, line: 111, baseType: !454, size: 128)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4551, file: !440, line: 112, baseType: !760, size: 128, align: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !432, file: !19, line: 1968, baseType: !4557, size: 64, offset: 64)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!36, !438, !403, !4560}
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4562, line: 10, size: 128, elements: !4563)
!4562 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4563 = !{!4564, !4565}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4561, file: !4562, line: 11, baseType: !2718, size: 64)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4561, file: !4562, line: 12, baseType: !40, size: 64, offset: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !432, file: !19, line: 1969, baseType: !4567, size: 64, offset: 128)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!42, !4526, !403, !42}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !432, file: !19, line: 1970, baseType: !4571, size: 64, offset: 192)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{!426, !403, !42, !943}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !432, file: !19, line: 1972, baseType: !4575, size: 64, offset: 256)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!42, !438, !329, !42}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !432, file: !19, line: 1974, baseType: !4579, size: 64, offset: 320)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!42, !4526, !403, !438, !44, !943}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !432, file: !19, line: 1976, baseType: !4583, size: 64, offset: 384)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!42, !438, !403, !438}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !432, file: !19, line: 1977, baseType: !4587, size: 64, offset: 448)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!42, !403, !438}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !432, file: !19, line: 1978, baseType: !4591, size: 64, offset: 512)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!42, !4526, !403, !438, !36}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !432, file: !19, line: 1980, baseType: !4595, size: 64, offset: 576)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!42, !4526, !403, !438, !44}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !432, file: !19, line: 1982, baseType: !4587, size: 64, offset: 640)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !432, file: !19, line: 1983, baseType: !4600, size: 64, offset: 704)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!42, !4526, !403, !438, !44, !559}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !432, file: !19, line: 1985, baseType: !4604, size: 64, offset: 768)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!42, !4526, !403, !438, !403, !438, !7}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !432, file: !19, line: 1987, baseType: !4608, size: 64, offset: 832)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!42, !4526, !438, !4611}
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !19, line: 226, size: 640, elements: !4613)
!4613 = !{!4614, !4615, !4616, !4626, !4635, !4636, !4641, !4642, !4643}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4612, file: !19, line: 227, baseType: !7, size: 32)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4612, file: !19, line: 228, baseType: !44, size: 16, offset: 32)
!4616 = !DIDerivedType(tag: DW_TAG_member, scope: !4612, file: !19, line: 241, baseType: !4617, size: 32, offset: 64)
!4617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4612, file: !19, line: 241, size: 32, elements: !4618)
!4618 = !{!4619, !4620}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4617, file: !19, line: 242, baseType: !409, size: 32)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4617, file: !19, line: 243, baseType: !4621, size: 32)
!4621 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4622, line: 16, baseType: !4623)
!4622 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4622, line: 14, size: 32, elements: !4624)
!4624 = !{!4625}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4623, file: !4622, line: 15, baseType: !414, size: 32)
!4626 = !DIDerivedType(tag: DW_TAG_member, scope: !4612, file: !19, line: 245, baseType: !4627, size: 32, offset: 96)
!4627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4612, file: !19, line: 245, size: 32, elements: !4628)
!4628 = !{!4629, !4630}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4627, file: !19, line: 246, baseType: !418, size: 32)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4627, file: !19, line: 247, baseType: !4631, size: 32)
!4631 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4622, line: 20, baseType: !4632)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4622, line: 18, size: 32, elements: !4633)
!4633 = !{!4634}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4632, file: !4622, line: 19, baseType: !422, size: 32)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4612, file: !19, line: 249, baseType: !61, size: 64, offset: 128)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4612, file: !19, line: 250, baseType: !4637, size: 128, offset: 192)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !901, line: 13, size: 128, elements: !4638)
!4638 = !{!4639, !4640}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4637, file: !901, line: 14, baseType: !900, size: 64)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4637, file: !901, line: 15, baseType: !364, size: 64, offset: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4612, file: !19, line: 251, baseType: !4637, size: 128, offset: 320)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4612, file: !19, line: 252, baseType: !4637, size: 128, offset: 448)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4612, file: !19, line: 259, baseType: !1218, size: 64, offset: 576)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !432, file: !19, line: 1988, baseType: !4645, size: 64, offset: 896)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!42, !4526, !2032, !4648, !472, !7}
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4650, line: 22, size: 1280, elements: !4651)
!4650 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4651 = !{!4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4649, file: !4650, line: 23, baseType: !472, size: 32)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4649, file: !4650, line: 24, baseType: !44, size: 16, offset: 32)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4649, file: !4650, line: 25, baseType: !7, size: 32, offset: 64)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4649, file: !4650, line: 26, baseType: !908, size: 32, offset: 96)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4649, file: !4650, line: 27, baseType: !476, size: 64, offset: 128)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4649, file: !4650, line: 28, baseType: !476, size: 64, offset: 192)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4649, file: !4650, line: 41, baseType: !476, size: 64, offset: 256)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4649, file: !4650, line: 42, baseType: !559, size: 32, offset: 320)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4649, file: !4650, line: 43, baseType: !559, size: 32, offset: 352)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4649, file: !4650, line: 44, baseType: !409, size: 32, offset: 384)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4649, file: !4650, line: 45, baseType: !418, size: 32, offset: 416)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4649, file: !4650, line: 46, baseType: !61, size: 64, offset: 448)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4649, file: !4650, line: 47, baseType: !4637, size: 128, offset: 512)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4649, file: !4650, line: 48, baseType: !4637, size: 128, offset: 640)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4649, file: !4650, line: 49, baseType: !4637, size: 128, offset: 768)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4649, file: !4650, line: 50, baseType: !4637, size: 128, offset: 896)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4649, file: !4650, line: 51, baseType: !476, size: 64, offset: 1024)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4649, file: !4650, line: 52, baseType: !476, size: 64, offset: 1088)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4649, file: !4650, line: 53, baseType: !472, size: 32, offset: 1152)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4649, file: !4650, line: 54, baseType: !472, size: 32, offset: 1184)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4649, file: !4650, line: 55, baseType: !476, size: 64, offset: 1216)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !432, file: !19, line: 1990, baseType: !4674, size: 64, offset: 960)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!361, !438, !329, !55}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !432, file: !19, line: 1991, baseType: !4678, size: 64, offset: 1024)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{!42, !403, !4681, !476, !476}
!4681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4682, size: 64)
!4682 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !19, line: 55, flags: DIFlagFwdDecl)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !432, file: !19, line: 1993, baseType: !4684, size: 64, offset: 1088)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!42, !403, !42}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !432, file: !19, line: 1994, baseType: !4688, size: 64, offset: 1152)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!42, !403, !438, !1218, !7, !44}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !432, file: !19, line: 1997, baseType: !4692, size: 64, offset: 1216)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!42, !4526, !403, !1218, !44}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !432, file: !19, line: 1999, baseType: !4696, size: 64, offset: 1280)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!426, !4526, !438, !42}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !432, file: !19, line: 2001, baseType: !4700, size: 64, offset: 1344)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!42, !4526, !438, !426, !42}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !432, file: !19, line: 2003, baseType: !4704, size: 64, offset: 1408)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!42, !4526, !438, !4707}
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !19, line: 76, flags: DIFlagFwdDecl)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !432, file: !19, line: 2005, baseType: !4710, size: 64, offset: 1472)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!42, !438, !4707}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !432, file: !19, line: 2006, baseType: !4714, size: 64, offset: 1536)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{!4717, !403}
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !19, line: 3192, size: 192, elements: !4719)
!4719 = !{!4720, !4721}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4718, file: !19, line: 3193, baseType: !3578, size: 128)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4718, file: !19, line: 3194, baseType: !472, size: 32, offset: 128)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !404, file: !19, line: 655, baseType: !554, size: 64, offset: 448)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !404, file: !19, line: 656, baseType: !399, size: 64, offset: 512)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !404, file: !19, line: 659, baseType: !40, size: 64, offset: 576)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !404, file: !19, line: 663, baseType: !59, size: 64, offset: 640)
!4726 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !19, line: 671, baseType: !4727, size: 32, offset: 704)
!4727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !404, file: !19, line: 671, size: 32, elements: !4728)
!4728 = !{!4729, !4731}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4727, file: !19, line: 672, baseType: !4730, size: 32)
!4730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4727, file: !19, line: 673, baseType: !7, size: 32)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !404, file: !19, line: 675, baseType: !559, size: 32, offset: 736)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !404, file: !19, line: 676, baseType: !61, size: 64, offset: 768)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !404, file: !19, line: 677, baseType: !4637, size: 128, offset: 832)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !404, file: !19, line: 678, baseType: !4637, size: 128, offset: 960)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !404, file: !19, line: 679, baseType: !4637, size: 128, offset: 1088)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !404, file: !19, line: 680, baseType: !79, size: 32, offset: 1216)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !404, file: !19, line: 681, baseType: !46, size: 16, offset: 1248)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !404, file: !19, line: 682, baseType: !103, size: 8, offset: 1264)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !404, file: !19, line: 683, baseType: !103, size: 8, offset: 1272)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !404, file: !19, line: 684, baseType: !2105, size: 64, offset: 1280)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !404, file: !19, line: 691, baseType: !59, size: 64, offset: 1344)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !404, file: !19, line: 692, baseType: !884, size: 320, offset: 1408)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !404, file: !19, line: 694, baseType: !59, size: 64, offset: 1728)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !404, file: !19, line: 695, baseType: !59, size: 64, offset: 1792)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !404, file: !19, line: 697, baseType: !596, size: 128, offset: 1856)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !404, file: !19, line: 698, baseType: !117, size: 128, offset: 1984)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !404, file: !19, line: 707, baseType: !117, size: 128, offset: 2112)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !404, file: !19, line: 708, baseType: !117, size: 128, offset: 2240)
!4750 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !19, line: 709, baseType: !4751, size: 128, offset: 2368)
!4751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !404, file: !19, line: 709, size: 128, elements: !4752)
!4752 = !{!4753, !4754}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4751, file: !19, line: 710, baseType: !592, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4751, file: !19, line: 711, baseType: !760, size: 128, align: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !404, file: !19, line: 713, baseType: !709, size: 64, offset: 2496)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !404, file: !19, line: 714, baseType: !709, size: 64, offset: 2560)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !404, file: !19, line: 715, baseType: !69, size: 32, offset: 2624)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !404, file: !19, line: 716, baseType: !69, size: 32, offset: 2656)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !404, file: !19, line: 717, baseType: !69, size: 32, offset: 2688)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !404, file: !19, line: 719, baseType: !69, size: 32, offset: 2720)
!4761 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !19, line: 721, baseType: !4762, size: 64, offset: 2752)
!4762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !404, file: !19, line: 721, size: 64, elements: !4763)
!4763 = !{!4764, !4765}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4762, file: !19, line: 722, baseType: !1209, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4762, file: !19, line: 723, baseType: !623, size: 64)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !404, file: !19, line: 725, baseType: !4767, size: 64, offset: 2816)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !19, line: 725, flags: DIFlagFwdDecl)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !404, file: !19, line: 726, baseType: !400, size: 1536, align: 64, offset: 2880)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !404, file: !19, line: 727, baseType: !117, size: 128, offset: 4416)
!4771 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !19, line: 728, baseType: !4772, size: 64, offset: 4544)
!4772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !404, file: !19, line: 728, size: 64, elements: !4773)
!4773 = !{!4774, !4775, !4778, !4779}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4772, file: !19, line: 729, baseType: !1853, size: 64)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4772, file: !19, line: 730, baseType: !4776, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !19, line: 730, flags: DIFlagFwdDecl)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4772, file: !19, line: 731, baseType: !329, size: 64)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4772, file: !19, line: 732, baseType: !7, size: 32)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !404, file: !19, line: 735, baseType: !473, size: 32, offset: 4608)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !404, file: !19, line: 738, baseType: !473, size: 32, offset: 4640)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !404, file: !19, line: 739, baseType: !4465, size: 64, offset: 4672)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !404, file: !19, line: 750, baseType: !40, size: 64, offset: 4736)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !400, file: !19, line: 474, baseType: !3578, size: 128, offset: 64)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !400, file: !19, line: 475, baseType: !884, size: 320, offset: 192)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !400, file: !19, line: 476, baseType: !1660, size: 32, offset: 512)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !400, file: !19, line: 477, baseType: !69, size: 32, offset: 544)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !400, file: !19, line: 482, baseType: !2457, size: 128, offset: 576)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !400, file: !19, line: 483, baseType: !59, size: 64, offset: 704)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !400, file: !19, line: 484, baseType: !59, size: 64, offset: 768)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !400, file: !19, line: 485, baseType: !4792, size: 64, offset: 832)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4794)
!4794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !19, line: 404, size: 1280, elements: !4795)
!4795 = !{!4796, !4800, !4804, !4808, !4812, !4828, !4832, !4836, !4840, !4844, !4848, !4852, !4853, !4857, !4861, !4865, !4870, !4874, !4927, !4928}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4794, file: !19, line: 405, baseType: !4797, size: 64)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!42, !1381, !635}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4794, file: !19, line: 406, baseType: !4801, size: 64, offset: 64)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!42, !1218, !1252}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4794, file: !19, line: 409, baseType: !4805, size: 64, offset: 128)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!42, !399, !635}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4794, file: !19, line: 412, baseType: !4809, size: 64, offset: 192)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!943, !399, !1252}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4794, file: !19, line: 414, baseType: !4813, size: 64, offset: 256)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{null, !4816}
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1249, line: 1276, size: 448, elements: !4818)
!4818 = !{!4819, !4820, !4821, !4823, !4824, !4825, !4826, !4827}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4817, file: !1249, line: 1277, baseType: !1218, size: 64)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4817, file: !1249, line: 1278, baseType: !399, size: 64, offset: 64)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !4817, file: !1249, line: 1279, baseType: !4822, size: 64, offset: 128)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !4817, file: !1249, line: 1281, baseType: !59, size: 64, offset: 192)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !4817, file: !1249, line: 1282, baseType: !7, size: 32, offset: 256)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !4817, file: !1249, line: 1283, baseType: !7, size: 32, offset: 288)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !4817, file: !1249, line: 1284, baseType: !943, size: 8, offset: 320)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !4817, file: !1249, line: 1285, baseType: !59, size: 64, offset: 384)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4794, file: !19, line: 416, baseType: !4829, size: 64, offset: 320)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!42, !1218, !399, !61, !7, !4216, !1869}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4794, file: !19, line: 419, baseType: !4833, size: 64, offset: 384)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!42, !1218, !399, !61, !7, !7, !1381, !40}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4794, file: !19, line: 424, baseType: !4837, size: 64, offset: 448)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{!2136, !399, !2136}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4794, file: !19, line: 425, baseType: !4841, size: 64, offset: 512)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{null, !1252, !55, !55}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4794, file: !19, line: 426, baseType: !4845, size: 64, offset: 576)
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!943, !1252, !1660}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4794, file: !19, line: 427, baseType: !4849, size: 64, offset: 640)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{null, !1252}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4794, file: !19, line: 428, baseType: !1228, size: 64, offset: 704)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4794, file: !19, line: 433, baseType: !4854, size: 64, offset: 768)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!42, !399, !1252, !1252, !252}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4794, file: !19, line: 435, baseType: !4858, size: 64, offset: 832)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!42, !1252}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4794, file: !19, line: 436, baseType: !4862, size: 64, offset: 896)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!943, !1252, !55, !55}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4794, file: !19, line: 438, baseType: !4866, size: 64, offset: 960)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{null, !1252, !4869, !4869}
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4794, file: !19, line: 439, baseType: !4871, size: 64, offset: 1024)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!42, !399, !1381}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4794, file: !19, line: 442, baseType: !4875, size: 64, offset: 1088)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!42, !4878, !1218, !4926}
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !3944, line: 282, size: 2176, elements: !4880)
!4880 = !{!4881, !4882, !4883, !4884, !4885, !4887, !4888, !4890, !4897, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924}
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4879, file: !3944, line: 283, baseType: !1348, size: 128)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4879, file: !3944, line: 284, baseType: !59, size: 64, offset: 128)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4879, file: !3944, line: 285, baseType: !912, size: 16, offset: 192)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4879, file: !3944, line: 286, baseType: !3101, size: 320, offset: 256)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4879, file: !3944, line: 287, baseType: !4886, size: 8, offset: 576)
!4886 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4879, file: !3944, line: 288, baseType: !7, size: 32, offset: 608)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !4879, file: !3944, line: 289, baseType: !4889, size: 64, offset: 640)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !4879, file: !3944, line: 290, baseType: !4891, size: 64, offset: 704)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !3944, line: 250, size: 64, elements: !4893)
!4893 = !{!4894, !4895, !4896}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4892, file: !3944, line: 251, baseType: !79, size: 32)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4892, file: !3944, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4892, file: !3944, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !4879, file: !3944, line: 291, baseType: !4898, size: 128, offset: 768)
!4898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !3944, line: 274, size: 128, elements: !4899)
!4899 = !{!4900, !4901}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4898, file: !3944, line: 275, baseType: !4892, size: 64)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4898, file: !3944, line: 276, baseType: !4892, size: 64, offset: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !4879, file: !3944, line: 292, baseType: !7, size: 32, offset: 896)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !4879, file: !3944, line: 293, baseType: !7, size: 32, offset: 928)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4879, file: !3944, line: 294, baseType: !7, size: 32, offset: 960)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !4879, file: !3944, line: 295, baseType: !7, size: 32, offset: 992)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !4879, file: !3944, line: 296, baseType: !7, size: 32, offset: 1024)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !4879, file: !3944, line: 297, baseType: !7, size: 32, offset: 1056)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !4879, file: !3944, line: 298, baseType: !2891, size: 64, offset: 1088)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !4879, file: !3944, line: 299, baseType: !4910, size: 64, offset: 1152)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !3944, line: 269, size: 96, elements: !4912)
!4912 = !{!4913, !4914}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4911, file: !3944, line: 270, baseType: !4892, size: 64)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4911, file: !3944, line: 271, baseType: !7, size: 32, offset: 64)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !4879, file: !3944, line: 300, baseType: !1156, size: 64, offset: 1216)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !4879, file: !3944, line: 301, baseType: !2131, size: 64, offset: 1280)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !4879, file: !3944, line: 302, baseType: !1218, size: 64, offset: 1344)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !4879, file: !3944, line: 303, baseType: !7, size: 32, offset: 1408)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !4879, file: !3944, line: 304, baseType: !1114, size: 256, offset: 1472)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4879, file: !3944, line: 305, baseType: !79, size: 32, offset: 1728)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !4879, file: !3944, line: 318, baseType: !79, size: 32, offset: 1760)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !4879, file: !3944, line: 322, baseType: !1075, size: 256, offset: 1792)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !4879, file: !3944, line: 323, baseType: !4898, size: 128, offset: 2048)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !4879, file: !3944, line: 324, baseType: !4925, offset: 2176)
!4925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3101, elements: !827)
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4794, file: !19, line: 444, baseType: !1861, size: 64, offset: 1152)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4794, file: !19, line: 445, baseType: !4929, size: 64, offset: 1216)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!42, !1231, !1778}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !400, file: !19, line: 486, baseType: !59, size: 64, offset: 896)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !400, file: !19, line: 487, baseType: !884, size: 320, offset: 960)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !400, file: !19, line: 488, baseType: !1904, size: 32, offset: 1280)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !400, file: !19, line: 489, baseType: !79, size: 32, offset: 1312)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !400, file: !19, line: 490, baseType: !117, size: 128, offset: 1344)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !400, file: !19, line: 491, baseType: !40, size: 64, offset: 1472)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !390, file: !355, line: 180, baseType: !4939, size: 64, offset: 320)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!361, !1218, !294, !389, !329, !61, !55}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !390, file: !355, line: 182, baseType: !4939, size: 64, offset: 384)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !390, file: !355, line: 184, baseType: !4944, size: 64, offset: 448)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{!42, !1218, !294, !389, !1395}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !378, file: !355, line: 90, baseType: !4948, size: 64, offset: 192)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !378, file: !355, line: 91, baseType: !4950, size: 64, offset: 256)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !345, file: !289, line: 120, baseType: !4952, size: 64, offset: 192)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!2694, !312}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !345, file: !289, line: 121, baseType: !4956, size: 64, offset: 256)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!1523, !312}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !345, file: !289, line: 122, baseType: !4960, size: 64, offset: 320)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{null, !312, !1139, !1140}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !288, file: !289, line: 70, baseType: !3330, size: 64, offset: 384)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !288, file: !289, line: 71, baseType: !2766, size: 32, offset: 448)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !288, file: !289, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !288, file: !289, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !288, file: !289, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !288, file: !289, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !288, file: !289, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !285, file: !6, line: 47, baseType: !275, size: 64, offset: 512)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !285, file: !6, line: 48, baseType: !294, size: 64, offset: 576)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !285, file: !6, line: 49, baseType: !4973, size: 64, offset: 640)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !285, file: !6, line: 50, baseType: !1113, size: 64, offset: 704)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !276, file: !6, line: 418, baseType: !4977, size: 64, offset: 1408)
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4978, size: 64)
!4978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !4979)
!4979 = !{!4980, !4981, !4986, !4990, !4994, !4998}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4978, file: !6, line: 54, baseType: !366, size: 128)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4978, file: !6, line: 55, baseType: !4982, size: 64, offset: 128)
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!361, !4977, !4985, !329}
!4985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4978, file: !6, line: 57, baseType: !4987, size: 64, offset: 192)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!361, !4977, !4985, !36, !55}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4978, file: !6, line: 59, baseType: !4991, size: 64, offset: 256)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{null, !275, !36}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4978, file: !6, line: 60, baseType: !4995, size: 64, offset: 320)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{!42, !275}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4978, file: !6, line: 61, baseType: !4999, size: 64, offset: 384)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{null, !275}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !276, file: !6, line: 419, baseType: !36, size: 64, offset: 1472)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !276, file: !6, line: 420, baseType: !36, size: 64, offset: 1536)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !276, file: !6, line: 421, baseType: !294, size: 64, offset: 1600)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !276, file: !6, line: 424, baseType: !5006, size: 64, offset: 1664)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5008)
!5008 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !276, file: !6, line: 425, baseType: !5010, size: 64, offset: 1728)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !869)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !276, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !276, file: !6, line: 435, baseType: !703, size: 256, offset: 1856)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !276, file: !6, line: 437, baseType: !5015, size: 64, offset: 2112)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !5017, line: 69, size: 320, elements: !5018)
!5017 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!5018 = !{!5019, !5020, !5021, !5038, !5040, !5043, !5044}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5016, file: !5017, line: 70, baseType: !36, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5016, file: !5017, line: 71, baseType: !275, size: 64, offset: 64)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5016, file: !5017, line: 72, baseType: !5022, size: 64, offset: 128)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5024)
!5024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !5017, line: 47, size: 256, elements: !5025)
!5025 = !{!5026, !5027, !5033, !5037}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5024, file: !5017, line: 49, baseType: !7, size: 32)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5024, file: !5017, line: 51, baseType: !5028, size: 64, offset: 64)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{!42, !36, !5031}
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5016)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5024, file: !5017, line: 53, baseType: !5034, size: 64, offset: 128)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DISubroutineType(types: !5036)
!5036 = !{!42, !329, !5031}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5024, file: !5017, line: 55, baseType: !2718, size: 64, offset: 192)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5016, file: !5017, line: 73, baseType: !5039, size: 16, offset: 192)
!5039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5016, file: !5017, line: 74, baseType: !5041, size: 8, offset: 208)
!5041 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !104, line: 16, baseType: !5042)
!5042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !106, line: 20, baseType: !4886)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5016, file: !5017, line: 75, baseType: !103, size: 8, offset: 216)
!5044 = !DIDerivedType(tag: DW_TAG_member, scope: !5016, file: !5017, line: 76, baseType: !5045, size: 64, offset: 256)
!5045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5016, file: !5017, line: 76, size: 64, elements: !5046)
!5046 = !{!5047, !5048, !5055}
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5045, file: !5017, line: 77, baseType: !40, size: 64)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5045, file: !5017, line: 78, baseType: !5049, size: 64)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5051)
!5051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !5017, line: 86, size: 128, elements: !5052)
!5052 = !{!5053, !5054}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !5051, file: !5017, line: 87, baseType: !7, size: 32)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5051, file: !5017, line: 88, baseType: !329, size: 64, offset: 64)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !5045, file: !5017, line: 79, baseType: !5056, size: 64)
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5058)
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !5017, line: 92, size: 256, elements: !5059)
!5059 = !{!5060, !5061, !5062, !5063, !5064}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5058, file: !5017, line: 94, baseType: !7, size: 32)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !5058, file: !5017, line: 95, baseType: !7, size: 32, offset: 32)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5058, file: !5017, line: 96, baseType: !2891, size: 64, offset: 64)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5058, file: !5017, line: 97, baseType: !5022, size: 64, offset: 128)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !5058, file: !5017, line: 98, baseType: !40, size: 64, offset: 192)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !276, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !276, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !276, file: !6, line: 442, baseType: !5006, size: 64, offset: 2240)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !276, file: !6, line: 443, baseType: !5010, size: 64, offset: 2304)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !276, file: !6, line: 444, baseType: !943, size: 8, offset: 2368)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !276, file: !6, line: 451, baseType: !943, size: 8, offset: 2376)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !276, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !276, file: !6, line: 455, baseType: !5073, size: 64, offset: 2432)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !5075, line: 23, size: 96, elements: !5076)
!5075 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!5076 = !{!5077, !5078, !5079}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5074, file: !5075, line: 24, baseType: !42, size: 32)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5074, file: !5075, line: 24, baseType: !42, size: 32, offset: 32)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5074, file: !5075, line: 24, baseType: !42, size: 32, offset: 64)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !276, file: !6, line: 458, baseType: !5081, size: 64, offset: 2496)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!42}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !276, file: !6, line: 460, baseType: !5085, size: 4032, align: 512, offset: 2560)
!5085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5086, size: 4032, elements: !5100)
!5086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !5087)
!5087 = !{!5088, !5089, !5090}
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5086, file: !6, line: 363, baseType: !40, size: 64)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5086, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !5086, file: !6, line: 367, baseType: !5091, size: 448, offset: 128)
!5091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !5092)
!5092 = !{!5093, !5094}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5091, file: !6, line: 320, baseType: !275, size: 64)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5091, file: !6, line: 321, baseType: !5095, size: 384, offset: 64)
!5095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !5096, line: 40, size: 384, elements: !5097)
!5096 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!5097 = !{!5098}
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5095, file: !5096, line: 41, baseType: !5099, size: 384, align: 64)
!5099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 384, align: 64, elements: !3716)
!5100 = !{!5101}
!5101 = !DISubrange(count: 7)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !276, file: !6, line: 463, baseType: !5103, size: 192, offset: 6592)
!5103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !5104, line: 8, size: 192, elements: !5105)
!5104 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!5105 = !{!5106, !5107, !5108}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !5103, file: !5104, line: 10, baseType: !7, size: 32)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !5103, file: !5104, line: 11, baseType: !685, size: 64, offset: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !5103, file: !5104, line: 12, baseType: !5109, size: 64, offset: 128)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !5111, line: 59, size: 48, elements: !5112)
!5111 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!5112 = !{!5113, !5114, !5115, !5116, !5117, !5118}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !5110, file: !5111, line: 60, baseType: !1540, size: 16)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !5110, file: !5111, line: 61, baseType: !1540, size: 16, offset: 16)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !5110, file: !5111, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !5110, file: !5111, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5110, file: !5111, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5110, file: !5111, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !276, file: !6, line: 465, baseType: !59, size: 64, offset: 6784)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !276, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !276, file: !6, line: 470, baseType: !117, size: 128, offset: 6912)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !276, file: !6, line: 471, baseType: !5123, size: 64, offset: 7040)
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !5125, line: 33, size: 96, elements: !5126)
!5125 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!5126 = !{!5127, !5128, !5129, !5130}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !5124, file: !5125, line: 37, baseType: !42, size: 32)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !5124, file: !5125, line: 43, baseType: !42, size: 32, offset: 32)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5124, file: !5125, line: 45, baseType: !46, size: 16, offset: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5124, file: !5125, line: 47, baseType: !46, size: 16, offset: 80)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !276, file: !6, line: 476, baseType: !5132, size: 64, offset: 7104)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !5134)
!5134 = !{!5135, !5151, !5152, !5153}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !5133, file: !6, line: 379, baseType: !5136, size: 64)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !5138, line: 204, baseType: !5139)
!5138 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!5139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !5138, line: 197, size: 192, elements: !5140)
!5140 = !{!5141, !5143, !5144, !5145, !5147, !5149}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !5139, file: !5138, line: 198, baseType: !5142, size: 32)
!5142 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !5138, line: 21, baseType: !473)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !5139, file: !5138, line: 199, baseType: !107, size: 8, offset: 32)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !5139, file: !5138, line: 200, baseType: !107, size: 8, offset: 40)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !5139, file: !5138, line: 201, baseType: !5146, size: 16, offset: 48)
!5146 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !5138, line: 17, baseType: !114)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !5139, file: !5138, line: 202, baseType: !5148, size: 64, offset: 64)
!5148 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !5138, line: 16, baseType: !477)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5139, file: !5138, line: 203, baseType: !5150, size: 64, offset: 128)
!5150 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !5138, line: 22, baseType: !477)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !5133, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !5133, file: !6, line: 381, baseType: !329, size: 64, offset: 128)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !5133, file: !6, line: 382, baseType: !329, size: 64, offset: 192)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !276, file: !6, line: 477, baseType: !5133, size: 256, offset: 7168)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !276, file: !6, line: 480, baseType: !5156, size: 64, offset: 7424)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !276, file: !6, line: 483, baseType: !5159, size: 64, offset: 7488)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5160 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !276, file: !6, line: 488, baseType: !329, size: 64, offset: 7552)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !276, file: !6, line: 492, baseType: !40, size: 64, offset: 7616)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !276, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !276, file: !6, line: 495, baseType: !40, size: 64, offset: 7744)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !276, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !276, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !276, file: !6, line: 500, baseType: !5168, size: 64, offset: 7872)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !5170, line: 45, baseType: !5171)
!5170 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!5171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !276, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !276, file: !6, line: 504, baseType: !5174, size: 64, offset: 8000)
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5175, size: 64)
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !5177, line: 96, size: 192, elements: !5178)
!5177 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!5178 = !{!5179, !5180, !5222, !5224}
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !5176, file: !5177, line: 97, baseType: !7, size: 32)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !5176, file: !5177, line: 98, baseType: !5181, size: 64, offset: 64)
!5181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5182, size: 64)
!5182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !5177, line: 24, size: 3072, elements: !5183)
!5183 = !{!5184, !5186, !5187, !5188, !5189, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5219, !5220, !5221}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !5182, file: !5177, line: 26, baseType: !5185, size: 128)
!5185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 128, elements: !3716)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !5182, file: !5177, line: 27, baseType: !5185, size: 128, offset: 128)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !5182, file: !5177, line: 28, baseType: !42, size: 32, offset: 256)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5182, file: !5177, line: 31, baseType: !79, size: 32, align: 512, offset: 512)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !5182, file: !5177, line: 32, baseType: !5190, size: 960, offset: 576)
!5190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !5191, line: 206, size: 960, elements: !5192)
!5191 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!5192 = !{!5193, !5194, !5197, !5199, !5200, !5201}
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5190, file: !5191, line: 207, baseType: !763, size: 64)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !5190, file: !5191, line: 208, baseType: !5195, size: 256, offset: 64)
!5195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5196, size: 256, elements: !814)
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !5190, file: !5191, line: 209, baseType: !5198, size: 256, offset: 320)
!5198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 256, elements: !814)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5190, file: !5191, line: 213, baseType: !364, size: 64, offset: 576)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !5190, file: !5191, line: 215, baseType: !1177, size: 256, offset: 640)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5190, file: !5191, line: 216, baseType: !103, size: 8, offset: 896)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5182, file: !5177, line: 33, baseType: !59, size: 64, offset: 1536)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5182, file: !5177, line: 34, baseType: !59, size: 64, offset: 1600)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !5182, file: !5177, line: 35, baseType: !943, size: 8, offset: 1664)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !5182, file: !5177, line: 36, baseType: !2367, size: 320, offset: 1728)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5182, file: !5177, line: 37, baseType: !1075, size: 256, offset: 2048)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !5182, file: !5177, line: 38, baseType: !760, size: 128, align: 64, offset: 2304)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !5182, file: !5177, line: 39, baseType: !5209, size: 64, offset: 2432)
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5210, size: 64)
!5210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !5177, line: 49, size: 768, elements: !5211)
!5211 = !{!5212, !5213, !5214, !5215, !5216, !5217, !5218}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5210, file: !5177, line: 50, baseType: !79, size: 32)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !5210, file: !5177, line: 51, baseType: !5198, size: 256, offset: 64)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !5210, file: !5177, line: 53, baseType: !5198, size: 256, offset: 320)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5210, file: !5177, line: 54, baseType: !59, size: 64, offset: 576)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !5210, file: !5177, line: 55, baseType: !5209, size: 64, offset: 640)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !5210, file: !5177, line: 56, baseType: !42, size: 32, offset: 704)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !5210, file: !5177, line: 57, baseType: !42, size: 32, offset: 736)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !5182, file: !5177, line: 40, baseType: !59, size: 64, offset: 2496)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5182, file: !5177, line: 42, baseType: !42, size: 32, offset: 2560)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !5182, file: !5177, line: 43, baseType: !5175, size: 64, offset: 2624)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !5176, file: !5177, line: 99, baseType: !5223, offset: 128)
!5223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !603, line: 211, elements: !604)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !5176, file: !5177, line: 100, baseType: !5225, size: 64, offset: 128)
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!5226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !5177, line: 63, size: 3008, elements: !5227)
!5227 = !{!5228, !5229, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5226, file: !5177, line: 64, baseType: !5209, size: 64)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5226, file: !5177, line: 65, baseType: !5230, size: 192, offset: 64)
!5230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5209, size: 192, elements: !330)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !5226, file: !5177, line: 67, baseType: !42, size: 32, offset: 256)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !5226, file: !5177, line: 68, baseType: !703, size: 256, offset: 320)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5226, file: !5177, line: 69, baseType: !79, size: 32, offset: 576)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !5226, file: !5177, line: 70, baseType: !703, size: 256, offset: 640)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !5226, file: !5177, line: 71, baseType: !59, size: 64, offset: 896)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5226, file: !5177, line: 72, baseType: !59, size: 64, offset: 960)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5226, file: !5177, line: 73, baseType: !59, size: 64, offset: 1024)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !5226, file: !5177, line: 74, baseType: !59, size: 64, offset: 1088)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !5226, file: !5177, line: 75, baseType: !59, size: 64, offset: 1152)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !5226, file: !5177, line: 76, baseType: !59, size: 64, offset: 1216)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !5226, file: !5177, line: 77, baseType: !59, size: 64, offset: 1280)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !5226, file: !5177, line: 78, baseType: !59, size: 64, offset: 1344)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !5226, file: !5177, line: 79, baseType: !943, size: 8, offset: 1408)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !5226, file: !5177, line: 80, baseType: !59, size: 64, offset: 1472)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !5226, file: !5177, line: 81, baseType: !703, size: 256, offset: 1536)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !5226, file: !5177, line: 82, baseType: !1114, size: 256, offset: 1792)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !5226, file: !5177, line: 84, baseType: !69, size: 32, offset: 2048)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !5226, file: !5177, line: 87, baseType: !59, size: 64, offset: 2112)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !5226, file: !5177, line: 88, baseType: !59, size: 64, offset: 2176)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5226, file: !5177, line: 89, baseType: !2808, size: 704, offset: 2240)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !5226, file: !5177, line: 90, baseType: !5175, size: 64, offset: 2944)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !276, file: !6, line: 515, baseType: !5253, size: 64, offset: 8064)
!5253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5254, size: 64)
!5254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !5255, line: 117, size: 128, elements: !5256)
!5255 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!5256 = !{!5257, !5258, !5259}
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5254, file: !5255, line: 118, baseType: !869, size: 32)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5254, file: !5255, line: 119, baseType: !869, size: 32, offset: 32)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5254, file: !5255, line: 120, baseType: !364, size: 64, offset: 64)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !276, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !276, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !276, file: !6, line: 520, baseType: !2610, size: 64, offset: 8192)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !276, file: !6, line: 523, baseType: !5264, size: 64, offset: 8256)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5266, size: 64)
!5266 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !276, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !276, file: !6, line: 525, baseType: !5269, size: 64, offset: 8384)
!5269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5270, size: 64)
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5271, size: 64)
!5271 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !276, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !276, file: !6, line: 533, baseType: !40, size: 64, offset: 8512)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !276, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !276, file: !6, line: 535, baseType: !5276, size: 64, offset: 8640)
!5276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !276, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !276, file: !6, line: 539, baseType: !42, size: 32, offset: 8736)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !276, file: !6, line: 540, baseType: !5280, size: 64, offset: 8768)
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !5282, line: 32, size: 64, elements: !5283)
!5282 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!5283 = !{!5284, !5285}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5281, file: !5282, line: 33, baseType: !869, size: 32)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5281, file: !5282, line: 34, baseType: !869, size: 32, offset: 32)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !276, file: !6, line: 563, baseType: !117, size: 128, offset: 8832)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !276, file: !6, line: 565, baseType: !117, size: 128, offset: 8960)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !276, file: !6, line: 568, baseType: !3548, size: 64, offset: 9088)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !276, file: !6, line: 570, baseType: !69, size: 32, offset: 9152)
!5290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5291, size: 64)
!5291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_s2idle_dev_ops", file: !5292, line: 1102, size: 320, elements: !5293)
!5292 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!5293 = !{!5294, !5295, !5296, !5297}
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !5291, file: !5292, line: 1103, baseType: !117, size: 128)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5291, file: !5292, line: 1104, baseType: !3548, size: 64, offset: 128)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !5291, file: !5292, line: 1105, baseType: !3548, size: 64, offset: 192)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !5291, file: !5292, line: 1106, baseType: !3548, size: 64, offset: 256)
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5299, size: 64)
!5299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5300)
!5300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_lps0_hid_device_data", file: !3, line: 438, size: 8, elements: !5301)
!5301 = !{!5302}
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "check_off_by_one", scope: !5300, file: !3, line: 439, baseType: !5303, size: 8)
!5303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !943)
!5304 = !DIDerivedType(tag: DW_TAG_typedef, name: "suspend_state_t", file: !5305, line: 34, baseType: !42)
!5305 = !DIFile(filename: "./include/linux/suspend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0bdf8a52b9a460775d8f457b5a21f557")
!5306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5307, size: 64)
!5307 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !120)
!5308 = !{!5309, !5311, !5316, !5321, !5323, !5325, !5327, !5331, !5337, !5339, !5341, !5343, !5350, !0, !5352, !5355, !5360, !5365, !5370, !5375, !5378, !5380, !5382, !5387, !5389, !5391, !5393, !5396, !5398, !5400, !5402, !5662, !5665, !5670, !5679, !5681, !5683, !5685, !5688, !5690, !5692, !5694, !5699, !5704}
!5309 = !DIGlobalVariableExpression(var: !5310, expr: !DIExpression())
!5310 = distinct !DIGlobalVariable(name: "__param_sleep_no_lps0", scope: !2, file: !3, line: 28, type: !5032, isLocal: true, isDefinition: true, align: 64)
!5311 = !DIGlobalVariableExpression(var: !5312, expr: !DIExpression())
!5312 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_sleep_no_lps0type333", scope: !2, file: !3, line: 28, type: !5313, isLocal: true, isDefinition: true, align: 8)
!5313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 264, elements: !5314)
!5314 = !{!5315}
!5315 = !DISubrange(count: 33)
!5316 = !DIGlobalVariableExpression(var: !5317, expr: !DIExpression())
!5317 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_sleep_no_lps0334", scope: !2, file: !3, line: 29, type: !5318, isLocal: true, isDefinition: true, align: 8)
!5318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 552, elements: !5319)
!5319 = !{!5320}
!5320 = !DISubrange(count: 69)
!5321 = !DIGlobalVariableExpression(var: !5322, expr: !DIExpression())
!5322 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_register_lps0_dev335", scope: !2, file: !3, line: 654, type: !40, isLocal: true, isDefinition: true)
!5323 = !DIGlobalVariableExpression(var: !5324, expr: !DIExpression())
!5324 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_unregister_lps0_dev336", scope: !2, file: !3, line: 667, type: !40, isLocal: true, isDefinition: true)
!5325 = !DIGlobalVariableExpression(var: !5326, expr: !DIExpression())
!5326 = distinct !DIGlobalVariable(name: "sleep_no_lps0", scope: !2, file: !3, line: 27, type: !943, isLocal: true, isDefinition: true)
!5327 = !DIGlobalVariableExpression(var: !5328, expr: !DIExpression())
!5328 = distinct !DIGlobalVariable(name: "lps0_device_handle", scope: !2, file: !3, line: 56, type: !5329, isLocal: true, isDefinition: true)
!5329 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !5330, line: 424, baseType: !40)
!5330 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!5331 = !DIGlobalVariableExpression(var: !5332, expr: !DIExpression())
!5332 = distinct !DIGlobalVariable(name: "lps0_dsm_guid", scope: !2, file: !3, line: 57, type: !5333, isLocal: true, isDefinition: true)
!5333 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !4470, line: 17, baseType: !5334)
!5334 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4470, line: 15, size: 128, elements: !5335)
!5335 = !{!5336}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5334, file: !4470, line: 16, baseType: !2280, size: 128)
!5337 = !DIGlobalVariableExpression(var: !5338, expr: !DIExpression())
!5338 = distinct !DIGlobalVariable(name: "lps0_dsm_func_mask", scope: !2, file: !3, line: 58, type: !42, isLocal: true, isDefinition: true)
!5339 = !DIGlobalVariableExpression(var: !5340, expr: !DIExpression())
!5340 = distinct !DIGlobalVariable(name: "lps0_dsm_guid_microsoft", scope: !2, file: !3, line: 60, type: !5333, isLocal: true, isDefinition: true)
!5341 = !DIGlobalVariableExpression(var: !5342, expr: !DIExpression())
!5342 = distinct !DIGlobalVariable(name: "lps0_dsm_func_mask_microsoft", scope: !2, file: !3, line: 61, type: !42, isLocal: true, isDefinition: true)
!5343 = !DIGlobalVariableExpression(var: !5344, expr: !DIExpression())
!5344 = distinct !DIGlobalVariable(name: "lpi_constraints_table", scope: !2, file: !3, line: 93, type: !5345, isLocal: true, isDefinition: true)
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5346, size: 64)
!5346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpi_constraints", file: !3, line: 78, size: 128, elements: !5347)
!5347 = !{!5348, !5349}
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !5346, file: !3, line: 79, baseType: !5329, size: 64)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "min_dstate", scope: !5346, file: !3, line: 80, baseType: !42, size: 32, offset: 64)
!5350 = !DIGlobalVariableExpression(var: !5351, expr: !DIExpression())
!5351 = distinct !DIGlobalVariable(name: "lpi_constraints_table_size", scope: !2, file: !3, line: 94, type: !42, isLocal: true, isDefinition: true)
!5352 = !DIGlobalVariableExpression(var: !5353, expr: !DIExpression())
!5353 = distinct !DIGlobalVariable(scope: null, file: !3, line: 342, type: !5354, isLocal: true, isDefinition: true)
!5354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 24, elements: !330)
!5355 = !DIGlobalVariableExpression(var: !5356, expr: !DIExpression())
!5356 = distinct !DIGlobalVariable(scope: null, file: !3, line: 342, type: !5357, isLocal: true, isDefinition: true)
!5357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 272, elements: !5358)
!5358 = !{!5359}
!5359 = !DISubrange(count: 34)
!5360 = !DIGlobalVariableExpression(var: !5361, expr: !DIExpression())
!5361 = distinct !DIGlobalVariable(scope: null, file: !3, line: 348, type: !5362, isLocal: true, isDefinition: true)
!5362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 544, elements: !5363)
!5363 = !{!5364}
!5364 = !DISubrange(count: 68)
!5365 = !DIGlobalVariableExpression(var: !5366, expr: !DIExpression())
!5366 = distinct !DIGlobalVariable(scope: null, file: !3, line: 406, type: !5367, isLocal: true, isDefinition: true)
!5367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 232, elements: !5368)
!5368 = !{!5369}
!5369 = !DISubrange(count: 29)
!5370 = !DIGlobalVariableExpression(var: !5371, expr: !DIExpression())
!5371 = distinct !DIGlobalVariable(scope: null, file: !3, line: 406, type: !5372, isLocal: true, isDefinition: true)
!5372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 104, elements: !5373)
!5373 = !{!5374}
!5374 = !DISubrange(count: 13)
!5375 = !DIGlobalVariableExpression(var: !5376, expr: !DIExpression())
!5376 = distinct !DIGlobalVariable(scope: null, file: !3, line: 406, type: !5377, isLocal: true, isDefinition: true)
!5377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 80, elements: !1170)
!5378 = !DIGlobalVariableExpression(var: !5379, expr: !DIExpression())
!5379 = distinct !DIGlobalVariable(name: "rev_id", scope: !2, file: !3, line: 95, type: !42, isLocal: true, isDefinition: true)
!5380 = !DIGlobalVariableExpression(var: !5381, expr: !DIExpression())
!5381 = distinct !DIGlobalVariable(name: "lps0_dsm_state", scope: !2, file: !3, line: 62, type: !42, isLocal: true, isDefinition: true)
!5382 = !DIGlobalVariableExpression(var: !5383, expr: !DIExpression())
!5383 = distinct !DIGlobalVariable(scope: null, file: !3, line: 365, type: !5384, isLocal: true, isDefinition: true)
!5384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 88, elements: !5385)
!5385 = !{!5386}
!5386 = !DISubrange(count: 11)
!5387 = !DIGlobalVariableExpression(var: !5388, expr: !DIExpression())
!5388 = distinct !DIGlobalVariable(scope: null, file: !3, line: 367, type: !5377, isLocal: true, isDefinition: true)
!5389 = !DIGlobalVariableExpression(var: !5390, expr: !DIExpression())
!5390 = distinct !DIGlobalVariable(scope: null, file: !3, line: 369, type: !5384, isLocal: true, isDefinition: true)
!5391 = !DIGlobalVariableExpression(var: !5392, expr: !DIExpression())
!5392 = distinct !DIGlobalVariable(scope: null, file: !3, line: 371, type: !5377, isLocal: true, isDefinition: true)
!5393 = !DIGlobalVariableExpression(var: !5394, expr: !DIExpression())
!5394 = distinct !DIGlobalVariable(scope: null, file: !3, line: 373, type: !5395, isLocal: true, isDefinition: true)
!5395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 112, elements: !3457)
!5396 = !DIGlobalVariableExpression(var: !5397, expr: !DIExpression())
!5397 = distinct !DIGlobalVariable(scope: null, file: !3, line: 375, type: !5372, isLocal: true, isDefinition: true)
!5398 = !DIGlobalVariableExpression(var: !5399, expr: !DIExpression())
!5399 = distinct !DIGlobalVariable(scope: null, file: !3, line: 390, type: !4019, isLocal: true, isDefinition: true)
!5400 = !DIGlobalVariableExpression(var: !5401, expr: !DIExpression())
!5401 = distinct !DIGlobalVariable(name: "lps0_s2idle_devops_head", scope: !2, file: !3, line: 91, type: !117, isLocal: true, isDefinition: true)
!5402 = !DIGlobalVariableExpression(var: !5403, expr: !DIExpression())
!5403 = distinct !DIGlobalVariable(name: "lps0_handler", scope: !2, file: !3, line: 526, type: !5404, isLocal: true, isDefinition: true)
!5404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !5405, line: 124, size: 1216, elements: !5406)
!5405 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!5406 = !{!5407, !5408, !5409, !5414, !5648, !5649, !5650, !5651}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !5404, file: !5405, line: 125, baseType: !2275, size: 64)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !5404, file: !5405, line: 126, baseType: !117, size: 128, offset: 64)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5404, file: !5405, line: 127, baseType: !5410, size: 64, offset: 192)
!5410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5411, size: 64)
!5411 = !DISubroutineType(types: !5412)
!5412 = !{!943, !36, !5413}
!5413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !5404, file: !5405, line: 128, baseType: !5415, size: 64, offset: 256)
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = !DISubroutineType(types: !5417)
!5417 = !{!42, !5418, !2275}
!5418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5419, size: 64)
!5419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !5405, line: 367, size: 11200, elements: !5420)
!5420 = !{!5421, !5422, !5423, !5424, !5425, !5426, !5427, !5436, !5454, !5530, !5558, !5582, !5603, !5609, !5618, !5620, !5637, !5641, !5642, !5643, !5644, !5645, !5646, !5647}
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !5419, file: !5405, line: 368, baseType: !472, size: 32)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !5419, file: !5405, line: 369, baseType: !42, size: 32, offset: 32)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !5419, file: !5405, line: 370, baseType: !5329, size: 64, offset: 64)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5419, file: !5405, line: 371, baseType: !2566, size: 512, offset: 128)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !5419, file: !5405, line: 372, baseType: !117, size: 128, offset: 640)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !5419, file: !5405, line: 373, baseType: !117, size: 128, offset: 768)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5419, file: !5405, line: 374, baseType: !5428, size: 32, offset: 896)
!5428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !5405, line: 181, size: 32, elements: !5429)
!5429 = !{!5430, !5431, !5432, !5433, !5434, !5435}
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !5428, file: !5405, line: 182, baseType: !472, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5428, file: !5405, line: 183, baseType: !472, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !5428, file: !5405, line: 184, baseType: !472, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !5428, file: !5405, line: 185, baseType: !472, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !5428, file: !5405, line: 186, baseType: !472, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5428, file: !5405, line: 187, baseType: !472, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5419, file: !5405, line: 375, baseType: !5437, size: 32, offset: 928)
!5437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !5405, line: 192, size: 32, elements: !5438)
!5438 = !{!5439, !5440, !5441, !5442, !5443, !5444, !5445, !5446, !5447, !5448, !5449, !5450, !5451, !5452, !5453}
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !5437, file: !5405, line: 193, baseType: !472, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !5437, file: !5405, line: 194, baseType: !472, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !5437, file: !5405, line: 195, baseType: !472, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !5437, file: !5405, line: 196, baseType: !472, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !5437, file: !5405, line: 197, baseType: !472, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !5437, file: !5405, line: 198, baseType: !472, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !5437, file: !5405, line: 199, baseType: !472, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !5437, file: !5405, line: 200, baseType: !472, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !5437, file: !5405, line: 201, baseType: !472, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !5437, file: !5405, line: 202, baseType: !472, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !5437, file: !5405, line: 203, baseType: !472, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !5437, file: !5405, line: 204, baseType: !472, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !5437, file: !5405, line: 205, baseType: !472, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !5437, file: !5405, line: 206, baseType: !472, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5437, file: !5405, line: 207, baseType: !472, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !5419, file: !5405, line: 376, baseType: !5455, size: 960, offset: 960)
!5455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !5405, line: 238, size: 960, elements: !5456)
!5456 = !{!5457, !5459, !5460, !5468, !5470, !5471, !5472, !5477, !5480}
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !5455, file: !5405, line: 239, baseType: !5458, size: 64)
!5458 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !5405, line: 220, baseType: !4019)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !5455, file: !5405, line: 240, baseType: !42, size: 32, offset: 64)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5455, file: !5405, line: 241, baseType: !5461, size: 32, offset: 96)
!5461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !5405, line: 230, size: 32, elements: !5462)
!5462 = !{!5463, !5464, !5465, !5466, !5467}
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !5461, file: !5405, line: 231, baseType: !472, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !5461, file: !5405, line: 232, baseType: !472, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !5461, file: !5405, line: 233, baseType: !472, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !5461, file: !5405, line: 234, baseType: !472, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5461, file: !5405, line: 235, baseType: !472, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !5455, file: !5405, line: 242, baseType: !5469, size: 64, offset: 128)
!5469 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !5405, line: 221, baseType: !476)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !5455, file: !5405, line: 243, baseType: !329, size: 64, offset: 192)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !5455, file: !5405, line: 244, baseType: !117, size: 128, offset: 256)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !5455, file: !5405, line: 245, baseType: !5473, size: 320, offset: 384)
!5473 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !5405, line: 222, baseType: !5474)
!5474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 320, elements: !5475)
!5475 = !{!5476}
!5476 = !DISubrange(count: 40)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !5455, file: !5405, line: 246, baseType: !5478, size: 160, offset: 704)
!5478 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !5405, line: 223, baseType: !5479)
!5479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 160, elements: !4316)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !5455, file: !5405, line: 247, baseType: !5481, size: 64, offset: 896)
!5481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5482, size: 64)
!5482 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !5330, line: 908, size: 192, elements: !5483)
!5483 = !{!5484, !5486, !5491, !5497, !5504, !5510, !5516, !5524}
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5482, file: !5330, line: 909, baseType: !5485, size: 32)
!5485 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !5330, line: 644, baseType: !472)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !5482, file: !5330, line: 913, baseType: !5487, size: 128)
!5487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5482, file: !5330, line: 910, size: 128, elements: !5488)
!5488 = !{!5489, !5490}
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5487, file: !5330, line: 911, baseType: !5485, size: 32)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5487, file: !5330, line: 912, baseType: !476, size: 64, offset: 64)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5482, file: !5330, line: 919, baseType: !5492, size: 128)
!5492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5482, file: !5330, line: 915, size: 128, elements: !5493)
!5493 = !{!5494, !5495, !5496}
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5492, file: !5330, line: 916, baseType: !5485, size: 32)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5492, file: !5330, line: 917, baseType: !472, size: 32, offset: 32)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5492, file: !5330, line: 918, baseType: !329, size: 64, offset: 64)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5482, file: !5330, line: 925, baseType: !5498, size: 128)
!5498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5482, file: !5330, line: 921, size: 128, elements: !5499)
!5499 = !{!5500, !5501, !5502}
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5498, file: !5330, line: 922, baseType: !5485, size: 32)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5498, file: !5330, line: 923, baseType: !472, size: 32, offset: 32)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5498, file: !5330, line: 924, baseType: !5503, size: 64, offset: 64)
!5503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !5482, file: !5330, line: 931, baseType: !5505, size: 128)
!5505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5482, file: !5330, line: 927, size: 128, elements: !5506)
!5506 = !{!5507, !5508, !5509}
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5505, file: !5330, line: 928, baseType: !5485, size: 32)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5505, file: !5330, line: 929, baseType: !472, size: 32, offset: 32)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !5505, file: !5330, line: 930, baseType: !5481, size: 64, offset: 64)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !5482, file: !5330, line: 937, baseType: !5511, size: 128)
!5511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5482, file: !5330, line: 933, size: 128, elements: !5512)
!5512 = !{!5513, !5514, !5515}
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5511, file: !5330, line: 934, baseType: !5485, size: 32)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !5511, file: !5330, line: 935, baseType: !5485, size: 32, offset: 32)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !5511, file: !5330, line: 936, baseType: !5329, size: 64, offset: 64)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !5482, file: !5330, line: 944, baseType: !5517, size: 192)
!5517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5482, file: !5330, line: 939, size: 192, elements: !5518)
!5518 = !{!5519, !5520, !5521, !5523}
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5517, file: !5330, line: 940, baseType: !5485, size: 32)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !5517, file: !5330, line: 941, baseType: !472, size: 32, offset: 32)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !5517, file: !5330, line: 942, baseType: !5522, size: 64, offset: 64)
!5522 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !5330, line: 128, baseType: !476)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !5517, file: !5330, line: 943, baseType: !472, size: 32, offset: 128)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !5482, file: !5330, line: 950, baseType: !5525, size: 96)
!5525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5482, file: !5330, line: 946, size: 96, elements: !5526)
!5526 = !{!5527, !5528, !5529}
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5525, file: !5330, line: 947, baseType: !5485, size: 32)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !5525, file: !5330, line: 948, baseType: !472, size: 32, offset: 32)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !5525, file: !5330, line: 949, baseType: !472, size: 32, offset: 64)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5419, file: !5405, line: 377, baseType: !5531, size: 1408, offset: 1920)
!5531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !5405, line: 280, size: 1408, elements: !5532)
!5532 = !{!5533, !5534, !5544, !5557}
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5531, file: !5405, line: 281, baseType: !42, size: 32)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5531, file: !5405, line: 282, baseType: !5535, size: 32, offset: 32)
!5535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !5405, line: 259, size: 32, elements: !5536)
!5536 = !{!5537, !5538, !5539, !5540, !5541, !5542, !5543}
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !5535, file: !5405, line: 260, baseType: !472, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !5535, file: !5405, line: 261, baseType: !472, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !5535, file: !5405, line: 262, baseType: !472, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !5535, file: !5405, line: 263, baseType: !472, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !5535, file: !5405, line: 264, baseType: !472, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !5535, file: !5405, line: 265, baseType: !472, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5535, file: !5405, line: 266, baseType: !472, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !5531, file: !5405, line: 283, baseType: !5545, size: 1280, offset: 64)
!5545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5546, size: 1280, elements: !1044)
!5546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !5405, line: 269, size: 256, elements: !5547)
!5547 = !{!5548, !5554, !5555, !5556}
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5546, file: !5405, line: 274, baseType: !5549, size: 8)
!5549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5546, file: !5405, line: 270, size: 8, elements: !5550)
!5550 = !{!5551, !5552, !5553}
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5549, file: !5405, line: 271, baseType: !103, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !5549, file: !5405, line: 272, baseType: !103, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5549, file: !5405, line: 273, baseType: !103, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5546, file: !5405, line: 275, baseType: !42, size: 32, offset: 32)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !5546, file: !5405, line: 276, baseType: !42, size: 32, offset: 64)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5546, file: !5405, line: 277, baseType: !117, size: 128, offset: 128)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !5531, file: !5405, line: 284, baseType: !103, size: 8, offset: 1344)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5419, file: !5405, line: 378, baseType: !5559, size: 640, offset: 3328)
!5559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !5405, line: 330, size: 640, elements: !5560)
!5560 = !{!5561, !5562, !5563, !5564, !5565, !5570, !5579, !5580, !5581}
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !5559, file: !5405, line: 331, baseType: !5329, size: 64)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !5559, file: !5405, line: 332, baseType: !476, size: 64, offset: 64)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !5559, file: !5405, line: 333, baseType: !476, size: 64, offset: 128)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5559, file: !5405, line: 334, baseType: !117, size: 128, offset: 192)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5559, file: !5405, line: 335, baseType: !5566, size: 8, offset: 320)
!5566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !5405, line: 320, size: 8, elements: !5567)
!5567 = !{!5568, !5569}
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5566, file: !5405, line: 321, baseType: !103, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !5566, file: !5405, line: 322, baseType: !103, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5559, file: !5405, line: 336, baseType: !5571, size: 128, offset: 384)
!5571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !5405, line: 325, size: 128, elements: !5572)
!5572 = !{!5573, !5578}
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5571, file: !5405, line: 326, baseType: !5574, size: 64)
!5574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5575, size: 64)
!5575 = !DISubroutineType(types: !5576)
!5576 = !{null, !5577}
!5577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5571, size: 64)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5571, file: !5405, line: 327, baseType: !2178, size: 64, offset: 64)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !5559, file: !5405, line: 337, baseType: !2355, size: 64, offset: 512)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !5559, file: !5405, line: 338, baseType: !42, size: 32, offset: 576)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !5559, file: !5405, line: 339, baseType: !42, size: 32, offset: 608)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !5419, file: !5405, line: 379, baseType: !5583, size: 192, offset: 3968)
!5583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !5405, line: 312, size: 192, elements: !5584)
!5584 = !{!5585, !5586, !5590, !5591}
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5583, file: !5405, line: 313, baseType: !42, size: 32)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5583, file: !5405, line: 314, baseType: !5587, size: 8, offset: 32)
!5587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !5405, line: 298, size: 8, elements: !5588)
!5588 = !{!5589}
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5587, file: !5405, line: 299, baseType: !103, size: 8, flags: DIFlagBitField, extraData: i64 0)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !5583, file: !5405, line: 315, baseType: !42, size: 32, offset: 64)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !5583, file: !5405, line: 316, baseType: !5592, size: 64, offset: 128)
!5592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5593, size: 64)
!5593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !5405, line: 302, size: 64, elements: !5594)
!5594 = !{!5595, !5600, !5601, !5602}
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5593, file: !5405, line: 306, baseType: !5596, size: 8)
!5596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5593, file: !5405, line: 303, size: 8, elements: !5597)
!5597 = !{!5598, !5599}
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5596, file: !5405, line: 304, baseType: !103, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5596, file: !5405, line: 305, baseType: !103, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5593, file: !5405, line: 307, baseType: !103, size: 8, offset: 8)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !5593, file: !5405, line: 308, baseType: !103, size: 8, offset: 16)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !5593, file: !5405, line: 309, baseType: !42, size: 32, offset: 32)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5419, file: !5405, line: 380, baseType: !5604, size: 64, offset: 4160)
!5604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !5405, line: 212, size: 64, elements: !5605)
!5605 = !{!5606}
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5604, file: !5405, line: 213, baseType: !5607, size: 64)
!5607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5608, size: 64)
!5608 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !5405, line: 86, flags: DIFlagFwdDecl)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5419, file: !5405, line: 381, baseType: !5610, size: 384, offset: 4224)
!5610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !5405, line: 357, size: 384, elements: !5611)
!5611 = !{!5612, !5615, !5616, !5617}
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5610, file: !5405, line: 358, baseType: !5613, size: 64)
!5613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5614, size: 64)
!5614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5482)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5610, file: !5405, line: 359, baseType: !117, size: 128, offset: 64)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !5610, file: !5405, line: 360, baseType: !5613, size: 64, offset: 192)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !5610, file: !5405, line: 361, baseType: !117, size: 128, offset: 256)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5419, file: !5405, line: 382, baseType: !5619, size: 64, offset: 4608)
!5619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !5419, file: !5405, line: 383, baseType: !5621, size: 64, offset: 4672)
!5621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5622, size: 64)
!5622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !5405, line: 140, size: 256, elements: !5623)
!5623 = !{!5624, !5625, !5629, !5633}
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !5622, file: !5405, line: 141, baseType: !5418, size: 64)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !5622, file: !5405, line: 142, baseType: !5626, size: 64, offset: 64)
!5626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5627, size: 64)
!5627 = !DISubroutineType(types: !5628)
!5628 = !{!42, !5418, !472}
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5622, file: !5405, line: 143, baseType: !5630, size: 64, offset: 128)
!5630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5631, size: 64)
!5631 = !DISubroutineType(types: !5632)
!5632 = !{null, !5418, !472}
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5622, file: !5405, line: 144, baseType: !5634, size: 64, offset: 192)
!5634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5635, size: 64)
!5635 = !DISubroutineType(types: !5636)
!5636 = !{null, !5418}
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !5419, file: !5405, line: 384, baseType: !5638, size: 64, offset: 4736)
!5638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5639, size: 64)
!5639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5640)
!5640 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !5405, line: 364, flags: DIFlagFwdDecl)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5419, file: !5405, line: 385, baseType: !40, size: 64, offset: 4800)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5419, file: !5405, line: 386, baseType: !2174, size: 5824, offset: 4864)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !5419, file: !5405, line: 387, baseType: !7, size: 32, offset: 10688)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !5419, file: !5405, line: 388, baseType: !7, size: 32, offset: 10720)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !5419, file: !5405, line: 389, baseType: !117, size: 128, offset: 10752)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !5419, file: !5405, line: 390, baseType: !703, size: 256, offset: 10880)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5419, file: !5405, line: 391, baseType: !5634, size: 64, offset: 11136)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5404, file: !5405, line: 129, baseType: !5634, size: 64, offset: 320)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !5404, file: !5405, line: 130, baseType: !2202, size: 64, offset: 384)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !5404, file: !5405, line: 131, baseType: !2202, size: 64, offset: 448)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !5404, file: !5405, line: 132, baseType: !5652, size: 704, offset: 512)
!5652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !5405, line: 110, size: 704, elements: !5653)
!5653 = !{!5654, !5655, !5659, !5660, !5661}
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5652, file: !5405, line: 111, baseType: !288, size: 512)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !5652, file: !5405, line: 112, baseType: !5656, size: 64, offset: 512)
!5656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5657, size: 64)
!5657 = !DISubroutineType(types: !5658)
!5658 = !{!42, !5418}
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !5652, file: !5405, line: 113, baseType: !5634, size: 64, offset: 576)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5652, file: !5405, line: 114, baseType: !943, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !5652, file: !5405, line: 115, baseType: !943, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!5662 = !DIGlobalVariableExpression(var: !5663, expr: !DIExpression())
!5663 = distinct !DIGlobalVariable(name: "lps0_device_ids", scope: !2, file: !3, line: 31, type: !5664, isLocal: true, isDefinition: true)
!5664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2276, size: 512, elements: !3716)
!5665 = !DIGlobalVariableExpression(var: !5666, expr: !DIExpression())
!5666 = distinct !DIGlobalVariable(scope: null, file: !3, line: 465, type: !5667, isLocal: true, isDefinition: true)
!5667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 296, elements: !5668)
!5668 = !{!5669}
!5669 = !DISubrange(count: 37)
!5670 = !DIGlobalVariableExpression(var: !5671, expr: !DIExpression())
!5671 = distinct !DIGlobalVariable(name: "dev_id", scope: !5672, file: !3, line: 468, type: !2275, isLocal: true, isDefinition: true)
!5672 = distinct !DISubprogram(name: "lps0_device_attach", scope: !3, file: !3, line: 458, type: !5416, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5673)
!5673 = !{!5674, !5675, !5676}
!5674 = !DILocalVariable(name: "adev", arg: 1, scope: !5672, file: !3, line: 458, type: !5418)
!5675 = !DILocalVariable(name: "not_used", arg: 2, scope: !5672, file: !3, line: 459, type: !2275)
!5676 = !DILocalVariable(name: "data", scope: !5677, file: !3, line: 469, type: !5298)
!5677 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 467, column: 32)
!5678 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 467, column: 6)
!5679 = !DIGlobalVariableExpression(var: !5680, expr: !DIExpression())
!5680 = distinct !DIGlobalVariable(scope: null, file: !3, line: 479, type: !5667, isLocal: true, isDefinition: true)
!5681 = !DIGlobalVariableExpression(var: !5682, expr: !DIExpression())
!5682 = distinct !DIGlobalVariable(scope: null, file: !3, line: 491, type: !5667, isLocal: true, isDefinition: true)
!5683 = !DIGlobalVariableExpression(var: !5684, expr: !DIExpression())
!5684 = distinct !DIGlobalVariable(scope: null, file: !3, line: 513, type: !281, isLocal: true, isDefinition: true)
!5685 = !DIGlobalVariableExpression(var: !5686, expr: !DIExpression())
!5686 = distinct !DIGlobalVariable(name: "amd_hid_ids", scope: !2, file: !3, line: 450, type: !5687, isLocal: true, isDefinition: true)
!5687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2276, size: 1280, elements: !1044)
!5688 = !DIGlobalVariableExpression(var: !5689, expr: !DIExpression())
!5689 = distinct !DIGlobalVariable(name: "amd_picasso", scope: !2, file: !3, line: 442, type: !5299, isLocal: true, isDefinition: true)
!5690 = !DIGlobalVariableExpression(var: !5691, expr: !DIExpression())
!5691 = distinct !DIGlobalVariable(name: "amd_cezanne", scope: !2, file: !3, line: 446, type: !5299, isLocal: true, isDefinition: true)
!5692 = !DIGlobalVariableExpression(var: !5693, expr: !DIExpression())
!5693 = distinct !DIGlobalVariable(scope: null, file: !3, line: 122, type: !5354, isLocal: true, isDefinition: true)
!5694 = !DIGlobalVariableExpression(var: !5695, expr: !DIExpression())
!5695 = distinct !DIGlobalVariable(scope: null, file: !3, line: 122, type: !5696, isLocal: true, isDefinition: true)
!5696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 224, elements: !5697)
!5697 = !{!5698}
!5698 = !DISubrange(count: 28)
!5699 = !DIGlobalVariableExpression(var: !5700, expr: !DIExpression())
!5700 = distinct !DIGlobalVariable(scope: null, file: !265, line: 480, type: !5701, isLocal: true, isDefinition: true)
!5701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 168, elements: !5702)
!5702 = !{!5703}
!5703 = !DISubrange(count: 21)
!5704 = !DIGlobalVariableExpression(var: !5705, expr: !DIExpression())
!5705 = distinct !DIGlobalVariable(name: "acpi_s2idle_ops_lps0", scope: !2, file: !3, line: 624, type: !5706, isLocal: true, isDefinition: true)
!5706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5707)
!5707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_s2idle_ops", file: !5305, line: 193, size: 512, elements: !5708)
!5708 = !{!5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716}
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !5707, file: !5305, line: 194, baseType: !5081, size: 64)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5707, file: !5305, line: 195, baseType: !5081, size: 64, offset: 64)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_late", scope: !5707, file: !5305, line: 196, baseType: !5081, size: 64, offset: 128)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !5707, file: !5305, line: 197, baseType: !3548, size: 64, offset: 192)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "wake", scope: !5707, file: !5305, line: 198, baseType: !2700, size: 64, offset: 256)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !5707, file: !5305, line: 199, baseType: !3548, size: 64, offset: 320)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !5707, file: !5305, line: 200, baseType: !3548, size: 64, offset: 384)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5707, file: !5305, line: 201, baseType: !3548, size: 64, offset: 448)
!5717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 152, elements: !5718)
!5718 = !{!5719}
!5719 = !DISubrange(count: 19)
!5720 = !{i32 7, !"Dwarf Version", i32 5}
!5721 = !{i32 2, !"Debug Info Version", i32 3}
!5722 = !{i32 1, !"wchar_size", i32 2}
!5723 = !{i32 8, !"cf-protection-branch", i32 1}
!5724 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5725 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5726 = !{i32 1, !"Code Model", i32 2}
!5727 = !{i32 1, !"override-stack-alignment", i32 8}
!5728 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5729 = distinct !DISubprogram(name: "acpi_get_lps0_constraint", scope: !3, file: !3, line: 314, type: !5657, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5730)
!5730 = !{!5731, !5732, !5733}
!5731 = !DILocalVariable(name: "adev", arg: 1, scope: !5729, file: !3, line: 314, type: !5418)
!5732 = !DILocalVariable(name: "entry", scope: !5729, file: !3, line: 316, type: !5345)
!5733 = !DILocalVariable(name: "i", scope: !5734, file: !3, line: 318, type: !42)
!5734 = distinct !DILexicalBlock(scope: !5729, file: !3, line: 318, column: 2)
!5735 = !DILocation(line: 314, column: 50, scope: !5729)
!5736 = !DILocation(line: 316, column: 2, scope: !5729)
!5737 = !DILocation(line: 316, column: 26, scope: !5729)
!5738 = !DILocation(line: 318, column: 2, scope: !5734)
!5739 = !DILocation(line: 318, column: 2, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 318, column: 2)
!5741 = !DILocation(line: 319, column: 7, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 319, column: 7)
!5743 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 318, column: 33)
!5744 = !DILocation(line: 319, column: 13, scope: !5742)
!5745 = !DILocation(line: 319, column: 23, scope: !5742)
!5746 = !DILocation(line: 319, column: 30, scope: !5742)
!5747 = !DILocation(line: 319, column: 20, scope: !5742)
!5748 = !DILocation(line: 319, column: 7, scope: !5743)
!5749 = !DILocation(line: 320, column: 11, scope: !5742)
!5750 = !DILocation(line: 320, column: 18, scope: !5742)
!5751 = !DILocation(line: 320, column: 4, scope: !5742)
!5752 = !DILocation(line: 321, column: 2, scope: !5743)
!5753 = distinct !{!5753, !5738, !5754, !5755, !5756}
!5754 = !DILocation(line: 321, column: 2, scope: !5734)
!5755 = !{!"llvm.loop.mustprogress"}
!5756 = !{!"llvm.loop.unroll.disable"}
!5757 = !DILocation(line: 323, column: 2, scope: !5729)
!5758 = !DILocation(line: 324, column: 1, scope: !5729)
!5759 = distinct !DISubprogram(name: "acpi_s2idle_prepare_late", scope: !3, file: !3, line: 531, type: !5082, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5760)
!5760 = !{!5761, !5762, !5765}
!5761 = !DILocalVariable(name: "handler", scope: !5759, file: !3, line: 533, type: !5290)
!5762 = !DILocalVariable(name: "__mptr", scope: !5763, file: !3, line: 566, type: !40)
!5763 = distinct !DILexicalBlock(scope: !5764, file: !3, line: 566, column: 2)
!5764 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 566, column: 2)
!5765 = !DILocalVariable(name: "__mptr", scope: !5766, file: !3, line: 566, type: !40)
!5766 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 566, column: 2)
!5767 = distinct !DILexicalBlock(scope: !5764, file: !3, line: 566, column: 2)
!5768 = !DILocation(line: 533, column: 2, scope: !5759)
!5769 = !DILocation(line: 533, column: 30, scope: !5759)
!5770 = !DILocation(line: 535, column: 7, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 535, column: 6)
!5772 = !DILocation(line: 535, column: 26, scope: !5771)
!5773 = !DILocation(line: 535, column: 29, scope: !5771)
!5774 = !{i8 0, i8 2}
!5775 = !DILocation(line: 535, column: 6, scope: !5759)
!5776 = !DILocation(line: 536, column: 3, scope: !5771)
!5777 = !DILocation(line: 538, column: 6, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 538, column: 6)
!5779 = !DILocation(line: 538, column: 6, scope: !5759)
!5780 = !DILocation(line: 539, column: 3, scope: !5778)
!5781 = !DILocation(line: 542, column: 6, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 542, column: 6)
!5783 = !DILocation(line: 542, column: 25, scope: !5782)
!5784 = !DILocation(line: 542, column: 6, scope: !5759)
!5785 = !DILocation(line: 543, column: 27, scope: !5782)
!5786 = !DILocation(line: 546, column: 6, scope: !5782)
!5787 = !DILocation(line: 543, column: 3, scope: !5782)
!5788 = !DILocation(line: 548, column: 6, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 548, column: 6)
!5790 = !DILocation(line: 548, column: 35, scope: !5789)
!5791 = !DILocation(line: 548, column: 6, scope: !5759)
!5792 = !DILocation(line: 550, column: 5, scope: !5789)
!5793 = !DILocation(line: 549, column: 3, scope: !5789)
!5794 = !DILocation(line: 553, column: 6, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 553, column: 6)
!5796 = !DILocation(line: 553, column: 25, scope: !5795)
!5797 = !DILocation(line: 553, column: 6, scope: !5759)
!5798 = !DILocation(line: 554, column: 27, scope: !5795)
!5799 = !DILocation(line: 557, column: 6, scope: !5795)
!5800 = !DILocation(line: 554, column: 3, scope: !5795)
!5801 = !DILocation(line: 558, column: 6, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 558, column: 6)
!5803 = !DILocation(line: 558, column: 35, scope: !5802)
!5804 = !DILocation(line: 558, column: 6, scope: !5759)
!5805 = !DILocation(line: 561, column: 5, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5802, file: !3, line: 558, column: 40)
!5807 = !DILocation(line: 560, column: 3, scope: !5806)
!5808 = !DILocation(line: 563, column: 5, scope: !5806)
!5809 = !DILocation(line: 562, column: 3, scope: !5806)
!5810 = !DILocation(line: 564, column: 2, scope: !5806)
!5811 = !DILocation(line: 566, column: 2, scope: !5763)
!5812 = !DILocation(line: 566, column: 2, scope: !5764)
!5813 = !DILocation(line: 566, column: 2, scope: !5767)
!5814 = !DILocation(line: 567, column: 7, scope: !5815)
!5815 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 567, column: 7)
!5816 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 566, column: 68)
!5817 = !DILocation(line: 567, column: 16, scope: !5815)
!5818 = !DILocation(line: 567, column: 7, scope: !5816)
!5819 = !DILocation(line: 568, column: 4, scope: !5815)
!5820 = !DILocation(line: 568, column: 13, scope: !5815)
!5821 = !DILocation(line: 569, column: 2, scope: !5816)
!5822 = !DILocation(line: 566, column: 2, scope: !5766)
!5823 = distinct !{!5823, !5812, !5824, !5755, !5756}
!5824 = !DILocation(line: 569, column: 2, scope: !5764)
!5825 = !DILocation(line: 571, column: 2, scope: !5759)
!5826 = !DILocation(line: 572, column: 1, scope: !5759)
!5827 = distinct !DISubprogram(name: "lpi_check_constraints", scope: !3, file: !3, line: 326, type: !3549, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5828)
!5828 = !{!5829, !5830, !5832}
!5829 = !DILocalVariable(name: "entry", scope: !5827, file: !3, line: 328, type: !5345)
!5830 = !DILocalVariable(name: "i", scope: !5831, file: !3, line: 330, type: !42)
!5831 = distinct !DILexicalBlock(scope: !5827, file: !3, line: 330, column: 2)
!5832 = !DILocalVariable(name: "adev", scope: !5833, file: !3, line: 331, type: !5418)
!5833 = distinct !DILexicalBlock(scope: !5834, file: !3, line: 330, column: 33)
!5834 = distinct !DILexicalBlock(scope: !5831, file: !3, line: 330, column: 2)
!5835 = !DILocation(line: 328, column: 2, scope: !5827)
!5836 = !DILocation(line: 328, column: 26, scope: !5827)
!5837 = !DILocation(line: 330, column: 2, scope: !5831)
!5838 = !DILocation(line: 330, column: 2, scope: !5834)
!5839 = !DILocation(line: 331, column: 3, scope: !5833)
!5840 = !DILocation(line: 331, column: 23, scope: !5833)
!5841 = !DILocation(line: 331, column: 50, scope: !5833)
!5842 = !DILocation(line: 331, column: 57, scope: !5833)
!5843 = !DILocation(line: 331, column: 30, scope: !5833)
!5844 = !DILocation(line: 333, column: 8, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 333, column: 7)
!5846 = !DILocation(line: 333, column: 7, scope: !5833)
!5847 = !DILocation(line: 334, column: 4, scope: !5845)
!5848 = !DILocation(line: 336, column: 3, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5850, file: !3, line: 336, column: 3)
!5850 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 336, column: 3)
!5851 = !DILocation(line: 336, column: 3, scope: !5850)
!5852 = !DILocation(line: 341, column: 8, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 341, column: 7)
!5854 = !DILocation(line: 341, column: 14, scope: !5853)
!5855 = !DILocation(line: 341, column: 20, scope: !5853)
!5856 = !DILocation(line: 341, column: 7, scope: !5833)
!5857 = !DILocation(line: 342, column: 4, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 341, column: 38)
!5859 = !DILocation(line: 343, column: 4, scope: !5858)
!5860 = !DILocation(line: 343, column: 11, scope: !5858)
!5861 = !DILocation(line: 343, column: 18, scope: !5858)
!5862 = !DILocation(line: 344, column: 4, scope: !5858)
!5863 = !DILocation(line: 347, column: 7, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5833, file: !3, line: 347, column: 7)
!5865 = !DILocation(line: 347, column: 13, scope: !5864)
!5866 = !DILocation(line: 347, column: 19, scope: !5864)
!5867 = !DILocation(line: 347, column: 27, scope: !5864)
!5868 = !DILocation(line: 347, column: 34, scope: !5864)
!5869 = !DILocation(line: 347, column: 25, scope: !5864)
!5870 = !DILocation(line: 347, column: 7, scope: !5833)
!5871 = !DILocation(line: 348, column: 4, scope: !5864)
!5872 = !DILocation(line: 352, column: 2, scope: !5834)
!5873 = !DILocation(line: 352, column: 2, scope: !5833)
!5874 = distinct !{!5874, !5837, !5875, !5755, !5756}
!5875 = !DILocation(line: 352, column: 2, scope: !5831)
!5876 = !DILocation(line: 353, column: 1, scope: !5827)
!5877 = distinct !DISubprogram(name: "acpi_sleep_run_lps0_dsm", scope: !3, file: !3, line: 393, type: !5878, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5880)
!5878 = !DISubroutineType(types: !5879)
!5879 = !{null, !7, !7, !5333}
!5880 = !{!5881, !5882, !5883, !5884}
!5881 = !DILocalVariable(name: "func", arg: 1, scope: !5877, file: !3, line: 393, type: !7)
!5882 = !DILocalVariable(name: "func_mask", arg: 2, scope: !5877, file: !3, line: 393, type: !7)
!5883 = !DILocalVariable(name: "dsm_guid", arg: 3, scope: !5877, file: !3, line: 393, type: !5333)
!5884 = !DILocalVariable(name: "out_obj", scope: !5877, file: !3, line: 395, type: !5481)
!5885 = !DILocation(line: 393, column: 50, scope: !5877)
!5886 = !DILocation(line: 393, column: 69, scope: !5877)
!5887 = !DILocation(line: 393, column: 87, scope: !5877)
!5888 = !DILocation(line: 395, column: 2, scope: !5877)
!5889 = !DILocation(line: 395, column: 21, scope: !5877)
!5890 = !DILocation(line: 397, column: 8, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5877, file: !3, line: 397, column: 6)
!5892 = !DILocation(line: 397, column: 26, scope: !5891)
!5893 = !DILocation(line: 397, column: 23, scope: !5891)
!5894 = !DILocation(line: 397, column: 18, scope: !5891)
!5895 = !DILocation(line: 397, column: 6, scope: !5877)
!5896 = !DILocation(line: 398, column: 3, scope: !5891)
!5897 = !DILocation(line: 400, column: 30, scope: !5877)
!5898 = !DILocation(line: 401, column: 6, scope: !5877)
!5899 = !DILocation(line: 401, column: 14, scope: !5877)
!5900 = !DILocation(line: 400, column: 12, scope: !5877)
!5901 = !DILocation(line: 400, column: 10, scope: !5877)
!5902 = !DILocation(line: 402, column: 2, scope: !5877)
!5903 = !DILocation(line: 404, column: 19, scope: !5877)
!5904 = !DILocation(line: 404, column: 17, scope: !5877)
!5905 = !DILocation(line: 405, column: 6, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5877, file: !3, line: 405, column: 6)
!5907 = !DILocation(line: 405, column: 6, scope: !5877)
!5908 = !DILocation(line: 406, column: 3, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 405, column: 28)
!5910 = !DILocation(line: 410, column: 2, scope: !5909)
!5911 = !DILocation(line: 411, column: 1, scope: !5877)
!5912 = distinct !DISubprogram(name: "acpi_s2idle_vendor_amd", scope: !3, file: !3, line: 355, type: !2701, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5913 = !DILocation(line: 357, column: 23, scope: !5912)
!5914 = !DILocation(line: 357, column: 9, scope: !5912)
!5915 = !DILocation(line: 357, column: 34, scope: !5912)
!5916 = !DILocation(line: 357, column: 2, scope: !5912)
!5917 = distinct !DISubprogram(name: "acpi_s2idle_check", scope: !3, file: !3, line: 574, type: !3549, scopeLine: 575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5918)
!5918 = !{!5919, !5920, !5923}
!5919 = !DILocalVariable(name: "handler", scope: !5917, file: !3, line: 576, type: !5290)
!5920 = !DILocalVariable(name: "__mptr", scope: !5921, file: !3, line: 581, type: !40)
!5921 = distinct !DILexicalBlock(scope: !5922, file: !3, line: 581, column: 2)
!5922 = distinct !DILexicalBlock(scope: !5917, file: !3, line: 581, column: 2)
!5923 = !DILocalVariable(name: "__mptr", scope: !5924, file: !3, line: 581, type: !40)
!5924 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 581, column: 2)
!5925 = distinct !DILexicalBlock(scope: !5922, file: !3, line: 581, column: 2)
!5926 = !DILocation(line: 576, column: 2, scope: !5917)
!5927 = !DILocation(line: 576, column: 30, scope: !5917)
!5928 = !DILocation(line: 578, column: 7, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5917, file: !3, line: 578, column: 6)
!5930 = !DILocation(line: 578, column: 26, scope: !5929)
!5931 = !DILocation(line: 578, column: 29, scope: !5929)
!5932 = !DILocation(line: 578, column: 6, scope: !5917)
!5933 = !DILocation(line: 579, column: 3, scope: !5929)
!5934 = !DILocation(line: 581, column: 2, scope: !5921)
!5935 = !DILocation(line: 581, column: 2, scope: !5922)
!5936 = !DILocation(line: 581, column: 2, scope: !5925)
!5937 = !DILocation(line: 582, column: 7, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 582, column: 7)
!5939 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 581, column: 68)
!5940 = !DILocation(line: 582, column: 16, scope: !5938)
!5941 = !DILocation(line: 582, column: 7, scope: !5939)
!5942 = !DILocation(line: 583, column: 4, scope: !5938)
!5943 = !DILocation(line: 583, column: 13, scope: !5938)
!5944 = !DILocation(line: 584, column: 2, scope: !5939)
!5945 = !DILocation(line: 581, column: 2, scope: !5924)
!5946 = distinct !{!5946, !5935, !5947, !5755, !5756}
!5947 = !DILocation(line: 584, column: 2, scope: !5922)
!5948 = !DILocation(line: 585, column: 1, scope: !5917)
!5949 = distinct !DISubprogram(name: "acpi_s2idle_restore_early", scope: !3, file: !3, line: 587, type: !3549, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5950)
!5950 = !{!5951, !5952, !5955}
!5951 = !DILocalVariable(name: "handler", scope: !5949, file: !3, line: 589, type: !5290)
!5952 = !DILocalVariable(name: "__mptr", scope: !5953, file: !3, line: 594, type: !40)
!5953 = distinct !DILexicalBlock(scope: !5954, file: !3, line: 594, column: 2)
!5954 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 594, column: 2)
!5955 = !DILocalVariable(name: "__mptr", scope: !5956, file: !3, line: 594, type: !40)
!5956 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 594, column: 2)
!5957 = distinct !DILexicalBlock(scope: !5954, file: !3, line: 594, column: 2)
!5958 = !DILocation(line: 589, column: 2, scope: !5949)
!5959 = !DILocation(line: 589, column: 30, scope: !5949)
!5960 = !DILocation(line: 591, column: 7, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 591, column: 6)
!5962 = !DILocation(line: 591, column: 26, scope: !5961)
!5963 = !DILocation(line: 591, column: 29, scope: !5961)
!5964 = !DILocation(line: 591, column: 6, scope: !5949)
!5965 = !DILocation(line: 592, column: 3, scope: !5961)
!5966 = !DILocation(line: 594, column: 2, scope: !5953)
!5967 = !DILocation(line: 594, column: 2, scope: !5954)
!5968 = !DILocation(line: 594, column: 2, scope: !5957)
!5969 = !DILocation(line: 595, column: 7, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 595, column: 7)
!5971 = !DILocation(line: 595, column: 16, scope: !5970)
!5972 = !DILocation(line: 595, column: 7, scope: !5957)
!5973 = !DILocation(line: 596, column: 4, scope: !5970)
!5974 = !DILocation(line: 596, column: 13, scope: !5970)
!5975 = !DILocation(line: 594, column: 2, scope: !5956)
!5976 = distinct !{!5976, !5967, !5977, !5755, !5756}
!5977 = !DILocation(line: 596, column: 21, scope: !5954)
!5978 = !DILocation(line: 599, column: 6, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 599, column: 6)
!5980 = !DILocation(line: 599, column: 25, scope: !5979)
!5981 = !DILocation(line: 599, column: 6, scope: !5949)
!5982 = !DILocation(line: 600, column: 27, scope: !5979)
!5983 = !DILocation(line: 603, column: 6, scope: !5979)
!5984 = !DILocation(line: 600, column: 3, scope: !5979)
!5985 = !DILocation(line: 604, column: 6, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 604, column: 6)
!5987 = !DILocation(line: 604, column: 35, scope: !5986)
!5988 = !DILocation(line: 604, column: 6, scope: !5949)
!5989 = !DILocation(line: 606, column: 5, scope: !5986)
!5990 = !DILocation(line: 605, column: 3, scope: !5986)
!5991 = !DILocation(line: 609, column: 6, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 609, column: 6)
!5993 = !DILocation(line: 609, column: 35, scope: !5992)
!5994 = !DILocation(line: 609, column: 6, scope: !5949)
!5995 = !DILocation(line: 611, column: 5, scope: !5992)
!5996 = !DILocation(line: 610, column: 3, scope: !5992)
!5997 = !DILocation(line: 614, column: 6, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 614, column: 6)
!5999 = !DILocation(line: 614, column: 35, scope: !5998)
!6000 = !DILocation(line: 614, column: 6, scope: !5949)
!6001 = !DILocation(line: 616, column: 5, scope: !5998)
!6002 = !DILocation(line: 615, column: 3, scope: !5998)
!6003 = !DILocation(line: 617, column: 6, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 617, column: 6)
!6005 = !DILocation(line: 617, column: 25, scope: !6004)
!6006 = !DILocation(line: 617, column: 6, scope: !5949)
!6007 = !DILocation(line: 618, column: 27, scope: !6004)
!6008 = !DILocation(line: 621, column: 6, scope: !6004)
!6009 = !DILocation(line: 618, column: 3, scope: !6004)
!6010 = !DILocation(line: 622, column: 1, scope: !5949)
!6011 = distinct !DISubprogram(name: "acpi_s2idle_setup", scope: !3, file: !3, line: 635, type: !3549, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6012 = !DILocation(line: 637, column: 2, scope: !6011)
!6013 = !DILocation(line: 638, column: 2, scope: !6011)
!6014 = !DILocation(line: 639, column: 1, scope: !6011)
!6015 = !DISubprogram(name: "acpi_scan_add_handler", scope: !5405, file: !5405, line: 563, type: !6016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6016 = !DISubroutineType(types: !6017)
!6017 = !{!42, !5619}
!6018 = !DISubprogram(name: "s2idle_set_ops", scope: !5305, file: !5305, line: 315, type: !6019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6019 = !DISubroutineType(types: !6020)
!6020 = !{null, !6021}
!6021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5706, size: 64)
!6022 = distinct !DISubprogram(name: "acpi_register_lps0_dev", scope: !3, file: !3, line: 641, type: !6023, scopeLine: 642, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6025)
!6023 = !DISubroutineType(types: !6024)
!6024 = !{!42, !5290}
!6025 = !{!6026, !6027}
!6026 = !DILocalVariable(name: "arg", arg: 1, scope: !6022, file: !3, line: 641, type: !5290)
!6027 = !DILocalVariable(name: "sleep_flags", scope: !6022, file: !3, line: 643, type: !7)
!6028 = !DILocation(line: 641, column: 56, scope: !6022)
!6029 = !DILocation(line: 643, column: 2, scope: !6022)
!6030 = !DILocation(line: 643, column: 15, scope: !6022)
!6031 = !DILocation(line: 645, column: 7, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !6022, file: !3, line: 645, column: 6)
!6033 = !DILocation(line: 645, column: 26, scope: !6032)
!6034 = !DILocation(line: 645, column: 29, scope: !6032)
!6035 = !DILocation(line: 645, column: 6, scope: !6022)
!6036 = !DILocation(line: 646, column: 3, scope: !6032)
!6037 = !DILocation(line: 648, column: 16, scope: !6022)
!6038 = !DILocation(line: 648, column: 14, scope: !6022)
!6039 = !DILocation(line: 649, column: 12, scope: !6022)
!6040 = !DILocation(line: 649, column: 17, scope: !6022)
!6041 = !DILocation(line: 649, column: 2, scope: !6022)
!6042 = !DILocation(line: 650, column: 22, scope: !6022)
!6043 = !DILocation(line: 650, column: 2, scope: !6022)
!6044 = !DILocation(line: 652, column: 2, scope: !6022)
!6045 = !DILocation(line: 653, column: 1, scope: !6022)
!6046 = !DISubprogram(name: "lock_system_sleep", scope: !5305, file: !5305, line: 529, type: !6047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6047 = !DISubroutineType(types: !6048)
!6048 = !{!7}
!6049 = distinct !DISubprogram(name: "list_add", scope: !6050, file: !6050, line: 167, type: !6051, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6053)
!6050 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6051 = !DISubroutineType(types: !6052)
!6052 = !{null, !120, !120}
!6053 = !{!6054, !6055}
!6054 = !DILocalVariable(name: "new", arg: 1, scope: !6049, file: !6050, line: 167, type: !120)
!6055 = !DILocalVariable(name: "head", arg: 2, scope: !6049, file: !6050, line: 167, type: !120)
!6056 = !DILocation(line: 167, column: 47, scope: !6049)
!6057 = !DILocation(line: 167, column: 70, scope: !6049)
!6058 = !DILocation(line: 169, column: 13, scope: !6049)
!6059 = !DILocation(line: 169, column: 18, scope: !6049)
!6060 = !DILocation(line: 169, column: 24, scope: !6049)
!6061 = !DILocation(line: 169, column: 30, scope: !6049)
!6062 = !DILocation(line: 169, column: 2, scope: !6049)
!6063 = !DILocation(line: 170, column: 1, scope: !6049)
!6064 = !DISubprogram(name: "unlock_system_sleep", scope: !5305, file: !5305, line: 530, type: !6065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6065 = !DISubroutineType(types: !6066)
!6066 = !{null, !7}
!6067 = distinct !DISubprogram(name: "acpi_unregister_lps0_dev", scope: !3, file: !3, line: 656, type: !6068, scopeLine: 657, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6070)
!6068 = !DISubroutineType(types: !6069)
!6069 = !{null, !5290}
!6070 = !{!6071, !6072}
!6071 = !DILocalVariable(name: "arg", arg: 1, scope: !6067, file: !3, line: 656, type: !5290)
!6072 = !DILocalVariable(name: "sleep_flags", scope: !6067, file: !3, line: 658, type: !7)
!6073 = !DILocation(line: 656, column: 59, scope: !6067)
!6074 = !DILocation(line: 658, column: 2, scope: !6067)
!6075 = !DILocation(line: 658, column: 15, scope: !6067)
!6076 = !DILocation(line: 660, column: 7, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6067, file: !3, line: 660, column: 6)
!6078 = !DILocation(line: 660, column: 26, scope: !6077)
!6079 = !DILocation(line: 660, column: 29, scope: !6077)
!6080 = !DILocation(line: 660, column: 6, scope: !6067)
!6081 = !DILocation(line: 661, column: 3, scope: !6077)
!6082 = !DILocation(line: 663, column: 16, scope: !6067)
!6083 = !DILocation(line: 663, column: 14, scope: !6067)
!6084 = !DILocation(line: 664, column: 12, scope: !6067)
!6085 = !DILocation(line: 664, column: 17, scope: !6067)
!6086 = !DILocation(line: 664, column: 2, scope: !6067)
!6087 = !DILocation(line: 665, column: 22, scope: !6067)
!6088 = !DILocation(line: 665, column: 2, scope: !6067)
!6089 = !DILocation(line: 666, column: 1, scope: !6067)
!6090 = distinct !DISubprogram(name: "list_del", scope: !6050, file: !6050, line: 227, type: !6091, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6093)
!6091 = !DISubroutineType(types: !6092)
!6092 = !{null, !120}
!6093 = !{!6094}
!6094 = !DILocalVariable(name: "entry", arg: 1, scope: !6090, file: !6050, line: 227, type: !120)
!6095 = !DILocation(line: 227, column: 47, scope: !6090)
!6096 = !DILocation(line: 229, column: 19, scope: !6090)
!6097 = !DILocation(line: 229, column: 2, scope: !6090)
!6098 = !DILocation(line: 230, column: 2, scope: !6090)
!6099 = !DILocation(line: 230, column: 9, scope: !6090)
!6100 = !DILocation(line: 230, column: 14, scope: !6090)
!6101 = !DILocation(line: 231, column: 2, scope: !6090)
!6102 = !DILocation(line: 231, column: 9, scope: !6090)
!6103 = !DILocation(line: 231, column: 14, scope: !6090)
!6104 = !DILocation(line: 232, column: 1, scope: !6090)
!6105 = !DISubprogram(name: "acpi_fetch_acpi_dev", scope: !5405, file: !5405, line: 813, type: !6106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6106 = !DISubroutineType(types: !6107)
!6107 = !{!5418, !5329}
!6108 = !DISubprogram(name: "acpi_handle_printk", scope: !5292, file: !5292, line: 1180, type: !6109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6109 = !DISubroutineType(types: !6110)
!6110 = !{null, !36, !5329, !36, null}
!6111 = !DISubprogram(name: "acpi_power_state_string", scope: !5405, file: !5405, line: 537, type: !6112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6112 = !DISubroutineType(types: !6113)
!6113 = !{!36, !42}
!6114 = !DISubprogram(name: "acpi_evaluate_dsm", scope: !5405, file: !5405, line: 53, type: !6115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6115 = !DISubroutineType(types: !6116)
!6116 = !{!5481, !5329, !6117, !476, !476, !5481}
!6117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6118, size: 64)
!6118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5333)
!6119 = distinct !DISubprogram(name: "acpi_os_free", scope: !6120, file: !6120, line: 60, type: !2719, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6121)
!6120 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!6121 = !{!6122}
!6122 = !DILocalVariable(name: "memory", arg: 1, scope: !6119, file: !6120, line: 60, type: !40)
!6123 = !DILocation(line: 60, column: 39, scope: !6119)
!6124 = !DILocation(line: 62, column: 8, scope: !6119)
!6125 = !DILocation(line: 62, column: 2, scope: !6119)
!6126 = !DILocation(line: 63, column: 1, scope: !6119)
!6127 = distinct !DISubprogram(name: "acpi_sleep_dsm_state_to_str", scope: !3, file: !3, line: 360, type: !6128, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6130)
!6128 = !DISubroutineType(types: !6129)
!6129 = !{!36, !7}
!6130 = !{!6131}
!6131 = !DILocalVariable(name: "state", arg: 1, scope: !6127, file: !3, line: 360, type: !7)
!6132 = !DILocation(line: 360, column: 61, scope: !6127)
!6133 = !DILocation(line: 362, column: 6, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6127, file: !3, line: 362, column: 6)
!6135 = !DILocation(line: 362, column: 35, scope: !6134)
!6136 = !DILocation(line: 362, column: 39, scope: !6134)
!6137 = !DILocation(line: 362, column: 6, scope: !6127)
!6138 = !DILocation(line: 363, column: 11, scope: !6139)
!6139 = distinct !DILexicalBlock(scope: !6134, file: !3, line: 362, column: 65)
!6140 = !DILocation(line: 363, column: 3, scope: !6139)
!6141 = !DILocation(line: 365, column: 4, scope: !6142)
!6142 = distinct !DILexicalBlock(scope: !6139, file: !3, line: 363, column: 18)
!6143 = !DILocation(line: 367, column: 4, scope: !6142)
!6144 = !DILocation(line: 369, column: 4, scope: !6142)
!6145 = !DILocation(line: 371, column: 4, scope: !6142)
!6146 = !DILocation(line: 373, column: 4, scope: !6142)
!6147 = !DILocation(line: 375, column: 4, scope: !6142)
!6148 = !DILocation(line: 377, column: 2, scope: !6139)
!6149 = !DILocation(line: 378, column: 11, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6134, file: !3, line: 377, column: 9)
!6151 = !DILocation(line: 378, column: 3, scope: !6150)
!6152 = !DILocation(line: 380, column: 4, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 378, column: 18)
!6154 = !DILocation(line: 382, column: 4, scope: !6153)
!6155 = !DILocation(line: 384, column: 4, scope: !6153)
!6156 = !DILocation(line: 386, column: 4, scope: !6153)
!6157 = !DILocation(line: 390, column: 2, scope: !6127)
!6158 = !DILocation(line: 391, column: 1, scope: !6127)
!6159 = !DISubprogram(name: "kfree", scope: !265, file: !265, line: 227, type: !6160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6160 = !DISubroutineType(types: !6161)
!6161 = !{null, !1523}
!6162 = !DILocation(line: 458, column: 51, scope: !5672)
!6163 = !DILocation(line: 459, column: 39, scope: !5672)
!6164 = !DILocation(line: 461, column: 6, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 461, column: 6)
!6166 = !DILocation(line: 461, column: 6, scope: !5672)
!6167 = !DILocation(line: 462, column: 3, scope: !6165)
!6168 = !DILocation(line: 464, column: 46, scope: !5672)
!6169 = !DILocation(line: 464, column: 52, scope: !5672)
!6170 = !DILocation(line: 464, column: 33, scope: !5672)
!6171 = !DILocation(line: 464, column: 31, scope: !5672)
!6172 = !DILocation(line: 467, column: 6, scope: !5678)
!6173 = !DILocation(line: 467, column: 6, scope: !5672)
!6174 = !DILocation(line: 469, column: 3, scope: !5677)
!6175 = !DILocation(line: 469, column: 42, scope: !5677)
!6176 = !DILocation(line: 471, column: 15, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 471, column: 3)
!6178 = !DILocation(line: 471, column: 8, scope: !6177)
!6179 = !DILocation(line: 471, column: 34, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6177, file: !3, line: 471, column: 3)
!6181 = !DILocation(line: 471, column: 42, scope: !6180)
!6182 = !DILocation(line: 471, column: 3, scope: !6177)
!6183 = !DILocation(line: 472, column: 31, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 472, column: 8)
!6185 = !DILocation(line: 472, column: 37, scope: !6184)
!6186 = !DILocation(line: 472, column: 45, scope: !6184)
!6187 = !DILocation(line: 472, column: 8, scope: !6184)
!6188 = !DILocation(line: 472, column: 8, scope: !6180)
!6189 = !DILocation(line: 473, column: 5, scope: !6184)
!6190 = !DILocation(line: 472, column: 53, scope: !6184)
!6191 = !DILocation(line: 471, column: 55, scope: !6180)
!6192 = !DILocation(line: 471, column: 3, scope: !6180)
!6193 = distinct !{!6193, !6182, !6194, !5755, !5756}
!6194 = !DILocation(line: 473, column: 5, scope: !6177)
!6195 = !DILocation(line: 474, column: 7, scope: !6196)
!6196 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 474, column: 7)
!6197 = !DILocation(line: 474, column: 15, scope: !6196)
!6198 = !DILocation(line: 474, column: 7, scope: !5677)
!6199 = !DILocation(line: 475, column: 53, scope: !6196)
!6200 = !DILocation(line: 475, column: 61, scope: !6196)
!6201 = !DILocation(line: 475, column: 11, scope: !6196)
!6202 = !DILocation(line: 475, column: 9, scope: !6196)
!6203 = !DILocation(line: 475, column: 4, scope: !6196)
!6204 = !DILocation(line: 477, column: 9, scope: !6196)
!6205 = !DILocation(line: 478, column: 37, scope: !5677)
!6206 = !DILocation(line: 478, column: 43, scope: !5677)
!6207 = !DILocation(line: 479, column: 30, scope: !5677)
!6208 = !DILocation(line: 478, column: 24, scope: !5677)
!6209 = !DILocation(line: 478, column: 22, scope: !5677)
!6210 = !DILocation(line: 480, column: 7, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 480, column: 7)
!6212 = !DILocation(line: 480, column: 26, scope: !6211)
!6213 = !DILocation(line: 480, column: 32, scope: !6211)
!6214 = !DILocation(line: 480, column: 35, scope: !6211)
!6215 = !DILocation(line: 480, column: 41, scope: !6211)
!6216 = !DILocation(line: 480, column: 7, scope: !5677)
!6217 = !DILocation(line: 481, column: 26, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6211, file: !3, line: 480, column: 59)
!6219 = !DILocation(line: 481, column: 45, scope: !6218)
!6220 = !DILocation(line: 481, column: 51, scope: !6218)
!6221 = !DILocation(line: 481, column: 23, scope: !6218)
!6222 = !DILocation(line: 482, column: 4, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !6224, file: !3, line: 482, column: 4)
!6224 = distinct !DILexicalBlock(scope: !6218, file: !3, line: 482, column: 4)
!6225 = !DILocation(line: 482, column: 4, scope: !6224)
!6226 = !DILocation(line: 484, column: 3, scope: !6218)
!6227 = !DILocation(line: 484, column: 14, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6211, file: !3, line: 484, column: 14)
!6229 = !DILocation(line: 484, column: 43, scope: !6228)
!6230 = !DILocation(line: 484, column: 47, scope: !6228)
!6231 = !DILocation(line: 484, column: 50, scope: !6228)
!6232 = !DILocation(line: 484, column: 14, scope: !6211)
!6233 = !DILocation(line: 485, column: 33, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 484, column: 58)
!6235 = !DILocation(line: 486, column: 4, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 486, column: 4)
!6237 = distinct !DILexicalBlock(scope: !6234, file: !3, line: 486, column: 4)
!6238 = !DILocation(line: 486, column: 4, scope: !6237)
!6239 = !DILocation(line: 487, column: 3, scope: !6234)
!6240 = !DILocation(line: 488, column: 2, scope: !5678)
!6241 = !DILocation(line: 488, column: 2, scope: !5677)
!6242 = !DILocation(line: 489, column: 10, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 488, column: 9)
!6244 = !DILocation(line: 490, column: 37, scope: !6243)
!6245 = !DILocation(line: 490, column: 43, scope: !6243)
!6246 = !DILocation(line: 491, column: 26, scope: !6243)
!6247 = !DILocation(line: 490, column: 24, scope: !6243)
!6248 = !DILocation(line: 490, column: 22, scope: !6243)
!6249 = !DILocation(line: 492, column: 32, scope: !6243)
!6250 = !DILocation(line: 495, column: 6, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 495, column: 6)
!6252 = !DILocation(line: 495, column: 25, scope: !6251)
!6253 = !DILocation(line: 495, column: 29, scope: !6251)
!6254 = !DILocation(line: 495, column: 32, scope: !6251)
!6255 = !DILocation(line: 495, column: 61, scope: !6251)
!6256 = !DILocation(line: 495, column: 6, scope: !5672)
!6257 = !DILocation(line: 496, column: 3, scope: !6251)
!6258 = !DILocation(line: 498, column: 23, scope: !5672)
!6259 = !DILocation(line: 498, column: 29, scope: !5672)
!6260 = !DILocation(line: 498, column: 21, scope: !5672)
!6261 = !DILocation(line: 500, column: 6, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 500, column: 6)
!6263 = !DILocation(line: 500, column: 6, scope: !5672)
!6264 = !DILocation(line: 501, column: 3, scope: !6262)
!6265 = !DILocation(line: 503, column: 3, scope: !6262)
!6266 = !DILocation(line: 510, column: 21, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 510, column: 6)
!6268 = !DILocation(line: 510, column: 27, scope: !6267)
!6269 = !DILocation(line: 510, column: 53, scope: !6267)
!6270 = !DILocation(line: 511, column: 6, scope: !6267)
!6271 = !DILocation(line: 511, column: 24, scope: !6267)
!6272 = !DILocation(line: 511, column: 41, scope: !6267)
!6273 = !DILocation(line: 511, column: 45, scope: !6267)
!6274 = !DILocation(line: 510, column: 6, scope: !5672)
!6275 = !DILocation(line: 512, column: 21, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6267, file: !3, line: 511, column: 68)
!6277 = !DILocation(line: 513, column: 3, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6276, file: !3, line: 513, column: 3)
!6279 = !DILocation(line: 513, column: 3, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6278, file: !3, line: 513, column: 3)
!6281 = !DILocation(line: 514, column: 2, scope: !6276)
!6282 = !DILocation(line: 521, column: 2, scope: !5672)
!6283 = !DILocation(line: 523, column: 2, scope: !5672)
!6284 = !DILocation(line: 524, column: 1, scope: !5672)
!6285 = distinct !DISubprogram(name: "validate_dsm", scope: !3, file: !3, line: 414, type: !6286, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6289)
!6286 = !DISubroutineType(types: !6287)
!6287 = !{!42, !5329, !36, !42, !6288}
!6288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5333, size: 64)
!6289 = !{!6290, !6291, !6292, !6293, !6294, !6295, !6296}
!6290 = !DILocalVariable(name: "handle", arg: 1, scope: !6285, file: !3, line: 414, type: !5329)
!6291 = !DILocalVariable(name: "uuid", arg: 2, scope: !6285, file: !3, line: 414, type: !36)
!6292 = !DILocalVariable(name: "rev", arg: 3, scope: !6285, file: !3, line: 414, type: !42)
!6293 = !DILocalVariable(name: "dsm_guid", arg: 4, scope: !6285, file: !3, line: 414, type: !6288)
!6294 = !DILocalVariable(name: "obj", scope: !6285, file: !3, line: 416, type: !5481)
!6295 = !DILocalVariable(name: "ret", scope: !6285, file: !3, line: 417, type: !42)
!6296 = !DILabel(scope: !6285, name: "out", file: !3, line: 433)
!6297 = !DILocation(line: 414, column: 37, scope: !6285)
!6298 = !DILocation(line: 414, column: 57, scope: !6285)
!6299 = !DILocation(line: 414, column: 67, scope: !6285)
!6300 = !DILocation(line: 414, column: 80, scope: !6285)
!6301 = !DILocation(line: 416, column: 2, scope: !6285)
!6302 = !DILocation(line: 416, column: 21, scope: !6285)
!6303 = !DILocation(line: 417, column: 2, scope: !6285)
!6304 = !DILocation(line: 417, column: 6, scope: !6285)
!6305 = !DILocation(line: 419, column: 13, scope: !6285)
!6306 = !DILocation(line: 419, column: 19, scope: !6285)
!6307 = !DILocation(line: 419, column: 2, scope: !6285)
!6308 = !DILocation(line: 420, column: 26, scope: !6285)
!6309 = !DILocation(line: 420, column: 34, scope: !6285)
!6310 = !DILocation(line: 420, column: 44, scope: !6285)
!6311 = !DILocation(line: 420, column: 8, scope: !6285)
!6312 = !DILocation(line: 420, column: 6, scope: !6285)
!6313 = !DILocation(line: 423, column: 7, scope: !6314)
!6314 = distinct !DILexicalBlock(scope: !6285, file: !3, line: 423, column: 6)
!6315 = !DILocation(line: 423, column: 11, scope: !6314)
!6316 = !DILocation(line: 423, column: 14, scope: !6314)
!6317 = !DILocation(line: 423, column: 19, scope: !6314)
!6318 = !DILocation(line: 423, column: 24, scope: !6314)
!6319 = !DILocation(line: 423, column: 44, scope: !6314)
!6320 = !DILocation(line: 423, column: 47, scope: !6314)
!6321 = !DILocation(line: 423, column: 59, scope: !6314)
!6322 = !DILocation(line: 423, column: 66, scope: !6314)
!6323 = !DILocation(line: 423, column: 71, scope: !6314)
!6324 = !DILocation(line: 424, column: 6, scope: !6314)
!6325 = !DILocation(line: 424, column: 18, scope: !6314)
!6326 = !DILocation(line: 424, column: 25, scope: !6314)
!6327 = !DILocation(line: 423, column: 6, scope: !6285)
!6328 = !DILocation(line: 425, column: 3, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6330, file: !3, line: 425, column: 3)
!6330 = distinct !DILexicalBlock(scope: !6331, file: !3, line: 425, column: 3)
!6331 = distinct !DILexicalBlock(scope: !6314, file: !3, line: 424, column: 40)
!6332 = !DILocation(line: 425, column: 3, scope: !6330)
!6333 = !DILocation(line: 427, column: 3, scope: !6331)
!6334 = !DILocation(line: 430, column: 16, scope: !6285)
!6335 = !DILocation(line: 430, column: 28, scope: !6285)
!6336 = !DILocation(line: 430, column: 8, scope: !6285)
!6337 = !DILocation(line: 430, column: 6, scope: !6285)
!6338 = !DILocation(line: 431, column: 2, scope: !6339)
!6339 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 431, column: 2)
!6340 = distinct !DILexicalBlock(scope: !6285, file: !3, line: 431, column: 2)
!6341 = !DILocation(line: 431, column: 2, scope: !6340)
!6342 = !DILocation(line: 431, column: 2, scope: !6285)
!6343 = !DILocation(line: 433, column: 1, scope: !6285)
!6344 = !DILocation(line: 434, column: 2, scope: !6285)
!6345 = !DILocation(line: 435, column: 9, scope: !6285)
!6346 = !DILocation(line: 436, column: 1, scope: !6285)
!6347 = !DILocation(line: 435, column: 2, scope: !6285)
!6348 = !DISubprogram(name: "acpi_dev_hid_uid_match", scope: !5405, file: !5405, line: 764, type: !6349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6349 = !DISubroutineType(types: !6350)
!6350 = !{!943, !5418, !36, !36}
!6351 = distinct !DISubprogram(name: "lpi_device_get_constraints_amd", scope: !3, file: !3, line: 102, type: !3549, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6352)
!6352 = !{!6353, !6354, !6355, !6356, !6357, !6361, !6367, !6374, !6375, !6377, !6381}
!6353 = !DILocalVariable(name: "out_obj", scope: !6351, file: !3, line: 104, type: !5481)
!6354 = !DILocalVariable(name: "i", scope: !6351, file: !3, line: 105, type: !42)
!6355 = !DILocalVariable(name: "j", scope: !6351, file: !3, line: 105, type: !42)
!6356 = !DILocalVariable(name: "k", scope: !6351, file: !3, line: 105, type: !42)
!6357 = !DILocalVariable(name: "package", scope: !6358, file: !3, line: 118, type: !5481)
!6358 = distinct !DILexicalBlock(scope: !6359, file: !3, line: 117, column: 47)
!6359 = distinct !DILexicalBlock(scope: !6360, file: !3, line: 117, column: 2)
!6360 = distinct !DILexicalBlock(scope: !6351, file: !3, line: 117, column: 2)
!6361 = !DILocalVariable(name: "info_obj", scope: !6362, file: !3, line: 138, type: !5481)
!6362 = distinct !DILexicalBlock(scope: !6363, file: !3, line: 137, column: 49)
!6363 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 137, column: 4)
!6364 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 137, column: 4)
!6365 = distinct !DILexicalBlock(scope: !6366, file: !3, line: 120, column: 43)
!6366 = distinct !DILexicalBlock(scope: !6358, file: !3, line: 120, column: 7)
!6367 = !DILocalVariable(name: "dev_info", scope: !6362, file: !3, line: 139, type: !6368)
!6368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpi_device_constraint_amd", file: !3, line: 84, size: 192, elements: !6369)
!6369 = !{!6370, !6371, !6372, !6373}
!6370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6368, file: !3, line: 85, baseType: !329, size: 64)
!6371 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6368, file: !3, line: 86, baseType: !42, size: 32, offset: 64)
!6372 = !DIDerivedType(tag: DW_TAG_member, name: "function_states", scope: !6368, file: !3, line: 87, baseType: !42, size: 32, offset: 96)
!6373 = !DIDerivedType(tag: DW_TAG_member, name: "min_dstate", scope: !6368, file: !3, line: 88, baseType: !42, size: 32, offset: 128)
!6374 = !DILocalVariable(name: "list", scope: !6362, file: !3, line: 140, type: !5345)
!6375 = !DILocalVariable(name: "status", scope: !6362, file: !3, line: 141, type: !6376)
!6376 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !5330, line: 421, baseType: !472)
!6377 = !DILocalVariable(name: "obj", scope: !6378, file: !3, line: 146, type: !5481)
!6378 = distinct !DILexicalBlock(scope: !6379, file: !3, line: 145, column: 51)
!6379 = distinct !DILexicalBlock(scope: !6380, file: !3, line: 145, column: 5)
!6380 = distinct !DILexicalBlock(scope: !6362, file: !3, line: 145, column: 5)
!6381 = !DILabel(scope: !6351, name: "free_acpi_buffer", file: !3, line: 188)
!6382 = !DILocation(line: 104, column: 2, scope: !6351)
!6383 = !DILocation(line: 104, column: 21, scope: !6351)
!6384 = !DILocation(line: 105, column: 2, scope: !6351)
!6385 = !DILocation(line: 105, column: 6, scope: !6351)
!6386 = !DILocation(line: 105, column: 9, scope: !6351)
!6387 = !DILocation(line: 105, column: 12, scope: !6351)
!6388 = !DILocation(line: 107, column: 36, scope: !6351)
!6389 = !DILocation(line: 108, column: 8, scope: !6351)
!6390 = !DILocation(line: 107, column: 12, scope: !6351)
!6391 = !DILocation(line: 107, column: 10, scope: !6351)
!6392 = !DILocation(line: 111, column: 2, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6394, file: !3, line: 111, column: 2)
!6394 = distinct !DILexicalBlock(scope: !6351, file: !3, line: 111, column: 2)
!6395 = !DILocation(line: 111, column: 2, scope: !6394)
!6396 = !DILocation(line: 114, column: 7, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6351, file: !3, line: 114, column: 6)
!6398 = !DILocation(line: 114, column: 6, scope: !6351)
!6399 = !DILocation(line: 115, column: 3, scope: !6397)
!6400 = !DILocation(line: 117, column: 9, scope: !6360)
!6401 = !DILocation(line: 117, column: 7, scope: !6360)
!6402 = !DILocation(line: 117, column: 14, scope: !6359)
!6403 = !DILocation(line: 117, column: 18, scope: !6359)
!6404 = !DILocation(line: 117, column: 35, scope: !6359)
!6405 = !DILocation(line: 117, column: 16, scope: !6359)
!6406 = !DILocation(line: 117, column: 2, scope: !6360)
!6407 = !DILocation(line: 118, column: 3, scope: !6358)
!6408 = !DILocation(line: 118, column: 22, scope: !6358)
!6409 = !DILocation(line: 118, column: 33, scope: !6358)
!6410 = !DILocation(line: 118, column: 50, scope: !6358)
!6411 = !DILocation(line: 118, column: 59, scope: !6358)
!6412 = !DILocation(line: 120, column: 7, scope: !6366)
!6413 = !DILocation(line: 120, column: 16, scope: !6366)
!6414 = !DILocation(line: 120, column: 21, scope: !6366)
!6415 = !DILocation(line: 120, column: 7, scope: !6358)
!6416 = !DILocation(line: 121, column: 8, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 121, column: 8)
!6418 = !DILocation(line: 121, column: 8, scope: !6365)
!6419 = !DILocation(line: 122, column: 5, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !6417, file: !3, line: 121, column: 31)
!6421 = !DILocation(line: 124, column: 5, scope: !6420)
!6422 = !DILocation(line: 127, column: 36, scope: !6365)
!6423 = !DILocation(line: 127, column: 53, scope: !6365)
!6424 = !DILocation(line: 127, column: 28, scope: !6365)
!6425 = !DILocation(line: 127, column: 26, scope: !6365)
!6426 = !DILocation(line: 131, column: 9, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 131, column: 8)
!6428 = !DILocation(line: 131, column: 8, scope: !6365)
!6429 = !DILocation(line: 132, column: 5, scope: !6427)
!6430 = !DILocation(line: 134, column: 4, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6432, file: !3, line: 134, column: 4)
!6432 = distinct !DILexicalBlock(scope: !6365, file: !3, line: 134, column: 4)
!6433 = !DILocation(line: 134, column: 4, scope: !6432)
!6434 = !DILocation(line: 137, column: 11, scope: !6364)
!6435 = !DILocation(line: 137, column: 9, scope: !6364)
!6436 = !DILocation(line: 137, column: 16, scope: !6363)
!6437 = !DILocation(line: 137, column: 20, scope: !6363)
!6438 = !DILocation(line: 137, column: 37, scope: !6363)
!6439 = !DILocation(line: 137, column: 18, scope: !6363)
!6440 = !DILocation(line: 137, column: 4, scope: !6364)
!6441 = !DILocation(line: 138, column: 5, scope: !6362)
!6442 = !DILocation(line: 138, column: 24, scope: !6362)
!6443 = !DILocation(line: 138, column: 36, scope: !6362)
!6444 = !DILocation(line: 138, column: 53, scope: !6362)
!6445 = !DILocation(line: 138, column: 62, scope: !6362)
!6446 = !DILocation(line: 139, column: 5, scope: !6362)
!6447 = !DILocation(line: 139, column: 38, scope: !6362)
!6448 = !DILocation(line: 140, column: 5, scope: !6362)
!6449 = !DILocation(line: 140, column: 29, scope: !6362)
!6450 = !DILocation(line: 141, column: 5, scope: !6362)
!6451 = !DILocation(line: 141, column: 17, scope: !6362)
!6452 = !DILocation(line: 143, column: 13, scope: !6362)
!6453 = !DILocation(line: 143, column: 35, scope: !6362)
!6454 = !DILocation(line: 143, column: 10, scope: !6362)
!6455 = !DILocation(line: 145, column: 12, scope: !6380)
!6456 = !DILocation(line: 145, column: 10, scope: !6380)
!6457 = !DILocation(line: 145, column: 17, scope: !6379)
!6458 = !DILocation(line: 145, column: 21, scope: !6379)
!6459 = !DILocation(line: 145, column: 39, scope: !6379)
!6460 = !DILocation(line: 145, column: 19, scope: !6379)
!6461 = !DILocation(line: 145, column: 5, scope: !6380)
!6462 = !DILocation(line: 146, column: 6, scope: !6378)
!6463 = !DILocation(line: 146, column: 25, scope: !6378)
!6464 = !DILocation(line: 146, column: 32, scope: !6378)
!6465 = !DILocation(line: 146, column: 50, scope: !6378)
!6466 = !DILocation(line: 146, column: 59, scope: !6378)
!6467 = !DILocation(line: 148, column: 14, scope: !6378)
!6468 = !DILocation(line: 148, column: 6, scope: !6378)
!6469 = !DILocation(line: 150, column: 26, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6378, file: !3, line: 148, column: 17)
!6471 = !DILocation(line: 150, column: 39, scope: !6470)
!6472 = !DILocation(line: 150, column: 16, scope: !6470)
!6473 = !DILocation(line: 150, column: 24, scope: !6470)
!6474 = !DILocation(line: 151, column: 7, scope: !6470)
!6475 = !DILocation(line: 153, column: 23, scope: !6470)
!6476 = !DILocation(line: 153, column: 35, scope: !6470)
!6477 = !DILocation(line: 153, column: 16, scope: !6470)
!6478 = !DILocation(line: 153, column: 21, scope: !6470)
!6479 = !DILocation(line: 154, column: 7, scope: !6470)
!6480 = !DILocation(line: 156, column: 34, scope: !6470)
!6481 = !DILocation(line: 156, column: 47, scope: !6470)
!6482 = !DILocation(line: 156, column: 16, scope: !6470)
!6483 = !DILocation(line: 156, column: 32, scope: !6470)
!6484 = !DILocation(line: 157, column: 7, scope: !6470)
!6485 = !DILocation(line: 159, column: 29, scope: !6470)
!6486 = !DILocation(line: 159, column: 42, scope: !6470)
!6487 = !DILocation(line: 159, column: 16, scope: !6470)
!6488 = !DILocation(line: 159, column: 27, scope: !6470)
!6489 = !DILocation(line: 160, column: 7, scope: !6470)
!6490 = !DILocation(line: 162, column: 5, scope: !6379)
!6491 = !DILocation(line: 162, column: 5, scope: !6378)
!6492 = !DILocation(line: 145, column: 47, scope: !6379)
!6493 = !DILocation(line: 145, column: 5, scope: !6379)
!6494 = distinct !{!6494, !6461, !6495, !5755, !5756}
!6495 = !DILocation(line: 162, column: 5, scope: !6380)
!6496 = !DILocation(line: 164, column: 5, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !6498, file: !3, line: 164, column: 5)
!6498 = distinct !DILexicalBlock(scope: !6362, file: !3, line: 164, column: 5)
!6499 = !DILocation(line: 164, column: 5, scope: !6498)
!6500 = !DILocation(line: 171, column: 19, scope: !6501)
!6501 = distinct !DILexicalBlock(scope: !6362, file: !3, line: 171, column: 9)
!6502 = !DILocation(line: 171, column: 10, scope: !6501)
!6503 = !DILocation(line: 171, column: 27, scope: !6501)
!6504 = !DILocation(line: 171, column: 40, scope: !6501)
!6505 = !DILocation(line: 171, column: 31, scope: !6501)
!6506 = !DILocation(line: 171, column: 45, scope: !6501)
!6507 = !DILocation(line: 172, column: 19, scope: !6501)
!6508 = !DILocation(line: 172, column: 10, scope: !6501)
!6509 = !DILocation(line: 171, column: 9, scope: !6362)
!6510 = !DILocation(line: 173, column: 6, scope: !6501)
!6511 = !DILocation(line: 175, column: 45, scope: !6362)
!6512 = !DILocation(line: 175, column: 52, scope: !6362)
!6513 = !DILocation(line: 175, column: 58, scope: !6362)
!6514 = !DILocation(line: 175, column: 14, scope: !6362)
!6515 = !DILocation(line: 175, column: 12, scope: !6362)
!6516 = !DILocation(line: 176, column: 9, scope: !6517)
!6517 = distinct !DILexicalBlock(scope: !6362, file: !3, line: 176, column: 9)
!6518 = !DILocation(line: 176, column: 9, scope: !6362)
!6519 = !DILocation(line: 177, column: 6, scope: !6517)
!6520 = !DILocation(line: 179, column: 33, scope: !6362)
!6521 = !DILocation(line: 179, column: 5, scope: !6362)
!6522 = !DILocation(line: 179, column: 11, scope: !6362)
!6523 = !DILocation(line: 179, column: 22, scope: !6362)
!6524 = !DILocation(line: 181, column: 31, scope: !6362)
!6525 = !DILocation(line: 182, column: 4, scope: !6363)
!6526 = !DILocation(line: 182, column: 4, scope: !6362)
!6527 = !DILocation(line: 137, column: 45, scope: !6363)
!6528 = !DILocation(line: 137, column: 4, scope: !6363)
!6529 = distinct !{!6529, !6440, !6530, !5755, !5756}
!6530 = !DILocation(line: 182, column: 4, scope: !6364)
!6531 = !DILocation(line: 183, column: 3, scope: !6365)
!6532 = !DILocation(line: 184, column: 2, scope: !6359)
!6533 = !DILocation(line: 184, column: 2, scope: !6358)
!6534 = !DILocation(line: 117, column: 43, scope: !6359)
!6535 = !DILocation(line: 117, column: 2, scope: !6359)
!6536 = distinct !{!6536, !6406, !6537, !5755, !5756}
!6537 = !DILocation(line: 184, column: 2, scope: !6360)
!6538 = !DILocation(line: 186, column: 2, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6540, file: !3, line: 186, column: 2)
!6540 = distinct !DILexicalBlock(scope: !6351, file: !3, line: 186, column: 2)
!6541 = !DILocation(line: 186, column: 2, scope: !6540)
!6542 = !DILocation(line: 186, column: 2, scope: !6351)
!6543 = !DILocation(line: 188, column: 1, scope: !6351)
!6544 = !DILocation(line: 189, column: 2, scope: !6351)
!6545 = !DILocation(line: 190, column: 1, scope: !6351)
!6546 = distinct !DISubprogram(name: "lpi_device_get_constraints", scope: !3, file: !3, line: 192, type: !3549, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6547)
!6547 = !{!6548, !6549, !6550, !6554, !6555, !6556, !6562, !6563, !6564, !6568, !6572, !6573, !6574, !6580}
!6548 = !DILocalVariable(name: "out_obj", scope: !6546, file: !3, line: 194, type: !5481)
!6549 = !DILocalVariable(name: "i", scope: !6546, file: !3, line: 195, type: !42)
!6550 = !DILocalVariable(name: "constraint", scope: !6551, file: !3, line: 216, type: !5345)
!6551 = distinct !DILexicalBlock(scope: !6552, file: !3, line: 215, column: 47)
!6552 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 215, column: 2)
!6553 = distinct !DILexicalBlock(scope: !6546, file: !3, line: 215, column: 2)
!6554 = !DILocalVariable(name: "status", scope: !6551, file: !3, line: 217, type: !6376)
!6555 = !DILocalVariable(name: "package", scope: !6551, file: !3, line: 218, type: !5481)
!6556 = !DILocalVariable(name: "info", scope: !6551, file: !3, line: 219, type: !6557)
!6557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpi_device_info", file: !3, line: 65, size: 192, elements: !6558)
!6558 = !{!6559, !6560, !6561}
!6559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6557, file: !3, line: 66, baseType: !329, size: 64)
!6560 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6557, file: !3, line: 67, baseType: !42, size: 32, offset: 64)
!6561 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !6557, file: !3, line: 68, baseType: !5481, size: 64, offset: 128)
!6562 = !DILocalVariable(name: "package_count", scope: !6551, file: !3, line: 220, type: !42)
!6563 = !DILocalVariable(name: "j", scope: !6551, file: !3, line: 220, type: !42)
!6564 = !DILocalVariable(name: "element", scope: !6565, file: !3, line: 226, type: !5481)
!6565 = distinct !DILexicalBlock(scope: !6566, file: !3, line: 225, column: 48)
!6566 = distinct !DILexicalBlock(scope: !6567, file: !3, line: 225, column: 3)
!6567 = distinct !DILexicalBlock(scope: !6551, file: !3, line: 225, column: 3)
!6568 = !DILocalVariable(name: "info_obj", scope: !6569, file: !3, line: 258, type: !5481)
!6569 = distinct !DILexicalBlock(scope: !6570, file: !3, line: 257, column: 39)
!6570 = distinct !DILexicalBlock(scope: !6571, file: !3, line: 257, column: 3)
!6571 = distinct !DILexicalBlock(scope: !6551, file: !3, line: 257, column: 3)
!6572 = !DILocalVariable(name: "cnstr_pkg", scope: !6569, file: !3, line: 259, type: !5481)
!6573 = !DILocalVariable(name: "obj", scope: !6569, file: !3, line: 260, type: !5481)
!6574 = !DILocalVariable(name: "dev_info", scope: !6569, file: !3, line: 261, type: !6575)
!6575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpi_device_constraint", file: !3, line: 72, size: 96, elements: !6576)
!6576 = !{!6577, !6578, !6579}
!6577 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !6575, file: !3, line: 73, baseType: !42, size: 32)
!6578 = !DIDerivedType(tag: DW_TAG_member, name: "min_dstate", scope: !6575, file: !3, line: 74, baseType: !42, size: 32, offset: 32)
!6579 = !DIDerivedType(tag: DW_TAG_member, name: "function_states", scope: !6575, file: !3, line: 75, baseType: !42, size: 32, offset: 64)
!6580 = !DILabel(scope: !6546, name: "free_acpi_buffer", file: !3, line: 298)
!6581 = !DILocation(line: 194, column: 2, scope: !6546)
!6582 = !DILocation(line: 194, column: 21, scope: !6546)
!6583 = !DILocation(line: 195, column: 2, scope: !6546)
!6584 = !DILocation(line: 195, column: 6, scope: !6546)
!6585 = !DILocation(line: 197, column: 36, scope: !6546)
!6586 = !DILocation(line: 197, column: 12, scope: !6546)
!6587 = !DILocation(line: 197, column: 10, scope: !6546)
!6588 = !DILocation(line: 201, column: 2, scope: !6589)
!6589 = distinct !DILexicalBlock(scope: !6590, file: !3, line: 201, column: 2)
!6590 = distinct !DILexicalBlock(scope: !6546, file: !3, line: 201, column: 2)
!6591 = !DILocation(line: 201, column: 2, scope: !6590)
!6592 = !DILocation(line: 204, column: 7, scope: !6593)
!6593 = distinct !DILexicalBlock(scope: !6546, file: !3, line: 204, column: 6)
!6594 = !DILocation(line: 204, column: 6, scope: !6546)
!6595 = !DILocation(line: 205, column: 3, scope: !6593)
!6596 = !DILocation(line: 207, column: 34, scope: !6546)
!6597 = !DILocation(line: 207, column: 51, scope: !6546)
!6598 = !DILocation(line: 207, column: 26, scope: !6546)
!6599 = !DILocation(line: 207, column: 24, scope: !6546)
!6600 = !DILocation(line: 210, column: 7, scope: !6601)
!6601 = distinct !DILexicalBlock(scope: !6546, file: !3, line: 210, column: 6)
!6602 = !DILocation(line: 210, column: 6, scope: !6546)
!6603 = !DILocation(line: 211, column: 3, scope: !6601)
!6604 = !DILocation(line: 213, column: 2, scope: !6605)
!6605 = distinct !DILexicalBlock(scope: !6606, file: !3, line: 213, column: 2)
!6606 = distinct !DILexicalBlock(scope: !6546, file: !3, line: 213, column: 2)
!6607 = !DILocation(line: 213, column: 2, scope: !6606)
!6608 = !DILocation(line: 215, column: 9, scope: !6553)
!6609 = !DILocation(line: 215, column: 7, scope: !6553)
!6610 = !DILocation(line: 215, column: 14, scope: !6552)
!6611 = !DILocation(line: 215, column: 18, scope: !6552)
!6612 = !DILocation(line: 215, column: 35, scope: !6552)
!6613 = !DILocation(line: 215, column: 16, scope: !6552)
!6614 = !DILocation(line: 215, column: 2, scope: !6553)
!6615 = !DILocation(line: 216, column: 3, scope: !6551)
!6616 = !DILocation(line: 216, column: 27, scope: !6551)
!6617 = !DILocation(line: 217, column: 3, scope: !6551)
!6618 = !DILocation(line: 217, column: 15, scope: !6551)
!6619 = !DILocation(line: 218, column: 3, scope: !6551)
!6620 = !DILocation(line: 218, column: 22, scope: !6551)
!6621 = !DILocation(line: 218, column: 33, scope: !6551)
!6622 = !DILocation(line: 218, column: 50, scope: !6551)
!6623 = !DILocation(line: 218, column: 59, scope: !6551)
!6624 = !DILocation(line: 219, column: 3, scope: !6551)
!6625 = !DILocation(line: 219, column: 26, scope: !6551)
!6626 = !DILocation(line: 220, column: 3, scope: !6551)
!6627 = !DILocation(line: 220, column: 7, scope: !6551)
!6628 = !DILocation(line: 220, column: 26, scope: !6551)
!6629 = !DILocation(line: 222, column: 8, scope: !6630)
!6630 = distinct !DILexicalBlock(scope: !6551, file: !3, line: 222, column: 7)
!6631 = !DILocation(line: 222, column: 7, scope: !6551)
!6632 = !DILocation(line: 223, column: 4, scope: !6630)
!6633 = !DILocation(line: 225, column: 10, scope: !6567)
!6634 = !DILocation(line: 225, column: 8, scope: !6567)
!6635 = !DILocation(line: 225, column: 15, scope: !6566)
!6636 = !DILocation(line: 225, column: 19, scope: !6566)
!6637 = !DILocation(line: 225, column: 36, scope: !6566)
!6638 = !DILocation(line: 225, column: 17, scope: !6566)
!6639 = !DILocation(line: 225, column: 3, scope: !6567)
!6640 = !DILocation(line: 226, column: 4, scope: !6565)
!6641 = !DILocation(line: 226, column: 23, scope: !6565)
!6642 = !DILocation(line: 227, column: 8, scope: !6565)
!6643 = !DILocation(line: 227, column: 25, scope: !6565)
!6644 = !DILocation(line: 227, column: 34, scope: !6565)
!6645 = !DILocation(line: 229, column: 12, scope: !6565)
!6646 = !DILocation(line: 229, column: 21, scope: !6565)
!6647 = !DILocation(line: 229, column: 4, scope: !6565)
!6648 = !DILocation(line: 231, column: 20, scope: !6649)
!6649 = distinct !DILexicalBlock(scope: !6565, file: !3, line: 229, column: 27)
!6650 = !DILocation(line: 231, column: 37, scope: !6649)
!6651 = !DILocation(line: 231, column: 10, scope: !6649)
!6652 = !DILocation(line: 231, column: 18, scope: !6649)
!6653 = !DILocation(line: 232, column: 5, scope: !6649)
!6654 = !DILocation(line: 234, column: 17, scope: !6649)
!6655 = !DILocation(line: 234, column: 33, scope: !6649)
!6656 = !DILocation(line: 234, column: 10, scope: !6649)
!6657 = !DILocation(line: 234, column: 15, scope: !6649)
!6658 = !DILocation(line: 235, column: 5, scope: !6649)
!6659 = !DILocation(line: 237, column: 21, scope: !6649)
!6660 = !DILocation(line: 237, column: 38, scope: !6649)
!6661 = !DILocation(line: 237, column: 19, scope: !6649)
!6662 = !DILocation(line: 238, column: 20, scope: !6649)
!6663 = !DILocation(line: 238, column: 37, scope: !6649)
!6664 = !DILocation(line: 238, column: 10, scope: !6649)
!6665 = !DILocation(line: 238, column: 18, scope: !6649)
!6666 = !DILocation(line: 239, column: 5, scope: !6649)
!6667 = !DILocation(line: 241, column: 3, scope: !6566)
!6668 = !DILocation(line: 241, column: 3, scope: !6565)
!6669 = !DILocation(line: 225, column: 44, scope: !6566)
!6670 = !DILocation(line: 225, column: 3, scope: !6566)
!6671 = distinct !{!6671, !6639, !6672, !5755, !5756}
!6672 = !DILocation(line: 241, column: 3, scope: !6567)
!6673 = !DILocation(line: 243, column: 13, scope: !6674)
!6674 = distinct !DILexicalBlock(scope: !6551, file: !3, line: 243, column: 7)
!6675 = !DILocation(line: 243, column: 8, scope: !6674)
!6676 = !DILocation(line: 243, column: 21, scope: !6674)
!6677 = !DILocation(line: 243, column: 30, scope: !6674)
!6678 = !DILocation(line: 243, column: 25, scope: !6674)
!6679 = !DILocation(line: 243, column: 38, scope: !6674)
!6680 = !DILocation(line: 243, column: 47, scope: !6674)
!6681 = !DILocation(line: 243, column: 42, scope: !6674)
!6682 = !DILocation(line: 243, column: 7, scope: !6551)
!6683 = !DILocation(line: 244, column: 4, scope: !6674)
!6684 = !DILocation(line: 246, column: 17, scope: !6551)
!6685 = !DILocation(line: 246, column: 39, scope: !6551)
!6686 = !DILocation(line: 246, column: 14, scope: !6551)
!6687 = !DILocation(line: 248, column: 39, scope: !6551)
!6688 = !DILocation(line: 248, column: 46, scope: !6551)
!6689 = !DILocation(line: 248, column: 58, scope: !6551)
!6690 = !DILocation(line: 248, column: 12, scope: !6551)
!6691 = !DILocation(line: 248, column: 10, scope: !6551)
!6692 = !DILocation(line: 249, column: 7, scope: !6693)
!6693 = distinct !DILexicalBlock(scope: !6551, file: !3, line: 249, column: 7)
!6694 = !DILocation(line: 249, column: 7, scope: !6551)
!6695 = !DILocation(line: 250, column: 4, scope: !6693)
!6696 = !DILocation(line: 252, column: 3, scope: !6697)
!6697 = distinct !DILexicalBlock(scope: !6698, file: !3, line: 252, column: 3)
!6698 = distinct !DILexicalBlock(scope: !6551, file: !3, line: 252, column: 3)
!6699 = !DILocation(line: 252, column: 3, scope: !6698)
!6700 = !DILocation(line: 255, column: 3, scope: !6551)
!6701 = !DILocation(line: 255, column: 15, scope: !6551)
!6702 = !DILocation(line: 255, column: 26, scope: !6551)
!6703 = !DILocation(line: 257, column: 10, scope: !6571)
!6704 = !DILocation(line: 257, column: 8, scope: !6571)
!6705 = !DILocation(line: 257, column: 15, scope: !6570)
!6706 = !DILocation(line: 257, column: 19, scope: !6570)
!6707 = !DILocation(line: 257, column: 17, scope: !6570)
!6708 = !DILocation(line: 257, column: 3, scope: !6571)
!6709 = !DILocation(line: 258, column: 4, scope: !6569)
!6710 = !DILocation(line: 258, column: 23, scope: !6569)
!6711 = !DILocation(line: 258, column: 40, scope: !6569)
!6712 = !DILocation(line: 258, column: 48, scope: !6569)
!6713 = !DILocation(line: 258, column: 35, scope: !6569)
!6714 = !DILocation(line: 259, column: 4, scope: !6569)
!6715 = !DILocation(line: 259, column: 23, scope: !6569)
!6716 = !DILocation(line: 260, column: 4, scope: !6569)
!6717 = !DILocation(line: 260, column: 23, scope: !6569)
!6718 = !DILocation(line: 261, column: 4, scope: !6569)
!6719 = !DILocation(line: 261, column: 33, scope: !6569)
!6720 = !DILocation(line: 263, column: 12, scope: !6569)
!6721 = !DILocation(line: 263, column: 22, scope: !6569)
!6722 = !DILocation(line: 263, column: 4, scope: !6569)
!6723 = !DILocation(line: 268, column: 9, scope: !6724)
!6724 = distinct !DILexicalBlock(scope: !6725, file: !3, line: 268, column: 9)
!6725 = distinct !DILexicalBlock(scope: !6569, file: !3, line: 263, column: 28)
!6726 = !DILocation(line: 268, column: 27, scope: !6724)
!6727 = !DILocation(line: 268, column: 33, scope: !6724)
!6728 = !DILocation(line: 268, column: 9, scope: !6725)
!6729 = !DILocation(line: 269, column: 6, scope: !6724)
!6730 = !DILocation(line: 271, column: 17, scope: !6725)
!6731 = !DILocation(line: 271, column: 35, scope: !6725)
!6732 = !DILocation(line: 271, column: 15, scope: !6725)
!6733 = !DILocation(line: 272, column: 12, scope: !6725)
!6734 = !DILocation(line: 272, column: 9, scope: !6725)
!6735 = !DILocation(line: 273, column: 20, scope: !6725)
!6736 = !DILocation(line: 273, column: 33, scope: !6725)
!6737 = !DILocation(line: 273, column: 14, scope: !6725)
!6738 = !DILocation(line: 273, column: 18, scope: !6725)
!6739 = !DILocation(line: 274, column: 12, scope: !6725)
!6740 = !DILocation(line: 274, column: 9, scope: !6725)
!6741 = !DILocation(line: 275, column: 27, scope: !6725)
!6742 = !DILocation(line: 275, column: 40, scope: !6725)
!6743 = !DILocation(line: 275, column: 14, scope: !6725)
!6744 = !DILocation(line: 275, column: 25, scope: !6725)
!6745 = !DILocation(line: 277, column: 5, scope: !6746)
!6746 = distinct !DILexicalBlock(scope: !6747, file: !3, line: 277, column: 5)
!6747 = distinct !DILexicalBlock(scope: !6725, file: !3, line: 277, column: 5)
!6748 = !DILocation(line: 277, column: 5, scope: !6747)
!6749 = !DILocation(line: 282, column: 39, scope: !6725)
!6750 = !DILocation(line: 282, column: 5, scope: !6725)
!6751 = !DILocation(line: 282, column: 17, scope: !6725)
!6752 = !DILocation(line: 282, column: 28, scope: !6725)
!6753 = !DILocation(line: 283, column: 5, scope: !6725)
!6754 = !DILocation(line: 285, column: 3, scope: !6570)
!6755 = !DILocation(line: 285, column: 3, scope: !6569)
!6756 = !DILocation(line: 257, column: 35, scope: !6570)
!6757 = !DILocation(line: 257, column: 3, scope: !6570)
!6758 = distinct !{!6758, !6708, !6759, !5755, !5756}
!6759 = !DILocation(line: 285, column: 3, scope: !6571)
!6760 = !DILocation(line: 287, column: 7, scope: !6761)
!6761 = distinct !DILexicalBlock(scope: !6551, file: !3, line: 287, column: 7)
!6762 = !DILocation(line: 287, column: 19, scope: !6761)
!6763 = !DILocation(line: 287, column: 30, scope: !6761)
!6764 = !DILocation(line: 287, column: 7, scope: !6551)
!6765 = !DILocation(line: 288, column: 4, scope: !6766)
!6766 = distinct !DILexicalBlock(scope: !6767, file: !3, line: 288, column: 4)
!6767 = distinct !DILexicalBlock(scope: !6768, file: !3, line: 288, column: 4)
!6768 = distinct !DILexicalBlock(scope: !6761, file: !3, line: 287, column: 35)
!6769 = !DILocation(line: 288, column: 4, scope: !6767)
!6770 = !DILocation(line: 290, column: 4, scope: !6768)
!6771 = !DILocation(line: 293, column: 29, scope: !6551)
!6772 = !DILocation(line: 294, column: 2, scope: !6552)
!6773 = !DILocation(line: 294, column: 2, scope: !6551)
!6774 = !DILocation(line: 215, column: 43, scope: !6552)
!6775 = !DILocation(line: 215, column: 2, scope: !6552)
!6776 = distinct !{!6776, !6614, !6777, !5755, !5756}
!6777 = !DILocation(line: 294, column: 2, scope: !6553)
!6778 = !DILocation(line: 296, column: 2, scope: !6779)
!6779 = distinct !DILexicalBlock(scope: !6780, file: !3, line: 296, column: 2)
!6780 = distinct !DILexicalBlock(scope: !6546, file: !3, line: 296, column: 2)
!6781 = !DILocation(line: 296, column: 2, scope: !6780)
!6782 = !DILocation(line: 296, column: 2, scope: !6546)
!6783 = !DILocation(line: 298, column: 1, scope: !6546)
!6784 = !DILocation(line: 299, column: 2, scope: !6546)
!6785 = !DILocation(line: 300, column: 1, scope: !6546)
!6786 = !DISubprogram(name: "_printk", scope: !6787, file: !6787, line: 153, type: !6788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6787 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6788 = !DISubroutineType(types: !6789)
!6789 = !{!42, !36, null}
!6790 = !DISubprogram(name: "acpi_ec_mark_gpe_for_wake", scope: !5292, file: !5292, line: 1162, type: !3549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6791 = !DISubprogram(name: "guid_parse", scope: !4470, file: !4470, line: 107, type: !6792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6792 = !DISubroutineType(types: !6793)
!6793 = !{!42, !36, !6288}
!6794 = distinct !DISubprogram(name: "acpi_evaluate_dsm_typed", scope: !5405, file: !5405, line: 57, type: !6795, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6797)
!6795 = !DISubroutineType(types: !6796)
!6796 = !{!5481, !5329, !6117, !476, !476, !5481, !5485}
!6797 = !{!6798, !6799, !6800, !6801, !6802, !6803, !6804}
!6798 = !DILocalVariable(name: "handle", arg: 1, scope: !6794, file: !5405, line: 57, type: !5329)
!6799 = !DILocalVariable(name: "guid", arg: 2, scope: !6794, file: !5405, line: 57, type: !6117)
!6800 = !DILocalVariable(name: "rev", arg: 3, scope: !6794, file: !5405, line: 57, type: !476)
!6801 = !DILocalVariable(name: "func", arg: 4, scope: !6794, file: !5405, line: 58, type: !476)
!6802 = !DILocalVariable(name: "argv4", arg: 5, scope: !6794, file: !5405, line: 58, type: !5481)
!6803 = !DILocalVariable(name: "type", arg: 6, scope: !6794, file: !5405, line: 59, type: !5485)
!6804 = !DILocalVariable(name: "obj", scope: !6794, file: !5405, line: 61, type: !5481)
!6805 = !DILocation(line: 57, column: 37, scope: !6794)
!6806 = !DILocation(line: 57, column: 59, scope: !6794)
!6807 = !DILocation(line: 57, column: 69, scope: !6794)
!6808 = !DILocation(line: 58, column: 8, scope: !6794)
!6809 = !DILocation(line: 58, column: 33, scope: !6794)
!6810 = !DILocation(line: 59, column: 21, scope: !6794)
!6811 = !DILocation(line: 61, column: 2, scope: !6794)
!6812 = !DILocation(line: 61, column: 21, scope: !6794)
!6813 = !DILocation(line: 63, column: 26, scope: !6794)
!6814 = !DILocation(line: 63, column: 34, scope: !6794)
!6815 = !DILocation(line: 63, column: 40, scope: !6794)
!6816 = !DILocation(line: 63, column: 45, scope: !6794)
!6817 = !DILocation(line: 63, column: 51, scope: !6794)
!6818 = !DILocation(line: 63, column: 8, scope: !6794)
!6819 = !DILocation(line: 63, column: 6, scope: !6794)
!6820 = !DILocation(line: 64, column: 6, scope: !6821)
!6821 = distinct !DILexicalBlock(scope: !6794, file: !5405, line: 64, column: 6)
!6822 = !DILocation(line: 64, column: 10, scope: !6821)
!6823 = !DILocation(line: 64, column: 13, scope: !6821)
!6824 = !DILocation(line: 64, column: 18, scope: !6821)
!6825 = !DILocation(line: 64, column: 26, scope: !6821)
!6826 = !DILocation(line: 64, column: 23, scope: !6821)
!6827 = !DILocation(line: 64, column: 6, scope: !6794)
!6828 = !DILocation(line: 65, column: 3, scope: !6829)
!6829 = distinct !DILexicalBlock(scope: !6821, file: !5405, line: 64, column: 32)
!6830 = !DILocation(line: 66, column: 7, scope: !6829)
!6831 = !DILocation(line: 67, column: 2, scope: !6829)
!6832 = !DILocation(line: 69, column: 9, scope: !6794)
!6833 = !DILocation(line: 70, column: 1, scope: !6794)
!6834 = !DILocation(line: 69, column: 2, scope: !6794)
!6835 = distinct !DISubprogram(name: "kcalloc", scope: !265, file: !265, line: 666, type: !6836, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6838)
!6836 = !DISubroutineType(types: !6837)
!6837 = !{!40, !55, !55, !1660}
!6838 = !{!6839, !6840, !6841}
!6839 = !DILocalVariable(name: "n", arg: 1, scope: !6835, file: !265, line: 666, type: !55)
!6840 = !DILocalVariable(name: "size", arg: 2, scope: !6835, file: !265, line: 666, type: !55)
!6841 = !DILocalVariable(name: "flags", arg: 3, scope: !6835, file: !265, line: 666, type: !1660)
!6842 = !DILocation(line: 666, column: 55, scope: !6835)
!6843 = !DILocation(line: 666, column: 65, scope: !6835)
!6844 = !DILocation(line: 666, column: 77, scope: !6835)
!6845 = !DILocation(line: 668, column: 23, scope: !6835)
!6846 = !DILocation(line: 668, column: 26, scope: !6835)
!6847 = !DILocation(line: 668, column: 32, scope: !6835)
!6848 = !DILocation(line: 668, column: 38, scope: !6835)
!6849 = !DILocation(line: 668, column: 9, scope: !6835)
!6850 = !DILocation(line: 668, column: 2, scope: !6835)
!6851 = !DISubprogram(name: "acpi_get_handle", scope: !6852, file: !6852, line: 527, type: !6853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6852 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!6853 = !DISubroutineType(types: !6854)
!6854 = !{!6376, !5329, !36, !6855}
!6855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5329, size: 64)
!6856 = distinct !DISubprogram(name: "kmalloc_array", scope: !265, file: !265, line: 629, type: !6836, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6857)
!6857 = !{!6858, !6859, !6860, !6861}
!6858 = !DILocalVariable(name: "n", arg: 1, scope: !6856, file: !265, line: 629, type: !55)
!6859 = !DILocalVariable(name: "size", arg: 2, scope: !6856, file: !265, line: 629, type: !55)
!6860 = !DILocalVariable(name: "flags", arg: 3, scope: !6856, file: !265, line: 629, type: !1660)
!6861 = !DILocalVariable(name: "bytes", scope: !6856, file: !265, line: 631, type: !55)
!6862 = !DILocation(line: 629, column: 61, scope: !6856)
!6863 = !DILocation(line: 629, column: 71, scope: !6856)
!6864 = !DILocation(line: 629, column: 83, scope: !6856)
!6865 = !DILocation(line: 631, column: 2, scope: !6856)
!6866 = !DILocation(line: 631, column: 9, scope: !6856)
!6867 = !DILocation(line: 633, column: 6, scope: !6868)
!6868 = distinct !DILexicalBlock(scope: !6856, file: !265, line: 633, column: 6)
!6869 = !DILocation(line: 633, column: 6, scope: !6856)
!6870 = !DILocation(line: 634, column: 3, scope: !6868)
!6871 = !DILocation(line: 635, column: 27, scope: !6872)
!6872 = distinct !DILexicalBlock(scope: !6856, file: !265, line: 635, column: 6)
!6873 = !DILocation(line: 635, column: 6, scope: !6872)
!6874 = !DILocation(line: 635, column: 30, scope: !6872)
!6875 = !DILocation(line: 635, column: 54, scope: !6872)
!6876 = !DILocation(line: 635, column: 33, scope: !6872)
!6877 = !DILocation(line: 635, column: 6, scope: !6856)
!6878 = !DILocation(line: 636, column: 18, scope: !6872)
!6879 = !DILocation(line: 636, column: 25, scope: !6872)
!6880 = !DILocation(line: 636, column: 10, scope: !6872)
!6881 = !DILocation(line: 636, column: 3, scope: !6872)
!6882 = !DILocation(line: 637, column: 19, scope: !6856)
!6883 = !DILocation(line: 637, column: 26, scope: !6856)
!6884 = !DILocation(line: 637, column: 9, scope: !6856)
!6885 = !DILocation(line: 637, column: 2, scope: !6856)
!6886 = !DILocation(line: 638, column: 1, scope: !6856)
!6887 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6888, file: !6888, line: 51, type: !6889, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6891)
!6888 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6889 = !DISubroutineType(types: !6890)
!6890 = !{!943, !943}
!6891 = !{!6892}
!6892 = !DILocalVariable(name: "overflow", arg: 1, scope: !6887, file: !6888, line: 51, type: !943)
!6893 = !DILocation(line: 51, column: 60, scope: !6887)
!6894 = !DILocation(line: 53, column: 9, scope: !6887)
!6895 = !DILocation(line: 53, column: 2, scope: !6887)
!6896 = distinct !DISubprogram(name: "kmalloc", scope: !265, file: !265, line: 591, type: !6897, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6899)
!6897 = !DISubroutineType(types: !6898)
!6898 = !{!40, !55, !1660}
!6899 = !{!6900, !6901, !6902}
!6900 = !DILocalVariable(name: "size", arg: 1, scope: !6896, file: !265, line: 591, type: !55)
!6901 = !DILocalVariable(name: "flags", arg: 2, scope: !6896, file: !265, line: 591, type: !1660)
!6902 = !DILocalVariable(name: "index", scope: !6903, file: !265, line: 594, type: !7)
!6903 = distinct !DILexicalBlock(scope: !6904, file: !265, line: 593, column: 42)
!6904 = distinct !DILexicalBlock(scope: !6896, file: !265, line: 593, column: 6)
!6905 = !DILocation(line: 591, column: 61, scope: !6896)
!6906 = !DILocation(line: 591, column: 73, scope: !6896)
!6907 = !DILocation(line: 593, column: 27, scope: !6904)
!6908 = !DILocation(line: 593, column: 6, scope: !6904)
!6909 = !DILocation(line: 593, column: 33, scope: !6904)
!6910 = !DILocation(line: 593, column: 36, scope: !6904)
!6911 = !DILocation(line: 593, column: 6, scope: !6896)
!6912 = !DILocation(line: 594, column: 3, scope: !6903)
!6913 = !DILocation(line: 594, column: 16, scope: !6903)
!6914 = !DILocation(line: 596, column: 7, scope: !6915)
!6915 = distinct !DILexicalBlock(scope: !6903, file: !265, line: 596, column: 7)
!6916 = !DILocation(line: 596, column: 12, scope: !6915)
!6917 = !DILocation(line: 596, column: 7, scope: !6903)
!6918 = !DILocation(line: 597, column: 25, scope: !6915)
!6919 = !DILocation(line: 597, column: 31, scope: !6915)
!6920 = !DILocation(line: 597, column: 11, scope: !6915)
!6921 = !DILocation(line: 597, column: 4, scope: !6915)
!6922 = !DILocation(line: 599, column: 11, scope: !6903)
!6923 = !DILocation(line: 599, column: 9, scope: !6903)
!6924 = !DILocation(line: 601, column: 33, scope: !6903)
!6925 = !DILocation(line: 601, column: 40, scope: !6903)
!6926 = !DILocation(line: 601, column: 20, scope: !6903)
!6927 = !DILocation(line: 601, column: 5, scope: !6903)
!6928 = !DILocation(line: 601, column: 51, scope: !6903)
!6929 = !DILocation(line: 602, column: 5, scope: !6903)
!6930 = !DILocation(line: 602, column: 12, scope: !6903)
!6931 = !DILocation(line: 600, column: 10, scope: !6903)
!6932 = !DILocation(line: 600, column: 3, scope: !6903)
!6933 = !DILocation(line: 603, column: 2, scope: !6904)
!6934 = !DILocation(line: 604, column: 19, scope: !6896)
!6935 = !DILocation(line: 604, column: 25, scope: !6896)
!6936 = !DILocation(line: 604, column: 9, scope: !6896)
!6937 = !DILocation(line: 604, column: 2, scope: !6896)
!6938 = !DILocation(line: 605, column: 1, scope: !6896)
!6939 = !DISubprogram(name: "__kmalloc", scope: !265, file: !265, line: 488, type: !6897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6940 = !DISubprogram(name: "kmalloc_large", scope: !265, file: !265, line: 531, type: !6897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6941 = distinct !DISubprogram(name: "__kmalloc_index", scope: !265, file: !265, line: 444, type: !6942, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6944)
!6942 = !DISubroutineType(types: !6943)
!6943 = !{!7, !55, !943}
!6944 = !{!6945, !6946}
!6945 = !DILocalVariable(name: "size", arg: 1, scope: !6941, file: !265, line: 444, type: !55)
!6946 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6941, file: !265, line: 445, type: !943)
!6947 = !DILocation(line: 444, column: 60, scope: !6941)
!6948 = !DILocation(line: 445, column: 16, scope: !6941)
!6949 = !DILocation(line: 447, column: 7, scope: !6950)
!6950 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 447, column: 6)
!6951 = !DILocation(line: 447, column: 6, scope: !6941)
!6952 = !DILocation(line: 448, column: 3, scope: !6950)
!6953 = !DILocation(line: 450, column: 6, scope: !6954)
!6954 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 450, column: 6)
!6955 = !DILocation(line: 450, column: 11, scope: !6954)
!6956 = !DILocation(line: 450, column: 6, scope: !6941)
!6957 = !DILocation(line: 451, column: 3, scope: !6954)
!6958 = !DILocation(line: 453, column: 32, scope: !6959)
!6959 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 453, column: 6)
!6960 = !DILocation(line: 453, column: 37, scope: !6959)
!6961 = !DILocation(line: 453, column: 42, scope: !6959)
!6962 = !DILocation(line: 453, column: 45, scope: !6959)
!6963 = !DILocation(line: 453, column: 50, scope: !6959)
!6964 = !DILocation(line: 453, column: 6, scope: !6941)
!6965 = !DILocation(line: 454, column: 3, scope: !6959)
!6966 = !DILocation(line: 455, column: 32, scope: !6967)
!6967 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 455, column: 6)
!6968 = !DILocation(line: 455, column: 37, scope: !6967)
!6969 = !DILocation(line: 455, column: 43, scope: !6967)
!6970 = !DILocation(line: 455, column: 46, scope: !6967)
!6971 = !DILocation(line: 455, column: 51, scope: !6967)
!6972 = !DILocation(line: 455, column: 6, scope: !6941)
!6973 = !DILocation(line: 456, column: 3, scope: !6967)
!6974 = !DILocation(line: 457, column: 6, scope: !6975)
!6975 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 457, column: 6)
!6976 = !DILocation(line: 457, column: 11, scope: !6975)
!6977 = !DILocation(line: 457, column: 6, scope: !6941)
!6978 = !DILocation(line: 457, column: 26, scope: !6975)
!6979 = !DILocation(line: 458, column: 6, scope: !6980)
!6980 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 458, column: 6)
!6981 = !DILocation(line: 458, column: 11, scope: !6980)
!6982 = !DILocation(line: 458, column: 6, scope: !6941)
!6983 = !DILocation(line: 458, column: 26, scope: !6980)
!6984 = !DILocation(line: 459, column: 6, scope: !6985)
!6985 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 459, column: 6)
!6986 = !DILocation(line: 459, column: 11, scope: !6985)
!6987 = !DILocation(line: 459, column: 6, scope: !6941)
!6988 = !DILocation(line: 459, column: 26, scope: !6985)
!6989 = !DILocation(line: 460, column: 6, scope: !6990)
!6990 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 460, column: 6)
!6991 = !DILocation(line: 460, column: 11, scope: !6990)
!6992 = !DILocation(line: 460, column: 6, scope: !6941)
!6993 = !DILocation(line: 460, column: 26, scope: !6990)
!6994 = !DILocation(line: 461, column: 6, scope: !6995)
!6995 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 461, column: 6)
!6996 = !DILocation(line: 461, column: 11, scope: !6995)
!6997 = !DILocation(line: 461, column: 6, scope: !6941)
!6998 = !DILocation(line: 461, column: 26, scope: !6995)
!6999 = !DILocation(line: 462, column: 6, scope: !7000)
!7000 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 462, column: 6)
!7001 = !DILocation(line: 462, column: 11, scope: !7000)
!7002 = !DILocation(line: 462, column: 6, scope: !6941)
!7003 = !DILocation(line: 462, column: 26, scope: !7000)
!7004 = !DILocation(line: 463, column: 6, scope: !7005)
!7005 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 463, column: 6)
!7006 = !DILocation(line: 463, column: 11, scope: !7005)
!7007 = !DILocation(line: 463, column: 6, scope: !6941)
!7008 = !DILocation(line: 463, column: 26, scope: !7005)
!7009 = !DILocation(line: 464, column: 6, scope: !7010)
!7010 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 464, column: 6)
!7011 = !DILocation(line: 464, column: 11, scope: !7010)
!7012 = !DILocation(line: 464, column: 6, scope: !6941)
!7013 = !DILocation(line: 464, column: 26, scope: !7010)
!7014 = !DILocation(line: 465, column: 6, scope: !7015)
!7015 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 465, column: 6)
!7016 = !DILocation(line: 465, column: 11, scope: !7015)
!7017 = !DILocation(line: 465, column: 6, scope: !6941)
!7018 = !DILocation(line: 465, column: 26, scope: !7015)
!7019 = !DILocation(line: 466, column: 6, scope: !7020)
!7020 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 466, column: 6)
!7021 = !DILocation(line: 466, column: 11, scope: !7020)
!7022 = !DILocation(line: 466, column: 6, scope: !6941)
!7023 = !DILocation(line: 466, column: 26, scope: !7020)
!7024 = !DILocation(line: 467, column: 6, scope: !7025)
!7025 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 467, column: 6)
!7026 = !DILocation(line: 467, column: 11, scope: !7025)
!7027 = !DILocation(line: 467, column: 6, scope: !6941)
!7028 = !DILocation(line: 467, column: 26, scope: !7025)
!7029 = !DILocation(line: 468, column: 6, scope: !7030)
!7030 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 468, column: 6)
!7031 = !DILocation(line: 468, column: 11, scope: !7030)
!7032 = !DILocation(line: 468, column: 6, scope: !6941)
!7033 = !DILocation(line: 468, column: 26, scope: !7030)
!7034 = !DILocation(line: 469, column: 6, scope: !7035)
!7035 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 469, column: 6)
!7036 = !DILocation(line: 469, column: 11, scope: !7035)
!7037 = !DILocation(line: 469, column: 6, scope: !6941)
!7038 = !DILocation(line: 469, column: 26, scope: !7035)
!7039 = !DILocation(line: 470, column: 6, scope: !7040)
!7040 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 470, column: 6)
!7041 = !DILocation(line: 470, column: 11, scope: !7040)
!7042 = !DILocation(line: 470, column: 6, scope: !6941)
!7043 = !DILocation(line: 470, column: 26, scope: !7040)
!7044 = !DILocation(line: 471, column: 6, scope: !7045)
!7045 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 471, column: 6)
!7046 = !DILocation(line: 471, column: 11, scope: !7045)
!7047 = !DILocation(line: 471, column: 6, scope: !6941)
!7048 = !DILocation(line: 471, column: 26, scope: !7045)
!7049 = !DILocation(line: 472, column: 6, scope: !7050)
!7050 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 472, column: 6)
!7051 = !DILocation(line: 472, column: 11, scope: !7050)
!7052 = !DILocation(line: 472, column: 6, scope: !6941)
!7053 = !DILocation(line: 472, column: 26, scope: !7050)
!7054 = !DILocation(line: 473, column: 6, scope: !7055)
!7055 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 473, column: 6)
!7056 = !DILocation(line: 473, column: 11, scope: !7055)
!7057 = !DILocation(line: 473, column: 6, scope: !6941)
!7058 = !DILocation(line: 473, column: 26, scope: !7055)
!7059 = !DILocation(line: 474, column: 6, scope: !7060)
!7060 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 474, column: 6)
!7061 = !DILocation(line: 474, column: 11, scope: !7060)
!7062 = !DILocation(line: 474, column: 6, scope: !6941)
!7063 = !DILocation(line: 474, column: 27, scope: !7060)
!7064 = !DILocation(line: 475, column: 6, scope: !7065)
!7065 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 475, column: 6)
!7066 = !DILocation(line: 475, column: 11, scope: !7065)
!7067 = !DILocation(line: 475, column: 6, scope: !6941)
!7068 = !DILocation(line: 475, column: 32, scope: !7065)
!7069 = !DILocation(line: 477, column: 50, scope: !7070)
!7070 = distinct !DILexicalBlock(scope: !6941, file: !265, line: 477, column: 6)
!7071 = !DILocation(line: 477, column: 6, scope: !6941)
!7072 = !DILocation(line: 478, column: 3, scope: !7070)
!7073 = !DILocation(line: 478, column: 3, scope: !7074)
!7074 = distinct !DILexicalBlock(scope: !7075, file: !265, line: 478, column: 3)
!7075 = distinct !DILexicalBlock(scope: !7070, file: !265, line: 478, column: 3)
!7076 = !{i32 -2143452107}
!7077 = !DILocation(line: 478, column: 3, scope: !7075)
!7078 = !DILocation(line: 480, column: 3, scope: !7070)
!7079 = !DILocation(line: 480, column: 3, scope: !7080)
!7080 = distinct !DILexicalBlock(scope: !7070, file: !265, line: 480, column: 3)
!7081 = !DILocation(line: 480, column: 3, scope: !7082)
!7082 = distinct !DILexicalBlock(scope: !7080, file: !265, line: 480, column: 3)
!7083 = !DILocation(line: 480, column: 3, scope: !7084)
!7084 = distinct !DILexicalBlock(scope: !7080, file: !265, line: 480, column: 3)
!7085 = !{i64 2151515392, i64 2151515421, i64 2151515467, i64 2151515525, i64 2151515579, i64 2151515633, i64 2151515688, i64 2151515719}
!7086 = !DILocation(line: 483, column: 2, scope: !6941)
!7087 = !DILocation(line: 484, column: 1, scope: !6941)
!7088 = !DISubprogram(name: "kmalloc_trace", scope: !265, file: !265, line: 525, type: !7089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7089 = !DISubroutineType(types: !7090)
!7090 = !{!40, !7091, !1660, !55}
!7091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7092, size: 64)
!7092 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !7093, line: 11, flags: DIFlagFwdDecl)
!7093 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!7094 = distinct !DISubprogram(name: "kmalloc_type", scope: !265, file: !265, line: 401, type: !7095, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7097)
!7095 = !DISubroutineType(types: !7096)
!7096 = !{!264, !1660, !59}
!7097 = !{!7098, !7099}
!7098 = !DILocalVariable(name: "flags", arg: 1, scope: !7094, file: !265, line: 401, type: !1660)
!7099 = !DILocalVariable(name: "caller", arg: 2, scope: !7094, file: !265, line: 401, type: !59)
!7100 = !DILocation(line: 401, column: 67, scope: !7094)
!7101 = !DILocation(line: 401, column: 88, scope: !7094)
!7102 = !DILocation(line: 407, column: 6, scope: !7103)
!7103 = distinct !DILexicalBlock(scope: !7094, file: !265, line: 407, column: 6)
!7104 = !DILocation(line: 407, column: 6, scope: !7094)
!7105 = !DILocation(line: 413, column: 3, scope: !7103)
!7106 = !DILocation(line: 423, column: 38, scope: !7107)
!7107 = distinct !DILexicalBlock(scope: !7094, file: !265, line: 423, column: 6)
!7108 = !DILocation(line: 423, column: 44, scope: !7107)
!7109 = !DILocation(line: 423, column: 6, scope: !7094)
!7110 = !DILocation(line: 424, column: 3, scope: !7107)
!7111 = !DILocation(line: 426, column: 3, scope: !7112)
!7112 = distinct !DILexicalBlock(scope: !7094, file: !265, line: 425, column: 6)
!7113 = !DILocation(line: 429, column: 1, scope: !7094)
!7114 = !DISubprogram(name: "__compiletime_assert_125", scope: !265, file: !265, line: 478, type: !3549, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7115 = distinct !DISubprogram(name: "__list_add", scope: !6050, file: !6050, line: 146, type: !7116, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7118)
!7116 = !DISubroutineType(types: !7117)
!7117 = !{null, !120, !120, !120}
!7118 = !{!7119, !7120, !7121}
!7119 = !DILocalVariable(name: "new", arg: 1, scope: !7115, file: !6050, line: 146, type: !120)
!7120 = !DILocalVariable(name: "prev", arg: 2, scope: !7115, file: !6050, line: 147, type: !120)
!7121 = !DILocalVariable(name: "next", arg: 3, scope: !7115, file: !6050, line: 148, type: !120)
!7122 = !DILocation(line: 146, column: 49, scope: !7115)
!7123 = !DILocation(line: 147, column: 28, scope: !7115)
!7124 = !DILocation(line: 148, column: 28, scope: !7115)
!7125 = !DILocation(line: 150, column: 24, scope: !7126)
!7126 = distinct !DILexicalBlock(scope: !7115, file: !6050, line: 150, column: 6)
!7127 = !DILocation(line: 150, column: 29, scope: !7126)
!7128 = !DILocation(line: 150, column: 35, scope: !7126)
!7129 = !DILocation(line: 150, column: 7, scope: !7126)
!7130 = !DILocation(line: 150, column: 6, scope: !7115)
!7131 = !DILocation(line: 151, column: 3, scope: !7126)
!7132 = !DILocation(line: 153, column: 15, scope: !7115)
!7133 = !DILocation(line: 153, column: 2, scope: !7115)
!7134 = !DILocation(line: 153, column: 8, scope: !7115)
!7135 = !DILocation(line: 153, column: 13, scope: !7115)
!7136 = !DILocation(line: 154, column: 14, scope: !7115)
!7137 = !DILocation(line: 154, column: 2, scope: !7115)
!7138 = !DILocation(line: 154, column: 7, scope: !7115)
!7139 = !DILocation(line: 154, column: 12, scope: !7115)
!7140 = !DILocation(line: 155, column: 14, scope: !7115)
!7141 = !DILocation(line: 155, column: 2, scope: !7115)
!7142 = !DILocation(line: 155, column: 7, scope: !7115)
!7143 = !DILocation(line: 155, column: 12, scope: !7115)
!7144 = !DILocation(line: 156, column: 2, scope: !7115)
!7145 = !DILocation(line: 156, column: 2, scope: !7146)
!7146 = distinct !DILexicalBlock(scope: !7115, file: !6050, line: 156, column: 2)
!7147 = !DILocation(line: 156, column: 2, scope: !7148)
!7148 = distinct !DILexicalBlock(scope: !7146, file: !6050, line: 156, column: 2)
!7149 = !DILocation(line: 156, column: 2, scope: !7150)
!7150 = distinct !DILexicalBlock(scope: !7146, file: !6050, line: 156, column: 2)
!7151 = !DILocation(line: 157, column: 1, scope: !7115)
!7152 = distinct !DISubprogram(name: "__list_add_valid", scope: !6050, file: !6050, line: 128, type: !7153, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7155)
!7153 = !DISubroutineType(types: !7154)
!7154 = !{!943, !120, !120, !120}
!7155 = !{!7156, !7157, !7158}
!7156 = !DILocalVariable(name: "new", arg: 1, scope: !7152, file: !6050, line: 128, type: !120)
!7157 = !DILocalVariable(name: "prev", arg: 2, scope: !7152, file: !6050, line: 129, type: !120)
!7158 = !DILocalVariable(name: "next", arg: 3, scope: !7152, file: !6050, line: 130, type: !120)
!7159 = !DILocation(line: 128, column: 55, scope: !7152)
!7160 = !DILocation(line: 129, column: 23, scope: !7152)
!7161 = !DILocation(line: 130, column: 23, scope: !7152)
!7162 = !DILocation(line: 132, column: 2, scope: !7152)
!7163 = distinct !DISubprogram(name: "__list_del_entry", scope: !6050, file: !6050, line: 213, type: !6091, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7164)
!7164 = !{!7165}
!7165 = !DILocalVariable(name: "entry", arg: 1, scope: !7163, file: !6050, line: 213, type: !120)
!7166 = !DILocation(line: 213, column: 55, scope: !7163)
!7167 = !DILocation(line: 215, column: 30, scope: !7168)
!7168 = distinct !DILexicalBlock(scope: !7163, file: !6050, line: 215, column: 6)
!7169 = !DILocation(line: 215, column: 7, scope: !7168)
!7170 = !DILocation(line: 215, column: 6, scope: !7163)
!7171 = !DILocation(line: 216, column: 3, scope: !7168)
!7172 = !DILocation(line: 218, column: 13, scope: !7163)
!7173 = !DILocation(line: 218, column: 20, scope: !7163)
!7174 = !DILocation(line: 218, column: 26, scope: !7163)
!7175 = !DILocation(line: 218, column: 33, scope: !7163)
!7176 = !DILocation(line: 218, column: 2, scope: !7163)
!7177 = !DILocation(line: 219, column: 1, scope: !7163)
!7178 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6050, file: !6050, line: 134, type: !7179, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7181)
!7179 = !DISubroutineType(types: !7180)
!7180 = !{!943, !120}
!7181 = !{!7182}
!7182 = !DILocalVariable(name: "entry", arg: 1, scope: !7178, file: !6050, line: 134, type: !120)
!7183 = !DILocation(line: 134, column: 61, scope: !7178)
!7184 = !DILocation(line: 136, column: 2, scope: !7178)
!7185 = distinct !DISubprogram(name: "__list_del", scope: !6050, file: !6050, line: 193, type: !6051, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7186)
!7186 = !{!7187, !7188}
!7187 = !DILocalVariable(name: "prev", arg: 1, scope: !7185, file: !6050, line: 193, type: !120)
!7188 = !DILocalVariable(name: "next", arg: 2, scope: !7185, file: !6050, line: 193, type: !120)
!7189 = !DILocation(line: 193, column: 50, scope: !7185)
!7190 = !DILocation(line: 193, column: 75, scope: !7185)
!7191 = !DILocation(line: 195, column: 15, scope: !7185)
!7192 = !DILocation(line: 195, column: 2, scope: !7185)
!7193 = !DILocation(line: 195, column: 8, scope: !7185)
!7194 = !DILocation(line: 195, column: 13, scope: !7185)
!7195 = !DILocation(line: 196, column: 2, scope: !7185)
!7196 = !DILocation(line: 196, column: 2, scope: !7197)
!7197 = distinct !DILexicalBlock(scope: !7185, file: !6050, line: 196, column: 2)
!7198 = !DILocation(line: 196, column: 2, scope: !7199)
!7199 = distinct !DILexicalBlock(scope: !7197, file: !6050, line: 196, column: 2)
!7200 = !DILocation(line: 196, column: 2, scope: !7201)
!7201 = distinct !DILexicalBlock(scope: !7197, file: !6050, line: 196, column: 2)
!7202 = !DILocation(line: 197, column: 1, scope: !7185)
